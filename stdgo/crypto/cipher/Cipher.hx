package stdgo.crypto.cipher;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _errOpen : stdgo.Error = stdgo.errors.Errors.new_(((("cipher: message authentication failed" : GoString))));
var _gcmReductionTable : Slice<GoUInt16> = ((new Slice<GoUInt16>(
((0 : GoUInt16)),
((7200 : GoUInt16)),
((14400 : GoUInt16)),
((9312 : GoUInt16)),
((28800 : GoUInt16)),
((27808 : GoUInt16)),
((18624 : GoUInt16)),
((21728 : GoUInt16)),
((57600 : GoUInt16)),
((64800 : GoUInt16)),
((55616 : GoUInt16)),
((50528 : GoUInt16)),
((37248 : GoUInt16)),
((36256 : GoUInt16)),
((43456 : GoUInt16)),
((46560 : GoUInt16))) : Slice<GoUInt16>));
typedef T_cbcEncAble = StructType & {
    public function newCBCEncrypter(_iv:Slice<GoByte>):BlockMode;
};
typedef T_cbcDecAble = StructType & {
    public function newCBCDecrypter(_iv:Slice<GoByte>):BlockMode;
};
typedef Block = StructType & {
    public function blockSize():GoInt;
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef Stream = StructType & {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef BlockMode = StructType & {
    public function blockSize():GoInt;
    public function cryptBlocks(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef T_ctrAble = StructType & {
    public function newCTR(_iv:Slice<GoByte>):Stream;
};
typedef AEAD = StructType & {
    public function nonceSize():GoInt;
    public function overhead():GoInt;
    public function seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte>;
    public function open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef T_gcmAble = StructType & {
    public function newGCM(_nonceSize:GoInt, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; };
};
@:structInit class T_cbc {
    public var _b : Block = ((null : Block));
    public var _blockSize : GoInt = ((0 : GoInt));
    public var _iv : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _tmp : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_b:Block, ?_blockSize:GoInt, ?_iv:Slice<GoUInt8>, ?_tmp:Slice<GoUInt8>) {
        if (_b != null) this._b = _b;
        if (_blockSize != null) this._blockSize = _blockSize;
        if (_iv != null) this._iv = _iv;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cbc(_b, _blockSize, _iv, _tmp);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_cfb_static_extension) class T_cfb {
    public var _b : Block = ((null : Block));
    public var _next : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _outUsed : GoInt = ((0 : GoInt));
    public var _decrypt : Bool = false;
    public function new(?_b:Block, ?_next:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt, ?_decrypt:Bool) {
        if (_b != null) this._b = _b;
        if (_next != null) this._next = _next;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
        if (_decrypt != null) this._decrypt = _decrypt;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cfb(_b, _next, _out, _outUsed, _decrypt);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ctr_static_extension) class T_ctr {
    public var _b : Block = ((null : Block));
    public var _ctr : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _outUsed : GoInt = ((0 : GoInt));
    public function new(?_b:Block, ?_ctr:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt) {
        if (_b != null) this._b = _b;
        if (_ctr != null) this._ctr = _ctr;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ctr(_b, _ctr, _out, _outUsed);
    }
}
@:structInit class T_gcmFieldElement {
    public var _low : GoUInt64 = ((0 : GoUInt64));
    public var _high : GoUInt64 = ((0 : GoUInt64));
    public function new(?_low:GoUInt64, ?_high:GoUInt64) {
        if (_low != null) this._low = _low;
        if (_high != null) this._high = _high;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gcmFieldElement(_low, _high);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_gcm_static_extension) class T_gcm {
    public var _cipher : Block = ((null : Block));
    public var _nonceSize : GoInt = ((0 : GoInt));
    public var _tagSize : GoInt = ((0 : GoInt));
    public var _productTable : GoArray<T_gcmFieldElement> = new GoArray<T_gcmFieldElement>(...[for (i in 0 ... 16) new T_gcmFieldElement()]);
    public function new(?_cipher:Block, ?_nonceSize:GoInt, ?_tagSize:GoInt, ?_productTable:GoArray<T_gcmFieldElement>) {
        if (_cipher != null) this._cipher = _cipher;
        if (_nonceSize != null) this._nonceSize = _nonceSize;
        if (_tagSize != null) this._tagSize = _tagSize;
        if (_productTable != null) this._productTable = _productTable;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gcm(_cipher, _nonceSize, _tagSize, _productTable);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamReader_static_extension) class StreamReader {
    public var s : Stream = ((null : Stream));
    public var r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?s:Stream, ?r:stdgo.io.Io.Reader) {
        if (s != null) this.s = s;
        if (r != null) this.r = r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StreamReader(s, r);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamWriter_static_extension) class StreamWriter {
    public var s : Stream = ((null : Stream));
    public var w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?s:Stream, ?w:stdgo.io.Io.Writer, ?err:stdgo.Error) {
        if (s != null) this.s = s;
        if (w != null) this.w = w;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StreamWriter(s, w, err);
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ofb_static_extension) class T_ofb {
    public var _b : Block = ((null : Block));
    public var _cipher : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _outUsed : GoInt = ((0 : GoInt));
    public function new(?_b:Block, ?_cipher:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt) {
        if (_b != null) this._b = _b;
        if (_cipher != null) this._cipher = _cipher;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ofb(_b, _cipher, _out, _outUsed);
    }
}
@:named @:using(stdgo.crypto.cipher.Cipher.T_cbcEncrypter_static_extension) typedef T_cbcEncrypter = T_cbc;
@:named @:using(stdgo.crypto.cipher.Cipher.T_cbcDecrypter_static_extension) typedef T_cbcDecrypter = T_cbc;
function _newCBC(_b:Block, _iv:Slice<GoByte>):T_cbc {
        return (({ _b : _b, _blockSize : _b.blockSize(), _iv : _dup(_iv), _tmp : new Slice<GoUInt8>(...[for (i in 0 ... ((_b.blockSize() : GoInt)).toBasic()) ((0 : GoUInt8))]) } : T_cbc));
    }
/**
    // NewCBCEncrypter returns a BlockMode which encrypts in cipher block chaining
    // mode, using the given Block. The length of iv must be the same as the
    // Block's block size.
**/
function newCBCEncrypter(_b:Block, _iv:Slice<GoByte>):BlockMode {
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != _b.blockSize()) {
            throw Go.toInterface(((("cipher.NewCBCEncrypter: IV length must equal block size" : GoString))));
        };
        {
            var __tmp__ = try {
                { value : ((((_b.__underlying__().value : Dynamic)) : T_cbcEncAble)), ok : true };
            } catch(_) {
                { value : ((null : T_cbcEncAble)), ok : false };
            }, _cbc = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cbc.newCBCEncrypter(_iv);
            };
        };
        return new T_cbcEncrypter(_newCBC(_b, _iv)._b, _newCBC(_b, _iv)._blockSize, _newCBC(_b, _iv)._iv, _newCBC(_b, _iv)._tmp);
    }
/**
    // NewCBCDecrypter returns a BlockMode which decrypts in cipher block chaining
    // mode, using the given Block. The length of iv must be the same as the
    // Block's block size and must match the iv used to encrypt the data.
**/
function newCBCDecrypter(_b:Block, _iv:Slice<GoByte>):BlockMode {
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != _b.blockSize()) {
            throw Go.toInterface(((("cipher.NewCBCDecrypter: IV length must equal block size" : GoString))));
        };
        {
            var __tmp__ = try {
                { value : ((((_b.__underlying__().value : Dynamic)) : T_cbcDecAble)), ok : true };
            } catch(_) {
                { value : ((null : T_cbcDecAble)), ok : false };
            }, _cbc = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cbc.newCBCDecrypter(_iv);
            };
        };
        return new T_cbcDecrypter(_newCBC(_b, _iv)._b, _newCBC(_b, _iv)._blockSize, _newCBC(_b, _iv)._iv, _newCBC(_b, _iv)._tmp);
    }
/**
    // NewCFBEncrypter returns a Stream which encrypts with cipher feedback mode,
    // using the given Block. The iv must be the same length as the Block's block
    // size.
**/
function newCFBEncrypter(_block:Block, _iv:Slice<GoByte>):Stream {
        return _newCFB(_block, _iv, false);
    }
/**
    // NewCFBDecrypter returns a Stream which decrypts with cipher feedback mode,
    // using the given Block. The iv must be the same length as the Block's block
    // size.
**/
function newCFBDecrypter(_block:Block, _iv:Slice<GoByte>):Stream {
        return _newCFB(_block, _iv, true);
    }
function _newCFB(_block:Block, _iv:Slice<GoByte>, _decrypt:Bool):Stream {
        var _blockSize:GoInt = _block.blockSize();
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != _blockSize) {
            throw Go.toInterface(((("cipher.newCFB: IV length must equal block size" : GoString))));
        };
        var _x = (({ _b : _block, _out : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _next : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _outUsed : _blockSize, _decrypt : _decrypt } : T_cfb));
        Go.copySlice(_x._next, _iv);
        return _x;
    }
function _dup(_p:Slice<GoByte>):Slice<GoByte> {
        var _q = new Slice<GoUInt8>(...[for (i in 0 ... (((_p != null ? _p.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_q, _p);
        return _q;
    }
/**
    // NewCTR returns a Stream which encrypts/decrypts using the given Block in
    // counter mode. The length of iv must be the same as the Block's block size.
**/
function newCTR(_block:Block, _iv:Slice<GoByte>):Stream {
        {
            var __tmp__ = try {
                { value : ((((_block.__underlying__().value : Dynamic)) : T_ctrAble)), ok : true };
            } catch(_) {
                { value : ((null : T_ctrAble)), ok : false };
            }, _ctr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _ctr.newCTR(_iv);
            };
        };
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != _block.blockSize()) {
            throw Go.toInterface(((("cipher.NewCTR: IV length must equal block size" : GoString))));
        };
        var _bufSize:GoInt = ((512 : GoInt));
        if (_bufSize < _block.blockSize()) {
            _bufSize = _block.blockSize();
        };
        return (({ _b : _block, _ctr : _dup(_iv), _out : new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_bufSize : GoInt)).toBasic()), _outUsed : ((0 : GoInt)) } : T_ctr));
    }
/**
    // NewGCM returns the given 128-bit, block cipher wrapped in Galois Counter Mode
    // with the standard nonce length.
    //
    // In general, the GHASH operation performed by this implementation of GCM is not constant-time.
    // An exception is when the underlying Block was created by aes.NewCipher
    // on systems with hardware support for AES. See the crypto/aes package documentation for details.
**/
function newGCM(_cipher:Block):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, ((12 : GoInt)), ((16 : GoInt)));
    }
/**
    // NewGCMWithNonceSize returns the given 128-bit, block cipher wrapped in Galois
    // Counter Mode, which accepts nonces of the given length. The length must not
    // be zero.
    //
    // Only use this function if you require compatibility with an existing
    // cryptosystem that uses non-standard nonce lengths. All other users should use
    // NewGCM, which is faster and more resistant to misuse.
**/
function newGCMWithNonceSize(_cipher:Block, _size:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, _size, ((16 : GoInt)));
    }
/**
    // NewGCMWithTagSize returns the given 128-bit, block cipher wrapped in Galois
    // Counter Mode, which generates tags with the given length.
    //
    // Tag sizes between 12 and 16 bytes are allowed.
    //
    // Only use this function if you require compatibility with an existing
    // cryptosystem that uses non-standard tag lengths. All other users should use
    // NewGCM, which is more resistant to misuse.
**/
function newGCMWithTagSize(_cipher:Block, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, ((12 : GoInt)), _tagSize);
    }
function _newGCMWithNonceAndTagSize(_cipher:Block, _nonceSize:GoInt, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        if ((_tagSize < ((12 : GoInt))) || (_tagSize > ((16 : GoInt)))) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_(((("cipher: incorrect tag size given to GCM" : GoString)))) };
        };
        if (_nonceSize <= ((0 : GoInt))) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_(((("cipher: the nonce can\'t have zero length, or the security of the key will be immediately compromised" : GoString)))) };
        };
        {
            var __tmp__ = try {
                { value : ((((_cipher.__underlying__().value : Dynamic)) : T_gcmAble)), ok : true };
            } catch(_) {
                { value : ((null : T_gcmAble)), ok : false };
            }, _cipher = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cipher.newGCM(_nonceSize, _tagSize);
            };
        };
        if (_cipher.blockSize() != ((16 : GoInt))) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_(((("cipher: NewGCM requires 128-bit block cipher" : GoString)))) };
        };
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _cipher.encrypt(((_key.__slice__(0) : Slice<GoUInt8>)), ((_key.__slice__(0) : Slice<GoUInt8>)));
        var _g = (({ _cipher : _cipher, _nonceSize : _nonceSize, _tagSize : _tagSize, _productTable : new GoArray<T_gcmFieldElement>(...[for (i in 0 ... 16) new T_gcmFieldElement()]) } : T_gcm));
        var _x:T_gcmFieldElement = ((new T_gcmFieldElement(stdgo.encoding.binary.Binary.bigEndian.uint64(((_key.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>))), stdgo.encoding.binary.Binary.bigEndian.uint64(((_key.__slice__(((8 : GoInt))) : Slice<GoUInt8>)))) : T_gcmFieldElement));
        if (_g._productTable != null) _g._productTable[_reverseBits(((1 : GoInt)))] = (_x == null ? null : _x.__copy__());
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i = _i + (((2 : GoInt))), {
                if (_g._productTable != null) _g._productTable[_reverseBits(_i)] = (_gcmDouble((_g._productTable != null ? _g._productTable[_reverseBits(_i / ((2 : GoInt)))] : new T_gcmFieldElement())) == null ? null : _gcmDouble((_g._productTable != null ? _g._productTable[_reverseBits(_i / ((2 : GoInt)))] : new T_gcmFieldElement())).__copy__());
                if (_g._productTable != null) _g._productTable[_reverseBits(_i + ((1 : GoInt)))] = (_gcmAdd((_g._productTable != null ? _g._productTable[_reverseBits(_i)] : new T_gcmFieldElement()), _x) == null ? null : _gcmAdd((_g._productTable != null ? _g._productTable[_reverseBits(_i)] : new T_gcmFieldElement()), _x).__copy__());
            });
        };
        return { _0 : _g, _1 : ((null : stdgo.Error)) };
    }
/**
    // reverseBits reverses the order of the bits of 4-bit number in i.
**/
function _reverseBits(_i:GoInt):GoInt {
        _i = ((_i << ((2 : GoUnTypedInt))) & ((12 : GoInt))) | ((_i >> ((2 : GoUnTypedInt))) & ((3 : GoInt)));
        _i = ((_i << ((1 : GoUnTypedInt))) & ((10 : GoInt))) | ((_i >> ((1 : GoUnTypedInt))) & ((5 : GoInt)));
        return _i;
    }
/**
    // gcmAdd adds two elements of GF(2¹²⁸) and returns the sum.
**/
function _gcmAdd(_x:T_gcmFieldElement, _y:T_gcmFieldElement):T_gcmFieldElement {
        return ((new T_gcmFieldElement(_x._low ^ _y._low, _x._high ^ _y._high) : T_gcmFieldElement));
    }
/**
    // gcmDouble returns the result of doubling an element of GF(2¹²⁸).
**/
function _gcmDouble(_x:T_gcmFieldElement):T_gcmFieldElement {
        var _double:T_gcmFieldElement = new T_gcmFieldElement();
        var _msbSet:Bool = (_x._high & ((1 : GoUInt64))) == ((1 : GoUInt64));
        _double._high = _x._high >> ((1 : GoUnTypedInt));
        _double._high = _double._high | (_x._low << ((63 : GoUnTypedInt)));
        _double._low = _x._low >> ((1 : GoUnTypedInt));
        if (_msbSet) {
            _double._low = _double._low ^ ((("16212958658533785600" : GoUInt64)));
        };
        return _double;
    }
/**
    // gcmInc32 treats the final four bytes of counterBlock as a big-endian value
    // and increments it.
**/
function _gcmInc32(_counterBlock:GoArray<GoByte>):Void {
        var _ctr = ((_counterBlock.__slice__(((12 : GoInt))) : Slice<GoUInt8>));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_ctr, stdgo.encoding.binary.Binary.bigEndian.uint32(_ctr) + ((1 : GoUInt32)));
    }
/**
    // sliceForAppend takes a slice and a requested number of bytes. It returns a
    // slice with the contents of the given slice followed by that many bytes and a
    // second slice that aliases into it and contains only the extra bytes. If the
    // original slice has sufficient capacity then no allocation is performed.
**/
function _sliceForAppend(_in:Slice<GoByte>, _n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } {
        var _head:Slice<GoByte> = ((null : Slice<GoUInt8>)), _tail:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var _total:GoInt = (_in != null ? _in.length : ((0 : GoInt))) + _n;
            if ((_in != null ? _in.cap() : ((0 : GoInt))) >= _total) {
                _head = ((_in.__slice__(0, _total) : Slice<GoUInt8>));
            } else {
                _head = new Slice<GoUInt8>(...[for (i in 0 ... ((_total : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copySlice(_head, _in);
            };
        };
        _tail = ((_head.__slice__((_in != null ? _in.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        return { _0 : _head, _1 : _tail };
    }
/**
    // NewOFB returns a Stream that encrypts or decrypts using the block cipher b
    // in output feedback mode. The initialization vector iv's length must be equal
    // to b's block size.
**/
function newOFB(_b:Block, _iv:Slice<GoByte>):Stream {
        var _blockSize:GoInt = _b.blockSize();
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != _blockSize) {
            throw Go.toInterface(((("cipher.NewOFB: IV length must equal block size" : GoString))));
        };
        var _bufSize:GoInt = ((512 : GoInt));
        if (_bufSize < _blockSize) {
            _bufSize = _blockSize;
        };
        var _x = (({ _b : _b, _cipher : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _out : new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_bufSize : GoInt)).toBasic()), _outUsed : ((0 : GoInt)) } : T_ofb));
        Go.copySlice(_x._cipher, _iv);
        return _x;
    }
/**
    // xorBytes xors the bytes in a and b. The destination should have enough
    // space, otherwise xorBytes will panic. Returns the number of bytes xor'd.
**/
function _xorBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        var _n:GoInt = (_a != null ? _a.length : ((0 : GoInt)));
        if ((_b != null ? _b.length : ((0 : GoInt))) < _n) {
            _n = (_b != null ? _b.length : ((0 : GoInt)));
        };
        if (_n == ((0 : GoInt))) {
            return ((0 : GoInt));
        };
        if (false) {
            _fastXORBytes(_dst, _a, _b, _n);
        } else {
            _safeXORBytes(_dst, _a, _b, _n);
        };
        return _n;
    }
/**
    // fastXORBytes xors in bulk. It only works on architectures that
    // support unaligned read/writes.
    // n needs to be smaller or equal than the length of a and b.
**/
function _fastXORBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>, _n:GoInt):Void {
        (_dst != null ? _dst[_n - ((1 : GoInt))] : ((0 : GoUInt8)));
        var _w:GoInt = _n / ((4 : GoInt));
        if (_w > ((0 : GoInt))) {
            var _dw = ((((_dst : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
            var _aw = ((((_a : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
            var _bw = ((((_b : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _w, _i++, {
                    if (_dw != null) _dw[_i] = (_aw != null ? _aw[_i] : ((0 : GoUIntptr))) ^ (_bw != null ? _bw[_i] : ((0 : GoUIntptr)));
                });
            };
        };
        {
            var _i:GoInt = (_n - (_n % ((4 : GoInt))));
            Go.cfor(_i < _n, _i++, {
                if (_dst != null) _dst[_i] = (_a != null ? _a[_i] : ((0 : GoUInt8))) ^ (_b != null ? _b[_i] : ((0 : GoUInt8)));
            });
        };
    }
/**
    // n needs to be smaller or equal than the length of a and b.
**/
function _safeXORBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>, _n:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_dst != null) _dst[_i] = (_a != null ? _a[_i] : ((0 : GoUInt8))) ^ (_b != null ? _b[_i] : ((0 : GoUInt8)));
            });
        };
    }
/**
    // fastXORWords XORs multiples of 4 or 8 bytes (depending on architecture.)
    // The arguments are assumed to be of equal length.
**/
function _fastXORWords(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):Void {
        var _dw = ((((_dst : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
        var _aw = ((((_a : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
        var _bw = ((((_b : stdgo.unsafe.Unsafe.UnsafePointer)) : Slice<GoUIntptr>));
        var _n:GoInt = (_b != null ? _b.length : ((0 : GoInt))) / ((4 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_dw != null) _dw[_i] = (_aw != null ? _aw[_i] : ((0 : GoUIntptr))) ^ (_bw != null ? _bw[_i] : ((0 : GoUIntptr)));
            });
        };
    }
/**
    // fastXORWords XORs multiples of 4 or 8 bytes (depending on architecture.)
    // The slice arguments a and b are assumed to be of equal length.
**/
function _xorWords(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):Void {
        if (false) {
            _fastXORWords(_dst, _a, _b);
        } else {
            _safeXORBytes(_dst, _a, _b, (_b != null ? _b.length : ((0 : GoInt))));
        };
    }
@:keep class T_cfb_static_extension {
    @:keep
    public static function xorkeyStream( _x:T_cfb, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < (_src != null ? _src.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("crypto/cipher: output smaller than input" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        while ((_src != null ? _src.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (_x._outUsed == (_x._out != null ? _x._out.length : ((0 : GoInt)))) {
                _x._b.encrypt(_x._out, _x._next);
                _x._outUsed = ((0 : GoInt));
            };
            if (_x._decrypt) {
                Go.copySlice(((_x._next.__slice__(_x._outUsed) : Slice<GoUInt8>)), _src);
            };
            var _n:GoInt = _xorBytes(_dst, _src, ((_x._out.__slice__(_x._outUsed) : Slice<GoUInt8>)));
            if (!_x._decrypt) {
                Go.copySlice(((_x._next.__slice__(_x._outUsed) : Slice<GoUInt8>)), _dst);
            };
            _dst = ((_dst.__slice__(_n) : Slice<GoUInt8>));
            _src = ((_src.__slice__(_n) : Slice<GoUInt8>));
            _x._outUsed = _x._outUsed + (_n);
        };
    }
}
class T_cfb_wrapper {
    @:keep
    public var xorkeyStream : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_cfb;
}
@:keep class T_ctr_static_extension {
    @:keep
    public static function xorkeyStream( _x:T_ctr, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < (_src != null ? _src.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("crypto/cipher: output smaller than input" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        while ((_src != null ? _src.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (_x._outUsed >= ((_x._out != null ? _x._out.length : ((0 : GoInt))) - _x._b.blockSize())) {
                _x._refill();
            };
            var _n:GoInt = _xorBytes(_dst, _src, ((_x._out.__slice__(_x._outUsed) : Slice<GoUInt8>)));
            _dst = ((_dst.__slice__(_n) : Slice<GoUInt8>));
            _src = ((_src.__slice__(_n) : Slice<GoUInt8>));
            _x._outUsed = _x._outUsed + (_n);
        };
    }
    @:keep
    public static function _refill( _x:T_ctr):Void {
        var _remain:GoInt = (_x._out != null ? _x._out.length : ((0 : GoInt))) - _x._outUsed;
        Go.copySlice(_x._out, ((_x._out.__slice__(_x._outUsed) : Slice<GoUInt8>)));
        _x._out = ((_x._out.__slice__(0, (_x._out != null ? _x._out.cap() : ((0 : GoInt)))) : Slice<GoUInt8>));
        var _bs:GoInt = _x._b.blockSize();
        while (_remain <= ((_x._out != null ? _x._out.length : ((0 : GoInt))) - _bs)) {
            _x._b.encrypt(((_x._out.__slice__(_remain) : Slice<GoUInt8>)), _x._ctr);
            _remain = _remain + (_bs);
            {
                var _i:GoInt = (_x._ctr != null ? _x._ctr.length : ((0 : GoInt))) - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    if (_x._ctr != null) _x._ctr[_i]++;
                    if ((_x._ctr != null ? _x._ctr[_i] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        break;
                    };
                });
            };
        };
        _x._out = ((_x._out.__slice__(0, _remain) : Slice<GoUInt8>));
        _x._outUsed = ((0 : GoInt));
    }
}
class T_ctr_wrapper {
    @:keep
    public var xorkeyStream : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var _refill : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_ctr;
}
@:keep class T_gcm_static_extension {
    /**
        // auth calculates GHASH(ciphertext, additionalData), masks the result with
        // tagMask and writes the result to out.
    **/
    @:keep
    public static function _auth( _g:T_gcm, _out:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>, _tagMask:GoArray<GoByte>):Void {
        var _y:T_gcmFieldElement = new T_gcmFieldElement();
        _g._update(_y, _additionalData);
        _g._update(_y, _ciphertext);
        _y._low = _y._low ^ ((((_additionalData != null ? _additionalData.length : ((0 : GoInt))) : GoUInt64)) * ((8 : GoUInt64)));
        _y._high = _y._high ^ ((((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) : GoUInt64)) * ((8 : GoUInt64)));
        _g._mul(_y);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_out, _y._low);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_out.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _y._high);
        _xorWords(_out, _out, ((_tagMask.__slice__(0) : Slice<GoUInt8>)));
    }
    /**
        // deriveCounter computes the initial GCM counter state from the given nonce.
        // See NIST SP 800-38D, section 7.1. This assumes that counter is filled with
        // zeros on entry.
    **/
    @:keep
    public static function _deriveCounter( _g:T_gcm, _counter:GoArray<GoByte>, _nonce:Slice<GoByte>):Void {
        if ((_nonce != null ? _nonce.length : ((0 : GoInt))) == ((12 : GoInt))) {
            Go.copySlice(((_counter.__slice__(0) : Slice<GoUInt8>)), _nonce);
            if (_counter != null) _counter[((15 : GoInt))] = ((1 : GoUInt8));
        } else {
            var _y:T_gcmFieldElement = new T_gcmFieldElement();
            _g._update(_y, _nonce);
            _y._high = _y._high ^ ((((_nonce != null ? _nonce.length : ((0 : GoInt))) : GoUInt64)) * ((8 : GoUInt64)));
            _g._mul(_y);
            stdgo.encoding.binary.Binary.bigEndian.putUint64(((_counter.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)), _y._low);
            stdgo.encoding.binary.Binary.bigEndian.putUint64(((_counter.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _y._high);
        };
    }
    /**
        // counterCrypt crypts in to out using g.cipher in counter mode.
    **/
    @:keep
    public static function _counterCrypt( _g:T_gcm, _out:Slice<GoByte>, _in:Slice<GoByte>, _counter:GoArray<GoByte>):Void {
        var _mask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        while ((_in != null ? _in.length : ((0 : GoInt))) >= ((16 : GoInt))) {
            _g._cipher.encrypt(((_mask.__slice__(0) : Slice<GoUInt8>)), ((_counter.__slice__(0) : Slice<GoUInt8>)));
            _gcmInc32(_counter);
            _xorWords(_out, _in, ((_mask.__slice__(0) : Slice<GoUInt8>)));
            _out = ((_out.__slice__(((16 : GoInt))) : Slice<GoUInt8>));
            _in = ((_in.__slice__(((16 : GoInt))) : Slice<GoUInt8>));
        };
        if ((_in != null ? _in.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _g._cipher.encrypt(((_mask.__slice__(0) : Slice<GoUInt8>)), ((_counter.__slice__(0) : Slice<GoUInt8>)));
            _gcmInc32(_counter);
            _xorBytes(_out, _in, ((_mask.__slice__(0) : Slice<GoUInt8>)));
        };
    }
    /**
        // update extends y with more polynomial terms from data. If data is not a
        // multiple of gcmBlockSize bytes long then the remainder is zero padded.
    **/
    @:keep
    public static function _update( _g:T_gcm, _y:T_gcmFieldElement, _data:Slice<GoByte>):Void {
        var _fullBlocks:GoInt = ((_data != null ? _data.length : ((0 : GoInt))) >> ((4 : GoUnTypedInt))) << ((4 : GoUnTypedInt));
        _g._updateBlocks(_y, ((_data.__slice__(0, _fullBlocks) : Slice<GoUInt8>)));
        if ((_data != null ? _data.length : ((0 : GoInt))) != _fullBlocks) {
            var _partialBlock:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
            Go.copySlice(((_partialBlock.__slice__(0) : Slice<GoUInt8>)), ((_data.__slice__(_fullBlocks) : Slice<GoUInt8>)));
            _g._updateBlocks(_y, ((_partialBlock.__slice__(0) : Slice<GoUInt8>)));
        };
    }
    /**
        // updateBlocks extends y with more polynomial terms from blocks, based on
        // Horner's rule. There must be a multiple of gcmBlockSize bytes in blocks.
    **/
    @:keep
    public static function _updateBlocks( _g:T_gcm, _y:T_gcmFieldElement, _blocks:Slice<GoByte>):Void {
        while ((_blocks != null ? _blocks.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _y._low = _y._low ^ (stdgo.encoding.binary.Binary.bigEndian.uint64(_blocks));
            _y._high = _y._high ^ (stdgo.encoding.binary.Binary.bigEndian.uint64(((_blocks.__slice__(((8 : GoInt))) : Slice<GoUInt8>))));
            _g._mul(_y);
            _blocks = ((_blocks.__slice__(((16 : GoInt))) : Slice<GoUInt8>));
        };
    }
    /**
        // mul sets y to y*H, where H is the GCM key, fixed during NewGCMWithNonceSize.
    **/
    @:keep
    public static function _mul( _g:T_gcm, _y:T_gcmFieldElement):Void {
        var _z:T_gcmFieldElement = new T_gcmFieldElement();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                var _word:GoUInt64 = _y._high;
                if (_i == ((1 : GoInt))) {
                    _word = _y._low;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((64 : GoInt)), _j = _j + (((4 : GoInt))), {
                        var _msw:GoUInt64 = _z._high & ((15 : GoUInt64));
                        _z._high = _z._high >> (((4 : GoUnTypedInt)));
                        _z._high = _z._high | (_z._low << ((60 : GoUnTypedInt)));
                        _z._low = _z._low >> (((4 : GoUnTypedInt)));
                        _z._low = _z._low ^ ((((_gcmReductionTable != null ? _gcmReductionTable[_msw] : ((0 : GoUInt16))) : GoUInt64)) << ((48 : GoUnTypedInt)));
                        var _t = (_g._productTable != null ? _g._productTable[_word & ((15 : GoUInt64))] : new T_gcmFieldElement());
                        _z._low = _z._low ^ (_t._low);
                        _z._high = _z._high ^ (_t._high);
                        _word = _word >> (((4 : GoUnTypedInt)));
                    });
                };
            });
        };
        {
            var __tmp__ = (_z == null ? null : _z.__copy__());
            _y._low = __tmp__._low;
            _y._high = __tmp__._high;
        };
    }
    @:keep
    public static function open( _g:T_gcm, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _data:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if ((_nonce != null ? _nonce.length : ((0 : GoInt))) != _g._nonceSize) {
            throw Go.toInterface(((("crypto/cipher: incorrect nonce length given to GCM" : GoString))));
        };
        if (_g._tagSize < ((12 : GoInt))) {
            throw Go.toInterface(((("crypto/cipher: incorrect GCM tag size" : GoString))));
        };
        if ((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) < _g._tagSize) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _errOpen };
        };
        if ((((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) : GoUInt64)) > (((("4294967294" : GoUInt64)) * ((_g._cipher.blockSize() : GoUInt64))) + ((_g._tagSize : GoUInt64)))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _errOpen };
        };
        var _tag = ((_ciphertext.__slice__((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) - _g._tagSize) : Slice<GoUInt8>));
        _ciphertext = ((_ciphertext.__slice__(0, (_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) - _g._tagSize) : Slice<GoUInt8>));
        var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]), _tagMask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g._deriveCounter(_counter, _nonce);
        _g._cipher.encrypt(((_tagMask.__slice__(0) : Slice<GoUInt8>)), ((_counter.__slice__(0) : Slice<GoUInt8>)));
        _gcmInc32(_counter);
        var _expectedTag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g._auth(((_expectedTag.__slice__(0) : Slice<GoUInt8>)), _ciphertext, _data, _tagMask);
        var __tmp__ = _sliceForAppend(_dst, (_ciphertext != null ? _ciphertext.length : ((0 : GoInt)))), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        if (crypto.internal.subtle.Subtle.inexactOverlap(_out, _ciphertext)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.constantTimeCompare(((_expectedTag.__slice__(0, _g._tagSize) : Slice<GoUInt8>)), _tag) != ((1 : GoInt))) {
            for (_i => _ in _out) {
                if (_out != null) _out[_i] = ((0 : GoUInt8));
            };
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _errOpen };
        };
        _g._counterCrypt(_out, _ciphertext, _counter);
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function seal( _g:T_gcm, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _data:Slice<GoByte>):Slice<GoByte> {
        if ((_nonce != null ? _nonce.length : ((0 : GoInt))) != _g._nonceSize) {
            throw Go.toInterface(((("crypto/cipher: incorrect nonce length given to GCM" : GoString))));
        };
        if ((((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoUInt64)) > ((("4294967294" : GoUInt64)) * ((_g._cipher.blockSize() : GoUInt64)))) {
            throw Go.toInterface(((("crypto/cipher: message too large for GCM" : GoString))));
        };
        var __tmp__ = _sliceForAppend(_dst, (_plaintext != null ? _plaintext.length : ((0 : GoInt))) + _g._tagSize), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        if (crypto.internal.subtle.Subtle.inexactOverlap(_out, _plaintext)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]), _tagMask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g._deriveCounter(_counter, _nonce);
        _g._cipher.encrypt(((_tagMask.__slice__(0) : Slice<GoUInt8>)), ((_counter.__slice__(0) : Slice<GoUInt8>)));
        _gcmInc32(_counter);
        _g._counterCrypt(_out, _plaintext, _counter);
        var _tag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g._auth(((_tag.__slice__(0) : Slice<GoUInt8>)), ((_out.__slice__(0, (_plaintext != null ? _plaintext.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _data, _tagMask);
        Go.copySlice(((_out.__slice__((_plaintext != null ? _plaintext.length : ((0 : GoInt)))) : Slice<GoUInt8>)), ((_tag.__slice__(0) : Slice<GoUInt8>)));
        return _ret;
    }
    @:keep
    public static function overhead( _g:T_gcm):GoInt {
        return _g._tagSize;
    }
    @:keep
    public static function nonceSize( _g:T_gcm):GoInt {
        return _g._nonceSize;
    }
}
class T_gcm_wrapper {
    /**
        // auth calculates GHASH(ciphertext, additionalData), masks the result with
        // tagMask and writes the result to out.
    **/
    @:keep
    public var _auth : (Slice<GoByte>, Slice<GoByte>, Slice<GoByte>, GoArray<GoByte>) -> Void = null;
    /**
        // deriveCounter computes the initial GCM counter state from the given nonce.
        // See NIST SP 800-38D, section 7.1. This assumes that counter is filled with
        // zeros on entry.
    **/
    @:keep
    public var _deriveCounter : (GoArray<GoByte>, Slice<GoByte>) -> Void = null;
    /**
        // counterCrypt crypts in to out using g.cipher in counter mode.
    **/
    @:keep
    public var _counterCrypt : (Slice<GoByte>, Slice<GoByte>, GoArray<GoByte>) -> Void = null;
    /**
        // update extends y with more polynomial terms from data. If data is not a
        // multiple of gcmBlockSize bytes long then the remainder is zero padded.
    **/
    @:keep
    public var _update : (T_gcmFieldElement, Slice<GoByte>) -> Void = null;
    /**
        // updateBlocks extends y with more polynomial terms from blocks, based on
        // Horner's rule. There must be a multiple of gcmBlockSize bytes in blocks.
    **/
    @:keep
    public var _updateBlocks : (T_gcmFieldElement, Slice<GoByte>) -> Void = null;
    /**
        // mul sets y to y*H, where H is the GCM key, fixed during NewGCMWithNonceSize.
    **/
    @:keep
    public var _mul : T_gcmFieldElement -> Void = null;
    @:keep
    public var open : (Slice<GoByte>, Slice<GoByte>, Slice<GoByte>, Slice<GoByte>) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    @:keep
    public var seal : (Slice<GoByte>, Slice<GoByte>, Slice<GoByte>, Slice<GoByte>) -> Slice<GoByte> = null;
    @:keep
    public var overhead : () -> GoInt = null;
    @:keep
    public var nonceSize : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_gcm;
}
@:keep class StreamReader_static_extension {
    @:keep
    public static function read( _r:StreamReader, _dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _r.r.read(_dst);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r.s.xorkeyStream(((_dst.__slice__(0, _n) : Slice<GoUInt8>)), ((_dst.__slice__(0, _n) : Slice<GoUInt8>)));
        return { _0 : _n, _1 : _err };
    }
}
class StreamReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : StreamReader;
}
@:keep class StreamWriter_static_extension {
    /**
        // Close closes the underlying Writer and returns its Close return value, if the Writer
        // is also an io.Closer. Otherwise it returns nil.
    **/
    @:keep
    public static function close( _w:StreamWriter):Error {
        {
            var __tmp__ = try {
                { value : ((((_w.w.__underlying__().value : Dynamic)) : stdgo.io.Io.Closer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.Closer)), ok : false };
            }, _c = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c.close();
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function write( _w:StreamWriter, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _c = new Slice<GoUInt8>(...[for (i in 0 ... (((_src != null ? _src.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _w.s.xorkeyStream(_c, _src);
        {
            var __tmp__ = _w.w.write(_c);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (_src != null ? _src.length : ((0 : GoInt)))) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
}
class StreamWriter_wrapper {
    /**
        // Close closes the underlying Writer and returns its Close return value, if the Writer
        // is also an io.Closer. Otherwise it returns nil.
    **/
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : StreamWriter;
}
@:keep class T_ofb_static_extension {
    @:keep
    public static function xorkeyStream( _x:T_ofb, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < (_src != null ? _src.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("crypto/cipher: output smaller than input" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        while ((_src != null ? _src.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (_x._outUsed >= ((_x._out != null ? _x._out.length : ((0 : GoInt))) - _x._b.blockSize())) {
                _x._refill();
            };
            var _n:GoInt = _xorBytes(_dst, _src, ((_x._out.__slice__(_x._outUsed) : Slice<GoUInt8>)));
            _dst = ((_dst.__slice__(_n) : Slice<GoUInt8>));
            _src = ((_src.__slice__(_n) : Slice<GoUInt8>));
            _x._outUsed = _x._outUsed + (_n);
        };
    }
    @:keep
    public static function _refill( _x:T_ofb):Void {
        var _bs:GoInt = _x._b.blockSize();
        var _remain:GoInt = (_x._out != null ? _x._out.length : ((0 : GoInt))) - _x._outUsed;
        if (_remain > _x._outUsed) {
            return;
        };
        Go.copySlice(_x._out, ((_x._out.__slice__(_x._outUsed) : Slice<GoUInt8>)));
        _x._out = ((_x._out.__slice__(0, (_x._out != null ? _x._out.cap() : ((0 : GoInt)))) : Slice<GoUInt8>));
        while (_remain < ((_x._out != null ? _x._out.length : ((0 : GoInt))) - _bs)) {
            _x._b.encrypt(_x._cipher, _x._cipher);
            Go.copySlice(((_x._out.__slice__(_remain) : Slice<GoUInt8>)), _x._cipher);
            _remain = _remain + (_bs);
        };
        _x._out = ((_x._out.__slice__(0, _remain) : Slice<GoUInt8>));
        _x._outUsed = ((0 : GoInt));
    }
}
class T_ofb_wrapper {
    @:keep
    public var xorkeyStream : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var _refill : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_ofb;
}
@:keep class T_cbcEncrypter_static_extension {
    @:keep
    public static function setIV( _x:T_cbcEncrypter, _iv:Slice<GoByte>):Void {
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != (_x._iv != null ? _x._iv.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("cipher: incorrect length IV" : GoString))));
        };
        Go.copySlice(_x._iv, _iv);
    }
    @:keep
    public static function cryptBlocks( _x:T_cbcEncrypter, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if (((_src != null ? _src.length : ((0 : GoInt))) % _x._blockSize) != ((0 : GoInt))) {
            throw Go.toInterface(((("crypto/cipher: input not full blocks" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < (_src != null ? _src.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("crypto/cipher: output smaller than input" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        var _iv = _x._iv;
        while ((_src != null ? _src.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _xorBytes(((_dst.__slice__(0, _x._blockSize) : Slice<GoUInt8>)), ((_src.__slice__(0, _x._blockSize) : Slice<GoUInt8>)), _iv);
            _x._b.encrypt(((_dst.__slice__(0, _x._blockSize) : Slice<GoUInt8>)), ((_dst.__slice__(0, _x._blockSize) : Slice<GoUInt8>)));
            _iv = ((_dst.__slice__(0, _x._blockSize) : Slice<GoUInt8>));
            _src = ((_src.__slice__(_x._blockSize) : Slice<GoUInt8>));
            _dst = ((_dst.__slice__(_x._blockSize) : Slice<GoUInt8>));
        };
        Go.copySlice(_x._iv, _iv);
    }
    @:keep
    public static function blockSize( _x:T_cbcEncrypter):GoInt {
        return _x._blockSize;
    }
}
class T_cbcEncrypter_wrapper {
    @:keep
    public var setIV : Slice<GoByte> -> Void = null;
    @:keep
    public var cryptBlocks : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_cbcEncrypter;
}
@:keep class T_cbcDecrypter_static_extension {
    @:keep
    public static function setIV( _x:T_cbcDecrypter, _iv:Slice<GoByte>):Void {
        if ((_iv != null ? _iv.length : ((0 : GoInt))) != (_x._iv != null ? _x._iv.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("cipher: incorrect length IV" : GoString))));
        };
        Go.copySlice(_x._iv, _iv);
    }
    @:keep
    public static function cryptBlocks( _x:T_cbcDecrypter, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if (((_src != null ? _src.length : ((0 : GoInt))) % _x._blockSize) != ((0 : GoInt))) {
            throw Go.toInterface(((("crypto/cipher: input not full blocks" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < (_src != null ? _src.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("crypto/cipher: output smaller than input" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/cipher: invalid buffer overlap" : GoString))));
        };
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        var _end:GoInt = (_src != null ? _src.length : ((0 : GoInt)));
        var _start:GoInt = _end - _x._blockSize;
        var _prev:GoInt = _start - _x._blockSize;
        Go.copySlice(_x._tmp, ((_src.__slice__(_start, _end) : Slice<GoUInt8>)));
        while (_start > ((0 : GoInt))) {
            _x._b.decrypt(((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), ((_src.__slice__(_start, _end) : Slice<GoUInt8>)));
            _xorBytes(((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), ((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), ((_src.__slice__(_prev, _start) : Slice<GoUInt8>)));
            _end = _start;
            _start = _prev;
            _prev = _prev - (_x._blockSize);
        };
        _x._b.decrypt(((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), ((_src.__slice__(_start, _end) : Slice<GoUInt8>)));
        _xorBytes(((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), ((_dst.__slice__(_start, _end) : Slice<GoUInt8>)), _x._iv);
        {
            final __tmp__0 = _x._tmp;
            final __tmp__1 = _x._iv;
            _x._iv = __tmp__0;
            _x._tmp = __tmp__1;
        };
    }
    @:keep
    public static function blockSize( _x:T_cbcDecrypter):GoInt {
        return _x._blockSize;
    }
}
class T_cbcDecrypter_wrapper {
    @:keep
    public var setIV : Slice<GoByte> -> Void = null;
    @:keep
    public var cryptBlocks : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_cbcDecrypter;
}
