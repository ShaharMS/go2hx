/*
 * Copyright (C)2005-2021 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package stdgo;

import stdgo.reflect.Reflect.GT_enum;
import stdgo.Pointer.PointerData;
import haxe.Int32;
import haxe.Int64;

// native_num define flag
typedef GoByte = GoUInt8;
typedef GoRune = GoInt32;
typedef GoFloat = GoFloat64;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if !native_num Int #elseif cpp cpp.Int8 #elseif cs cs.Int8 #elseif java java.Int8 #else Int #end;
private typedef Int16 = #if !native_num Int #elseif cpp cpp.Int16 #elseif cs cs.Int16 #elseif java java.Int16 #else Int #end;
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = haxe.Int64; // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt = Int;
private typedef UInt8 = Int; // #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if !native_num Int #elseif hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if !native_num Int #elseif cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int #end;
private typedef UInt64 = #if !native_num Int64 #elseif cpp cpp.UInt64 #elseif eval eval.integers.UInt64 #else Int64 #end // __UInt64 #end;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if !native_num Float #elseif (java || cs || hl || cpp) StdTypes.Single #else Float #end;
private typedef Float64 = #if !native_num Float #elseif cpp cpp.Float64 #else Float #end

private class __UInt64 {
	public var high:Int64;
	public var low:Int64;

	public inline function new(high, low) {
		this.high = high;
		this.low = low;
	}

	public static inline function ofInt(x:Int) {
		if (x < 0)
			return new __UInt64(0, 0);
		return new __UInt64(x >> 31, x);
	}
}

// Eliott's very nice code
typedef Complex64 = Complex<Float32>;
typedef Complex128 = Complex<Float64>;

class Complex<T : GoFloat64> {
	public var real:T;
	public var imag:T;

	public function new(r:T, i:T) {
		real = r;
		imag = i;
	}

	inline function toString<T>():GoString {
		var imagString = Go.string(imag);
		var realString = Go.string(real);

		function sign(str,num:Float) {
			if (str.charAt(0) != "+" && str.charAt(0) != "-")
				return (num >= 0 ? "+" : "-") + str;
			return str;
		}
		imagString = sign(imagString,imag.toBasic());
		realString = sign(realString,real.toBasic());
		return "(" + realString + imagString + "i)";
	}
}

function shiftGuard(x:Int):Bool
	return x > 0xFF || x < 0;

function clampInt8(x:Int):Int {
	x = x & 0xFF;
	if (x & 0x80 != 0)
		return -1 - 0xFF + x;
	return x;
}

function clampInt16(x:Int):Int {
	x = x & 0xFFFF;
	if (x & 0x8000 != 0)
		return -1 - 0xFFFF + x;
	return x;
}

function clampUInt8(x:Int):Int
	return x & 0xFF;

function clampFloat32(x:Float):Float
	return x;

function clampUInt16(x:Int):Int
	return x & 0xFFFF;

function clampUInt(x:Int):Int // TODO: clamp uintr
	return x;

// no clamp for UInt32 or UInt64 as they overflow into negative range

abstract GoUIntptr(Dynamic) from Dynamic from Dynamic {
	public inline function new(?x) {
		this = x;
	}

	private inline function address():Int {
		if (haxe.Int64.isInt64(this))
			return haxe.Int64.toInt(this);
		if ((this is Int))
			return this;
		if ((this is Float))
			return Std.int(this);
		return 1;
	}

	public inline function toBasic()
		return address();

	@:to inline function toInt64():GoInt64 
		return Int64.ofInt(address());

	@:to inline function toInt():GoInt
		return address();

	@:to inline function toint32():GoInt32
		return address();

	@:to inline function toInt8():GoInt8
		return address();

	@:to inline function toInt16():GoInt16
		return address();

	@:to inline function toUInt():GoUInt
		return address();

	@:to inline function toUInt32():GoUInt32
		return address();

	@:to inline function toUInt8():GoUInt8
		return address();

	@:to inline function toUInt16():GoUInt16
		return address();

	@:to inline function toUInt64():GoUInt64
		return address();

	@:to inline function toFloat32():GoFloat32
		return address();

	@:to inline function toFloat64():GoFloat64
		return address();

	@:op(A / B) private static function div(a:GoUIntptr, b:GoUIntptr):GoUIntptr {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A + B) private static function add(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A * B) private static function mul(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A % B) private static function mod(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A - B) private static function sub(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A | B) private static function or(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A ^ B) private static function xor(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A & B) private static function and(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A++) inline function postInc():GoUIntptr {
		return this = address() + 1;
	}

	@:op(A--) inline function postDec():GoUIntptr {
		return this = address() - 1;
	}

	@:op(A > B) private static function gt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A >= B) private static function gte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A < B) private static function lt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A <= B) private static function lte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(~A) private static function bneg(t:GoUIntptr):GoUIntptr;
}

abstract GoFloat64(Float) from Float {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat32():GoFloat32
		return clampFloat32(this);

	@:to inline function toInt64():GoInt64 {
		if (Math.isNaN(this))
			return Int64.parseString("-9223372036854775808");
		return Int64.fromFloat(this);
	}

	@:to inline function toInt():GoInt {
		if (Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt32():GoInt32 {
		if (Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt8():GoInt8
		return clampInt8(Std.int(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(Std.int(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(Std.int(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(Std.int(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(Std.int(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(Std.int(this));

	@:to inline function toUInt64():GoUInt64 {
		if (Math.isNaN(this))
			return GoUInt64.ofString("9223372036854775808");
		return this > 0 ? this : 0;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public static function ofInt(x:Int):GoUInt
		return x;

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A / B) private static function div(a:GoFloat, b:GoFloat):GoFloat {
		if (b == 0)
			return Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(A * B) private static function mul(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A - B) private static function sub(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A > B) private static function gt(a:GoFloat, b:GoFloat):Bool;

	@:op(A >= B) private static function gte(a:GoFloat, b:GoFloat):Bool;

	@:op(A < B) private static function lt(a:GoFloat, b:GoFloat):Bool;

	@:op(A <= B) private static function lte(a:GoFloat, b:GoFloat):Bool;

	@:op(A > B) private static function gtf(a:GoFloat, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat):Bool;

	@:op(A < B) private static function ltf(a:GoFloat, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;

	@:op(-A) private static function neg(t:GoFloat):GoFloat;

	@:op(A--) private static function postDec(t:GoFloat):GoFloat;

	@:op(A++) private static function postInc(t:GoFloat):GoFloat;
}

abstract GoFloat32(Float32) from Float32 {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toInt64():GoInt64 {
		if (Math.isNaN(this))
			return Int64.parseString("-9223372036854775808");
		return Int64.fromFloat(this);
	}

	@:to inline function toInt():GoInt {
		if (Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt32():GoInt32 {
		if (Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt8():GoInt8
		return clampInt8(Std.int(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(Std.int(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(Std.int(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(Std.int(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(Std.int(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(Std.int(this));

	@:to inline function toUInt64():GoUInt64 {
		if (Math.isNaN(this))
			return GoUInt64.ofString("9223372036854775808");
		return this > 0 ? this : 0;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() * b.toBasic());

	@:op(A % B) private static function mod(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoFloat32, b:GoFloat32):GoFloat32 {
		if (b == 0)
			return Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(~A) private static function bneg(t:GoFloat32):GoFloat32;

	@:op(-A) private static function neg(t:GoFloat32):GoFloat32;

	@:op(A++) private inline function postInc():GoFloat32 {
		return this = this + 1;
	}

	@:op(A > B) private static function gt(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A >= B) private static function gte(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A < B) private static function lt(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A <= B) private static function lte(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A > B) private static function gtf(a:GoFloat32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat32):Bool;

	@:op(A < B) private static function ltf(a:GoFloat32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat32):Bool;

	static function clamp(x:Float):Float
		return x;

	// TODO: Clamp Float32
}

abstract GoComplex64(Complex64) from Complex64 {
	public inline function new(r:GoFloat32, i:GoFloat32)
		this = new Complex64(r.toBasic(), i.toBasic());

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(real, imag);

	public inline function toBasic()
		return this;

	public var real(get, never):GoFloat32;
	public var imag(get, never):GoFloat32;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex64
		return new Complex64(x, 0);

	@:op(A + B) private static function add(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real.toBasic() + b.real.toBasic(), a.imag.toBasic() + b.imag.toBasic());

	@:op(A * B) private static function mul(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64((a.real.toBasic() * b.real.toBasic()) - (a.imag.toBasic() * b.imag.toBasic()),
			(a.imag.toBasic() * b.real.toBasic()) + (a.real.toBasic() * b.imag.toBasic()));

	@:op(A / B) private static function div(a:GoComplex64, b:GoComplex64):GoComplex64 {
		// if (b.real == 0.0 && b.imag == 0.0)
		//	return Math.NaN;
		return new GoComplex64(((a.real.toBasic() * b.real.toBasic()) + (a.imag.toBasic() * b.imag.toBasic())) / ((b.real.toBasic() * b.real.toBasic())
			+ (b.imag.toBasic() * b.imag.toBasic())),
			((a.imag.toBasic() * b.real.toBasic()) - (a.real.toBasic() * b.imag.toBasic())) / ((b.real.toBasic() * b.real.toBasic())
				+ (b.imag.toBasic() * b.imag.toBasic())));
	}

	@:op(A - B) private static function sub(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real.toBasic() - b.real.toBasic(), a.imag.toBasic() - b.imag.toBasic());

	@:op(A > B) private static function gt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(~A) private static function bneg(t:GoComplex64):GoComplex64
		return new GoComplex64(0.0 - t.real.toBasic(), 0.0 - t.imag.toBasic());

	@:op(-A) private static function neg(t:GoComplex64):GoComplex64
		return new GoComplex64(-t.real, t.imag);
}

abstract GoComplex128(Complex128) from Complex128 {
	public inline function new(r:GoFloat64, i:GoFloat64)
		this = new Complex128(r.toBasic(), i.toBasic());

	@:to inline function toComplex64():GoComplex64 {
		return new GoComplex64(clampFloat32(real), clampFloat32(imag));
	}

	public inline function toBasic()
		return this;

	public var real(get, never):Float;
	public var imag(get, never):Float;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex128
		return new Complex128(x, 0);

	@:op(A + B) private static function add(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real + b.real, a.imag + b.imag);

	@:op(A * B) private static function mul(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128((a.real * b.real) - (a.imag * b.imag), (a.imag * b.real) + (a.real * b.imag));

	@:op(A / B) private static function div(a:GoComplex128, b:GoComplex128):GoComplex128 {
		if (b.real == 0.0 && b.imag == 0.0)
			return new GoComplex128(0.0, 0.0);
		return new GoComplex128(((a.real * b.real) + (a.imag * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)),
			((a.imag * b.real) - (a.real * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)));
	}

	@:op(A - B) private static function sub(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real - b.real, a.imag - b.imag);

	@:op(A > B) private static function gt(a:GoComplex128, b:GoComplex128):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex128):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(~A) private static function bneg(t:GoComplex128):GoComplex128
		return new GoComplex128(0.0 - t.real, 0.0 - t.imag);

	@:op(-A) private static function neg(t:GoComplex128):GoComplex128
		return new GoComplex128(-t.real, t.imag);

	@:op(A == B) private static function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.real == b.real && a.imag == b.imag;

	@:op(A != B) private static function neq(a:GoComplex128, b:GoComplex128):Bool
		return a.real != b.real || a.imag != b.imag;
}
//GoInt32 is an exact copy of GoInt, any changes here should be updated there as well
abstract GoInt(Int32) from Int32 from Int32 {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);
	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toUIntptr():GoUIntptr
		return this;

	public static function ofInt(x:Int):GoInt
		return x;

	@:op(A + B) private static function add(a:GoInt, b:GoInt):GoInt;

	@:op(A / B) private static inline function div(a:GoInt, b:GoInt):GoInt {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt, b:GoInt):GoInt;

	@:op(A % B) private static function mod(a:GoInt, b:GoInt):GoInt;

	@:op(A - B) private static function sub(a:GoInt, b:GoInt):GoInt;

	@:op(A | B) private static function or(a:GoInt, b:GoInt):GoInt;

	@:op(A ^ B) private static function xor(a:GoInt, b:GoInt):GoInt;

	@:op(A & B) private static function and(a:GoInt, b:GoInt):GoInt;

	@:op(-A) private static function neg(a:GoInt):GoInt
		return a * -1;

	@:op(A >> B) private static function shr(a:GoInt, b:GoInt):GoInt {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic();
	}

	@:op(A << B) private static function shl(a:GoInt, b:GoInt):GoInt {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic();
	}

	@:op(A > B) private static function gt(a:GoInt, b:GoInt):Bool;

	@:op(A >= B) private static function gte(a:GoInt, b:GoInt):Bool;

	@:op(A < B) private static function lt(a:GoInt, b:GoInt):Bool;

	@:op(A <= B) private static function lte(a:GoInt, b:GoInt):Bool;

	@:op(A > B) private static function gtf(a:GoInt, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt):Bool;

	@:op(A >= B) private static function gtef(a:GoInt, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt):Bool;

	@:op(A < B) private static function ltf(a:GoInt, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt):Bool;

	@:op(A <= B) private static function ltef(a:GoInt, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt):Bool;

	@:op(~A) private static function bneg(t:GoInt):GoInt;

	@:op(A++) inline function postInc():GoInt {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt {
		return this = this - 1;
	}
}

abstract GoInt32(Int) from Int32 from Int {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toUIntptr():GoUIntptr
		return this;

	public static function ofInt(x:Int):GoInt32
		return x;

	@:op(A + B) private static function add(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A / B) private static inline function div(a:GoInt32, b:GoInt32):GoInt32 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A % B) private static function mod(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A - B) private static function sub(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A | B) private static function or(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A ^ B) private static function xor(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A & B) private static function and(a:GoInt32, b:GoInt32):GoInt32;

	@:op(-A) private static function neg(a:GoInt32):GoInt32
		return a * -1;

	@:op(A >> B) private static function shr(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic();
	}

	@:op(A << B) private static function shl(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic();
	}

	@:op(A > B) private static function gt(a:GoInt32, b:GoInt32):Bool;

	@:op(A >= B) private static function gte(a:GoInt32, b:GoInt32):Bool;

	@:op(A < B) private static function lt(a:GoInt32, b:GoInt32):Bool;

	@:op(A <= B) private static function lte(a:GoInt32, b:GoInt32):Bool;

	@:op(A > B) private static function gtf(a:GoInt32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt32):Bool;

	@:op(A >= B) private static function gtef(a:GoInt32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt32):Bool;

	@:op(A < B) private static function ltf(a:GoInt32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt32):Bool;

	@:op(A <= B) private static function ltef(a:GoInt32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt32):Bool;

	@:op(~A) private static function bneg(t:GoInt32):GoInt32;

	@:op(A++) inline function postInc():GoInt32 {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt32 {
		return this = this - 1;
	}
}
//GoUInt32 is an exact copy of GoUInt, any changes here should be updated there as well
abstract GoUInt(Int) from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);
	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoUInt
		return x;

	@:op(A + B) private static function add(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt, b:GoUInt):GoUInt {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt, b:GoUInt):GoUInt {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt, b:GoUInt):GoUInt {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A++) inline function postInc():GoUInt {
		return this = clamp(this + 1);
	}

	@:op(-A) private static function neg(a:GoUInt):GoUInt
		return a * -1;

	@:op(A--) inline function postDec():GoUInt {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int):Int
		return clampUInt(x);

	@:op(A > B) private static function gt(a:GoUInt, b:GoUInt):Bool;

	@:op(A >= B) private static function gte(a:GoUInt, b:GoUInt):Bool;

	@:op(A < B) private static function lt(a:GoUInt, b:GoUInt):Bool;

	@:op(A <= B) private static function lte(a:GoUInt, b:GoUInt):Bool;

	@:op(A > B) private static function gtf(a:GoUInt, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoUInt):Bool;

	@:op(A >= B) private static function gtef(a:GoUInt, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoUInt):Bool;

	@:op(A < B) private static function ltf(a:GoUInt, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoUInt):Bool;

	@:op(A <= B) private static function ltef(a:GoUInt, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoUInt):Bool;
}

abstract GoUInt32(Int) from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoUInt32
		return x;

	@:op(A + B) private static function add(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A++) inline function postInc():GoUInt32 {
		return this = clamp(this + 1);
	}

	@:op(-A) private static function neg(a:GoUInt32):GoUInt32
		return a * -1;

	@:op(A--) inline function postDec():GoUInt32 {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int):Int
		return clampUInt(x);

	@:op(A > B) private static function gt(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A >= B) private static function gte(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A < B) private static function lt(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A <= B) private static function lte(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A > B) private static function gtf(a:GoUInt32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoUInt32):Bool;

	@:op(A >= B) private static function gtef(a:GoUInt32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoUInt32):Bool;

	@:op(A < B) private static function ltf(a:GoUInt32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoUInt32):Bool;

	@:op(A <= B) private static function ltef(a:GoUInt32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoUInt32):Bool;
}

abstract GoInt8(Int8) from Int8 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoInt8
		return x;

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool;

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool;

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool;

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool;

	@:op(A >> B) private static function shr(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() + b.toBasic()));

	@:op(A - B) private static function sub(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() - b.toBasic()));

	@:op(A * B) private static function mul(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() - b.toBasic()));

	@:op(A & B) private static function and(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() & b.toBasic()));

	@:op(A | B) private static function or(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() | b.toBasic()));

	@:op(A ^ B) private static function xor(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() ^ b.toBasic()));

	@:op(A % B) private static function mod(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() % b.toBasic()));

	@:op(-A) private static function neg(a:GoInt8):GoInt8
		return a * -1;

	@:op(A++) inline function postInc():GoInt8 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt8 {
		return this = clamp(this - 1);
	}

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A / B) private static function div(a:GoInt8, b:GoInt8):GoInt8 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	// TODO: clamp int8
	static function clamp(x:Int)
		return clampInt8(x);
}

abstract GoInt16(Int16) from Int16 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt16
		return x;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(A > B) private static function gt(a:GoInt16, b:GoInt16):Bool;

	@:op(A >= B) private static function gte(a:GoInt16, b:GoInt16):Bool;

	@:op(A < B) private static function lt(a:GoInt16, b:GoInt16):Bool;

	@:op(A <= B) private static function lte(a:GoInt16, b:GoInt16):Bool;

	@:op(A > B) private static function gtf(a:GoInt16, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt16):Bool;

	@:op(A >= B) private static function gtef(a:GoInt16, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt16):Bool;

	@:op(A < B) private static function ltf(a:GoInt16, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt16):Bool;

	@:op(A <= B) private static function ltef(a:GoInt16, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt16):Bool;

	@:op(A >> B) private static function shr(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A++) inline function postInc():GoInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt16 {
		return this = clamp(this - 1);
	}

	@:op(-A) private static function neg(a:GoInt16):GoInt16
		return a * -1;

	@:op(A / B) private static function div(a:GoInt16, b:GoInt16):GoInt16 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A > B) private static function gt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() <= b.toBasic();

	static function clamp(x:Int):Int
		return clampInt16(x);
}

abstract GoInt64(Int64) from Int64 {
	public inline function new(x)
		this = x;

	public inline function toBasic()
		return this;

	public inline function copy():GoInt64
		return this.copy();

	@:from static function fromString(x:String):GoInt64
		return Int64.parseString(x);

	@:from static function fromInt(x:Int):GoInt64
		return Int64.ofInt(x);

	@:from static function fromFloat(x:Float):GoInt64
		return Int64.fromFloat(x);

	@:to inline function toInt():GoInt
		return this.low;

	@:to inline function toInt32():GoInt32
		return this.low;

	@:to inline function toInt8():GoInt8
		return this.low;

	@:to inline function toInt16():GoInt16
		return this.low;

	@:to inline function toUInt():GoUInt
		return clampUInt(this.low);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this.low);

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(toFloat32(), 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(toFloat64(), 0);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this.low);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this.low);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this.low;

	@:to inline function toFloat64():GoFloat64
		return this.low;

	@:to inline function toUIntptr():GoUIntptr
		return this.low;

	function toString()
		return haxe.Int64.toStr(this);

	public static inline function ofInt(x:Int):GoInt64
		return (Int64.make(x >> 31, x) : GoInt64);

	@:op(A >> B) private static function shr(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic().low;
	}

	@:op(A << B) private static function shl(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic().low;
	}

	@:op(A + B) public static function add(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() + b.toBasic();

	@:op(A++) inline function postInc():GoInt64 {
		return this
		++;
	}

	@:op(A--) inline function postDec():GoInt64
		return this

	--;
	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoInt64):GoInt64
		return t * -1;

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64
		return Int64.div(a.toBasic(), b.toBasic());

	@:op(A - B) public static function sub(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() - b.toBasic();

	@:op(A | B) public static function or(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) public static function xor(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) public static function and(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() & b.toBasic();

	@:op(A > B) private static function gt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(~A) private static function bneg(t:GoInt64):GoInt64;

	@:op(A == B) private static function equals(a:GoInt64, b:GoInt64):Bool
		return Int64.eq(a.toBasic(), b.toBasic());

	@:op(A != B) private static function notEquals(a:GoInt64, b:GoInt64):Bool
		return Int64.neq(a.toBasic(), b.toBasic());
}

abstract GoUInt8(UInt8) from UInt8 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static inline function ofInt(x:Int)
		return x;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(A > B) private static function gt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A >= B) private static function gte(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A < B) private static function lt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A <= B) private static function lte(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A++) inline function postInc():GoUInt8
		return this = clamp(this + 1);

	@:op(-A) private static function neg(a:GoUInt8):GoUInt8
		return a * -1;

	@:op(A--) inline function postDec():GoUInt8
		return this = clamp(this - 1);

	@:op(A + B) private static function add(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (b == 0)
			throw "division by zero";
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A << B) private static function shl(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	// TODO: clamp uint8
	static function clamp(x:Int)
		return clampUInt8(x);
}

abstract GoUInt16(UInt16) from UInt16 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;
	@:to inline function toInt32():GoInt32
                return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	public static function ofInt(x:Int):GoUInt16
		return x;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(-A) private static function neg(a:GoUInt16):GoUInt16
		return a * -1;

	@:op(A > B) private static function gt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >= B) private static function gte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A < B) private static function lt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A <= B) private static function lte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >> B) private static function shr(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (b == 0)
			throw "division by zero";
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A++) inline function postInc():GoUInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoUInt16 {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int)
		return clampUInt16(x);
}

abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x)
		this = x;

	public inline function copy():GoUInt64
		return this.copy();

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return this;

	@:to inline function toInt():GoInt
		return this.low;

	@:to inline function toInt32():GoInt32
		return this.low;
	@:to inline function toInt8():GoInt8
		return this.low;

	@:to inline function toInt16():GoInt16
		return this.low;

	@:to inline function toUInt():GoUInt
		return clampUInt(this.low);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this.low);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this.low);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this.low);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this.low;

	@:to inline function toFloat64():GoFloat64
		return this.low;

	@:from public static inline function ofInt(x:Int):GoUInt64
		return UInt64.ofInt(x);

	@:from public static inline function ofString(x:String):GoUInt64 {
		try {
			return UInt64.parseString(x);
		} catch (e) { // TODO: implement own uint64 parser in order to support full range of uint64 past positive int64
			return 0;
		}
	}

	@:from public static inline function ofFloat(x:Float):GoUInt64
		return (Std.int(x) : GoUInt64);

	@:op(A > B) private static function gt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (shiftGuard(b.toBasic().low))
			return 0;
		return a.toBasic() << b.toBasic().low;
	}

	@:op(A >> B) private static function shr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (shiftGuard(b.toBasic().low))
			return 0;
		return a.toBasic() >> b.toBasic().low;
	}

	@:op(A != B) private static function neq(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() != b.toBasic();

	@:op(A == B) private static function equals(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() == b.toBasic();

	@:op(A + B) private static function add(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() + b.toBasic();

	@:op(A - B) private static function sub(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() - b.toBasic();

	@:op(A * B) private static function mul(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() * b.toBasic();

	@:op(A & B) private static function and(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() & b.toBasic();

	@:op(A | B) private static function or(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A % B) private static function mod(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) private static function div(a:GoUInt64, b:GoUInt64):GoUInt64
		return Int64.div(a.toBasic(), b.toBasic());

	@:op(A++) inline function postInc():GoUInt64 {
		return this
		++;
	}

	@:op(-A) private static function neg(a:GoUInt64):GoUInt64
		return a * -1;

	@:op(A--) inline function postDec():GoUInt64 {
		return this
		--;
	}
}

interface StructType {
	public function __underlying__():AnyInterface;
}

interface Error {
	public function __underlying__():AnyInterface;
	public function error():GoString;
}

@:structInit
class AnyInterfaceData {
	public var value:Any;
	public var valueInterface:Any;
	public var type:stdgo.reflect.Reflect.Type;

	public function new(value,type,valueInterface=null) {
		this.value = value;
		this.valueInterface = valueInterface;
		this.type = type;
	}

	public function toString():GoString
		return '$value';
}

@:forward
@:forward.new
abstract AnyInterface(AnyInterfaceData) from AnyInterfaceData {
	@:op(A != b) public static function notEquals(a:AnyInterface, b:AnyInterface):Bool {
		return !equals(a, b);
	}

	@:op(A == B) public static function equals(a:AnyInterface, b:AnyInterface):Bool {
		if (!a.type.assignableTo(b.type)) {
			throw "invalid operation: (mismatched types " + a.type + " and " + b.type + ")";
		}
		var gt = a.type.gt;
		return switch gt {
			case GT_string:
				(a.value : GoString) == (b.value : GoString);
			case GT_bool, GT_int8, GT_int16, GT_int32, GT_uint8, GT_uint16, GT_uint32, GT_uintptr, GT_float64, GT_float32:
				a.value == b.value;
			case GT_uint:
				(a.value : GoUInt) == (b.value : GoUInt);
			case GT_int:
				(a.value : GoInt) == (b.value : GoInt);
			case GT_uint64:
				(a.value : GoUInt64) == (b.value : GoUInt64);
			case GT_int64:
				(a.value : GoInt64) == (b.value : GoInt64);
			case GT_complex64:
				(a.value : GoComplex64) == (b.value : GoComplex64);
			case GT_complex128:
				(a.value : GoComplex128) == (b.value : GoComplex128);
			case GT_namedType(_, _, _, _, _, type):
				function isReflectType(type:GT_enum) {
					return switch type {
						case GT_namedType(pack, _, name, _, _, type):
							if (pack == "stdgo.reflect" && name == "Type") {
								true;
							} else {
								isReflectType(type);
							}
						default:
							false;
					}
				}
				trace("type: " + isReflectType(gt));
				if (isReflectType(gt))
					return (a.value : stdgo.reflect.Reflect.Type).assignableTo(b.value);
				a.type.gt = type;
				switch b.type.gt {
					case GT_namedType(_, _, _, _, _, type2):
						b.type.gt = type2;
						return equals(a, b);
					default:
				}
				true;
			case GT_struct(fields):
				for (i in 0...fields.length) {
					switch fields[i] {
						case GT_field(name, type, _):
							if (StringTools.startsWith(name, "__blank__"))
								continue;
							var fieldValue = Reflect.field(a.value, name);
							var fieldValue2 = Reflect.field(b.value, name);
							var a = new AnyInterface(fieldValue, new stdgo.reflect.Reflect.Type(type));
							var b = new AnyInterface(fieldValue2, new stdgo.reflect.Reflect.Type(type));
							var bool = equals(a, b);
							if (!bool) return false;
						default:
					}
				}
				true;
			case GT_invalid:
				switch b.type.gt {
					case GT_invalid: true;
					default: false;
				}
			case GT_slice(elem):
				var a:Slice<Any> = a.value;
				var b:Slice<Any> = b.value;
				var t = new stdgo.reflect.Reflect.Type(elem);
				if (a.length != b.length)
					return false;
				for (i in 0...a.length.toBasic()) {
					if (AnyInterface.equals(new AnyInterface(a[i], t),new AnyInterface(b[i], t)))
						return false;
				}
				true;
			default:
				throw "unknown type: " + a.type.gt;
		}
	}
}

// holds anon data

@:forward
@:forward.new
@:forward.variance
abstract MultiReturn<T>(T) from T to T {}

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int, value:T):T;
}

class GoIntIterator {
	var min:Int;
	var max:Int;

	public inline function new(min:GoInt, max:GoInt) {
		this.min = min.toBasic();
		this.max = max.toBasic();
	}

	public inline function hasNext() {
		return min < max;
	}

	public inline function next():GoInt {
		return min++;
	}
}

interface MapAccess<K, V> {
	function get(k:K):Null<V>;
	function set(k:K, v:V):Void;
}
/*
	uint8       the set of all unsigned  8-bit integers (0 to 255)
	uint16      the set of all unsigned 16-bit integers (0 to 65535)
	uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
	uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)

	int8        the set of all signed  8-bit integers (-128 to 127)
	int16       the set of all signed 16-bit integers (-32768 to 32767)
	int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
	int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

	float32     the set of all IEEE-754 32-bit floating-point numbers
	float64     the set of all IEEE-754 64-bit floating-point numbers

	complex64   the set of all complex numbers with float32 real and imaginary parts
	complex128  the set of all complex numbers with float64 real and imaginary parts

	byte        alias for uint8
	rune        alias for int32
 */
