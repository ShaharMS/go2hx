# Module: stdgo.unicode


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function \_binary\(\_ranges:stdgo.Slice\<stdgo.unicode.Range16\>, \_r:stdgo.GoUInt16\):Bool](<#function-_binary>)

- [function \_caseString\(\_c:stdgo.GoInt\):stdgo.GoString](<#function-_casestring>)

- [function \_fakeTable\(\_n:stdgo.GoInt\):stdgo.Slice\<stdgo.unicode.Range16\>](<#function-_faketable>)

- [function \_linear\(\_ranges:stdgo.Slice\<stdgo.unicode.Range16\>, \_r:stdgo.GoUInt16\):Bool](<#function-_linear>)

- [function exampleIsDigit\(\):Void](<#function-exampleisdigit>)

- [function exampleIsLetter\(\):Void](<#function-exampleisletter>)

- [function exampleIsLower\(\):Void](<#function-exampleislower>)

- [function exampleIsNumber\(\):Void](<#function-exampleisnumber>)

- [function exampleIsSpace\(\):Void](<#function-exampleisspace>)

- [function exampleIsTitle\(\):Void](<#function-exampleistitle>)

- [function exampleIsUpper\(\):Void](<#function-exampleisupper>)

- [function exampleSimpleFold\(\):Void](<#function-examplesimplefold>)

- [function exampleSpecialCase\(\):Void](<#function-examplespecialcase>)

- [function exampleTo\(\):Void](<#function-exampleto>)

- [function exampleToLower\(\):Void](<#function-exampletolower>)

- [function exampleToTitle\(\):Void](<#function-exampletotitle>)

- [function exampleToUpper\(\):Void](<#function-exampletoupper>)

- [function example\_is\(\):Void](<#function-example_is>)

- [function testCalibrate\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcalibrate>)

- [function testCategories\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcategories>)

- [function testDigit\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testdigit>)

- [function testDigitOptimization\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testdigitoptimization>)

- [function testIsControlLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testiscontrollatin1>)

- [function testIsGraphicLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisgraphiclatin1>)

- [function testIsLetter\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisletter>)

- [function testIsLetterLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisletterlatin1>)

- [function testIsLowerLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testislowerlatin1>)

- [function testIsPrintLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisprintlatin1>)

- [function testIsPunctLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testispunctlatin1>)

- [function testIsSpace\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisspace>)

- [function testIsSpaceLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisspacelatin1>)

- [function testIsSymbolLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testissymbollatin1>)

- [function testIsUpper\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisupper>)

- [function testIsUpperLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testisupperlatin1>)

- [function testLatinOffset\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testlatinoffset>)

- [function testLetterOptimizations\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testletteroptimizations>)

- [function testNegativeRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testnegativerune>)

- [function testNumberLatin1\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testnumberlatin1>)

- [function testProperties\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testproperties>)

- [function testSimpleFold\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsimplefold>)

- [function testSpecialCaseNoMapping\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testspecialcasenomapping>)

- [function testTo\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testto>)

- [function testToLowerCase\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtolowercase>)

- [function testToTitleCase\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtotitlecase>)

- [function testToUpperCase\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtouppercase>)

- [function testTurkishCase\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testturkishcase>)

- [function main\(\):Void](<#function-main>)

- [class T](<#class-t>)

  - [function new\(?\_rune:stdgo.GoInt32, ?\_script:stdgo.GoString\):Void](<#t-function-new>)

# Variables


```haxe
import stdgo.unicode_test.Unicode
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.unicode_test.Unicode
```


## function \_binary


```haxe
function _binary(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


 


[\(view code\)](<./Unicode.hx#L833>)


## function \_caseString


```haxe
function _caseString(_c:stdgo.GoInt):stdgo.GoString
```


 


[\(view code\)](<./Unicode.hx#L598>)


## function \_fakeTable


```haxe
function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<stdgo.unicode.Range16>
```


 


[\(view code\)](<./Unicode.hx#L808>)


## function \_linear


```haxe
function _linear(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


 


[\(view code\)](<./Unicode.hx#L820>)


## function exampleIsDigit


```haxe
function exampleIsDigit():Void
```


 


[\(view code\)](<./Unicode.hx#L387>)


## function exampleIsLetter


```haxe
function exampleIsLetter():Void
```


 


[\(view code\)](<./Unicode.hx#L397>)


## function exampleIsLower


```haxe
function exampleIsLower():Void
```


 


[\(view code\)](<./Unicode.hx#L402>)


## function exampleIsNumber


```haxe
function exampleIsNumber():Void
```


 


[\(view code\)](<./Unicode.hx#L392>)


## function exampleIsSpace


```haxe
function exampleIsSpace():Void
```


 


[\(view code\)](<./Unicode.hx#L417>)


## function exampleIsTitle


```haxe
function exampleIsTitle():Void
```


 


[\(view code\)](<./Unicode.hx#L412>)


## function exampleIsUpper


```haxe
function exampleIsUpper():Void
```


 


[\(view code\)](<./Unicode.hx#L407>)


## function exampleSimpleFold


```haxe
function exampleSimpleFold():Void
```


 


[\(view code\)](<./Unicode.hx#L340>)


## function exampleSpecialCase


```haxe
function exampleSpecialCase():Void
```


 


[\(view code\)](<./Unicode.hx#L375>)


## function exampleTo


```haxe
function exampleTo():Void
```


 


[\(view code\)](<./Unicode.hx#L349>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


 


[\(view code\)](<./Unicode.hx#L360>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


 


[\(view code\)](<./Unicode.hx#L365>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


 


[\(view code\)](<./Unicode.hx#L370>)


## function example\_is


```haxe
function example_is():Void
```


Functions starting with "Is" can be used to inspect which table of range a rune belongs to. Note that runes may fit into more than one range. 


[\(view code\)](<./Unicode.hx#L291>)


## function testCalibrate


```haxe
function testCalibrate(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L758>)


## function testCategories


```haxe
function testCategories(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L936>)


## function testDigit


```haxe
function testDigit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L260>)


## function testDigitOptimization


```haxe
function testDigitOptimization(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Test that the special case in IsDigit agrees with the table 


[\(view code\)](<./Unicode.hx#L276>)


## function testIsControlLatin1


```haxe
function testIsControlLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L424>)


## function testIsGraphicLatin1


```haxe
function testIsGraphicLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L510>)


## function testIsLetter


```haxe
function testIsLetter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L562>)


## function testIsLetterLatin1


```haxe
function testIsLetterLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L442>)


## function testIsLowerLatin1


```haxe
function testIsLowerLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L468>)


## function testIsPrintLatin1


```haxe
function testIsPrintLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L494>)


## function testIsPunctLatin1


```haxe
function testIsPunctLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L523>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L655>)


## function testIsSpaceLatin1


```haxe
function testIsSpaceLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L536>)


## function testIsSymbolLatin1


```haxe
function testIsSymbolLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L549>)


## function testIsUpper


```haxe
function testIsUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L580>)


## function testIsUpperLatin1


```haxe
function testIsUpperLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L455>)


## function testLatinOffset


```haxe
function testLatinOffset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L851>)


## function testLetterOptimizations


```haxe
function testLetterOptimizations(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Check that the optimizations for IsLetter etc. agree with the tables. We only need to check the Latin\-1 range. 


[\(view code\)](<./Unicode.hx#L672>)


## function testNegativeRune


```haxe
function testNegativeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L879>)


## function testNumberLatin1


```haxe
function testNumberLatin1(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L481>)


## function testProperties


```haxe
function testProperties(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L964>)


## function testSimpleFold


```haxe
function testSimpleFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L736>)


## function testSpecialCaseNoMapping


```haxe
function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L867>)


## function testTo


```haxe
function testTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L609>)


## function testToLowerCase


```haxe
function testToLowerCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L631>)


## function testToTitleCase


```haxe
function testToTitleCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L643>)


## function testToUpperCase


```haxe
function testToUpperCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L619>)


## function testTurkishCase


```haxe
function testTurkishCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Unicode.hx#L704>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Unicode.hx#L109>)


# Classes


```haxe
import stdgo.unicode_test.*
```


## class T


 


```haxe
var _rune:stdgo.GoInt32
```


```haxe
var _script:stdgo.GoString
```


### T function new


```haxe
function new(?_rune:stdgo.GoInt32, ?_script:stdgo.GoString):Void
```


 


[\(view code\)](<./Unicode_test.hx#L245>)


