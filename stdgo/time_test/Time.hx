package stdgo.time_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestNextStdChunk" : GoString))), stdgo.time_test.Time_test.testNextStdChunk) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRFC3339Conversion" : GoString))), stdgo.time_test.Time_test.testRFC3339Conversion) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormat" : GoString))), stdgo.time_test.Time_test.testFormat) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGoString" : GoString))), stdgo.time_test.Time_test.testGoString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatSingleDigits" : GoString))), stdgo.time_test.Time_test.testFormatSingleDigits) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatShortYear" : GoString))), stdgo.time_test.Time_test.testFormatShortYear) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParse" : GoString))), stdgo.time_test.Time_test.testParse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseDayOutOfRange" : GoString))), stdgo.time_test.Time_test.testParseDayOutOfRange) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseInLocation" : GoString))), stdgo.time_test.Time_test.testParseInLocation) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLoadLocationZipFile" : GoString))), stdgo.time_test.Time_test.testLoadLocationZipFile) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRubyParse" : GoString))), stdgo.time_test.Time_test.testRubyParse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatAndParse" : GoString))), stdgo.time_test.Time_test.testFormatAndParse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseTimeZone" : GoString))), stdgo.time_test.Time_test.testParseTimeZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseErrors" : GoString))), stdgo.time_test.Time_test.testParseErrors) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNoonIs12PM" : GoString))), stdgo.time_test.Time_test.testNoonIs12PM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMidnightIs12AM" : GoString))), stdgo.time_test.Time_test.testMidnightIs12AM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("Test12PMIsNoon" : GoString))), stdgo.time_test.Time_test.test12PMIsNoon) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("Test12AMIsMidnight" : GoString))), stdgo.time_test.Time_test.test12AMIsMidnight) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMissingZone" : GoString))), stdgo.time_test.Time_test.testMissingZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMinutesInTimeZone" : GoString))), stdgo.time_test.Time_test.testMinutesInTimeZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseSecondsInTimeZone" : GoString))), stdgo.time_test.Time_test.testParseSecondsInTimeZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatSecondsInTimeZone" : GoString))), stdgo.time_test.Time_test.testFormatSecondsInTimeZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnderscoreTwoThousand" : GoString))), stdgo.time_test.Time_test.testUnderscoreTwoThousand) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStd0xParseError" : GoString))), stdgo.time_test.Time_test.testStd0xParseError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseMonthOutOfRange" : GoString))), stdgo.time_test.Time_test.testParseMonthOutOfRange) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseYday" : GoString))), stdgo.time_test.Time_test.testParseYday) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestQuote" : GoString))), stdgo.time_test.Time_test.testQuote) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatFractionalSecondSeparators" : GoString))), stdgo.time_test.Time_test.testFormatFractionalSecondSeparators) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseFractionalSecondsLongerThanNineDigits" : GoString))), stdgo.time_test.Time_test.testParseFractionalSecondsLongerThanNineDigits) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHasMonotonicClock" : GoString))), stdgo.time_test.Time_test.testHasMonotonicClock) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMonotonicAdd" : GoString))), stdgo.time_test.Time_test.testMonotonicAdd) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMonotonicSub" : GoString))), stdgo.time_test.Time_test.testMonotonicSub) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMonotonicOverflow" : GoString))), stdgo.time_test.Time_test.testMonotonicOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMonotonicString" : GoString))), stdgo.time_test.Time_test.testMonotonicString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSleep" : GoString))), stdgo.time_test.Time_test.testSleep) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfterFunc" : GoString))), stdgo.time_test.Time_test.testAfterFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfterStress" : GoString))), stdgo.time_test.Time_test.testAfterStress) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfter" : GoString))), stdgo.time_test.Time_test.testAfter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfterTick" : GoString))), stdgo.time_test.Time_test.testAfterTick) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfterStop" : GoString))), stdgo.time_test.Time_test.testAfterStop) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAfterQueuing" : GoString))), stdgo.time_test.Time_test.testAfterQueuing) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimerStopStress" : GoString))), stdgo.time_test.Time_test.testTimerStopStress) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSleepZeroDeadlock" : GoString))), stdgo.time_test.Time_test.testSleepZeroDeadlock) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReset" : GoString))), stdgo.time_test.Time_test.testReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOverflowSleep" : GoString))), stdgo.time_test.Time_test.testOverflowSleep) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue5745" : GoString))), stdgo.time_test.Time_test.testIssue5745) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOverflowPeriodRuntimeTimer" : GoString))), stdgo.time_test.Time_test.testOverflowPeriodRuntimeTimer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZeroTimerResetPanics" : GoString))), stdgo.time_test.Time_test.testZeroTimerResetPanics) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZeroTimerStopPanics" : GoString))), stdgo.time_test.Time_test.testZeroTimerStopPanics) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZeroTimer" : GoString))), stdgo.time_test.Time_test.testZeroTimer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimerModifiedEarlier" : GoString))), stdgo.time_test.Time_test.testTimerModifiedEarlier) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAdjustTimers" : GoString))), stdgo.time_test.Time_test.testAdjustTimers) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTicker" : GoString))), stdgo.time_test.Time_test.testTicker) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTickerStopWithDirectInitialization" : GoString))), stdgo.time_test.Time_test.testTickerStopWithDirectInitialization) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTeardown" : GoString))), stdgo.time_test.Time_test.testTeardown) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTick" : GoString))), stdgo.time_test.Time_test.testTick) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNewTickerLtZeroDuration" : GoString))), stdgo.time_test.Time_test.testNewTickerLtZeroDuration) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTickerResetLtZeroDuration" : GoString))), stdgo.time_test.Time_test.testTickerResetLtZeroDuration) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZoneData" : GoString))), stdgo.time_test.Time_test.testZoneData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSecondsToUTC" : GoString))), stdgo.time_test.Time_test.testSecondsToUTC) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNanosecondsToUTC" : GoString))), stdgo.time_test.Time_test.testNanosecondsToUTC) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSecondsToLocalTime" : GoString))), stdgo.time_test.Time_test.testSecondsToLocalTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNanosecondsToLocalTime" : GoString))), stdgo.time_test.Time_test.testNanosecondsToLocalTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSecondsToUTCAndBack" : GoString))), stdgo.time_test.Time_test.testSecondsToUTCAndBack) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNanosecondsToUTCAndBack" : GoString))), stdgo.time_test.Time_test.testNanosecondsToUTCAndBack) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnixMilli" : GoString))), stdgo.time_test.Time_test.testUnixMilli) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnixMicro" : GoString))), stdgo.time_test.Time_test.testUnixMicro) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTruncateRound" : GoString))), stdgo.time_test.Time_test.testTruncateRound) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestISOWeek" : GoString))), stdgo.time_test.Time_test.testISOWeek) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestYearDay" : GoString))), stdgo.time_test.Time_test.testYearDay) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationString" : GoString))), stdgo.time_test.Time_test.testDurationString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDate" : GoString))), stdgo.time_test.Time_test.testDate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAddDate" : GoString))), stdgo.time_test.Time_test.testAddDate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDaysIn" : GoString))), stdgo.time_test.Time_test.testDaysIn) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAddToExactSecond" : GoString))), stdgo.time_test.Time_test.testAddToExactSecond) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimeGob" : GoString))), stdgo.time_test.Time_test.testTimeGob) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidTimeGob" : GoString))), stdgo.time_test.Time_test.testInvalidTimeGob) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNotGobEncodableTime" : GoString))), stdgo.time_test.Time_test.testNotGobEncodableTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimeJSON" : GoString))), stdgo.time_test.Time_test.testTimeJSON) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidTimeJSON" : GoString))), stdgo.time_test.Time_test.testInvalidTimeJSON) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNotJSONEncodableTime" : GoString))), stdgo.time_test.Time_test.testNotJSONEncodableTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseDuration" : GoString))), stdgo.time_test.Time_test.testParseDuration) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseDurationErrors" : GoString))), stdgo.time_test.Time_test.testParseDurationErrors) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseDurationRoundTrip" : GoString))), stdgo.time_test.Time_test.testParseDurationRoundTrip) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLocationRace" : GoString))), stdgo.time_test.Time_test.testLocationRace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCountMallocs" : GoString))), stdgo.time_test.Time_test.testCountMallocs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLoadFixed" : GoString))), stdgo.time_test.Time_test.testLoadFixed) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSub" : GoString))), stdgo.time_test.Time_test.testSub) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationNanoseconds" : GoString))), stdgo.time_test.Time_test.testDurationNanoseconds) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationMicroseconds" : GoString))), stdgo.time_test.Time_test.testDurationMicroseconds) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationMilliseconds" : GoString))), stdgo.time_test.Time_test.testDurationMilliseconds) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationSeconds" : GoString))), stdgo.time_test.Time_test.testDurationSeconds) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationMinutes" : GoString))), stdgo.time_test.Time_test.testDurationMinutes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationHours" : GoString))), stdgo.time_test.Time_test.testDurationHours) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationTruncate" : GoString))), stdgo.time_test.Time_test.testDurationTruncate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDurationRound" : GoString))), stdgo.time_test.Time_test.testDurationRound) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDefaultLoc" : GoString))), stdgo.time_test.Time_test.testDefaultLoc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMarshalBinaryZeroTime" : GoString))), stdgo.time_test.Time_test.testMarshalBinaryZeroTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMarshalBinaryVersion2" : GoString))), stdgo.time_test.Time_test.testMarshalBinaryVersion2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZeroMonthString" : GoString))), stdgo.time_test.Time_test.testZeroMonthString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWeekdayString" : GoString))), stdgo.time_test.Time_test.testWeekdayString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadFileLimit" : GoString))), stdgo.time_test.Time_test.testReadFileLimit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestConcurrentTimerReset" : GoString))), stdgo.time_test.Time_test.testConcurrentTimerReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestConcurrentTimerResetStop" : GoString))), stdgo.time_test.Time_test.testConcurrentTimerResetStop) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimeIsDST" : GoString))), stdgo.time_test.Time_test.testTimeIsDST) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimeAddSecOverflow" : GoString))), stdgo.time_test.Time_test.testTimeAddSecOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTimeWithZoneTransition" : GoString))), stdgo.time_test.Time_test.testTimeWithZoneTransition) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEmbeddedTZData" : GoString))), stdgo.time_test.Time_test.testEmbeddedTZData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEnvVarUsage" : GoString))), stdgo.time_test.Time_test.testEnvVarUsage) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBadLocationErrMsg" : GoString))), stdgo.time_test.Time_test.testBadLocationErrMsg) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLoadLocationValidatesNames" : GoString))), stdgo.time_test.Time_test.testLoadLocationValidatesNames) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestVersion3" : GoString))), stdgo.time_test.Time_test.testVersion3) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFirstZone" : GoString))), stdgo.time_test.Time_test.testFirstZone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLocationNames" : GoString))), stdgo.time_test.Time_test.testLocationNames) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLoadLocationFromTZData" : GoString))), stdgo.time_test.Time_test.testLoadLocationFromTZData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEarlyLocation" : GoString))), stdgo.time_test.Time_test.testEarlyLocation) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMalformedTZData" : GoString))), stdgo.time_test.Time_test.testMalformedTZData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLoadLocationFromTZDataSlim" : GoString))), stdgo.time_test.Time_test.testLoadLocationFromTZDataSlim) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTzset" : GoString))), stdgo.time_test.Time_test.testTzset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTzsetName" : GoString))), stdgo.time_test.Time_test.testTzsetName) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTzsetOffset" : GoString))), stdgo.time_test.Time_test.testTzsetOffset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTzsetRule" : GoString))), stdgo.time_test.Time_test.testTzsetRule) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAfterFunc" : GoString))), stdgo.time_test.Time_test.benchmarkAfterFunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAfter" : GoString))), stdgo.time_test.Time_test.benchmarkAfter) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkStop" : GoString))), stdgo.time_test.Time_test.benchmarkStop) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSimultaneousAfterFunc" : GoString))), stdgo.time_test.Time_test.benchmarkSimultaneousAfterFunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkStartStop" : GoString))), stdgo.time_test.Time_test.benchmarkStartStop) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReset" : GoString))), stdgo.time_test.Time_test.benchmarkReset) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSleep" : GoString))), stdgo.time_test.Time_test.benchmarkSleep) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkParallelTimerLatency" : GoString))), stdgo.time_test.Time_test.benchmarkParallelTimerLatency) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkStaggeredTickerLatency" : GoString))), stdgo.time_test.Time_test.benchmarkStaggeredTickerLatency) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTicker" : GoString))), stdgo.time_test.Time_test.benchmarkTicker) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTickerReset" : GoString))), stdgo.time_test.Time_test.benchmarkTickerReset) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTickerResetNaive" : GoString))), stdgo.time_test.Time_test.benchmarkTickerResetNaive) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkNow" : GoString))), stdgo.time_test.Time_test.benchmarkNow) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkNowUnixNano" : GoString))), stdgo.time_test.Time_test.benchmarkNowUnixNano) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkNowUnixMilli" : GoString))), stdgo.time_test.Time_test.benchmarkNowUnixMilli) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkNowUnixMicro" : GoString))), stdgo.time_test.Time_test.benchmarkNowUnixMicro) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkFormat" : GoString))), stdgo.time_test.Time_test.benchmarkFormat) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkFormatNow" : GoString))), stdgo.time_test.Time_test.benchmarkFormatNow) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkMarshalJSON" : GoString))), stdgo.time_test.Time_test.benchmarkMarshalJSON) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkMarshalText" : GoString))), stdgo.time_test.Time_test.benchmarkMarshalText) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkParse" : GoString))), stdgo.time_test.Time_test.benchmarkParse) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkParseDuration" : GoString))), stdgo.time_test.Time_test.benchmarkParseDuration) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkHour" : GoString))), stdgo.time_test.Time_test.benchmarkHour) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSecond" : GoString))), stdgo.time_test.Time_test.benchmarkSecond) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkYear" : GoString))), stdgo.time_test.Time_test.benchmarkYear) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDay" : GoString))), stdgo.time_test.Time_test.benchmarkDay) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkISOWeek" : GoString))), stdgo.time_test.Time_test.benchmarkISOWeek) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Round" : GoString))), stdgo.time_test.Time_test.exampleDuration_Round, ((("d.Round(   1ns) = 1h15m30.918273645s\nd.Round(   1µs) = 1h15m30.918274s\nd.Round(   1ms) = 1h15m30.918s\nd.Round(    1s) = 1h15m31s\nd.Round(    2s) = 1h15m30s\nd.Round(  1m0s) = 1h16m0s\nd.Round( 10m0s) = 1h20m0s\nd.Round(1h0m0s) = 1h0m0s\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_String" : GoString))), stdgo.time_test.Time_test.exampleDuration_String, ((("1h2m0.3s\n300ms\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Truncate" : GoString))), stdgo.time_test.Time_test.exampleDuration_Truncate, ((("d.Truncate(   1ns) = 1h15m30.918273645s\nd.Truncate(   1µs) = 1h15m30.918273s\nd.Truncate(   1ms) = 1h15m30.918s\nd.Truncate(    1s) = 1h15m30s\nd.Truncate(    2s) = 1h15m30s\nd.Truncate(  1m0s) = 1h15m0s\nd.Truncate( 10m0s) = 1h10m0s\nd.Truncate(1h0m0s) = 1h0m0s\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleParseDuration" : GoString))), stdgo.time_test.Time_test.exampleParseDuration, ((("10h0m0s\n1h10m10s\nThere are 4210 seconds in 1h10m10s.\nThere are 1000 nanoseconds in 1µs.\nThere are 1.00e-06 seconds in 1µs.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Hours" : GoString))), stdgo.time_test.Time_test.exampleDuration_Hours, ((("I\'ve got 4.5 hours of work left.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Microseconds" : GoString))), stdgo.time_test.Time_test.exampleDuration_Microseconds, ((("One second is 1000000 microseconds.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Milliseconds" : GoString))), stdgo.time_test.Time_test.exampleDuration_Milliseconds, ((("One second is 1000 milliseconds.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Minutes" : GoString))), stdgo.time_test.Time_test.exampleDuration_Minutes, ((("The movie is 90 minutes long.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Nanoseconds" : GoString))), stdgo.time_test.Time_test.exampleDuration_Nanoseconds, ((("One microsecond is 1000 nanoseconds.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDuration_Seconds" : GoString))), stdgo.time_test.Time_test.exampleDuration_Seconds, ((("Take off in t-90 seconds.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleDate" : GoString))), stdgo.time_test.Time_test.exampleDate, ((("Go launched at 2009-11-10 15:00:00 -0800 PST\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Format" : GoString))), stdgo.time_test.Time_test.exampleTime_Format, ((("default format: 2015-02-25 11:06:39 -0800 PST\nUnix format: Wed Feb 25 11:06:39 PST 2015\nSame, in UTC: Wed Feb 25 19:06:39 UTC 2015\n\nFormats:\n\nBasic full date  \"Mon Jan 2 15:04:05 MST 2006\" gives \"Wed Feb 25 11:06:39 PST 2015\"\nBasic short date \"2006/01/02\" gives \"2015/02/25\"\nAM/PM            \"3PM==3pm==15h\" gives \"11AM==11am==11h\"\nNo fraction      \"Mon Jan _2 15:04:05 MST 2006\" gives \"Wed Feb 25 11:06:39 PST 2015\"\n0s for fraction  \"15:04:05.00000\" gives \"11:06:39.12340\"\n9s for fraction  \"15:04:05.99999999\" gives \"11:06:39.1234\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Format_pad" : GoString))), stdgo.time_test.Time_test.exampleTime_Format_pad, ((("Unix             \"Mon Jan _2 15:04:05 MST 2006\" gives \"Sat Mar  7 11:06:39 PST 2015\"\nNo pad           \"<2>\" gives \"<7>\"\nSpaces           \"<_2>\" gives \"< 7>\"\nZeros            \"<02>\" gives \"<07>\"\nSuppressed pad   \"04:05\" gives \"06:39\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_GoString" : GoString))), stdgo.time_test.Time_test.exampleTime_GoString, ((("time.Date(2009, time.November, 10, 23, 0, 0, 0, time.UTC)\ntime.Date(2009, time.November, 10, 23, 1, 0, 0, time.UTC)\ntime.Date(2009, time.December, 10, 23, 1, 0, 0, time.UTC)\ntime.Date(2013, time.February, 3, 19, 54, 0, 0, time.UTC)\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleParse" : GoString))), stdgo.time_test.Time_test.exampleParse, ((("2013-02-03 19:54:00 -0800 PST\n2013-02-03 00:00:00 +0000 UTC\n2006-01-02 15:04:05 +0000 UTC\n2006-01-02 15:04:05 +0700 +0700\nerror parsing time \"2006-01-02T15:04:05Z07:00\": extra text: \"07:00\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleParseInLocation" : GoString))), stdgo.time_test.Time_test.exampleParseInLocation, ((("2012-07-09 05:02:00 +0200 CEST\n2012-07-09 00:00:00 +0200 CEST\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleUnix" : GoString))), stdgo.time_test.Time_test.exampleUnix, ((("1257894000\n2009-11-10 23:00:00 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleUnixMicro" : GoString))), stdgo.time_test.Time_test.exampleUnixMicro, ((("1257894000000000\n2009-11-10 23:00:00 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleUnixMilli" : GoString))), stdgo.time_test.Time_test.exampleUnixMilli, ((("1257894000000\n2009-11-10 23:00:00 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Unix" : GoString))), stdgo.time_test.Time_test.exampleTime_Unix, ((("2001-09-09 01:46:40 +0000 UTC\n2001-09-09 01:46:40 +0000 UTC\n2001-09-09 01:46:40 +0000 UTC\n1000000000\n1000000000000000000\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Round" : GoString))), stdgo.time_test.Time_test.exampleTime_Round, ((("t.Round(   1ns) = 12:15:30.918273645\nt.Round(   1µs) = 12:15:30.918274\nt.Round(   1ms) = 12:15:30.918\nt.Round(    1s) = 12:15:31\nt.Round(    2s) = 12:15:30\nt.Round(  1m0s) = 12:16:00\nt.Round( 10m0s) = 12:20:00\nt.Round(1h0m0s) = 12:00:00\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Truncate" : GoString))), stdgo.time_test.Time_test.exampleTime_Truncate, ((("t.Truncate(  1ns) = 12:15:30.918273645\nt.Truncate(  1µs) = 12:15:30.918273\nt.Truncate(  1ms) = 12:15:30.918\nt.Truncate(   1s) = 12:15:30\nt.Truncate(   2s) = 12:15:30\nt.Truncate( 1m0s) = 12:15:00\nt.Truncate(10m0s) = 12:10:00\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLoadLocation" : GoString))), stdgo.time_test.Time_test.exampleLoadLocation, ((("2018-08-30 05:00:00 -0700 PDT\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleLocation" : GoString))), stdgo.time_test.Time_test.exampleLocation, ((("true\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Add" : GoString))), stdgo.time_test.Time_test.exampleTime_Add, ((("start = 2009-01-01 12:00:00 +0000 UTC\nstart.Add(time.Second * 10) = 2009-01-01 12:00:10 +0000 UTC\nstart.Add(time.Minute * 10) = 2009-01-01 12:10:00 +0000 UTC\nstart.Add(time.Hour * 10) = 2009-01-01 22:00:00 +0000 UTC\nstart.Add(time.Hour * 24 * 10) = 2009-01-11 12:00:00 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_AddDate" : GoString))), stdgo.time_test.Time_test.exampleTime_AddDate, ((("oneDayLater: start.AddDate(0, 0, 1) = 2009-01-02 00:00:00 +0000 UTC\noneMonthLater: start.AddDate(0, 1, 0) = 2009-02-01 00:00:00 +0000 UTC\noneYearLater: start.AddDate(1, 0, 0) = 2010-01-01 00:00:00 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_After" : GoString))), stdgo.time_test.Time_test.exampleTime_After, ((("year3000.After(year2000) = true\nyear2000.After(year3000) = false\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Before" : GoString))), stdgo.time_test.Time_test.exampleTime_Before, ((("year2000.Before(year3000) = true\nyear3000.Before(year2000) = false\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Date" : GoString))), stdgo.time_test.Time_test.exampleTime_Date, ((("year = 2000\nmonth = February\nday = 1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Day" : GoString))), stdgo.time_test.Time_test.exampleTime_Day, ((("day = 1\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Equal" : GoString))), stdgo.time_test.Time_test.exampleTime_Equal, ((("datesEqualUsingEqualOperator = false\ndatesEqualUsingFunction = true\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_String" : GoString))), stdgo.time_test.Time_test.exampleTime_String, ((("withNanoseconds = 2000-02-01 12:13:14.000000015 +0000 UTC\nwithoutNanoseconds = 2000-02-01 12:13:14 +0000 UTC\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_Sub" : GoString))), stdgo.time_test.Time_test.exampleTime_Sub, ((("difference = 12h0m0s\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleTime_AppendFormat" : GoString))), stdgo.time_test.Time_test.exampleTime_AppendFormat, ((("Time: 11:00AM\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleFixedZone" : GoString))), stdgo.time_test.Time_test.exampleFixedZone, ((("The time is: 10 Nov 09 23:00 UTC-8\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("time" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
