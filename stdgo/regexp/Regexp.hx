package stdgo.regexp;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _noRune : Slice<GoInt32> = ((new Slice<GoRune>() : Slice<GoRune>));
var _noNext : Slice<GoUInt32> = ((new Slice<GoUInt32>((("4294967295" : GoUInt32))) : Slice<GoUInt32>));
var _anyRuneNotNL : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((9 : GoInt32)), ((11 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>));
var _anyRune : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>));
var _matchSize : GoArray<GoInt> = ((new GoArray<GoInt>(((128 : GoInt)), ((512 : GoInt)), ((2048 : GoInt)), ((16384 : GoInt)), ((0 : GoInt))) : GoArray<GoInt>));
var _bitStatePool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _onePassPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _arrayNoInts : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 0) ((0 : GoInt))]);
var _matchPool : GoArray<stdgo.sync.Sync.Pool> = new GoArray<stdgo.sync.Sync.Pool>(...[for (i in 0 ... 5) new stdgo.sync.Sync.Pool()]);
var _specialBytes : GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
typedef T_input = StructType & {
    public function _step(_pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; };
    public function _canCheckPrefix():Bool;
    public function _hasPrefix(_re:Regexp):Bool;
    public function _index(_re:Regexp, _pos:GoInt):GoInt;
    public function _context(_pos:GoInt):T_lazyFlag;
};
@:structInit class T_job {
    public var _pc : GoUInt32 = ((0 : GoUInt32));
    public var _arg : Bool = false;
    public var _pos : GoInt = ((0 : GoInt));
    public function new(?_pc:GoUInt32, ?_arg:Bool, ?_pos:GoInt) {
        if (_pc != null) this._pc = _pc;
        if (_arg != null) this._arg = _arg;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_job(_pc, _arg, _pos);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_bitState_static_extension) class T_bitState {
    public var _end : GoInt = ((0 : GoInt));
    public var _cap : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _matchcap : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _jobs : Slice<T_job> = ((null : Slice<T_job>));
    public var _visited : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _inputs : T_inputs = new T_inputs();
    public function new(?_end:GoInt, ?_cap:Slice<GoInt>, ?_matchcap:Slice<GoInt>, ?_jobs:Slice<T_job>, ?_visited:Slice<GoUInt32>, ?_inputs:T_inputs) {
        if (_end != null) this._end = _end;
        if (_cap != null) this._cap = _cap;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_jobs != null) this._jobs = _jobs;
        if (_visited != null) this._visited = _visited;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
}
@:structInit class T_queue {
    public var _sparse : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _dense : Slice<T_entry> = ((null : Slice<T_entry>));
    public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<T_entry>) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_queue(_sparse, _dense);
    }
}
@:structInit class T_entry {
    public var _pc : GoUInt32 = ((0 : GoUInt32));
    public var _t : Ref<T_thread> = null;
    public function new(?_pc:GoUInt32, ?_t:Ref<T_thread>) {
        if (_pc != null) this._pc = _pc;
        if (_t != null) this._t = _t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
}
@:structInit class T_thread {
    public var _inst : Ref<stdgo.regexp.syntax.Syntax.Inst> = null;
    public var _cap : Slice<GoInt> = ((null : Slice<GoInt>));
    public function new(?_inst:Ref<stdgo.regexp.syntax.Syntax.Inst>, ?_cap:Slice<GoInt>) {
        if (_inst != null) this._inst = _inst;
        if (_cap != null) this._cap = _cap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_thread(_inst, _cap);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_machine_static_extension) class T_machine {
    public var _re : Ref<Regexp> = null;
    public var _p : Ref<stdgo.regexp.syntax.Syntax.Prog> = null;
    public var _q0 : T_queue = new T_queue();
    public var _q1 : T_queue = new T_queue();
    public var _pool : Slice<Ref<T_thread>> = ((null : Slice<Ref<T_thread>>));
    public var _matched : Bool = false;
    public var _matchcap : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _inputs : T_inputs = new T_inputs();
    public function new(?_re:Ref<Regexp>, ?_p:Ref<stdgo.regexp.syntax.Syntax.Prog>, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Slice<Ref<T_thread>>, ?_matched:Bool, ?_matchcap:Slice<GoInt>, ?_inputs:T_inputs) {
        if (_re != null) this._re = _re;
        if (_p != null) this._p = _p;
        if (_q0 != null) this._q0 = _q0;
        if (_q1 != null) this._q1 = _q1;
        if (_pool != null) this._pool = _pool;
        if (_matched != null) this._matched = _matched;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputs_static_extension) class T_inputs {
    public var _bytes : T_inputBytes = new T_inputBytes();
    public var _string : T_inputString = new T_inputString();
    public var _reader : T_inputReader = new T_inputReader();
    public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) {
        if (_bytes != null) this._bytes = _bytes;
        if (_string != null) this._string = _string;
        if (_reader != null) this._reader = _reader;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
}
@:structInit class T_onePassMachine {
    public var _inputs : T_inputs = new T_inputs();
    public var _matchcap : Slice<GoInt> = ((null : Slice<GoInt>));
    public function new(?_inputs:T_inputs, ?_matchcap:Slice<GoInt>) {
        if (_inputs != null) this._inputs = _inputs;
        if (_matchcap != null) this._matchcap = _matchcap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
}
@:structInit class T_onePassProg {
    public var inst : Slice<T_onePassInst> = ((null : Slice<T_onePassInst>));
    public var start : GoInt = ((0 : GoInt));
    public var numCap : GoInt = ((0 : GoInt));
    public function new(?inst:Slice<T_onePassInst>, ?start:GoInt, ?numCap:GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassProg(inst, start, numCap);
    }
}
@:structInit class T_onePassInst {
    @:embedded
    public var inst : stdgo.regexp.syntax.Syntax.Inst = new stdgo.regexp.syntax.Syntax.Inst();
    public var next : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public function new(?inst:stdgo.regexp.syntax.Syntax.Inst, ?next:Slice<GoUInt32>) {
        if (inst != null) this.inst = inst;
        if (next != null) this.next = next;
    }
    public function matchEmptyWidth(_before:GoInt32, _after:GoInt32):Bool return inst.matchEmptyWidth(_before, _after);
    public function matchRune(_r:GoInt32):Bool return inst.matchRune(_r);
    public function matchRunePos(_r:GoInt32):GoInt return inst.matchRunePos(_r);
    public function toString():GoString return inst.toString();
    public function _op():stdgo.regexp.syntax.Syntax.InstOp return inst._op();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_queueOnePass_static_extension) class T_queueOnePass {
    public var _sparse : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _dense : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _size : GoUInt32 = ((0 : GoUInt32));
    public var _nextIndex : GoUInt32 = ((0 : GoUInt32));
    public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<GoUInt32>, ?_size:GoUInt32, ?_nextIndex:GoUInt32) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
        if (_size != null) this._size = _size;
        if (_nextIndex != null) this._nextIndex = _nextIndex;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.Regexp_static_extension) class Regexp {
    public var _expr : GoString = (("" : GoString));
    public var _prog : Ref<stdgo.regexp.syntax.Syntax.Prog> = null;
    public var _onepass : Ref<T_onePassProg> = null;
    public var _numSubexp : GoInt = ((0 : GoInt));
    public var _maxBitStateLen : GoInt = ((0 : GoInt));
    public var _subexpNames : Slice<GoString> = ((null : Slice<GoString>));
    public var _prefix : GoString = (("" : GoString));
    public var _prefixBytes : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _prefixRune : GoInt32 = ((0 : GoInt32));
    public var _prefixEnd : GoUInt32 = ((0 : GoUInt32));
    public var _mpool : GoInt = ((0 : GoInt));
    public var _matchcap : GoInt = ((0 : GoInt));
    public var _prefixComplete : Bool = false;
    public var _cond : stdgo.regexp.syntax.Syntax.EmptyOp = new stdgo.regexp.syntax.Syntax.EmptyOp();
    public var _minInputLen : GoInt = ((0 : GoInt));
    public var _longest : Bool = false;
    public function new(?_expr:GoString, ?_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>, ?_onepass:Ref<T_onePassProg>, ?_numSubexp:GoInt, ?_maxBitStateLen:GoInt, ?_subexpNames:Slice<GoString>, ?_prefix:GoString, ?_prefixBytes:Slice<GoUInt8>, ?_prefixRune:GoInt32, ?_prefixEnd:GoUInt32, ?_mpool:GoInt, ?_matchcap:GoInt, ?_prefixComplete:Bool, ?_cond:stdgo.regexp.syntax.Syntax.EmptyOp, ?_minInputLen:GoInt, ?_longest:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_prog != null) this._prog = _prog;
        if (_onepass != null) this._onepass = _onepass;
        if (_numSubexp != null) this._numSubexp = _numSubexp;
        if (_maxBitStateLen != null) this._maxBitStateLen = _maxBitStateLen;
        if (_subexpNames != null) this._subexpNames = _subexpNames;
        if (_prefix != null) this._prefix = _prefix;
        if (_prefixBytes != null) this._prefixBytes = _prefixBytes;
        if (_prefixRune != null) this._prefixRune = _prefixRune;
        if (_prefixEnd != null) this._prefixEnd = _prefixEnd;
        if (_mpool != null) this._mpool = _mpool;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_prefixComplete != null) this._prefixComplete = _prefixComplete;
        if (_cond != null) this._cond = _cond;
        if (_minInputLen != null) this._minInputLen = _minInputLen;
        if (_longest != null) this._longest = _longest;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Regexp(
_expr,
_prog,
_onepass,
_numSubexp,
_maxBitStateLen,
_subexpNames,
_prefix,
_prefixBytes,
_prefixRune,
_prefixEnd,
_mpool,
_matchcap,
_prefixComplete,
_cond,
_minInputLen,
_longest);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputString_static_extension) class T_inputString {
    public var _str : GoString = (("" : GoString));
    public function new(?_str:GoString) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputString(_str);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputBytes_static_extension) class T_inputBytes {
    public var _str : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_str:Slice<GoUInt8>) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputBytes(_str);
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputReader_static_extension) class T_inputReader {
    public var _r : stdgo.io.Io.RuneReader = ((null : stdgo.io.Io.RuneReader));
    public var _atEOT : Bool = false;
    public var _pos : GoInt = ((0 : GoInt));
    public function new(?_r:stdgo.io.Io.RuneReader, ?_atEOT:Bool, ?_pos:GoInt) {
        if (_r != null) this._r = _r;
        if (_atEOT != null) this._atEOT = _atEOT;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
    }
}
@:named @:using(stdgo.regexp.Regexp.T_lazyFlag_static_extension) typedef T_lazyFlag = GoUInt64;
@:named @:using(stdgo.regexp.Regexp.T_runeSlice_static_extension) typedef T_runeSlice = Slice<GoInt32>;
function _newBitState():T_bitState {
        var __tmp__ = try {
            { value : ((_bitStatePool.get().value : T_bitState)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _b = new T_bitState();
        };
        return _b;
    }
function _freeBitState(_b:T_bitState):Void {
        _b._inputs._clear();
        _bitStatePool.put(Go.toInterface(_b));
    }
function _maxBitStateLen(_prog:stdgo.regexp.syntax.Syntax.Prog):GoInt {
        if (!_shouldBacktrack(_prog)) {
            return ((0 : GoInt));
        };
        return ((262144 : GoInt)) / (_prog.inst != null ? _prog.inst.length : ((0 : GoInt)));
    }
function _shouldBacktrack(_prog:stdgo.regexp.syntax.Syntax.Prog):Bool {
        return (_prog.inst != null ? _prog.inst.length : ((0 : GoInt))) <= ((500 : GoInt));
    }
function _newLazyFlag(_r1:GoRune, _r2:GoRune):T_lazyFlag {
        return ((((((_r1 : GoUInt64)) << ((32 : GoUnTypedInt))) | ((((_r2 : GoUInt32)) : GoUInt64))) : T_lazyFlag));
    }
function _newOnePassMachine():T_onePassMachine {
        var __tmp__ = try {
            { value : ((_onePassPool.get().value : T_onePassMachine)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _m = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _m = new T_onePassMachine();
        };
        return _m;
    }
function _freeOnePassMachine(_m:T_onePassMachine):Void {
        _m._inputs._clear();
        _onePassPool.put(Go.toInterface(_m));
    }
function _onePassPrefix(_p:stdgo.regexp.syntax.Syntax.Prog):{ var _0 : GoString; var _1 : Bool; var _2 : GoUInt32; } {
        var _prefix:GoString = (("" : GoString)), _complete:Bool = false, _pc:GoUInt32 = ((0 : GoUInt32));
        var _i = (_p.inst != null ? _p.inst[_p.start] : new stdgo.regexp.syntax.Syntax.Inst());
        if ((_i.op != ((3 : GoUInt8))) || (((((_i.arg : stdgo.regexp.syntax.Syntax.EmptyOp))) & ((4 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : ((("" : GoString))), _1 : _i.op == ((4 : GoUInt8)), _2 : ((_p.start : GoUInt32)) };
        };
        _pc = _i.out;
        _i = (_p.inst != null ? _p.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst());
        while (_i.op == ((6 : GoUInt8))) {
            _pc = _i.out;
            _i = (_p.inst != null ? _p.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst());
        };
        if ((_iop(_i) != ((7 : GoUInt8))) || ((_i.rune != null ? _i.rune.length : ((0 : GoInt))) != ((1 : GoInt)))) {
            return { _0 : ((("" : GoString))), _1 : _i.op == ((4 : GoUInt8)), _2 : ((_p.start : GoUInt32)) };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        while ((((_iop(_i) == ((7 : GoUInt8))) && ((_i.rune != null ? _i.rune.length : ((0 : GoInt))) == ((1 : GoInt)))) && ((((_i.arg : stdgo.regexp.syntax.Syntax.Flags)) & ((1 : GoUInt16))) == ((0 : GoUInt16)))) && ((_i.rune != null ? _i.rune[((0 : GoInt))] : ((0 : GoInt32))) != ((65533 : GoInt32)))) {
            _buf.writeRune((_i.rune != null ? _i.rune[((0 : GoInt))] : ((0 : GoInt32))));
            {
                final __tmp__0 = _i.out;
                final __tmp__1 = (_p.inst != null ? _p.inst[_i.out] : new stdgo.regexp.syntax.Syntax.Inst());
                _pc = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (((_i.op == ((3 : GoUInt8))) && ((((_i.arg : stdgo.regexp.syntax.Syntax.EmptyOp)) & ((8 : GoUInt8))) != ((0 : GoUInt8)))) && ((_p.inst != null ? _p.inst[_i.out] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((4 : GoUInt8)))) {
            _complete = true;
        };
        return { _0 : ((_buf.toString() : GoString)), _1 : _complete, _2 : _pc };
    }
function _onePassNext(_i:T_onePassInst, _r:GoRune):GoUInt32 {
        var _next:GoInt = _i.matchRunePos(_r);
        if (_next >= ((0 : GoInt))) {
            return (_i.next != null ? _i.next[_next] : ((0 : GoUInt32)));
        };
        if (_i.op == ((1 : GoUInt8))) {
            return _i.out;
        };
        return ((0 : GoUInt32));
    }
function _iop(_i:stdgo.regexp.syntax.Syntax.Inst):stdgo.regexp.syntax.Syntax.InstOp {
        var _op:stdgo.regexp.syntax.Syntax.InstOp = _i.op;
        if (_op == ((8 : GoUInt8)) || _op == ((9 : GoUInt8)) || _op == ((10 : GoUInt8))) {
            _op = ((7 : GoUInt8));
        };
        return _op;
    }
function _newQueue(_size:GoInt):T_queueOnePass {
        var _q:T_queueOnePass = null;
        return (({ _sparse : new Slice<GoUInt32>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt32))]), _dense : new Slice<GoUInt32>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt32))]), _size : 0, _nextIndex : 0 } : T_queueOnePass));
    }
function _mergeRuneSets(_leftRunes:Slice<GoRune>, _rightRunes:Slice<GoRune>, _leftPC:GoUInt32, _rightPC:GoUInt32):{ var _0 : Slice<GoRune>; var _1 : Slice<GoUInt32>; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _leftLen:GoInt = (_leftRunes != null ? _leftRunes.length : ((0 : GoInt)));
        var _rightLen:GoInt = (_rightRunes != null ? _rightRunes.length : ((0 : GoInt)));
        try {
            if (((_leftLen & ((1 : GoInt))) != ((0 : GoInt))) || ((_rightLen & ((1 : GoInt))) != ((0 : GoInt)))) {
                throw Go.toInterface(((("mergeRuneSets odd length []rune" : GoString))));
            };
            var _lx:GoInt = ((0 : GoInt)), _rx:GoInt = ((0 : GoInt));
            var _merged = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
            var _next = new Slice<GoUInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
            var _ok:Bool = true;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (!_ok) {
                        _merged = ((null : Slice<GoInt32>));
                        _next = ((null : Slice<GoUInt32>));
                    };
                };
                a();
            });
            var _ix:GoInt = ((-1 : GoInt));
            var _extend = function(_newLow:Pointer<GoInt>, _newArray:Slice<GoRune>, _pc:GoUInt32):Bool {
                if ((_ix > ((0 : GoInt))) && (((_newArray) != null ? (_newArray)[_newLow.value] : ((0 : GoInt32))) <= (_merged != null ? _merged[_ix] : ((0 : GoInt32))))) {
                    return false;
                };
                _merged = (_merged != null ? _merged.__append__(((_newArray) != null ? (_newArray)[_newLow.value] : ((0 : GoInt32))), ((_newArray) != null ? (_newArray)[_newLow.value + ((1 : GoInt))] : ((0 : GoInt32)))) : new Slice<GoInt32>(((_newArray) != null ? (_newArray)[_newLow.value] : ((0 : GoInt32))), ((_newArray) != null ? (_newArray)[_newLow.value + ((1 : GoInt))] : ((0 : GoInt32)))));
                _newLow.value = _newLow.value + (((2 : GoInt)));
                _ix = _ix + (((2 : GoInt)));
                _next = (_next != null ? _next.__append__(_pc) : new Slice<GoUInt32>(_pc));
                return true;
            };
            while ((_lx < _leftLen) || (_rx < _rightLen)) {
                if (_rx >= _rightLen) {
                    _ok = _extend(Go.pointer(_lx), _leftRunes, _leftPC);
                } else if (_lx >= _leftLen) {
                    _ok = _extend(Go.pointer(_rx), _rightRunes, _rightPC);
                } else if (((_rightRunes) != null ? (_rightRunes)[_rx] : ((0 : GoInt32))) < ((_leftRunes) != null ? (_leftRunes)[_lx] : ((0 : GoInt32)))) {
                    _ok = _extend(Go.pointer(_rx), _rightRunes, _rightPC);
                } else {
                    _ok = _extend(Go.pointer(_lx), _leftRunes, _leftPC);
                };
                if (!_ok) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _noRune, _1 : _noNext };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _merged, _1 : _next };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : Slice<GoInt32>)), _1 : ((null : Slice<GoUInt32>)) };
            };
        };
    }
function _cleanupOnePass(_prog:T_onePassProg, _original:stdgo.regexp.syntax.Syntax.Prog):Void {
        for (_ix => _instOriginal in _original.inst) {
            if (_instOriginal.op == ((0 : GoUInt8)) || _instOriginal.op == ((1 : GoUInt8)) || _instOriginal.op == ((7 : GoUInt8))) {} else if (_instOriginal.op == ((2 : GoUInt8)) || _instOriginal.op == ((3 : GoUInt8)) || _instOriginal.op == ((6 : GoUInt8)) || _instOriginal.op == ((4 : GoUInt8)) || _instOriginal.op == ((5 : GoUInt8))) {
                (_prog.inst != null ? _prog.inst[_ix] : new T_onePassInst()).next = ((null : Slice<GoUInt32>));
            } else if (_instOriginal.op == ((8 : GoUInt8)) || _instOriginal.op == ((9 : GoUInt8)) || _instOriginal.op == ((10 : GoUInt8))) {
                (_prog.inst != null ? _prog.inst[_ix] : new T_onePassInst()).next = ((null : Slice<GoUInt32>));
                if (_prog.inst != null) _prog.inst[_ix] = (({ inst : (_instOriginal == null ? null : _instOriginal.__copy__()), next : ((null : Slice<GoUInt32>)) } : T_onePassInst));
            };
        };
    }
function _onePassCopy(_prog:stdgo.regexp.syntax.Syntax.Prog):T_onePassProg {
        var _p = (({ start : _prog.start, numCap : _prog.numCap, inst : new Slice<T_onePassInst>(...[for (i in 0 ... (((_prog.inst != null ? _prog.inst.length : ((0 : GoInt))) : GoInt)).toBasic()) new T_onePassInst()]) } : T_onePassProg));
        for (_i => _inst in _prog.inst) {
            if (_p.inst != null) _p.inst[_i] = (({ inst : (_inst == null ? null : _inst.__copy__()), next : ((null : Slice<GoUInt32>)) } : T_onePassInst));
        };
        for (_pc => _ in _p.inst) {
            if ((_p.inst != null ? _p.inst[_pc] : new T_onePassInst()).inst.op == ((0 : GoUInt8)) || (_p.inst != null ? _p.inst[_pc] : new T_onePassInst()).inst.op == ((1 : GoUInt8))) {
                var _p_A_Other = Go.pointer((_p.inst != null ? _p.inst[_pc] : new T_onePassInst()).inst.out);
                var _p_A_Alt = Go.pointer((_p.inst != null ? _p.inst[_pc] : new T_onePassInst()).inst.arg);
                var _instAlt:T_onePassInst = ((_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()) == null ? null : (_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()).__copy__());
                if (!((_instAlt.inst.op == ((0 : GoUInt8))) || (_instAlt.inst.op == ((1 : GoUInt8))))) {
                    {
                        final __tmp__0 = _p_A_Other;
                        final __tmp__1 = _p_A_Alt;
                        _p_A_Alt = __tmp__0;
                        _p_A_Other = __tmp__1;
                    };
                    _instAlt = ((_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()) == null ? null : (_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()).__copy__());
                    if (!((_instAlt.inst.op == ((0 : GoUInt8))) || (_instAlt.inst.op == ((1 : GoUInt8))))) {
                        continue;
                    };
                };
                var _instOther:T_onePassInst = ((_p.inst != null ? _p.inst[_p_A_Other.value] : new T_onePassInst()) == null ? null : (_p.inst != null ? _p.inst[_p_A_Other.value] : new T_onePassInst()).__copy__());
                if ((_instOther.inst.op == ((0 : GoUInt8))) || (_instOther.inst.op == ((1 : GoUInt8)))) {
                    continue;
                };
                var _p_B_Alt = Go.pointer((_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()).inst.out);
                var _p_B_Other = Go.pointer((_p.inst != null ? _p.inst[_p_A_Alt.value] : new T_onePassInst()).inst.arg);
                var _patch:Bool = false;
                if (_instAlt.inst.out == ((_pc : GoUInt32))) {
                    _patch = true;
                } else if (_instAlt.inst.arg == ((_pc : GoUInt32))) {
                    _patch = true;
                    {
                        final __tmp__0 = _p_B_Other;
                        final __tmp__1 = _p_B_Alt;
                        _p_B_Alt = __tmp__0;
                        _p_B_Other = __tmp__1;
                    };
                };
                if (_patch) {
                    _p_B_Alt.value = _p_A_Other.value;
                };
                if (_p_A_Other.value == _p_B_Alt.value) {
                    _p_A_Alt.value = _p_B_Other.value;
                };
            };
        };
        return _p;
    }
function _makeOnePass(_p:T_onePassProg):T_onePassProg {
        if ((_p.inst != null ? _p.inst.length : ((0 : GoInt))) >= ((1000 : GoInt))) {
            return null;
        };
        var _instQueue:Ref<T_queueOnePass> = _newQueue((_p.inst != null ? _p.inst.length : ((0 : GoInt)))), _visitQueue:Ref<T_queueOnePass> = _newQueue((_p.inst != null ? _p.inst.length : ((0 : GoInt)))), _check:(GoUInt32, Slice<Bool>) -> Bool = null, _onePassRunes:Slice<Slice<GoInt32>> = new Slice<Slice<GoInt32>>(...[for (i in 0 ... (((_p.inst != null ? _p.inst.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Slice<GoInt32>))]);
        _check = function(_pc:GoUInt32, _m:Slice<Bool>):Bool {
            var _ok:Bool = false;
            _ok = true;
            var _inst = (_p.inst != null ? _p.inst[_pc] : new T_onePassInst());
            if (_visitQueue._contains(_pc)) {
                return _ok;
            };
            _visitQueue._insert(_pc);
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_inst.op == ((0 : GoUInt8)) || _inst.op == ((1 : GoUInt8))) {
                        _ok = _check(_inst.out, _m) && _check(_inst.arg, _m);
                        var _matchOut:Bool = (_m != null ? _m[_inst.out] : false);
                        var _matchArg:Bool = (_m != null ? _m[_inst.arg] : false);
                        if (_matchOut && _matchArg) {
                            _ok = false;
                            break;
                        };
                        if (_matchArg) {
                            {
                                final __tmp__0 = _inst.arg;
                                final __tmp__1 = _inst.out;
                                _inst.out = __tmp__0;
                                _inst.arg = __tmp__1;
                            };
                            {
                                final __tmp__0 = _matchArg;
                                final __tmp__1 = _matchOut;
                                _matchOut = __tmp__0;
                                _matchArg = __tmp__1;
                            };
                        };
                        if (_matchOut) {
                            if (_m != null) _m[_pc] = true;
                            _inst.op = ((1 : GoUInt8));
                        };
                        {
                            var __tmp__ = _mergeRuneSets((_onePassRunes != null ? _onePassRunes[_inst.out] : ((null : Slice<GoInt32>))), (_onePassRunes != null ? _onePassRunes[_inst.arg] : ((null : Slice<GoInt32>))), _inst.out, _inst.arg);
                            if (_onePassRunes != null) _onePassRunes[_pc] = __tmp__._0;
                            _inst.next = __tmp__._1;
                        };
                        if (((_inst.next != null ? _inst.next.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_inst.next != null ? _inst.next[((0 : GoInt))] : ((0 : GoUInt32))) == (("4294967295" : GoUInt32)))) {
                            _ok = false;
                            break;
                        };
                        break;
                    } else if (_inst.op == ((2 : GoUInt8)) || _inst.op == ((6 : GoUInt8))) {
                        _ok = _check(_inst.out, _m);
                        if (_m != null) _m[_pc] = (_m != null ? _m[_inst.out] : false);
                        if (_onePassRunes != null) _onePassRunes[_pc] = (((new Slice<GoRune>() : Slice<GoRune>)) != null ? ((new Slice<GoRune>() : Slice<GoRune>)).__append__(...(_onePassRunes != null ? _onePassRunes[_inst.out] : ((null : Slice<GoInt32>))).__toArray__()) : new Slice<GoInt32>(...(_onePassRunes != null ? _onePassRunes[_inst.out] : ((null : Slice<GoInt32>))).__toArray__()));
                        _inst.next = new Slice<GoUInt32>(...[for (i in 0 ... (((((_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))) != null ? (_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))).length : ((0 : GoInt))) / ((2 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        for (_i => _ in _inst.next) {
                            if (_inst.next != null) _inst.next[_i] = _inst.out;
                        };
                        break;
                    } else if (_inst.op == ((3 : GoUInt8))) {
                        _ok = _check(_inst.out, _m);
                        if (_m != null) _m[_pc] = (_m != null ? _m[_inst.out] : false);
                        if (_onePassRunes != null) _onePassRunes[_pc] = (((new Slice<GoRune>() : Slice<GoRune>)) != null ? ((new Slice<GoRune>() : Slice<GoRune>)).__append__(...(_onePassRunes != null ? _onePassRunes[_inst.out] : ((null : Slice<GoInt32>))).__toArray__()) : new Slice<GoInt32>(...(_onePassRunes != null ? _onePassRunes[_inst.out] : ((null : Slice<GoInt32>))).__toArray__()));
                        _inst.next = new Slice<GoUInt32>(...[for (i in 0 ... (((((_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))) != null ? (_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))).length : ((0 : GoInt))) / ((2 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        for (_i => _ in _inst.next) {
                            if (_inst.next != null) _inst.next[_i] = _inst.out;
                        };
                        break;
                    } else if (_inst.op == ((4 : GoUInt8)) || _inst.op == ((5 : GoUInt8))) {
                        if (_m != null) _m[_pc] = _inst.op == ((4 : GoUInt8));
                        break;
                    } else if (_inst.op == ((7 : GoUInt8))) {
                        if (_m != null) _m[_pc] = false;
                        if ((_inst.next != null ? _inst.next.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue._insert(_inst.out);
                        if ((_inst.rune != null ? _inst.rune.length : ((0 : GoInt))) == ((0 : GoInt))) {
                            if (_onePassRunes != null) _onePassRunes[_pc] = ((new Slice<GoRune>() : Slice<GoRune>));
                            _inst.next = ((new Slice<GoUInt32>(_inst.out) : Slice<GoUInt32>));
                            break;
                        };
                        var _runes = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
                        if (((_inst.rune != null ? _inst.rune.length : ((0 : GoInt))) == ((1 : GoInt))) && ((((_inst.arg : stdgo.regexp.syntax.Syntax.Flags)) & ((1 : GoUInt16))) != ((0 : GoUInt16)))) {
                            var _r0:GoInt32 = (_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32)));
                            _runes = (_runes != null ? _runes.__append__(_r0, _r0) : new Slice<GoInt32>(_r0, _r0));
                            {
                                var _r1:GoInt32 = stdgo.unicode.Unicode.simpleFold(_r0);
                                Go.cfor(_r1 != _r0, _r1 = stdgo.unicode.Unicode.simpleFold(_r1), {
                                    _runes = (_runes != null ? _runes.__append__(_r1, _r1) : new Slice<GoInt32>(_r1, _r1));
                                });
                            };
                            stdgo.sort.Sort.sort(Go.wrapper(((_runes : T_runeSlice))));
                        } else {
                            _runes = (_runes != null ? _runes.__append__(..._inst.rune.__toArray__()) : new Slice<GoInt32>(..._inst.rune.__toArray__()));
                        };
                        if (_onePassRunes != null) _onePassRunes[_pc] = _runes;
                        _inst.next = new Slice<GoUInt32>(...[for (i in 0 ... (((((_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))) != null ? (_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))).length : ((0 : GoInt))) / ((2 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        for (_i => _ in _inst.next) {
                            if (_inst.next != null) _inst.next[_i] = _inst.out;
                        };
                        _inst.op = ((7 : GoUInt8));
                        break;
                    } else if (_inst.op == ((8 : GoUInt8))) {
                        if (_m != null) _m[_pc] = false;
                        if ((_inst.next != null ? _inst.next.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue._insert(_inst.out);
                        var _runes = ((new Slice<GoRune>() : Slice<GoRune>));
                        if ((((_inst.arg : stdgo.regexp.syntax.Syntax.Flags)) & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                            var _r0:GoInt32 = (_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32)));
                            _runes = (_runes != null ? _runes.__append__(_r0, _r0) : new Slice<GoInt32>(_r0, _r0));
                            {
                                var _r1:GoInt32 = stdgo.unicode.Unicode.simpleFold(_r0);
                                Go.cfor(_r1 != _r0, _r1 = stdgo.unicode.Unicode.simpleFold(_r1), {
                                    _runes = (_runes != null ? _runes.__append__(_r1, _r1) : new Slice<GoInt32>(_r1, _r1));
                                });
                            };
                            stdgo.sort.Sort.sort(Go.wrapper(((_runes : T_runeSlice))));
                        } else {
                            _runes = (_runes != null ? _runes.__append__((_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32))), (_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32)))) : new Slice<GoInt32>((_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32))), (_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32)))));
                        };
                        if (_onePassRunes != null) _onePassRunes[_pc] = _runes;
                        _inst.next = new Slice<GoUInt32>(...[for (i in 0 ... (((((_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))) != null ? (_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))).length : ((0 : GoInt))) / ((2 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        for (_i => _ in _inst.next) {
                            if (_inst.next != null) _inst.next[_i] = _inst.out;
                        };
                        _inst.op = ((7 : GoUInt8));
                        break;
                    } else if (_inst.op == ((9 : GoUInt8))) {
                        if (_m != null) _m[_pc] = false;
                        if ((_inst.next != null ? _inst.next.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue._insert(_inst.out);
                        if (_onePassRunes != null) _onePassRunes[_pc] = (((new Slice<GoRune>() : Slice<GoRune>)) != null ? ((new Slice<GoRune>() : Slice<GoRune>)).__append__(..._anyRune.__toArray__()) : new Slice<GoInt32>(..._anyRune.__toArray__()));
                        _inst.next = ((new Slice<GoUInt32>(_inst.out) : Slice<GoUInt32>));
                        break;
                    } else if (_inst.op == ((10 : GoUInt8))) {
                        if (_m != null) _m[_pc] = false;
                        if ((_inst.next != null ? _inst.next.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue._insert(_inst.out);
                        if (_onePassRunes != null) _onePassRunes[_pc] = (((new Slice<GoRune>() : Slice<GoRune>)) != null ? ((new Slice<GoRune>() : Slice<GoRune>)).__append__(..._anyRuneNotNL.__toArray__()) : new Slice<GoInt32>(..._anyRuneNotNL.__toArray__()));
                        _inst.next = new Slice<GoUInt32>(...[for (i in 0 ... (((((_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))) != null ? (_onePassRunes != null ? _onePassRunes[_pc] : ((null : Slice<GoInt32>))).length : ((0 : GoInt))) / ((2 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        for (_i => _ in _inst.next) {
                            if (_inst.next != null) _inst.next[_i] = _inst.out;
                        };
                        break;
                    };
                    break;
                };
            };
            return _ok;
        };
        _instQueue._clear();
        _instQueue._insert(((_p.start : GoUInt32)));
        var _m = new Slice<Bool>(...[for (i in 0 ... (((_p.inst != null ? _p.inst.length : ((0 : GoInt))) : GoInt)).toBasic()) false]);
        while (!_instQueue._empty()) {
            _visitQueue._clear();
            var _pc:GoUInt32 = _instQueue._next();
            if (!_check(_pc, _m)) {
                _p = null;
                break;
            };
        };
        if (_p != null) {
            for (_i => _ in _p.inst) {
                (_p.inst != null ? _p.inst[_i] : new T_onePassInst()).inst.rune = (_onePassRunes != null ? _onePassRunes[_i] : ((null : Slice<GoInt32>)));
            };
        };
        return _p;
    }
function _compileOnePass(_prog:stdgo.regexp.syntax.Syntax.Prog):T_onePassProg {
        var _p:T_onePassProg = null;
        if (_prog.start == ((0 : GoInt))) {
            return null;
        };
        if (((_prog.inst != null ? _prog.inst[_prog.start] : new stdgo.regexp.syntax.Syntax.Inst()).op != ((3 : GoUInt8))) || (((((_prog.inst != null ? _prog.inst[_prog.start] : new stdgo.regexp.syntax.Syntax.Inst()).arg : stdgo.regexp.syntax.Syntax.EmptyOp)) & ((4 : GoUInt8))) != ((4 : GoUInt8)))) {
            return null;
        };
        for (_0 => _inst in _prog.inst) {
            var _opOut:stdgo.regexp.syntax.Syntax.InstOp = (_prog.inst != null ? _prog.inst[_inst.out] : new stdgo.regexp.syntax.Syntax.Inst()).op;
            if (_inst.op == ((0 : GoUInt8)) || _inst.op == ((1 : GoUInt8))) {
                if ((_opOut == ((4 : GoUInt8))) || ((_prog.inst != null ? _prog.inst[_inst.arg] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((4 : GoUInt8)))) {
                    return null;
                };
            } else if (_inst.op == ((3 : GoUInt8))) {
                if (_opOut == ((4 : GoUInt8))) {
                    if ((((_inst.arg : stdgo.regexp.syntax.Syntax.EmptyOp)) & ((8 : GoUInt8))) == ((8 : GoUInt8))) {
                        continue;
                    };
                    return null;
                };
            };
        };
        _p = _onePassCopy(_prog);
        _p = _makeOnePass(_p);
        if (_p != null) {
            _cleanupOnePass(_p, _prog);
        };
        return _p;
    }
function compile(_expr:GoString):{ var _0 : Regexp; var _1 : Error; } {
        return _compile(_expr, ((212 : GoUInt16)), false);
    }
function compilePOSIX(_expr:GoString):{ var _0 : Regexp; var _1 : Error; } {
        return _compile(_expr, ((0 : GoUInt16)), true);
    }
function _compile(_expr:GoString, _mode:stdgo.regexp.syntax.Syntax.Flags, _longest:Bool):{ var _0 : Regexp; var _1 : Error; } {
        var __tmp__ = stdgo.regexp.syntax.Syntax.parse(_expr, _mode), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _maxCap:GoInt = _re.maxCap();
        var _capNames = _re.capNames();
        _re = _re.simplify();
        var __tmp__ = stdgo.regexp.syntax.Syntax.compile(_re), _prog:Ref<stdgo.regexp.syntax.Syntax.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _matchcap:GoInt = _prog.numCap;
        if (_matchcap < ((2 : GoInt))) {
            _matchcap = ((2 : GoInt));
        };
        var _regexp = (({ _expr : _expr, _prog : _prog, _onepass : _compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : _prog.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : _minInputLen(_re), _maxBitStateLen : 0, _prefix : "", _prefixBytes : ((null : Slice<GoUInt8>)), _prefixRune : 0, _prefixEnd : 0, _mpool : 0, _prefixComplete : false } : Regexp));
        if (_regexp._onepass == null) {
            {
                var __tmp__ = _prog.prefix();
                _regexp._prefix = __tmp__._0;
                _regexp._prefixComplete = __tmp__._1;
            };
            _regexp._maxBitStateLen = _maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = _onePassPrefix(_prog);
                _regexp._prefix = __tmp__._0;
                _regexp._prefixComplete = __tmp__._1;
                _regexp._prefixEnd = __tmp__._2;
            };
        };
        if (_regexp._prefix != ((("" : GoString)))) {
            _regexp._prefixBytes = ((_regexp._prefix : Slice<GoByte>));
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_regexp._prefix);
                _regexp._prefixRune = __tmp__._0;
            };
        };
        var _n:GoInt = (_prog.inst != null ? _prog.inst.length : ((0 : GoInt)));
        var _i:GoInt = ((0 : GoInt));
        while (((_matchSize != null ? _matchSize[_i] : ((0 : GoInt))) != ((0 : GoInt))) && ((_matchSize != null ? _matchSize[_i] : ((0 : GoInt))) < _n)) {
            _i++;
        };
        _regexp._mpool = _i;
        return { _0 : _regexp, _1 : ((null : stdgo.Error)) };
    }
function _minInputLen(_re:stdgo.regexp.syntax.Syntax.Regexp):GoInt {
        if (_re.op == ((6 : GoUInt8)) || _re.op == ((5 : GoUInt8)) || _re.op == ((4 : GoUInt8))) {
            return ((1 : GoInt));
        } else if (_re.op == ((3 : GoUInt8))) {
            var _l:GoInt = ((0 : GoInt));
            for (_0 => _r in _re.rune) {
                if (_r == ((65533 : GoInt32))) {
                    _l++;
                } else {
                    _l = _l + (stdgo.unicode.utf8.Utf8.runeLen(_r));
                };
            };
            return _l;
        } else if (_re.op == ((13 : GoUInt8)) || _re.op == ((15 : GoUInt8))) {
            return _minInputLen((_re.sub != null ? _re.sub[((0 : GoInt))] : null));
        } else if (_re.op == ((17 : GoUInt8))) {
            return _re.min * _minInputLen((_re.sub != null ? _re.sub[((0 : GoInt))] : null));
        } else if (_re.op == ((18 : GoUInt8))) {
            var _l:GoInt = ((0 : GoInt));
            for (_1 => _sub in _re.sub) {
                _l = _l + (_minInputLen(_sub));
            };
            return _l;
        } else if (_re.op == ((19 : GoUInt8))) {
            var _l:GoInt = _minInputLen((_re.sub != null ? _re.sub[((0 : GoInt))] : null));
            var _lnext:GoInt = ((0 : GoInt));
            for (_2 => _sub in ((_re.sub.__slice__(((1 : GoInt))) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>))) {
                _lnext = _minInputLen(_sub);
                if (_lnext < _l) {
                    _l = _lnext;
                };
            };
            return _l;
        };
    }
function mustCompile(_str:GoString):Regexp {
        var __tmp__ = compile(_str), _regexp:Ref<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface((((("regexp: Compile(" : GoString)) + _quote(_str)) + (("): " : GoString))) + _err.error());
        };
        return _regexp;
    }
function mustCompilePOSIX(_str:GoString):Regexp {
        var __tmp__ = compilePOSIX(_str), _regexp:Ref<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface((((("regexp: CompilePOSIX(" : GoString)) + _quote(_str)) + (("): " : GoString))) + _err.error());
        };
        return _regexp;
    }
function _quote(_s:GoString):GoString {
        if (stdgo.strconv.Strconv.canBackquote(_s)) {
            return (((("`" : GoString))) + _s) + ((("`" : GoString)));
        };
        return stdgo.strconv.Strconv.quote(_s);
    }
function matchReader(_pattern:GoString, _r:stdgo.io.Io.RuneReader):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Ref<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.matchReader(_r), _1 : ((null : stdgo.Error)) };
    }
function matchString(_pattern:GoString, _s:GoString):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Ref<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.matchString(_s), _1 : ((null : stdgo.Error)) };
    }
function match(_pattern:GoString, _b:Slice<GoByte>):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Ref<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.match(_b), _1 : ((null : stdgo.Error)) };
    }
function _special(_b:GoByte):Bool {
        return (_b < ((128 : GoUInt8))) && (((_specialBytes != null ? _specialBytes[_b % ((16 : GoUInt8))] : ((0 : GoUInt8))) & (((1 : GoUInt8)) << (_b / ((16 : GoUInt8))))) != ((0 : GoUInt8)));
    }
function quoteMeta(_s:GoString):GoString {
        var _i:GoInt = ((0 : GoInt));
        {
            _i = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                if (_special((_s != null ? _s[_i] : ((0 : GoUInt8))))) {
                    break;
                };
            });
        };
        if (_i >= (_s != null ? _s.length : ((0 : GoInt)))) {
            return _s;
        };
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... (((((2 : GoInt)) * (_s != null ? _s.length : ((0 : GoInt)))) - _i : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_b, ((_s.__slice__(0, _i) : GoString)));
        var _j:GoInt = _i;
        Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
            if (_special((_s != null ? _s[_i] : ((0 : GoUInt8))))) {
                if (_b != null) _b[_j] = ((((("\\" : GoString))).code : GoRune));
                _j++;
            };
            if (_b != null) _b[_j] = (_s != null ? _s[_i] : ((0 : GoUInt8)));
            _j++;
        });
        return ((((_b.__slice__(0, _j) : Slice<GoUInt8>)) : GoString));
    }
function _extract(_str:GoString):{ var _0 : GoString; var _1 : GoInt; var _2 : GoString; var _3 : Bool; } {
        var _name:GoString = (("" : GoString)), _num:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if (_str == ((("" : GoString)))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        var _brace:Bool = false;
        if ((_str != null ? _str[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("{" : GoString))).code : GoRune))) {
            _brace = true;
            _str = ((_str.__slice__(((1 : GoInt))) : GoString));
        };
        var _i:GoInt = ((0 : GoInt));
        while (_i < (_str != null ? _str.length : ((0 : GoInt)))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_str.__slice__(_i) : GoString))), _rune:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if ((!stdgo.unicode.Unicode.isLetter(_rune) && !stdgo.unicode.Unicode.isDigit(_rune)) && (_rune != ((((("_" : GoString))).code : GoRune)))) {
                break;
            };
            _i = _i + (_size);
        };
        if (_i == ((0 : GoInt))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        _name = ((_str.__slice__(0, _i) : GoString));
        if (_brace) {
            if ((_i >= (_str != null ? _str.length : ((0 : GoInt)))) || ((_str != null ? _str[_i] : ((0 : GoUInt8))) != ((((("}" : GoString))).code : GoRune)))) {
                return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
            };
            _i++;
        };
        _num = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((((_name != null ? _name[_i] : ((0 : GoUInt8))) < ((((("0" : GoString))).code : GoRune))) || (((((("9" : GoString))).code : GoRune)) < (_name != null ? _name[_i] : ((0 : GoUInt8))))) || (_num >= ((1e+08 : GoInt)))) {
                    _num = ((-1 : GoInt));
                    break;
                };
                _num = ((_num * ((10 : GoInt))) + (((_name != null ? _name[_i] : ((0 : GoUInt8))) : GoInt))) - ((((("0" : GoString))).code : GoRune));
            });
        };
        if (((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune))) && ((_name != null ? _name.length : ((0 : GoInt))) > ((1 : GoInt)))) {
            _num = ((-1 : GoInt));
        };
        _rest = ((_str.__slice__(_i) : GoString));
        _ok = true;
        return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
    }
@:keep var _ = {
        try {
            for (_0 => _b in (("\\.+*?()|[]{}^$" : Slice<GoByte>))) {
                if (_specialBytes != null) (_specialBytes != null ? _specialBytes[_b % ((16 : GoUInt8))] : ((0 : GoUInt8))) | (((1 : GoUInt8)) << (_b / ((16 : GoUInt8))));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_bitState_static_extension {
    @:keep
    public static function _push( _b:T_bitState, _re:Regexp, _pc:GoUInt32, _pos:GoInt, _arg:Bool):Void {
        if (((_re._prog.inst != null ? _re._prog.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst()).op != ((5 : GoUInt8))) && (_arg || _b._shouldVisit(_pc, _pos))) {
            _b._jobs = (_b._jobs != null ? _b._jobs.__append__((({ _pc : _pc, _arg : _arg, _pos : _pos } : T_job))) : new Slice<T_job>((({ _pc : _pc, _arg : _arg, _pos : _pos } : T_job))));
        };
    }
    @:keep
    public static function _shouldVisit( _b:T_bitState, _pc:GoUInt32, _pos:GoInt):Bool {
        var _n:GoUInt = ((((((_pc : GoInt)) * (_b._end + ((1 : GoInt)))) + _pos) : GoUInt));
        if (((_b._visited != null ? _b._visited[_n / ((32 : GoUInt))] : ((0 : GoUInt32))) & (((1 : GoUInt32)) << (_n & ((31 : GoUInt))))) != ((0 : GoUInt32))) {
            return false;
        };
        if (_b._visited != null) (_b._visited != null ? _b._visited[_n / ((32 : GoUInt))] : ((0 : GoUInt32))) | (((1 : GoUInt32)) << (_n & ((31 : GoUInt))));
        return true;
    }
    @:keep
    public static function _reset( _b:T_bitState, _prog:stdgo.regexp.syntax.Syntax.Prog, _end:GoInt, _ncap:GoInt):Void {
        _b._end = _end;
        if ((_b._jobs != null ? _b._jobs.cap() : ((0 : GoInt))) == ((0 : GoInt))) {
            _b._jobs = new Slice<T_job>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_job()]).__setCap__(((((256 : GoInt)) : GoInt)).toBasic());
        } else {
            _b._jobs = ((_b._jobs.__slice__(0, ((0 : GoInt))) : Slice<T_job>));
        };
        var _visitedSize:GoInt = ((((_prog.inst != null ? _prog.inst.length : ((0 : GoInt))) * (_end + ((1 : GoInt)))) + ((32 : GoInt))) - ((1 : GoInt))) / ((32 : GoInt));
        if ((_b._visited != null ? _b._visited.cap() : ((0 : GoInt))) < _visitedSize) {
            _b._visited = new Slice<GoUInt32>(...[for (i in 0 ... ((_visitedSize : GoInt)).toBasic()) ((0 : GoUInt32))]).__setCap__(((((8192 : GoInt)) : GoInt)).toBasic());
        } else {
            _b._visited = ((_b._visited.__slice__(0, _visitedSize) : Slice<GoUInt32>));
            for (_i => _ in _b._visited) {
                if (_b._visited != null) _b._visited[_i] = ((0 : GoUInt32));
            };
        };
        if ((_b._cap != null ? _b._cap.cap() : ((0 : GoInt))) < _ncap) {
            _b._cap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
        } else {
            _b._cap = ((_b._cap.__slice__(0, _ncap) : Slice<GoInt>));
        };
        for (_i => _ in _b._cap) {
            if (_b._cap != null) _b._cap[_i] = ((-1 : GoInt));
        };
        if ((_b._matchcap != null ? _b._matchcap.cap() : ((0 : GoInt))) < _ncap) {
            _b._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
        } else {
            _b._matchcap = ((_b._matchcap.__slice__(0, _ncap) : Slice<GoInt>));
        };
        for (_i => _ in _b._matchcap) {
            if (_b._matchcap != null) _b._matchcap[_i] = ((-1 : GoInt));
        };
    }
}
@:keep class T_machine_static_extension {
    @:keep
    public static function _add( _m:T_machine, _q:T_queue, _pc:GoUInt32, _pos:GoInt, _cap:Slice<GoInt>, _cond:Pointer<T_lazyFlag>, _t:T_thread):T_thread {
        return stdgo.internal.Macro.controlFlow({
            @:label("Again") if (_pc == ((0 : GoUInt32))) {
                return _t;
            };
            {
                var _j:GoUInt32 = (_q._sparse != null ? _q._sparse[_pc] : ((0 : GoUInt32)));
                if ((_j < (((_q._dense != null ? _q._dense.length : ((0 : GoInt))) : GoUInt32))) && ((_q._dense != null ? _q._dense[_j] : new T_entry())._pc == _pc)) {
                    return _t;
                };
            };
            var _j:GoInt = (_q._dense != null ? _q._dense.length : ((0 : GoInt)));
            _q._dense = ((_q._dense.__slice__(0, _j + ((1 : GoInt))) : Slice<T_entry>));
            var _d = (_q._dense != null ? _q._dense[_j] : new T_entry());
            _d._t = null;
            _d._pc = _pc;
            if (_q._sparse != null) _q._sparse[_pc] = ((_j : GoUInt32));
            var _i = (_m._p.inst != null ? _m._p.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst());
            if (_i.op == ((5 : GoUInt8))) {} else if (_i.op == ((0 : GoUInt8)) || _i.op == ((1 : GoUInt8))) {
                _t = _m._add(_q, _i.out, _pos, _cap, _cond, _t);
                _pc = _i.arg;
                @:goto "Again";
            } else if (_i.op == ((3 : GoUInt8))) {
                if (_cond.value._match(((_i.arg : stdgo.regexp.syntax.Syntax.EmptyOp)))) {
                    _pc = _i.out;
                    @:goto "Again";
                };
            } else if (_i.op == ((6 : GoUInt8))) {
                _pc = _i.out;
                @:goto "Again";
            } else if (_i.op == ((2 : GoUInt8))) {
                if (((_i.arg : GoInt)) < (_cap != null ? _cap.length : ((0 : GoInt)))) {
                    var _opos:GoInt = (_cap != null ? _cap[_i.arg] : ((0 : GoInt)));
                    if (_cap != null) _cap[_i.arg] = _pos;
                    _m._add(_q, _i.out, _pos, _cap, _cond, null);
                    if (_cap != null) _cap[_i.arg] = _opos;
                } else {
                    _pc = _i.out;
                    @:goto "Again";
                };
            } else if (_i.op == ((4 : GoUInt8)) || _i.op == ((7 : GoUInt8)) || _i.op == ((8 : GoUInt8)) || _i.op == ((9 : GoUInt8)) || _i.op == ((10 : GoUInt8))) {
                if (_t == null) {
                    _t = _m._alloc(_i);
                } else {
                    _t._inst = _i;
                };
                if (((_cap != null ? _cap.length : ((0 : GoInt))) > ((0 : GoInt))) && (Go.pointer((_t._cap != null ? _t._cap[((0 : GoInt))] : ((0 : GoInt)))) != Go.pointer((_cap != null ? _cap[((0 : GoInt))] : ((0 : GoInt)))))) {
                    Go.copySlice(_t._cap, _cap);
                };
                _d._t = _t;
                _t = null;
            };
            return _t;
        });
    }
    @:keep
    public static function _step( _m:T_machine, _runq:T_queue, _nextq:T_queue, _pos:GoInt, _nextPos:GoInt, _c:GoRune, _nextCond:Pointer<T_lazyFlag>):Void {
        var _longest:Bool = _m._re._longest;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < (_runq._dense != null ? _runq._dense.length : ((0 : GoInt))), _j++, {
                var _d = (_runq._dense != null ? _runq._dense[_j] : new T_entry());
                var _t = _d._t;
                if (_t == null) {
                    continue;
                };
                if (((_longest && _m._matched) && ((_t._cap != null ? _t._cap.length : ((0 : GoInt))) > ((0 : GoInt)))) && ((_m._matchcap != null ? _m._matchcap[((0 : GoInt))] : ((0 : GoInt))) < (_t._cap != null ? _t._cap[((0 : GoInt))] : ((0 : GoInt))))) {
                    _m._pool = (_m._pool != null ? _m._pool.__append__(_t) : new Slice<Ref<T_thread>>(_t));
                    continue;
                };
                var _i = _t._inst;
                var _add:Bool = false;
                if (_i.op == ((4 : GoUInt8))) {
                    if (((_t._cap != null ? _t._cap.length : ((0 : GoInt))) > ((0 : GoInt))) && ((!_longest || !_m._matched) || ((_m._matchcap != null ? _m._matchcap[((1 : GoInt))] : ((0 : GoInt))) < _pos))) {
                        if (_t._cap != null) _t._cap[((1 : GoInt))] = _pos;
                        Go.copySlice(_m._matchcap, _t._cap);
                    };
                    if (!_longest) {
                        for (_0 => _d in ((_runq._dense.__slice__(_j + ((1 : GoInt))) : Slice<T_entry>))) {
                            if (_d._t != null) {
                                _m._pool = (_m._pool != null ? _m._pool.__append__(_d._t) : new Slice<Ref<T_thread>>(_d._t));
                            };
                        };
                        _runq._dense = ((_runq._dense.__slice__(0, ((0 : GoInt))) : Slice<T_entry>));
                    };
                    _m._matched = true;
                } else if (_i.op == ((7 : GoUInt8))) {
                    _add = _i.matchRune(_c);
                } else if (_i.op == ((8 : GoUInt8))) {
                    _add = _c == (_i.rune != null ? _i.rune[((0 : GoInt))] : ((0 : GoInt32)));
                } else if (_i.op == ((9 : GoUInt8))) {
                    _add = true;
                } else if (_i.op == ((10 : GoUInt8))) {
                    _add = _c != ((((("\n" : GoString))).code : GoRune));
                };
                if (_add) {
                    _t = _m._add(_nextq, _i.out, _nextPos, _t._cap, _nextCond, _t);
                };
                if (_t != null) {
                    _m._pool = (_m._pool != null ? _m._pool.__append__(_t) : new Slice<Ref<T_thread>>(_t));
                };
            });
        };
        _runq._dense = ((_runq._dense.__slice__(0, ((0 : GoInt))) : Slice<T_entry>));
    }
    @:keep
    public static function _clear( _m:T_machine, _q:T_queue):Void {
        for (_0 => _d in _q._dense) {
            if (_d._t != null) {
                _m._pool = (_m._pool != null ? _m._pool.__append__(_d._t) : new Slice<Ref<T_thread>>(_d._t));
            };
        };
        _q._dense = ((_q._dense.__slice__(0, ((0 : GoInt))) : Slice<T_entry>));
    }
    @:keep
    public static function _match( _m:T_machine, _i:T_input, _pos:GoInt):Bool {
        var _startCond:stdgo.regexp.syntax.Syntax.EmptyOp = _m._re._cond;
        if (_startCond == ((255 : GoUInt8))) {
            return false;
        };
        _m._matched = false;
        for (_i => _ in _m._matchcap) {
            if (_m._matchcap != null) _m._matchcap[_i] = ((-1 : GoInt));
        };
        var _runq = _m._q0, _nextq = _m._q1;
        var _r:GoInt32 = ((-1 : GoInt32)), _r1:GoInt32 = ((-1 : GoInt32));
        var _width:GoInt = ((0 : GoInt)), _width1:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _i._step(_pos);
            _r = __tmp__._0;
            _width = __tmp__._1;
        };
        if (_r != ((-1 : GoInt32))) {
            {
                var __tmp__ = _i._step(_pos + _width);
                _r1 = __tmp__._0;
                _width1 = __tmp__._1;
            };
        };
        var _flag:T_lazyFlag = new T_lazyFlag();
        if (_pos == ((0 : GoInt))) {
            _flag = _newLazyFlag(((-1 : GoInt32)), _r);
        } else {
            _flag = _i._context(_pos);
        };
        while (true) {
            if ((_runq._dense != null ? _runq._dense.length : ((0 : GoInt))) == ((0 : GoInt))) {
                if (((_startCond & ((4 : GoUInt8))) != ((0 : GoUInt8))) && (_pos != ((0 : GoInt)))) {
                    break;
                };
                if (_m._matched) {
                    break;
                };
                if ((((_m._re._prefix != null ? _m._re._prefix.length : ((0 : GoInt))) > ((0 : GoInt))) && (_r1 != _m._re._prefixRune)) && _i._canCheckPrefix()) {
                    var _advance:GoInt = _i._index(_m._re, _pos);
                    if (_advance < ((0 : GoInt))) {
                        break;
                    };
                    _pos = _pos + (_advance);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = __tmp__._0;
                        _width = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step(_pos + _width);
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            if (!_m._matched) {
                if ((_m._matchcap != null ? _m._matchcap.length : ((0 : GoInt))) > ((0 : GoInt))) {
                    if (_m._matchcap != null) _m._matchcap[((0 : GoInt))] = _pos;
                };
                _m._add(_runq, ((_m._p.start : GoUInt32)), _pos, _m._matchcap, Go.pointer(_flag), null);
            };
            _flag = _newLazyFlag(_r, _r1);
            _m._step(_runq, _nextq, _pos, _pos + _width, _r, Go.pointer(_flag));
            if (_width == ((0 : GoInt))) {
                break;
            };
            if (((_m._matchcap != null ? _m._matchcap.length : ((0 : GoInt))) == ((0 : GoInt))) && _m._matched) {
                break;
            };
            _pos = _pos + (_width);
            {
                final __tmp__0 = _r1;
                final __tmp__1 = _width1;
                _r = __tmp__0;
                _width = __tmp__1;
            };
            if (_r != ((-1 : GoInt32))) {
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            {
                final __tmp__0 = _nextq;
                final __tmp__1 = _runq;
                _runq = __tmp__0;
                _nextq = __tmp__1;
            };
        };
        _m._clear(_nextq);
        return _m._matched;
    }
    @:keep
    public static function _alloc( _m:T_machine, _i:stdgo.regexp.syntax.Syntax.Inst):T_thread {
        var _t:T_thread = null;
        {
            var _n:GoInt = (_m._pool != null ? _m._pool.length : ((0 : GoInt)));
            if (_n > ((0 : GoInt))) {
                _t = (_m._pool != null ? _m._pool[_n - ((1 : GoInt))] : null);
                _m._pool = ((_m._pool.__slice__(0, _n - ((1 : GoInt))) : Slice<Ref<T_thread>>));
            } else {
                _t = new T_thread();
                _t._cap = new Slice<GoInt>(...[for (i in 0 ... (((_m._matchcap != null ? _m._matchcap.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoInt))]).__setCap__((((_m._matchcap != null ? _m._matchcap.cap() : ((0 : GoInt))) : GoInt)).toBasic());
            };
        };
        _t._inst = _i;
        return _t;
    }
    @:keep
    public static function _init( _m:T_machine, _ncap:GoInt):Void {
        for (_0 => _t in _m._pool) {
            _t._cap = ((_t._cap.__slice__(0, _ncap) : Slice<GoInt>));
        };
        _m._matchcap = ((_m._matchcap.__slice__(0, _ncap) : Slice<GoInt>));
    }
}
@:keep class T_inputs_static_extension {
    @:keep
    public static function _init( _i:T_inputs, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):{ var _0 : T_input; var _1 : GoInt; } {
        if (_r != null) {
            return { _0 : _i._newReader(_r), _1 : ((0 : GoInt)) };
        };
        if (_b != null) {
            return { _0 : _i._newBytes(_b), _1 : (_b != null ? _b.length : ((0 : GoInt))) };
        };
        return { _0 : _i._newString(_s), _1 : (_s != null ? _s.length : ((0 : GoInt))) };
    }
    @:keep
    public static function _clear( _i:T_inputs):Void {
        if (_i._bytes._str != null) {
            _i._bytes._str = ((null : Slice<GoUInt8>));
        } else if (_i._reader._r != null) {
            _i._reader._r = ((null : stdgo.io.Io.RuneReader));
        } else {
            _i._string._str = ((("" : GoString)));
        };
    }
    @:keep
    public static function _newReader( _i:T_inputs, _r:stdgo.io.Io.RuneReader):T_input {
        _i._reader._r = _r;
        _i._reader._atEOT = false;
        _i._reader._pos = ((0 : GoInt));
        return _i._reader;
    }
    @:keep
    public static function _newString( _i:T_inputs, _s:GoString):T_input {
        _i._string._str = _s;
        return _i._string;
    }
    @:keep
    public static function _newBytes( _i:T_inputs, _b:Slice<GoByte>):T_input {
        _i._bytes._str = _b;
        return _i._bytes;
    }
}
@:keep class T_queueOnePass_static_extension {
    @:keep
    public static function _insertNew( _q:T_queueOnePass, _u:GoUInt32):Void {
        if (_u >= (((_q._sparse != null ? _q._sparse.length : ((0 : GoInt))) : GoUInt32))) {
            return;
        };
        if (_q._sparse != null) _q._sparse[_u] = _q._size;
        if (_q._dense != null) _q._dense[_q._size] = _u;
        _q._size++;
    }
    @:keep
    public static function _insert( _q:T_queueOnePass, _u:GoUInt32):Void {
        if (!_q._contains(_u)) {
            _q._insertNew(_u);
        };
    }
    @:keep
    public static function _contains( _q:T_queueOnePass, _u:GoUInt32):Bool {
        if (_u >= (((_q._sparse != null ? _q._sparse.length : ((0 : GoInt))) : GoUInt32))) {
            return false;
        };
        return ((_q._sparse != null ? _q._sparse[_u] : ((0 : GoUInt32))) < _q._size) && ((_q._dense != null ? _q._dense[(_q._sparse != null ? _q._sparse[_u] : ((0 : GoUInt32)))] : ((0 : GoUInt32))) == _u);
    }
    @:keep
    public static function _clear( _q:T_queueOnePass):Void {
        _q._size = ((0 : GoUInt32));
        _q._nextIndex = ((0 : GoUInt32));
    }
    @:keep
    public static function _next( _q:T_queueOnePass):GoUInt32 {
        var _n:GoUInt32 = ((0 : GoUInt32));
        _n = (_q._dense != null ? _q._dense[_q._nextIndex] : ((0 : GoUInt32)));
        _q._nextIndex++;
        return _n;
    }
    @:keep
    public static function _empty( _q:T_queueOnePass):Bool {
        return _q._nextIndex >= _q._size;
    }
}
@:keep class Regexp_static_extension {
    @:keep
    public static function split( _re:Regexp, _s:GoString, _n:GoInt):Slice<GoString> {
        if (_n == ((0 : GoInt))) {
            return ((null : Slice<GoString>));
        };
        if (((_re._expr != null ? _re._expr.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            return ((new Slice<GoString>(((("" : GoString)))) : Slice<GoString>));
        };
        var _matches = _re.findAllStringIndex(_s, _n);
        var _strings = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).__setCap__((((_matches != null ? _matches.length : ((0 : GoInt))) : GoInt)).toBasic());
        var _beg:GoInt = ((0 : GoInt));
        var _end:GoInt = ((0 : GoInt));
        for (_0 => _match in _matches) {
            if ((_n > ((0 : GoInt))) && ((_strings != null ? _strings.length : ((0 : GoInt))) >= (_n - ((1 : GoInt))))) {
                break;
            };
            _end = (_match != null ? _match[((0 : GoInt))] : ((0 : GoInt)));
            if ((_match != null ? _match[((1 : GoInt))] : ((0 : GoInt))) != ((0 : GoInt))) {
                _strings = (_strings != null ? _strings.__append__(((_s.__slice__(_beg, _end) : GoString))) : new Slice<GoString>(((_s.__slice__(_beg, _end) : GoString))));
            };
            _beg = (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)));
        };
        if (_end != (_s != null ? _s.length : ((0 : GoInt)))) {
            _strings = (_strings != null ? _strings.__append__(((_s.__slice__(_beg) : GoString))) : new Slice<GoString>(((_s.__slice__(_beg) : GoString))));
        };
        return _strings;
    }
    @:keep
    public static function findAllStringSubmatchIndex( _re:Regexp, _s:GoString, _n:GoInt):Slice<Slice<GoInt>> {
        if (_n < ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = ((null : Slice<Slice<GoInt>>));
        _re._allMatches(_s, ((null : Slice<GoUInt8>)), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoInt>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(_match) : new Slice<Slice<GoInt>>(_match));
        });
        return _result;
    }
    @:keep
    public static function findAllStringSubmatch( _re:Regexp, _s:GoString, _n:GoInt):Slice<Slice<GoString>> {
        if (_n < ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoString>> = ((null : Slice<Slice<GoString>>));
        _re._allMatches(_s, ((null : Slice<GoUInt8>)), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoString>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoString>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            var _slice = new Slice<GoString>(...[for (i in 0 ... (((_match != null ? _match.length : ((0 : GoInt))) / ((2 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
            for (_j => _ in _slice) {
                if ((_match != null ? _match[((2 : GoInt)) * _j] : ((0 : GoInt))) >= ((0 : GoInt))) {
                    if (_slice != null) _slice[_j] = ((_s.__slice__((_match != null ? _match[((2 : GoInt)) * _j] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _j) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString));
                };
            };
            _result = (_result != null ? _result.__append__(_slice) : new Slice<Slice<GoString>>(_slice));
        });
        return _result;
    }
    @:keep
    public static function findAllSubmatchIndex( _re:Regexp, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> {
        if (_n < ((0 : GoInt))) {
            _n = (_b != null ? _b.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = ((null : Slice<Slice<GoInt>>));
        _re._allMatches(((("" : GoString))), _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoInt>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(_match) : new Slice<Slice<GoInt>>(_match));
        });
        return _result;
    }
    @:keep
    public static function findAllSubmatch( _re:Regexp, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<Slice<GoByte>>> {
        if (_n < ((0 : GoInt))) {
            _n = (_b != null ? _b.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<Slice<GoByte>>> = ((null : Slice<Slice<Slice<GoUInt8>>>));
        _re._allMatches(((("" : GoString))), _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<Slice<GoUInt8>>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<Slice<GoUInt8>>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            var _slice = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... (((_match != null ? _match.length : ((0 : GoInt))) / ((2 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
            for (_j => _ in _slice) {
                if ((_match != null ? _match[((2 : GoInt)) * _j] : ((0 : GoInt))) >= ((0 : GoInt))) {
                    if (_slice != null) _slice[_j] = ((_b.__slice__((_match != null ? _match[((2 : GoInt)) * _j] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _j) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_match != null ? _match[(((2 : GoInt)) * _j) + ((1 : GoInt))] : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
                };
            };
            _result = (_result != null ? _result.__append__(_slice) : new Slice<Slice<Slice<GoUInt8>>>(_slice));
        });
        return _result;
    }
    @:keep
    public static function findAllStringIndex( _re:Regexp, _s:GoString, _n:GoInt):Slice<Slice<GoInt>> {
        if (_n < ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = ((null : Slice<Slice<GoInt>>));
        _re._allMatches(_s, ((null : Slice<GoUInt8>)), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoInt>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(((_match.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))) : new Slice<Slice<GoInt>>(((_match.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))));
        });
        return _result;
    }
    @:keep
    public static function findAllString( _re:Regexp, _s:GoString, _n:GoInt):Slice<GoString> {
        if (_n < ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<GoString> = ((null : Slice<GoString>));
        _re._allMatches(_s, ((null : Slice<GoUInt8>)), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(((_s.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : GoString))) : new Slice<GoString>(((_s.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : GoString))));
        });
        return _result;
    }
    @:keep
    public static function findAllIndex( _re:Regexp, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> {
        if (_n < ((0 : GoInt))) {
            _n = (_b != null ? _b.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = ((null : Slice<Slice<GoInt>>));
        _re._allMatches(((("" : GoString))), _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoInt>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(((_match.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))) : new Slice<Slice<GoInt>>(((_match.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))));
        });
        return _result;
    }
    @:keep
    public static function findAll( _re:Regexp, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        if (_n < ((0 : GoInt))) {
            _n = (_b != null ? _b.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoByte>> = ((null : Slice<Slice<GoUInt8>>));
        _re._allMatches(((("" : GoString))), _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null) {
                _result = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            };
            _result = (_result != null ? _result.__append__(((_b.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_match != null ? _match[((1 : GoInt))] : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)))) : new Slice<Slice<GoUInt8>>(((_b.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_match != null ? _match[((1 : GoInt))] : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)))));
        });
        return _result;
    }
    @:keep
    public static function findReaderSubmatchIndex( _re:Regexp, _r:stdgo.io.Io.RuneReader):Slice<GoInt> {
        return _re._pad(_re._doExecute(_r, ((null : Slice<GoUInt8>)), ((("" : GoString))), ((0 : GoInt)), _re._prog.numCap, ((null : Slice<GoInt>))));
    }
    @:keep
    public static function findStringSubmatchIndex( _re:Regexp, _s:GoString):Slice<GoInt> {
        return _re._pad(_re._doExecute(((null : stdgo.io.Io.RuneReader)), ((null : Slice<GoUInt8>)), _s, ((0 : GoInt)), _re._prog.numCap, ((null : Slice<GoInt>))));
    }
    @:keep
    public static function findStringSubmatch( _re:Regexp, _s:GoString):Slice<GoString> {
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), ((null : Slice<GoUInt8>)), _s, ((0 : GoInt)), _re._prog.numCap, ((_dstCap.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<GoString>));
        };
        var _ret = new Slice<GoString>(...[for (i in 0 ... ((((1 : GoInt)) + _re._numSubexp : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _ret) {
            if (((((2 : GoInt)) * _i) < (_a != null ? _a.length : ((0 : GoInt)))) && ((_a != null ? _a[((2 : GoInt)) * _i] : ((0 : GoInt))) >= ((0 : GoInt)))) {
                if (_ret != null) _ret[_i] = ((_s.__slice__((_a != null ? _a[((2 : GoInt)) * _i] : ((0 : GoInt))), (_a != null ? _a[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString));
            };
        };
        return _ret;
    }
    @:keep
    public static function findSubmatchIndex( _re:Regexp, _b:Slice<GoByte>):Slice<GoInt> {
        return _re._pad(_re._doExecute(((null : stdgo.io.Io.RuneReader)), _b, ((("" : GoString))), ((0 : GoInt)), _re._prog.numCap, ((null : Slice<GoInt>))));
    }
    @:keep
    public static function _expand( _re:Regexp, _dst:Slice<GoByte>, _template:GoString, _bsrc:Slice<GoByte>, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> {
        while ((_template != null ? _template.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.strings.Strings.cut(_template, ((("$$" : GoString)))), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst != null ? _dst.__append__(..._before.__toArray__()) : new Slice<GoUInt8>(..._before.__toArray__()));
            _template = _after;
            if ((_template != ((("" : GoString)))) && ((_template != null ? _template[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("$$" : GoString))).code : GoRune)))) {
                _dst = (_dst != null ? _dst.__append__(((((("$$" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("$$" : GoString))).code : GoRune))));
                _template = ((_template.__slice__(((1 : GoInt))) : GoString));
                continue;
            };
            var __tmp__ = _extract(_template), _name:GoString = __tmp__._0, _num:GoInt = __tmp__._1, _rest:GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = (_dst != null ? _dst.__append__(((((("$$" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("$$" : GoString))).code : GoRune))));
                continue;
            };
            _template = _rest;
            if (_num >= ((0 : GoInt))) {
                if ((((((2 : GoInt)) * _num) + ((1 : GoInt))) < (_match != null ? _match.length : ((0 : GoInt)))) && ((_match != null ? _match[((2 : GoInt)) * _num] : ((0 : GoInt))) >= ((0 : GoInt)))) {
                    if (_bsrc != null) {
                        _dst = (_dst != null ? _dst.__append__(...((_bsrc.__slice__((_match != null ? _match[((2 : GoInt)) * _num] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _num) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_bsrc.__slice__((_match != null ? _match[((2 : GoInt)) * _num] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _num) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()));
                    } else {
                        _dst = (_dst != null ? _dst.__append__(...((_src.__slice__((_match != null ? _match[((2 : GoInt)) * _num] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _num) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_src.__slice__((_match != null ? _match[((2 : GoInt)) * _num] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _num) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()));
                    };
                };
            } else {
                for (_i => _namei in _re._subexpNames) {
                    if (((_name == _namei) && (((((2 : GoInt)) * _i) + ((1 : GoInt))) < (_match != null ? _match.length : ((0 : GoInt))))) && ((_match != null ? _match[((2 : GoInt)) * _i] : ((0 : GoInt))) >= ((0 : GoInt)))) {
                        if (_bsrc != null) {
                            _dst = (_dst != null ? _dst.__append__(...((_bsrc.__slice__((_match != null ? _match[((2 : GoInt)) * _i] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_bsrc.__slice__((_match != null ? _match[((2 : GoInt)) * _i] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()));
                        } else {
                            _dst = (_dst != null ? _dst.__append__(...((_src.__slice__((_match != null ? _match[((2 : GoInt)) * _i] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_src.__slice__((_match != null ? _match[((2 : GoInt)) * _i] : ((0 : GoInt))), (_match != null ? _match[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()));
                        };
                        break;
                    };
                };
            };
        };
        _dst = (_dst != null ? _dst.__append__(..._template.__toArray__()) : new Slice<GoUInt8>(..._template.__toArray__()));
        return _dst;
    }
    @:keep
    public static function expandString( _re:Regexp, _dst:Slice<GoByte>, _template:GoString, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> {
        return _re._expand(_dst, _template, ((null : Slice<GoUInt8>)), _src, _match);
    }
    @:keep
    public static function expand( _re:Regexp, _dst:Slice<GoByte>, _template:Slice<GoByte>, _src:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
        return _re._expand(_dst, ((_template : GoString)), _src, ((("" : GoString))), _match);
    }
    @:keep
    public static function findSubmatch( _re:Regexp, _b:Slice<GoByte>):Slice<Slice<GoByte>> {
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), _b, ((("" : GoString))), ((0 : GoInt)), _re._prog.numCap, ((_dstCap.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<Slice<GoUInt8>>));
        };
        var _ret = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((((1 : GoInt)) + _re._numSubexp : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        for (_i => _ in _ret) {
            if (((((2 : GoInt)) * _i) < (_a != null ? _a.length : ((0 : GoInt)))) && ((_a != null ? _a[((2 : GoInt)) * _i] : ((0 : GoInt))) >= ((0 : GoInt)))) {
                if (_ret != null) _ret[_i] = ((_b.__slice__((_a != null ? _a[((2 : GoInt)) * _i] : ((0 : GoInt))), (_a != null ? _a[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_a != null ? _a[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
            };
        };
        return _ret;
    }
    @:keep
    public static function findReaderIndex( _re:Regexp, _r:stdgo.io.Io.RuneReader):Slice<GoInt> {
        var _loc:Slice<GoInt> = ((null : Slice<GoInt>));
        var _a = _re._doExecute(_r, ((null : Slice<GoUInt8>)), ((("" : GoString))), ((0 : GoInt)), ((2 : GoInt)), ((null : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<GoInt>));
        };
        return ((_a.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>));
    }
    @:keep
    public static function findStringIndex( _re:Regexp, _s:GoString):Slice<GoInt> {
        var _loc:Slice<GoInt> = ((null : Slice<GoInt>));
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), ((null : Slice<GoUInt8>)), _s, ((0 : GoInt)), ((2 : GoInt)), ((null : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<GoInt>));
        };
        return ((_a.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>));
    }
    @:keep
    public static function findString( _re:Regexp, _s:GoString):GoString {
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), ((null : Slice<GoUInt8>)), _s, ((0 : GoInt)), ((2 : GoInt)), ((_dstCap.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)));
        if (_a == null) {
            return ((("" : GoString)));
        };
        return ((_s.__slice__((_a != null ? _a[((0 : GoInt))] : ((0 : GoInt))), (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)))) : GoString));
    }
    @:keep
    public static function findIndex( _re:Regexp, _b:Slice<GoByte>):Slice<GoInt> {
        var _loc:Slice<GoInt> = ((null : Slice<GoInt>));
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), _b, ((("" : GoString))), ((0 : GoInt)), ((2 : GoInt)), ((null : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<GoInt>));
        };
        return ((_a.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoInt>));
    }
    @:keep
    public static function find( _re:Regexp, _b:Slice<GoByte>):Slice<GoByte> {
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), _b, ((("" : GoString))), ((0 : GoInt)), ((2 : GoInt)), ((_dstCap.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)));
        if (_a == null) {
            return ((null : Slice<GoUInt8>));
        };
        return ((_b.__slice__((_a != null ? _a[((0 : GoInt))] : ((0 : GoInt))), (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_a != null ? _a[((1 : GoInt))] : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
    }
    @:keep
    public static function _allMatches( _re:Regexp, _s:GoString, _b:Slice<GoByte>, _n:GoInt, _deliver:Slice<GoInt> -> Void):Void {
        var _end:GoInt = ((0 : GoInt));
        if (_b == null) {
            _end = (_s != null ? _s.length : ((0 : GoInt)));
        } else {
            _end = (_b != null ? _b.length : ((0 : GoInt)));
        };
        {
            var _pos:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt)), _prevMatchEnd:GoInt = ((-1 : GoInt));
            while ((_i < _n) && (_pos <= _end)) {
                var _matches = _re._doExecute(((null : stdgo.io.Io.RuneReader)), _b, _s, _pos, _re._prog.numCap, ((null : Slice<GoInt>)));
                if ((_matches != null ? _matches.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    break;
                };
                var _accept:Bool = true;
                if ((_matches != null ? _matches[((1 : GoInt))] : ((0 : GoInt))) == _pos) {
                    if ((_matches != null ? _matches[((0 : GoInt))] : ((0 : GoInt))) == _prevMatchEnd) {
                        _accept = false;
                    };
                    var _width:GoInt = ((0 : GoInt));
                    if (_b == null) {
                        {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_s.__slice__(_pos, _end) : GoString)));
                            _width = __tmp__._1;
                        };
                    } else {
                        {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_b.__slice__(_pos, _end) : Slice<GoUInt8>)));
                            _width = __tmp__._1;
                        };
                    };
                    if (_width > ((0 : GoInt))) {
                        _pos = _pos + (_width);
                    } else {
                        _pos = _end + ((1 : GoInt));
                    };
                } else {
                    _pos = (_matches != null ? _matches[((1 : GoInt))] : ((0 : GoInt)));
                };
                _prevMatchEnd = (_matches != null ? _matches[((1 : GoInt))] : ((0 : GoInt)));
                if (_accept) {
                    _deliver(_re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    public static function _pad( _re:Regexp, _a:Slice<GoInt>):Slice<GoInt> {
        if (_a == null) {
            return ((null : Slice<GoInt>));
        };
        var _n:GoInt = (((1 : GoInt)) + _re._numSubexp) * ((2 : GoInt));
        while ((_a != null ? _a.length : ((0 : GoInt))) < _n) {
            _a = (_a != null ? _a.__append__(((-1 : GoInt))) : new Slice<GoInt>(((-1 : GoInt))));
        };
        return _a;
    }
    @:keep
    public static function replaceAllFunc( _re:Regexp, _src:Slice<GoByte>, _repl:Slice<GoByte> -> Slice<GoByte>):Slice<GoByte> {
        return _re._replaceAll(_src, ((("" : GoString))), ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return (_dst != null ? _dst.__append__(..._repl(((_src.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>))).__toArray__()) : new Slice<GoUInt8>(..._repl(((_src.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>))).__toArray__()));
        });
    }
    @:keep
    public static function replaceAllLiteral( _re:Regexp, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> {
        return _re._replaceAll(_src, ((("" : GoString))), ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return (_dst != null ? _dst.__append__(..._repl.__toArray__()) : new Slice<GoUInt8>(..._repl.__toArray__()));
        });
    }
    @:keep
    public static function replaceAll( _re:Regexp, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> {
        var _n:GoInt = ((2 : GoInt));
        if (stdgo.bytes.Bytes.indexByte(_repl, ((((("$$" : GoString))).code : GoRune))) >= ((0 : GoInt))) {
            _n = ((2 : GoInt)) * (_re._numSubexp + ((1 : GoInt)));
        };
        var _srepl:GoString = ((("" : GoString)));
        var _b = _re._replaceAll(_src, ((("" : GoString))), _n, function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            if ((_srepl != null ? _srepl.length : ((0 : GoInt))) != (_repl != null ? _repl.length : ((0 : GoInt)))) {
                _srepl = ((_repl : GoString));
            };
            return _re._expand(_dst, _srepl, _src, ((("" : GoString))), _match);
        });
        return _b;
    }
    @:keep
    public static function _replaceAll( _re:Regexp, _bsrc:Slice<GoByte>, _src:GoString, _nmatch:GoInt, _repl:(_dst:Slice<GoByte>, _m:Slice<GoInt>) -> Slice<GoByte>):Slice<GoByte> {
        var _lastMatchEnd:GoInt = ((0 : GoInt));
        var _searchPos:GoInt = ((0 : GoInt));
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _endPos:GoInt = ((0 : GoInt));
        if (_bsrc != null) {
            _endPos = (_bsrc != null ? _bsrc.length : ((0 : GoInt)));
        } else {
            _endPos = (_src != null ? _src.length : ((0 : GoInt)));
        };
        if (_nmatch > _re._prog.numCap) {
            _nmatch = _re._prog.numCap;
        };
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        while (_searchPos <= _endPos) {
            var _a = _re._doExecute(((null : stdgo.io.Io.RuneReader)), _bsrc, _src, _searchPos, _nmatch, ((_dstCap.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)));
            if ((_a != null ? _a.length : ((0 : GoInt))) == ((0 : GoInt))) {
                break;
            };
            if (_bsrc != null) {
                _buf = (_buf != null ? _buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, (_a != null ? _a[((0 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_bsrc.__slice__(_lastMatchEnd, (_a != null ? _a[((0 : GoInt))] : ((0 : GoInt)))) : Slice<GoUInt8>)).__toArray__()));
            } else {
                _buf = (_buf != null ? _buf.__append__(...((_src.__slice__(_lastMatchEnd, (_a != null ? _a[((0 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_src.__slice__(_lastMatchEnd, (_a != null ? _a[((0 : GoInt))] : ((0 : GoInt)))) : GoString)).__toArray__()));
            };
            if (((_a != null ? _a[((1 : GoInt))] : ((0 : GoInt))) > _lastMatchEnd) || ((_a != null ? _a[((0 : GoInt))] : ((0 : GoInt))) == ((0 : GoInt)))) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)));
            var _width:GoInt = ((0 : GoInt));
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_bsrc.__slice__(_searchPos) : Slice<GoUInt8>)));
                    _width = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_src.__slice__(_searchPos) : GoString)));
                    _width = __tmp__._1;
                };
            };
            if ((_searchPos + _width) > (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)))) {
                _searchPos = _searchPos + (_width);
            } else if ((_searchPos + ((1 : GoInt))) > (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)))) {
                _searchPos++;
            } else {
                _searchPos = (_a != null ? _a[((1 : GoInt))] : ((0 : GoInt)));
            };
        };
        if (_bsrc != null) {
            _buf = (_buf != null ? _buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_bsrc.__slice__(_lastMatchEnd) : Slice<GoUInt8>)).__toArray__()));
        } else {
            _buf = (_buf != null ? _buf.__append__(...((_src.__slice__(_lastMatchEnd) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_src.__slice__(_lastMatchEnd) : GoString)).__toArray__()));
        };
        return _buf;
    }
    @:keep
    public static function replaceAllStringFunc( _re:Regexp, _src:GoString, _repl:GoString -> GoString):GoString {
        var _b = _re._replaceAll(((null : Slice<GoUInt8>)), _src, ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return (_dst != null ? _dst.__append__(..._repl(((_src.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : GoString))).__toArray__()) : new Slice<GoUInt8>(..._repl(((_src.__slice__((_match != null ? _match[((0 : GoInt))] : ((0 : GoInt))), (_match != null ? _match[((1 : GoInt))] : ((0 : GoInt)))) : GoString))).__toArray__()));
        });
        return ((_b : GoString));
    }
    @:keep
    public static function replaceAllLiteralString( _re:Regexp, _src:GoString, _repl:GoString):GoString {
        return ((_re._replaceAll(((null : Slice<GoUInt8>)), _src, ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return (_dst != null ? _dst.__append__(..._repl.__toArray__()) : new Slice<GoUInt8>(..._repl.__toArray__()));
        }) : GoString));
    }
    @:keep
    public static function replaceAllString( _re:Regexp, _src:GoString, _repl:GoString):GoString {
        var _n:GoInt = ((2 : GoInt));
        if (stdgo.strings.Strings.contains(_repl, ((("$$" : GoString))))) {
            _n = ((2 : GoInt)) * (_re._numSubexp + ((1 : GoInt)));
        };
        var _b = _re._replaceAll(((null : Slice<GoUInt8>)), _src, _n, function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _re._expand(_dst, _repl, ((null : Slice<GoUInt8>)), _src, _match);
        });
        return ((_b : GoString));
    }
    @:keep
    public static function match( _re:Regexp, _b:Slice<GoByte>):Bool {
        return _re._doMatch(((null : stdgo.io.Io.RuneReader)), _b, ((("" : GoString))));
    }
    @:keep
    public static function matchString( _re:Regexp, _s:GoString):Bool {
        return _re._doMatch(((null : stdgo.io.Io.RuneReader)), ((null : Slice<GoUInt8>)), _s);
    }
    @:keep
    public static function matchReader( _re:Regexp, _r:stdgo.io.Io.RuneReader):Bool {
        return _re._doMatch(_r, ((null : Slice<GoUInt8>)), ((("" : GoString))));
    }
    @:keep
    public static function literalPrefix( _re:Regexp):{ var _0 : GoString; var _1 : Bool; } {
        var _prefix:GoString = (("" : GoString)), _complete:Bool = false;
        return { _0 : _re._prefix, _1 : _re._prefixComplete };
    }
    @:keep
    public static function subexpIndex( _re:Regexp, _name:GoString):GoInt {
        if (_name != ((("" : GoString)))) {
            for (_i => _s in _re._subexpNames) {
                if (_name == _s) {
                    return _i;
                };
            };
        };
        return ((-1 : GoInt));
    }
    @:keep
    public static function subexpNames( _re:Regexp):Slice<GoString> {
        return _re._subexpNames;
    }
    @:keep
    public static function numSubexp( _re:Regexp):GoInt {
        return _re._numSubexp;
    }
    @:keep
    public static function _put( _re:Regexp, _m:T_machine):Void {
        _m._re = null;
        _m._p = null;
        _m._inputs._clear();
        (_matchPool != null ? _matchPool[_re._mpool] : new stdgo.sync.Sync.Pool()).put(Go.toInterface(_m));
    }
    @:keep
    public static function _get( _re:Regexp):T_machine {
        var __tmp__ = try {
            { value : (((_matchPool != null ? _matchPool[_re._mpool] : new stdgo.sync.Sync.Pool()).get().value : T_machine)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _m = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _m = new T_machine();
        };
        _m._re = _re;
        _m._p = _re._prog;
        if ((_m._matchcap != null ? _m._matchcap.cap() : ((0 : GoInt))) < _re._matchcap) {
            _m._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_re._matchcap : GoInt)).toBasic()) ((0 : GoInt))]);
            for (_0 => _t in _m._pool) {
                _t._cap = new Slice<GoInt>(...[for (i in 0 ... ((_re._matchcap : GoInt)).toBasic()) ((0 : GoInt))]);
            };
        };
        var _n:GoInt = (_matchSize != null ? _matchSize[_re._mpool] : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            _n = (_re._prog.inst != null ? _re._prog.inst.length : ((0 : GoInt)));
        };
        if ((_m._q0._sparse != null ? _m._q0._sparse.length : ((0 : GoInt))) < _n) {
            _m._q0 = ((new T_queue(new Slice<GoUInt32>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt32))]), new Slice<T_entry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_entry()]).__setCap__(((_n : GoInt)).toBasic())) : T_queue));
            _m._q1 = ((new T_queue(new Slice<GoUInt32>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt32))]), new Slice<T_entry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_entry()]).__setCap__(((_n : GoInt)).toBasic())) : T_queue));
        };
        return _m;
    }
    @:keep
    public static function longest( _re:Regexp):Void {
        _re._longest = true;
    }
    @:keep
    public static function copy( _re:Regexp):Regexp {
        var _re2:Regexp = (_re == null ? null : _re.__copy__());
        return _re2;
    }
    @:keep
    public static function toString( _re:Regexp):GoString {
        return _re._expr;
    }
    @:keep
    public static function _doExecute( _re:Regexp, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        if (_dstCap == null) {
            _dstCap = ((_arrayNoInts.__slice__(0, ((0 : GoInt))) : Slice<GoInt>)).__setCap__(((((0 : GoInt)) : GoInt)) - ((1 : GoInt)));
        };
        if ((_r == null) && (((_b != null ? _b.length : ((0 : GoInt))) + (_s != null ? _s.length : ((0 : GoInt)))) < _re._minInputLen)) {
            return ((null : Slice<GoInt>));
        };
        if (_re._onepass != null) {
            return _re._doOnePass(_r, _b, _s, _pos, _ncap, _dstCap);
        };
        if ((_r == null) && (((_b != null ? _b.length : ((0 : GoInt))) + (_s != null ? _s.length : ((0 : GoInt)))) < _re._maxBitStateLen)) {
            return _re._backtrack(_b, _s, _pos, _ncap, _dstCap);
        };
        var _m = _re._get();
        var __tmp__ = _m._inputs._init(_r, _b, _s), _i:T_input = __tmp__._0, _0:GoInt = __tmp__._1;
        _m._init(_ncap);
        if (!_m._match(_i, _pos)) {
            _re._put(_m);
            return ((null : Slice<GoInt>));
        };
        _dstCap = (_dstCap != null ? _dstCap.__append__(..._m._matchcap.__toArray__()) : new Slice<GoInt>(..._m._matchcap.__toArray__()));
        _re._put(_m);
        return _dstCap;
    }
    @:keep
    public static function _doMatch( _re:Regexp, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):Bool {
        return _re._doExecute(_r, _b, _s, ((0 : GoInt)), ((0 : GoInt)), ((null : Slice<GoInt>))) != null;
    }
    @:keep
    public static function _doOnePass( _re:Regexp, _ir:stdgo.io.Io.RuneReader, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        return stdgo.internal.Macro.controlFlow({
            var _startCond:stdgo.regexp.syntax.Syntax.EmptyOp = _re._cond;
            if (_startCond == ((255 : GoUInt8))) {
                return ((null : Slice<GoInt>));
            };
            var _m = _newOnePassMachine();
            if ((_m._matchcap != null ? _m._matchcap.cap() : ((0 : GoInt))) < _ncap) {
                _m._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
            } else {
                _m._matchcap = ((_m._matchcap.__slice__(0, _ncap) : Slice<GoInt>));
            };
            var _matched:Bool = false;
            for (_i => _ in _m._matchcap) {
                if (_m._matchcap != null) _m._matchcap[_i] = ((-1 : GoInt));
            };
            var __tmp__ = _m._inputs._init(_ir, _ib, _is), _i:T_input = __tmp__._0, _0:GoInt = __tmp__._1;
            var _r:GoInt32 = ((-1 : GoInt32)), _r1:GoInt32 = ((-1 : GoInt32));
            var _width:GoInt = ((0 : GoInt)), _width1:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _i._step(_pos);
                _r = __tmp__._0;
                _width = __tmp__._1;
            };
            if (_r != ((-1 : GoInt32))) {
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            var _flag:T_lazyFlag = new T_lazyFlag();
            if (_pos == ((0 : GoInt))) {
                _flag = _newLazyFlag(((-1 : GoInt32)), _r);
            } else {
                _flag = _i._context(_pos);
            };
            var _pc:GoInt = _re._onepass.start;
            var _inst:T_onePassInst = ((_re._onepass.inst != null ? _re._onepass.inst[_pc] : new T_onePassInst()) == null ? null : (_re._onepass.inst != null ? _re._onepass.inst[_pc] : new T_onePassInst()).__copy__());
            if ((((_pos == ((0 : GoInt))) && _flag._match(((_inst.inst.arg : stdgo.regexp.syntax.Syntax.EmptyOp)))) && ((_re._prefix != null ? _re._prefix.length : ((0 : GoInt))) > ((0 : GoInt)))) && _i._canCheckPrefix()) {
                if (!_i._hasPrefix(_re)) {
                    @:goto "Return";
                };
                _pos = _pos + ((_re._prefix != null ? _re._prefix.length : ((0 : GoInt))));
                {
                    var __tmp__ = _i._step(_pos);
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
                _flag = _i._context(_pos);
                _pc = ((_re._prefixEnd : GoInt));
            };
            while (true) {
                _inst = ((_re._onepass.inst != null ? _re._onepass.inst[_pc] : new T_onePassInst()) == null ? null : (_re._onepass.inst != null ? _re._onepass.inst[_pc] : new T_onePassInst()).__copy__());
                _pc = ((_inst.inst.out : GoInt));
                if (_inst.inst.op == ((4 : GoUInt8))) {
                    _matched = true;
                    if ((_m._matchcap != null ? _m._matchcap.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        if (_m._matchcap != null) _m._matchcap[((0 : GoInt))] = ((0 : GoInt));
                        if (_m._matchcap != null) _m._matchcap[((1 : GoInt))] = _pos;
                    };
                    @:goto "Return";
                } else if (_inst.inst.op == ((7 : GoUInt8))) {
                    if (!_inst.matchRune(_r)) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op == ((8 : GoUInt8))) {
                    if (_r != (_inst.inst.rune != null ? _inst.inst.rune[((0 : GoInt))] : ((0 : GoInt32)))) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op == ((9 : GoUInt8))) {} else if (_inst.inst.op == ((10 : GoUInt8))) {
                    if (_r == ((((("\n" : GoString))).code : GoRune))) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op == ((0 : GoUInt8)) || _inst.inst.op == ((1 : GoUInt8))) {
                    _pc = ((_onePassNext(_inst, _r) : GoInt));
                    continue;
                } else if (_inst.inst.op == ((5 : GoUInt8))) {
                    @:goto "Return";
                } else if (_inst.inst.op == ((6 : GoUInt8))) {
                    continue;
                } else if (_inst.inst.op == ((3 : GoUInt8))) {
                    if (!_flag._match(((_inst.inst.arg : stdgo.regexp.syntax.Syntax.EmptyOp)))) {
                        @:goto "Return";
                    };
                    continue;
                } else if (_inst.inst.op == ((2 : GoUInt8))) {
                    if (((_inst.inst.arg : GoInt)) < (_m._matchcap != null ? _m._matchcap.length : ((0 : GoInt)))) {
                        if (_m._matchcap != null) _m._matchcap[_inst.inst.arg] = _pos;
                    };
                    continue;
                };
                if (_width == ((0 : GoInt))) {
                    break;
                };
                _flag = _newLazyFlag(_r, _r1);
                _pos = _pos + (_width);
                {
                    final __tmp__0 = _r1;
                    final __tmp__1 = _width1;
                    _r = __tmp__0;
                    _width = __tmp__1;
                };
                if (_r != ((-1 : GoInt32))) {
                    {
                        var __tmp__ = _i._step(_pos + _width);
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            @:label("Return") if (!_matched) {
                _freeOnePassMachine(_m);
                return ((null : Slice<GoInt>));
            };
            _dstCap = (_dstCap != null ? _dstCap.__append__(..._m._matchcap.__toArray__()) : new Slice<GoInt>(..._m._matchcap.__toArray__()));
            _freeOnePassMachine(_m);
            return _dstCap;
        });
    }
    @:keep
    public static function _backtrack( _re:Regexp, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        return stdgo.internal.Macro.controlFlow({
            var _startCond:stdgo.regexp.syntax.Syntax.EmptyOp = _re._cond;
            if (_startCond == ((255 : GoUInt8))) {
                return ((null : Slice<GoInt>));
            };
            if (((_startCond & ((4 : GoUInt8))) != ((0 : GoUInt8))) && (_pos != ((0 : GoInt)))) {
                return ((null : Slice<GoInt>));
            };
            var _b = _newBitState();
            var __tmp__ = _b._inputs._init(((null : stdgo.io.Io.RuneReader)), _ib, _is), _i:T_input = __tmp__._0, _end:GoInt = __tmp__._1;
            _b._reset(_re._prog, _end, _ncap);
            if ((_startCond & ((4 : GoUInt8))) != ((0 : GoUInt8))) {
                if ((_b._cap != null ? _b._cap.length : ((0 : GoInt))) > ((0 : GoInt))) {
                    if (_b._cap != null) _b._cap[((0 : GoInt))] = _pos;
                };
                if (!_re._tryBacktrack(_b, _i, ((_re._prog.start : GoUInt32)), _pos)) {
                    _freeBitState(_b);
                    return ((null : Slice<GoInt>));
                };
            } else {
                var _width:GoInt = ((-1 : GoInt));
                Go.cfor((_pos <= _end) && (_width != ((0 : GoInt))), _pos = _pos + (_width), {
                    if ((_re._prefix != null ? _re._prefix.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        var _advance:GoInt = _i._index(_re, _pos);
                        if (_advance < ((0 : GoInt))) {
                            _freeBitState(_b);
                            return ((null : Slice<GoInt>));
                        };
                        _pos = _pos + (_advance);
                    };
                    if ((_b._cap != null ? _b._cap.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        if (_b._cap != null) _b._cap[((0 : GoInt))] = _pos;
                    };
                    if (_re._tryBacktrack(_b, _i, ((_re._prog.start : GoUInt32)), _pos)) {
                        @:goto "Match";
                    };
                    {
                        var __tmp__ = _i._step(_pos);
                        _width = __tmp__._1;
                    };
                });
                _freeBitState(_b);
                return ((null : Slice<GoInt>));
            };
            @:label("Match") _dstCap = (_dstCap != null ? _dstCap.__append__(..._b._matchcap.__toArray__()) : new Slice<GoInt>(..._b._matchcap.__toArray__()));
            _freeBitState(_b);
            return _dstCap;
        });
    }
    @:keep
    public static function _tryBacktrack( _re:Regexp, _b:T_bitState, _i:T_input, _pc:GoUInt32, _pos:GoInt):Bool {
        return stdgo.internal.Macro.controlFlow({
            var _longest:Bool = _re._longest;
            _b._push(_re, _pc, _pos, false);
            while ((_b._jobs != null ? _b._jobs.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _l:GoInt = (_b._jobs != null ? _b._jobs.length : ((0 : GoInt))) - ((1 : GoInt));
                var _pc:GoUInt32 = (_b._jobs != null ? _b._jobs[_l] : new T_job())._pc;
                var _pos:GoInt = (_b._jobs != null ? _b._jobs[_l] : new T_job())._pos;
                var _arg:Bool = (_b._jobs != null ? _b._jobs[_l] : new T_job())._arg;
                _b._jobs = ((_b._jobs.__slice__(0, _l) : Slice<T_job>));
                @:goto "Skip";
                @:label("CheckAndLoop") if (!_b._shouldVisit(_pc, _pos)) {
                    continue;
                };
                @:label("Skip") var _inst:stdgo.regexp.syntax.Syntax.Inst = ((_re._prog.inst != null ? _re._prog.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst()) == null ? null : (_re._prog.inst != null ? _re._prog.inst[_pc] : new stdgo.regexp.syntax.Syntax.Inst()).__copy__());
                if (_inst.op == ((5 : GoUInt8))) {
                    throw Go.toInterface(((("unexpected InstFail" : GoString))));
                } else if (_inst.op == ((0 : GoUInt8))) {
                    if (_arg) {
                        _arg = false;
                        _pc = _inst.arg;
                        @:goto "CheckAndLoop";
                    } else {
                        _b._push(_re, _pc, _pos, true);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    };
                } else if (_inst.op == ((1 : GoUInt8))) {
                    if ((_re._prog.inst != null ? _re._prog.inst[_inst.out] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((7 : GoUInt8)) || (_re._prog.inst != null ? _re._prog.inst[_inst.out] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((8 : GoUInt8)) || (_re._prog.inst != null ? _re._prog.inst[_inst.out] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((9 : GoUInt8)) || (_re._prog.inst != null ? _re._prog.inst[_inst.out] : new stdgo.regexp.syntax.Syntax.Inst()).op == ((10 : GoUInt8))) {
                        _b._push(_re, _inst.arg, _pos, false);
                        _pc = _inst.arg;
                        _pos = _b._end;
                        @:goto "CheckAndLoop";
                    };
                    _b._push(_re, _inst.out, _b._end, false);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((7 : GoUInt8))) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (!_inst.matchRune(_r)) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((8 : GoUInt8))) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (_r != (_inst.rune != null ? _inst.rune[((0 : GoInt))] : ((0 : GoInt32)))) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((10 : GoUInt8))) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if ((_r == ((((("\n" : GoString))).code : GoRune))) || (_r == ((-1 : GoInt32)))) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((9 : GoUInt8))) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (_r == ((-1 : GoInt32))) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((2 : GoUInt8))) {
                    if (_arg) {
                        if (_b._cap != null) _b._cap[_inst.arg] = _pos;
                        continue;
                    } else {
                        if (_inst.arg < (((_b._cap != null ? _b._cap.length : ((0 : GoInt))) : GoUInt32))) {
                            _b._push(_re, _pc, (_b._cap != null ? _b._cap[_inst.arg] : ((0 : GoInt))), true);
                            if (_b._cap != null) _b._cap[_inst.arg] = _pos;
                        };
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    };
                } else if (_inst.op == ((3 : GoUInt8))) {
                    var _flag:T_lazyFlag = _i._context(_pos);
                    if (!_flag._match(((_inst.arg : stdgo.regexp.syntax.Syntax.EmptyOp)))) {
                        continue;
                    };
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((6 : GoUInt8))) {
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op == ((4 : GoUInt8))) {
                    if ((_b._cap != null ? _b._cap.length : ((0 : GoInt))) == ((0 : GoInt))) {
                        return true;
                    };
                    if ((_b._cap != null ? _b._cap.length : ((0 : GoInt))) > ((1 : GoInt))) {
                        if (_b._cap != null) _b._cap[((1 : GoInt))] = _pos;
                    };
                    {
                        var _old:GoInt = (_b._matchcap != null ? _b._matchcap[((1 : GoInt))] : ((0 : GoInt)));
                        if ((_old == ((-1 : GoInt))) || ((_longest && (_pos > ((0 : GoInt)))) && (_pos > _old))) {
                            Go.copySlice(_b._matchcap, _b._cap);
                        };
                    };
                    if (!_longest) {
                        return true;
                    };
                    if (_pos == _b._end) {
                        return true;
                    };
                    continue;
                };
            };
            return (_longest && ((_b._matchcap != null ? _b._matchcap.length : ((0 : GoInt))) > ((1 : GoInt)))) && ((_b._matchcap != null ? _b._matchcap[((1 : GoInt))] : ((0 : GoInt))) >= ((0 : GoInt)));
        });
    }
}
@:keep class T_inputString_static_extension {
    @:keep
    public static function _context( _i:T_inputString, _pos:GoInt):T_lazyFlag {
        var _r1:GoInt32 = ((-1 : GoInt32)), _r2:GoInt32 = ((-1 : GoInt32));
        if ((((_pos - ((1 : GoInt))) : GoUInt)) < (((_i._str != null ? _i._str.length : ((0 : GoInt))) : GoUInt))) {
            _r1 = (((_i._str != null ? _i._str[_pos - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r1 >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(((_i._str.__slice__(0, _pos) : GoString)));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : GoUInt)) < (((_i._str != null ? _i._str.length : ((0 : GoInt))) : GoUInt))) {
            _r2 = (((_i._str != null ? _i._str[_pos] : ((0 : GoUInt8))) : GoRune));
            if (_r2 >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_i._str.__slice__(_pos) : GoString)));
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    @:keep
    public static function _index( _i:T_inputString, _re:Regexp, _pos:GoInt):GoInt {
        return stdgo.strings.Strings.index(((_i._str.__slice__(_pos) : GoString)), _re._prefix);
    }
    @:keep
    public static function _hasPrefix( _i:T_inputString, _re:Regexp):Bool {
        return stdgo.strings.Strings.hasPrefix(_i._str, _re._prefix);
    }
    @:keep
    public static function _canCheckPrefix( _i:T_inputString):Bool {
        return true;
    }
    @:keep
    public static function _step( _i:T_inputString, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        if (_pos < (_i._str != null ? _i._str.length : ((0 : GoInt)))) {
            var _c:GoUInt8 = (_i._str != null ? _i._str[_pos] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)) };
            };
            return stdgo.unicode.utf8.Utf8.decodeRuneInString(((_i._str.__slice__(_pos) : GoString)));
        };
        return { _0 : ((-1 : GoInt32)), _1 : ((0 : GoInt)) };
    }
}
@:keep class T_inputBytes_static_extension {
    @:keep
    public static function _context( _i:T_inputBytes, _pos:GoInt):T_lazyFlag {
        var _r1:GoInt32 = ((-1 : GoInt32)), _r2:GoInt32 = ((-1 : GoInt32));
        if ((((_pos - ((1 : GoInt))) : GoUInt)) < (((_i._str != null ? _i._str.length : ((0 : GoInt))) : GoUInt))) {
            _r1 = (((_i._str != null ? _i._str[_pos - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r1 >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_i._str.__slice__(0, _pos) : Slice<GoUInt8>)));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : GoUInt)) < (((_i._str != null ? _i._str.length : ((0 : GoInt))) : GoUInt))) {
            _r2 = (((_i._str != null ? _i._str[_pos] : ((0 : GoUInt8))) : GoRune));
            if (_r2 >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_i._str.__slice__(_pos) : Slice<GoUInt8>)));
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    @:keep
    public static function _index( _i:T_inputBytes, _re:Regexp, _pos:GoInt):GoInt {
        return stdgo.bytes.Bytes.index(((_i._str.__slice__(_pos) : Slice<GoUInt8>)), _re._prefixBytes);
    }
    @:keep
    public static function _hasPrefix( _i:T_inputBytes, _re:Regexp):Bool {
        return stdgo.bytes.Bytes.hasPrefix(_i._str, _re._prefixBytes);
    }
    @:keep
    public static function _canCheckPrefix( _i:T_inputBytes):Bool {
        return true;
    }
    @:keep
    public static function _step( _i:T_inputBytes, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        if (_pos < (_i._str != null ? _i._str.length : ((0 : GoInt)))) {
            var _c:GoUInt8 = (_i._str != null ? _i._str[_pos] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)) };
            };
            return stdgo.unicode.utf8.Utf8.decodeRune(((_i._str.__slice__(_pos) : Slice<GoUInt8>)));
        };
        return { _0 : ((-1 : GoInt32)), _1 : ((0 : GoInt)) };
    }
}
@:keep class T_inputReader_static_extension {
    @:keep
    public static function _context( _i:T_inputReader, _pos:GoInt):T_lazyFlag {
        return ((0 : GoUInt64));
    }
    @:keep
    public static function _index( _i:T_inputReader, _re:Regexp, _pos:GoInt):GoInt {
        return ((-1 : GoInt));
    }
    @:keep
    public static function _hasPrefix( _i:T_inputReader, _re:Regexp):Bool {
        return false;
    }
    @:keep
    public static function _canCheckPrefix( _i:T_inputReader):Bool {
        return false;
    }
    @:keep
    public static function _step( _i:T_inputReader, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        if (!_i._atEOT && (_pos != _i._pos)) {
            return { _0 : ((-1 : GoInt32)), _1 : ((0 : GoInt)) };
        };
        var __tmp__ = _i._r.readRune(), _r:GoInt32 = __tmp__._0, _w:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _i._atEOT = true;
            return { _0 : ((-1 : GoInt32)), _1 : ((0 : GoInt)) };
        };
        _i._pos = _i._pos + (_w);
        return { _0 : _r, _1 : _w };
    }
}
@:keep class T_lazyFlag_static_extension {
    @:keep
    public static function _match( _f:T_lazyFlag, _op:stdgo.regexp.syntax.Syntax.EmptyOp):Bool {
        if (_op == ((0 : GoUInt8))) {
            return true;
        };
        var _r1:GoInt32 = (((_f >> ((32 : GoUnTypedInt))) : GoRune));
        if ((_op & ((1 : GoUInt8))) != ((0 : GoUInt8))) {
            if ((_r1 != ((((("\n" : GoString))).code : GoRune))) && (_r1 >= ((0 : GoInt32)))) {
                return false;
            };
            _op = _op & ((((1 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        };
        if ((_op & ((4 : GoUInt8))) != ((0 : GoUInt8))) {
            if (_r1 >= ((0 : GoInt32))) {
                return false;
            };
            _op = _op & ((((4 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        };
        if (_op == ((0 : GoUInt8))) {
            return true;
        };
        var _r2:GoInt32 = ((_f : GoRune));
        if ((_op & ((2 : GoUInt8))) != ((0 : GoUInt8))) {
            if ((_r2 != ((((("\n" : GoString))).code : GoRune))) && (_r2 >= ((0 : GoInt32)))) {
                return false;
            };
            _op = _op & ((((2 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        };
        if ((_op & ((8 : GoUInt8))) != ((0 : GoUInt8))) {
            if (_r2 >= ((0 : GoInt32))) {
                return false;
            };
            _op = _op & ((((8 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        };
        if (_op == ((0 : GoUInt8))) {
            return true;
        };
        if (stdgo.regexp.syntax.Syntax.isWordChar(_r1) != stdgo.regexp.syntax.Syntax.isWordChar(_r2)) {
            _op = _op & ((((16 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        } else {
            _op = _op & ((((32 : GoUInt8))) ^ ((-1 : GoUnTypedInt)));
        };
        return _op == ((0 : GoUInt8));
    }
}
@:keep class T_runeSlice_static_extension {
    @:keep
    public static function swap( _p:T_runeSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_p != null ? _p[_j] : ((0 : GoInt32)));
            final __tmp__1 = (_p != null ? _p[_i] : ((0 : GoInt32)));
            if (_p != null) _p[_i] = __tmp__0;
            if (_p != null) _p[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _p:T_runeSlice, _i:GoInt, _j:GoInt):Bool {
        return (_p != null ? _p[_i] : ((0 : GoInt32))) < (_p != null ? _p[_j] : ((0 : GoInt32)));
    }
    @:keep
    public static function len( _p:T_runeSlice):GoInt {
        return (_p != null ? _p.length : ((0 : GoInt)));
    }
}
