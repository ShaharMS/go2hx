package go2hx;

import sys.io.Process;
import sys.FileSystem;
import haxe.Resource;
import haxe.Json;
import sys.io.File;
import go2hx.types.Types;
import haxe.io.Path;

class Parser {
	var replaceMap:Map<String, String> = [];
	var stdimports:Array<String> = [];

	public var exportPath:String;

	public function new(exportPath:String, format:Bool) {
		exportPath = Path.addTrailingSlash(exportPath);
		this.exportPath = exportPath;
		if (!FileSystem.exists("export.json")) {
			trace("export.json not found");
			return;
		}
		var data:JsonData = Json.parse(File.getContent("export.json"));
		trace("amount of pkgs: " + data.pkgs.length);
		for (pkg in data.pkgs) {
			var path = pkg.packagepath;
			path = Path.addTrailingSlash(path);
			trace("path: " + path);
			read(pkg, path);
		}
		imports(exportPath + "go");
		Sys.setCwd(exportPath);
		var proc = new Process("haxe build.hxml");
		var code = proc.exitCode();
		if (code != -1) {
			Sys.println(proc.stderr.readAll().toString());
		} else {
			Sys.println(proc.stdout.readAll().toString());
		}
		if (format)
			new Process("haxelib run formatter -s .");
		
	}
	public function read(file:Package, path:String) {
		// get className and path
		var pkgPath = path;
		pkgPath = Path.removeTrailingSlashes(pkgPath);
		pkgPath = StringTools.replace(pkgPath, "/", ".");
		var index = pkgPath.lastIndexOf(".");
		var last = pkgPath.substr(index + 1);
		if (index != -1 && last == file.name) {
			pkgPath = pkgPath.substr(0, index);
			path = path.substr(0, index + 1);
		}
		var className = cap(file.name);
		var inital = ['package $pkgPath;'];
		var imports = [];
		var main = [];
		// imports
		if (file.imports != null)
			for (imp in file.imports) {
				var name = capPkg(imp[0]);
				var as = capPkg(imp[1]);
				if (Resource.listNames().indexOf(imp[0]) != -1) {
					stdimports.push(imp[0]);
					name = 'go.$name';
				}

				if (as.length > 0)
					replaceMap.set(as, as = capPkg(as));
				var line = 'import ${StringTools.replace(name, "/", ".")}';
				if (as != "") {
					line += ' as $as';
				}
				line += ";";
				imports.push(line);
			}
		main.push('class $className {');
		// vars and consts
		if (file.vars != null)
			for (v in file.vars) {
				var first = v.exported ? "public static " : "static ";
				first += v.constant ? "final" : "var";
				main.push('$first ${v.name} = ${v.value};');
			}
		// functions
		if (file.funcs != null)
			for (func in file.funcs) {
				main.push(func.doc);
				var first = func.exported ? "public static" : "static ";
				main.push('$first function ${func.name}(${func.params.join(", ")}) {');
				if (func.body != null)
					for (expr in func.body) {
						main.push(expr);
					}
				main.push("}");
			}
		// write
		if (!FileSystem.exists(exportPath + path))
			FileSystem.createDirectory(exportPath + path);
		var path = exportPath + path + className + ".hx";
		main.push("}");
		// struct classes
		if (file.structs != null)
			for (struct in file.structs) {
				var first = struct.export ? "" : "private";
				main.push('$first class ${struct.name} {');
				var init:String = "";
				for (field in struct.fields) {
					main.push('var $field;');
					init += ',?$field';
				}
				init = init.substr(1);
				main.push('public function new($init) {');
				//main.push('go.Go.initLocals();');
				main.push("}\n}");
			}
		main = inital.concat(imports).concat(main);
		File.saveContent(path, main.join("\n"));
		buildConfig(pkgPath, className);
	}

	function buildConfig(path:String, main:String) {
		File.saveContent(exportPath + "build.hxml", '-main $path.$main\n' + "--interp");
	}

	function imports(path:String) {
		path = Path.normalize(path);
		if (!FileSystem.exists(path))
			FileSystem.createDirectory(path);
		stdimports.push("go");
		for (i in stdimports) {
			var path = '$path/${capPkg(i)}.hx';
			if (!FileSystem.exists(Path.directory(path)))
				FileSystem.createDirectory(Path.directory(path));
			File.saveContent(path, Resource.getString(i));
		}
		// global
		File.saveContent(Path.addTrailingSlash(exportPath) + "import.hx", Resource.getString("import"));
	}

	function cap(string:String, reverse:Bool = false):String {
		return (reverse ? string.charAt(0).toLowerCase() : string.charAt(0).toUpperCase()) + string.substr(1);
	}

	function capPkg(string:String):String {
		var index = string.lastIndexOf("/") + 1;
		string = string.substr(0, index) + string.charAt(index).toUpperCase() + string.substr(index + 1);
		return string;
	}

	function name(string:String):String {
		if (replaceMap.exists(string))
			string = replaceMap.get(string);
		return string;
	}
}
