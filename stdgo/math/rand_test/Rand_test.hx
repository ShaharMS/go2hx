package stdgo.math.rand_test;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _rn = __tmp__0._0;
var _kn = __tmp__0._1;
var _wn = __tmp__0._2;
var _fn = __tmp__0._3;
var _re = __tmp__1._0;
var _ke = __tmp__1._1;
var _we = __tmp__1._2;
var _fe = __tmp__1._3;
var _testSeeds : Slice<GoInt64> = ((new Slice<GoInt64>(((1 : GoInt64)), ((1754801282 : GoInt64)), ((1698661970 : GoInt64)), ((1550503961 : GoInt64))) : Slice<GoInt64>));
var _printgolden : Pointer<Bool> = stdgo.flag.Flag.bool(((("printgolden" : GoString))), false, ((("print golden results for regression test" : GoString))));
var _regressGolden : Slice<AnyInterface> = ((new Slice<AnyInterface>(
Go.toInterface(((((4.668112973579268 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.1601593871172866 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((3.0465834105636 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.06385839451671879 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.8578917487258961 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.784676123472182 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.11225477361256932 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.20173283329802255 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.3468619496201105 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.35601103454384536 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.888376329507869 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.4081362450365698 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.0077753823151994 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.23594100766227588 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((2.777245612300007 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.5202997830662377 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.2842705247770294 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.030307408362776206 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((2.204156824853721 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((2.09891923895058 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.94519615 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.24496509 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.65595627 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.05434384 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.3675872 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.28948045 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.1924386 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.65533215 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.8971697 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.16735445 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.28858566 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.9026048 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.84978026 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.2730468 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.6090802 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.253656 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.7746542 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.017480763 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.78707397 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.7993937 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((0.9451961492941164 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.24496508529377975 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.6559562651954052 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.05434383959970039 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.36758720663245853 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.2894804331565928 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.19243860967493215 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.6553321508148324 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.897169713149801 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.16735444255905835 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.2885856518054551 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.9026048462705047 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.8497802817628735 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.2730468047134829 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.6090801919903561 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.25365600644283687 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.7746542391859803 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.017480762156647272 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.7870739563039942 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.7993936979594545 : GoFloat64)) : GoFloat64))),
Go.toInterface((((("8717895732742165505" : GoInt64)) : GoInt64))),
Go.toInterface((((("2259404117704393152" : GoInt64)) : GoInt64))),
Go.toInterface((((("6050128673802995827" : GoInt64)) : GoInt64))),
Go.toInterface((((("501233450539197794" : GoInt64)) : GoInt64))),
Go.toInterface((((("3390393562759376202" : GoInt64)) : GoInt64))),
Go.toInterface((((("2669985732393126063" : GoInt64)) : GoInt64))),
Go.toInterface((((("1774932891286980153" : GoInt64)) : GoInt64))),
Go.toInterface((((("6044372234677422456" : GoInt64)) : GoInt64))),
Go.toInterface((((("8274930044578894929" : GoInt64)) : GoInt64))),
Go.toInterface((((("1543572285742637646" : GoInt64)) : GoInt64))),
Go.toInterface((((("2661732831099943416" : GoInt64)) : GoInt64))),
Go.toInterface((((("8325060299420976708" : GoInt64)) : GoInt64))),
Go.toInterface((((("7837839688282259259" : GoInt64)) : GoInt64))),
Go.toInterface((((("2518412263346885298" : GoInt64)) : GoInt64))),
Go.toInterface((((("5617773211005988520" : GoInt64)) : GoInt64))),
Go.toInterface((((("2339563716805116249" : GoInt64)) : GoInt64))),
Go.toInterface((((("7144924247938981575" : GoInt64)) : GoInt64))),
Go.toInterface((((("161231572858529631" : GoInt64)) : GoInt64))),
Go.toInterface((((("7259475919510918339" : GoInt64)) : GoInt64))),
Go.toInterface((((("7373105480197164748" : GoInt64)) : GoInt64))),
Go.toInterface(((((2029793274 : GoInt32)) : GoInt32))),
Go.toInterface(((((526058514 : GoInt32)) : GoInt32))),
Go.toInterface(((((1408655353 : GoInt32)) : GoInt32))),
Go.toInterface(((((116702506 : GoInt32)) : GoInt32))),
Go.toInterface(((((789387515 : GoInt32)) : GoInt32))),
Go.toInterface(((((621654496 : GoInt32)) : GoInt32))),
Go.toInterface(((((413258767 : GoInt32)) : GoInt32))),
Go.toInterface(((((1407315077 : GoInt32)) : GoInt32))),
Go.toInterface(((((1926657288 : GoInt32)) : GoInt32))),
Go.toInterface(((((359390928 : GoInt32)) : GoInt32))),
Go.toInterface(((((619732968 : GoInt32)) : GoInt32))),
Go.toInterface(((((1938329147 : GoInt32)) : GoInt32))),
Go.toInterface(((((1824889259 : GoInt32)) : GoInt32))),
Go.toInterface(((((586363548 : GoInt32)) : GoInt32))),
Go.toInterface(((((1307989752 : GoInt32)) : GoInt32))),
Go.toInterface(((((544722126 : GoInt32)) : GoInt32))),
Go.toInterface(((((1663557311 : GoInt32)) : GoInt32))),
Go.toInterface(((((37539650 : GoInt32)) : GoInt32))),
Go.toInterface(((((1690228450 : GoInt32)) : GoInt32))),
Go.toInterface(((((1716684894 : GoInt32)) : GoInt32))),
Go.toInterface(((((0 : GoInt32)) : GoInt32))),
Go.toInterface(((((4 : GoInt32)) : GoInt32))),
Go.toInterface(((((25 : GoInt32)) : GoInt32))),
Go.toInterface(((((310570 : GoInt32)) : GoInt32))),
Go.toInterface(((((857611 : GoInt32)) : GoInt32))),
Go.toInterface(((((621654496 : GoInt32)) : GoInt32))),
Go.toInterface(((((413258767 : GoInt32)) : GoInt32))),
Go.toInterface(((((1407315077 : GoInt32)) : GoInt32))),
Go.toInterface(((((1926657288 : GoInt32)) : GoInt32))),
Go.toInterface(((((0 : GoInt32)) : GoInt32))),
Go.toInterface(((((8 : GoInt32)) : GoInt32))),
Go.toInterface(((((27 : GoInt32)) : GoInt32))),
Go.toInterface(((((367019 : GoInt32)) : GoInt32))),
Go.toInterface(((((209005 : GoInt32)) : GoInt32))),
Go.toInterface(((((307989752 : GoInt32)) : GoInt32))),
Go.toInterface(((((544722126 : GoInt32)) : GoInt32))),
Go.toInterface(((((1663557311 : GoInt32)) : GoInt32))),
Go.toInterface(((((37539650 : GoInt32)) : GoInt32))),
Go.toInterface(((((0 : GoInt32)) : GoInt32))),
Go.toInterface(((((4 : GoInt32)) : GoInt32))),
Go.toInterface((((("8717895732742165505" : GoInt64)) : GoInt64))),
Go.toInterface((((("2259404117704393152" : GoInt64)) : GoInt64))),
Go.toInterface((((("6050128673802995827" : GoInt64)) : GoInt64))),
Go.toInterface((((("501233450539197794" : GoInt64)) : GoInt64))),
Go.toInterface((((("3390393562759376202" : GoInt64)) : GoInt64))),
Go.toInterface((((("2669985732393126063" : GoInt64)) : GoInt64))),
Go.toInterface((((("1774932891286980153" : GoInt64)) : GoInt64))),
Go.toInterface((((("6044372234677422456" : GoInt64)) : GoInt64))),
Go.toInterface((((("8274930044578894929" : GoInt64)) : GoInt64))),
Go.toInterface((((("1543572285742637646" : GoInt64)) : GoInt64))),
Go.toInterface((((("2661732831099943416" : GoInt64)) : GoInt64))),
Go.toInterface((((("8325060299420976708" : GoInt64)) : GoInt64))),
Go.toInterface((((("7837839688282259259" : GoInt64)) : GoInt64))),
Go.toInterface((((("2518412263346885298" : GoInt64)) : GoInt64))),
Go.toInterface((((("5617773211005988520" : GoInt64)) : GoInt64))),
Go.toInterface((((("2339563716805116249" : GoInt64)) : GoInt64))),
Go.toInterface((((("7144924247938981575" : GoInt64)) : GoInt64))),
Go.toInterface((((("161231572858529631" : GoInt64)) : GoInt64))),
Go.toInterface((((("7259475919510918339" : GoInt64)) : GoInt64))),
Go.toInterface((((("7373105480197164748" : GoInt64)) : GoInt64))),
Go.toInterface(((((0 : GoInt64)) : GoInt64))),
Go.toInterface(((((2 : GoInt64)) : GoInt64))),
Go.toInterface(((((19 : GoInt64)) : GoInt64))),
Go.toInterface(((((959842 : GoInt64)) : GoInt64))),
Go.toInterface(((((688912 : GoInt64)) : GoInt64))),
Go.toInterface(((((393126063 : GoInt64)) : GoInt64))),
Go.toInterface(((((89212473 : GoInt64)) : GoInt64))),
Go.toInterface(((((834026388 : GoInt64)) : GoInt64))),
Go.toInterface(((((1577188963 : GoInt64)) : GoInt64))),
Go.toInterface((((("543572285742637646" : GoInt64)) : GoInt64))),
Go.toInterface((((("355889821886249464" : GoInt64)) : GoInt64))),
Go.toInterface((((("8325060299420976708" : GoInt64)) : GoInt64))),
Go.toInterface((((("7837839688282259259" : GoInt64)) : GoInt64))),
Go.toInterface(((((0 : GoInt64)) : GoInt64))),
Go.toInterface(((((0 : GoInt64)) : GoInt64))),
Go.toInterface(((((25 : GoInt64)) : GoInt64))),
Go.toInterface(((((679623 : GoInt64)) : GoInt64))),
Go.toInterface(((((882178 : GoInt64)) : GoInt64))),
Go.toInterface(((((510918339 : GoInt64)) : GoInt64))),
Go.toInterface(((((782454476 : GoInt64)) : GoInt64))),
Go.toInterface(((((0 : GoInt64)) : GoInt64))),
Go.toInterface(((((4 : GoInt64)) : GoInt64))),
Go.toInterface(((((25 : GoInt64)) : GoInt64))),
Go.toInterface(((((310570 : GoInt64)) : GoInt64))),
Go.toInterface(((((857611 : GoInt64)) : GoInt64))),
Go.toInterface(((((621654496 : GoInt64)) : GoInt64))),
Go.toInterface(((((413258767 : GoInt64)) : GoInt64))),
Go.toInterface(((((1407315077 : GoInt64)) : GoInt64))),
Go.toInterface(((((1926657288 : GoInt64)) : GoInt64))),
Go.toInterface((((("543572285742637646" : GoInt64)) : GoInt64))),
Go.toInterface((((("355889821886249464" : GoInt64)) : GoInt64))),
Go.toInterface((((("8325060299420976708" : GoInt64)) : GoInt64))),
Go.toInterface((((("7837839688282259259" : GoInt64)) : GoInt64))),
Go.toInterface(((((0 : GoInt64)) : GoInt64))),
Go.toInterface(((((2 : GoInt64)) : GoInt64))),
Go.toInterface(((((14 : GoInt64)) : GoInt64))),
Go.toInterface(((((515775 : GoInt64)) : GoInt64))),
Go.toInterface(((((839455 : GoInt64)) : GoInt64))),
Go.toInterface(((((690228450 : GoInt64)) : GoInt64))),
Go.toInterface(((((642943070 : GoInt64)) : GoInt64))),
Go.toInterface(((((-0.28158587086436215 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.570933095808067 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-1.6920196326157044 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.1996229111693099 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.9195199291234621 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.8954838794918353 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.41457072128813166 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.48700161491544713 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.1684059662402393 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.37056410998929545 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((1.0156889027029008 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.5174422210625114 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.5565834214413804 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.778320596648391 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-1.8970718197702225 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.5229525761688676 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-1.5515595563231523 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((0.0182029289376123 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.6820951356608795 : GoFloat64)) : GoFloat64))),
Go.toInterface(((((-0.5987943422687668 : GoFloat64)) : GoFloat64))),
Go.toInterface(((new Slice<GoInt>() : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((0 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((0 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((3 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((3 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), ((7 : GoInt)), ((5 : GoInt)), ((2 : GoInt)), ((6 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((5 : GoInt)), ((0 : GoInt)), ((3 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((8 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((4 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((2 : GoInt)), ((6 : GoInt)), ((9 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((8 : GoInt)), ((7 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(
((14 : GoInt)),
((2 : GoInt)),
((0 : GoInt)),
((8 : GoInt)),
((3 : GoInt)),
((5 : GoInt)),
((13 : GoInt)),
((12 : GoInt)),
((1 : GoInt)),
((4 : GoInt)),
((6 : GoInt)),
((7 : GoInt)),
((11 : GoInt)),
((9 : GoInt)),
((15 : GoInt)),
((10 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>() : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((0 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((3 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((4 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((5 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((6 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((4 : GoInt)), ((0 : GoInt)), ((6 : GoInt)), ((8 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((2 : GoInt)), ((7 : GoInt)), ((3 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((8 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((7 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((2 : GoInt)), ((9 : GoInt)), ((0 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(
((0 : GoInt)),
((3 : GoInt)),
((13 : GoInt)),
((2 : GoInt)),
((15 : GoInt)),
((4 : GoInt)),
((10 : GoInt)),
((1 : GoInt)),
((8 : GoInt)),
((14 : GoInt)),
((7 : GoInt)),
((6 : GoInt)),
((12 : GoInt)),
((9 : GoInt)),
((5 : GoInt)),
((11 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>() : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((0 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((0 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((3 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((2 : GoInt)), ((1 : GoInt)), ((7 : GoInt)), ((0 : GoInt)), ((6 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((8 : GoInt)), ((7 : GoInt)), ((5 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoInt>(((1 : GoInt)), ((0 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((6 : GoInt)), ((9 : GoInt)), ((8 : GoInt)), ((3 : GoInt)), ((4 : GoInt))) : Slice<GoInt>))),
Go.toInterface(((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((148 : GoUInt8)), ((253 : GoUInt8)), ((194 : GoUInt8)), ((250 : GoUInt8)), ((47 : GoUInt8)), ((252 : GoUInt8)), ((192 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((65 : GoUInt8)), ((211 : GoUInt8)), ((255 : GoUInt8)), ((18 : GoUInt8)), ((4 : GoUInt8)), ((91 : GoUInt8)), ((115 : GoUInt8)), ((200 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((110 : GoUInt8)), ((79 : GoUInt8)), ((249 : GoUInt8)), ((95 : GoUInt8)), ((246 : GoUInt8)), ((98 : GoUInt8)), ((165 : GoUInt8)), ((238 : GoUInt8)), ((232 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((42 : GoUInt8)), ((189 : GoUInt8)), ((244 : GoUInt8)), ((74 : GoUInt8)), ((45 : GoUInt8)), ((11 : GoUInt8)), ((117 : GoUInt8)), ((251 : GoUInt8)), ((24 : GoUInt8)), ((13 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((175 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((72 : GoUInt8)), ((167 : GoUInt8)), ((158 : GoUInt8)), ((224 : GoUInt8)), ((177 : GoUInt8)), ((13 : GoUInt8)), ((57 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((70 : GoUInt8)), ((81 : GoUInt8)), ((133 : GoUInt8)), ((15 : GoUInt8)), ((212 : GoUInt8)), ((161 : GoUInt8)), ((120 : GoUInt8)), ((137 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((46 : GoUInt8)), ((226 : GoUInt8)), ((133 : GoUInt8)), ((236 : GoUInt8)), ((225 : GoUInt8)), ((81 : GoUInt8)), ((20 : GoUInt8)), ((85 : GoUInt8)), ((120 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((8 : GoUInt8)), ((117 : GoUInt8)), ((214 : GoUInt8)), ((78 : GoUInt8)), ((226 : GoUInt8)), ((211 : GoUInt8)), ((208 : GoUInt8)), ((208 : GoUInt8)), ((222 : GoUInt8)), ((107 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((248 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((249 : GoUInt8)), ((180 : GoUInt8)), ((76 : GoUInt8)), ((232 : GoUInt8)), ((95 : GoUInt8)), ((240 : GoUInt8)), ((68 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((198 : GoUInt8)), ((177 : GoUInt8)), ((248 : GoUInt8)), ((59 : GoUInt8)), ((142 : GoUInt8)), ((136 : GoUInt8)), ((59 : GoUInt8)), ((191 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((133 : GoUInt8)), ((122 : GoUInt8)), ((171 : GoUInt8)), ((153 : GoUInt8)), ((197 : GoUInt8)), ((178 : GoUInt8)), ((82 : GoUInt8)), ((199 : GoUInt8)), ((66 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((156 : GoUInt8)), ((50 : GoUInt8)), ((243 : GoUInt8)), ((168 : GoUInt8)), ((174 : GoUInt8)), ((183 : GoUInt8)), ((158 : GoUInt8)), ((248 : GoUInt8)), ((86 : GoUInt8)), ((246 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((89 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((193 : GoUInt8)), ((143 : GoUInt8)), ((13 : GoUInt8)), ((206 : GoUInt8)), ((204 : GoUInt8)), ((119 : GoUInt8)), ((199 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((94 : GoUInt8)), ((122 : GoUInt8)), ((129 : GoUInt8)), ((191 : GoUInt8)), ((222 : GoUInt8)), ((39 : GoUInt8)), ((95 : GoUInt8)), ((103 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((207 : GoUInt8)), ((226 : GoUInt8)), ((66 : GoUInt8)), ((207 : GoUInt8)), ((60 : GoUInt8)), ((195 : GoUInt8)), ((84 : GoUInt8)), ((243 : GoUInt8)), ((237 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface(((new Slice<GoUInt8>(((226 : GoUInt8)), ((214 : GoUInt8)), ((190 : GoUInt8)), ((204 : GoUInt8)), ((78 : GoUInt8)), ((163 : GoUInt8)), ((174 : GoUInt8)), ((94 : GoUInt8)), ((136 : GoUInt8)), ((82 : GoUInt8))) : Slice<GoUInt8>))),
Go.toInterface((((("4059586549" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1052117029 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("2817310706" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((233405013 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1578775030 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1243308993 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((826517535 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("2814630155" : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3853314576" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((718781857 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1239465936 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3876658295" : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3649778518" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1172727096 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("2615979505" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1089444252 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3327114623" : GoUInt32)) : GoUInt32))),
Go.toInterface(((((75079301 : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3380456901" : GoUInt32)) : GoUInt32))),
Go.toInterface((((("3433369789" : GoUInt32)) : GoUInt32))),
Go.toInterface((((("8717895732742165505" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("2259404117704393152" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("6050128673802995827" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("9724605487393973602" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("12613765599614152010" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("11893357769247901871" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("1774932891286980153" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("15267744271532198264" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("17498302081433670737" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("1543572285742637646" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("11885104867954719224" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("17548432336275752516" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("7837839688282259259" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("2518412263346885298" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("5617773211005988520" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("11562935753659892057" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("16368296284793757383" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("161231572858529631" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("16482847956365694147" : GoUInt64)) : GoUInt64))),
Go.toInterface((((("16596477517051940556" : GoUInt64)) : GoUInt64)))) : Slice<AnyInterface>));
var __tmp__0 = getNormalDistributionParameters();
var __tmp__1 = getExponentialDistributionParameters();
@:structInit @:using(stdgo.math.rand_test.Rand_test.T_statsResults_static_extension) class T_statsResults {
    @:keep
    public function _checkSimilarDistribution(_expected:T_statsResults):Error {
        var _this = this;
        _this;
        if (!_nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("mean %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._mean), Go.toInterface(_expected._mean), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        if (!_nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("stddev %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._stddev), Go.toInterface(_expected._stddev), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        return ((null : stdgo.Error));
    }
    public var _mean : GoFloat64 = ((0 : GoFloat64));
    public var _stddev : GoFloat64 = ((0 : GoFloat64));
    public var _closeEnough : GoFloat64 = ((0 : GoFloat64));
    public var _maxError : GoFloat64 = ((0 : GoFloat64));
    public function new(?_mean:GoFloat64, ?_stddev:GoFloat64, ?_closeEnough:GoFloat64, ?_maxError:GoFloat64) {
        if (_mean != null) this._mean = _mean;
        if (_stddev != null) this._stddev = _stddev;
        if (_closeEnough != null) this._closeEnough = _closeEnough;
        if (_maxError != null) this._maxError = _maxError;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statsResults(_mean, _stddev, _closeEnough, _maxError);
    }
}
@:structInit @:local class T__struct_0 {
    public var _name : GoString = (("" : GoString));
    public var _fn : () -> GoInt = null;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_fn) + "}";
    public function new(?_name:GoString, ?_fn:() -> GoInt, ?toString) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _fn);
    }
}
function example():Void {
        stdgo.math.rand.Rand.seed(((42 : GoInt64)));
        var _answers:Slice<GoString> = ((new Slice<GoString>(
((("It is certain" : GoString))),
((("It is decidedly so" : GoString))),
((("Without a doubt" : GoString))),
((("Yes definitely" : GoString))),
((("You may rely on it" : GoString))),
((("As I see it yes" : GoString))),
((("Most likely" : GoString))),
((("Outlook good" : GoString))),
((("Yes" : GoString))),
((("Signs point to yes" : GoString))),
((("Reply hazy try again" : GoString))),
((("Ask again later" : GoString))),
((("Better not tell you now" : GoString))),
((("Cannot predict now" : GoString))),
((("Concentrate and ask again" : GoString))),
((("Don\'t count on it" : GoString))),
((("My reply is no" : GoString))),
((("My sources say no" : GoString))),
((("Outlook not so good" : GoString))),
((("Very doubtful" : GoString)))) : Slice<GoString>));
        stdgo.fmt.Fmt.println(((("Magic 8-Ball says:" : GoString))), (_answers != null ? _answers[stdgo.math.rand.Rand.intn((_answers != null ? _answers.length : ((0 : GoInt))))] : (("" : GoString))));
    }
function example_rand():Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _r:Ref<Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(((99 : GoInt64))));
            var _w:Ref<stdgo.text.tabwriter.Tabwriter.Writer> = stdgo.text.tabwriter.Tabwriter.newWriter(stdgo.os.Os.stdout, ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), (((((" " : GoString))).code : GoRune)), ((0 : GoUInt)));
            __deferstack__.unshift(() -> _w.flush());
            var _show:(GoString, AnyInterface, AnyInterface, AnyInterface) -> Void = function(_name:GoString, _v1:AnyInterface, _v2:AnyInterface, _v3:AnyInterface):Void {
                stdgo.fmt.Fmt.fprintf(_w, ((("%s\t%v\t%v\t%v\n" : GoString))), Go.toInterface(_name), Go.toInterface(_v1), Go.toInterface(_v2), Go.toInterface(_v3));
            };
            _show(((("Float32" : GoString))), Go.toInterface(_r.float32()), Go.toInterface(_r.float32()), Go.toInterface(_r.float32()));
            _show(((("Float64" : GoString))), Go.toInterface(_r.float64()), Go.toInterface(_r.float64()), Go.toInterface(_r.float64()));
            _show(((("ExpFloat64" : GoString))), Go.toInterface(_r.expFloat64()), Go.toInterface(_r.expFloat64()), Go.toInterface(_r.expFloat64()));
            _show(((("NormFloat64" : GoString))), Go.toInterface(_r.normFloat64()), Go.toInterface(_r.normFloat64()), Go.toInterface(_r.normFloat64()));
            _show(((("Int31" : GoString))), Go.toInterface(_r.int31()), Go.toInterface(_r.int31()), Go.toInterface(_r.int31()));
            _show(((("Int63" : GoString))), Go.toInterface(_r.int63()), Go.toInterface(_r.int63()), Go.toInterface(_r.int63()));
            _show(((("Uint32" : GoString))), Go.toInterface(_r.uint32()), Go.toInterface(_r.uint32()), Go.toInterface(_r.uint32()));
            _show(((("Intn(10)" : GoString))), Go.toInterface(_r.intn(((10 : GoInt)))), Go.toInterface(_r.intn(((10 : GoInt)))), Go.toInterface(_r.intn(((10 : GoInt)))));
            _show(((("Int31n(10)" : GoString))), Go.toInterface(_r.int31n(((10 : GoInt32)))), Go.toInterface(_r.int31n(((10 : GoInt32)))), Go.toInterface(_r.int31n(((10 : GoInt32)))));
            _show(((("Int63n(10)" : GoString))), Go.toInterface(_r.int63n(((10 : GoInt64)))), Go.toInterface(_r.int63n(((10 : GoInt64)))), Go.toInterface(_r.int63n(((10 : GoInt64)))));
            _show(((("Perm" : GoString))), Go.toInterface(_r.perm(((5 : GoInt)))), Go.toInterface(_r.perm(((5 : GoInt)))), Go.toInterface(_r.perm(((5 : GoInt)))));
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
                return;
            };
        };
    }
function examplePerm():Void {
        for (_0 => _value in stdgo.math.rand.Rand.perm(((3 : GoInt)))) {
            stdgo.fmt.Fmt.println(_value);
        };
    }
function exampleShuffle():Void {
        var _words:Slice<GoString> = stdgo.strings.Strings.fields(((("ink runs from the corners of my mouth" : GoString))));
        stdgo.math.rand.Rand.shuffle((_words != null ? _words.length : ((0 : GoInt))), function(_i:GoInt, _j:GoInt):Void {
            {
                final __tmp__0 = (_words != null ? _words[_j] : (("" : GoString)));
                final __tmp__1 = (_words != null ? _words[_i] : (("" : GoString)));
                if (_words != null) _words[_i] = __tmp__0;
                if (_words != null) _words[_j] = __tmp__1;
            };
        });
        stdgo.fmt.Fmt.println(_words);
    }
function exampleShuffle_slicesInUnison():Void {
        var _numbers:Slice<GoUInt8> = ((((("12345" : GoString))) : Slice<GoByte>));
        var _letters:Slice<GoUInt8> = ((((("ABCDE" : GoString))) : Slice<GoByte>));
        stdgo.math.rand.Rand.shuffle((_numbers != null ? _numbers.length : ((0 : GoInt))), function(_i:GoInt, _j:GoInt):Void {
            {
                final __tmp__0 = (_numbers != null ? _numbers[_j] : ((0 : GoUInt8)));
                final __tmp__1 = (_numbers != null ? _numbers[_i] : ((0 : GoUInt8)));
                if (_numbers != null) _numbers[_i] = __tmp__0;
                if (_numbers != null) _numbers[_j] = __tmp__1;
            };
            {
                final __tmp__0 = (_letters != null ? _letters[_j] : ((0 : GoUInt8)));
                final __tmp__1 = (_letters != null ? _letters[_i] : ((0 : GoUInt8)));
                if (_letters != null) _letters[_i] = __tmp__0;
                if (_letters != null) _letters[_j] = __tmp__1;
            };
        });
        for (_i => _ in _numbers) {
            stdgo.fmt.Fmt.printf(((("%c: %c\n" : GoString))), Go.toInterface((_letters != null ? _letters[_i] : ((0 : GoUInt8)))), Go.toInterface((_numbers != null ? _numbers[_i] : ((0 : GoUInt8)))));
        };
    }
function exampleIntn():Void {
        stdgo.math.rand.Rand.seed(((86 : GoInt64)));
        stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn(((100 : GoInt))));
        stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn(((100 : GoInt))));
        stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn(((100 : GoInt))));
    }
function testConcurrent(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
            __deferstack__.unshift(() -> _wg.wait());
            _wg.add(((10 : GoInt)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((10 : GoInt)), _i++, {
                    Go.routine(() -> {
                        var a = function(_i:GoInt):Void {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((997 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                            {
                                var _j:GoInt = ((0 : GoInt));
                                Go.cfor(_j < ((10 : GoInt)), _j++, {
                                    var _seed:GoInt64 = ((0 : GoInt64));
                                    _seed = _seed + (((expFloat64() : GoInt64)));
                                    _seed = _seed + (((float32() : GoInt64)));
                                    _seed = _seed + (((float64() : GoInt64)));
                                    _seed = _seed + (((intn(int()) : GoInt64)));
                                    _seed = _seed + (((int31n(int31()) : GoInt64)));
                                    _seed = _seed + (((int63n(int63()) : GoInt64)));
                                    _seed = _seed + (((normFloat64() : GoInt64)));
                                    _seed = _seed + (((uint32() : GoInt64)));
                                    _seed = _seed + (((uint64() : GoInt64)));
                                    for (_0 => _p in perm(((10 : GoInt)))) {
                                        _seed = _seed + (((_p : GoInt64)));
                                    };
                                    read(_buf);
                                    for (_1 => _b in _buf) {
                                        _seed = _seed + (((_b : GoInt64)));
                                    };
                                    seed((((_i * _j) : GoInt64)) * _seed);
                                });
                            };
                        };
                        a(_i);
                    });
                });
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
                return;
            };
        };
    }
function _max(_a:GoFloat64, _b:GoFloat64):GoFloat64 {
        if (_a > _b) {
            return _a;
        };
        return _b;
    }
function _nearEqual(_a:GoFloat64, _b:GoFloat64, _closeEnough:GoFloat64, _maxError:GoFloat64):Bool {
        var _absDiff:GoFloat64 = stdgo.math.Math.abs(_a - _b);
        if (_absDiff < _closeEnough) {
            return true;
        };
        return (_absDiff / _max(stdgo.math.Math.abs(_a), stdgo.math.Math.abs(_b))) < _maxError;
    }
function _getStatsResults(_samples:Slice<GoFloat64>):T_statsResults {
        var _res:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = new stdgo.math.rand_test.Rand_test.T_statsResults();
        var _sum:GoFloat64 = ((0 : GoFloat64)), _squaresum:GoFloat64 = ((0 : GoFloat64));
        for (_0 => _s in _samples) {
            _sum = _sum + (_s);
            _squaresum = _squaresum + (_s * _s);
        };
        _res._mean = _sum / (((_samples != null ? _samples.length : ((0 : GoInt))) : GoFloat64));
        _res._stddev = stdgo.math.Math.sqrt((_squaresum / (((_samples != null ? _samples.length : ((0 : GoInt))) : GoFloat64))) - (_res._mean * _res._mean));
        return _res;
    }
function _checkSampleDistribution(_t:stdgo.testing.Testing.T_, _samples:Slice<GoFloat64>, _expected:T_statsResults):Void {
        _t.helper();
        var _actual:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = _getStatsResults(_samples);
        var _err:stdgo.Error = _actual._checkSimilarDistribution(_expected);
        if (_err != null) {
            _t.errorf(_err.error());
        };
    }
function _checkSampleSliceDistributions(_t:stdgo.testing.Testing.T_, _samples:Slice<GoFloat64>, _nslices:GoInt, _expected:T_statsResults):Void {
        _t.helper();
        var _chunk:GoInt = (_samples != null ? _samples.length : ((0 : GoInt))) / _nslices;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _nslices, _i++, {
                var _low:GoInt = _i * _chunk;
                var _high:GoInt = ((0 : GoInt));
                if (_i == (_nslices - ((1 : GoInt)))) {
                    _high = (_samples != null ? _samples.length : ((0 : GoInt))) - ((1 : GoInt));
                } else {
                    _high = (_i + ((1 : GoInt))) * _chunk;
                };
                _checkSampleDistribution(_t, ((_samples.__slice__(_low, _high) : Slice<GoFloat64>)), _expected);
            });
        };
    }
function _generateNormalSamples(_nsamples:GoInt, _mean:GoFloat64, _stddev:GoFloat64, _seed:GoInt64):Slice<GoFloat64> {
        var _r:Ref<Rand> = new_(newSource(_seed));
        var _samples:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_nsamples : GoInt)).toBasic()) ((0 : GoFloat64))]);
        for (_i => _ in _samples) {
            if (_samples != null) _samples[_i] = (_r.normFloat64() * _stddev) + _mean;
        };
        return _samples;
    }
function _testNormalDistribution(_t:stdgo.testing.Testing.T_, _nsamples:GoInt, _mean:GoFloat64, _stddev:GoFloat64, _seed:GoInt64):Void {
        var _samples:Slice<GoFloat64> = _generateNormalSamples(_nsamples, _mean, _stddev, _seed);
        var _errorScale:GoFloat64 = _max(((1 : GoFloat64)), _stddev);
        var _expected:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, ((0.1 : GoFloat64)) * _errorScale, ((0.08 : GoFloat64)) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults));
        _checkSampleDistribution(_t, _samples, _expected);
        _checkSampleSliceDistributions(_t, _samples, ((2 : GoInt)), _expected);
        _checkSampleSliceDistributions(_t, _samples, ((7 : GoInt)), _expected);
    }
function testStandardNormalValues(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _seed in _testSeeds) {
            _testNormalDistribution(_t, ((10000 : GoInt)), ((0 : GoFloat64)), ((1 : GoFloat64)), _seed);
        };
    }
function testNonStandardNormalValues(_t:stdgo.testing.Testing.T_):Void {
        var _sdmax:GoFloat64 = ((1000 : GoFloat64));
        var _mmax:GoFloat64 = ((1000 : GoFloat64));
        if (stdgo.testing.Testing.short()) {
            _sdmax = ((5 : GoFloat64));
            _mmax = ((5 : GoFloat64));
        };
        {
            var _sd:GoFloat64 = ((0.5 : GoFloat64));
            Go.cfor(_sd < _sdmax, _sd = _sd * (((2 : GoFloat64))), {
                {
                    var _m:GoFloat64 = ((0.5 : GoFloat64));
                    Go.cfor(_m < _mmax, _m = _m * (((2 : GoFloat64))), {
                        for (_0 => _seed in _testSeeds) {
                            _testNormalDistribution(_t, ((10000 : GoInt)), _m, _sd, _seed);
                            if (stdgo.testing.Testing.short()) {
                                break;
                            };
                        };
                    });
                };
            });
        };
    }
function _generateExponentialSamples(_nsamples:GoInt, _rate:GoFloat64, _seed:GoInt64):Slice<GoFloat64> {
        var _r:Ref<Rand> = new_(newSource(_seed));
        var _samples:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_nsamples : GoInt)).toBasic()) ((0 : GoFloat64))]);
        for (_i => _ in _samples) {
            if (_samples != null) _samples[_i] = _r.expFloat64() / _rate;
        };
        return _samples;
    }
function _testExponentialDistribution(_t:stdgo.testing.Testing.T_, _nsamples:GoInt, _rate:GoFloat64, _seed:GoInt64):Void {
        var _mean:GoFloat64 = ((1 : GoFloat64)) / _rate;
        var _stddev:GoFloat64 = _mean;
        var _samples:Slice<GoFloat64> = _generateExponentialSamples(_nsamples, _rate, _seed);
        var _errorScale:GoFloat64 = _max(((1 : GoFloat64)), ((1 : GoFloat64)) / _rate);
        var _expected:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, ((0.1 : GoFloat64)) * _errorScale, ((0.2 : GoFloat64)) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults));
        _checkSampleDistribution(_t, _samples, _expected);
        _checkSampleSliceDistributions(_t, _samples, ((2 : GoInt)), _expected);
        _checkSampleSliceDistributions(_t, _samples, ((7 : GoInt)), _expected);
    }
function testStandardExponentialValues(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _seed in _testSeeds) {
            _testExponentialDistribution(_t, ((10000 : GoInt)), ((1 : GoFloat64)), _seed);
        };
    }
function testNonStandardExponentialValues(_t:stdgo.testing.Testing.T_):Void {
        {
            var _rate:GoFloat64 = ((0.05 : GoFloat64));
            Go.cfor(_rate < ((10 : GoFloat64)), _rate = _rate * (((2 : GoFloat64))), {
                for (_0 => _seed in _testSeeds) {
                    _testExponentialDistribution(_t, ((10000 : GoInt)), _rate, _seed);
                    if (stdgo.testing.Testing.short()) {
                        break;
                    };
                };
            });
        };
    }
function _initNorm():{ var _0 : Slice<GoUInt32>; var _1 : Slice<GoFloat32>; var _2 : Slice<GoFloat32>; } {
        var _testKn:Slice<GoUInt32> = ((null : Slice<GoUInt32>)), _testWn:Slice<GoFloat32> = ((null : Slice<GoFloat32>)), _testFn:Slice<GoFloat32> = ((null : Slice<GoFloat32>));
        {};
        var _dn:GoFloat64 = _rn, _tn:GoFloat64 = _dn, _vn:GoFloat64 = ((0.00991256303526217 : GoFloat64));
        _testKn = new Slice<GoUInt32>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
        _testWn = new Slice<GoFloat32>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        _testFn = new Slice<GoFloat32>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        var _q:GoFloat64 = _vn / stdgo.math.Math.exp((((-0.5 : GoFloat64)) * _dn) * _dn);
        if (_testKn != null) _testKn[((0 : GoInt))] = ((((_dn / _q) * ((2.147483648e+09 : GoFloat64))) : GoUInt32));
        if (_testKn != null) _testKn[((1 : GoInt))] = ((0 : GoUInt32));
        if (_testWn != null) _testWn[((0 : GoInt))] = (((_q / ((2.147483648e+09 : GoFloat64))) : GoFloat32));
        if (_testWn != null) _testWn[((127 : GoInt))] = (((_dn / ((2.147483648e+09 : GoFloat64))) : GoFloat32));
        if (_testFn != null) _testFn[((0 : GoInt))] = ((1 : GoFloat32));
        if (_testFn != null) _testFn[((127 : GoInt))] = ((stdgo.math.Math.exp((((-0.5 : GoFloat64)) * _dn) * _dn) : GoFloat32));
        {
            var _i:GoInt = ((126 : GoInt));
            Go.cfor(_i >= ((1 : GoInt)), _i--, {
                _dn = stdgo.math.Math.sqrt(((-2 : GoFloat64)) * stdgo.math.Math.log((_vn / _dn) + stdgo.math.Math.exp((((-0.5 : GoFloat64)) * _dn) * _dn)));
                if (_testKn != null) _testKn[_i + ((1 : GoInt))] = ((((_dn / _tn) * ((2.147483648e+09 : GoFloat64))) : GoUInt32));
                _tn = _dn;
                if (_testFn != null) _testFn[_i] = ((stdgo.math.Math.exp((((-0.5 : GoFloat64)) * _dn) * _dn) : GoFloat32));
                if (_testWn != null) _testWn[_i] = (((_dn / ((2.147483648e+09 : GoFloat64))) : GoFloat32));
            });
        };
        return { _0 : _testKn, _1 : _testWn, _2 : _testFn };
    }
function _initExp():{ var _0 : Slice<GoUInt32>; var _1 : Slice<GoFloat32>; var _2 : Slice<GoFloat32>; } {
        var _testKe:Slice<GoUInt32> = ((null : Slice<GoUInt32>)), _testWe:Slice<GoFloat32> = ((null : Slice<GoFloat32>)), _testFe:Slice<GoFloat32> = ((null : Slice<GoFloat32>));
        {};
        var _de:GoFloat64 = _re, _te:GoFloat64 = _de, _ve:GoFloat64 = ((0.003949659822581557 : GoFloat64));
        _testKe = new Slice<GoUInt32>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
        _testWe = new Slice<GoFloat32>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        _testFe = new Slice<GoFloat32>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        var _q:GoFloat64 = _ve / stdgo.math.Math.exp(-_de);
        if (_testKe != null) _testKe[((0 : GoInt))] = ((((_de / _q) * ((4.294967296e+09 : GoFloat64))) : GoUInt32));
        if (_testKe != null) _testKe[((1 : GoInt))] = ((0 : GoUInt32));
        if (_testWe != null) _testWe[((0 : GoInt))] = (((_q / ((4.294967296e+09 : GoFloat64))) : GoFloat32));
        if (_testWe != null) _testWe[((255 : GoInt))] = (((_de / ((4.294967296e+09 : GoFloat64))) : GoFloat32));
        if (_testFe != null) _testFe[((0 : GoInt))] = ((1 : GoFloat32));
        if (_testFe != null) _testFe[((255 : GoInt))] = ((stdgo.math.Math.exp(-_de) : GoFloat32));
        {
            var _i:GoInt = ((254 : GoInt));
            Go.cfor(_i >= ((1 : GoInt)), _i--, {
                _de = -stdgo.math.Math.log((_ve / _de) + stdgo.math.Math.exp(-_de));
                if (_testKe != null) _testKe[_i + ((1 : GoInt))] = ((((_de / _te) * ((4.294967296e+09 : GoFloat64))) : GoUInt32));
                _te = _de;
                if (_testFe != null) _testFe[_i] = ((stdgo.math.Math.exp(-_de) : GoFloat32));
                if (_testWe != null) _testWe[_i] = (((_de / ((4.294967296e+09 : GoFloat64))) : GoFloat32));
            });
        };
        return { _0 : _testKe, _1 : _testWe, _2 : _testFe };
    }
function _compareUint32Slices(_s1:Slice<GoUInt32>, _s2:Slice<GoUInt32>):GoInt {
        if ((_s1 != null ? _s1.length : ((0 : GoInt))) != (_s2 != null ? _s2.length : ((0 : GoInt)))) {
            if ((_s1 != null ? _s1.length : ((0 : GoInt))) > (_s2 != null ? _s2.length : ((0 : GoInt)))) {
                return (_s2 != null ? _s2.length : ((0 : GoInt))) + ((1 : GoInt));
            };
            return (_s1 != null ? _s1.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        for (_i => _ in _s1) {
            if ((_s1 != null ? _s1[_i] : ((0 : GoUInt32))) != (_s2 != null ? _s2[_i] : ((0 : GoUInt32)))) {
                return _i;
            };
        };
        return ((-1 : GoInt));
    }
function _compareFloat32Slices(_s1:Slice<GoFloat32>, _s2:Slice<GoFloat32>):GoInt {
        if ((_s1 != null ? _s1.length : ((0 : GoInt))) != (_s2 != null ? _s2.length : ((0 : GoInt)))) {
            if ((_s1 != null ? _s1.length : ((0 : GoInt))) > (_s2 != null ? _s2.length : ((0 : GoInt)))) {
                return (_s2 != null ? _s2.length : ((0 : GoInt))) + ((1 : GoInt));
            };
            return (_s1 != null ? _s1.length : ((0 : GoInt))) + ((1 : GoInt));
        };
        for (_i => _ in _s1) {
            if (!_nearEqual((((_s1 != null ? _s1[_i] : ((0 : GoFloat32))) : GoFloat64)), (((_s2 != null ? _s2[_i] : ((0 : GoFloat32))) : GoFloat64)), ((0 : GoFloat64)), ((1e-07 : GoFloat64)))) {
                return _i;
            };
        };
        return ((-1 : GoInt));
    }
function testNormTables(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = _initNorm(), _testKn:Slice<GoUInt32> = __tmp__._0, _testWn:Slice<GoFloat32> = __tmp__._1, _testFn:Slice<GoFloat32> = __tmp__._2;
        {
            var _i:GoInt = _compareUint32Slices(((_kn.__slice__(((0 : GoInt))) : Slice<GoUInt32>)), _testKn);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("kn disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_kn != null ? _kn[_i] : ((0 : GoUInt32)))), Go.toInterface((_testKn != null ? _testKn[_i] : ((0 : GoUInt32)))));
            };
        };
        {
            var _i:GoInt = _compareFloat32Slices(((_wn.__slice__(((0 : GoInt))) : Slice<GoFloat32>)), _testWn);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("wn disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_wn != null ? _wn[_i] : ((0 : GoFloat32)))), Go.toInterface((_testWn != null ? _testWn[_i] : ((0 : GoFloat32)))));
            };
        };
        {
            var _i:GoInt = _compareFloat32Slices(((_fn.__slice__(((0 : GoInt))) : Slice<GoFloat32>)), _testFn);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("fn disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_fn != null ? _fn[_i] : ((0 : GoFloat32)))), Go.toInterface((_testFn != null ? _testFn[_i] : ((0 : GoFloat32)))));
            };
        };
    }
function testExpTables(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = _initExp(), _testKe:Slice<GoUInt32> = __tmp__._0, _testWe:Slice<GoFloat32> = __tmp__._1, _testFe:Slice<GoFloat32> = __tmp__._2;
        {
            var _i:GoInt = _compareUint32Slices(((_ke.__slice__(((0 : GoInt))) : Slice<GoUInt32>)), _testKe);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("ke disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_ke != null ? _ke[_i] : ((0 : GoUInt32)))), Go.toInterface((_testKe != null ? _testKe[_i] : ((0 : GoUInt32)))));
            };
        };
        {
            var _i:GoInt = _compareFloat32Slices(((_we.__slice__(((0 : GoInt))) : Slice<GoFloat32>)), _testWe);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("we disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_we != null ? _we[_i] : ((0 : GoFloat32)))), Go.toInterface((_testWe != null ? _testWe[_i] : ((0 : GoFloat32)))));
            };
        };
        {
            var _i:GoInt = _compareFloat32Slices(((_fe.__slice__(((0 : GoInt))) : Slice<GoFloat32>)), _testFe);
            if (_i >= ((0 : GoInt))) {
                _t.errorf(((("fe disagrees at index %v; %v != %v" : GoString))), Go.toInterface(_i), Go.toInterface((_fe != null ? _fe[_i] : ((0 : GoFloat32)))), Go.toInterface((_testFe != null ? _testFe[_i] : ((0 : GoFloat32)))));
            };
        };
    }
function _hasSlowFloatingPoint():Bool {
        if (((("wasm" : GoString))) == ((("arm" : GoString)))) {
            return stdgo.os.Os.getenv(((("GOARM" : GoString)))) == ((("5" : GoString)));
        } else if (((("wasm" : GoString))) == ((("mips" : GoString))) || ((("wasm" : GoString))) == ((("mipsle" : GoString))) || ((("wasm" : GoString))) == ((("mips64" : GoString))) || ((("wasm" : GoString))) == ((("mips64le" : GoString)))) {
            return true;
        };
        return false;
    }
function testFloat32(_t:stdgo.testing.Testing.T_):Void {
        var _num:GoInt = ((((1e+07 : GoInt)) : GoInt));
        if (stdgo.testing.Testing.short() && ((stdgo.internal.testenv.Testenv.builder() == ((("" : GoString)))) || _hasSlowFloatingPoint())) {
            _num = _num / (((100 : GoInt)));
        };
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _ct:GoInt = ((0 : GoInt));
            Go.cfor(_ct < _num, _ct++, {
                var _f:GoFloat32 = _r.float32();
                if (_f >= ((1 : GoFloat32))) {
                    _t.fatal(Go.toInterface(((("Float32() should be in range [0,1). ct:" : GoString)))), Go.toInterface(_ct), Go.toInterface(((("f:" : GoString)))), Go.toInterface(_f));
                };
            });
        };
    }
function _testReadUniformity(_t:stdgo.testing.Testing.T_, _n:GoInt, _seed:GoInt64):Void {
        var _r:Ref<Rand> = new_(newSource(_seed));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _r.read(_buf), _nRead:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Read err %v" : GoString))), Go.toInterface(_err));
        };
        if (_nRead != _n) {
            _t.errorf(((("Read returned unexpected n; %d != %d" : GoString))), Go.toInterface(_nRead), Go.toInterface(_n));
        };
        var _mean:GoFloat64 = ((127.5 : GoFloat64)), _stddev:GoFloat64 = ((256 : GoFloat64)) / stdgo.math.Math.sqrt(((12 : GoFloat64))), _errorScale:GoFloat64 = _stddev / stdgo.math.Math.sqrt(((_n : GoFloat64)));
        var _expected:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, ((0.1 : GoFloat64)) * _errorScale, ((0.08 : GoFloat64)) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults));
        var _samples:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoFloat64))]);
        for (_i => _val in _buf) {
            if (_samples != null) _samples[_i] = ((_val : GoFloat64));
        };
        _checkSampleDistribution(_t, _samples, _expected);
    }
function testReadUniformity(_t:stdgo.testing.Testing.T_):Void {
        var _testBufferSizes:Slice<GoInt> = ((new Slice<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((7 : GoInt)), ((64 : GoInt)), ((1024 : GoInt)), ((65536 : GoInt)), ((1048576 : GoInt))) : Slice<GoInt>));
        for (_0 => _seed in _testSeeds) {
            for (_1 => _n in _testBufferSizes) {
                _testReadUniformity(_t, _n, _seed);
            };
        };
    }
function testReadEmpty(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Read err into empty buffer; %v" : GoString))), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((("Read into empty buffer returned unexpected n of %d" : GoString))), Go.toInterface(_n));
        };
    }
function testReadByOneByte(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        var _b1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.io.Io.readFull(stdgo.testing.iotest.Iotest.oneByteReader(_r), _b1), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("read by one byte: %v" : GoString))), Go.toInterface(_err));
        };
        _r = new_(newSource(((1 : GoInt64))));
        var _b2:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.read(_b2);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("read: %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
            _t.errorf(((("read by one byte vs single read:\n%x\n%x" : GoString))), Go.toInterface(_b1), Go.toInterface(_b2));
        };
    }
function testReadSeedReset(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Rand> = new_(newSource(((42 : GoInt64))));
        var _b1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _r.read(_b1), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("read: %v" : GoString))), Go.toInterface(_err));
        };
        _r.seed(((42 : GoInt64)));
        var _b2:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.read(_b2);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("read: %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
            _t.errorf(((("mismatch after re-seed:\n%x\n%x" : GoString))), Go.toInterface(_b1), Go.toInterface(_b2));
        };
    }
function testShuffleSmall(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = ((0 : GoInt));
            Go.cfor(_n <= ((1 : GoInt)), _n++, {
                _r.shuffle(_n, function(_i:GoInt, _j:GoInt):Void {
                    _t.fatalf(((("swap called, n=%d i=%d j=%d" : GoString))), Go.toInterface(_n), Go.toInterface(_i), Go.toInterface(_j));
                });
            });
        };
    }
function _encodePerm(_s:Slice<GoInt>):GoInt {
        for (_i => _x in _s) {
            var _r:Slice<GoInt> = ((_s.__slice__(_i + ((1 : GoInt))) : Slice<GoInt>));
            for (_j => _y in _r) {
                if (_y > _x) {
                    (_r != null ? _r[_j] : ((0 : GoInt)))--;
                };
            };
        };
        var _m:GoInt = ((0 : GoInt));
        var _fact:GoInt = ((1 : GoInt));
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _m = _m + ((_s != null ? _s[_i] : ((0 : GoInt))) * _fact);
                _fact = _fact * ((_s != null ? _s.length : ((0 : GoInt))) - _i);
            });
        };
        return _m;
    }
function testUniformFactorial(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Rand> = new_(newSource((_testSeeds != null ? _testSeeds[((0 : GoInt))] : ((0 : GoInt64)))));
        var _top:GoInt = ((6 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _top = ((3 : GoInt));
        };
        {
            var _n:GoInt = ((3 : GoInt));
            Go.cfor(_n <= _top, _n++, {
                _t.run(stdgo.fmt.Fmt.sprintf(((("n=%d" : GoString))), Go.toInterface(_n)), function(_t:stdgo.testing.Testing.T_):Void {
                    var _nfact:GoInt = ((1 : GoInt));
                    {
                        var _i:GoInt = ((2 : GoInt));
                        Go.cfor(_i <= _n, _i++, {
                            _nfact = _nfact * (_i);
                        });
                    };
                    var _p:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoInt))]);
                    var _tests:GoArray<stdgo.math.rand_test.Rand_test.T__struct_0> = ((new GoArray<stdgo.math.rand_test.Rand_test.T__struct_0>(((({ _name : ((("Int31n" : GoString))), _fn : function():GoInt {
                        return ((_r.int31n(((_nfact : GoInt32))) : GoInt));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)) == null ? null : (({ _name : ((("Int31n" : GoString))), _fn : function():GoInt {
                        return ((_r.int31n(((_nfact : GoInt32))) : GoInt));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)).__copy__()), ((({ _name : ((("int31n" : GoString))), _fn : function():GoInt {
                        return ((int31nForTest(_r, ((_nfact : GoInt32))) : GoInt));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)) == null ? null : (({ _name : ((("int31n" : GoString))), _fn : function():GoInt {
                        return ((int31nForTest(_r, ((_nfact : GoInt32))) : GoInt));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)).__copy__()), ((({ _name : ((("Perm" : GoString))), _fn : function():GoInt {
                        return _encodePerm(_r.perm(_n));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)) == null ? null : (({ _name : ((("Perm" : GoString))), _fn : function():GoInt {
                        return _encodePerm(_r.perm(_n));
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)).__copy__()), ((({ _name : ((("Shuffle" : GoString))), _fn : function():GoInt {
                        for (_i => _ in _p) {
                            if (_p != null) _p[_i] = _i;
                        };
                        _r.shuffle(_n, function(_i:GoInt, _j:GoInt):Void {
                            {
                                final __tmp__0 = (_p != null ? _p[_j] : ((0 : GoInt)));
                                final __tmp__1 = (_p != null ? _p[_i] : ((0 : GoInt)));
                                if (_p != null) _p[_i] = __tmp__0;
                                if (_p != null) _p[_j] = __tmp__1;
                            };
                        });
                        return _encodePerm(_p);
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)) == null ? null : (({ _name : ((("Shuffle" : GoString))), _fn : function():GoInt {
                        for (_i => _ in _p) {
                            if (_p != null) _p[_i] = _i;
                        };
                        _r.shuffle(_n, function(_i:GoInt, _j:GoInt):Void {
                            {
                                final __tmp__0 = (_p != null ? _p[_j] : ((0 : GoInt)));
                                final __tmp__1 = (_p != null ? _p[_i] : ((0 : GoInt)));
                                if (_p != null) _p[_i] = __tmp__0;
                                if (_p != null) _p[_j] = __tmp__1;
                            };
                        });
                        return _encodePerm(_p);
                    } } : stdgo.math.rand_test.Rand_test.T__struct_0)).__copy__())) : GoArray<stdgo.math.rand_test.Rand_test.T__struct_0>));
                    for (_0 => _test in _tests) {
                        _t.run(_test._name, function(_t:stdgo.testing.Testing.T_):Void {
                            var _nsamples:GoInt = ((10 : GoInt)) * _nfact;
                            if (_nsamples < ((200 : GoInt))) {
                                _nsamples = ((200 : GoInt));
                            };
                            var _samples:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_nsamples : GoInt)).toBasic()) ((0 : GoFloat64))]);
                            for (_i => _ in _samples) {
                                {};
                                var _counts:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_nfact : GoInt)).toBasic()) ((0 : GoInt))]);
                                {
                                    var _i:GoInt = ((0 : GoInt));
                                    Go.cfor(_i < ((1000 : GoInt)), _i++, {
                                        (_counts != null ? _counts[_test._fn()] : ((0 : GoInt)))++;
                                    });
                                };
                                var _want:GoFloat64 = ((1000 : GoFloat64)) / ((_nfact : GoFloat64));
                                var __9672:GoFloat64 = ((0 : GoFloat64));
                                for (_0 => _have in _counts) {
                                    var _err:GoFloat64 = ((_have : GoFloat64)) - _want;
                                    __9672 = __9672 + (_err * _err);
                                };
                                __9672 = __9672 / (_want);
                                if (_samples != null) _samples[_i] = __9672;
                            };
                            var _dof:GoFloat64 = (((_nfact - ((1 : GoInt))) : GoFloat64));
                            var _expected:Ref<stdgo.math.rand_test.Rand_test.T_statsResults> = (({ _mean : _dof, _stddev : stdgo.math.Math.sqrt(((2 : GoFloat64)) * _dof), _closeEnough : 0, _maxError : 0 } : stdgo.math.rand_test.Rand_test.T_statsResults));
                            var _errorScale:GoFloat64 = _max(((1 : GoFloat64)), _expected._stddev);
                            _expected._closeEnough = ((0.1 : GoFloat64)) * _errorScale;
                            _expected._maxError = ((0.08 : GoFloat64));
                            _checkSampleDistribution(_t, _samples, _expected);
                        });
                    };
                });
            });
        };
    }
function benchmarkInt63Threadsafe(_b:stdgo.testing.Testing.B):Void {
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                int63();
            });
        };
    }
function benchmarkInt63ThreadsafeParallel(_b:stdgo.testing.Testing.B):Void {
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            while (_pb.next()) {
                int63();
            };
        });
    }
function benchmarkInt63Unthreadsafe(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.int63();
            });
        };
    }
function benchmarkIntn1000(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.intn(((1000 : GoInt)));
            });
        };
    }
function benchmarkInt63n1000(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.int63n(((1000 : GoInt64)));
            });
        };
    }
function benchmarkInt31n1000(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.int31n(((1000 : GoInt32)));
            });
        };
    }
function benchmarkFloat32(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.float32();
            });
        };
    }
function benchmarkFloat64(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.float64();
            });
        };
    }
function benchmarkPerm3(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.perm(((3 : GoInt)));
            });
        };
    }
function benchmarkPerm30(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.perm(((30 : GoInt)));
            });
        };
    }
function benchmarkPerm30ViaShuffle(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                var _p:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((30 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
                for (_i => _ in _p) {
                    if (_p != null) _p[_i] = _i;
                };
                _r.shuffle(((30 : GoInt)), function(_i:GoInt, _j:GoInt):Void {
                    {
                        final __tmp__0 = (_p != null ? _p[_j] : ((0 : GoInt)));
                        final __tmp__1 = (_p != null ? _p[_i] : ((0 : GoInt)));
                        if (_p != null) _p[_i] = __tmp__0;
                        if (_p != null) _p[_j] = __tmp__1;
                    };
                });
            });
        };
    }
function benchmarkShuffleOverhead(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.shuffle(((52 : GoInt)), function(_i:GoInt, _j:GoInt):Void {
                    if ((((_i < ((0 : GoInt))) || (_i >= ((52 : GoInt)))) || (_j < ((0 : GoInt)))) || (_j >= ((52 : GoInt)))) {
                        _b.fatalf(((("bad swap(%d, %d)" : GoString))), Go.toInterface(_i), Go.toInterface(_j));
                    };
                });
            });
        };
    }
function benchmarkRead3(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.resetTimer();
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.read(_buf);
            });
        };
    }
function benchmarkRead64(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.resetTimer();
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.read(_buf);
            });
        };
    }
function benchmarkRead1000(_b:stdgo.testing.Testing.B):Void {
        var _r:Ref<Rand> = new_(newSource(((1 : GoInt64))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.resetTimer();
        {
            var _n:GoInt = _b.n;
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r.read(_buf);
            });
        };
    }
function testRegress(_t:stdgo.testing.Testing.T_):Void {
        var _int32s:Slice<GoInt32> = ((new Slice<GoInt32>(((1 : GoInt32)), ((10 : GoInt32)), ((32 : GoInt32)), ((1048576 : GoInt32)), ((1048577 : GoInt32)), ((1000000000 : GoInt32)), ((1073741824 : GoInt32)), ((2147483646 : GoInt32)), ((2147483647 : GoInt32))) : Slice<GoInt32>));
        var _int64s:Slice<GoInt64> = ((new Slice<GoInt64>(
((1 : GoInt64)),
((10 : GoInt64)),
((32 : GoInt64)),
((1048576 : GoInt64)),
((1048577 : GoInt64)),
((1000000000 : GoInt64)),
((1073741824 : GoInt64)),
((2147483646 : GoInt64)),
((2147483647 : GoInt64)),
(("1000000000000000000" : GoInt64)),
(("1152921504606846976" : GoInt64)),
(("9223372036854775806" : GoInt64)),
(("9223372036854775807" : GoInt64))) : Slice<GoInt64>));
        var _permSizes:Slice<GoInt> = ((new Slice<GoInt>(((0 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((8 : GoInt)), ((9 : GoInt)), ((10 : GoInt)), ((16 : GoInt))) : Slice<GoInt>));
        var _readBufferSizes:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((7 : GoInt)), ((8 : GoInt)), ((9 : GoInt)), ((10 : GoInt))) : Slice<GoInt>));
        var _r:Ref<Rand> = new_(newSource(((0 : GoInt64))));
        var _rv:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_r)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_r)).__copy__());
        var _n:GoInt = _rv.numMethod();
        var _p:GoInt = ((0 : GoInt));
        if (_printgolden.value) {
            stdgo.fmt.Fmt.printf(((("var regressGolden = []interface{}{\n" : GoString))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _m:stdgo.reflect.Reflect.Method = (_rv.type().method(_i) == null ? null : _rv.type().method(_i).__copy__());
                var _mv:stdgo.reflect.Reflect.Value = (_rv.method(_i) == null ? null : _rv.method(_i).__copy__());
                var _mt:stdgo.reflect.Reflect.Type = _mv.type();
                if (_mt.numOut() == ((0 : GoInt))) {
                    continue;
                };
                _r.seed(((0 : GoInt64)));
                {
                    var _repeat:GoInt = ((0 : GoInt));
                    Go.cfor(_repeat < ((20 : GoInt)), _repeat++, {
                        var _args:Slice<stdgo.reflect.Reflect.Value> = ((null : Slice<stdgo.reflect.Reflect.Value>));
                        var _argstr:GoString = (("" : GoString));
                        if (_mt.numIn() == ((1 : GoInt))) {
                            var _x:AnyInterface = ((null : AnyInterface));
                            {
                                var __switchIndex__ = -1;
                                while (true) {
                                    if (_mt.in_(((0 : GoInt))).kind() == ((2 : GoUInt))) {
                                        if (_m.name == ((("Perm" : GoString)))) {
                                            _x = Go.toInterface((_permSizes != null ? _permSizes[_repeat % (_permSizes != null ? _permSizes.length : ((0 : GoInt)))] : ((0 : GoInt))));
                                            break;
                                        };
                                        var _big:GoInt64 = (_int64s != null ? _int64s[_repeat % (_int64s != null ? _int64s.length : ((0 : GoInt)))] : ((0 : GoInt64)));
                                        if (((((_big : GoInt)) : GoInt64)) != _big) {
                                            _r.int63n(_big);
                                            if (_printgolden.value) {
                                                stdgo.fmt.Fmt.printf(((("\tskipped, // must run printgolden on 64-bit machine\n" : GoString))));
                                            };
                                            _p++;
                                            continue;
                                        };
                                        _x = Go.toInterface(((_big : GoInt)));
                                        break;
                                    } else if (_mt.in_(((0 : GoInt))).kind() == ((5 : GoUInt))) {
                                        _x = Go.toInterface((_int32s != null ? _int32s[_repeat % (_int32s != null ? _int32s.length : ((0 : GoInt)))] : ((0 : GoInt32))));
                                        break;
                                    } else if (_mt.in_(((0 : GoInt))).kind() == ((6 : GoUInt))) {
                                        _x = Go.toInterface((_int64s != null ? _int64s[_repeat % (_int64s != null ? _int64s.length : ((0 : GoInt)))] : ((0 : GoInt64))));
                                        break;
                                    } else if (_mt.in_(((0 : GoInt))).kind() == ((23 : GoUInt))) {
                                        if (_m.name == ((("Read" : GoString)))) {
                                            var _n:GoInt = (_readBufferSizes != null ? _readBufferSizes[_repeat % (_readBufferSizes != null ? _readBufferSizes.length : ((0 : GoInt)))] : ((0 : GoInt)));
                                            _x = Go.toInterface(new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]));
                                        };
                                        break;
                                    };
                                    break;
                                };
                            };
                            _argstr = stdgo.fmt.Fmt.sprint(_x);
                            _args = (_args != null ? _args.__append__((stdgo.reflect.Reflect.valueOf(Go.toInterface(_x)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_x)).__copy__())) : new Slice<stdgo.reflect.Reflect.Value>((stdgo.reflect.Reflect.valueOf(Go.toInterface(_x)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_x)).__copy__())));
                        };
                        var _out:AnyInterface = ((null : AnyInterface));
                        _out = Go.toInterface((_mv.call(_args) != null ? _mv.call(_args)[((0 : GoInt))] : new stdgo.reflect.Reflect.Value()).interface_());
                        if ((_m.name == ((("Int" : GoString)))) || (_m.name == ((("Intn" : GoString))))) {
                            _out = Go.toInterface(((((_out.value : GoInt)) : GoInt64)));
                        };
                        if (_m.name == ((("Read" : GoString)))) {
                            _out = Go.toInterface((((_args != null ? _args[((0 : GoInt))] : new stdgo.reflect.Reflect.Value()).interface_().value : Slice<GoByte>)));
                        };
                        if (_printgolden.value) {
                            var _val:GoString = (("" : GoString));
                            var _big:GoInt64 = (((("1152921504606846976" : GoInt64)) : GoInt64));
                            if ((((((_big : GoInt)) : GoInt64)) != _big) && ((_m.name == ((("Int" : GoString)))) || (_m.name == ((("Intn" : GoString)))))) {
                                _val = ((("truncated" : GoString)));
                            } else if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).kind() == ((23 : GoUInt))) {
                                _val = stdgo.fmt.Fmt.sprintf(((("%#v" : GoString))), Go.toInterface(_out));
                            } else {
                                _val = stdgo.fmt.Fmt.sprintf(((("%T(%v)" : GoString))), Go.toInterface(_out), Go.toInterface(_out));
                            };
                            stdgo.fmt.Fmt.printf(((("\t%s, // %s(%s)\n" : GoString))), Go.toInterface(_val), Go.toInterface(_m.name), Go.toInterface(_argstr));
                        } else {
                            var _want:AnyInterface = Go.toInterface((_regressGolden != null ? _regressGolden[_p] : ((null : AnyInterface))));
                            if (_m.name == ((("Int" : GoString)))) {
                                _want = Go.toInterface(((((((((((_want.value : GoInt64)) : GoUInt)) << ((1 : GoUnTypedInt))) >> ((1 : GoUnTypedInt))) : GoInt)) : GoInt64)));
                            };
                            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_out), Go.toInterface(_want))) {
                                _t.errorf(((("r.%s(%s) = %v, want %v" : GoString))), Go.toInterface(_m.name), Go.toInterface(_argstr), Go.toInterface(_out), Go.toInterface(_want));
                            };
                        };
                        _p++;
                    });
                };
            });
        };
        if (_printgolden.value) {
            stdgo.fmt.Fmt.printf(((("}\n" : GoString))));
        };
    }
class T_statsResults_wrapper {
    @:keep
    public function _checkSimilarDistribution(_expected:T_statsResults):Error {
        var _this = __t__;
        _this;
        if (!_nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("mean %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._mean), Go.toInterface(_expected._mean), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        if (!_nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("stddev %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._stddev), Go.toInterface(_expected._stddev), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        return ((null : stdgo.Error));
    }
    public var __t__ : T_statsResults;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_statsResults_static_extension {
    @:keep
    public static function _checkSimilarDistribution(_this:Ref<stdgo.math.rand_test.Rand_test.T_statsResults>, _expected:T_statsResults):Error {
        _this;
        if (!_nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("mean %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._mean), Go.toInterface(_expected._mean), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        if (!_nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
            var _s:GoString = stdgo.fmt.Fmt.sprintf(((("stddev %v != %v (allowed error %v, %v)" : GoString))), Go.toInterface(_this._stddev), Go.toInterface(_expected._stddev), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
            stdgo.fmt.Fmt.println(_s);
            return stdgo.errors.Errors.new_(_s);
        };
        return ((null : stdgo.Error));
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}