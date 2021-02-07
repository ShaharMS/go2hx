package stdgo;

import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Go {
	public static macro function copy(expr) { // slices and maps are ref types
		var type = Context.followWithAbstracts(Context.typeof(expr));
		var exception = false;
		switch expr.expr {
			case ENew(t, params):
				exception = true;
			case EArrayDecl(values):
				exception = true;
			case EObjectDecl(fields):
				exception = true;
			case EIs(e, t):
				exception = true;
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == "null") exception = true;
					default:
				}
			case EBinop(op, e1, e2):
				exception = true;
			case ECall(e, params):
				switch e.expr {
					case EField(f, field):
						switch f.expr {
							case EConst(c):
								switch c {
									case CIdent(s):
										trace("s: " + s);
										if (s == "Go" || s == "Map" || s == "Array" || s == "Slice") // map and array is by ref
											exception = true;
									default:
								}
							default:
						}
					default:
				}
			case EField(e, field):
				exception = true;
			// trace("e: " + e);
			case EArray(e1, e2): //expr[i] : passthrough
			default:
				trace("expr: " + expr.expr);
		}
		if (isBasic(type) || exception) {
			return expr;
		} else {
			switch type {
				case TInst(t, params):
					var t = t.get();
					switch t.pack.join(".") + t.name {
						case "Errors":
							return macro $expr.copy();
					}
					var fields = t.fields.get();
					fields.sort(function(a, b) {
						return 0;
					});
					var values = [];
					var main = ExprTools.toString(expr);
					for (field in fields) {
						switch field.kind {
							case FVar(read, write):
								values.push('$main.' + field.name);
							case FMethod(k):
						}
					}
					values.sort(function(a, b) {
						return 0;
					});
					var str = "new " + t.pack.join(".") + t.name + '(${values.join(",")})';
					var init = Context.parse(str, Context.currentPos());
					return macro $init;
				case TMono(t):
					var t = t.get();
					switch t {
						case null:
						default:
							trace("unknown tmono type: " + t);
					}
				case TDynamic(t):
					trace("t " + t.getName());
				default:
					trace("copy type unknown: " + type);
			}
			return expr;
		}
	}
	public static macro function destruct(cond, expr) {
		var type = Context.followWithAbstracts(Context.typeof(expr));
		var values:Array<haxe.macro.Expr> = [];
		var index:Int = -1;
		switch cond.expr {
			case EArrayDecl(array):
				for (v in array) {
					switch v.expr {
						case EConst(c):
							switch c {
								case CIdent(s):
									if (s == "null") {
										values.push(null);
									} else {
										values.push(v);
									}
								default:
									trace("not indent " + c);
							}
						case EArray(e1, e2):
							values.push(v);
						default:
							trace("not constant " + v.expr);
					}
				}
			default:
				throw "needs array for set multi";
		}
		var set:Array<haxe.macro.Expr> = [];
		function anonFields(a:haxe.macro.Type.AnonType) {
			var fields = a.fields;
			fields.sort(function(a, b) {
				return 0;
			});
			for (field in fields) {
				index++;
				if (values[index] == null)
					continue;
				if (index >= values.length)
					continue;
				var get = Context.parse(ExprTools.toString(expr) + '.${field.name}', Context.currentPos());
				var value = values[index];
				set.push(macro $value = $get);
			}
		}
		switch type {
			case TInst(t, params):
				switch expr.expr {
					case EArray(e1, e2):
						var value = values[0];
						var ok = values[1];
						set.push(macro $value = $expr);
						set.push(macro $ok = $value != null);
					default:
						var value = values[0];
						set.push(macro $value = $expr);
				}
			case TFun(args, ret):
				switch ret {
					case TAbstract(t, params):
						var value = values[0];
						var get = expr;
						set.push(macro $value = $get);
					default:
						trace("not abstract");
				}
			case TType(t, params):
				switch t.get().type {
					case TAnonymous(a):
						anonFields(a.get());
					default:
						trace("ttype unknown " + t.get().type);
				}
			case TAnonymous(a):
				anonFields(a.get());
			case TMono(t):

			case TDynamic(t):
				switch t {
					case null:
						set.push(expr);
					default:
						trace("unknown TDynamic t type: " + t);
				}
			default:
				trace("not an inst or func " + type);
		}
		return macro {
			$b{set}
		}
	}

	public static macro function assert(expr:Expr) {
		var func = null;
		function typeName(t:ComplexType):String {
			if (t == null)
				return "";
			switch t {
				case TPath(p):
					return p.name;
				default:
					return "";
			}
		}
		func = function():Expr {
			switch expr.expr {
				case ECheckType(e, t):
					var to = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
					switch e.expr {
						case EConst(CIdent("null")):
							return @:privateAccess Builtin.defaultValue(t,Context.currentPos());
						default:
					}
					var from = Context.toComplexType(Context.follow(Context.typeof(e)));
					if (to == null || from == null)
						trace("could not resolve types: " + e.expr + " : " + t);
					function missing() {
						trace("unsupported assert: " + typeName(from) + " -> " + typeName(to));
					}
					switch typeName(from) {
						case "String", "GoString":
							switch typeName(to) {
								case "Slice":
									return macro {
										var array = $e.split("");
										var slice = new stdgo.Slice<stdgo.StdTypes.Byte>(array.length);
										for (i in 0...array.length) {
											slice[i] = array[i].charCodeAt(0);
										}
										slice;
									}
								default:
									missing();
							}
						default:
							missing();
					}
				case EParenthesis(e):
					expr = e;
					return func();
				default:
					trace("unknown expr def for assert: " + expr.expr);
			}
			return macro null;
		}
		return func();
	}
	public static function isNumber(name:String):Bool {
		return switch name {
			case "Int","Int8","Int16","Int32","Int64","UInt","UInt8","UInt16","UInt32","UInt64","Complex64","Complex128","Float":
				true;
			default:
				false;
		}
	}
	public static macro function makePointer(expr) {
		var isRealPointer = false;
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				if (isNumber(t.name)) {
					isRealPointer = true;
				}else{
					switch t.name {
						case "GoString","String","Bool","Slice","Map","Array","GoArray":
							isRealPointer = true;
					}
				}
			default:
				trace("unknown make pointer type: " + type);
		}
		return isRealPointer ? macro new Pointer(null,() -> $expr,(v) -> $expr = v) : macro new Pointer($expr);
	}

	public static macro function range(key, value, x, expr) {
		function getName(expr:haxe.macro.Expr) {
			switch expr.expr {
				case EConst(c):
					switch c {
						case CIdent(s):
							return s;
						default:
					}
				default:
			}
			return "";
		}
		var keyName = getName(key);
		if (keyName == "null")
			keyName = "_iterate";
		var init = Context.parse('var $keyName = 0;', Context.currentPos());
		var post = Context.parse('$keyName++', Context.currentPos());
		var set = macro null;
		var valueName = getName(value);
		if (valueName != "_") {
			set = Context.parse('var $valueName = tmp;', Context.currentPos());
		}
		#if !display
		var func = null;
		func = function(expr:haxe.macro.Expr) {
			return switch (expr.expr) {
				case EContinue: macro {$post; $expr;}
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				// case EIn(_): expr;
				default: haxe.macro.ExprTools.map(expr, func);
			}
		}
		expr = func(expr);
		#end
		var xType = Context.followWithAbstracts(Context.typeof(x));
		switch xType {
			case TInst(t, params):
				var name = t.get().name;
				switch (name) {
					case "Array":
					case "String", "GoString":
						// x = macro new haxe.iterators.StringIterator($x);
						x = macro $x.split("");
					case "StringMap", "Map", "IntMap", "HashMap", "ObjectMap", "UnsafeStringMap", "WeakMap":
						x = macro $x.keys();
						var string = 'var $keyName = tmp;';
						if (valueName != "_") {
							string += 'var $valueName = ${ExprTools.toString(x)}[tmp];';
						}
						set = Context.parse(string, Context.currentPos());
						init = macro null;
						post = macro null;
					default:
						trace('unknown iterator inst name: $name');
				}
			default:
				trace('unknown iterator type: $xType');
		}
		var exprMacro = macro {
			$init;
			for (tmp in $x) {
				$set;
				$expr;
				$post;
			}
		};
		return exprMacro;
	}

	public static macro function cfor(cond, post, expr) {
		#if !display
		var func = null;
		func = function(expr:haxe.macro.Expr) {
			return switch (expr.expr) {
				case EContinue: macro {$post; $expr;}
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				// case EIn(_): expr;
				default: haxe.macro.ExprTools.map(expr, func);
			}
		}
		expr = func(expr);
		#end
		var exprMacro = macro {
			while ($cond) {
				$expr;
				$post;
			}
		};
		return exprMacro;
	}

	static function isBasic(type:haxe.macro.Type):Bool {
		return switch type {
			case TAbstract(t, params):
				switch (t.get().name) {
					case "Bool":
					case "Float":
					case "Int":
					case "String", "GoString":
					default:
						false;
				}
				true;
			default:
				false;
		}
	}
}
