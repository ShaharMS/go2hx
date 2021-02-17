package stdgo;

import haxe.macro.Context;
@:forward
abstract Pointer<T>(Dynamic) {

	public inline function new(expr) {
		var data = stdgo.internal.Macro.pointer(expr);
		if (data.obj != null) {
			this = obj;
			return;
		}
		this = new PointerData(data.get,data.set);
	}
	@:op([]) inline function get(index:Int):T {
        return !this.real ? this.get() : this;
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return !this.real ? this.set(value) : this = value;
    }
}
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public var real:Bool = true;
	public function new(get,set) {
		this.get = get;
		this.set = set;
	}
}