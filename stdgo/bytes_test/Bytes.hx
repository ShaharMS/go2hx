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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNewBuffer") : GoString),
		stdgo.bytes_test.Bytes_test.testNewBuffer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNewBufferString") : GoString),
		stdgo.bytes_test.Bytes_test.testNewBufferString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBasicOperations") : GoString),
		stdgo.bytes_test.Bytes_test.testBasicOperations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeStringWrites") : GoString),
		stdgo.bytes_test.Bytes_test.testLargeStringWrites) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeByteWrites") : GoString),
		stdgo.bytes_test.Bytes_test.testLargeByteWrites) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeStringReads") : GoString),
		stdgo.bytes_test.Bytes_test.testLargeStringReads) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeByteReads") : GoString),
		stdgo.bytes_test.Bytes_test.testLargeByteReads) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMixedReadsAndWrites") : GoString),
		stdgo.bytes_test.Bytes_test.testMixedReadsAndWrites) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCapWithPreallocatedSlice") : GoString),
		stdgo.bytes_test.Bytes_test.testCapWithPreallocatedSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCapWithSliceAndWrittenData") : GoString),
		stdgo.bytes_test.Bytes_test.testCapWithSliceAndWrittenData) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNil") : GoString), stdgo.bytes_test.Bytes_test.testNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadFrom") : GoString),
		stdgo.bytes_test.Bytes_test.testReadFrom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadFromPanicReader") : GoString),
		stdgo.bytes_test.Bytes_test.testReadFromPanicReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadFromNegativeReader") : GoString),
		stdgo.bytes_test.Bytes_test.testReadFromNegativeReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestWriteTo") : GoString), stdgo.bytes_test.Bytes_test.testWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRuneIO") : GoString), stdgo.bytes_test.Bytes_test.testRuneIO) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestWriteInvalidRune") : GoString),
		stdgo.bytes_test.Bytes_test.testWriteInvalidRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNext") : GoString), stdgo.bytes_test.Bytes_test.testNext) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadBytes") : GoString),
		stdgo.bytes_test.Bytes_test.testReadBytes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadString") : GoString),
		stdgo.bytes_test.Bytes_test.testReadString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestGrow") : GoString), stdgo.bytes_test.Bytes_test.testGrow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestGrowOverflow") : GoString),
		stdgo.bytes_test.Bytes_test.testGrowOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadEmptyAtEOF") : GoString),
		stdgo.bytes_test.Bytes_test.testReadEmptyAtEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUnreadByte") : GoString),
		stdgo.bytes_test.Bytes_test.testUnreadByte) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBufferGrowth") : GoString),
		stdgo.bytes_test.Bytes_test.testBufferGrowth) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEqual") : GoString), stdgo.bytes_test.Bytes_test.testEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEqualExhaustive") : GoString),
		stdgo.bytes_test.Bytes_test.testEqualExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNotEqual") : GoString),
		stdgo.bytes_test.Bytes_test.testNotEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndex") : GoString), stdgo.bytes_test.Bytes_test.testIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLastIndex") : GoString),
		stdgo.bytes_test.Bytes_test.testLastIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexAny") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexAny) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLastIndexAny") : GoString),
		stdgo.bytes_test.Bytes_test.testLastIndexAny) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexByte") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexByte) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLastIndexByte") : GoString),
		stdgo.bytes_test.Bytes_test.testLastIndexByte) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexByteBig") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexByteBig) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexByteSmall") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexByteSmall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexRune") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCountByte") : GoString),
		stdgo.bytes_test.Bytes_test.testCountByte) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCountByteNoMatch") : GoString),
		stdgo.bytes_test.Bytes_test.testCountByteNoMatch) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSplit") : GoString), stdgo.bytes_test.Bytes_test.testSplit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSplitAfter") : GoString),
		stdgo.bytes_test.Bytes_test.testSplitAfter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFields") : GoString), stdgo.bytes_test.Bytes_test.testFields) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFieldsFunc") : GoString),
		stdgo.bytes_test.Bytes_test.testFieldsFunc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMap") : GoString), stdgo.bytes_test.Bytes_test.testMap) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToUpper") : GoString), stdgo.bytes_test.Bytes_test.testToUpper) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToLower") : GoString), stdgo.bytes_test.Bytes_test.testToLower) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToValidUTF8") : GoString),
		stdgo.bytes_test.Bytes_test.testToValidUTF8) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTrimSpace") : GoString),
		stdgo.bytes_test.Bytes_test.testTrimSpace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRepeat") : GoString), stdgo.bytes_test.Bytes_test.testRepeat) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRepeatCatchesOverflow") : GoString),
		stdgo.bytes_test.Bytes_test.testRepeatCatchesOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRunes") : GoString), stdgo.bytes_test.Bytes_test.testRunes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTrim") : GoString), stdgo.bytes_test.Bytes_test.testTrim) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTrimFunc") : GoString),
		stdgo.bytes_test.Bytes_test.testTrimFunc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIndexFunc") : GoString),
		stdgo.bytes_test.Bytes_test.testIndexFunc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReplace") : GoString), stdgo.bytes_test.Bytes_test.testReplace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTitle") : GoString), stdgo.bytes_test.Bytes_test.testTitle) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToTitle") : GoString), stdgo.bytes_test.Bytes_test.testToTitle) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEqualFold") : GoString),
		stdgo.bytes_test.Bytes_test.testEqualFold) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCut") : GoString), stdgo.bytes_test.Bytes_test.testCut) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBufferGrowNegative") : GoString),
		stdgo.bytes_test.Bytes_test.testBufferGrowNegative) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBufferTruncateNegative") : GoString),
		stdgo.bytes_test.Bytes_test.testBufferTruncateNegative) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBufferTruncateOutOfRange") : GoString),
		stdgo.bytes_test.Bytes_test.testBufferTruncateOutOfRange) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestContains") : GoString),
		stdgo.bytes_test.Bytes_test.testContains) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestContainsAny") : GoString),
		stdgo.bytes_test.Bytes_test.testContainsAny) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestContainsRune") : GoString),
		stdgo.bytes_test.Bytes_test.testContainsRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCompare") : GoString), stdgo.bytes_test.Bytes_test.testCompare) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCompareIdenticalSlice") : GoString),
		stdgo.bytes_test.Bytes_test.testCompareIdenticalSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCompareBytes") : GoString),
		stdgo.bytes_test.Bytes_test.testCompareBytes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEndianBaseCompare") : GoString),
		stdgo.bytes_test.Bytes_test.testEndianBaseCompare) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReader") : GoString), stdgo.bytes_test.Bytes_test.testReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadAfterBigSeek") : GoString),
		stdgo.bytes_test.Bytes_test.testReadAfterBigSeek) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderAt") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderAt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderAtConcurrent") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderAtConcurrent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEmptyReaderConcurrent") : GoString),
		stdgo.bytes_test.Bytes_test.testEmptyReaderConcurrent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderWriteTo") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderLen") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderLen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUnreadRuneError") : GoString),
		stdgo.bytes_test.Bytes_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderDoubleUnreadRune") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderDoubleUnreadRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderCopyNothing") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderCopyNothing) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderLenSize") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderLenSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderReset") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderReset) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReaderZero") : GoString),
		stdgo.bytes_test.Bytes_test.testReaderZero) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkReadString") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkReadString) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkWriteByte") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkWriteByte) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkWriteRune") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkWriteRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkBufferNotEmptyWriteRead") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkBufferNotEmptyWriteRead) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkBufferFullSmallReads") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkBufferFullSmallReads) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkBufferWriteBlock") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkBufferWriteBlock) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexByte") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexByte) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexBytePortable") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexBytePortable) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexRune") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexRuneASCII") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexRuneASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkEqual") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkEqual) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndex") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndex) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexEasy") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexEasy) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCount") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCount) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCountEasy") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCountEasy) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCountSingle") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCountSingle) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkToUpper") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkToUpper) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkToLower") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkToLower) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFields") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkFields) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFieldsFunc") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkFieldsFunc) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTrimSpace") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkTrimSpace) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkToValidUTF8") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkToValidUTF8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexHard1") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexHard1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexHard2") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexHard2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexHard3") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexHard3) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexHard4") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexHard4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLastIndexHard1") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLastIndexHard2") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLastIndexHard3") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkLastIndexHard3) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCountHard1") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCountHard1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCountHard2") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCountHard2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCountHard3") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCountHard3) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSplitEmptySeparator") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkSplitEmptySeparator) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSplitSingleByteSeparator") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkSplitSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSplitMultiByteSeparator") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkSplitMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSplitNSingleByteSeparator") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkSplitNSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSplitNMultiByteSeparator") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkSplitNMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRepeat") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkRepeat) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkBytesCompare") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkBytesCompare) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexAnyASCII") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexAnyUTF8") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLastIndexAnyASCII") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkLastIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLastIndexAnyUTF8") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkLastIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTrimASCII") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkTrimASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTrimByte") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkTrimByte) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIndexPeriodic") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkIndexPeriodic) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesEqual") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesEqual) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesToNil") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesToNil) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesEmpty") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesEmpty) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesIdentical") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesIdentical) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesSameLength") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesSameLength) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesDifferentLength") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesDifferentLength) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesBigUnaligned") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBigUnaligned) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesBig") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBig) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCompareBytesBigIdentical") : GoString),
		stdgo.bytes_test.Bytes_test.benchmarkCompareBytesBigIdentical) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer,
		(Go.str("Hello world!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_reader") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_reader,
		(Go.str("Gophers rule!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_Bytes") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_Bytes,
		(Go.str("hello world\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_Cap") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_Cap,
		(Go.str("10\n10\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_Grow") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_Grow,
		(Go.str("\"64 bytes or fewer\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_Len") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_Len,
		(Go.str("5\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBuffer_Next") : GoString), stdgo.bytes_test.Bytes_test.exampleBuffer_Next,
		(Go.str("ab\ncd\ne\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleContains") : GoString), stdgo.bytes_test.Bytes_test.exampleContains,
		(Go.str("true\nfalse\ntrue\ntrue\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleContainsAny") : GoString), stdgo.bytes_test.Bytes_test.exampleContainsAny,
		(Go.str("true\ntrue\nfalse\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleContainsRune") : GoString), stdgo.bytes_test.Bytes_test.exampleContainsRune,
		(Go.str("true\nfalse\ntrue\ntrue\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCount") : GoString), stdgo.bytes_test.Bytes_test.exampleCount, (Go.str("3\n5\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCut") : GoString), stdgo.bytes_test.Bytes_test.exampleCut,
		(Go.str("Cut(\"Gopher\", \"Go\") = \"\", \"pher\", true\nCut(\"Gopher\", \"ph\") = \"Go\", \"er\", true\nCut(\"Gopher\", \"er\") = \"Goph\", \"\", true\nCut(\"Gopher\", \"Badger\") = \"Gopher\", \"\", false\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleEqual") : GoString), stdgo.bytes_test.Bytes_test.exampleEqual,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleEqualFold") : GoString), stdgo.bytes_test.Bytes_test.exampleEqualFold,
		(Go.str("true\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFields") : GoString), stdgo.bytes_test.Bytes_test.exampleFields,
		(Go.str("Fields are: [\"foo\" \"bar\" \"baz\"]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFieldsFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleFieldsFunc,
		(Go.str("Fields are: [\"foo1\" \"bar2\" \"baz3\"]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleHasPrefix") : GoString), stdgo.bytes_test.Bytes_test.exampleHasPrefix,
		(Go.str("true\nfalse\ntrue\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleHasSuffix") : GoString), stdgo.bytes_test.Bytes_test.exampleHasSuffix,
		(Go.str("true\nfalse\nfalse\ntrue\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIndex") : GoString), stdgo.bytes_test.Bytes_test.exampleIndex, (Go.str("4\n-1\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIndexByte") : GoString), stdgo.bytes_test.Bytes_test.exampleIndexByte,
		(Go.str("4\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIndexFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleIndexFunc,
		(Go.str("7\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIndexAny") : GoString), stdgo.bytes_test.Bytes_test.exampleIndexAny,
		(Go.str("2\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIndexRune") : GoString), stdgo.bytes_test.Bytes_test.exampleIndexRune,
		(Go.str("4\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleJoin") : GoString), stdgo.bytes_test.Bytes_test.exampleJoin,
		(Go.str("foo, bar, baz\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLastIndex") : GoString), stdgo.bytes_test.Bytes_test.exampleLastIndex,
		(Go.str("0\n3\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLastIndexAny") : GoString), stdgo.bytes_test.Bytes_test.exampleLastIndexAny,
		(Go.str("5\n3\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLastIndexByte") : GoString), stdgo.bytes_test.Bytes_test.exampleLastIndexByte,
		(Go.str("3\n8\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLastIndexFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleLastIndexFunc,
		(Go.str("8\n9\n-1\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReader_Len") : GoString), stdgo.bytes_test.Bytes_test.exampleReader_Len,
		(Go.str("3\n16\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleRepeat") : GoString), stdgo.bytes_test.Bytes_test.exampleRepeat,
		(Go.str("banana\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReplace") : GoString), stdgo.bytes_test.Bytes_test.exampleReplace,
		(Go.str("oinky oinky oink\nmoo moo moo\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReplaceAll") : GoString), stdgo.bytes_test.Bytes_test.exampleReplaceAll,
		(Go.str("moo moo moo\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleRunes") : GoString), stdgo.bytes_test.Bytes_test.exampleRunes,
		(Go.str("U+0067 \'g\'\nU+006F \'o\'\nU+0020 \' \'\nU+0067 \'g\'\nU+006F \'o\'\nU+0070 \'p\'\nU+0068 \'h\'\nU+0065 \'e\'\nU+0072 \'r\'\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSplit") : GoString), stdgo.bytes_test.Bytes_test.exampleSplit,
		(Go.str("[\"a\" \"b\" \"c\"]\n[\"\" \"man \" \"plan \" \"canal panama\"]\n[\" \" \"x\" \"y\" \"z\" \" \"]\n[\"\"]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSplitN") : GoString), stdgo.bytes_test.Bytes_test.exampleSplitN,
		(Go.str("[\"a\" \"b,c\"]\n[] (nil = true)\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSplitAfter") : GoString), stdgo.bytes_test.Bytes_test.exampleSplitAfter,
		(Go.str("[\"a,\" \"b,\" \"c\"]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSplitAfterN") : GoString), stdgo.bytes_test.Bytes_test.exampleSplitAfterN,
		(Go.str("[\"a,\" \"b,c\"]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTitle") : GoString), stdgo.bytes_test.Bytes_test.exampleTitle,
		(Go.str("Her Royal Highness\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToTitle") : GoString), stdgo.bytes_test.Bytes_test.exampleToTitle,
		(Go.str("LOUD NOISES\nХЛЕБ\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToTitleSpecial") : GoString), stdgo.bytes_test.Bytes_test.exampleToTitleSpecial,
		(Go.str("Original : ahoj vývojári golang\nToTitle : AHOJ VÝVOJÁRİ GOLANG\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrim") : GoString), stdgo.bytes_test.Bytes_test.exampleTrim,
		(Go.str("[\"Achtung! Achtung\"]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimFunc,
		(Go.str("-gopher!\n\"go-gopher!\"\ngo-gopher\ngo-gopher!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimLeft") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimLeft,
		(Go.str("gopher8257\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimLeftFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimLeftFunc,
		(Go.str("-gopher\ngo-gopher!\ngo-gopher!567\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimPrefix") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimPrefix,
		(Go.str("Hello, world!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimSpace") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimSpace,
		(Go.str("a lone gopher\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimSuffix") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimSuffix,
		(Go.str("Hello, world!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimRight") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimRight,
		(Go.str("453gopher\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrimRightFunc") : GoString), stdgo.bytes_test.Bytes_test.exampleTrimRightFunc,
		(Go.str("go-\ngo-gopher\n1234go-gopher!\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToLower") : GoString), stdgo.bytes_test.Bytes_test.exampleToLower,
		(Go.str("gopher\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToLowerSpecial") : GoString), stdgo.bytes_test.Bytes_test.exampleToLowerSpecial,
		(Go.str("Original : AHOJ VÝVOJÁRİ GOLANG\nToLower : ahoj vývojári golang\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToUpper") : GoString), stdgo.bytes_test.Bytes_test.exampleToUpper,
		(Go.str("GOPHER\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToUpperSpecial") : GoString), stdgo.bytes_test.Bytes_test.exampleToUpperSpecial,
		(Go.str("Original : ahoj vývojári golang\nToUpper : AHOJ VÝVOJÁRİ GOLANG\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("bytes") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
