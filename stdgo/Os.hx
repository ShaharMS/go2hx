package stdgo;

import sys.FileStat;
import haxe.io.Path;
import stdgo.internal.ErrorReturn;
import sys.io.File as Base;
import stdgo.Pointer;
import sys.FileSystem;

class Os {
	public static var args = Sys.args();
	public static var stderr = Sys.stderr();
	public static var stdin = Sys.stdin();
	public static var stdout = Sys.stdout();

	public static inline function mkdir(path:String, ?perm:Int):Errors {
		try {
			FileSystem.createDirectory(path);
			return null;
		} catch (e) {
			return cast e;
		}
	}

	public static inline function getenv(path:String):String {
		return Sys.getEnv(path);
	}

	public static inline function mkdirAll(path:String, ?perm:Int):Errors {
		return mkdir(path, perm);
	}

	public static inline function create(path:String):ErrorReturn<Pointer<File>> {
		var file = new File();
		return {value: Go.makePointer(file)};
	}

	public static inline function exit(code:Int) {
		Sys.exit(code);
	}

	public static inline function newSyscallError(syscall:String, err:Errors):Errors {
		if (err == null)
			return null;
		return new Errors(syscall);
	}

	public static inline function chdir(dir:String):Errors {
		try {
			Sys.setCwd(dir);
			return null;
		} catch (e) {
			return cast e;
		}
	}

	public static inline function remove(name:String):Errors {
		try {
			if (FileSystem.isDirectory(name)) {
				FileSystem.deleteDirectory(name);
			} else {
				FileSystem.deleteFile(name);
			}
			return null;
		} catch (e) {
			return cast e;
		}
	}

	public static inline function removeAll(path:String):Errors {
		if (sys.FileSystem.exists(path) && sys.FileSystem.isDirectory(path)) {
			var entries = sys.FileSystem.readDirectory(path);
			for (entry in entries) {
				if (sys.FileSystem.isDirectory(path + '/' + entry)) {
					removeAll(path + '/' + entry);
					sys.FileSystem.deleteDirectory(path + '/' + entry);
				} else {
					sys.FileSystem.deleteFile(path + '/' + entry);
				}
			}
		}
		return null;
	}
}

typedef FileMode = Int;

class FileInfo {
	var stat:FileStat;
	var _name:String;

	public function new(_name:String, stat:FileStat) {
		this.stat = stat;
		this._name = _name;
	}

	public function name():String {
		return _name;
	}

	public function isDir():Bool {
		return this.stat.mode != 1;
	}

	public function mode():FileMode {
		return stat.mode;
	}

	public function modeTime() {
		return stat.mtime;
	}

	public function size() {
		return stat.size;
	}

	public function sys() {
		return null;
	}
}

class File {
	public function new() {}
}
