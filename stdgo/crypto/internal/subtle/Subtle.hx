package stdgo.crypto.internal.subtle;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // AnyOverlap reports whether x and y share memory at any (not necessarily
    // corresponding) index. The memory beyond the slice length is ignored.
**/
function anyOverlap(_x:Slice<GoByte>, _y:Slice<GoByte>):Bool {
        return ((((_x != null ? _x.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_y != null ? _y.length : ((0 : GoInt))) > ((0 : GoInt)))) && (((((Go.pointer((_x != null ? _x[((0 : GoInt))] : ((0 : GoUInt8)))) : stdgo.unsafe.Unsafe.UnsafePointer)) : GoUIntptr)) <= ((((Go.pointer((_y != null ? _y[(_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8)))) : stdgo.unsafe.Unsafe.UnsafePointer)) : GoUIntptr)))) && (((((Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoUInt8)))) : stdgo.unsafe.Unsafe.UnsafePointer)) : GoUIntptr)) <= ((((Go.pointer((_x != null ? _x[(_x != null ? _x.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8)))) : stdgo.unsafe.Unsafe.UnsafePointer)) : GoUIntptr)));
    }
/**
    // InexactOverlap reports whether x and y share memory at any non-corresponding
    // index. The memory beyond the slice length is ignored. Note that x and y can
    // have different lengths and still not have any inexact overlap.
    //
    // InexactOverlap can be used to implement the requirements of the crypto/cipher
    // AEAD, Block, BlockMode and Stream interfaces.
**/
function inexactOverlap(_x:Slice<GoByte>, _y:Slice<GoByte>):Bool {
        if ((((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_y != null ? _y.length : ((0 : GoInt))) == ((0 : GoInt)))) || (Go.pointer((_x != null ? _x[((0 : GoInt))] : ((0 : GoUInt8)))) == Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoUInt8)))))) {
            return false;
        };
        return anyOverlap(_x, _y);
    }
