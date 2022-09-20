# Module: stdgo.strings


[(view library index)](../stdgo.md)


# Overview


Package strings implements simple functions to manipulate UTF\-8 encoded strings.  For information about UTF\-8 strings in Go, see https://blog.golang.org/strings. 



# Index


- [function \_explode\(\_s:stdgo.GoString, \_n:stdgo.GoInt\):stdgo.Slice\<stdgo.GoString\>](<#function-_explode>)

- [function \_genSplit\(\_s:stdgo.GoString, \_sep:stdgo.GoString, \_sepSave:stdgo.GoInt, \_n:stdgo.GoInt\):stdgo.Slice\<stdgo.GoString\>](<#function-_gensplit>)

- [function \_getStringWriter\(\_w:stdgo.io.Writer\):stdgo.io.StringWriter](<#function-_getstringwriter>)

- [function \_indexFunc\(\_s:stdgo.GoString, \_f:\(\), \_truth:Bool\):stdgo.GoInt](<#function-_indexfunc>)

- [function \_isSeparator\(\_r:stdgo.GoRune\):Bool](<#function-_isseparator>)

- [function \_lastIndexFunc\(\_s:stdgo.GoString, \_f:\(\), \_truth:Bool\):stdgo.GoInt](<#function-_lastindexfunc>)

- [function \_longestCommonSuffix\(\_a:stdgo.GoString, \_b:stdgo.GoString\):stdgo.GoInt](<#function-_longestcommonsuffix>)

- [function \_makeASCIISet\(\_chars:stdgo.GoString\):\{\_1:Bool, \_0:stdgo.strings.\_Strings.T\_asciiSet\}](<#function-_makeasciiset>)

- [function \_makeGenericReplacer\(\_oldnew:stdgo.Slice\<stdgo.GoString\>\):stdgo.Ref\<stdgo.strings.\_Strings.T\_genericReplacer\>](<#function-_makegenericreplacer>)

- [function \_makeSingleStringReplacer\(\_pattern:stdgo.GoString, \_value:stdgo.GoString\):stdgo.Ref\<stdgo.strings.\_Strings.T\_singleStringReplacer\>](<#function-_makesinglestringreplacer>)

- [function \_makeStringFinder\(\_pattern:stdgo.GoString\):stdgo.Ref\<stdgo.strings.\_Strings.T\_stringFinder\>](<#function-_makestringfinder>)

- [function \_max\(\_a:stdgo.GoInt, \_b:stdgo.GoInt\):stdgo.GoInt](<#function-_max>)

- [function \_noescape\(\_p:stdgo.unsafe.UnsafePointer\):stdgo.unsafe.UnsafePointer](<#function-_noescape>)

- [function \_trimLeftASCII\(\_s:stdgo.GoString, \_as:stdgo.Ref\<stdgo.strings.\_Strings.T\_asciiSet\>\):stdgo.GoString](<#function-_trimleftascii>)

- [function \_trimLeftByte\(\_s:stdgo.GoString, \_c:stdgo.GoByte\):stdgo.GoString](<#function-_trimleftbyte>)

- [function \_trimLeftUnicode\(\_s:stdgo.GoString, \_cutset:stdgo.GoString\):stdgo.GoString](<#function-_trimleftunicode>)

- [function \_trimRightASCII\(\_s:stdgo.GoString, \_as:stdgo.Ref\<stdgo.strings.\_Strings.T\_asciiSet\>\):stdgo.GoString](<#function-_trimrightascii>)

- [function \_trimRightByte\(\_s:stdgo.GoString, \_c:stdgo.GoByte\):stdgo.GoString](<#function-_trimrightbyte>)

- [function \_trimRightUnicode\(\_s:stdgo.GoString, \_cutset:stdgo.GoString\):stdgo.GoString](<#function-_trimrightunicode>)

- [function clone\(\_s:stdgo.GoString\):stdgo.GoString](<#function-clone>)

- [function compare\(\_a:stdgo.GoString, \_b:stdgo.GoString\):stdgo.GoInt](<#function-compare>)

- [function contains\(\_s:stdgo.GoString, \_substr:stdgo.GoString\):Bool](<#function-contains>)

- [function containsAny\(\_s:stdgo.GoString, \_chars:stdgo.GoString\):Bool](<#function-containsany>)

- [function containsRune\(\_s:stdgo.GoString, \_r:stdgo.GoRune\):Bool](<#function-containsrune>)

- [function count\(\_s:stdgo.GoString, \_substr:stdgo.GoString\):stdgo.GoInt](<#function-count>)

- [function cut\(\_s:stdgo.GoString, \_sep:stdgo.GoString\):\{\_2:Bool, \_1:stdgo.GoString, \_0:stdgo.GoString\}](<#function-cut>)

- [function dumpTables\(\_pattern:stdgo.GoString\):\{\_1:stdgo.Slice\<stdgo.GoInt\>, \_0:stdgo.Slice\<stdgo.GoInt\>\}](<#function-dumptables>)

- [function equalFold\(\_s:stdgo.GoString, \_t:stdgo.GoString\):Bool](<#function-equalfold>)

- [function fields\(\_s:stdgo.GoString\):stdgo.Slice\<stdgo.GoString\>](<#function-fields>)

- [function fieldsFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.Slice\<stdgo.GoString\>](<#function-fieldsfunc>)

- [function hasPrefix\(\_s:stdgo.GoString, \_prefix:stdgo.GoString\):Bool](<#function-hasprefix>)

- [function hasSuffix\(\_s:stdgo.GoString, \_suffix:stdgo.GoString\):Bool](<#function-hassuffix>)

- [function index\(\_s:stdgo.GoString, \_substr:stdgo.GoString\):stdgo.GoInt](<#function-index>)

- [function indexAny\(\_s:stdgo.GoString, \_chars:stdgo.GoString\):stdgo.GoInt](<#function-indexany>)

- [function indexByte\(\_s:stdgo.GoString, \_c:stdgo.GoByte\):stdgo.GoInt](<#function-indexbyte>)

- [function indexFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.GoInt](<#function-indexfunc>)

- [function indexRune\(\_s:stdgo.GoString, \_r:stdgo.GoRune\):stdgo.GoInt](<#function-indexrune>)

- [function join\(\_elems:stdgo.Slice\<stdgo.GoString\>, \_sep:stdgo.GoString\):stdgo.GoString](<#function-join>)

- [function lastIndex\(\_s:stdgo.GoString, \_substr:stdgo.GoString\):stdgo.GoInt](<#function-lastindex>)

- [function lastIndexAny\(\_s:stdgo.GoString, \_chars:stdgo.GoString\):stdgo.GoInt](<#function-lastindexany>)

- [function lastIndexByte\(\_s:stdgo.GoString, \_c:stdgo.GoByte\):stdgo.GoInt](<#function-lastindexbyte>)

- [function lastIndexFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.GoInt](<#function-lastindexfunc>)

- [function map\(\_mapping:\(\), \_s:stdgo.GoString\):stdgo.GoString](<#function-map>)

- [function newReader\(\_s:stdgo.GoString\):stdgo.Ref\<stdgo.strings.Reader\>](<#function-newreader>)

- [function newReplacer\(\_oldnew:haxe.Rest\<stdgo.GoString\>\):stdgo.Ref\<stdgo.strings.Replacer\>](<#function-newreplacer>)

- [function repeat\(\_s:stdgo.GoString, \_count:stdgo.GoInt\):stdgo.GoString](<#function-repeat>)

- [function replace\(\_s:stdgo.GoString, \_old:stdgo.GoString, \_new:stdgo.GoString, \_n:stdgo.GoInt\):stdgo.GoString](<#function-replace>)

- [function replaceAll\(\_s:stdgo.GoString, \_old:stdgo.GoString, \_new:stdgo.GoString\):stdgo.GoString](<#function-replaceall>)

- [function split\(\_s:stdgo.GoString, \_sep:stdgo.GoString\):stdgo.Slice\<stdgo.GoString\>](<#function-split>)

- [function splitAfter\(\_s:stdgo.GoString, \_sep:stdgo.GoString\):stdgo.Slice\<stdgo.GoString\>](<#function-splitafter>)

- [function splitAfterN\(\_s:stdgo.GoString, \_sep:stdgo.GoString, \_n:stdgo.GoInt\):stdgo.Slice\<stdgo.GoString\>](<#function-splitaftern>)

- [function splitN\(\_s:stdgo.GoString, \_sep:stdgo.GoString, \_n:stdgo.GoInt\):stdgo.Slice\<stdgo.GoString\>](<#function-splitn>)

- [function stringFind\(\_pattern:stdgo.GoString, \_text:stdgo.GoString\):stdgo.GoInt](<#function-stringfind>)

- [function title\(\_s:stdgo.GoString\):stdgo.GoString](<#function-title>)

- [function toLower\(\_s:stdgo.GoString\):stdgo.GoString](<#function-tolower>)

- [function toLowerSpecial\(\_c:stdgo.unicode.SpecialCase, \_s:stdgo.GoString\):stdgo.GoString](<#function-tolowerspecial>)

- [function toTitle\(\_s:stdgo.GoString\):stdgo.GoString](<#function-totitle>)

- [function toTitleSpecial\(\_c:stdgo.unicode.SpecialCase, \_s:stdgo.GoString\):stdgo.GoString](<#function-totitlespecial>)

- [function toUpper\(\_s:stdgo.GoString\):stdgo.GoString](<#function-toupper>)

- [function toUpperSpecial\(\_c:stdgo.unicode.SpecialCase, \_s:stdgo.GoString\):stdgo.GoString](<#function-toupperspecial>)

- [function toValidUTF8\(\_s:stdgo.GoString, \_replacement:stdgo.GoString\):stdgo.GoString](<#function-tovalidutf8>)

- [function trim\(\_s:stdgo.GoString, \_cutset:stdgo.GoString\):stdgo.GoString](<#function-trim>)

- [function trimFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.GoString](<#function-trimfunc>)

- [function trimLeft\(\_s:stdgo.GoString, \_cutset:stdgo.GoString\):stdgo.GoString](<#function-trimleft>)

- [function trimLeftFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.GoString](<#function-trimleftfunc>)

- [function trimPrefix\(\_s:stdgo.GoString, \_prefix:stdgo.GoString\):stdgo.GoString](<#function-trimprefix>)

- [function trimRight\(\_s:stdgo.GoString, \_cutset:stdgo.GoString\):stdgo.GoString](<#function-trimright>)

- [function trimRightFunc\(\_s:stdgo.GoString, \_f:\(\)\):stdgo.GoString](<#function-trimrightfunc>)

- [function trimSpace\(\_s:stdgo.GoString\):stdgo.GoString](<#function-trimspace>)

- [function trimSuffix\(\_s:stdgo.GoString, \_suffix:stdgo.GoString\):stdgo.GoString](<#function-trimsuffix>)

- [class Builder](<#class-builder>)

  - [function new\(?\_addr:stdgo.Ref\<stdgo.strings.Builder\>, ?\_buf:stdgo.Slice\<stdgo.GoUInt8\>\):Void](<#builder-function-new>)

  - [function \_copyCheck\(\):Void](<#builder-function-_copycheck>)

  - [function \_grow\( \_n:stdgo.GoInt\):Void](<#builder-function-_grow>)

  - [function cap\(\):stdgo.GoInt](<#builder-function-cap>)

  - [function grow\( \_n:stdgo.GoInt\):Void](<#builder-function-grow>)

  - [function len\(\):stdgo.GoInt](<#builder-function-len>)

  - [function reset\(\):Void](<#builder-function-reset>)

  - [function string\(\):stdgo.GoString](<#builder-function-string>)

  - [function write\( \_p:stdgo.Slice\<stdgo.GoByte\>\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#builder-function-write>)

  - [function writeByte\( \_c:stdgo.GoByte\):stdgo.Error](<#builder-function-writebyte>)

  - [function writeRune\( \_r:stdgo.GoRune\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#builder-function-writerune>)

  - [function writeString\( \_s:stdgo.GoString\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#builder-function-writestring>)

- [class Reader](<#class-reader>)

  - [function new\(?\_s:stdgo.GoString, ?\_i:stdgo.GoInt64, ?\_prevRune:Null\<stdgo.GoInt\>\):Void](<#reader-function-new>)

  - [function len\(\):stdgo.GoInt](<#reader-function-len>)

  - [function read\( \_b:stdgo.Slice\<stdgo.GoByte\>\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#reader-function-read>)

  - [function readAt\( \_b:stdgo.Slice\<stdgo.GoByte\>, \_off:stdgo.GoInt64\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#reader-function-readat>)

  - [function readByte\(\):\{\_1:stdgo.Error, \_0:stdgo.GoByte\}](<#reader-function-readbyte>)

  - [function readRune\(\):\{\_2:stdgo.Error, \_1:stdgo.GoInt, \_0:stdgo.GoRune\}](<#reader-function-readrune>)

  - [function reset\( \_s:stdgo.GoString\):Void](<#reader-function-reset>)

  - [function seek\( \_offset:stdgo.GoInt64, \_whence:stdgo.GoInt\):\{\_1:stdgo.Error, \_0:stdgo.GoInt64\}](<#reader-function-seek>)

  - [function size\(\):stdgo.GoInt64](<#reader-function-size>)

  - [function unreadByte\(\):stdgo.Error](<#reader-function-unreadbyte>)

  - [function unreadRune\(\):stdgo.Error](<#reader-function-unreadrune>)

  - [function writeTo\( \_w:stdgo.io.Writer\):\{\_1:stdgo.Error, \_0:stdgo.GoInt64\}](<#reader-function-writeto>)

- [class Replacer](<#class-replacer>)

  - [function new\(?\_once:stdgo.sync.Once, ?\_r:Null\<stdgo.strings.\_Strings.T\_replacer\>, ?\_oldnew:stdgo.Slice\<stdgo.GoString\>\):Void](<#replacer-function-new>)

  - [function \_build\(\):stdgo.strings.\_Strings.T\_replacer](<#replacer-function-_build>)

  - [function \_buildOnce\(\):Void](<#replacer-function-_buildonce>)

  - [function printTrie\(\):stdgo.GoString](<#replacer-function-printtrie>)

  - [function replace\( \_s:stdgo.GoString\):stdgo.GoString](<#replacer-function-replace>)

  - [function replacer\(\):stdgo.AnyInterface](<#replacer-function-replacer>)

  - [function writeString\( \_w:stdgo.io.Writer, \_s:stdgo.GoString\):\{\_1:stdgo.Error, \_0:stdgo.GoInt\}](<#replacer-function-writestring>)

# Examples


- [exampleCompare](<#examplecompare>)

- [exampleContains](<#examplecontains>)

- [exampleContainsAny](<#examplecontainsany>)

- [exampleContainsRune](<#examplecontainsrune>)

- [exampleCount](<#examplecount>)

- [exampleCut](<#examplecut>)

- [exampleEqualFold](<#exampleequalfold>)

- [exampleFields](<#examplefields>)

- [exampleFieldsFunc](<#examplefieldsfunc>)

- [exampleHasPrefix](<#examplehasprefix>)

- [exampleHasSuffix](<#examplehassuffix>)

- [exampleIndex](<#exampleindex>)

- [exampleIndexAny](<#exampleindexany>)

- [exampleIndexByte](<#exampleindexbyte>)

- [exampleIndexFunc](<#exampleindexfunc>)

- [exampleIndexRune](<#exampleindexrune>)

- [exampleJoin](<#examplejoin>)

- [exampleLastIndex](<#examplelastindex>)

- [exampleLastIndexAny](<#examplelastindexany>)

- [exampleLastIndexByte](<#examplelastindexbyte>)

- [exampleLastIndexFunc](<#examplelastindexfunc>)

- [exampleMap](<#examplemap>)

- [exampleNewReplacer](<#examplenewreplacer>)

- [exampleRepeat](<#examplerepeat>)

- [exampleReplace](<#examplereplace>)

- [exampleReplaceAll](<#examplereplaceall>)

- [exampleSplit](<#examplesplit>)

- [exampleSplitAfter](<#examplesplitafter>)

- [exampleSplitAfterN](<#examplesplitaftern>)

- [exampleSplitN](<#examplesplitn>)

- [exampleTitle](<#exampletitle>)

- [exampleToLower](<#exampletolower>)

- [exampleToLowerSpecial](<#exampletolowerspecial>)

- [exampleToTitle](<#exampletotitle>)

- [exampleToTitleSpecial](<#exampletotitlespecial>)

- [exampleToUpper](<#exampletoupper>)

- [exampleToUpperSpecial](<#exampletoupperspecial>)

- [exampleTrim](<#exampletrim>)

- [exampleTrimFunc](<#exampletrimfunc>)

- [exampleTrimLeft](<#exampletrimleft>)

- [exampleTrimLeftFunc](<#exampletrimleftfunc>)

- [exampleTrimPrefix](<#exampletrimprefix>)

- [exampleTrimRight](<#exampletrimright>)

- [exampleTrimRightFunc](<#exampletrimrightfunc>)

- [exampleTrimSpace](<#exampletrimspace>)

- [exampleTrimSuffix](<#exampletrimsuffix>)

# Functions


```haxe
import stdgo.strings.Strings
```


## function \_explode


```haxe
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


explode splits s into a slice of UTF\-8 strings, one string per Unicode character up to a maximum of n \(n \< 0 means no limit\). Invalid UTF\-8 sequences become correct encodings of U\+FFFD. 


[\(view code\)](<./Strings.hx#L615>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


Generic split: splits after each instance of sep, including sepSave bytes of sep in the subarrays. 


[\(view code\)](<./Strings.hx#L889>)


## function \_getStringWriter


```haxe
function _getStringWriter(_w:stdgo.io.Writer):stdgo.io.StringWriter
```


 


[\(view code\)](<./Strings.hx#L542>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


indexFunc is the same as IndexFunc except that if truth==false, the sense of the predicate function is inverted. 


[\(view code\)](<./Strings.hx#L1473>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```


isSeparator reports whether the rune could mark a word boundary. TODO: update when package unicode captures more of the properties. 


[\(view code\)](<./Strings.hx#L1377>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


lastIndexFunc is the same as LastIndexFunc except that if truth==false, the sense of the predicate function is inverted. 


[\(view code\)](<./Strings.hx#L1487>)


## function \_longestCommonSuffix


```haxe
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Strings.hx#L593>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{_1:Bool, _0:stdgo.strings._Strings.T_asciiSet}
```


makeASCIISet creates a set of ASCII characters and reports whether all characters in chars are ASCII. 


[\(view code\)](<./Strings.hx#L1507>)


## function \_makeGenericReplacer


```haxe
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo.strings._Strings.T_genericReplacer>
```


 


[\(view code\)](<./Strings.hx#L505>)


## function \_makeSingleStringReplacer


```haxe
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo.strings._Strings.T_singleStringReplacer>
```


 


[\(view code\)](<./Strings.hx#L554>)


## function \_makeStringFinder


```haxe
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo.strings._Strings.T_stringFinder>
```


 


[\(view code\)](<./Strings.hx#L558>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Strings.hx#L603>)


## function \_noescape


```haxe
function _noescape(_p:stdgo.unsafe.UnsafePointer):stdgo.unsafe.UnsafePointer
```


noescape hides a pointer from escape analysis. It is the identity function but escape analysis doesn't think the output depends on the input. noescape is inlined and currently compiles down to zero instructions. USE CAREFULLY\! This was copied from the runtime; see issues 23382 and 7921.  go:nosplit go:nocheckptr 


[\(view code\)](<./Strings.hx#L427>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings._Strings.T_asciiSet>):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1575>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1568>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1585>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings._Strings.T_asciiSet>):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1634>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1627>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L1644>)


## function clone


```haxe
function clone(_s:stdgo.GoString):stdgo.GoString
```


Clone returns a fresh copy of s. It guarantees to make a copy of s into a new allocation, which can be important when retaining only a small substring of a much larger string. Using Clone can help such programs use less memory. Of course, since using Clone makes a copy, overuse of Clone can make programs use more memory. Clone should typically be used only rarely, and only when profiling indicates that it is needed. For strings of length zero the string "" will be returned and no allocation is made. 


[\(view code\)](<./Strings.hx#L444>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


Compare returns an integer comparing two strings lexicographically. The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.  Compare is included only for symmetry with package bytes. It is usually clearer and always faster to use the built\-in string comparison operators ==, \<, \>, and so on. 


### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("a") : GoString), (Go.str("b") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("a") : GoString), (Go.str("a") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("b") : GoString), (Go.str("a") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L462>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool
```


Contains reports whether substr is within s. 


### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str("foo") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str("bar") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str() : GoString), (Go.str() : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L665>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool
```


ContainsAny reports whether any Unicode code points in chars are within s. 


### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("team") : GoString), (Go.str("i") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("fail") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("ure") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("failure") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("foo") : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str() : GoString), (Go.str() : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L672>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```


ContainsRune reports whether the Unicode code point r is within s. 


### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune((Go.str("aardvark") : GoString), (97 : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune((Go.str("timeout") : GoString), (97 : GoInt32)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L679>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


Count counts the number of non\-overlapping instances of substr in s. If substr is an empty string, Count returns 1 \+ the number of Unicode code points in s. 


### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count((Go.str("cheese") : GoString), (Go.str("e") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count((Go.str("five") : GoString), (Go.str() : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L644>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoString}
```


Cut slices s around the first instance of sep, returning the text before and after sep. The found result reports whether sep appears in s. If sep does not appear in s, cut returns s, "", false. 


### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
	var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
		var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
		stdgo.fmt.Fmt.printf((Go.str("Cut(%q, %q) = %q, %q, %v\n") : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before),
			Go.toInterface(_after), Go.toInterface(_found));
	};
	_show((Go.str("Gopher") : GoString), (Go.str("Go") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("ph") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("er") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("Badger") : GoString));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1927>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):{_1:stdgo.Slice<stdgo.GoInt>, _0:stdgo.Slice<stdgo.GoInt>}
```


 


[\(view code\)](<./Strings.hx#L476>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```


EqualFold reports whether s and t, interpreted as UTF\-8 strings, are equal under simple Unicode case\-folding, which is a more general form of case\-insensitivity. 


### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("Go") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("AB") : GoString), (Go.str("ab") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("ß") : GoString), (Go.str("ss") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1775>)


## function fields


```haxe
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


Fields splits the string s around each instance of one or more consecutive white space characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an empty slice if s contains only white space. 


### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
	stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString), Go.toInterface(stdgo.strings.Strings.fields((Go.str("  foo bar  baz   ") : GoString))));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L993>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>
```


FieldsFunc splits the string s at each run of Unicode code points c satisfying f\(c\) and returns an array of slices of s. If all code points in s satisfy f\(c\) or the string is empty, an empty slice is returned.  FieldsFunc makes no guarantees about the order in which it calls f\(c\) and assumes that f always returns the same value for a given c. 


### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
	};
	stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString),
		Go.toInterface(stdgo.strings.Strings.fieldsFunc((Go.str("  foo1;bar2,baz3...") : GoString), _f)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1068>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool
```


HasPrefix tests whether the string s begins with prefix. 


### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str("Go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str("C") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str() : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1124>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool
```


HasSuffix tests whether the string s ends with suffix. 


### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("O") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("Ami") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str() : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1131>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


Index returns the index of the first instance of substr in s, or \-1 if substr is not present in s. 


### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("chicken") : GoString), (Go.str("ken") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("chicken") : GoString), (Go.str("dmr") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1847>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


IndexAny returns the index of the first instance of any Unicode code point from chars in s, or \-1 if no Unicode code point from chars is present in s. 


### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny((Go.str("chicken") : GoString), (Go.str("aeiouy") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny((Go.str("crwth") : GoString), (Go.str("aeiouy") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L762>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


IndexByte returns the index of the first instance of c in s, or \-1 if c is not present in s. 


### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("golang") : GoString), ("g".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("gophers") : GoString), ("h".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("golang") : GoString), ("x".code : GoUInt8)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L731>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


IndexFunc returns the index into s of the first Unicode code point satisfying f\(c\), or \-1 if none do. 


### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc((Go.str("Hello, 世界") : GoString), _f));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc((Go.str("Hello, world") : GoString), _f));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1456>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```


IndexRune returns the index of the first instance of the Unicode code point r, or \-1 if rune is not present in s. If r is utf8.RuneError, it returns the first instance of any invalid UTF\-8 byte sequence. 


### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune((Go.str("chicken") : GoString), ("k".code : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune((Go.str("chicken") : GoString), ("d".code : GoInt32)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L741>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString
```


Join concatenates the elements of its first argument to create a single string. The separator string sep is placed between elements in the resulting string. 


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
	var _s = (new Slice<GoString>(0, 0, (Go.str("foo") : GoString), (Go.str("bar") : GoString), (Go.str("baz") : GoString)) : Slice<GoString>);
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.join(_s, (Go.str(", ") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1098>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


LastIndex returns the index of the last instance of substr in s, or \-1 if substr is not present in s. 


### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex((Go.str("go gopher") : GoString), (Go.str("rodent") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L686>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


LastIndexAny returns the index of the last instance of any Unicode code point from chars in s, or \-1 if no Unicode code point from chars is present in s. 


### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("rodent") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("fail") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L804>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s. 


### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("l".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("o".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("x".code : GoUInt8)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L873>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


LastIndexFunc returns the index into s of the last Unicode code point satisfying f\(c\), or \-1 if none do. 


### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("go 123") : GoString), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("123 go") : GoString), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("go") : GoString), stdgo.unicode.Unicode.isNumber));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1464>)


## function map


```haxe
function map(_mapping:(), _s:stdgo.GoString):stdgo.GoString
```


Map returns a copy of the string s with all its characters modified according to the mapping function. If mapping returns a negative value, the character is dropped from the string with no replacement. 


### exampleMap


<details><summary></summary>
<p>


```haxe
function exampleMap():Void {
	var _rot13:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if ((_r >= ("A".code : GoInt32)) && (_r <= ("Z".code : GoInt32))) {
			return ("A".code : GoInt32) + (((_r - ("A".code : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
		} else if ((_r >= ("a".code : GoInt32)) && (_r <= ("z".code : GoInt32))) {
			return ("a".code : GoInt32) + (((_r - ("a".code : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
		};
		return _r;
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.map(_rot13, (Go.str("\'Twas brillig and the slithy gopher...") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1140>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo.strings.Reader>
```


NewReader returns a new Reader reading from s. It is similar to bytes.NewBufferString but more efficient and read\-only. 


[\(view code\)](<./Strings.hx#L485>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.strings.Replacer>
```


NewReplacer returns a new Replacer from a list of old, new string pairs. Replacements are performed in the order they appear in the target string, without overlapping matches. The old string comparisons are done in argument order.  NewReplacer panics if given an odd number of arguments. 


### exampleNewReplacer


<details><summary></summary>
<p>


```haxe
function exampleNewReplacer():Void {
	var _r = stdgo.strings.Strings.newReplacer((Go.str("<") : GoString), (Go.str("&lt;") : GoString), (Go.str(">") : GoString), (Go.str("&gt;") : GoString));
	stdgo.fmt.Fmt.println(_r.replace((Go.str("This is <b>HTML</b>!") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L497>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString
```


Repeat returns a new string consisting of count copies of the string s.  It panics if count is negative or if the result of \(len\(s\) \* count\) overflows. 


### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
	stdgo.fmt.Fmt.println((Go.str("ba") : GoString) + stdgo.strings.Strings.repeat((Go.str("na") : GoString), (2 : GoInt)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1190>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString
```


Replace returns a copy of the string s with the first n non\-overlapping instances of old replaced by new. If old is empty, it matches at the beginning of the string and after each UTF\-8 sequence, yielding up to k\+1 replacements for a k\-rune string. If n \< 0, there is no limit on the number of replacements. 


### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace((Go.str("oink oink oink") : GoString), (Go.str("k") : GoString), (Go.str("ky") : GoString),
		(2 : GoInt)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace((Go.str("oink oink oink") : GoString), (Go.str("oink") : GoString), (Go.str("moo") : GoString),
		(-1 : GoInt)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1721>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString
```


ReplaceAll returns a copy of the string s with all non\-overlapping instances of old replaced by new. If old is empty, it matches at the beginning of the string and after each UTF\-8 sequence, yielding up to k\+1 replacements for a k\-rune string. 


### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replaceAll((Go.str("oink oink oink") : GoString), (Go.str("oink") : GoString), (Go.str("moo") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1766>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


Split slices s into all substrings separated by sep and returns a slice of the substrings between those separators.  If s does not contain sep and sep is not empty, Split returns a slice of length 1 whose only element is s.  If sep is empty, Split splits after each UTF\-8 sequence. If both s and sep are empty, Split returns an empty slice.  It is equivalent to SplitN with a count of \-1.  To split around the first instance of a separator, see Cut. 


### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.strings.Strings.split((Go.str("a,b,c") : GoString), (Go.str(",") : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.split((Go.str("a man a plan a canal panama") : GoString), (Go.str("a ") : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.strings.Strings.split((Go.str(" xyz ") : GoString), (Go.str() : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.split((Go.str() : GoString), (Go.str("Bernardo O\'Higgins") : GoString))));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L968>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


SplitAfter slices s into all substrings after each instance of sep and returns a slice of those substrings.  If s does not contain sep and sep is not empty, SplitAfter returns a slice of length 1 whose only element is s.  If sep is empty, SplitAfter splits after each UTF\-8 sequence. If both s and sep are empty, SplitAfter returns an empty slice.  It is equivalent to SplitAfterN with a count of \-1. 


### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitAfter((Go.str("a,b,c") : GoString), (Go.str(",") : GoString))));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L984>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


SplitAfterN slices s into substrings after each instance of sep and returns a slice of those substrings.  The count determines the number of substrings to return:  n \> 0: at most n substrings; the last substring will be the unsplit remainder. n == 0: the result is nil \(zero substrings\) n \< 0: all substrings  Edge cases for s and sep \(for example, empty strings\) are handled as described in the documentation for SplitAfter. 


### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitAfterN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L950>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


SplitN slices s into substrings separated by sep and returns a slice of the substrings between those separators.  The count determines the number of substrings to return:  n \> 0: at most n substrings; the last substring will be the unsplit remainder. n == 0: the result is nil \(zero substrings\) n \< 0: all substrings  Edge cases for s and sep \(for example, empty strings\) are handled as described in the documentation for Split.  To split around the first instance of a separator, see Cut. 


### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (2 : GoInt))));
	var _z = stdgo.strings.Strings.splitN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (0 : GoInt));
	stdgo.fmt.Fmt.printf((Go.str("%q (nil = %v)\n") : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L933>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Strings.hx#L472>)


## function title


```haxe
function title(_s:stdgo.GoString):stdgo.GoString
```


Title returns a copy of the string s with all Unicode letters that begin words mapped to their Unicode title case.  Deprecated: The rule Title uses for word boundaries does not handle Unicode punctuation properly. Use golang.org/x/text/cases instead. 


### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("her royal highness") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("loud noises") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("хлеб") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1403>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):stdgo.GoString
```


ToLower returns s with all Unicode letters mapped to their lower case. 


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLower((Go.str("Gopher") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1254>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their lower case using the case mapping specified by c. 


### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, (Go.str("Önnek İş") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1308>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):stdgo.GoString
```


ToTitle returns a copy of the string s with all Unicode letters mapped to their Unicode title case. 


### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("her royal highness") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("loud noises") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("хлеб") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1292>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their Unicode title case, giving priority to the special casing rules. 


### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase,
		(Go.str("dünyanın ilk borsa yapısı Aizonai kabul edilir") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1316>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):stdgo.GoString
```


ToUpper returns s with all Unicode letters mapped to their upper case. 


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpper((Go.str("Gopher") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1217>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their upper case using the case mapping specified by c. 


### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, (Go.str("örnek iş") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1300>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString
```


ToValidUTF8 returns a copy of the string s with each run of invalid UTF\-8 byte sequences replaced by the replacement string, which may be empty. 


[\(view code\)](<./Strings.hx#L1324>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


Trim returns a slice of the string s with all leading and trailing Unicode code points contained in cutset removed. 


### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trim((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1526>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimFunc returns a slice of the string s with all leading and trailing Unicode code points c satisfying f\(c\) removed. 


### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1448>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


TrimLeft returns a slice of the string s with all leading Unicode code points contained in cutset removed.  To remove a prefix, use TrimPrefix instead. 


### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeft((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1550>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimLeftFunc returns a slice of the string s with all leading Unicode code points c satisfying f\(c\) removed. 


### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeftFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1419>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString
```


TrimPrefix returns s without the provided leading prefix string. If s doesn't start with prefix, s is returned unchanged. 


### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
	var _s:GoString = (Go.str("¡¡¡Hello, Gophers!!!") : GoString);
	_s = stdgo.strings.Strings.trimPrefix(_s, (Go.str("¡¡¡Hello, ") : GoString));
	_s = stdgo.strings.Strings.trimPrefix(_s, (Go.str("¡¡¡Howdy, ") : GoString));
	stdgo.fmt.Fmt.print(_s);
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1695>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


TrimRight returns a slice of the string s, with all trailing Unicode code points contained in cutset removed.  To remove a suffix, use TrimSuffix instead. 


### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRight((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1609>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


TrimRightFunc returns a slice of the string s with all trailing Unicode code points c satisfying f\(c\) removed. 


### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRightFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1431>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):stdgo.GoString
```


TrimSpace returns a slice of the string s, with all leading and trailing white space removed, as defined by Unicode. 


### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.trimSpace((Go.str(" \t\n Hello, Gophers \n\t\r\n") : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1667>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString
```


TrimSuffix returns s without the provided trailing suffix string. If s doesn't end with suffix, s is returned unchanged. 


### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
	var _s:GoString = (Go.str("¡¡¡Hello, Gophers!!!") : GoString);
	_s = stdgo.strings.Strings.trimSuffix(_s, (Go.str(", Gophers!!!") : GoString));
	_s = stdgo.strings.Strings.trimSuffix(_s, (Go.str(", Marmots!!!") : GoString));
	stdgo.fmt.Fmt.print(_s);
}
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1706>)


# Classes


```haxe
import stdgo.strings.*
```


## class Builder


A Builder is used to efficiently build a string using Write methods. It minimizes memory copying. The zero value is ready to use. Do not copy a non\-zero Builder. 


```haxe
var _addr:stdgo.Ref<stdgo.strings.Builder>
```


of receiver, to detect copies by value 


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


### Builder function new


```haxe
function new(?_addr:stdgo.Ref<stdgo.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void
```


 


[\(view code\)](<./Strings.hx#L63>)


### Builder function \_copyCheck


```haxe
function _copyCheck():Void
```


 


[\(view code\)](<./Strings.hx#L2155>)


### Builder function \_grow


```haxe
function _grow( _n:stdgo.GoInt):Void
```


grow copies the buffer to a new, larger buffer so that there are at least n bytes of capacity beyond len\(b.buf\). 


[\(view code\)](<./Strings.hx#L2110>)


### Builder function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns the capacity of the builder's underlying byte slice. It is the total space allocated for the string being built and includes any bytes already written. 


[\(view code\)](<./Strings.hx#L2132>)


### Builder function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


Grow grows b's capacity, if necessary, to guarantee space for another n bytes. After Grow\(n\), at least n bytes can be written to b without another allocation. If n is negative, Grow panics. 


[\(view code\)](<./Strings.hx#L2095>)


### Builder function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of accumulated bytes; b.Len\(\) == len\(b.String\(\)\). 


[\(view code\)](<./Strings.hx#L2140>)


### Builder function reset


```haxe
function reset():Void
```


Reset resets the Builder to be empty. 


[\(view code\)](<./Strings.hx#L2121>)


### Builder function string


```haxe
function string():stdgo.GoString
```


String returns the accumulated string. 


[\(view code\)](<./Strings.hx#L2148>)


### Builder function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Write appends the contents of p to b's buffer. Write always returns len\(p\), nil. 


[\(view code\)](<./Strings.hx#L2083>)


### Builder function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


WriteByte appends the byte c to b's buffer. The returned error is always nil. 


[\(view code\)](<./Strings.hx#L2072>)


### Builder function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteRune appends the UTF\-8 encoding of Unicode code point r to b's buffer. It returns the length of r and a nil error. 


[\(view code\)](<./Strings.hx#L2052>)


### Builder function writeString


```haxe
function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString appends the contents of s to b's buffer. It returns the length of s and a nil error. 


[\(view code\)](<./Strings.hx#L2041>)


## class Reader


A Reader implements the io.Reader, io.ReaderAt, io.ByteReader, io.ByteScanner, io.RuneReader, io.RuneScanner, io.Seeker, and io.WriterTo interfaces by reading from a string. The zero value for Reader operates like a Reader of an empty string. 


```haxe
var _i:stdgo.GoInt64
```


current reading index 


```haxe
var _prevRune:stdgo.GoInt
```


index of previous rune; or \< 0 


```haxe
var _s:stdgo.GoString
```


### Reader function new


```haxe
function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Strings.hx#L97>)


### Reader function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of bytes of the unread portion of the string. 


[\(view code\)](<./Strings.hx#L2435>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read implements the io.Reader interface. 


[\(view code\)](<./Strings.hx#L2408>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```


ReadAt implements the io.ReaderAt interface. 


[\(view code\)](<./Strings.hx#L2389>)


### Reader function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte implements the io.ByteReader interface. 


[\(view code\)](<./Strings.hx#L2375>)


### Reader function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune implements the io.RuneReader interface. 


[\(view code\)](<./Strings.hx#L2333>)


### Reader function reset


```haxe
function reset( _s:stdgo.GoString):Void
```


Reset resets the Reader to be reading from s. 


[\(view code\)](<./Strings.hx#L2256>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


Seek implements the io.Seeker interface. 


[\(view code\)](<./Strings.hx#L2294>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```


Size returns the original length of the underlying string. Size is the number of bytes available for reading via ReadAt. The returned value is always the same and is not affected by calls to any other method. 


[\(view code\)](<./Strings.hx#L2426>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte implements the io.ByteScanner interface. 


[\(view code\)](<./Strings.hx#L2362>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune implements the io.RuneScanner interface. 


[\(view code\)](<./Strings.hx#L2317>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo implements the io.WriterTo interface. 


[\(view code\)](<./Strings.hx#L2269>)


## class Replacer


Replacer replaces a list of strings with replacements. It is safe for concurrent use by multiple goroutines. 


```haxe
var _oldnew:stdgo.Slice<stdgo.GoString>
```


```haxe
var _once:stdgo.sync.Once
```


guards buildOnce method 


```haxe
var _r:stdgo.strings._Strings.T_replacer
```


### Replacer function new


```haxe
function new(?_once:stdgo.sync.Once, ?_r:Null<stdgo.strings._Strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void
```


 


[\(view code\)](<./Strings.hx#L127>)


### Replacer function \_build


```haxe
function _build():stdgo.strings._Strings.T_replacer
```


 


[\(view code\)](<./Strings.hx#L2506>)


### Replacer function \_buildOnce


```haxe
function _buildOnce():Void
```


 


[\(view code\)](<./Strings.hx#L2555>)


### Replacer function printTrie


```haxe
function printTrie():stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L2561>)


### Replacer function replace


```haxe
function replace( _s:stdgo.GoString):stdgo.GoString
```


Replace returns a copy of s with all replacements performed. 


[\(view code\)](<./Strings.hx#L2500>)


### Replacer function replacer


```haxe
function replacer():stdgo.AnyInterface
```


 


[\(view code\)](<./Strings.hx#L2568>)


### Replacer function writeString


```haxe
function writeString( _w:stdgo.io.Writer, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString writes s to w with all replacements performed. 


[\(view code\)](<./Strings.hx#L2490>)

