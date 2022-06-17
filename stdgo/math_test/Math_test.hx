package stdgo.math_test;
import stdgo.math.Math;
import stdgo.math.Math;
import stdgo.math.Math;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _vf : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4.9790119248836735 : GoFloat64)), ((7.738872474578105 : GoFloat64)), ((-0.2768800571920016 : GoFloat64)), ((-5.010603618271075 : GoFloat64)), ((9.636293707198417 : GoFloat64)), ((2.9263772392439646 : GoFloat64)), ((5.229083431459307 : GoFloat64)), ((2.7279399104360103 : GoFloat64)), ((1.825308091680855 : GoFloat64)), ((-8.685924768575601 : GoFloat64))) : Slice<GoFloat64>));
var _acos : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1.0496193546107222 : GoFloat64)), ((0.6858401281366443 : GoFloat64)), ((1.598487871457716 : GoFloat64)), ((2.095619936147586 : GoFloat64)), ((0.2705300846782414 : GoFloat64)), ((1.2738121680361776 : GoFloat64)), ((1.0205369421140629 : GoFloat64)), ((1.2945003481781245 : GoFloat64)), ((1.387236434537445 : GoFloat64)), ((2.6231510803970464 : GoFloat64))) : Slice<GoFloat64>));
var _acosh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.474334700415901 : GoFloat64)), ((2.857638534429277 : GoFloat64)), ((0.7279696150298106 : GoFloat64)), ((2.479679441883145 : GoFloat64)), ((3.055202074230606 : GoFloat64)), ((2.0442385926885867 : GoFloat64)), ((2.5158701513104513 : GoFloat64)), ((1.9905083928241163 : GoFloat64)), ((1.6988625798424035 : GoFloat64)), ((2.9611454842470386 : GoFloat64))) : Slice<GoFloat64>));
var _asin : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.5211769721841744 : GoFloat64)), ((0.8849561986582524 : GoFloat64)), ((-0.027691544662819412 : GoFloat64)), ((-0.5248236093526893 : GoFloat64)), ((1.3002662421166553 : GoFloat64)), ((0.29698415875871903 : GoFloat64)), ((0.5502593846808337 : GoFloat64)), ((0.276295978616772 : GoFloat64)), ((0.18355989225745148 : GoFloat64)), ((-1.0523547536021498 : GoFloat64))) : Slice<GoFloat64>));
var _asinh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.3083139124923524 : GoFloat64)), ((2.743551594301594 : GoFloat64)), ((-0.2734590853488009 : GoFloat64)), ((-2.314515764471834 : GoFloat64)), ((2.9613652154015058 : GoFloat64)), ((1.7949041616585821 : GoFloat64)), ((2.3564032905983505 : GoFloat64)), ((1.7287118790768439 : GoFloat64)), ((1.3626658083714827 : GoFloat64)), ((-2.8581483626513915 : GoFloat64))) : Slice<GoFloat64>));
var _atan : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1.3725902621296215 : GoFloat64)), ((1.442290609645298 : GoFloat64)), ((-0.27011324359471756 : GoFloat64)), ((-1.373807768454338 : GoFloat64)), ((1.4673921193587667 : GoFloat64)), ((1.2415173565870168 : GoFloat64)), ((1.3818396865615168 : GoFloat64)), ((1.219430584463967 : GoFloat64)), ((1.0696031952318783 : GoFloat64)), ((-1.4561721938838086 : GoFloat64))) : Slice<GoFloat64>));
var _atanh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.5465116371225194 : GoFloat64)), ((1.0299474112843112 : GoFloat64)), ((-0.027695084420740135 : GoFloat64)), ((-0.5507209611920719 : GoFloat64)), ((1.9943940993171843 : GoFloat64)), ((0.3014486045780897 : GoFloat64)), ((0.5803342720694219 : GoFloat64)), ((0.27987997499441514 : GoFloat64)), ((0.18459947964298795 : GoFloat64)), ((-1.3273186910532646 : GoFloat64))) : Slice<GoFloat64>));
var _atan2 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1.1088291730037005 : GoFloat64)), ((0.9121818318871581 : GoFloat64)), ((1.5984772603216204 : GoFloat64)), ((2.0352918654092087 : GoFloat64)), ((0.8039181913904472 : GoFloat64)), ((1.2861075249894662 : GoFloat64)), ((1.0889904479131696 : GoFloat64)), ((1.3044821793397925 : GoFloat64)), ((1.3902530903455392 : GoFloat64)), ((2.2859857424479144 : GoFloat64))) : Slice<GoFloat64>));
var _cbrt : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1.7075799841925094 : GoFloat64)), ((1.9779982212970353 : GoFloat64)), ((-0.6517742901777991 : GoFloat64)), ((-1.711183888654402 : GoFloat64)), ((2.1279920909827936 : GoFloat64)), ((1.430353677046074 : GoFloat64)), ((1.7357021059106155 : GoFloat64)), ((1.397263346255433 : GoFloat64)), ((1.2221149580905388 : GoFloat64)), ((-2.055600373050007 : GoFloat64))) : Slice<GoFloat64>));
var _ceil : Slice<GoFloat64> = ((new Slice<GoFloat64>(((5 : GoFloat64)), ((8 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-5 : GoFloat64)), ((10 : GoFloat64)), ((3 : GoFloat64)), ((6 : GoFloat64)), ((3 : GoFloat64)), ((2 : GoFloat64)), ((-8 : GoFloat64))) : Slice<GoFloat64>));
var _copysign : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-4.9790119248836735 : GoFloat64)), ((-7.738872474578105 : GoFloat64)), ((-0.2768800571920016 : GoFloat64)), ((-5.010603618271075 : GoFloat64)), ((-9.636293707198417 : GoFloat64)), ((-2.9263772392439646 : GoFloat64)), ((-5.229083431459307 : GoFloat64)), ((-2.7279399104360103 : GoFloat64)), ((-1.825308091680855 : GoFloat64)), ((-8.685924768575601 : GoFloat64))) : Slice<GoFloat64>));
var _cos : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.2634752140995199 : GoFloat64)), ((0.11485512608482198 : GoFloat64)), ((0.9619129732564077 : GoFloat64)), ((0.2938141150061715 : GoFloat64)), ((-0.9777138189897924 : GoFloat64)), ((-0.9769304134430322 : GoFloat64)), ((0.4940088096948647 : GoFloat64)), ((-0.9156586902101893 : GoFloat64)), ((-0.25177293138931034 : GoFloat64)), ((-0.7392413515956766 : GoFloat64))) : Slice<GoFloat64>));
var _cosLarge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.26347521411855596 : GoFloat64)), ((0.1148551260555431 : GoFloat64)), ((0.961912973266489 : GoFloat64)), ((0.2938141149955612 : GoFloat64)), ((-0.9777138189880162 : GoFloat64)), ((-0.9769304134451476 : GoFloat64)), ((0.4940088097314977 : GoFloat64)), ((-0.9156586902175179 : GoFloat64)), ((-0.251772931436787 : GoFloat64)), ((-0.739241351571731 : GoFloat64))) : Slice<GoFloat64>));
var _cosh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((72.66879694221284 : GoFloat64)), ((1147.9413465659254 : GoFloat64)), ((1.038576790876642 : GoFloat64)), ((75.00095778965805 : GoFloat64)), ((7655.246669605358 : GoFloat64)), ((9.356749175832126 : GoFloat64)), ((93.31351599270606 : GoFloat64)), ((7.683343099462465 : GoFloat64)), ((3.182937162515072 : GoFloat64)), ((2959.505926191619 : GoFloat64))) : Slice<GoFloat64>));
var _erf : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.5186535481773871 : GoFloat64)), ((0.726238758341373 : GoFloat64)), ((-0.0312345868828131 : GoFloat64)), ((-0.521431211102533 : GoFloat64)), ((0.827047426713129 : GoFloat64)), ((0.32101767558376376 : GoFloat64)), ((0.5403990312223246 : GoFloat64)), ((0.30034702916738587 : GoFloat64)), ((0.2036992441788224 : GoFloat64)), ((-0.7806938696800922 : GoFloat64))) : Slice<GoFloat64>));
var _erfc : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.481346451822613 : GoFloat64)), ((0.27376124165862703 : GoFloat64)), ((1.031234586882813 : GoFloat64)), ((1.521431211102533 : GoFloat64)), ((0.17295257328687097 : GoFloat64)), ((0.6789823244162362 : GoFloat64)), ((0.4596009687776754 : GoFloat64)), ((0.6996529708326141 : GoFloat64)), ((0.7963007558211775 : GoFloat64)), ((1.7806938696800922 : GoFloat64))) : Slice<GoFloat64>));
var _erfinv : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.47460376733580334 : GoFloat64)), ((0.8559054432692111 : GoFloat64)), ((-0.024542783057170732 : GoFloat64)), ((-0.47811668351897335 : GoFloat64)), ((1.479804430319471 : GoFloat64)), ((0.2654485787128896 : GoFloat64)), ((0.502744453422152 : GoFloat64)), ((0.24667035327076278 : GoFloat64)), ((0.16320114651030054 : GoFloat64)), ((-1.066723346421969 : GoFloat64))) : Slice<GoFloat64>));
var _exp : Slice<GoFloat64> = ((new Slice<GoFloat64>(((145.33071302642136 : GoFloat64)), ((2295.882257569445 : GoFloat64)), ((0.7581454257485166 : GoFloat64)), ((0.006666877842179101 : GoFloat64)), ((15310.493273896034 : GoFloat64)), ((18.65990751799933 : GoFloat64)), ((186.62167355098714 : GoFloat64)), ((15.301332413189378 : GoFloat64)), ((6.204706343064688 : GoFloat64)), ((0.00016894712385826522 : GoFloat64))) : Slice<GoFloat64>));
var _expm1 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.05105047796122957 : GoFloat64)), ((0.08046199708567343 : GoFloat64)), ((-0.00276497097889164 : GoFloat64)), ((-0.048871434888875354 : GoFloat64)), ((0.10115864277221467 : GoFloat64)), ((0.02969616407795911 : GoFloat64)), ((0.053682144879448924 : GoFloat64)), ((0.02765488851131274 : GoFloat64)), ((0.01842068661871399 : GoFloat64)), ((-0.0831938708635538 : GoFloat64))) : Slice<GoFloat64>));
var _expm1Large : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4.2031418113550844e+21 : GoFloat64)), ((4.0690789717473863e+33 : GoFloat64)), ((-0.9372627915981363 : GoFloat64)), ((-1 : GoFloat64)), ((7.077694784145933e+41 : GoFloat64)), ((5.117936223839153e+12 : GoFloat64)), ((5.124137759001189e+22 : GoFloat64)), ((7.03546003972584e+11 : GoFloat64)), ((8.456921800389698e+07 : GoFloat64)), ((-1 : GoFloat64))) : Slice<GoFloat64>));
var _exp2 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((31.53783946328629 : GoFloat64)), ((213.61549283756233 : GoFloat64)), ((0.8253740256218556 : GoFloat64)), ((0.031021158628740296 : GoFloat64)), ((795.8174411025219 : GoFloat64)), ((7.6019905892596356 : GoFloat64)), ((37.5068820483881 : GoFloat64)), ((6.625089343917356 : GoFloat64)), ((3.543826790024394 : GoFloat64)), ((0.0024281533133513303 : GoFloat64))) : Slice<GoFloat64>));
var _fabs : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4.9790119248836735 : GoFloat64)), ((7.738872474578105 : GoFloat64)), ((0.2768800571920016 : GoFloat64)), ((5.010603618271075 : GoFloat64)), ((9.636293707198417 : GoFloat64)), ((2.9263772392439646 : GoFloat64)), ((5.229083431459307 : GoFloat64)), ((2.7279399104360103 : GoFloat64)), ((1.825308091680855 : GoFloat64)), ((8.685924768575601 : GoFloat64))) : Slice<GoFloat64>));
var _fdim : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4.9790119248836735 : GoFloat64)), ((7.738872474578105 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64)), ((9.636293707198417 : GoFloat64)), ((2.9263772392439646 : GoFloat64)), ((5.229083431459307 : GoFloat64)), ((2.7279399104360103 : GoFloat64)), ((1.825308091680855 : GoFloat64)), ((0 : GoFloat64))) : Slice<GoFloat64>));
var _floor : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4 : GoFloat64)), ((7 : GoFloat64)), ((-1 : GoFloat64)), ((-6 : GoFloat64)), ((9 : GoFloat64)), ((2 : GoFloat64)), ((5 : GoFloat64)), ((2 : GoFloat64)), ((1 : GoFloat64)), ((-9 : GoFloat64))) : Slice<GoFloat64>));
var _fmod : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.041976150232653 : GoFloat64)), ((2.2611275254218954 : GoFloat64)), ((0.032317941087942614 : GoFloat64)), ((4.989396381728925 : GoFloat64)), ((0.3637062928015826 : GoFloat64)), ((1.220868282268106 : GoFloat64)), ((4.770916568540693 : GoFloat64)), ((1.8161802686919692 : GoFloat64)), ((0.8734595415957247 : GoFloat64)), ((1.3140752314243986 : GoFloat64))) : Slice<GoFloat64>));
var _frexp : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(((0.6223764906104592 : GoFloat64)), ((3 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.9673590593222631 : GoFloat64)), ((3 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.5537601143840032 : GoFloat64)), ((-1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.6263254522838844 : GoFloat64)), ((3 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.6022683566999011 : GoFloat64)), ((4 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.7315943098109912 : GoFloat64)), ((2 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.6536354289324133 : GoFloat64)), ((3 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.6819849776090026 : GoFloat64)), ((2 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.9126540458404275 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.5428702980359751 : GoFloat64)), ((4 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _gamma : Slice<GoFloat64> = ((new Slice<GoFloat64>(((23.254348370739965 : GoFloat64)), ((2991.153837155317 : GoFloat64)), ((-4.561154336726758 : GoFloat64)), ((0.7719403468842639 : GoFloat64)), ((161118.76618855417 : GoFloat64)), ((1.8706575145216422 : GoFloat64)), ((34.0827874472575 : GoFloat64)), ((1.5797339514489521 : GoFloat64)), ((0.938345865983546 : GoFloat64)), ((-2.0939959029231484e-05 : GoFloat64))) : Slice<GoFloat64>));
var _j0 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.18444682230601672 : GoFloat64)), ((0.22735366890633196 : GoFloat64)), ((0.9809259936157051 : GoFloat64)), ((-0.17411701314262265 : GoFloat64)), ((-0.21389448451144144 : GoFloat64)), ((-0.23409058489280388 : GoFloat64)), ((-0.10029099691890912 : GoFloat64)), ((-0.15466726714884327 : GoFloat64)), ((0.32526501876534203 : GoFloat64)), ((-0.008722184844094073 : GoFloat64))) : Slice<GoFloat64>));
var _j1 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.32515263952952034 : GoFloat64)), ((0.18935817114305156 : GoFloat64)), ((-0.13711761352467242 : GoFloat64)), ((0.3287486536269617 : GoFloat64)), ((0.13133899188830978 : GoFloat64)), ((0.3660243417832987 : GoFloat64)), ((-0.3443676927184817 : GoFloat64)), ((0.43294813966407736 : GoFloat64)), ((0.5818135053195479 : GoFloat64)), ((-0.27030574577733035 : GoFloat64))) : Slice<GoFloat64>));
var _j2 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.0538375189201378 : GoFloat64)), ((-0.17841678003393208 : GoFloat64)), ((0.009521746934916465 : GoFloat64)), ((0.04289583554709874 : GoFloat64)), ((0.24115371837854493 : GoFloat64)), ((0.484245853239452 : GoFloat64)), ((-0.031421452206186334 : GoFloat64)), ((0.47208491847451245 : GoFloat64)), ((0.3122312022520957 : GoFloat64)), ((0.07096213118930231 : GoFloat64))) : Slice<GoFloat64>));
var _jM3 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.3684042080996403 : GoFloat64)), ((0.28157665936340887 : GoFloat64)), ((0.00044010054808419485 : GoFloat64)), ((0.3629926999056814 : GoFloat64)), ((0.031236721988254553 : GoFloat64)), ((-0.2958805510589624 : GoFloat64)), ((-0.3203317769653323 : GoFloat64)), ((-0.2592737332129663 : GoFloat64)), ((-0.10241334641061485 : GoFloat64)), ((-0.23762660886100206 : GoFloat64))) : Slice<GoFloat64>));
var _lgamma : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(((3.1464921412445457 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((8.003414490659127 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1.5175757355097796 : GoFloat64)), ((-1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.2588480028182146 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((11.989897050205554 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.6262899811091257 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((3.5287924899091565 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.45725644770161183 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.06363667087767962 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-10.773851309103001 : GoFloat64)), ((-1 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _log : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1.605231462693063 : GoFloat64)), ((2.046256001870877 : GoFloat64)), ((-1.2841708730962658 : GoFloat64)), ((1.6115563905281545 : GoFloat64)), ((2.265536564487202 : GoFloat64)), ((1.073765220891838 : GoFloat64)), ((1.6542360106073546 : GoFloat64)), ((1.0035467127723465 : GoFloat64)), ((0.6017487901457805 : GoFloat64)), ((2.1617038728473528 : GoFloat64))) : Slice<GoFloat64>));
var _logb : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2 : GoFloat64)), ((2 : GoFloat64)), ((-2 : GoFloat64)), ((2 : GoFloat64)), ((3 : GoFloat64)), ((1 : GoFloat64)), ((2 : GoFloat64)), ((1 : GoFloat64)), ((0 : GoFloat64)), ((3 : GoFloat64))) : Slice<GoFloat64>));
var _log10 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.6971431664250829 : GoFloat64)), ((0.8886776901739321 : GoFloat64)), ((-0.5577083240065893 : GoFloat64)), ((0.6998900476822995 : GoFloat64)), ((0.9839100285068423 : GoFloat64)), ((0.4663303102929515 : GoFloat64)), ((0.7184255711724233 : GoFloat64)), ((0.4358347996891777 : GoFloat64)), ((0.26133617905227036 : GoFloat64)), ((0.938816063486494 : GoFloat64))) : Slice<GoFloat64>));
var _log1p : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.04859025775979779 : GoFloat64)), ((0.07454026596522587 : GoFloat64)), ((-0.0027726407903942672 : GoFloat64)), ((-0.05140491765162765 : GoFloat64)), ((0.09199828067225863 : GoFloat64)), ((0.02884376257659335 : GoFloat64)), ((0.05096953458186371 : GoFloat64)), ((0.026913947602193237 : GoFloat64)), ((0.01808849323963077 : GoFloat64)), ((-0.09086524563158899 : GoFloat64))) : Slice<GoFloat64>));
var _log2 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.315859470706219 : GoFloat64)), ((2.9521233862883918 : GoFloat64)), ((-1.852666950270033 : GoFloat64)), ((2.3249844127278863 : GoFloat64)), ((3.268478366538305 : GoFloat64)), ((1.5491157592596971 : GoFloat64)), ((2.3865580889631732 : GoFloat64)), ((1.4478118658170853 : GoFloat64)), ((0.8681399954042511 : GoFloat64)), ((3.1186794572273424 : GoFloat64))) : Slice<GoFloat64>));
var _modf : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(((new GoArray<GoFloat64>(((4 : GoFloat64)), ((0.9790119248836735 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((7 : GoFloat64)), ((0.7388724745781046 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-0.2768800571920016 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((-5 : GoFloat64)), ((-0.010603618271074922 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((9 : GoFloat64)), ((0.6362937071984174 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((2 : GoFloat64)), ((0.9263772392439646 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((5 : GoFloat64)), ((0.22908343145930665 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((2 : GoFloat64)), ((0.7279399104360103 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((1 : GoFloat64)), ((0.8253080916808551 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((-8 : GoFloat64)), ((-0.6859247685756014 : GoFloat64))) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _nextafter32 : Slice<GoFloat32> = ((new Slice<GoFloat32>(((4.979012489318848 : GoFloat32)), ((7.73887300491333 : GoFloat32)), ((-0.27688002586364746 : GoFloat32)), ((-5.010602951049805 : GoFloat32)), ((9.6362943649292 : GoFloat32)), ((2.926377534866333 : GoFloat32)), ((5.229084014892578 : GoFloat32)), ((2.727940082550049 : GoFloat32)), ((1.825308203697205 : GoFloat32)), ((-8.68592357635498 : GoFloat32))) : Slice<GoFloat32>));
var _nextafter64 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4.979011924883674 : GoFloat64)), ((7.7388724745781055 : GoFloat64)), ((-0.27688005719200154 : GoFloat64)), ((-5.010603618271074 : GoFloat64)), ((9.63629370719842 : GoFloat64)), ((2.926377239243965 : GoFloat64)), ((5.2290834314593075 : GoFloat64)), ((2.7279399104360107 : GoFloat64)), ((1.8253080916808553 : GoFloat64)), ((-8.6859247685756 : GoFloat64))) : Slice<GoFloat64>));
var _pow : Slice<GoFloat64> = ((new Slice<GoFloat64>(((95282.23263164841 : GoFloat64)), ((5.48115993529999e+07 : GoFloat64)), ((0.528591217158944 : GoFloat64)), ((9.758799195728648e-06 : GoFloat64)), ((4.328064329346045e+09 : GoFloat64)), ((844.0676180503455 : GoFloat64)), ((169466.33276191194 : GoFloat64)), ((534.4904014755194 : GoFloat64)), ((66.88182138451415 : GoFloat64)), ((2.0609869004248745e-09 : GoFloat64))) : Slice<GoFloat64>));
var _remainder : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.041976150232653 : GoFloat64)), ((2.2611275254218954 : GoFloat64)), ((0.032317941087942614 : GoFloat64)), ((-0.021207236542149843 : GoFloat64)), ((0.3637062928015826 : GoFloat64)), ((1.220868282268106 : GoFloat64)), ((-0.4581668629186133 : GoFloat64)), ((-0.911759641744041 : GoFloat64)), ((0.8734595415957247 : GoFloat64)), ((1.3140752314243986 : GoFloat64))) : Slice<GoFloat64>));
var _round : Slice<GoFloat64> = ((new Slice<GoFloat64>(((5 : GoFloat64)), ((8 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-5 : GoFloat64)), ((10 : GoFloat64)), ((3 : GoFloat64)), ((5 : GoFloat64)), ((3 : GoFloat64)), ((2 : GoFloat64)), ((-9 : GoFloat64))) : Slice<GoFloat64>));
var _signbit : Slice<Bool> = ((new Slice<Bool>(false, false, true, true, false, false, false, false, false, true) : Slice<Bool>));
var _sin : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.9646661658600928 : GoFloat64)), ((0.9933822527164654 : GoFloat64)), ((-0.27335587039794396 : GoFloat64)), ((0.955862576850428 : GoFloat64)), ((-0.20994210667799693 : GoFloat64)), ((0.21355787807998605 : GoFloat64)), ((-0.8694568971167362 : GoFloat64)), ((0.4019566681155578 : GoFloat64)), ((0.96778633541688 : GoFloat64)), ((-0.6734405869050345 : GoFloat64))) : Slice<GoFloat64>));
var _sinLarge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.9646661658548936 : GoFloat64)), ((0.9933822527198507 : GoFloat64)), ((-0.273355870362469 : GoFloat64)), ((0.9558625768536894 : GoFloat64)), ((-0.2099421066862689 : GoFloat64)), ((0.213557878070309 : GoFloat64)), ((-0.8694568970959221 : GoFloat64)), ((0.40195666809886327 : GoFloat64)), ((0.9677863354045287 : GoFloat64)), ((-0.6734405869313197 : GoFloat64))) : Slice<GoFloat64>));
var _sinh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((72.66191608420853 : GoFloat64)), ((1147.9409110035194 : GoFloat64)), ((-0.28043136512812517 : GoFloat64)), ((-74.99429091181587 : GoFloat64)), ((7655.246604290676 : GoFloat64)), ((9.303158342167201 : GoFloat64)), ((93.3081575582811 : GoFloat64)), ((7.617989313726914 : GoFloat64)), ((3.0217691805496156 : GoFloat64)), ((-2959.505757244495 : GoFloat64))) : Slice<GoFloat64>));
var _sqrt : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.2313699659365485 : GoFloat64)), ((2.7818829009464263 : GoFloat64)), ((0.5261939349631479 : GoFloat64)), ((2.238437762876394 : GoFloat64)), ((3.104238023605538 : GoFloat64)), ((1.7106657298385224 : GoFloat64)), ((2.286718922705479 : GoFloat64)), ((1.651647635071116 : GoFloat64)), ((1.3510396336454586 : GoFloat64)), ((2.947189299752495 : GoFloat64))) : Slice<GoFloat64>));
var _tan : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-3.6613165650402277 : GoFloat64)), ((8.649002326485975 : GoFloat64)), ((-0.28417941955033615 : GoFloat64)), ((3.2532901859747287 : GoFloat64)), ((0.21472756403802937 : GoFloat64)), ((-0.218600910711067 : GoFloat64)), ((-1.760002817872368 : GoFloat64)), ((-0.4389808914752818 : GoFloat64)), ((-3.8438855602011306 : GoFloat64)), ((0.9109887933776851 : GoFloat64))) : Slice<GoFloat64>));
var _tanLarge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-3.6613165647559653 : GoFloat64)), ((8.649002328720254 : GoFloat64)), ((-0.28417941951047826 : GoFloat64)), ((3.253290186103312 : GoFloat64)), ((0.21472756404688 : GoFloat64)), ((-0.21860091070068807 : GoFloat64)), ((-1.7600028176997227 : GoFloat64)), ((-0.43898089145353614 : GoFloat64)), ((-3.843885559427235 : GoFloat64)), ((0.910988793442751 : GoFloat64))) : Slice<GoFloat64>));
var _tanh : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.9999053120693634 : GoFloat64)), ((0.9999996205708529 : GoFloat64)), ((-0.2700150509731868 : GoFloat64)), ((-0.9999111094306172 : GoFloat64)), ((0.9999999914679847 : GoFloat64)), ((0.9942724943612523 : GoFloat64)), ((0.9999425760098314 : GoFloat64)), ((0.9914940950977288 : GoFloat64)), ((0.9493650129623968 : GoFloat64)), ((-0.9999999429137403 : GoFloat64))) : Slice<GoFloat64>));
var _trunc : Slice<GoFloat64> = ((new Slice<GoFloat64>(((4 : GoFloat64)), ((7 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-5 : GoFloat64)), ((9 : GoFloat64)), ((2 : GoFloat64)), ((5 : GoFloat64)), ((2 : GoFloat64)), ((1 : GoFloat64)), ((-8 : GoFloat64))) : Slice<GoFloat64>));
var _y0 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.30533991537807886 : GoFloat64)), ((0.17437227649515233 : GoFloat64)), ((-0.8622178126367883 : GoFloat64)), ((-0.3100664880987498 : GoFloat64)), ((0.14222006493009823 : GoFloat64)), ((0.4000004067997901 : GoFloat64)), ((-0.3334074975309935 : GoFloat64)), ((0.45399790746668955 : GoFloat64)), ((0.4829000411249776 : GoFloat64)), ((0.27036697826604755 : GoFloat64))) : Slice<GoFloat64>));
var _y1 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.1549421373745792 : GoFloat64)), ((-0.21659551420811451 : GoFloat64)), ((-2.4644949631241895 : GoFloat64)), ((0.14427404895418364 : GoFloat64)), ((0.22153799605189847 : GoFloat64)), ((0.3038800915160754 : GoFloat64)), ((0.06911076424523624 : GoFloat64)), ((0.23801164178099143 : GoFloat64)), ((-0.2084949297945976 : GoFloat64)), ((0.02425031797932323 : GoFloat64))) : Slice<GoFloat64>));
var _y2 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.3675780219390304 : GoFloat64)), ((-0.23034826393250118 : GoFloat64)), ((-16.939677983817727 : GoFloat64)), ((0.36765398052305215 : GoFloat64)), ((-0.09624014717678045 : GoFloat64)), ((-0.19231693561848512 : GoFloat64)), ((0.35984072054267885 : GoFloat64)), ((-0.279498725229974 : GoFloat64)), ((-0.7113490692587463 : GoFloat64)), ((-0.2647831587821263 : GoFloat64))) : Slice<GoFloat64>));
var _yM3 : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.1403598442109485 : GoFloat64)), ((-0.09753513961779207 : GoFloat64)), ((242.2577599455558 : GoFloat64)), ((-0.14922670148028186 : GoFloat64)), ((0.2614870262915592 : GoFloat64)), ((0.5667538359389518 : GoFloat64)), ((-0.206150264009007 : GoFloat64)), ((0.6478428468756833 : GoFloat64)), ((1.3503631555901938 : GoFloat64)), ((0.14618697565799568 : GoFloat64))) : Slice<GoFloat64>));
var _vfacosSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((1 : GoFloat64)), ((3.141592653589793 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _acosSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _vfacoshSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((0.5 : GoFloat64)), ((1 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _acoshSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfasinSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-3.141592653589793 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((3.141592653589793 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _asinSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _vfasinhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _asinhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfatanSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _atanSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-1.5707963267948966 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((1.5707963267948966 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _vfatanhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64)), ((-1 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((1 : GoFloat64)), ((3.141592653589793 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _atanhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), naN(), naN()) : Slice<GoFloat64>));
var _vfatan2SC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _atan2SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
((-2.356194490192345 : GoFloat64)),
((-1.5707963267948966 : GoFloat64)),
((-1.5707963267948966 : GoFloat64)),
((-1.5707963267948966 : GoFloat64)),
((-0.7853981633974483 : GoFloat64)),
naN(),
((-3.141592653589793 : GoFloat64)),
((-1.5707963267948966 : GoFloat64)),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
naN(),
((-3.141592653589793 : GoFloat64)),
((-3.141592653589793 : GoFloat64)),
((-3.141592653589793 : GoFloat64)),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
naN(),
((3.141592653589793 : GoFloat64)),
((3.141592653589793 : GoFloat64)),
((3.141592653589793 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
naN(),
((3.141592653589793 : GoFloat64)),
((1.5707963267948966 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
naN(),
((2.356194490192345 : GoFloat64)),
((1.5707963267948966 : GoFloat64)),
((1.5707963267948966 : GoFloat64)),
((1.5707963267948966 : GoFloat64)),
((0.7853981633974483 : GoFloat64)),
naN(),
naN()) : Slice<GoFloat64>));
var _vfcbrtSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _cbrtSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfceilSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _ceilSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfcopysignSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _copysignSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfcosSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _cosSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), naN()) : Slice<GoFloat64>));
var _vfcoshSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _coshSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((1 : GoInt))), ((1 : GoFloat64)), ((1 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vferfSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), ((-1000 : GoFloat64)), ((1000 : GoFloat64))) : Slice<GoFloat64>));
var _erfSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-1 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((1 : GoFloat64)), naN(), ((-1 : GoFloat64)), ((1 : GoFloat64))) : Slice<GoFloat64>));
var _vferfcSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt))), naN(), ((-1000 : GoFloat64)), ((1000 : GoFloat64))) : Slice<GoFloat64>));
var _erfcSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2 : GoFloat64)), ((0 : GoFloat64)), naN(), ((2 : GoFloat64)), ((0 : GoFloat64))) : Slice<GoFloat64>));
var _vferfinvSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((1 : GoFloat64)), ((-1 : GoFloat64)), ((0 : GoFloat64)), inf(((-1 : GoInt))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _erfinvSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt))), ((0 : GoFloat64)), naN(), naN(), naN()) : Slice<GoFloat64>));
var _vferfcinvSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((2 : GoFloat64)), ((1 : GoFloat64)), inf(((1 : GoInt))), inf(((-1 : GoInt))), naN()) : Slice<GoFloat64>));
var _erfcinvSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt))), ((0 : GoFloat64)), naN(), naN(), naN()) : Slice<GoFloat64>));
var _vfexpSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
inf(((-1 : GoInt))),
((-2000 : GoFloat64)),
((2000 : GoFloat64)),
inf(((1 : GoInt))),
naN(),
((709.7827128933841 : GoFloat64)),
((1.48852223e+09 : GoFloat64)),
((1.4885222e+09 : GoFloat64)),
((1 : GoFloat64)),
((3.725290298461915e-09 : GoFloat64)),
((-740 : GoFloat64))) : Slice<GoFloat64>));
var _expSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
((2.718281828459045 : GoFloat64)),
((1.0000000037252903 : GoFloat64)),
((4.2e-322 : GoFloat64))) : Slice<GoFloat64>));
var _vfexp2SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-2000 : GoFloat64)), ((2000 : GoFloat64)), inf(((1 : GoInt))), naN(), ((1024 : GoFloat64)), ((-1073.99999999999 : GoFloat64)), ((3.725290298461915e-09 : GoFloat64))) : Slice<GoFloat64>));
var _exp2SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), inf(((1 : GoInt))), inf(((1 : GoInt))), naN(), inf(((1 : GoInt))), ((5e-324 : GoFloat64)), ((1.0000000025821745 : GoFloat64))) : Slice<GoFloat64>));
var _vfexpm1SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-710 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((710 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _expm1SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-1 : GoFloat64)), ((-1 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vffabsSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _fabsSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((1 : GoInt))), ((0 : GoFloat64)), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vffdimSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _nan : GoFloat64 = float64frombits((("18444492273895866368" : GoUInt64)));
var _vffdim2SC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), _nan) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), _nan) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(_nan, inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(_nan, copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(_nan, ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(_nan, inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(_nan, _nan) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _fdimSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
naN(),
((0 : GoFloat64)),
naN(),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt))),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN()) : Slice<GoFloat64>));
var _fmaxSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
inf(((-1 : GoInt))),
inf(((1 : GoInt))),
naN(),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
naN(),
naN(),
inf(((1 : GoInt))),
naN()) : Slice<GoFloat64>));
var _fminSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
inf(((-1 : GoInt))),
inf(((-1 : GoInt))),
inf(((-1 : GoInt))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
((0 : GoFloat64)),
inf(((-1 : GoInt))),
inf(((1 : GoInt))),
naN(),
inf(((-1 : GoInt))),
naN(),
naN(),
naN(),
naN()) : Slice<GoFloat64>));
var _vffmodSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _fmodSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
((-3.141592653589793 : GoFloat64)),
naN(),
((-3.141592653589793 : GoFloat64)),
naN(),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
naN(),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
naN(),
((0 : GoFloat64)),
naN(),
((0 : GoFloat64)),
naN(),
((3.141592653589793 : GoFloat64)),
naN(),
((3.141592653589793 : GoFloat64)),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN()) : Slice<GoFloat64>));
var _vffrexpSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _frexpSC : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(inf(((-1 : GoInt))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(naN(), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _vfgamma : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e+16 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e+300 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1.7e+308 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.5 : GoFloat64)), ((1.772453850905516 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1.5 : GoFloat64)), ((0.886226925452758 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2.5 : GoFloat64)), ((1.329340388179137 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.5 : GoFloat64)), ((3.3233509704478426 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-0.5 : GoFloat64)), ((-3.544907701811032 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.5 : GoFloat64)), ((2.363271801207355 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2.5 : GoFloat64)), ((-0.9453087204829419 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.5 : GoFloat64)), ((0.2700882058522691 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.1 : GoFloat64)), ((9.51350769866873 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.01 : GoFloat64)), ((99.4325851191506 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-08 : GoFloat64)), ((9.999999942278434e+07 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-16 : GoFloat64)), ((1e+16 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.001 : GoFloat64)), ((999.4237724845955 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-16 : GoFloat64)), ((1e+16 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-308 : GoFloat64)), ((1e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((5.6e-309 : GoFloat64)), ((1.7857142857142864e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((5.5e-309 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-309 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1e-323 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((5e-324 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-0.1 : GoFloat64)), ((-10.686287021193193 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-0.01 : GoFloat64)), ((-100.58719796441078 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-08 : GoFloat64)), ((-1.0000000057721567e+08 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-16 : GoFloat64)), ((-1e+16 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-0.001 : GoFloat64)), ((-1000.5782056293586 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-16 : GoFloat64)), ((-1e+16 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-308 : GoFloat64)), ((-1e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-5.6e-309 : GoFloat64)), ((-1.7857142857142864e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-5.5e-309 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-309 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1e-323 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-5e-324 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-0.9999999999999999 : GoFloat64)), ((-9.007199254740992e+15 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.0000000000000002 : GoFloat64)), ((4.5035996273704955e+15 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.9999999999999998 : GoFloat64)), ((2.2517998136852485e+15 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2.0000000000000004 : GoFloat64)), ((-1.1258999068426235e+15 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-100.00000000000001 : GoFloat64)), ((-7.540083334883109e-145 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-99.99999999999999 : GoFloat64)), ((7.540083334884096e-145 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((17 : GoFloat64)), ((2.0922789888e+13 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((171 : GoFloat64)), ((7.257415615307999e+306 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((171.6 : GoFloat64)), ((1.5858969096672565e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((171.624 : GoFloat64)), ((1.7942117599248104e+308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((171.625 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((172 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2000 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-100.5 : GoFloat64)), ((-3.3536908198076787e-159 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-160.5 : GoFloat64)), ((-5.255546447007829e-286 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-170.5 : GoFloat64)), ((-3.3127395215386074e-308 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-171.5 : GoFloat64)), ((1.9316265431712e-310 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-176.5 : GoFloat64)), ((-1.196e-321 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-177.5 : GoFloat64)), ((5e-324 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-178.5 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-179.5 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-201.0001 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-202.9999 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1000.5 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.0000000003e+09 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-4.5035996273704955e+15 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-63.349078729022985 : GoFloat64)), ((4.177797167776188e-88 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-127.45117632943295 : GoFloat64)), ((1.183111089623681e-214 : GoFloat64))) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _vfhypotSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _hypotSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
inf(((1 : GoInt))),
naN()) : Slice<GoFloat64>));
var _ilogbSC : Slice<GoInt> = ((new Slice<GoInt>(((2147483647 : GoInt)), ((-2147483648 : GoInt)), ((2147483647 : GoInt)), ((2147483647 : GoInt))) : Slice<GoInt>));
var _vfj0SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _j0SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((1 : GoFloat64)), ((0 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _j1SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _j2SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _jM3SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _vfldexpSC : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(
((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((-1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(inf(((-1 : GoInt))), ((0 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(inf(((-1 : GoInt))), ((-1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(naN(), ((-1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(((10 : GoFloat64)), ((16777216 : GoInt))) : stdgo.math_test.Math_test.T_fi)),
((new stdgo.math_test.Math_test.T_fi(((10 : GoFloat64)), ((-16777216 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _ldexpSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((-1 : GoInt))),
inf(((-1 : GoInt))),
naN(),
inf(((1 : GoInt))),
((0 : GoFloat64))) : Slice<GoFloat64>));
var _vflgammaSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-3 : GoFloat64)), ((0 : GoFloat64)), ((1 : GoFloat64)), ((2 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _lgammaSC : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(inf(((-1 : GoInt))), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0 : GoFloat64)), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(inf(((1 : GoInt))), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(naN(), ((1 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _vflogSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((1 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _logSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), inf(((-1 : GoInt))), inf(((-1 : GoInt))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vflogbSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _logbSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((1 : GoInt))), inf(((-1 : GoInt))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vflog1pSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64)), ((-1 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), ((4.503599627370496e+15 : GoFloat64))) : Slice<GoFloat64>));
var _log1pSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), ((36.04365338911715 : GoFloat64))) : Slice<GoFloat64>));
var _vfmodfSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _modfSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _vfnextafter32SC : Slice<GoArray<GoFloat32>> = ((new Slice<GoArray<GoFloat32>>(((new GoArray<GoFloat32>(((0 : GoFloat32)), ((0 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((0 : GoFloat32)), ((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((0 : GoFloat32)), ((-1 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((0 : GoFloat32)), ((naN() : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((1 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((0 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((-1 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((naN() : GoFloat32)), ((0 : GoFloat32))) : GoArray<GoFloat32>)), ((new GoArray<GoFloat32>(((naN() : GoFloat32)), ((naN() : GoFloat32))) : GoArray<GoFloat32>))) : Slice<GoArray<GoFloat32>>));
var _nextafter32SC : Slice<GoFloat32> = ((new Slice<GoFloat32>(((0 : GoFloat32)), ((0 : GoFloat32)), ((-1.401298464324817e-45 : GoFloat32)), ((naN() : GoFloat32)), ((1.401298464e-45 : GoFloat32)), ((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)), ((-1.401298464324817e-45 : GoFloat32)), ((naN() : GoFloat32)), ((naN() : GoFloat32))) : Slice<GoFloat32>));
var _vfnextafter64SC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(((0 : GoFloat64)), naN()) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((1 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-1 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(naN(), ((0 : GoFloat64))) : GoArray<GoFloat64>)), ((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _nextafter64SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), ((-5e-324 : GoFloat64)), naN(), ((5e-324 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-5e-324 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _vfpowSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((-3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), ((0.5 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((-1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-0.5 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((-3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0.5 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((-3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((-1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((3.141592653589793 : GoFloat64)), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((-3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), ((3.141592653589793 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2 : GoFloat64)), ((((4.294967296e+09 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2 : GoFloat64)), ((-4.294967296e+09 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2 : GoFloat64)), ((((4.294967297e+09 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((((3.5184372088832e+13 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((-3.5184372088832e+13 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(nextafter(((1 : GoFloat64)), ((2 : GoFloat64))), ((((9.223372036854776e+18 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(nextafter(((1 : GoFloat64)), ((-2 : GoFloat64))), ((((9.223372036854776e+18 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(nextafter(((-1 : GoFloat64)), ((2 : GoFloat64))), ((((9.223372036854776e+18 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(nextafter(((-1 : GoFloat64)), ((-2 : GoFloat64))), ((((9.223372036854776e+18 : GoFloat64)) : GoFloat64))) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _powSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
((0 : GoFloat64)),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
((1 : GoFloat64)),
((1 : GoFloat64)),
inf(((-1 : GoInt))),
inf(((-1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
((0 : GoFloat64)),
naN(),
((1 : GoFloat64)),
((1 : GoFloat64)),
((-3.141592653589793 : GoFloat64)),
naN(),
inf(((1 : GoInt))),
naN(),
((1 : GoFloat64)),
((1 : GoFloat64)),
naN(),
inf(((1 : GoInt))),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((-1 : GoInt))),
copysign(((0 : GoFloat64)), ((-1 : GoFloat64))),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
((1 : GoFloat64)),
((1 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
((0 : GoFloat64)),
naN(),
inf(((1 : GoInt))),
((0 : GoFloat64)),
((1 : GoFloat64)),
((1 : GoFloat64)),
((1 : GoFloat64)),
((0 : GoFloat64)),
((1 : GoFloat64)),
((1 : GoFloat64)),
((3.141592653589793 : GoFloat64)),
inf(((1 : GoInt))),
naN(),
((0 : GoFloat64)),
((1 : GoFloat64)),
((1 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
naN(),
naN(),
((1 : GoFloat64)),
((1 : GoFloat64)),
naN(),
naN(),
naN(),
inf(((1 : GoInt))),
((0 : GoFloat64)),
inf(((-1 : GoInt))),
((0 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt))),
((0 : GoFloat64)),
((0 : GoFloat64)),
inf(((1 : GoInt)))) : Slice<GoFloat64>));
var _vfpow10SC : Slice<GoInt> = ((new Slice<GoInt>(
((-2147483648 : GoInt)),
((-324 : GoInt)),
((-323 : GoInt)),
((-50 : GoInt)),
((-22 : GoInt)),
((-1 : GoInt)),
((0 : GoInt)),
((1 : GoInt)),
((22 : GoInt)),
((50 : GoInt)),
((100 : GoInt)),
((200 : GoInt)),
((308 : GoInt)),
((309 : GoInt)),
((2147483647 : GoInt))) : Slice<GoInt>));
var _pow10SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(
((0 : GoFloat64)),
((0 : GoFloat64)),
((1e-323 : GoFloat64)),
((1e-50 : GoFloat64)),
((1e-22 : GoFloat64)),
((0.1 : GoFloat64)),
((1 : GoFloat64)),
((10 : GoFloat64)),
((1e+22 : GoFloat64)),
((1e+50 : GoFloat64)),
((1e+100 : GoFloat64)),
((1e+200 : GoFloat64)),
((1e+308 : GoFloat64)),
inf(((1 : GoInt))),
inf(((1 : GoInt)))) : Slice<GoFloat64>));
var _vfroundSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1.390671161567e-309 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.49999999999999994 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.5 : GoFloat64)), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.5000000000000001 : GoFloat64)), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.5 : GoFloat64)), ((-2 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2.5 : GoFloat64)), ((-3 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2.2517998136852495e+15 : GoFloat64)), (("2251799813685250" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2.2517998136852505e+15 : GoFloat64)), (("2251799813685251" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((4.5035996273704955e+15 : GoFloat64)), (("4503599627370496" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>((("4503599627370497" : GoFloat64)), (("4503599627370497" : GoFloat64))) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _vfroundEvenSC : Slice<GoArray<GoFloat64>> = ((new Slice<GoArray<GoFloat64>>(
((new GoArray<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((1.390671161567e-309 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.49999999999999994 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.5 : GoFloat64)), ((0 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((0.5000000000000001 : GoFloat64)), ((1 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-1.5 : GoFloat64)), ((-2 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((-2.5 : GoFloat64)), ((-2 : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(naN(), naN()) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(inf(((1 : GoInt))), inf(((1 : GoInt)))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2.2517998136852495e+15 : GoFloat64)), (("2251799813685250" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((2.2517998136852505e+15 : GoFloat64)), (("2251799813685250" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>(((4.5035996273704955e+15 : GoFloat64)), (("4503599627370496" : GoFloat64))) : GoArray<GoFloat64>)),
((new GoArray<GoFloat64>((("4503599627370497" : GoFloat64)), (("4503599627370497" : GoFloat64))) : GoArray<GoFloat64>))) : Slice<GoArray<GoFloat64>>));
var _vfsignbitSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _signbitSC : Slice<Bool> = ((new Slice<Bool>(true, true, false, false, false) : Slice<Bool>));
var _vfsinSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _sinSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _vfsinhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _sinhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _vfsqrtSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((-3.141592653589793 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), float64frombits(((2 : GoUInt64)))) : Slice<GoFloat64>));
var _sqrtSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), naN(), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), ((3.1434555694052576e-162 : GoFloat64))) : Slice<GoFloat64>));
var _vftanhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN()) : Slice<GoFloat64>));
var _tanhSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-1 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), ((0 : GoFloat64)), ((1 : GoFloat64)), naN()) : Slice<GoFloat64>));
var _vfy0SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(inf(((-1 : GoInt))), ((0 : GoFloat64)), inf(((1 : GoInt))), naN(), ((-1 : GoFloat64))) : Slice<GoFloat64>));
var _y0SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), inf(((-1 : GoInt))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _y1SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), inf(((-1 : GoInt))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _y2SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), inf(((-1 : GoInt))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _yM3SC : Slice<GoFloat64> = ((new Slice<GoFloat64>(naN(), inf(((1 : GoInt))), ((0 : GoFloat64)), naN(), naN()) : Slice<GoFloat64>));
var _vffrexpBC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.2250738585072014e-308 : GoFloat64)), ((2.225073858507201e-308 : GoFloat64)), ((5e-324 : GoFloat64)), ((1.7976931348623157e+308 : GoFloat64)), ((-2.2250738585072014e-308 : GoFloat64)), ((-2.225073858507201e-308 : GoFloat64)), ((-5e-324 : GoFloat64)), ((-1.7976931348623157e+308 : GoFloat64))) : Slice<GoFloat64>));
var _frexpBC : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(((0.5 : GoFloat64)), ((-1021 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.9999999999999998 : GoFloat64)), ((-1022 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.5 : GoFloat64)), ((-1073 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((0.9999999999999999 : GoFloat64)), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.5 : GoFloat64)), ((-1021 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.9999999999999998 : GoFloat64)), ((-1022 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.5 : GoFloat64)), ((-1073 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-0.9999999999999999 : GoFloat64)), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _vfldexpBC : Slice<stdgo.math_test.Math_test.T_fi> = ((new Slice<stdgo.math_test.Math_test.T_fi>(((new stdgo.math_test.Math_test.T_fi(((2.2250738585072014e-308 : GoFloat64)), ((-52 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((2.225073858507201e-308 : GoFloat64)), ((-51 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((5e-324 : GoFloat64)), ((1074 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1.7976931348623157e+308 : GoFloat64)), ((-2097 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1 : GoFloat64)), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-1 : GoFloat64)), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1 : GoFloat64)), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((-1 : GoFloat64)), ((1024 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1.0000000000000002 : GoFloat64)), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi)), ((new stdgo.math_test.Math_test.T_fi(((1 : GoFloat64)), ((-1075 : GoInt))) : stdgo.math_test.Math_test.T_fi))) : Slice<stdgo.math_test.Math_test.T_fi>));
var _ldexpBC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((5e-324 : GoFloat64)), ((1e-323 : GoFloat64)), ((1 : GoFloat64)), ((1e-323 : GoFloat64)), ((0 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64))), inf(((1 : GoInt))), inf(((-1 : GoInt))), ((5e-324 : GoFloat64)), ((0 : GoFloat64))) : Slice<GoFloat64>));
var _logbBC : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-1022 : GoFloat64)), ((-1023 : GoFloat64)), ((-1074 : GoFloat64)), ((1023 : GoFloat64)), ((-1022 : GoFloat64)), ((-1023 : GoFloat64)), ((-1074 : GoFloat64)), ((1023 : GoFloat64))) : Slice<GoFloat64>));
var _fmaC : Slice<stdgo.math_test.Math_test.T__struct_0> = ((new Slice<stdgo.math_test.Math_test.T__struct_0>(
((new stdgo.math_test.Math_test.T__struct_0(((-3.999999999999087 : GoFloat64)), ((-1.1123914289620494e-16 : GoFloat64)), ((-7.999877929687506 : GoFloat64)), ((-7.999877929687505 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-262112.0000004768 : GoFloat64)), ((-0.06251525855623184 : GoFloat64)), ((1.1102230248837136e-16 : GoFloat64)), ((16385.99945072085 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-6.462348523533467e-27 : GoFloat64)), ((-2.3763644720331857e-211 : GoFloat64)), ((4.000000000931324 : GoFloat64)), ((4.000000000931324 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-2.0000000037252907 : GoFloat64)), ((6.7904383376e-313 : GoFloat64)), ((-3.3951933161e-313 : GoFloat64)), ((-1.697607001654e-312 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-0.12499999999999999 : GoFloat64)), ((512.007568359375 : GoFloat64)), ((-1.4193627164960366e-16 : GoFloat64)), ((-64.00094604492188 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-2.7550648847397148e-39 : GoFloat64)), ((-3.4028301595800694e+38 : GoFloat64)), ((0.9960937495343386 : GoFloat64)), ((1.9335955376735676 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((5.723369164769208e+24 : GoFloat64)), ((3.8149300927159385e-06 : GoFloat64)), ((1.84489958778182e+19 : GoFloat64)), ((4.028324913621874e+19 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-0.4843749999990904 : GoFloat64)), ((-3.6893487872543293e+19 : GoFloat64)), ((9.223653786709391e+18 : GoFloat64)), ((2.7093936974938993e+19 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-3.8146972665201165e-06 : GoFloat64)), ((4.2949672959999385e+09 : GoFloat64)), ((-2.2204460489938386e-16 : GoFloat64)), ((-16384.000003844263 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((6.98156394130982e-309 : GoFloat64)), ((-1.1072962560000002e+09 : GoFloat64)), ((-4.4414561548793455e-308 : GoFloat64)), ((-7.73065965765153e-300 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((5e-324 : GoFloat64)), ((4.5 : GoFloat64)), ((-2e-323 : GoFloat64)), ((0 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((5e-324 : GoFloat64)), ((7 : GoFloat64)), ((-3.5e-323 : GoFloat64)), ((0 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((5e-324 : GoFloat64)), ((0.5000000000000001 : GoFloat64)), ((-5e-324 : GoFloat64)), copysign(((0 : GoFloat64)), ((-1 : GoFloat64)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-2.1240680525e-314 : GoFloat64)), ((-1.233647078189316e+308 : GoFloat64)), ((-0.25781249999954525 : GoFloat64)), ((-0.25780987964919844 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((8.579992955364441e-308 : GoFloat64)), ((0.6037391876780558 : GoFloat64)), ((-4.4501307410480706e-308 : GoFloat64)), ((7.29947236107098e-309 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-4.450143471986689e-308 : GoFloat64)), ((-0.9960937499927239 : GoFloat64)), ((-4.450419332475649e-308 : GoFloat64)), ((-1.7659233458788e-310 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((1.4932076393918112 : GoFloat64)), ((-2.2248022430460833e-308 : GoFloat64)), ((4.449875571054211e-308 : GoFloat64)), ((1.127783865601762e-308 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-2.288020632214759e+38 : GoFloat64)), ((-8.98846570988901e+307 : GoFloat64)), ((1.7696041796300924e+308 : GoFloat64)), inf(((0 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((1.4888652783208255e+308 : GoFloat64)), ((-9.007199254742012e+15 : GoFloat64)), ((-6.807282911929205e+38 : GoFloat64)), inf(((-1 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((9.142703268902826e+192 : GoFloat64)), ((-1.3504889569802838e+296 : GoFloat64)), ((-1.9082200803806996e-89 : GoFloat64)), inf(((-1 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((31.99218749627471 : GoFloat64)), ((-1.7976930544991702e+308 : GoFloat64)), inf(((0 : GoInt))), inf(((0 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-1.7976931281784667e+308 : GoFloat64)), ((-2.0009765625002265 : GoFloat64)), inf(((-1 : GoInt))), inf(((-1 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((0 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64)), ((0 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-1.1754226043408471e-38 : GoFloat64)), naN(), inf(((0 : GoInt))), naN()) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((0 : GoFloat64)), ((0 : GoFloat64)), ((2.22507385643494e-308 : GoFloat64)), ((2.22507385643494e-308 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-8.65697792e+09 : GoFloat64)), naN(), ((-7.516192799999999e+09 : GoFloat64)), naN()) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-0.00012207403779029757 : GoFloat64)), ((3.221225471996093e+09 : GoFloat64)), naN(), naN()) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(inf(((-1 : GoInt))), ((0.1252441407414153 : GoFloat64)), ((-1.387184532981584e-76 : GoFloat64)), inf(((-1 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(inf(((0 : GoInt))), ((1.525878907671432e-05 : GoFloat64)), ((-9.214364835452549e+18 : GoFloat64)), inf(((0 : GoInt)))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((0.1777916152213626 : GoFloat64)), ((-32.000015266239636 : GoFloat64)), ((-2.2204459148334633e-16 : GoFloat64)), ((-5.689334401293007 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-2.0816681711722314e-16 : GoFloat64)), ((-0.4997558592585846 : GoFloat64)), ((-0.9465627129124969 : GoFloat64)), ((-0.9465627129124968 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-1.9999997615814211 : GoFloat64)), ((1.8518819259933516e+19 : GoFloat64)), ((16.874999999999996 : GoFloat64)), ((-3.703763410463646e+19 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-0.12499994039717421 : GoFloat64)), ((32767.99999976135 : GoFloat64)), ((-2.0752587082923246e+19 : GoFloat64)), ((-2.075258708292325e+19 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((7.705600568510257e-34 : GoFloat64)), ((-1.801432979000528e+16 : GoFloat64)), ((-0.17224197722973714 : GoFloat64)), ((-0.17224197722973716 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((3.8988133103758913e-308 : GoFloat64)), ((-0.9848632812499999 : GoFloat64)), ((3.893879244098556e-308 : GoFloat64)), ((5.40811742605814e-310 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-0.012651981190687427 : GoFloat64)), ((6.911985574912436e+38 : GoFloat64)), ((6.669240527007144e+18 : GoFloat64)), ((-8.745031148409496e+36 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((4.612811918325842e+18 : GoFloat64)), ((1.4901161193847641e-08 : GoFloat64)), ((2.6077032311277997e-08 : GoFloat64)), ((6.873625395187494e+10 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-9.094947033611148e-13 : GoFloat64)), ((4.450691014249257e-308 : GoFloat64)), ((2.086006742350485e-308 : GoFloat64)), ((2.086006742346437e-308 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0)),
((new stdgo.math_test.Math_test.T__struct_0(((-7.751454006381804e-05 : GoFloat64)), ((5.588653777189071e-308 : GoFloat64)), ((-2.2207280111272877e-308 : GoFloat64)), ((-2.2211612130544025e-308 : GoFloat64))) : stdgo.math_test.Math_test.T__struct_0))) : Slice<stdgo.math_test.Math_test.T__struct_0>));
var _sqrt32 : Slice<GoFloat32> = ((new Slice<GoFloat32>(
((0 : GoFloat32)),
((copysign(((0 : GoFloat64)), ((-1 : GoFloat64))) : GoFloat32)),
((naN() : GoFloat32)),
((inf(((1 : GoInt))) : GoFloat32)),
((inf(((-1 : GoInt))) : GoFloat32)),
((1 : GoFloat32)),
((2 : GoFloat32)),
((-2 : GoFloat32)),
((4.9790119248836735 : GoFloat32)),
((7.738872474578105 : GoFloat32)),
((-0.27688005566596985 : GoFloat32)),
((-5.010603427886963 : GoFloat32))) : Slice<GoFloat32>));
var portableFMA : (GoFloat64, GoFloat64, GoFloat64) -> GoFloat64 = fma;
var _floatTests : Slice<stdgo.math_test.Math_test.T_floatTest> = ((new Slice<stdgo.math_test.Math_test.T_floatTest>(((new stdgo.math_test.Math_test.T_floatTest(Go.toInterface(((((1.7976931348623157e+308 : GoFloat64)) : GoFloat64))), ((("MaxFloat64" : GoString))), ((("1.7976931348623157e+308" : GoString)))) : stdgo.math_test.Math_test.T_floatTest)), ((new stdgo.math_test.Math_test.T_floatTest(Go.toInterface(((((5e-324 : GoFloat64)) : GoFloat64))), ((("SmallestNonzeroFloat64" : GoString))), ((("5e-324" : GoString)))) : stdgo.math_test.Math_test.T_floatTest)), ((new stdgo.math_test.Math_test.T_floatTest(Go.toInterface(((((3.4028234663852886e+38 : GoFloat32)) : GoFloat32))), ((("MaxFloat32" : GoString))), ((("3.4028235e+38" : GoString)))) : stdgo.math_test.Math_test.T_floatTest)), ((new stdgo.math_test.Math_test.T_floatTest(Go.toInterface(((((1.401298464324817e-45 : GoFloat32)) : GoFloat32))), ((("SmallestNonzeroFloat32" : GoString))), ((("1e-45" : GoString)))) : stdgo.math_test.Math_test.T_floatTest))) : Slice<stdgo.math_test.Math_test.T_floatTest>));
var _indirectSqrt : GoFloat64 -> GoFloat64 = sqrt;
var _copysignNeg : GoFloat64 = ((-1 : GoFloat64));
var _absPos : GoFloat64 = ((0.5 : GoFloat64));
var _pow10pos : GoInt = ((((300 : GoInt)) : GoInt));
var _pow10neg : GoInt = ((((-300 : GoInt)) : GoInt));
var _roundNeg : GoFloat64 = ((((-2.5 : GoFloat64)) : GoFloat64));
var _signbitPos : GoFloat64 = ((2.5 : GoFloat64));
var _roundUint64 : GoUInt64 = ((((5 : GoUInt64)) : GoUInt64));
var _roundFloat32 : GoFloat32 = ((((-2.5 : GoFloat32)) : GoFloat32));
var _roundUint32 : GoUInt32 = ((((5 : GoUInt32)) : GoUInt32));
var _trigHuge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.68435456e+08 : GoFloat64)), ((5.36870912e+08 : GoFloat64)), ((1.073741824e+09 : GoFloat64)), ((3.4359738368e+10 : GoFloat64)), ((1.329227995784916e+36 : GoFloat64)), ((1.7668470647783843e+72 : GoFloat64)), ((3.1217485503159922e+144 : GoFloat64)), ((1.8919697882131776e+69 : GoFloat64)), ((2.514859209672214e+105 : GoFloat64)), ((1.7976931348623157e+308 : GoFloat64))) : Slice<GoFloat64>));
var _cosHuge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.16556897949057875 : GoFloat64)), ((-0.9451738260608966 : GoFloat64)), ((0.7867071229411882 : GoFloat64)), ((-0.764663012496353 : GoFloat64)), ((-0.9258790228548379 : GoFloat64)), ((0.9360104259335379 : GoFloat64)), ((-0.2828277764019379 : GoFloat64)), ((-0.14616431394103618 : GoFloat64)), ((-0.7945605821067141 : GoFloat64)), ((-0.9999876894265599 : GoFloat64))) : Slice<GoFloat64>));
var _sinHuge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((-0.9861982118369756 : GoFloat64)), ((0.3265676630185633 : GoFloat64)), ((-0.6173264150460421 : GoFloat64)), ((-0.6444303510232912 : GoFloat64)), ((0.377820109360752 : GoFloat64)), ((-0.35197227524865776 : GoFloat64)), ((0.9591707089436872 : GoFloat64)), ((0.9892603263702362 : GoFloat64)), ((-0.6071848823564695 : GoFloat64)), ((0.00496195478918406 : GoFloat64))) : Slice<GoFloat64>));
var _tanHuge : Slice<GoFloat64> = ((new Slice<GoFloat64>(((5.956418979396394 : GoFloat64)), ((-0.3455106923343039 : GoFloat64)), ((-0.7846966133192004 : GoFloat64)), ((0.8427638587087598 : GoFloat64)), ((-0.40806638884180424 : GoFloat64)), ((-0.37603456702698074 : GoFloat64)), ((-3.391359650547799 : GoFloat64)), ((-6.76813854009065 : GoFloat64)), ((0.7641769501660493 : GoFloat64)), ((-0.00496201587444489 : GoFloat64))) : Slice<GoFloat64>));
var globalI : GoInt = ((0 : GoInt));
var globalB : Bool = false;
var globalF : GoFloat64 = ((0 : GoFloat64));
@:structInit class T_fi {
    public var _f : GoFloat64 = ((0 : GoFloat64));
    public var _i : GoInt = ((0 : GoInt));
    public function new(?_f:GoFloat64, ?_i:GoInt) {
        if (_f != null) this._f = _f;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fi(_f, _i);
    }
}
@:structInit class T_floatTest {
    public var _val : AnyInterface = ((null : AnyInterface));
    public var _name : GoString = (("" : GoString));
    public var _str : GoString = (("" : GoString));
    public function new(?_val:AnyInterface, ?_name:GoString, ?_str:GoString) {
        if (_val != null) this._val = _val;
        if (_name != null) this._name = _name;
        if (_str != null) this._str = _str;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_floatTest(_val, _name, _str);
    }
}
@:structInit @:local class T__struct_0 {
    public var _x : GoFloat64 = ((0 : GoFloat64));
    public var _y : GoFloat64 = ((0 : GoFloat64));
    public var _z : GoFloat64 = ((0 : GoFloat64));
    public var _want : GoFloat64 = ((0 : GoFloat64));
    public function toString():String return "{" + Go.string(_x) + " " + Go.string(_y) + " " + Go.string(_z) + " " + Go.string(_want) + "}";
    public function new(?_x:GoFloat64, ?_y:GoFloat64, ?_z:GoFloat64, ?_want:GoFloat64, ?toString) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_x, _y, _z, _want);
    }
}
function _tolerance(_a:GoFloat64, _b:GoFloat64, _e:GoFloat64):Bool {
        if (_a == _b) {
            return true;
        };
        var _d:GoFloat64 = _a - _b;
        if (_d < ((0 : GoFloat64))) {
            _d = -_d;
        };
        if (_b != ((0 : GoFloat64))) {
            _e = _e * _b;
            if (_e < ((0 : GoFloat64))) {
                _e = -_e;
            };
        };
        return _d < _e;
    }
function _close(_a:GoFloat64, _b:GoFloat64):Bool {
        return _tolerance(_a, _b, ((1e-14 : GoFloat64)));
    }
function _veryclose(_a:GoFloat64, _b:GoFloat64):Bool {
        return _tolerance(_a, _b, ((4e-16 : GoFloat64)));
    }
function _soclose(_a:GoFloat64, _b:GoFloat64, _e:GoFloat64):Bool {
        return _tolerance(_a, _b, _e);
    }
function _alike(_a:GoFloat64, _b:GoFloat64):Bool {
        if (isNaN(_a) && isNaN(_b)) {
            return true;
        } else if (_a == _b) {
            return signbit(_a) == signbit(_b);
        };
        return false;
    }
function testNaN(_t:stdgo.testing.Testing.T_):Void {
        var _f64:GoFloat64 = naN();
        if (_f64 == _f64) {
            _t.fatalf(((("NaN() returns %g, expected NaN" : GoString))), Go.toInterface(_f64));
        };
        var _f32:GoFloat32 = ((_f64 : GoFloat32));
        if (_f32 == _f32) {
            _t.fatalf(((("float32(NaN()) is %g, expected NaN" : GoString))), Go.toInterface(_f32));
        };
    }
function testAcos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = acos(_a);
                    if (!_close((_acos != null ? _acos[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Acos(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_acos != null ? _acos[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfacosSC != null ? _vfacosSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = acos((_vfacosSC != null ? _vfacosSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_acosSC != null ? _acosSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Acos(%g) = %g, want %g" : GoString))), Go.toInterface((_vfacosSC != null ? _vfacosSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_acosSC != null ? _acosSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAcosh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = ((1 : GoFloat64)) + abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = acosh(_a);
                    if (!_veryclose((_acosh != null ? _acosh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Acosh(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_acosh != null ? _acosh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfacoshSC != null ? _vfacoshSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = acosh((_vfacoshSC != null ? _vfacoshSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_acoshSC != null ? _acoshSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Acosh(%g) = %g, want %g" : GoString))), Go.toInterface((_vfacoshSC != null ? _vfacoshSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_acoshSC != null ? _acoshSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAsin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = asin(_a);
                    if (!_veryclose((_asin != null ? _asin[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_asin != null ? _asin[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfasinSC != null ? _vfasinSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = asin((_vfasinSC != null ? _vfasinSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_asinSC != null ? _asinSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface((_vfasinSC != null ? _vfasinSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_asinSC != null ? _asinSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAsinh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = asinh((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_asinh != null ? _asinh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_asinh != null ? _asinh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfasinhSC != null ? _vfasinhSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = asinh((_vfasinhSC != null ? _vfasinhSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_asinhSC != null ? _asinhSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vfasinhSC != null ? _vfasinhSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_asinhSC != null ? _asinhSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAtan(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = atan((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_atan != null ? _atan[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_atan != null ? _atan[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfatanSC != null ? _vfatanSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = atan((_vfatanSC != null ? _vfatanSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_atanSC != null ? _atanSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface((_vfatanSC != null ? _vfatanSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_atanSC != null ? _atanSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAtanh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = atanh(_a);
                    if (!_veryclose((_atanh != null ? _atanh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_atanh != null ? _atanh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfatanhSC != null ? _vfatanhSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = atanh((_vfatanhSC != null ? _vfatanhSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_atanhSC != null ? _atanhSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface((_vfatanhSC != null ? _vfatanhSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_atanhSC != null ? _atanhSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAtan2(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = atan2(((10 : GoFloat64)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_atan2 != null ? _atan2[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atan2(10, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_atan2 != null ? _atan2[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfatan2SC != null ? _vfatan2SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = atan2(((_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_atan2SC != null ? _atan2SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Atan2(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfatan2SC != null ? _vfatan2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_atan2SC != null ? _atan2SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testCbrt(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cbrt((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_cbrt != null ? _cbrt[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cbrt(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_cbrt != null ? _cbrt[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfcbrtSC != null ? _vfcbrtSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cbrt((_vfcbrtSC != null ? _vfcbrtSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_cbrtSC != null ? _cbrtSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cbrt(%g) = %g, want %g" : GoString))), Go.toInterface((_vfcbrtSC != null ? _vfcbrtSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_cbrtSC != null ? _cbrtSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testCeil(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ceil((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_alike((_ceil != null ? _ceil[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ceil(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_ceil != null ? _ceil[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfceilSC != null ? _vfceilSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ceil((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ceil(%g) = %g, want %g" : GoString))), Go.toInterface((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testCopysign(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = copysign((_vf != null ? _vf[_i] : ((0 : GoFloat64))), ((-1 : GoFloat64)));
                    if ((_copysign != null ? _copysign[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Copysign(%g, -1) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_copysign != null ? _copysign[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = copysign((_vf != null ? _vf[_i] : ((0 : GoFloat64))), ((1 : GoFloat64)));
                    if (-(_copysign != null ? _copysign[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Copysign(%g, 1) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(-(_copysign != null ? _copysign[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfcopysignSC != null ? _vfcopysignSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = copysign((_vfcopysignSC != null ? _vfcopysignSC[_i] : ((0 : GoFloat64))), ((-1 : GoFloat64)));
                    if (!_alike((_copysignSC != null ? _copysignSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Copysign(%g, -1) = %g, want %g" : GoString))), Go.toInterface((_vfcopysignSC != null ? _vfcopysignSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_copysignSC != null ? _copysignSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testCos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cos((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_cos != null ? _cos[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_cos != null ? _cos[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfcosSC != null ? _vfcosSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cos((_vfcosSC != null ? _vfcosSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_cosSC != null ? _cosSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface((_vfcosSC != null ? _vfcosSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_cosSC != null ? _cosSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testCosh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cosh((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_cosh != null ? _cosh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_cosh != null ? _cosh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfcoshSC != null ? _vfcoshSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = cosh((_vfcoshSC != null ? _vfcoshSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_coshSC != null ? _coshSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface((_vfcoshSC != null ? _vfcoshSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_coshSC != null ? _coshSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testErf(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = erf(_a);
                    if (!_veryclose((_erf != null ? _erf[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erf(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_erf != null ? _erf[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vferfSC != null ? _vferfSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = erf((_vferfSC != null ? _vferfSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_erfSC != null ? _erfSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erf(%g) = %g, want %g" : GoString))), Go.toInterface((_vferfSC != null ? _vferfSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_erfSC != null ? _erfSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testErfc(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = erfc(_a);
                    if (!_veryclose((_erfc != null ? _erfc[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfc(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_erfc != null ? _erfc[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vferfcSC != null ? _vferfcSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = erfc((_vferfcSC != null ? _vferfcSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_erfcSC != null ? _erfcSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfc(%g) = %g, want %g" : GoString))), Go.toInterface((_vferfcSC != null ? _vferfcSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_erfcSC != null ? _erfcSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testErfinv(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = erfinv(_a);
                    if (!_veryclose((_erfinv != null ? _erfinv[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfinv(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_erfinv != null ? _erfinv[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vferfinvSC != null ? _vferfinvSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = erfinv((_vferfinvSC != null ? _vferfinvSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_erfinvSC != null ? _erfinvSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfinv(%g) = %g, want %g" : GoString))), Go.toInterface((_vferfinvSC != null ? _vferfinvSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_erfinvSC != null ? _erfinvSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _x:GoFloat64 = ((-0.9 : GoFloat64));
            Go.cfor(_x <= ((0.9 : GoFloat64)), _x = _x + (((0.01 : GoFloat64))), {
                {
                    var _f:GoFloat64 = erf(erfinv(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(((("Erf(Erfinv(%g)) = %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_f), Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x:GoFloat64 = ((-0.9 : GoFloat64));
            Go.cfor(_x <= ((0.9 : GoFloat64)), _x = _x + (((0.01 : GoFloat64))), {
                {
                    var _f:GoFloat64 = erfinv(erf(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(((("Erfinv(Erf(%g)) = %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_f), Go.toInterface(_x));
                    };
                };
            });
        };
    }
function testErfcinv(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = ((1 : GoFloat64)) - ((_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((10 : GoFloat64)));
                {
                    var _f:GoFloat64 = erfcinv(_a);
                    if (!_veryclose((_erfinv != null ? _erfinv[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfcinv(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_erfinv != null ? _erfinv[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vferfcinvSC != null ? _vferfcinvSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = erfcinv((_vferfcinvSC != null ? _vferfcinvSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_erfcinvSC != null ? _erfcinvSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Erfcinv(%g) = %g, want %g" : GoString))), Go.toInterface((_vferfcinvSC != null ? _vferfcinvSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_erfcinvSC != null ? _erfcinvSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _x:GoFloat64 = ((0.1 : GoFloat64));
            Go.cfor(_x <= ((1.9 : GoFloat64)), _x = _x + (((0.01 : GoFloat64))), {
                {
                    var _f:GoFloat64 = erfc(erfcinv(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(((("Erfc(Erfcinv(%g)) = %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_f), Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x:GoFloat64 = ((0.1 : GoFloat64));
            Go.cfor(_x <= ((1.9 : GoFloat64)), _x = _x + (((0.01 : GoFloat64))), {
                {
                    var _f:GoFloat64 = erfcinv(erfc(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(((("Erfcinv(Erfc(%g)) = %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_f), Go.toInterface(_x));
                    };
                };
            });
        };
    }
function testExp(_t:stdgo.testing.Testing.T_):Void {
        _testExp(_t, exp, ((("Exp" : GoString))));
        _testExp(_t, expGo, ((("ExpGo" : GoString))));
    }
function _testExp(_t:stdgo.testing.Testing.T_, exp:GoFloat64 -> GoFloat64, _name:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = exp((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_exp != null ? _exp[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("%s(%g) = %g, want %g" : GoString))), Go.toInterface(_name), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_exp != null ? _exp[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfexpSC != null ? _vfexpSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = exp((_vfexpSC != null ? _vfexpSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_expSC != null ? _expSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("%s(%g) = %g, want %g" : GoString))), Go.toInterface(_name), Go.toInterface((_vfexpSC != null ? _vfexpSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_expSC != null ? _expSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testExpm1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((100 : GoFloat64));
                {
                    var _f:GoFloat64 = expm1(_a);
                    if (!_veryclose((_expm1 != null ? _expm1[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Expm1(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_expm1 != null ? _expm1[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) * ((10 : GoFloat64));
                {
                    var _f:GoFloat64 = expm1(_a);
                    if (!_close((_expm1Large != null ? _expm1Large[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Expm1(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_expm1Large != null ? _expm1Large[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfexpm1SC != null ? _vfexpm1SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = expm1((_vfexpm1SC != null ? _vfexpm1SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_expm1SC != null ? _expm1SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Expm1(%g) = %g, want %g" : GoString))), Go.toInterface((_vfexpm1SC != null ? _vfexpm1SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_expm1SC != null ? _expm1SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testExp2(_t:stdgo.testing.Testing.T_):Void {
        _testExp2(_t, exp2, ((("Exp2" : GoString))));
        _testExp2(_t, exp2Go, ((("Exp2Go" : GoString))));
    }
function _testExp2(_t:stdgo.testing.Testing.T_, exp2:GoFloat64 -> GoFloat64, _name:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = exp2((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_exp2 != null ? _exp2[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("%s(%g) = %g, want %g" : GoString))), Go.toInterface(_name), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_exp2 != null ? _exp2[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfexp2SC != null ? _vfexp2SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = exp2((_vfexp2SC != null ? _vfexp2SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_exp2SC != null ? _exp2SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("%s(%g) = %g, want %g" : GoString))), Go.toInterface(_name), Go.toInterface((_vfexp2SC != null ? _vfexp2SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_exp2SC != null ? _exp2SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _n:GoInt = ((-1074 : GoInt));
            Go.cfor(_n < ((1024 : GoInt)), _n++, {
                var _f:GoFloat64 = exp2(((_n : GoFloat64)));
                var _vf:GoFloat64 = ldexp(((1 : GoFloat64)), _n);
                if (_f != _vf) {
                    _t.errorf(((("%s(%d) = %g, want %g" : GoString))), Go.toInterface(_name), Go.toInterface(_n), Go.toInterface(_f), Go.toInterface(_vf));
                };
            });
        };
    }
function testAbs(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if ((_fabs != null ? _fabs[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Abs(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fabs != null ? _fabs[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffabsSC != null ? _vffabsSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = abs((_vffabsSC != null ? _vffabsSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_fabsSC != null ? _fabsSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Abs(%g) = %g, want %g" : GoString))), Go.toInterface((_vffabsSC != null ? _vffabsSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fabsSC != null ? _fabsSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testDim(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = dim((_vf != null ? _vf[_i] : ((0 : GoFloat64))), ((0 : GoFloat64)));
                    if ((_fdim != null ? _fdim[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Dim(%g, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(((0 : GoFloat64))), Go.toInterface(_f), Go.toInterface((_fdim != null ? _fdim[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdimSC != null ? _vffdimSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = dim(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fdimSC != null ? _fdimSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Dim(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fdimSC != null ? _fdimSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdim2SC != null ? _vffdim2SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = dim(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fdimSC != null ? _fdimSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Dim(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fdimSC != null ? _fdimSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testFloor(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = floor((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_alike((_floor != null ? _floor[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Floor(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_floor != null ? _floor[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfceilSC != null ? _vfceilSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = floor((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Floor(%g) = %g, want %g" : GoString))), Go.toInterface((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testMax(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = max((_vf != null ? _vf[_i] : ((0 : GoFloat64))), (_ceil != null ? _ceil[_i] : ((0 : GoFloat64))));
                    if ((_ceil != null ? _ceil[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Max(%g, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface((_ceil != null ? _ceil[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_ceil != null ? _ceil[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdimSC != null ? _vffdimSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = max(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fmaxSC != null ? _fmaxSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Max(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fmaxSC != null ? _fmaxSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdim2SC != null ? _vffdim2SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = max(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fmaxSC != null ? _fmaxSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Max(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fmaxSC != null ? _fmaxSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testMin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = min((_vf != null ? _vf[_i] : ((0 : GoFloat64))), (_floor != null ? _floor[_i] : ((0 : GoFloat64))));
                    if ((_floor != null ? _floor[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Min(%g, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface((_floor != null ? _floor[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_floor != null ? _floor[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdimSC != null ? _vffdimSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = min(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fminSC != null ? _fminSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Min(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdimSC != null ? _vffdimSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fminSC != null ? _fminSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffdim2SC != null ? _vffdim2SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = min(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fminSC != null ? _fminSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Min(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffdim2SC != null ? _vffdim2SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fminSC != null ? _fminSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testMod(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = mod(((10 : GoFloat64)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if ((_fmod != null ? _fmod[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Mod(10, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fmod != null ? _fmod[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffmodSC != null ? _vffmodSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = mod(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fmodSC != null ? _fmodSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Mod(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fmodSC != null ? _fmodSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = mod(((5.9790119248836734e+200 : GoFloat64)), ((1.1258465975523544 : GoFloat64)));
            if (((0.6447968302508578 : GoFloat64)) != _f) {
                _t.errorf(((("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want 0.6447968302508578" : GoString))), Go.toInterface(_f));
            };
        };
    }
function testFrexp(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = frexp((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _j:GoInt = __tmp__._1;
                    if (!_veryclose((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._f, _f) || ((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._i != _j)) {
                        _t.errorf(((("Frexp(%g) = %g, %d, want %g, %d" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_j), Go.toInterface((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._i));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpSC != null ? _vffrexpSC.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = frexp((_vffrexpSC != null ? _vffrexpSC[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _j:GoInt = __tmp__._1;
                    if (!_alike((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f, _f) || ((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i != _j)) {
                        _t.errorf(((("Frexp(%g) = %g, %d, want %g, %d" : GoString))), Go.toInterface((_vffrexpSC != null ? _vffrexpSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_j), Go.toInterface((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpBC != null ? _vffrexpBC.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = frexp((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _j:GoInt = __tmp__._1;
                    if (!_alike((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f, _f) || ((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i != _j)) {
                        _t.errorf(((("Frexp(%g) = %g, %d, want %g, %d" : GoString))), Go.toInterface((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_j), Go.toInterface((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i));
                    };
                };
            });
        };
    }
function testGamma(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = gamma((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_gamma != null ? _gamma[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Gamma(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_gamma != null ? _gamma[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        for (_0 => _g in _vfgamma) {
            var _f:GoFloat64 = gamma((_g != null ? _g[((0 : GoInt))] : ((0 : GoFloat64))));
            var _ok:Bool = false;
            if (((isNaN((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64)))) || isInf((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64))), ((0 : GoInt)))) || ((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64))) == ((0 : GoFloat64)))) || (_f == ((0 : GoFloat64)))) {
                _ok = _alike((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64))), _f);
            } else if (((_g != null ? _g[((0 : GoInt))] : ((0 : GoFloat64))) > ((-50 : GoFloat64))) && ((_g != null ? _g[((0 : GoInt))] : ((0 : GoFloat64))) <= ((171 : GoFloat64)))) {
                _ok = _veryclose((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64))), _f);
            } else {
                _ok = _close((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64))), _f);
            };
            if (!_ok) {
                _t.errorf(((("Gamma(%g) = %g, want %g" : GoString))), Go.toInterface((_g != null ? _g[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_g != null ? _g[((1 : GoInt))] : ((0 : GoFloat64)))));
            };
        };
    }
function testHypot(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))) * sqrt(((2 : GoFloat64))));
                {
                    var _f:GoFloat64 = hypot(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64))), ((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64))));
                    if (!_veryclose(_a, _f)) {
                        _t.errorf(((("Hypot(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))), Go.toInterface(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfhypotSC != null ? _vfhypotSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = hypot(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_hypotSC != null ? _hypotSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Hypot(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_hypotSC != null ? _hypotSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testHypotGo(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))) * sqrt(((2 : GoFloat64))));
                {
                    var _f:GoFloat64 = hypotGo(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64))), ((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64))));
                    if (!_veryclose(_a, _f)) {
                        _t.errorf(((("HypotGo(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))), Go.toInterface(((1e+200 : GoFloat64)) * (_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfhypotSC != null ? _vfhypotSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = hypotGo(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_hypotSC != null ? _hypotSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("HypotGo(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfhypotSC != null ? _vfhypotSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_hypotSC != null ? _hypotSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testIlogb(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoInt = (_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._i - ((1 : GoInt));
                {
                    var _e:GoInt = ilogb((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (_a != _e) {
                        _t.errorf(((("Ilogb(%g) = %d, want %d" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_e), Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogbSC != null ? _vflogbSC.length : ((0 : GoInt))), _i++, {
                {
                    var _e:GoInt = ilogb((_vflogbSC != null ? _vflogbSC[_i] : ((0 : GoFloat64))));
                    if ((_ilogbSC != null ? _ilogbSC[_i] : ((0 : GoInt))) != _e) {
                        _t.errorf(((("Ilogb(%g) = %d, want %d" : GoString))), Go.toInterface((_vflogbSC != null ? _vflogbSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_e), Go.toInterface((_ilogbSC != null ? _ilogbSC[_i] : ((0 : GoInt)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpBC != null ? _vffrexpBC.length : ((0 : GoInt))), _i++, {
                {
                    var _e:GoInt = ilogb((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64))));
                    if ((((_logbBC != null ? _logbBC[_i] : ((0 : GoFloat64))) : GoInt)) != _e) {
                        _t.errorf(((("Ilogb(%g) = %d, want %d" : GoString))), Go.toInterface((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64)))), Go.toInterface(_e), Go.toInterface((((_logbBC != null ? _logbBC[_i] : ((0 : GoFloat64))) : GoInt))));
                    };
                };
            });
        };
    }
function testJ0(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = j0((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_soclose((_j0 != null ? _j0[_i] : ((0 : GoFloat64))), _f, ((4e-14 : GoFloat64)))) {
                        _t.errorf(((("J0(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j0 != null ? _j0[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfj0SC != null ? _vfj0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = j0((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_j0SC != null ? _j0SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("J0(%g) = %g, want %g" : GoString))), Go.toInterface((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j0SC != null ? _j0SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testJ1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = j1((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_j1 != null ? _j1[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("J1(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j1 != null ? _j1[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfj0SC != null ? _vfj0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = j1((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_j1SC != null ? _j1SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("J1(%g) = %g, want %g" : GoString))), Go.toInterface((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j1SC != null ? _j1SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testJn(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = jn(((2 : GoInt)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_j2 != null ? _j2[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Jn(2, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j2 != null ? _j2[_i] : ((0 : GoFloat64)))));
                    };
                };
                {
                    var _f:GoFloat64 = jn(((-3 : GoInt)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_jM3 != null ? _jM3[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Jn(-3, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_jM3 != null ? _jM3[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfj0SC != null ? _vfj0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = jn(((2 : GoInt)), (_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_j2SC != null ? _j2SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Jn(2, %g) = %g, want %g" : GoString))), Go.toInterface((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_j2SC != null ? _j2SC[_i] : ((0 : GoFloat64)))));
                    };
                };
                {
                    var _f:GoFloat64 = jn(((-3 : GoInt)), (_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_jM3SC != null ? _jM3SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Jn(-3, %g) = %g, want %g" : GoString))), Go.toInterface((_vfj0SC != null ? _vfj0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_jM3SC != null ? _jM3SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLdexp(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ldexp((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._f, (_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._i);
                    if (!_veryclose((_vf != null ? _vf[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ldexp(%g, %d) = %g, want %g" : GoString))), Go.toInterface((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexp != null ? _frexp[_i] : new stdgo.math_test.Math_test.T_fi())._i), Go.toInterface(_f), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpSC != null ? _vffrexpSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ldexp((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f, (_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i);
                    if (!_alike((_vffrexpSC != null ? _vffrexpSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ldexp(%g, %d) = %g, want %g" : GoString))), Go.toInterface((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexpSC != null ? _frexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i), Go.toInterface(_f), Go.toInterface((_vffrexpSC != null ? _vffrexpSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfldexpSC != null ? _vfldexpSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ldexp((_vfldexpSC != null ? _vfldexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f, (_vfldexpSC != null ? _vfldexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i);
                    if (!_alike((_ldexpSC != null ? _ldexpSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ldexp(%g, %d) = %g, want %g" : GoString))), Go.toInterface((_vfldexpSC != null ? _vfldexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_vfldexpSC != null ? _vfldexpSC[_i] : new stdgo.math_test.Math_test.T_fi())._i), Go.toInterface(_f), Go.toInterface((_ldexpSC != null ? _ldexpSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpBC != null ? _vffrexpBC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ldexp((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f, (_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i);
                    if (!_alike((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ldexp(%g, %d) = %g, want %g" : GoString))), Go.toInterface((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_frexpBC != null ? _frexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i), Go.toInterface(_f), Go.toInterface((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfldexpBC != null ? _vfldexpBC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = ldexp((_vfldexpBC != null ? _vfldexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f, (_vfldexpBC != null ? _vfldexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i);
                    if (!_alike((_ldexpBC != null ? _ldexpBC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Ldexp(%g, %d) = %g, want %g" : GoString))), Go.toInterface((_vfldexpBC != null ? _vfldexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_vfldexpBC != null ? _vfldexpBC[_i] : new stdgo.math_test.Math_test.T_fi())._i), Go.toInterface(_f), Go.toInterface((_ldexpBC != null ? _ldexpBC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLgamma(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = lgamma((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _s:GoInt = __tmp__._1;
                    if (!_close((_lgamma != null ? _lgamma[_i] : new stdgo.math_test.Math_test.T_fi())._f, _f) || ((_lgamma != null ? _lgamma[_i] : new stdgo.math_test.Math_test.T_fi())._i != _s)) {
                        _t.errorf(((("Lgamma(%g) = %g, %d, want %g, %d" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_s), Go.toInterface((_lgamma != null ? _lgamma[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_lgamma != null ? _lgamma[_i] : new stdgo.math_test.Math_test.T_fi())._i));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflgammaSC != null ? _vflgammaSC.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = lgamma((_vflgammaSC != null ? _vflgammaSC[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _s:GoInt = __tmp__._1;
                    if (!_alike((_lgammaSC != null ? _lgammaSC[_i] : new stdgo.math_test.Math_test.T_fi())._f, _f) || ((_lgammaSC != null ? _lgammaSC[_i] : new stdgo.math_test.Math_test.T_fi())._i != _s)) {
                        _t.errorf(((("Lgamma(%g) = %g, %d, want %g, %d" : GoString))), Go.toInterface((_vflgammaSC != null ? _vflgammaSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_s), Go.toInterface((_lgammaSC != null ? _lgammaSC[_i] : new stdgo.math_test.Math_test.T_fi())._f), Go.toInterface((_lgammaSC != null ? _lgammaSC[_i] : new stdgo.math_test.Math_test.T_fi())._i));
                    };
                };
            });
        };
    }
function testLog(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = log(_a);
                    if ((_log != null ? _log[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_log != null ? _log[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = log(((10 : GoFloat64)));
            if (_f != ((2.302585092994046 : GoFloat64))) {
                _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface(((10 : GoFloat64))), Go.toInterface(_f), Go.toInterface(((2.302585092994046 : GoFloat64))));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogSC != null ? _vflogSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = log((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_logSC != null ? _logSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logSC != null ? _logSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLogb(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = logb((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if ((_logb != null ? _logb[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Logb(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logb != null ? _logb[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogbSC != null ? _vflogbSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = logb((_vflogbSC != null ? _vflogbSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_logbSC != null ? _logbSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Logb(%g) = %g, want %g" : GoString))), Go.toInterface((_vflogbSC != null ? _vflogbSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logbSC != null ? _logbSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffrexpBC != null ? _vffrexpBC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = logb((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_logbBC != null ? _logbBC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Logb(%g) = %g, want %g" : GoString))), Go.toInterface((_vffrexpBC != null ? _vffrexpBC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logbBC != null ? _logbBC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLog10(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = log10(_a);
                    if (!_veryclose((_log10 != null ? _log10[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_log10 != null ? _log10[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = log10(((2.718281828459045 : GoFloat64)));
            if (_f != ((0.4342944819032518 : GoFloat64))) {
                _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface(((2.718281828459045 : GoFloat64))), Go.toInterface(_f), Go.toInterface(((0.4342944819032518 : GoFloat64))));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogSC != null ? _vflogSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = log10((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_logSC != null ? _logSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logSC != null ? _logSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLog1p(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = (_vf != null ? _vf[_i] : ((0 : GoFloat64))) / ((100 : GoFloat64));
                {
                    var _f:GoFloat64 = log1p(_a);
                    if (!_veryclose((_log1p != null ? _log1p[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log1p(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_log1p != null ? _log1p[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        var _a:GoFloat64 = ((9 : GoFloat64));
        {
            var _f:GoFloat64 = log1p(_a);
            if (_f != ((2.302585092994046 : GoFloat64))) {
                _t.errorf(((("Log1p(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface(((2.302585092994046 : GoFloat64))));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogSC != null ? _vflogSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = log1p((_vflog1pSC != null ? _vflog1pSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_log1pSC != null ? _log1pSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log1p(%g) = %g, want %g" : GoString))), Go.toInterface((_vflog1pSC != null ? _vflog1pSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_log1pSC != null ? _log1pSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testLog2(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = log2(_a);
                    if (!_veryclose((_log2 != null ? _log2[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log2(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_log2 != null ? _log2[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = log2(((2.718281828459045 : GoFloat64)));
            if (_f != ((1.4426950408889634 : GoFloat64))) {
                _t.errorf(((("Log2(%g) = %g, want %g" : GoString))), Go.toInterface(((2.718281828459045 : GoFloat64))), Go.toInterface(_f), Go.toInterface(((1.4426950408889634 : GoFloat64))));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vflogSC != null ? _vflogSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = log2((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_logSC != null ? _logSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Log2(%g) = %g, want %g" : GoString))), Go.toInterface((_vflogSC != null ? _vflogSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_logSC != null ? _logSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((-1074 : GoInt));
            Go.cfor(_i <= ((1023 : GoInt)), _i++, {
                var _f:GoFloat64 = ldexp(((1 : GoFloat64)), _i);
                var _l:GoFloat64 = log2(_f);
                if (_l != ((_i : GoFloat64))) {
                    _t.errorf(((("Log2(2**%d) = %g, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_l), Go.toInterface(_i));
                };
            });
        };
    }
function testModf(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = modf((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _g:GoFloat64 = __tmp__._1;
                    if (!_veryclose(((_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), _f) || !_veryclose(((_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))), _g)) {
                        _t.errorf(((("Modf(%g) = %g, %g, want %g, %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_g), Go.toInterface(((_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modf != null ? _modf[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfmodfSC != null ? _vfmodfSC.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = modf((_vfmodfSC != null ? _vfmodfSC[_i] : ((0 : GoFloat64)))), _f:GoFloat64 = __tmp__._0, _g:GoFloat64 = __tmp__._1;
                    if (!_alike(((_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), _f) || !_alike(((_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))), _g)) {
                        _t.errorf(((("Modf(%g) = %g, %g, want %g, %g" : GoString))), Go.toInterface((_vfmodfSC != null ? _vfmodfSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(_g), Go.toInterface(((_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_modfSC != null ? _modfSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testNextafter32(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _vfi:GoFloat32 = (((_vf != null ? _vf[_i] : ((0 : GoFloat64))) : GoFloat32));
                {
                    var _f:GoFloat32 = nextafter32(_vfi, ((10 : GoFloat32)));
                    if ((_nextafter32 != null ? _nextafter32[_i] : ((0 : GoFloat32))) != _f) {
                        _t.errorf(((("Nextafter32(%g, %g) = %g want %g" : GoString))), Go.toInterface(_vfi), Go.toInterface(((10 : GoFloat64))), Go.toInterface(_f), Go.toInterface((_nextafter32 != null ? _nextafter32[_i] : ((0 : GoFloat32)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfnextafter32SC != null ? _vfnextafter32SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat32 = nextafter32(((_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))])) != null ? (_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))]))[((0 : GoInt))] : ((0 : GoFloat32))), ((_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))])) != null ? (_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))]))[((1 : GoInt))] : ((0 : GoFloat32))));
                    if (!_alike((((_nextafter32SC != null ? _nextafter32SC[_i] : ((0 : GoFloat32))) : GoFloat64)), ((_f : GoFloat64)))) {
                        _t.errorf(((("Nextafter32(%g, %g) = %g want %g" : GoString))), Go.toInterface(((_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))])) != null ? (_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))]))[((0 : GoInt))] : ((0 : GoFloat32)))), Go.toInterface(((_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))])) != null ? (_vfnextafter32SC != null ? _vfnextafter32SC[_i] : new GoArray<GoFloat32>(...[for (i in 0 ... 2) ((0 : GoFloat32))]))[((1 : GoInt))] : ((0 : GoFloat32)))), Go.toInterface(_f), Go.toInterface((_nextafter32SC != null ? _nextafter32SC[_i] : ((0 : GoFloat32)))));
                    };
                };
            });
        };
    }
function testNextafter64(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = nextafter((_vf != null ? _vf[_i] : ((0 : GoFloat64))), ((10 : GoFloat64)));
                    if ((_nextafter64 != null ? _nextafter64[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Nextafter64(%g, %g) = %g want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(((10 : GoFloat64))), Go.toInterface(_f), Go.toInterface((_nextafter64 != null ? _nextafter64[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfnextafter64SC != null ? _vfnextafter64SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = nextafter(((_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_nextafter64SC != null ? _nextafter64SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Nextafter64(%g, %g) = %g want %g" : GoString))), Go.toInterface(((_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfnextafter64SC != null ? _vfnextafter64SC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_nextafter64SC != null ? _nextafter64SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testPow(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = pow(((10 : GoFloat64)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_pow != null ? _pow[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Pow(10, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_pow != null ? _pow[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfpowSC != null ? _vfpowSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = pow(((_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_powSC != null ? _powSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Pow(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfpowSC != null ? _vfpowSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_powSC != null ? _powSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testPow10(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfpow10SC != null ? _vfpow10SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = pow10((_vfpow10SC != null ? _vfpow10SC[_i] : ((0 : GoInt))));
                    if (!_alike((_pow10SC != null ? _pow10SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Pow10(%d) = %g, want %g" : GoString))), Go.toInterface((_vfpow10SC != null ? _vfpow10SC[_i] : ((0 : GoInt)))), Go.toInterface(_f), Go.toInterface((_pow10SC != null ? _pow10SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testRemainder(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = remainder(((10 : GoFloat64)), (_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if ((_remainder != null ? _remainder[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Remainder(10, %g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_remainder != null ? _remainder[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vffmodSC != null ? _vffmodSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = remainder(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))), ((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike((_fmodSC != null ? _fmodSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Remainder(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(((_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vffmodSC != null ? _vffmodSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_fmodSC != null ? _fmodSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = remainder(((5.9790119248836734e+200 : GoFloat64)), ((1.1258465975523544 : GoFloat64)));
            if (((-0.4810497673014966 : GoFloat64)) != _f) {
                _t.errorf(((("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want -0.4810497673014966" : GoString))), Go.toInterface(_f));
            };
        };
        var _test:(GoFloat64, GoFloat64) -> Void = function(_x:GoFloat64, _y:GoFloat64):Void {
            {
                var _r:GoFloat64 = remainder(_x, _y);
                if ((_r == ((0 : GoFloat64))) && (signbit(_r) != signbit(_x))) {
                    _t.errorf(((("Remainder(x=%f, y=%f) = %f, sign of (zero) result should agree with sign of x" : GoString))), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_r));
                };
            };
        };
        {
            var _x:GoFloat64 = ((0 : GoFloat64));
            Go.cfor(_x <= ((3 : GoFloat64)), _x = _x + (((1 : GoFloat64))), {
                {
                    var _y:GoFloat64 = ((1 : GoFloat64));
                    Go.cfor(_y <= ((3 : GoFloat64)), _y = _y + (((1 : GoFloat64))), {
                        _test(_x, _y);
                        _test(_x, -_y);
                        _test(-_x, _y);
                        _test(-_x, -_y);
                    });
                };
            });
        };
    }
function testRound(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = round((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_alike((_round != null ? _round[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Round(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_round != null ? _round[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfroundSC != null ? _vfroundSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = round(((_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike(((_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Round(%g) = %g, want %g" : GoString))), Go.toInterface(((_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(((_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundSC != null ? _vfroundSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testRoundToEven(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = roundToEven((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_alike((_round != null ? _round[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("RoundToEven(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_round != null ? _round[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfroundEvenSC != null ? _vfroundEvenSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = roundToEven(((_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64))));
                    if (!_alike(((_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("RoundToEven(%g) = %g, want %g" : GoString))), Go.toInterface(((_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((0 : GoInt))] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface(((_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))])) != null ? (_vfroundEvenSC != null ? _vfroundEvenSC[_i] : new GoArray<GoFloat64>(...[for (i in 0 ... 2) ((0 : GoFloat64))]))[((1 : GoInt))] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testSignbit(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:Bool = signbit((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if ((_signbit != null ? _signbit[_i] : false) != _f) {
                        _t.errorf(((("Signbit(%g) = %t, want %t" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_signbit != null ? _signbit[_i] : false)));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfsignbitSC != null ? _vfsignbitSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:Bool = signbit((_vfsignbitSC != null ? _vfsignbitSC[_i] : ((0 : GoFloat64))));
                    if ((_signbitSC != null ? _signbitSC[_i] : false) != _f) {
                        _t.errorf(((("Signbit(%g) = %t, want %t" : GoString))), Go.toInterface((_vfsignbitSC != null ? _vfsignbitSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_signbitSC != null ? _signbitSC[_i] : false)));
                    };
                };
            });
        };
    }
function testSin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = sin((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_sin != null ? _sin[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sin != null ? _sin[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfsinSC != null ? _vfsinSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = sin((_vfsinSC != null ? _vfsinSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_sinSC != null ? _sinSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface((_vfsinSC != null ? _vfsinSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sinSC != null ? _sinSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testSincos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = sincos((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
                    if (!_veryclose((_sin != null ? _sin[_i] : ((0 : GoFloat64))), _s) || !_veryclose((_cos != null ? _cos[_i] : ((0 : GoFloat64))), _c)) {
                        _t.errorf(((("Sincos(%g) = %g, %g want %g, %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_s), Go.toInterface(_c), Go.toInterface((_sin != null ? _sin[_i] : ((0 : GoFloat64)))), Go.toInterface((_cos != null ? _cos[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testSinh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = sinh((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_close((_sinh != null ? _sinh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sinh != null ? _sinh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfsinhSC != null ? _vfsinhSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = sinh((_vfsinhSC != null ? _vfsinhSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_sinhSC != null ? _sinhSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vfsinhSC != null ? _vfsinhSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sinhSC != null ? _sinhSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testSqrt(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = sqrtGo(_a);
                    if ((_sqrt != null ? _sqrt[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("SqrtGo(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_sqrt != null ? _sqrt[_i] : ((0 : GoFloat64)))));
                    };
                };
                _a = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = sqrt(_a);
                    if ((_sqrt != null ? _sqrt[_i] : ((0 : GoFloat64))) != _f) {
                        _t.errorf(((("Sqrt(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_sqrt != null ? _sqrt[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfsqrtSC != null ? _vfsqrtSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = sqrtGo((_vfsqrtSC != null ? _vfsqrtSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_sqrtSC != null ? _sqrtSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("SqrtGo(%g) = %g, want %g" : GoString))), Go.toInterface((_vfsqrtSC != null ? _vfsqrtSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sqrtSC != null ? _sqrtSC[_i] : ((0 : GoFloat64)))));
                    };
                };
                {
                    var _f:GoFloat64 = sqrt((_vfsqrtSC != null ? _vfsqrtSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_sqrtSC != null ? _sqrtSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Sqrt(%g) = %g, want %g" : GoString))), Go.toInterface((_vfsqrtSC != null ? _vfsqrtSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sqrtSC != null ? _sqrtSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testTan(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = tan((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_tan != null ? _tan[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_tan != null ? _tan[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfsinSC != null ? _vfsinSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = tan((_vfsinSC != null ? _vfsinSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_sinSC != null ? _sinSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface((_vfsinSC != null ? _vfsinSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_sinSC != null ? _sinSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testTanh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = tanh((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_veryclose((_tanh != null ? _tanh[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_tanh != null ? _tanh[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vftanhSC != null ? _vftanhSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = tanh((_vftanhSC != null ? _vftanhSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_tanhSC != null ? _tanhSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface((_vftanhSC != null ? _vftanhSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_tanhSC != null ? _tanhSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testTrunc(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = trunc((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                    if (!_alike((_trunc != null ? _trunc[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Trunc(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_trunc != null ? _trunc[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfceilSC != null ? _vfceilSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = trunc((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Trunc(%g) = %g, want %g" : GoString))), Go.toInterface((_vfceilSC != null ? _vfceilSC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_ceilSC != null ? _ceilSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testY0(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = y0(_a);
                    if (!_close((_y0 != null ? _y0[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Y0(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_y0 != null ? _y0[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfy0SC != null ? _vfy0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = y0((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_y0SC != null ? _y0SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Y0(%g) = %g, want %g" : GoString))), Go.toInterface((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_y0SC != null ? _y0SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testY1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = y1(_a);
                    if (!_soclose((_y1 != null ? _y1[_i] : ((0 : GoFloat64))), _f, ((2e-14 : GoFloat64)))) {
                        _t.errorf(((("Y1(%g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_y1 != null ? _y1[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfy0SC != null ? _vfy0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = y1((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_y1SC != null ? _y1SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Y1(%g) = %g, want %g" : GoString))), Go.toInterface((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_y1SC != null ? _y1SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testYn(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _a:GoFloat64 = abs((_vf != null ? _vf[_i] : ((0 : GoFloat64))));
                {
                    var _f:GoFloat64 = yn(((2 : GoInt)), _a);
                    if (!_close((_y2 != null ? _y2[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Yn(2, %g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_y2 != null ? _y2[_i] : ((0 : GoFloat64)))));
                    };
                };
                {
                    var _f:GoFloat64 = yn(((-3 : GoInt)), _a);
                    if (!_close((_yM3 != null ? _yM3[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Yn(-3, %g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface(_f), Go.toInterface((_yM3 != null ? _yM3[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vfy0SC != null ? _vfy0SC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = yn(((2 : GoInt)), (_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_y2SC != null ? _y2SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Yn(2, %g) = %g, want %g" : GoString))), Go.toInterface((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_y2SC != null ? _y2SC[_i] : ((0 : GoFloat64)))));
                    };
                };
                {
                    var _f:GoFloat64 = yn(((-3 : GoInt)), (_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64))));
                    if (!_alike((_yM3SC != null ? _yM3SC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Yn(-3, %g) = %g, want %g" : GoString))), Go.toInterface((_vfy0SC != null ? _vfy0SC[_i] : ((0 : GoFloat64)))), Go.toInterface(_f), Go.toInterface((_yM3SC != null ? _yM3SC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _f:GoFloat64 = yn(((0 : GoInt)), ((0 : GoFloat64)));
            if (!_alike(inf(((-1 : GoInt))), _f)) {
                _t.errorf(((("Yn(0, 0) = %g, want %g" : GoString))), Go.toInterface(_f), Go.toInterface(inf(((-1 : GoInt)))));
            };
        };
    }
function testFMA(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _fmaC) {
            var _got:GoFloat64 = fma(_c._x, _c._y, _c._z);
            if (!_alike(_got, _c._want)) {
                _t.errorf(((("FMA(%g,%g,%g) == %g; want %g" : GoString))), Go.toInterface(_c._x), Go.toInterface(_c._y), Go.toInterface(_c._z), Go.toInterface(_got), Go.toInterface(_c._want));
            };
            _got = portableFMA(_c._x, _c._y, _c._z);
            if (!_alike(_got, _c._want)) {
                _t.errorf(((("PortableFMA(%g,%g,%g) == %g; want %g" : GoString))), Go.toInterface(_c._x), Go.toInterface(_c._y), Go.toInterface(_c._z), Go.toInterface(_got), Go.toInterface(_c._want));
            };
        };
    }
function testLargeCos(_t:stdgo.testing.Testing.T_):Void {
        var _large:GoFloat64 = ((((314159.26535897935 : GoFloat64)) : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_cosLarge != null ? _cosLarge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = cos((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large);
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
function testLargeSin(_t:stdgo.testing.Testing.T_):Void {
        var _large:GoFloat64 = ((((314159.26535897935 : GoFloat64)) : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_sinLarge != null ? _sinLarge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = sin((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large);
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
function testLargeSincos(_t:stdgo.testing.Testing.T_):Void {
        var _large:GoFloat64 = ((((314159.26535897935 : GoFloat64)) : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_sinLarge != null ? _sinLarge[_i] : ((0 : GoFloat64))), _g1:GoFloat64 = (_cosLarge != null ? _cosLarge[_i] : ((0 : GoFloat64)));
                var __tmp__ = sincos((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large), _f2:GoFloat64 = __tmp__._0, _g2:GoFloat64 = __tmp__._1;
                if (!_close(_f1, _f2) || !_close(_g1, _g2)) {
                    _t.errorf(((("Sincos(%g) = %g, %g, want %g, %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large), Go.toInterface(_f2), Go.toInterface(_g2), Go.toInterface(_f1), Go.toInterface(_g1));
                };
            });
        };
    }
function testLargeTan(_t:stdgo.testing.Testing.T_):Void {
        var _large:GoFloat64 = ((((314159.26535897935 : GoFloat64)) : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vf != null ? _vf.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_tanLarge != null ? _tanLarge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = tan((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large);
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface((_vf != null ? _vf[_i] : ((0 : GoFloat64))) + _large), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
function testTrigReduce(_t:stdgo.testing.Testing.T_):Void {
        var _inputs:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... (((_vf != null ? _vf.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoFloat64))]);
        Go.copySlice(_inputs, _vf);
        var _large:GoFloat64 = ((((314159.26535897935 : GoFloat64)) : GoFloat64));
        for (_0 => _v in _vf) {
            _inputs = (_inputs != null ? _inputs.__append__(_v + _large) : new Slice<GoFloat64>(_v + _large));
        };
        _inputs = (_inputs != null ? _inputs.__append__(((3.141592653589793 : GoFloat64)), nextafter(((5.36870912e+08 : GoFloat64)), ((0 : GoFloat64)))) : new Slice<GoFloat64>(((3.141592653589793 : GoFloat64)), nextafter(((5.36870912e+08 : GoFloat64)), ((0 : GoFloat64)))));
        for (_1 => _x in _inputs) {
            var __tmp__ = trigReduce(_x), _j:GoUInt64 = __tmp__._0, _z:GoFloat64 = __tmp__._1;
            var _xred:GoFloat64 = (((_j : GoFloat64)) * ((0.7853981633974483 : GoFloat64))) + _z;
            {
                var _f:GoFloat64 = sin(_x), _fred:GoFloat64 = sin(_xred);
                if (!_close(_f, _fred)) {
                    _t.errorf(((("Sin(trigReduce(%g)) != Sin(%g), got %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_x), Go.toInterface(_fred), Go.toInterface(_f));
                };
            };
            {
                var _f:GoFloat64 = cos(_x), _fred:GoFloat64 = cos(_xred);
                if (!_close(_f, _fred)) {
                    _t.errorf(((("Cos(trigReduce(%g)) != Cos(%g), got %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_x), Go.toInterface(_fred), Go.toInterface(_f));
                };
            };
            {
                var _f:GoFloat64 = tan(_x), _fred:GoFloat64 = tan(_xred);
                if (!_close(_f, _fred)) {
                    _t.errorf((((" Tan(trigReduce(%g)) != Tan(%g), got %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_x), Go.toInterface(_fred), Go.toInterface(_f));
                };
            };
            var __tmp__ = sincos(_x), _f:GoFloat64 = __tmp__._0, _g:GoFloat64 = __tmp__._1;
            var __tmp__ = sincos(_xred), _fred:GoFloat64 = __tmp__._0, _gred:GoFloat64 = __tmp__._1;
            if (!_close(_f, _fred) || !_close(_g, _gred)) {
                _t.errorf((((" Sincos(trigReduce(%g)) != Sincos(%g), got %g, %g, want %g, %g" : GoString))), Go.toInterface(_x), Go.toInterface(_x), Go.toInterface(_fred), Go.toInterface(_gred), Go.toInterface(_f), Go.toInterface(_g));
            };
        };
    }
function testFloatMinMax(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _floatTests) {
            var _s:GoString = stdgo.fmt.Fmt.sprint(_tt._val);
            if (_s != _tt._str) {
                _t.errorf(((("Sprint(%v) = %s, want %s" : GoString))), Go.toInterface(_tt._name), Go.toInterface(_s), Go.toInterface(_tt._str));
            };
        };
    }
function testFloatMinima(_t:stdgo.testing.Testing.T_):Void {
        {
            var _q:GoFloat32 = ((((7.006492321624085e-46 : GoFloat32)) : GoFloat32));
            if (_q != ((0 : GoFloat32))) {
                _t.errorf(((("float32(SmallestNonzeroFloat32 / 2) = %g, want 0" : GoString))), Go.toInterface(_q));
            };
        };
        {
            var _q:GoFloat64 = ((((0 : GoFloat64)) : GoFloat64));
            if (_q != ((0 : GoFloat64))) {
                _t.errorf(((("float64(SmallestNonzeroFloat64 / 2) = %g, want 0" : GoString))), Go.toInterface(_q));
            };
        };
    }
function testFloat32Sqrt(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _v in _sqrt32) {
            var _want:GoFloat32 = ((_indirectSqrt(((_v : GoFloat64))) : GoFloat32));
            var _got:GoFloat32 = ((sqrt(((_v : GoFloat64))) : GoFloat32));
            if (isNaN(((_want : GoFloat64)))) {
                if (!isNaN(((_got : GoFloat64)))) {
                    _t.errorf(((("got=%#v want=NaN, v=%#v" : GoString))), Go.toInterface(_got), Go.toInterface(_v));
                };
                continue;
            };
            if (_got != _want) {
                _t.errorf(((("got=%#v want=%#v, v=%#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want), Go.toInterface(_v));
            };
        };
    }
function benchmarkAcos(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = acos(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAcosh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = acosh(((1.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAsin(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = asin(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAsinh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = asinh(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAtan(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = atan(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAtanh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = atanh(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAtan2(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = atan2(((0.5 : GoFloat64)), ((1 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkCbrt(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = cbrt(((10 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkCeil(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = ceil(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkCopysign(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = copysign(((0.5 : GoFloat64)), _copysignNeg);
            });
        };
        globalF = _x;
    }
function benchmarkCos(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = cos(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkCosh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = cosh(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkErf(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = erf(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkErfc(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = erfc(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkErfinv(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = erfinv(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkErfcinv(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = erfcinv(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkExp(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = exp(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkExpGo(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = expGo(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkExpm1(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = expm1(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkExp2(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = exp2(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkExp2Go(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = exp2Go(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkAbs(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = abs(_absPos);
            });
        };
        globalF = _x;
    }
function benchmarkDim(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = dim(globalF, _x);
            });
        };
        globalF = _x;
    }
function benchmarkFloor(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = floor(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkMax(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = max(((10 : GoFloat64)), ((3 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkMin(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = min(((10 : GoFloat64)), ((3 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkMod(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = mod(((10 : GoFloat64)), ((3 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkFrexp(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        var _y:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = frexp(((8 : GoFloat64)));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = _x;
        globalI = _y;
    }
function benchmarkGamma(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = gamma(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkHypot(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = hypot(((3 : GoFloat64)), ((4 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkHypotGo(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = hypotGo(((3 : GoFloat64)), ((4 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkIlogb(_b:stdgo.testing.Testing.B):Void {
        var _x:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = ilogb(((0.5 : GoFloat64)));
            });
        };
        globalI = _x;
    }
function benchmarkJ0(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = j0(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkJ1(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = j1(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkJn(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = jn(((2 : GoInt)), ((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkLdexp(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = ldexp(((0.5 : GoFloat64)), ((2 : GoInt)));
            });
        };
        globalF = _x;
    }
function benchmarkLgamma(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        var _y:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = lgamma(((2.5 : GoFloat64)));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = _x;
        globalI = _y;
    }
function benchmarkLog(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = log(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkLogb(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = logb(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkLog1p(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = log1p(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkLog10(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = log10(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkLog2(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = log2(((0.5 : GoFloat64)));
            });
        };
        globalF = globalF + (_x);
    }
function benchmarkModf(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        var _y:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = modf(((1.5 : GoFloat64)));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = globalF + (_x);
        globalF = globalF + (_y);
    }
function benchmarkNextafter32(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat32 = ((((0 : GoFloat32)) : GoFloat32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = nextafter32(((0.5 : GoFloat32)), ((1 : GoFloat32)));
            });
        };
        globalF = ((_x : GoFloat64));
    }
function benchmarkNextafter64(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = nextafter(((0.5 : GoFloat64)), ((1 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkPowInt(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = pow(((2 : GoFloat64)), ((2 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkPowFrac(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = pow(((2.5 : GoFloat64)), ((1.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkPow10Pos(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = pow10(_pow10pos);
            });
        };
        globalF = _x;
    }
function benchmarkPow10Neg(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = pow10(_pow10neg);
            });
        };
        globalF = _x;
    }
function benchmarkRound(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = round(_roundNeg);
            });
        };
        globalF = _x;
    }
function benchmarkRoundToEven(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = roundToEven(_roundNeg);
            });
        };
        globalF = _x;
    }
function benchmarkRemainder(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = remainder(((10 : GoFloat64)), ((3 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkSignbit(_b:stdgo.testing.Testing.B):Void {
        var _x:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = signbit(_signbitPos);
            });
        };
        globalB = _x;
    }
function benchmarkSin(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = sin(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkSincos(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        var _y:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = sincos(((0.5 : GoFloat64)));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = globalF + (_x);
        globalF = globalF + (_y);
    }
function benchmarkSinh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = sinh(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkSqrtIndirect(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64)), _y:GoFloat64 = ((10 : GoFloat64));
        var _f:GoFloat64 -> GoFloat64 = sqrt;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = _x + (_f(_y));
            });
        };
        globalF = _x;
    }
function benchmarkSqrtLatency(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((10 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = sqrt(_x);
            });
        };
        globalF = _x;
    }
function benchmarkSqrtIndirectLatency(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((10 : GoFloat64));
        var _f:GoFloat64 -> GoFloat64 = sqrt;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = _f(_x);
            });
        };
        globalF = _x;
    }
function benchmarkSqrtGoLatency(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((10 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = sqrtGo(_x);
            });
        };
        globalF = _x;
    }
function _isPrime(_i:GoInt):Bool {
        {
            var _j:GoInt = ((2 : GoInt));
            Go.cfor(((_j : GoFloat64)) <= sqrt(((_i : GoFloat64))), _j++, {
                if ((_i % _j) == ((0 : GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
function benchmarkSqrtPrime(_b:stdgo.testing.Testing.B):Void {
        var _x:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = _isPrime(((100003 : GoInt)));
            });
        };
        globalB = _x;
    }
function benchmarkTan(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = tan(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkTanh(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = tanh(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkTrunc(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = trunc(((0.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkY0(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = y0(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkY1(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = y1(((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkYn(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = yn(((2 : GoInt)), ((2.5 : GoFloat64)));
            });
        };
        globalF = _x;
    }
function benchmarkFloat64bits(_b:stdgo.testing.Testing.B):Void {
        var _y:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _y = float64bits(_roundNeg);
            });
        };
        globalI = ((_y : GoInt));
    }
function benchmarkFloat64frombits(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = float64frombits(_roundUint64);
            });
        };
        globalF = _x;
    }
function benchmarkFloat32bits(_b:stdgo.testing.Testing.B):Void {
        var _y:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _y = float32bits(_roundFloat32);
            });
        };
        globalI = ((_y : GoInt));
    }
function benchmarkFloat32frombits(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat32 = ((((0 : GoFloat32)) : GoFloat32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = float32frombits(_roundUint32);
            });
        };
        globalF = ((_x : GoFloat64));
    }
function benchmarkFMA(_b:stdgo.testing.Testing.B):Void {
        var _x:GoFloat64 = ((0 : GoFloat64));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _x = fma(((2.718281828459045 : GoFloat64)), ((3.141592653589793 : GoFloat64)), _x);
            });
        };
        globalF = _x;
    }
function testMaxUint(_t:stdgo.testing.Testing.T_):Void {
        {
            var _v:GoUInt = (((("4294967295" : GoUInt)) : GoUInt));
            if ((_v + ((1 : GoUInt))) != ((0 : GoUInt))) {
                _t.errorf(((("MaxUint should wrap around to zero: %d" : GoString))), Go.toInterface(_v + ((1 : GoUInt))));
            };
        };
        {
            var _v:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
            if ((_v + ((1 : GoUInt8))) != ((0 : GoUInt8))) {
                _t.errorf(((("MaxUint8 should wrap around to zero: %d" : GoString))), Go.toInterface(_v + ((1 : GoUInt8))));
            };
        };
        {
            var _v:GoUInt16 = ((((65535 : GoUInt16)) : GoUInt16));
            if ((_v + ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                _t.errorf(((("MaxUint16 should wrap around to zero: %d" : GoString))), Go.toInterface(_v + ((1 : GoUInt16))));
            };
        };
        {
            var _v:GoUInt32 = (((("4294967295" : GoUInt32)) : GoUInt32));
            if ((_v + ((1 : GoUInt32))) != ((0 : GoUInt32))) {
                _t.errorf(((("MaxUint32 should wrap around to zero: %d" : GoString))), Go.toInterface(_v + ((1 : GoUInt32))));
            };
        };
        {
            var _v:GoUInt64 = (((("18446744073709551615" : GoUInt64)) : GoUInt64));
            if ((_v + ((1 : GoUInt64))) != ((0 : GoUInt64))) {
                _t.errorf(((("MaxUint64 should wrap around to zero: %d" : GoString))), Go.toInterface(_v + ((1 : GoUInt64))));
            };
        };
    }
function testMaxInt(_t:stdgo.testing.Testing.T_):Void {
        {
            var _v:GoInt = ((((2147483647 : GoInt)) : GoInt));
            if ((_v + ((1 : GoInt))) != ((-2147483648 : GoInt))) {
                _t.errorf(((("MaxInt should wrap around to MinInt: %d" : GoString))), Go.toInterface(_v + ((1 : GoInt))));
            };
        };
        {
            var _v:GoInt8 = ((((127 : GoInt8)) : GoInt8));
            if ((_v + ((1 : GoInt8))) != ((-128 : GoInt8))) {
                _t.errorf(((("MaxInt8 should wrap around to MinInt8: %d" : GoString))), Go.toInterface(_v + ((1 : GoInt8))));
            };
        };
        {
            var _v:GoInt16 = ((((32767 : GoInt16)) : GoInt16));
            if ((_v + ((1 : GoInt16))) != ((-32768 : GoInt16))) {
                _t.errorf(((("MaxInt16 should wrap around to MinInt16: %d" : GoString))), Go.toInterface(_v + ((1 : GoInt16))));
            };
        };
        {
            var _v:GoInt32 = ((((2147483647 : GoInt32)) : GoInt32));
            if ((_v + ((1 : GoInt32))) != ((-2147483648 : GoInt32))) {
                _t.errorf(((("MaxInt32 should wrap around to MinInt32: %d" : GoString))), Go.toInterface(_v + ((1 : GoInt32))));
            };
        };
        {
            var _v:GoInt64 = (((("9223372036854775807" : GoInt64)) : GoInt64));
            if ((_v + ((1 : GoInt64))) != (("-9223372036854775808" : GoInt64))) {
                _t.errorf(((("MaxInt64 should wrap around to MinInt64: %d" : GoString))), Go.toInterface(_v + ((1 : GoInt64))));
            };
        };
    }
function exampleAcos():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.acos(((1 : GoFloat64)))));
    }
function exampleAcosh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.acosh(((1 : GoFloat64)))));
    }
function exampleAsin():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.asin(((0 : GoFloat64)))));
    }
function exampleAsinh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.asinh(((0 : GoFloat64)))));
    }
function exampleAtan():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.atan(((0 : GoFloat64)))));
    }
function exampleAtan2():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.atan2(((0 : GoFloat64)), ((0 : GoFloat64)))));
    }
function exampleAtanh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.atanh(((0 : GoFloat64)))));
    }
function exampleCopysign():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.copysign(((3.2 : GoFloat64)), ((-1 : GoFloat64)))));
    }
function exampleCos():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.cos(((1.5707963267948966 : GoFloat64)))));
    }
function exampleCosh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.cosh(((0 : GoFloat64)))));
    }
function exampleSin():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.sin(((3.141592653589793 : GoFloat64)))));
    }
function exampleSincos():Void {
        var __tmp__ = stdgo.math.Math.sincos(((0 : GoFloat64))), _sin:GoFloat64 = __tmp__._0, _cos:GoFloat64 = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("%.2f, %.2f" : GoString))), Go.toInterface(_sin), Go.toInterface(_cos));
    }
function exampleSinh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.sinh(((0 : GoFloat64)))));
    }
function exampleTan():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.tan(((0 : GoFloat64)))));
    }
function exampleTanh():Void {
        stdgo.fmt.Fmt.printf(((("%.2f" : GoString))), Go.toInterface(stdgo.math.Math.tanh(((0 : GoFloat64)))));
    }
function exampleSqrt():Void {
        {};
        var _c:GoFloat64 = stdgo.math.Math.sqrt(((25 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function exampleCeil():Void {
        var _c:GoFloat64 = stdgo.math.Math.ceil(((1.49 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function exampleFloor():Void {
        var _c:GoFloat64 = stdgo.math.Math.floor(((1.51 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function examplePow():Void {
        var _c:GoFloat64 = stdgo.math.Math.pow(((2 : GoFloat64)), ((3 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function examplePow10():Void {
        var _c:GoFloat64 = stdgo.math.Math.pow10(((2 : GoInt)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function exampleRound():Void {
        var _p:GoFloat64 = stdgo.math.Math.round(((10.5 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_p));
        var _n:GoFloat64 = stdgo.math.Math.round(((-10.5 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_n));
    }
function exampleRoundToEven():Void {
        var _u:GoFloat64 = stdgo.math.Math.roundToEven(((11.5 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_u));
        var _d:GoFloat64 = stdgo.math.Math.roundToEven(((12.5 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_d));
    }
function exampleLog():Void {
        var _x:GoFloat64 = stdgo.math.Math.log(((1 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_x));
        var _y:GoFloat64 = stdgo.math.Math.log(((2.7183 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_y));
    }
function exampleLog2():Void {
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(stdgo.math.Math.log2(((256 : GoFloat64)))));
    }
function exampleLog10():Void {
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(stdgo.math.Math.log10(((100 : GoFloat64)))));
    }
function exampleRemainder():Void {
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(stdgo.math.Math.remainder(((100 : GoFloat64)), ((30 : GoFloat64)))));
    }
function exampleMod():Void {
        var _c:GoFloat64 = stdgo.math.Math.mod(((7 : GoFloat64)), ((4 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f" : GoString))), Go.toInterface(_c));
    }
function exampleAbs():Void {
        var _x:GoFloat64 = stdgo.math.Math.abs(((-2 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_x));
        var _y:GoFloat64 = stdgo.math.Math.abs(((2 : GoFloat64)));
        stdgo.fmt.Fmt.printf(((("%.1f\n" : GoString))), Go.toInterface(_y));
    }
function exampleDim():Void {
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.dim(((4 : GoFloat64)), ((-2 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.dim(((-4 : GoFloat64)), ((2 : GoFloat64)))));
    }
function exampleExp():Void {
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.exp(((1 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.exp(((2 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.exp(((-1 : GoFloat64)))));
    }
function exampleExp2():Void {
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.exp2(((1 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.exp2(((-3 : GoFloat64)))));
    }
function exampleExpm1():Void {
        stdgo.fmt.Fmt.printf(((("%.6f\n" : GoString))), Go.toInterface(stdgo.math.Math.expm1(((0.01 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.6f\n" : GoString))), Go.toInterface(stdgo.math.Math.expm1(((-1 : GoFloat64)))));
    }
function exampleTrunc():Void {
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.trunc(((3.141592653589793 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.trunc(((-1.2345 : GoFloat64)))));
    }
function exampleCbrt():Void {
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.cbrt(((8 : GoFloat64)))));
        stdgo.fmt.Fmt.printf(((("%.2f\n" : GoString))), Go.toInterface(stdgo.math.Math.cbrt(((27 : GoFloat64)))));
    }
function exampleModf():Void {
        var __tmp__ = stdgo.math.Math.modf(((3.14 : GoFloat64))), _int:GoFloat64 = __tmp__._0, _frac:GoFloat64 = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("%.2f, %.2f\n" : GoString))), Go.toInterface(_int), Go.toInterface(_frac));
        {
            var __tmp__ = stdgo.math.Math.modf(((-2.71 : GoFloat64)));
            _int = __tmp__._0;
            _frac = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(((("%.2f, %.2f\n" : GoString))), Go.toInterface(_int), Go.toInterface(_frac));
    }
function testHugeCos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_trigHuge != null ? _trigHuge.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_cosHuge != null ? _cosHuge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = cos((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64))));
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64)))), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
function testHugeSin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_trigHuge != null ? _trigHuge.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_sinHuge != null ? _sinHuge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = sin((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64))));
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64)))), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
function testHugeSinCos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_trigHuge != null ? _trigHuge.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_sinHuge != null ? _sinHuge[_i] : ((0 : GoFloat64))), _g1:GoFloat64 = (_cosHuge != null ? _cosHuge[_i] : ((0 : GoFloat64)));
                var __tmp__ = sincos((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64)))), _f2:GoFloat64 = __tmp__._0, _g2:GoFloat64 = __tmp__._1;
                if (!_close(_f1, _f2) || !_close(_g1, _g2)) {
                    _t.errorf(((("Sincos(%g) = %g, %g, want %g, %g" : GoString))), Go.toInterface((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64)))), Go.toInterface(_f2), Go.toInterface(_g2), Go.toInterface(_f1), Go.toInterface(_g1));
                };
            });
        };
    }
function testHugeTan(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_trigHuge != null ? _trigHuge.length : ((0 : GoInt))), _i++, {
                var _f1:GoFloat64 = (_tanHuge != null ? _tanHuge[_i] : ((0 : GoFloat64)));
                var _f2:GoFloat64 = tan((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64))));
                if (!_close(_f1, _f2)) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface((_trigHuge != null ? _trigHuge[_i] : ((0 : GoFloat64)))), Go.toInterface(_f2), Go.toInterface(_f1));
                };
            });
        };
    }
class T_fi_wrapper {
    public var __t__ : T_fi;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_floatTest_wrapper {
    public var __t__ : T_floatTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}