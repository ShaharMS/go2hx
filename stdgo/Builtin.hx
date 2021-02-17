package stdgo;

import haxe.macro.ExprTools;
import haxe.macro.PositionTools;
import haxe.macro.TypeTools;
import haxe.macro.ComplexTypeTools;
import haxe.Rest;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.Context;
import stdgo.Slice;

// https://golang.org/pkg/builtin/
inline function append<T>(slice:Slice<T>, args:Rest<T>):Slice<T> {
	if (args.length == 0)
		return slice;
	return slice.append(args);
}

inline function close(v) {}

inline function complex(r, i) {}

macro function copy<T>(dst:Expr,src:ExprOf<Slice<T>>) {
	var type = Context.toComplexType(Context.follow(Context.typeof(dst)));
	switch type {
		case TPath(p):
			switch p.name {
				case "Slice":
					return macro {
						var int = $dst.length > $src.length ? $src.length : $dst.length;
						for (i in 0...int) {
							$dst[i] = $src[i];
						}
						int;
					}
				default:
					trace("unknown copy type path: " + p.name);
			}
		default:
			trace("unknown copy type: " + type);
	}
	return src;
}

inline function delete<K, V>(map:Map<K, V>, key:K) {
	map.remove(key);
}

function imag(c) {}

macro function make(t:Expr,?size:Expr,?cap:Expr) { //for slice/array and map
	var t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(getType(t))));
	if (t == null)
		return macro null;
	var func = null;
	func = function():Expr {
		switch t {
			case TPath(p):
				var name = p.name;
				switch name {
					case "Slice":
						if (size == null)
							return macro new $p();
						var value:Expr = null;
						switch p.params[0] {
							case TPType(t):
								t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
								value = defaultValue(t,Context.currentPos());
							default:
						}
						return macro {
							var slice = new $p($size);
							for (i in 0...$size) {
								slice[i] = $value;
							}
							slice; 
						}
					case "Map":
						return macro new $p();
					case "Chan":
						return null;
					default:
						trace("make unknown: " + p);
						return null;
				}
			default:
				trace("make unknown: " + t);
				return null;
		}
	}
	return func();
}
function createAnonType(pos:Position,fields:Array<Field>,params:Array<Expr>):Expr {
	return {pos: pos, expr: EObjectDecl([for (i in 0...fields.length) {
		var expr:Expr = macro null;
		if (params[i] == null) {
			switch fields[i].kind {
				case FVar(t, e):
					expr = defaultValue(t,pos,fields[i].meta);
				default: //FFunc is nil by default
			}
		}else{
			expr = params[i];
		}
		{
			field: fields[i].name,
			expr: expr,
		};
	}])};
}
function defaultValue(t:ComplexType,pos:Position,meta:Null<Metadata>=null):Expr {
	switch t {
		case TPath(p):
			var name = p.name;
			if (p.name == "StdTypes")
				name = p.sub;
			switch name {
				case "GoInt","GoUInt","UInt8","UInt16","UInt32","UInt64","Int8","Int16","Int32","Int64","Float32","Float64","Complex64","Complex128":
					return macro 0;
				case "GoDynamic":
					return macro {typeName: "GoDynamic",value: {}};
				case "Bool":
					return macro false;
				case "Pointer":
					return macro null;
				default:
					return macro new $p();
			}
		case TAnonymous(fields):
			return {pos: pos,expr: EObjectDecl([
				for (field in fields) {
					var type:ComplexType = null;
					switch field.kind {
						case FVar(t, e):
							type = t;
						default:
					}
					{
						field: field.name,
						expr: defaultValue(type,pos,field.meta),
					};
				}
			])};
		default:
			trace("unknown type for default value: " + t);
	}
	return macro null;
}

function getMetaLength(meta:Metadata):Int {
	for (m in meta) {
		if (m.name != "length")
			continue;
		if (m.params[0] == null)
			continue;
		switch m.params[0].expr {
			case EConst(c):
				switch c {
					case CInt(v):
						return Std.parseInt(v);
					default:
				}
			default:
		}
	}
	return 0;
}
private function getData(expr:Expr):Expr {
	return switch expr.expr {
		case ECheckType(e, t): return e;
		case EParenthesis(e): return getData(e);
		default: expr;
	}
}
private function getType(expr:Expr):ComplexType {
	var type:ComplexType = null;
	if (expr == null)
		return type;
	switch expr.expr {
		case ECheckType(e, t):
			type = t;
		case EParenthesis(e):
			type = getType(e);
		default:
	}
	return type;
}

inline function panic(v) {
	return throw v;
}

inline function print(args:Rest<Dynamic>) {
	return Fmt.print(...args);
}

inline function println(args:Rest<Dynamic>) {
	return Fmt.println(...args);
}

inline function real(c) {}

inline function recover() {}
