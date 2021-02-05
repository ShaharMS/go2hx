// ! -lib hxnodejs
package;

import Typer.DataType;
import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import Ast;
final cwd = Sys.getCwd();
var exportPaths:Array<String> = [];
var exportBool:Bool = false;
function main() {
	init(Sys.args());
}
function init(args:Array<String>) {
	if (args.length <= 1)
		args.push(cwd);
	var localPath = args[args.length - 1];
	var outputPath = "golibs";
	//for (arg in args)
	// go4hx run here
	var httpsString = "https://";
	var argRemove:Array<String> = [];
	for (i in 0...args.length) {
		var arg = args[i];
		if (arg.charAt(0) == "-") {
			if (arg == "-o" || arg == "-output" || arg == "-out") {
				outputPath = args[i + 1];
				argRemove.push(arg);
			}
			continue;
		}
		var path = arg;
		if (StringTools.startsWith(path, httpsString))
			path = path.substr(httpsString.length);
		if (Path.extension(path) == "go")
			continue;
		if (path.charAt(0) == ".")
			continue;
		if (path.indexOf("/") == -1)
			continue;
		var command = 'go get -u $path';
		Sys.command(command);
	}
	for (arg in argRemove)
		args.remove(arg);
	Sys.println("> parser:");
	Sys.setCwd(cwd);
	var err = Sys.command("./go4hx", args);
	if (err != 0) {
		Sys.println("go4hx ERROR");
		return;
	}
	var exportName = "export.json";
	if (!FileSystem.exists(exportName)) {
		trace('error: $exportName not found');
		return;
	}
	var exportData:DataType = Json.parse(File.getContent(exportName));
	Typer.stdgoList = [for (name in FileSystem.readDirectory("stdgo")) Path.withoutExtension(name).toLowerCase()];
	Sys.println("> typer: " + exportData.pkgs.length);
	var modules = Typer.main(exportData);
	Sys.println("> generator: " + modules.length);
	Sys.setCwd(localPath);
	outputPath = Path.addTrailingSlash(outputPath);
	for (module in modules) {
		Gen.create(outputPath,module);
	}
	if (exportBool) {
		exportPaths = [];
		for (module in modules) {
			if (module.files.length == 0)
				continue;
			exportPaths.push(module.path + "/" + module.files[0].name);
		}
	}
}