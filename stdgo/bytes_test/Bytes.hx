package stdgo.bytes_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((("TestNewBuffer" : GoString))), stdgo.bytes_test.Bytes_test.testNewBuffer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNewBufferString" : GoString))), stdgo.bytes_test.Bytes_test.testNewBufferString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBasicOperations" : GoString))), stdgo.bytes_test.Bytes_test.testBasicOperations) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLargeStringWrites" : GoString))), stdgo.bytes_test.Bytes_test.testLargeStringWrites) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLargeByteWrites" : GoString))), stdgo.bytes_test.Bytes_test.testLargeByteWrites) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLargeStringReads" : GoString))), stdgo.bytes_test.Bytes_test.testLargeStringReads) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLargeByteReads" : GoString))), stdgo.bytes_test.Bytes_test.testLargeByteReads) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMixedReadsAndWrites" : GoString))), stdgo.bytes_test.Bytes_test.testMixedReadsAndWrites) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCapWithPreallocatedSlice" : GoString))), stdgo.bytes_test.Bytes_test.testCapWithPreallocatedSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCapWithSliceAndWrittenData" : GoString))), stdgo.bytes_test.Bytes_test.testCapWithSliceAndWrittenData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNil" : GoString))), stdgo.bytes_test.Bytes_test.testNil) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadFrom" : GoString))), stdgo.bytes_test.Bytes_test.testReadFrom) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadFromPanicReader" : GoString))), stdgo.bytes_test.Bytes_test.testReadFromPanicReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadFromNegativeReader" : GoString))), stdgo.bytes_test.Bytes_test.testReadFromNegativeReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteTo" : GoString))), stdgo.bytes_test.Bytes_test.testWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRuneIO" : GoString))), stdgo.bytes_test.Bytes_test.testRuneIO) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteInvalidRune" : GoString))), stdgo.bytes_test.Bytes_test.testWriteInvalidRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNext" : GoString))), stdgo.bytes_test.Bytes_test.testNext) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadBytes" : GoString))), stdgo.bytes_test.Bytes_test.testReadBytes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadString" : GoString))), stdgo.bytes_test.Bytes_test.testReadString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGrow" : GoString))), stdgo.bytes_test.Bytes_test.testGrow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGrowOverflow" : GoString))), stdgo.bytes_test.Bytes_test.testGrowOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadEmptyAtEOF" : GoString))), stdgo.bytes_test.Bytes_test.testReadEmptyAtEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnreadByte" : GoString))), stdgo.bytes_test.Bytes_test.testUnreadByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferGrowth" : GoString))), stdgo.bytes_test.Bytes_test.testBufferGrowth) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEqual" : GoString))), stdgo.bytes_test.Bytes_test.testEqual) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEqualExhaustive" : GoString))), stdgo.bytes_test.Bytes_test.testEqualExhaustive) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNotEqual" : GoString))), stdgo.bytes_test.Bytes_test.testNotEqual) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndex" : GoString))), stdgo.bytes_test.Bytes_test.testIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLastIndex" : GoString))), stdgo.bytes_test.Bytes_test.testLastIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexAny" : GoString))), stdgo.bytes_test.Bytes_test.testIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLastIndexAny" : GoString))), stdgo.bytes_test.Bytes_test.testLastIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexByte" : GoString))), stdgo.bytes_test.Bytes_test.testIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLastIndexByte" : GoString))), stdgo.bytes_test.Bytes_test.testLastIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexByteBig" : GoString))), stdgo.bytes_test.Bytes_test.testIndexByteBig) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexByteSmall" : GoString))), stdgo.bytes_test.Bytes_test.testIndexByteSmall) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexRune" : GoString))), stdgo.bytes_test.Bytes_test.testIndexRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCountByte" : GoString))), stdgo.bytes_test.Bytes_test.testCountByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCountByteNoMatch" : GoString))), stdgo.bytes_test.Bytes_test.testCountByteNoMatch) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSplit" : GoString))), stdgo.bytes_test.Bytes_test.testSplit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSplitAfter" : GoString))), stdgo.bytes_test.Bytes_test.testSplitAfter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFields" : GoString))), stdgo.bytes_test.Bytes_test.testFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFieldsFunc" : GoString))), stdgo.bytes_test.Bytes_test.testFieldsFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMap" : GoString))), stdgo.bytes_test.Bytes_test.testMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestToUpper" : GoString))), stdgo.bytes_test.Bytes_test.testToUpper) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestToLower" : GoString))), stdgo.bytes_test.Bytes_test.testToLower) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestToValidUTF8" : GoString))), stdgo.bytes_test.Bytes_test.testToValidUTF8) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTrimSpace" : GoString))), stdgo.bytes_test.Bytes_test.testTrimSpace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRepeat" : GoString))), stdgo.bytes_test.Bytes_test.testRepeat) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRepeatCatchesOverflow" : GoString))), stdgo.bytes_test.Bytes_test.testRepeatCatchesOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRunes" : GoString))), stdgo.bytes_test.Bytes_test.testRunes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTrim" : GoString))), stdgo.bytes_test.Bytes_test.testTrim) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTrimFunc" : GoString))), stdgo.bytes_test.Bytes_test.testTrimFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndexFunc" : GoString))), stdgo.bytes_test.Bytes_test.testIndexFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReplace" : GoString))), stdgo.bytes_test.Bytes_test.testReplace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTitle" : GoString))), stdgo.bytes_test.Bytes_test.testTitle) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestToTitle" : GoString))), stdgo.bytes_test.Bytes_test.testToTitle) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEqualFold" : GoString))), stdgo.bytes_test.Bytes_test.testEqualFold) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCut" : GoString))), stdgo.bytes_test.Bytes_test.testCut) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferGrowNegative" : GoString))), stdgo.bytes_test.Bytes_test.testBufferGrowNegative) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferTruncateNegative" : GoString))), stdgo.bytes_test.Bytes_test.testBufferTruncateNegative) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferTruncateOutOfRange" : GoString))), stdgo.bytes_test.Bytes_test.testBufferTruncateOutOfRange) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestContains" : GoString))), stdgo.bytes_test.Bytes_test.testContains) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestContainsAny" : GoString))), stdgo.bytes_test.Bytes_test.testContainsAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestContainsRune" : GoString))), stdgo.bytes_test.Bytes_test.testContainsRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCompare" : GoString))), stdgo.bytes_test.Bytes_test.testCompare) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCompareIdenticalSlice" : GoString))), stdgo.bytes_test.Bytes_test.testCompareIdenticalSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCompareBytes" : GoString))), stdgo.bytes_test.Bytes_test.testCompareBytes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEndianBaseCompare" : GoString))), stdgo.bytes_test.Bytes_test.testEndianBaseCompare) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReader" : GoString))), stdgo.bytes_test.Bytes_test.testReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadAfterBigSeek" : GoString))), stdgo.bytes_test.Bytes_test.testReadAfterBigSeek) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderAt" : GoString))), stdgo.bytes_test.Bytes_test.testReaderAt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderAtConcurrent" : GoString))), stdgo.bytes_test.Bytes_test.testReaderAtConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEmptyReaderConcurrent" : GoString))), stdgo.bytes_test.Bytes_test.testEmptyReaderConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderWriteTo" : GoString))), stdgo.bytes_test.Bytes_test.testReaderWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderLen" : GoString))), stdgo.bytes_test.Bytes_test.testReaderLen) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnreadRuneError" : GoString))), stdgo.bytes_test.Bytes_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderDoubleUnreadRune" : GoString))), stdgo.bytes_test.Bytes_test.testReaderDoubleUnreadRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderCopyNothing" : GoString))), stdgo.bytes_test.Bytes_test.testReaderCopyNothing) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderLenSize" : GoString))), stdgo.bytes_test.Bytes_test.testReaderLenSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderReset" : GoString))), stdgo.bytes_test.Bytes_test.testReaderReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderZero" : GoString))), stdgo.bytes_test.Bytes_test.testReaderZero) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadString" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkReadString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteByte" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkWriteByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteRune" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkWriteRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkBufferNotEmptyWriteRead" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkBufferNotEmptyWriteRead) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkBufferFullSmallReads" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkBufferFullSmallReads) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexByte" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexBytePortable" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexBytePortable) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexRune" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexRuneASCII" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexRuneASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEqual" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkEqual) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndex" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndex) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexEasy" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexEasy) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCount" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCount) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCountEasy" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCountEasy) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCountSingle" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCountSingle) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkToUpper" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkToUpper) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkToLower" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkToLower) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkFields" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkFields) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkFieldsFunc" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkFieldsFunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTrimSpace" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkTrimSpace) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkToValidUTF8" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkToValidUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexHard1" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexHard2" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexHard3" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexHard4" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexHard4) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLastIndexHard1" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLastIndexHard2" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLastIndexHard3" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCountHard1" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCountHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCountHard2" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCountHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCountHard3" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCountHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSplitEmptySeparator" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkSplitEmptySeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSplitSingleByteSeparator" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkSplitSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSplitMultiByteSeparator" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkSplitMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSplitNSingleByteSeparator" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkSplitNSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSplitNMultiByteSeparator" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkSplitNMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkRepeat" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkRepeat) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkBytesCompare" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkBytesCompare) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexAnyASCII" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexAnyUTF8" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLastIndexAnyASCII" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkLastIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLastIndexAnyUTF8" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkLastIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTrimASCII" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkTrimASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTrimByte" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkTrimByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkIndexPeriodic" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkIndexPeriodic) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesEqual" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesEqual) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesToNil" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesToNil) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesEmpty" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesEmpty) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesIdentical" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesIdentical) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesSameLength" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesSameLength) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesDifferentLength" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesDifferentLength) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesBigUnaligned" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBigUnaligned) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesBig" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBig) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompareBytesBigIdentical" : GoString))), stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBigIdentical) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer, ((("Hello world!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_reader" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_reader, ((("Gophers rule!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_Bytes" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_Bytes, ((("hello world\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_Cap" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_Cap, ((("10\n10\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_Grow" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_Grow, ((("\"64 bytes or fewer\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_Len" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_Len, ((("5\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleBuffer_Next" : GoString))), stdgo.bytes_test.Bytes_test.exampleBuffer_Next, ((("ab\ncd\ne\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleContains" : GoString))), stdgo.bytes_test.Bytes_test.exampleContains, ((("true\nfalse\ntrue\ntrue\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleContainsAny" : GoString))), stdgo.bytes_test.Bytes_test.exampleContainsAny, ((("true\ntrue\nfalse\nfalse\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleContainsRune" : GoString))), stdgo.bytes_test.Bytes_test.exampleContainsRune, ((("true\nfalse\ntrue\ntrue\nfalse\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleCount" : GoString))), stdgo.bytes_test.Bytes_test.exampleCount, ((("3\n5\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleCut" : GoString))), stdgo.bytes_test.Bytes_test.exampleCut, ((("Cut(\"Gopher\", \"Go\") = \"\", \"pher\", true\nCut(\"Gopher\", \"ph\") = \"Go\", \"er\", true\nCut(\"Gopher\", \"er\") = \"Goph\", \"\", true\nCut(\"Gopher\", \"Badger\") = \"Gopher\", \"\", false\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleEqual" : GoString))), stdgo.bytes_test.Bytes_test.exampleEqual, ((("true\nfalse\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleEqualFold" : GoString))), stdgo.bytes_test.Bytes_test.exampleEqualFold, ((("true\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleFields" : GoString))), stdgo.bytes_test.Bytes_test.exampleFields, ((("Fields are: [\"foo\" \"bar\" \"baz\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleFieldsFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleFieldsFunc, ((("Fields are: [\"foo1\" \"bar2\" \"baz3\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleHasPrefix" : GoString))), stdgo.bytes_test.Bytes_test.exampleHasPrefix, ((("true\nfalse\ntrue\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleHasSuffix" : GoString))), stdgo.bytes_test.Bytes_test.exampleHasSuffix, ((("true\nfalse\nfalse\ntrue\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleIndex" : GoString))), stdgo.bytes_test.Bytes_test.exampleIndex, ((("4\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleIndexByte" : GoString))), stdgo.bytes_test.Bytes_test.exampleIndexByte, ((("4\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleIndexFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleIndexFunc, ((("7\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleIndexAny" : GoString))), stdgo.bytes_test.Bytes_test.exampleIndexAny, ((("2\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleIndexRune" : GoString))), stdgo.bytes_test.Bytes_test.exampleIndexRune, ((("4\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleJoin" : GoString))), stdgo.bytes_test.Bytes_test.exampleJoin, ((("foo, bar, baz\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLastIndex" : GoString))), stdgo.bytes_test.Bytes_test.exampleLastIndex, ((("0\n3\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLastIndexAny" : GoString))), stdgo.bytes_test.Bytes_test.exampleLastIndexAny, ((("5\n3\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLastIndexByte" : GoString))), stdgo.bytes_test.Bytes_test.exampleLastIndexByte, ((("3\n8\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLastIndexFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleLastIndexFunc, ((("8\n9\n-1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleReader_Len" : GoString))), stdgo.bytes_test.Bytes_test.exampleReader_Len, ((("3\n16\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleRepeat" : GoString))), stdgo.bytes_test.Bytes_test.exampleRepeat, ((("banana\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleReplace" : GoString))), stdgo.bytes_test.Bytes_test.exampleReplace, ((("oinky oinky oink\nmoo moo moo\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleReplaceAll" : GoString))), stdgo.bytes_test.Bytes_test.exampleReplaceAll, ((("moo moo moo\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleRunes" : GoString))), stdgo.bytes_test.Bytes_test.exampleRunes, ((("U+0067 \'g\'\nU+006F \'o\'\nU+0020 \' \'\nU+0067 \'g\'\nU+006F \'o\'\nU+0070 \'p\'\nU+0068 \'h\'\nU+0065 \'e\'\nU+0072 \'r\'\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleSplit" : GoString))), stdgo.bytes_test.Bytes_test.exampleSplit, ((("[\"a\" \"b\" \"c\"]\n[\"\" \"man \" \"plan \" \"canal panama\"]\n[\" \" \"x\" \"y\" \"z\" \" \"]\n[\"\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleSplitN" : GoString))), stdgo.bytes_test.Bytes_test.exampleSplitN, ((("[\"a\" \"b,c\"]\n[] (nil = true)\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleSplitAfter" : GoString))), stdgo.bytes_test.Bytes_test.exampleSplitAfter, ((("[\"a,\" \"b,\" \"c\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleSplitAfterN" : GoString))), stdgo.bytes_test.Bytes_test.exampleSplitAfterN, ((("[\"a,\" \"b,c\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTitle" : GoString))), stdgo.bytes_test.Bytes_test.exampleTitle, ((("Her Royal Highness\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToTitle" : GoString))), stdgo.bytes_test.Bytes_test.exampleToTitle, ((("LOUD NOISES\nХЛЕБ\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToTitleSpecial" : GoString))), stdgo.bytes_test.Bytes_test.exampleToTitleSpecial, ((("Original : ahoj vývojári golang\nToTitle : AHOJ VÝVOJÁRİ GOLANG\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrim" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrim, ((("[\"Achtung! Achtung\"]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimFunc, ((("-gopher!\n\"go-gopher!\"\ngo-gopher\ngo-gopher!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimLeft" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimLeft, ((("gopher8257\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimLeftFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimLeftFunc, ((("-gopher\ngo-gopher!\ngo-gopher!567\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimPrefix" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimPrefix, ((("Hello, world!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimSpace" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimSpace, ((("a lone gopher\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimSuffix" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimSuffix, ((("Hello, world!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimRight" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimRight, ((("453gopher\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTrimRightFunc" : GoString))), stdgo.bytes_test.Bytes_test.exampleTrimRightFunc, ((("go-\ngo-gopher\n1234go-gopher!\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToLower" : GoString))), stdgo.bytes_test.Bytes_test.exampleToLower, ((("gopher\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToLowerSpecial" : GoString))), stdgo.bytes_test.Bytes_test.exampleToLowerSpecial, ((("Original : AHOJ VÝVOJÁRİ GOLANG\nToLower : ahoj vývojári golang\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToUpper" : GoString))), stdgo.bytes_test.Bytes_test.exampleToUpper, ((("GOPHER\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleToUpperSpecial" : GoString))), stdgo.bytes_test.Bytes_test.exampleToUpperSpecial, ((("Original : ahoj vývojári golang\nToUpper : AHOJ VÝVOJÁRİ GOLANG\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("bytes" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
