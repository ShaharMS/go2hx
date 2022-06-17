package stdgo.time_test;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _nextStdChunkTests : Slice<GoString> = ((new Slice<GoString>(((("(2006)-(01)-(02)T(15):(04):(05)(Z07:00)" : GoString))), ((("(2006)-(01)-(02) (002) (15):(04):(05)" : GoString))), ((("(2006)-(01) (002) (15):(04):(05)" : GoString))), ((("(2006)-(002) (15):(04):(05)" : GoString))), ((("(2006)(002)(01) (15):(04):(05)" : GoString))), ((("(2006)(002)(04) (15):(04):(05)" : GoString)))) : Slice<GoString>));
var _rfc3339Formats : Slice<stdgo.time_test.Time_test.TimeFormatTest> = ((new Slice<stdgo.time_test.Time_test.TimeFormatTest>(((new stdgo.time_test.Time_test.TimeFormatTest((date(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((("2008-09-17T20:04:26Z" : GoString)))) : stdgo.time_test.Time_test.TimeFormatTest)), ((new stdgo.time_test.Time_test.TimeFormatTest((date(((1994 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), fixedZone(((("EST" : GoString))), ((-18000 : GoInt)))) == null ? null : date(((1994 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), fixedZone(((("EST" : GoString))), ((-18000 : GoInt)))).__copy__()), ((("1994-09-17T20:04:26-05:00" : GoString)))) : stdgo.time_test.Time_test.TimeFormatTest)), ((new stdgo.time_test.Time_test.TimeFormatTest((date(((2000 : GoInt)), ((12 : GoInt)), ((26 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), fixedZone(((("OTO" : GoString))), ((15600 : GoInt)))) == null ? null : date(((2000 : GoInt)), ((12 : GoInt)), ((26 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), fixedZone(((("OTO" : GoString))), ((15600 : GoInt)))).__copy__()), ((("2000-12-26T01:15:06+04:20" : GoString)))) : stdgo.time_test.Time_test.TimeFormatTest))) : Slice<stdgo.time_test.Time_test.TimeFormatTest>));
var _formatTests : Slice<stdgo.time_test.Time_test.FormatTest> = ((new Slice<stdgo.time_test.Time_test.FormatTest>(
((new stdgo.time_test.Time_test.FormatTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Wed Feb  4 21:00:57 2009" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("UnixDate" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Wed Feb  4 21:00:57 PST 2009" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Wed Feb 04 21:00:57 -0800 2009" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC822" : GoString))), ((("02 Jan 06 15:04 MST" : GoString))), ((("04 Feb 09 21:00 PST" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC850" : GoString))), ((("Monday, 02-Jan-06 15:04:05 MST" : GoString))), ((("Wednesday, 04-Feb-09 21:00:57 PST" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC1123" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 MST" : GoString))), ((("Wed, 04 Feb 2009 21:00:57 PST" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC1123Z" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 -0700" : GoString))), ((("Wed, 04 Feb 2009 21:00:57 -0800" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC3339" : GoString))), ((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2009-02-04T21:00:57-08:00" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("RFC3339Nano" : GoString))), ((("2006-01-02T15:04:05.999999999Z07:00" : GoString))), ((("2009-02-04T21:00:57.0123456-08:00" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("Kitchen" : GoString))), ((("3:04PM" : GoString))), ((("9:00PM" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("am/pm" : GoString))), ((("3pm" : GoString))), ((("9pm" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("AM/PM" : GoString))), ((("3PM" : GoString))), ((("9PM" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("two-digit year" : GoString))), ((("06 01 02" : GoString))), ((("09 02 04" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("Janet" : GoString))), ((("Hi Janet, the Month is January" : GoString))), ((("Hi Janet, the Month is February" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("Stamp" : GoString))), ((("Jan _2 15:04:05" : GoString))), ((("Feb  4 21:00:57" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("StampMilli" : GoString))), ((("Jan _2 15:04:05.000" : GoString))), ((("Feb  4 21:00:57.012" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("StampMicro" : GoString))), ((("Jan _2 15:04:05.000000" : GoString))), ((("Feb  4 21:00:57.012345" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("StampNano" : GoString))), ((("Jan _2 15:04:05.000000000" : GoString))), ((("Feb  4 21:00:57.012345600" : GoString)))) : stdgo.time_test.Time_test.FormatTest)),
((new stdgo.time_test.Time_test.FormatTest(((("YearDay" : GoString))), ((("Jan  2 002 __2 2" : GoString))), ((("Feb  4 035  35 4" : GoString)))) : stdgo.time_test.Time_test.FormatTest))) : Slice<stdgo.time_test.Time_test.FormatTest>));
var _goStringTests : Slice<stdgo.time_test.Time_test.T__struct_0> = ((new Slice<stdgo.time_test.Time_test.T__struct_0>(((new stdgo.time_test.Time_test.T__struct_0((date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), utc).__copy__()), ((("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.UTC)" : GoString)))) : stdgo.time_test.Time_test.T__struct_0)), ((new stdgo.time_test.Time_test.T__struct_0((date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), local) == null ? null : date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), local).__copy__()), ((("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Local)" : GoString)))) : stdgo.time_test.Time_test.T__struct_0)), ((new stdgo.time_test.Time_test.T__struct_0((date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), fixedZone(((("Europe/Berlin" : GoString))), ((10800 : GoInt)))) == null ? null : date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), fixedZone(((("Europe/Berlin" : GoString))), ((10800 : GoInt)))).__copy__()), "time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Europe/Berlin\"))") : stdgo.time_test.Time_test.T__struct_0)), ((new stdgo.time_test.Time_test.T__struct_0((date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), fixedZone(((("Non-ASCII character ⏰" : GoString))), ((10800 : GoInt)))) == null ? null : date(((2009 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((0 : GoInt)), ((57 : GoInt)), ((12345600 : GoInt)), fixedZone(((("Non-ASCII character ⏰" : GoString))), ((10800 : GoInt)))).__copy__()), "time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Non-ASCII character \\xe2\\x8f\\xb0\"))") : stdgo.time_test.Time_test.T__struct_0))) : Slice<stdgo.time_test.Time_test.T__struct_0>));
var _parseTests : Slice<stdgo.time_test.Time_test.ParseTest> = ((new Slice<stdgo.time_test.Time_test.ParseTest>(
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 21:00:57 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("UnixDate" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Thu Feb  4 21:00:57 PST 2010" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57 -0800 2010" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC850" : GoString))), ((("Monday, 02-Jan-06 15:04:05 MST" : GoString))), ((("Thursday, 04-Feb-10 21:00:57 PST" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC1123" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 MST" : GoString))), ((("Thu, 04 Feb 2010 21:00:57 PST" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC1123" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 MST" : GoString))), ((("Thu, 04 Feb 2010 22:00:57 PDT" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC1123Z" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 -0700" : GoString))), ((("Thu, 04 Feb 2010 21:00:57 -0800" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC3339" : GoString))), ((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2010-02-04T21:00:57-08:00" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("custom: \"2006-01-02 15:04:05-07\"" : GoString))), ((("2006-01-02 15:04:05-07" : GoString))), ((("2010-02-04 21:00:57-08" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 21:00:57.0 2010" : GoString))), false, true, ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("UnixDate" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Thu Feb  4 21:00:57.01 PST 2010" : GoString))), true, true, ((1 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57.012 -0800 2010" : GoString))), true, true, ((1 : GoInt)), ((3 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC850" : GoString))), ((("Monday, 02-Jan-06 15:04:05 MST" : GoString))), ((("Thursday, 04-Feb-10 21:00:57.0123 PST" : GoString))), true, true, ((1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC1123" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 MST" : GoString))), ((("Thu, 04 Feb 2010 21:00:57.01234 PST" : GoString))), true, true, ((1 : GoInt)), ((5 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC1123Z" : GoString))), ((("Mon, 02 Jan 2006 15:04:05 -0700" : GoString))), ((("Thu, 04 Feb 2010 21:00:57.01234 -0800" : GoString))), true, true, ((1 : GoInt)), ((5 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("RFC3339" : GoString))), ((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2010-02-04T21:00:57.012345678-08:00" : GoString))), true, false, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("custom: \"2006-01-02 15:04:05\"" : GoString))), ((("2006-01-02 15:04:05" : GoString))), ((("2010-02-04 21:00:57.0" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb 4 21:00:57 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu      Feb     4     21:00:57     2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("THU FEB 4 21:00:57 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("ANSIC" : GoString))), ((("Mon Jan _2 15:04:05 2006" : GoString))), ((("thu feb 4 21:00:57 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("millisecond:: dot separator" : GoString))), ((("Mon Jan _2 15:04:05.000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012 2010" : GoString))), false, true, ((1 : GoInt)), ((3 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("microsecond:: dot separator" : GoString))), ((("Mon Jan _2 15:04:05.000000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012345 2010" : GoString))), false, true, ((1 : GoInt)), ((6 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("nanosecond:: dot separator" : GoString))), ((("Mon Jan _2 15:04:05.000000000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012345678 2010" : GoString))), false, true, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("millisecond:: comma separator" : GoString))), ((("Mon Jan _2 15:04:05,000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012 2010" : GoString))), false, true, ((1 : GoInt)), ((3 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("microsecond:: comma separator" : GoString))), ((("Mon Jan _2 15:04:05,000000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012345 2010" : GoString))), false, true, ((1 : GoInt)), ((6 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("nanosecond:: comma separator" : GoString))), ((("Mon Jan _2 15:04:05,000000000 2006" : GoString))), ((("Thu Feb  4 21:00:57.012345678 2010" : GoString))), false, true, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("zero1" : GoString))), ((("2006.01.02.15.04.05.0" : GoString))), ((("2010.02.04.21.00.57.0" : GoString))), false, false, ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("zero2" : GoString))), ((("2006.01.02.15.04.05.00" : GoString))), ((("2010.02.04.21.00.57.01" : GoString))), false, false, ((1 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("Janet" : GoString))), ((("Hi Janet, the Month is January: Jan _2 15:04:05 2006" : GoString))), ((("Hi Janet, the Month is February: Feb  4 21:00:57 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("GMT-8" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Fri Feb  5 05:00:57 GMT-8 2010" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.0123 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.0123 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.012345678 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05.999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.012345678 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.0123 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.0123 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,9999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.012345678 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 15:04:05,999999999 -0700 MST" : GoString))), ((("2010-02-04 21:00:57.012345678 -0800 PST" : GoString))), true, false, ((1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("Jan _2 15:04:05.000000000" : GoString))), ((("Feb  4 21:00:57.012345678" : GoString))), false, false, ((-1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("Jan _2 15:04:05.999" : GoString))), ((("Feb  4 21:00:57.012300000" : GoString))), false, false, ((-1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("Jan _2 15:04:05.999" : GoString))), ((("Feb  4 21:00:57.012345678" : GoString))), false, false, ((-1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("Jan _2 15:04:05.999999999" : GoString))), ((("Feb  4 21:00:57.0123" : GoString))), false, false, ((-1 : GoInt)), ((4 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("Jan _2 15:04:05.999999999" : GoString))), ((("Feb  4 21:00:57.012345678" : GoString))), false, false, ((-1 : GoInt)), ((9 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01-02 002 15:04:05" : GoString))), ((("2010-02-04 035 21:00:57" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-01 002 15:04:05" : GoString))), ((("2010-02 035 21:00:57" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("2006-002 15:04:05" : GoString))), ((("2010-035 21:00:57" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("200600201 15:04:05" : GoString))), ((("201003502 21:00:57" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)),
((new stdgo.time_test.Time_test.ParseTest(((("" : GoString))), ((("200600204 15:04:05" : GoString))), ((("201003504 21:00:57" : GoString))), false, false, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest))) : Slice<stdgo.time_test.Time_test.ParseTest>));
var _dayOutOfRangeTests : Slice<stdgo.time_test.Time_test.T__struct_1> = ((new Slice<stdgo.time_test.Time_test.T__struct_1>(
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jan 99 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jan 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jan 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Feb 28 21:00:57 2012" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Feb 29 21:00:57 2012" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Feb 29 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Mar 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Mar 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Apr 30 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Apr 31 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu May 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu May 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jun 30 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jun 31 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jul 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Jul 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Aug 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Aug 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Sep 30 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Sep 31 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Oct 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Oct 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Nov 30 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Nov 31 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Dec 31 21:00:57 2010" : GoString))), true) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Dec 32 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1)),
((new stdgo.time_test.Time_test.T__struct_1(((("Thu Dec 00 21:00:57 2010" : GoString))), false) : stdgo.time_test.Time_test.T__struct_1))) : Slice<stdgo.time_test.Time_test.T__struct_1>));
var _rubyTests : Slice<stdgo.time_test.Time_test.ParseTest> = ((new Slice<stdgo.time_test.Time_test.ParseTest>(((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57 -0800 2010" : GoString))), true, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)), ((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57 -0000 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)), ((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57 +0000 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest)), ((new stdgo.time_test.Time_test.ParseTest(((("RubyDate" : GoString))), ((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 04 21:00:57 +1130 2010" : GoString))), false, true, ((1 : GoInt)), ((0 : GoInt))) : stdgo.time_test.Time_test.ParseTest))) : Slice<stdgo.time_test.Time_test.ParseTest>));
var _parseTimeZoneTests : Slice<stdgo.time_test.Time_test.ParseTimeZoneTest> = ((new Slice<stdgo.time_test.Time_test.ParseTimeZoneTest>(
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("gmt hi there" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT hi there" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+12 hi there" : GoString))), ((6 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+00 hi there" : GoString))), ((6 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+3" : GoString))), ((5 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+a" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT+3a" : GoString))), ((5 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT-5 hi there" : GoString))), ((5 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("GMT-51 hi there" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("ChST hi there" : GoString))), ((4 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("MeST hi there" : GoString))), ((4 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("MSDx" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("MSDY" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("ESAST hi" : GoString))), ((5 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("ESASTT hi" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("ESATY hi" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("WITA hi" : GoString))), ((4 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+03 hi" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("-04 hi" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+00" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("-11" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("-12" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("-23" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("-24" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+13" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+14" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+23" : GoString))), ((3 : GoInt)), true) : stdgo.time_test.Time_test.ParseTimeZoneTest)),
((new stdgo.time_test.Time_test.ParseTimeZoneTest(((("+24" : GoString))), ((0 : GoInt)), false) : stdgo.time_test.Time_test.ParseTimeZoneTest))) : Slice<stdgo.time_test.Time_test.ParseTimeZoneTest>));
var _parseErrorTests : Slice<stdgo.time_test.Time_test.ParseErrorTest> = ((new Slice<stdgo.time_test.Time_test.ParseErrorTest>(
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Feb  4 21:00:60 2010" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 21:00:57 @2010" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 21:00:60 2010" : GoString))), ((("second out of range" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 21:61:57 2010" : GoString))), ((("minute out of range" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Thu Feb  4 24:00:60 2010" : GoString))), ((("hour out of range" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05.000 2006" : GoString))), ((("Thu Feb  4 23:00:59x01 2010" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05.000 2006" : GoString))), ((("Thu Feb  4 23:00:59.xxx 2010" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Mon Jan _2 15:04:05.000 2006" : GoString))), ((("Thu Feb  4 23:00:59.-123 2010" : GoString))), ((("fractional second out of range" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Jan _2 15:04:05.000000000" : GoString))), ((("Dec  7 11:22:01.000000" : GoString))), "cannot parse \".000000\" as \".000000000\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Jan _2 15:04:05.000000000" : GoString))), ((("Dec  7 11:22:01.0000000000" : GoString))), "extra text: \"0\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05Z07:00" : GoString))), "parsing time \"2006-01-02T15:04:05Z07:00\": extra text: \"07:00\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04_abc" : GoString))), "parsing time \"2006-01-02T15:04_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \":\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05_abc" : GoString))), "parsing time \"2006-01-02T15:04:05_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \"Z07:00\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05Z_abc" : GoString))), "parsing time \"2006-01-02T15:04:05Z_abc\": extra text: \"_abc\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2010-02-04T21:00:67.012345678-08:00" : GoString))), ((("second out of range" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("_2 Jan 06 15:04 MST" : GoString))), ((("4 --- 00 00:00 GMT" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("_2 January 06 15:04 MST" : GoString))), ((("4 --- 00 00:00 GMT" : GoString))), ((("cannot parse" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Jan _2 002 2006" : GoString))), ((("Feb  4 034 2006" : GoString))), ((("day-of-year does not match day" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("Jan _2 002 2006" : GoString))), ((("Feb  4 004 2006" : GoString))), ((("day-of-year does not match month" : GoString)))) : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest("\"2006-01-02T15:04:05Z07:00\"", ((("0" : GoString))), "parsing time \"0\" as \"\\\"2006-01-02T15:04:05Z07:00\\\"\": cannot parse \"0\" as \"\\\"\"") : stdgo.time_test.Time_test.ParseErrorTest)),
((new stdgo.time_test.Time_test.ParseErrorTest(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("\"" : GoString))), "parsing time \"\\\"\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"\\\"\" as \"2006\"") : stdgo.time_test.Time_test.ParseErrorTest))) : Slice<stdgo.time_test.Time_test.ParseErrorTest>));
var _secondsTimeZoneOffsetTests : Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest> = ((new Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest>(((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-070000" : GoString))), ((("1871-01-01T05:33:02-003408" : GoString))), ((-2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-07:00:00" : GoString))), ((("1871-01-01T05:33:02-00:34:08" : GoString))), ((-2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-070000" : GoString))), ((("1871-01-01T05:33:02+003408" : GoString))), ((2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-07:00:00" : GoString))), ((("1871-01-01T05:33:02+00:34:08" : GoString))), ((2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05Z070000" : GoString))), ((("1871-01-01T05:33:02-003408" : GoString))), ((-2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05Z07:00:00" : GoString))), ((("1871-01-01T05:33:02+00:34:08" : GoString))), ((2048 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-07" : GoString))), ((("1871-01-01T05:33:02+01" : GoString))), ((3600 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05-07" : GoString))), ((("1871-01-01T05:33:02-02" : GoString))), ((-7200 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)), ((new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest(((("2006-01-02T15:04:05Z07" : GoString))), ((("1871-01-01T05:33:02-02" : GoString))), ((-7200 : GoInt))) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest))) : Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest>));
var _monthOutOfRangeTests : Slice<stdgo.time_test.Time_test.T__struct_3> = ((new Slice<stdgo.time_test.Time_test.T__struct_3>(((new stdgo.time_test.Time_test.T__struct_3(((("00-01" : GoString))), false) : stdgo.time_test.Time_test.T__struct_3)), ((new stdgo.time_test.Time_test.T__struct_3(((("13-01" : GoString))), false) : stdgo.time_test.Time_test.T__struct_3)), ((new stdgo.time_test.Time_test.T__struct_3(((("01-01" : GoString))), true) : stdgo.time_test.Time_test.T__struct_3))) : Slice<stdgo.time_test.Time_test.T__struct_3>));
var _monotonicStringTests : Slice<stdgo.time_test.Time_test.T__struct_6> = ((new Slice<stdgo.time_test.Time_test.T__struct_6>(((new stdgo.time_test.Time_test.T__struct_6(((0 : GoInt64)), ((("m=+0.000000000" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6(((123456789 : GoInt64)), ((("m=+0.123456789" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6(((-123456789 : GoInt64)), ((("m=-0.123456789" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6((("123456789000" : GoInt64)), ((("m=+123.456789000" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6((("-123456789000" : GoInt64)), ((("m=-123.456789000" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6(((9e+18 : GoInt64)), ((("m=+9000000000.000000000" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6((("-9000000000000000000" : GoInt64)), ((("m=-9000000000.000000000" : GoString)))) : stdgo.time_test.Time_test.T__struct_6)), ((new stdgo.time_test.Time_test.T__struct_6((("-9223372036854775808" : GoInt64)), ((("m=-9223372036.854775808" : GoString)))) : stdgo.time_test.Time_test.T__struct_6))) : Slice<stdgo.time_test.Time_test.T__struct_6>));
var _slots : Slice<GoInt> = ((new Slice<GoInt>(
((5 : GoInt)),
((3 : GoInt)),
((6 : GoInt)),
((6 : GoInt)),
((6 : GoInt)),
((1 : GoInt)),
((1 : GoInt)),
((2 : GoInt)),
((7 : GoInt)),
((9 : GoInt)),
((4 : GoInt)),
((8 : GoInt)),
((0 : GoInt))) : Slice<GoInt>));
var _utctests : Slice<stdgo.time_test.Time_test.TimeTest> = ((new Slice<stdgo.time_test.Time_test.TimeTest>(((new stdgo.time_test.Time_test.TimeTest(((0 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1970 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((1221681866 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((-1221681866 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1931 : GoInt)), ((4 : GoInt)), ((16 : GoInt)), ((3 : GoInt)), ((55 : GoInt)), ((34 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("-11644473600" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1601 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((599529660 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1988 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((6 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((978220860 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2000 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest))) : Slice<stdgo.time_test.Time_test.TimeTest>));
var _nanoutctests : Slice<stdgo.time_test.Time_test.TimeTest> = ((new Slice<stdgo.time_test.Time_test.TimeTest>(((new stdgo.time_test.Time_test.TimeTest(((0 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1970 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1e+08 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((1221681866 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((20 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((2e+08 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((("UTC" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest))) : Slice<stdgo.time_test.Time_test.TimeTest>));
var _localtests : Slice<stdgo.time_test.Time_test.TimeTest> = ((new Slice<stdgo.time_test.Time_test.TimeTest>(((new stdgo.time_test.Time_test.TimeTest(((0 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1969 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((3 : GoInt)), ((-28800 : GoInt)), ((("PST" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((1221681866 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((13 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((0 : GoInt)), ((3 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2159200800" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((6 : GoInt)), ((3 : GoInt)), ((11 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2152173599" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((3 : GoInt)), ((14 : GoInt)), ((1 : GoInt)), ((59 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-28800 : GoInt)), ((("PST" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2152173600" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((3 : GoInt)), ((14 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2152173601" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((3 : GoInt)), ((14 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2172733199" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((11 : GoInt)), ((7 : GoInt)), ((1 : GoInt)), ((59 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2172733200" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((11 : GoInt)), ((7 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-28800 : GoInt)), ((("PST" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest((("2172733201" : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2038 : GoInt)), ((11 : GoInt)), ((7 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((-28800 : GoInt)), ((("PST" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest))) : Slice<stdgo.time_test.Time_test.TimeTest>));
var _nanolocaltests : Slice<stdgo.time_test.Time_test.TimeTest> = ((new Slice<stdgo.time_test.Time_test.TimeTest>(((new stdgo.time_test.Time_test.TimeTest(((0 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((1969 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((16 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1e+08 : GoInt)), ((3 : GoInt)), ((-28800 : GoInt)), ((("PST" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest)), ((new stdgo.time_test.Time_test.TimeTest(((1221681866 : GoInt64)), ((new stdgo.time_test.Time_test.T_parsedTime(((2008 : GoInt)), ((9 : GoInt)), ((17 : GoInt)), ((13 : GoInt)), ((4 : GoInt)), ((26 : GoInt)), ((3e+08 : GoInt)), ((3 : GoInt)), ((-25200 : GoInt)), ((("PDT" : GoString)))) : stdgo.time_test.Time_test.T_parsedTime))) : stdgo.time_test.Time_test.TimeTest))) : Slice<stdgo.time_test.Time_test.TimeTest>));
var _truncateRoundTests : Slice<stdgo.time_test.Time_test.T__struct_9> = ((new Slice<stdgo.time_test.Time_test.T__struct_9>(((new stdgo.time_test.Time_test.T__struct_9((date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((5e+08 : GoInt)), utc) == null ? null : date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((5e+08 : GoInt)), utc).__copy__()), ((3 : GoInt64))) : stdgo.time_test.Time_test.T__struct_9)), ((new stdgo.time_test.Time_test.T__struct_9((date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((31 : GoInt)), ((5e+08 : GoInt)), utc) == null ? null : date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((31 : GoInt)), ((5e+08 : GoInt)), utc).__copy__()), ((3 : GoInt64))) : stdgo.time_test.Time_test.T__struct_9)), ((new stdgo.time_test.Time_test.T__struct_9((date(((2012 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((5e+08 : GoInt)), utc) == null ? null : date(((2012 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((5e+08 : GoInt)), utc).__copy__()), ((1000000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_9)), ((new stdgo.time_test.Time_test.T__struct_9((date(((2012 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((31 : GoInt)), ((5e+08 : GoInt)), utc) == null ? null : date(((2012 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((31 : GoInt)), ((5e+08 : GoInt)), utc).__copy__()), ((1000000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_9)), ((new stdgo.time_test.Time_test.T__struct_9((unix((("-19012425939" : GoInt64)), ((649146258 : GoInt64))) == null ? null : unix((("-19012425939" : GoInt64)), ((649146258 : GoInt64))).__copy__()), (("7435029458905025217" : GoInt64))) : stdgo.time_test.Time_test.T__struct_9))) : Slice<stdgo.time_test.Time_test.T__struct_9>));
var _isoWeekTests : Slice<stdgo.time_test.Time_test.ISOWeekTest> = ((new Slice<stdgo.time_test.Time_test.ISOWeekTest>(
((new stdgo.time_test.Time_test.ISOWeekTest(((1981 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1981 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1982 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1981 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1983 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1982 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1984 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1983 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1985 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1985 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1986 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1986 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1987 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1987 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1988 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1987 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1989 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1988 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1990 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1990 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1991 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1991 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1992 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1992 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1993 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1992 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1994 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1993 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1995 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((1995 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1996 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1996 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1996 : GoInt)), ((1 : GoInt)), ((7 : GoInt)), ((1996 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1996 : GoInt)), ((1 : GoInt)), ((8 : GoInt)), ((1996 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1997 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1997 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1998 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1998 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1999 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1998 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1999 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2001 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2001 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2002 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2002 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2003 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2003 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2004 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2004 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2005 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2004 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2006 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2005 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2007 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2007 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2008 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2008 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2009 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2010 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2009 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2010 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2009 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2010 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((2010 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((3 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((4 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((6 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((7 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((8 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((9 : GoInt)), ((2011 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((10 : GoInt)), ((2011 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((1 : GoInt)), ((11 : GoInt)), ((2011 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((6 : GoInt)), ((12 : GoInt)), ((2011 : GoInt)), ((23 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((6 : GoInt)), ((13 : GoInt)), ((2011 : GoInt)), ((24 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((25 : GoInt)), ((2011 : GoInt)), ((51 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((26 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((27 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((28 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2011 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((1995 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1994 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2011 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((2012 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((1 : GoInt)), ((8 : GoInt)), ((2012 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((1 : GoInt)), ((9 : GoInt)), ((2012 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((12 : GoInt)), ((23 : GoInt)), ((2012 : GoInt)), ((51 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((12 : GoInt)), ((24 : GoInt)), ((2012 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((2012 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2012 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((2013 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2013 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((1 : GoInt)), ((6 : GoInt)), ((2013 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((1 : GoInt)), ((7 : GoInt)), ((2013 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((12 : GoInt)), ((22 : GoInt)), ((2013 : GoInt)), ((51 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((12 : GoInt)), ((23 : GoInt)), ((2013 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((12 : GoInt)), ((29 : GoInt)), ((2013 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2013 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((2014 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2014 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2014 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2014 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((2014 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2014 : GoInt)), ((1 : GoInt)), ((6 : GoInt)), ((2014 : GoInt)), ((2 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2015 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2015 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2016 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2015 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2017 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2016 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2018 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2018 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2019 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2019 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2020 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2020 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2021 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2020 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2022 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2021 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2023 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2022 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2024 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2024 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2025 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2025 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2026 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2026 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2027 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2026 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2028 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2027 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2029 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2029 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2030 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2030 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2031 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2031 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2032 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2032 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2033 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2032 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2034 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2033 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2035 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2035 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2036 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2036 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2037 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2037 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2038 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2037 : GoInt)), ((53 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2039 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2038 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest)),
((new stdgo.time_test.Time_test.ISOWeekTest(((2040 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2039 : GoInt)), ((52 : GoInt))) : stdgo.time_test.Time_test.ISOWeekTest))) : Slice<stdgo.time_test.Time_test.ISOWeekTest>));
var _yearDayTests : Slice<stdgo.time_test.Time_test.YearDayTest> = ((new Slice<stdgo.time_test.Time_test.YearDayTest>(
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((60 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((74 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((91 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2007 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((365 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((61 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((75 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((92 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((2008 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((366 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((60 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((74 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((91 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1900 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((365 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((60 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((74 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((91 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((365 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((60 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((74 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((91 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-1 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((365 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((1 : GoInt)), ((15 : GoInt)), ((15 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((32 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((2 : GoInt)), ((15 : GoInt)), ((46 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((61 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((3 : GoInt)), ((15 : GoInt)), ((75 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((92 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((-400 : GoInt)), ((12 : GoInt)), ((31 : GoInt)), ((366 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1582 : GoInt)), ((10 : GoInt)), ((4 : GoInt)), ((277 : GoInt))) : stdgo.time_test.Time_test.YearDayTest)),
((new stdgo.time_test.Time_test.YearDayTest(((1582 : GoInt)), ((10 : GoInt)), ((15 : GoInt)), ((288 : GoInt))) : stdgo.time_test.Time_test.YearDayTest))) : Slice<stdgo.time_test.Time_test.YearDayTest>));
var _yearDayLocations : Slice<Ref<Location>> = ((new Slice<Ref<Location>>(fixedZone(((("UTC-8" : GoString))), ((-28800 : GoInt))), fixedZone(((("UTC-4" : GoString))), ((-14400 : GoInt))), utc, fixedZone(((("UTC+4" : GoString))), ((14400 : GoInt))), fixedZone(((("UTC+8" : GoString))), ((28800 : GoInt)))) : Slice<Ref<Location>>));
var _durationTests : Slice<stdgo.time_test.Time_test.T__struct_10> = ((new Slice<stdgo.time_test.Time_test.T__struct_10>(
((new stdgo.time_test.Time_test.T__struct_10(((("0s" : GoString))), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("1ns" : GoString))), ((1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("1.1µs" : GoString))), ((1100 : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("2.2ms" : GoString))), ((2200000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("3.3s" : GoString))), (("3300000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("4m5s" : GoString))), (("245000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("4m5.001s" : GoString))), (("245001000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("5h6m7.001s" : GoString))), (("18367001000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("8m0.000000001s" : GoString))), (("480000000001" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("2562047h47m16.854775807s" : GoString))), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10)),
((new stdgo.time_test.Time_test.T__struct_10(((("-2562047h47m16.854775808s" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_10))) : Slice<stdgo.time_test.Time_test.T__struct_10>));
var _dateTests : Slice<stdgo.time_test.Time_test.T__struct_11> = ((new Slice<stdgo.time_test.Time_test.T__struct_11>(
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1320566400 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((59 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), local, ((1320569999 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((6 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1320573600 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((3 : GoInt)), ((13 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1300006800 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((3 : GoInt)), ((13 : GoInt)), ((1 : GoInt)), ((59 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), local, ((1300010399 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((3 : GoInt)), ((13 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1300010400 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((3 : GoInt)), ((13 : GoInt)), ((2 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1300008600 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2012 : GoInt)), ((12 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), local, ((1356336000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((19 : GoInt)), ((-17 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((17 : GoInt)), ((31 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((6 : GoInt)), ((116 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((10 : GoInt)), ((49 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((55 : GoInt)), ((95 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((34 : GoInt)), ((1e+09 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2011 : GoInt)), ((12 : GoInt)), ((-12 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2012 : GoInt)), ((1 : GoInt)), ((-43 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2012 : GoInt)), ((((-1 : GoInt)) : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11)),
((new stdgo.time_test.Time_test.T__struct_11(((2010 : GoInt)), ((((23 : GoInt)) : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), local, ((1321631795 : GoInt64))) : stdgo.time_test.Time_test.T__struct_11))) : Slice<stdgo.time_test.Time_test.T__struct_11>));
var _addDateTests : Slice<stdgo.time_test.Time_test.T__struct_12> = ((new Slice<stdgo.time_test.Time_test.T__struct_12>(((new stdgo.time_test.Time_test.T__struct_12(((4 : GoInt)), ((4 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.T__struct_12)), ((new stdgo.time_test.Time_test.T__struct_12(((3 : GoInt)), ((16 : GoInt)), ((1 : GoInt))) : stdgo.time_test.Time_test.T__struct_12)), ((new stdgo.time_test.Time_test.T__struct_12(((3 : GoInt)), ((15 : GoInt)), ((30 : GoInt))) : stdgo.time_test.Time_test.T__struct_12)), ((new stdgo.time_test.Time_test.T__struct_12(((5 : GoInt)), ((-6 : GoInt)), ((-60 : GoInt))) : stdgo.time_test.Time_test.T__struct_12))) : Slice<stdgo.time_test.Time_test.T__struct_12>));
var _daysInTests : Slice<stdgo.time_test.Time_test.T__struct_13> = ((new Slice<stdgo.time_test.Time_test.T__struct_13>(((new stdgo.time_test.Time_test.T__struct_13(((2011 : GoInt)), ((1 : GoInt)), ((31 : GoInt))) : stdgo.time_test.Time_test.T__struct_13)), ((new stdgo.time_test.Time_test.T__struct_13(((2011 : GoInt)), ((2 : GoInt)), ((28 : GoInt))) : stdgo.time_test.Time_test.T__struct_13)), ((new stdgo.time_test.Time_test.T__struct_13(((2012 : GoInt)), ((2 : GoInt)), ((29 : GoInt))) : stdgo.time_test.Time_test.T__struct_13)), ((new stdgo.time_test.Time_test.T__struct_13(((2011 : GoInt)), ((6 : GoInt)), ((30 : GoInt))) : stdgo.time_test.Time_test.T__struct_13)), ((new stdgo.time_test.Time_test.T__struct_13(((2011 : GoInt)), ((12 : GoInt)), ((31 : GoInt))) : stdgo.time_test.Time_test.T__struct_13))) : Slice<stdgo.time_test.Time_test.T__struct_13>));
var _gobTests : Slice<Time> = ((new Slice<Time>((date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), utc) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), utc).__copy__()), (date(((7 : GoInt)), ((8 : GoInt)), ((9 : GoInt)), ((10 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), fixedZone(((("" : GoString))), ((0 : GoInt)))) == null ? null : date(((7 : GoInt)), ((8 : GoInt)), ((9 : GoInt)), ((10 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), fixedZone(((("" : GoString))), ((0 : GoInt)))).__copy__()), (unix((("81985467080890095" : GoInt64)), ((1985229328 : GoInt64))) == null ? null : unix((("81985467080890095" : GoInt64)), ((1985229328 : GoInt64))).__copy__()), ((new Time() : Time)), (date(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), fixedZone(((("" : GoString))), ((1966020 : GoInt)))) == null ? null : date(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), fixedZone(((("" : GoString))), ((1966020 : GoInt)))).__copy__()), (date(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), fixedZone(((("" : GoString))), ((-1966080 : GoInt)))) == null ? null : date(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), fixedZone(((("" : GoString))), ((-1966080 : GoInt)))).__copy__())) : Slice<Time>));
var _invalidEncodingTests : Slice<stdgo.time_test.Time_test.T__struct_14> = ((new Slice<stdgo.time_test.Time_test.T__struct_14>(((new stdgo.time_test.Time_test.T__struct_14(((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((("Time.UnmarshalBinary: no data" : GoString)))) : stdgo.time_test.Time_test.T__struct_14)), ((new stdgo.time_test.Time_test.T__struct_14(((new Slice<GoUInt8>(((0 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8))) : Slice<GoUInt8>)), ((("Time.UnmarshalBinary: unsupported version" : GoString)))) : stdgo.time_test.Time_test.T__struct_14)), ((new stdgo.time_test.Time_test.T__struct_14(((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8))) : Slice<GoUInt8>)), ((("Time.UnmarshalBinary: invalid length" : GoString)))) : stdgo.time_test.Time_test.T__struct_14))) : Slice<stdgo.time_test.Time_test.T__struct_14>));
var _notEncodableTimes : Slice<stdgo.time_test.Time_test.T__struct_15> = ((new Slice<stdgo.time_test.Time_test.T__struct_15>(((new stdgo.time_test.Time_test.T__struct_15((date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((-60 : GoInt)))) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((-60 : GoInt)))).__copy__()), ((("Time.MarshalBinary: unexpected zone offset" : GoString)))) : stdgo.time_test.Time_test.T__struct_15)), ((new stdgo.time_test.Time_test.T__struct_15((date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((-1966140 : GoInt)))) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((-1966140 : GoInt)))).__copy__()), ((("Time.MarshalBinary: unexpected zone offset" : GoString)))) : stdgo.time_test.Time_test.T__struct_15)), ((new stdgo.time_test.Time_test.T__struct_15((date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((1966080 : GoInt)))) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), fixedZone(((("" : GoString))), ((1966080 : GoInt)))).__copy__()), ((("Time.MarshalBinary: unexpected zone offset" : GoString)))) : stdgo.time_test.Time_test.T__struct_15))) : Slice<stdgo.time_test.Time_test.T__struct_15>));
var _jsonTests : Slice<stdgo.time_test.Time_test.T__struct_16> = ((new Slice<stdgo.time_test.Time_test.T__struct_16>(((new stdgo.time_test.Time_test.T__struct_16((date(((9999 : GoInt)), ((4 : GoInt)), ((12 : GoInt)), ((23 : GoInt)), ((20 : GoInt)), ((50 : GoInt)), ((520000000 : GoInt)), utc) == null ? null : date(((9999 : GoInt)), ((4 : GoInt)), ((12 : GoInt)), ((23 : GoInt)), ((20 : GoInt)), ((50 : GoInt)), ((520000000 : GoInt)), utc).__copy__()), "\"9999-04-12T23:20:50.52Z\"") : stdgo.time_test.Time_test.T__struct_16)), ((new stdgo.time_test.Time_test.T__struct_16((date(((1996 : GoInt)), ((12 : GoInt)), ((19 : GoInt)), ((16 : GoInt)), ((39 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), local) == null ? null : date(((1996 : GoInt)), ((12 : GoInt)), ((19 : GoInt)), ((16 : GoInt)), ((39 : GoInt)), ((57 : GoInt)), ((0 : GoInt)), local).__copy__()), "\"1996-12-19T16:39:57-08:00\"") : stdgo.time_test.Time_test.T__struct_16)), ((new stdgo.time_test.Time_test.T__struct_16((date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), fixedZone(((("" : GoString))), ((60 : GoInt)))) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), fixedZone(((("" : GoString))), ((60 : GoInt)))).__copy__()), "\"0000-01-01T00:00:00.000000001+00:01\"") : stdgo.time_test.Time_test.T__struct_16))) : Slice<stdgo.time_test.Time_test.T__struct_16>));
var _notJSONEncodableTimes : Slice<stdgo.time_test.Time_test.T__struct_15> = ((new Slice<stdgo.time_test.Time_test.T__struct_15>(((new stdgo.time_test.Time_test.T__struct_15((date(((10000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((10000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((("Time.MarshalJSON: year outside of range [0,9999]" : GoString)))) : stdgo.time_test.Time_test.T__struct_15)), ((new stdgo.time_test.Time_test.T__struct_15((date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((-1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((("Time.MarshalJSON: year outside of range [0,9999]" : GoString)))) : stdgo.time_test.Time_test.T__struct_15))) : Slice<stdgo.time_test.Time_test.T__struct_15>));
var _parseDurationTests : Slice<stdgo.time_test.Time_test.T__struct_17> = ((new Slice<stdgo.time_test.Time_test.T__struct_17>(
((new stdgo.time_test.Time_test.T__struct_17(((("0" : GoString))), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("5s" : GoString))), (("5000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("30s" : GoString))), (("30000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1478s" : GoString))), (("1478000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-5s" : GoString))), (("-5000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("+5s" : GoString))), (("5000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-0" : GoString))), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("+0" : GoString))), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("5.0s" : GoString))), (("5000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("5.6s" : GoString))), (("5600000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("5.s" : GoString))), (("5000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17((((".5s" : GoString))), ((500000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1.0s" : GoString))), ((1000000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1.00s" : GoString))), ((1000000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1.004s" : GoString))), ((1004000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1.0040s" : GoString))), ((1004000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("100.00100s" : GoString))), (("100001000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("10ns" : GoString))), ((10 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("11us" : GoString))), ((11000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("12µs" : GoString))), ((12000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("12μs" : GoString))), ((12000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("13ms" : GoString))), ((13000000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("14s" : GoString))), (("14000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("15m" : GoString))), (("900000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("16h" : GoString))), (("57600000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("3h30m" : GoString))), (("12600000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("10.5s4m" : GoString))), (("250500000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-2m3.4s" : GoString))), (("-123400000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("1h2m3s4ms5us6ns" : GoString))), (("3723004005006" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("39h9m14.425s" : GoString))), (("140954425000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("52763797000ns" : GoString))), (("52763797000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("0.3333333333333333333h" : GoString))), (("1200000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("9007199254740993ns" : GoString))), (("9007199254740993" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("9223372036854775807ns" : GoString))), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("9223372036854775.807us" : GoString))), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("9223372036s854ms775us807ns" : GoString))), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-9223372036854775808ns" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-9223372036854775.808us" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-9223372036s854ms775us808ns" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-9223372036854775808ns" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("-2562047h47m16.854775808s" : GoString))), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("0.100000000000000000000h" : GoString))), (("360000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17)),
((new stdgo.time_test.Time_test.T__struct_17(((("0.830103483285477580700h" : GoString))), (("2988372539827" : GoInt64))) : stdgo.time_test.Time_test.T__struct_17))) : Slice<stdgo.time_test.Time_test.T__struct_17>));
var _parseDurationErrorTests : Slice<stdgo.time_test.Time_test.T__struct_18> = ((new Slice<stdgo.time_test.Time_test.T__struct_18>(
((new stdgo.time_test.Time_test.T__struct_18(((("" : GoString))), "\"\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("3" : GoString))), "\"3\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("-" : GoString))), "\"-\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("s" : GoString))), "\"s\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("." : GoString))), "\".\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("-." : GoString))), "\"-.\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18((((".s" : GoString))), "\".s\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("+.s" : GoString))), "\"+.s\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("1d" : GoString))), "\"1d\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18((((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString))), "\"\\x85\\x85\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("ff" : GoString))), "\"\\xffff\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("ff world" : GoString))), "\"hello \\xffff world\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("\uFFFD" : GoString))), "\"\\xef\\xbf\\xbd\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("\uFFFD hello \uFFFD world" : GoString))), "\"\\xef\\xbf\\xbd hello \\xef\\xbf\\xbd world\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("9223372036854775810ns" : GoString))), "\"9223372036854775810ns\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("9223372036854775808ns" : GoString))), "\"9223372036854775808ns\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("-9223372036854775809ns" : GoString))), "\"-9223372036854775809ns\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("9223372036854776us" : GoString))), "\"9223372036854776us\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("3000000h" : GoString))), "\"3000000h\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("9223372036854775.808us" : GoString))), "\"9223372036854775.808us\"") : stdgo.time_test.Time_test.T__struct_18)),
((new stdgo.time_test.Time_test.T__struct_18(((("9223372036854ms775us808ns" : GoString))), "\"9223372036854ms775us808ns\"") : stdgo.time_test.Time_test.T__struct_18))) : Slice<stdgo.time_test.Time_test.T__struct_18>));
var _mallocTest : Slice<stdgo.time_test.Time_test.T__struct_19> = ((new Slice<stdgo.time_test.Time_test.T__struct_19>(((new stdgo.time_test.Time_test.T__struct_19(((0 : GoInt)), "time.Now()", function():Void {
        _t = (now() == null ? null : now().__copy__());
    }) : stdgo.time_test.Time_test.T__struct_19)), ((new stdgo.time_test.Time_test.T__struct_19(((0 : GoInt)), "time.Now().UnixNano()", function():Void {
        _u = now().unixNano();
    }) : stdgo.time_test.Time_test.T__struct_19)), ((new stdgo.time_test.Time_test.T__struct_19(((0 : GoInt)), "time.Now().UnixMilli()", function():Void {
        _u = now().unixMilli();
    }) : stdgo.time_test.Time_test.T__struct_19)), ((new stdgo.time_test.Time_test.T__struct_19(((0 : GoInt)), "time.Now().UnixMicro()", function():Void {
        _u = now().unixMicro();
    }) : stdgo.time_test.Time_test.T__struct_19))) : Slice<stdgo.time_test.Time_test.T__struct_19>));
var _subTests : Slice<stdgo.time_test.Time_test.T__struct_20> = ((new Slice<stdgo.time_test.Time_test.T__struct_20>(
((new stdgo.time_test.Time_test.T__struct_20(((new Time() : Time)), ((new Time() : Time)), ((((0 : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt)), utc).__copy__()), (date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((((1 : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (("-86400000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (("86400000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((-2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((-2009 : GoInt)), ((11 : GoInt)), ((24 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((-2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((-2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (("86400000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20(((new Time() : Time)), (date(((2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (((("-9223372036854775808" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((new Time() : Time)), (((("9223372036854775807" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20(((new Time() : Time)), (date(((-2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((-2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (((("9223372036854775807" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((-2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((-2109 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), ((new Time() : Time)), (((("-9223372036854775808" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2290 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2290 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (("9151574400000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2300 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2300 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (((("9223372036854775807" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2290 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2290 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (("-9151574400000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (date(((2300 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2300 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), (((("-9223372036854775808" : GoInt64)) : Duration))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((date(((2311 : GoInt)), ((11 : GoInt)), ((26 : GoInt)), ((2 : GoInt)), ((16 : GoInt)), ((47 : GoInt)), ((63535996 : GoInt)), utc) == null ? null : date(((2311 : GoInt)), ((11 : GoInt)), ((26 : GoInt)), ((2 : GoInt)), ((16 : GoInt)), ((47 : GoInt)), ((63535996 : GoInt)), utc).__copy__()), (date(((2019 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((2 : GoInt)), ((29 : GoInt)), ((30 : GoInt)), ((268436582 : GoInt)), utc) == null ? null : date(((2019 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((2 : GoInt)), ((29 : GoInt)), ((30 : GoInt)), ((268436582 : GoInt)), utc).__copy__()), (("9223372036795099414" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((minMonoTime == null ? null : minMonoTime.__copy__()), (maxMonoTime == null ? null : maxMonoTime.__copy__()), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20)),
((new stdgo.time_test.Time_test.T__struct_20((maxMonoTime == null ? null : maxMonoTime.__copy__()), (minMonoTime == null ? null : minMonoTime.__copy__()), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_20))) : Slice<stdgo.time_test.Time_test.T__struct_20>));
var _nsDurationTests : Slice<stdgo.time_test.Time_test.T__struct_21> = ((new Slice<stdgo.time_test.Time_test.T__struct_21>(((new stdgo.time_test.Time_test.T__struct_21(((((-1000 : GoInt64)) : Duration)), ((-1000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21)), ((new stdgo.time_test.Time_test.T__struct_21(((((-1 : GoInt64)) : Duration)), ((-1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21)), ((new stdgo.time_test.Time_test.T__struct_21(((((1 : GoInt64)) : Duration)), ((1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21)), ((new stdgo.time_test.Time_test.T__struct_21(((((1000 : GoInt64)) : Duration)), ((1000 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21))) : Slice<stdgo.time_test.Time_test.T__struct_21>));
var _usDurationTests : Slice<stdgo.time_test.Time_test.T__struct_21> = ((new Slice<stdgo.time_test.Time_test.T__struct_21>(((new stdgo.time_test.Time_test.T__struct_21(((((-1000 : GoInt64)) : Duration)), ((-1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21)), ((new stdgo.time_test.Time_test.T__struct_21(((((1000 : GoInt64)) : Duration)), ((1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21))) : Slice<stdgo.time_test.Time_test.T__struct_21>));
var _msDurationTests : Slice<stdgo.time_test.Time_test.T__struct_21> = ((new Slice<stdgo.time_test.Time_test.T__struct_21>(((new stdgo.time_test.Time_test.T__struct_21(((((-1000000 : GoInt64)) : Duration)), ((-1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21)), ((new stdgo.time_test.Time_test.T__struct_21(((((1000000 : GoInt64)) : Duration)), ((1 : GoInt64))) : stdgo.time_test.Time_test.T__struct_21))) : Slice<stdgo.time_test.Time_test.T__struct_21>));
var _secDurationTests : Slice<stdgo.time_test.Time_test.T__struct_22> = ((new Slice<stdgo.time_test.Time_test.T__struct_22>(((new stdgo.time_test.Time_test.T__struct_22(((((300000000 : GoInt64)) : Duration)), ((0.3 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22))) : Slice<stdgo.time_test.Time_test.T__struct_22>));
var _minDurationTests : Slice<stdgo.time_test.Time_test.T__struct_22> = ((new Slice<stdgo.time_test.Time_test.T__struct_22>(((new stdgo.time_test.Time_test.T__struct_22((((("-60000000000" : GoInt64)) : Duration)), ((-1 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((-1 : GoInt64)) : Duration)), ((-1.6666666666666667e-11 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((1 : GoInt64)) : Duration)), ((1.6666666666666667e-11 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22((((("60000000000" : GoInt64)) : Duration)), ((1 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((3000 : GoInt64)) : Duration)), ((5e-08 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22))) : Slice<stdgo.time_test.Time_test.T__struct_22>));
var _hourDurationTests : Slice<stdgo.time_test.Time_test.T__struct_22> = ((new Slice<stdgo.time_test.Time_test.T__struct_22>(((new stdgo.time_test.Time_test.T__struct_22((((("-3600000000000" : GoInt64)) : Duration)), ((-1 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((-1 : GoInt64)) : Duration)), ((-2.777777777777778e-13 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((1 : GoInt64)) : Duration)), ((2.777777777777778e-13 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22((((("3600000000000" : GoInt64)) : Duration)), ((1 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22)), ((new stdgo.time_test.Time_test.T__struct_22(((((36 : GoInt64)) : Duration)), ((1e-11 : GoFloat64))) : stdgo.time_test.Time_test.T__struct_22))) : Slice<stdgo.time_test.Time_test.T__struct_22>));
var _durationTruncateTests : Slice<stdgo.time_test.Time_test.T__struct_23> = ((new Slice<stdgo.time_test.Time_test.T__struct_23>(
((new stdgo.time_test.Time_test.T__struct_23(((0 : GoInt64)), ((1000000000 : GoInt64)), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), (("-7000000000" : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), ((0 : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), ((1 : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("70000000000" : GoInt64)), (("10000000000" : GoInt64)), (("70000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("130000000000" : GoInt64)), (("60000000000" : GoInt64)), (("120000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("610000000000" : GoInt64)), (("180000000000" : GoInt64)), (("540000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("70000000000" : GoInt64)), (("70000000001" : GoInt64)), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("70000000000" : GoInt64)), (("3600000000000" : GoInt64)), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-60000000000" : GoInt64)), ((1000000000 : GoInt64)), (("-60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-600000000000" : GoInt64)), (("180000000000" : GoInt64)), (("-540000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-600000000000" : GoInt64)), (("3600000000000" : GoInt64)), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23))) : Slice<stdgo.time_test.Time_test.T__struct_23>));
var _durationRoundTests : Slice<stdgo.time_test.Time_test.T__struct_23> = ((new Slice<stdgo.time_test.Time_test.T__struct_23>(
((new stdgo.time_test.Time_test.T__struct_23(((0 : GoInt64)), ((1000000000 : GoInt64)), ((0 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), (("-11000000000" : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), ((0 : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("60000000000" : GoInt64)), ((1 : GoInt64)), (("60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("120000000000" : GoInt64)), (("60000000000" : GoInt64)), (("120000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("130000000000" : GoInt64)), (("60000000000" : GoInt64)), (("120000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("150000000000" : GoInt64)), (("60000000000" : GoInt64)), (("180000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("170000000000" : GoInt64)), (("60000000000" : GoInt64)), (("180000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-60000000000" : GoInt64)), ((1 : GoInt64)), (("-60000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-120000000000" : GoInt64)), (("60000000000" : GoInt64)), (("-120000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-130000000000" : GoInt64)), (("60000000000" : GoInt64)), (("-120000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-150000000000" : GoInt64)), (("60000000000" : GoInt64)), (("-180000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-170000000000" : GoInt64)), (("60000000000" : GoInt64)), (("-180000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23(((8e+18 : GoInt64)), ((3e+18 : GoInt64)), ((9e+18 : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23(((9e+18 : GoInt64)), ((5e+18 : GoInt64)), (("9223372036854775807" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-8000000000000000000" : GoInt64)), ((3e+18 : GoInt64)), (("-9000000000000000000" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("-9000000000000000000" : GoInt64)), ((5e+18 : GoInt64)), (("-9223372036854775808" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23)),
((new stdgo.time_test.Time_test.T__struct_23((("6917529027641081855" : GoInt64)), (("6917529027641081856" : GoInt64)), (("6917529027641081856" : GoInt64))) : stdgo.time_test.Time_test.T__struct_23))) : Slice<stdgo.time_test.Time_test.T__struct_23>));
var _defaultLocTests : Slice<stdgo.time_test.Time_test.T__struct_24> = ((new Slice<stdgo.time_test.Time_test.T__struct_24>(
((new stdgo.time_test.Time_test.T__struct_24(((("After" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.after((_t2 == null ? null : _t2.__copy__())) == _t2.after((_t1 == null ? null : _t1.__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Before" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.before((_t2 == null ? null : _t2.__copy__())) == _t2.before((_t1 == null ? null : _t1.__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Equal" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.equal((_t2 == null ? null : _t2.__copy__())) == _t2.equal((_t1 == null ? null : _t1.__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("IsZero" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.isZero() == _t2.isZero();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Date" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.date(), _a1:GoInt = __tmp__._0, _b1:Month = __tmp__._1, _c1:GoInt = __tmp__._2;
        var __tmp__ = _t2.date(), _a2:GoInt = __tmp__._0, _b2:Month = __tmp__._1, _c2:GoInt = __tmp__._2;
        return ((_a1 == _a2) && (_b1 == _b2)) && (_c1 == _c2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Year" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.year() == _t2.year();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Month" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.month() == _t2.month();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Day" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.day() == _t2.day();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Weekday" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.weekday() == _t2.weekday();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("ISOWeek" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.isoweek(), _a1:GoInt = __tmp__._0, _b1:GoInt = __tmp__._1;
        var __tmp__ = _t2.isoweek(), _a2:GoInt = __tmp__._0, _b2:GoInt = __tmp__._1;
        return (_a1 == _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Clock" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.clock(), _a1:GoInt = __tmp__._0, _b1:GoInt = __tmp__._1, _c1:GoInt = __tmp__._2;
        var __tmp__ = _t2.clock(), _a2:GoInt = __tmp__._0, _b2:GoInt = __tmp__._1, _c2:GoInt = __tmp__._2;
        return ((_a1 == _a2) && (_b1 == _b2)) && (_c1 == _c2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Hour" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.hour() == _t2.hour();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Minute" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.minute() == _t2.minute();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Second" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.second() == _t2.second();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Nanosecond" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.hour() == _t2.hour();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("YearDay" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.yearDay() == _t2.yearDay();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Add" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.add((("3600000000000" : GoInt64))).equal((_t2.add((("3600000000000" : GoInt64))) == null ? null : _t2.add((("3600000000000" : GoInt64))).__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Sub" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.sub((_t2 == null ? null : _t2.__copy__())) == _t2.sub((_t1 == null ? null : _t1.__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("AddDate" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.addDate(((1991 : GoInt)), ((9 : GoInt)), ((3 : GoInt))) == _t2.addDate(((1991 : GoInt)), ((9 : GoInt)), ((3 : GoInt)));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("UTC" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.utc() == _t2.utc();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Local" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.local() == _t2.local();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("In" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.in_(utc) == _t2.in_(utc);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Local" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.local() == _t2.local();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Zone" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.zone(), _a1:GoString = __tmp__._0, _b1:GoInt = __tmp__._1;
        var __tmp__ = _t2.zone(), _a2:GoString = __tmp__._0, _b2:GoInt = __tmp__._1;
        return (_a1 == _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Unix" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.unix() == _t2.unix();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("UnixNano" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.unixNano() == _t2.unixNano();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("UnixMilli" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.unixMilli() == _t2.unixMilli();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("UnixMicro" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.unixMicro() == _t2.unixMicro();
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("MarshalBinary" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalBinary(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalBinary(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("GobEncode" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.gobEncode(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.gobEncode(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("MarshalJSON" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalJSON(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalJSON(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("MarshalText" : GoString))), function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalText(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalText(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Truncate" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.truncate((("3600000000000" : GoInt64))).equal((_t2.truncate((("3600000000000" : GoInt64))) == null ? null : _t2.truncate((("3600000000000" : GoInt64))).__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("Round" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return _t1.round((("3600000000000" : GoInt64))).equal((_t2.round((("3600000000000" : GoInt64))) == null ? null : _t2.round((("3600000000000" : GoInt64))).__copy__()));
    }) : stdgo.time_test.Time_test.T__struct_24)),
((new stdgo.time_test.Time_test.T__struct_24(((("== Time{}" : GoString))), function(_t1:Time, _t2:Time):Bool {
        return (_t1 == ((new Time() : Time))) == (_t2 == ((new Time() : Time)));
    }) : stdgo.time_test.Time_test.T__struct_24))) : Slice<stdgo.time_test.Time_test.T__struct_24>));
var _zones : Slice<GoString> = ((new Slice<GoString>(((("Asia/Jerusalem" : GoString))), ((("America/Los_Angeles" : GoString)))) : Slice<GoString>));
var _slimTests : Slice<stdgo.time_test.Time_test.T__struct_28> = ((new Slice<stdgo.time_test.Time_test.T__struct_28>(((({ _zoneName : ((("Europe/Berlin" : GoString))), _fileName : ((("2020b_Europe_Berlin" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("CET" : GoString))), _wantOffset : ((3600 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)) == null ? null : (({ _zoneName : ((("Europe/Berlin" : GoString))), _fileName : ((("2020b_Europe_Berlin" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("CET" : GoString))), _wantOffset : ((3600 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)).__copy__()), ((({ _zoneName : ((("America/Nuuk" : GoString))), _fileName : ((("2021a_America_Nuuk" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("-03" : GoString))), _wantOffset : ((-10800 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)) == null ? null : (({ _zoneName : ((("America/Nuuk" : GoString))), _fileName : ((("2021a_America_Nuuk" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("-03" : GoString))), _wantOffset : ((-10800 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)).__copy__()), ((({ _zoneName : ((("Asia/Gaza" : GoString))), _fileName : ((("2021a_Asia_Gaza" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("EET" : GoString))), _wantOffset : ((7200 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)) == null ? null : (({ _zoneName : ((("Asia/Gaza" : GoString))), _fileName : ((("2021a_Asia_Gaza" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2020 : GoInt)), ((10 : GoInt)), ((29 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("EET" : GoString))), _wantOffset : ((7200 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)).__copy__()), ((({ _zoneName : ((("Europe/Dublin" : GoString))), _fileName : ((("2021a_Europe_Dublin" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("IST" : GoString))), _wantOffset : ((3600 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)) == null ? null : (({ _zoneName : ((("Europe/Dublin" : GoString))), _fileName : ((("2021a_Europe_Dublin" : GoString))), _date : function(_loc:Location):Time {
        return (stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2021 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((11 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((0 : GoInt)), _loc).__copy__());
    }, _wantName : ((("IST" : GoString))), _wantOffset : ((3600 : GoInt)) } : stdgo.time_test.Time_test.T__struct_28)).__copy__())) : Slice<stdgo.time_test.Time_test.T__struct_28>));
var _c : Chan<GoInt> = ((null : Chan<GoInt>));
var _t : Time = new Time();
var _u : GoInt64 = ((0 : GoInt64));
@:structInit class TimeFormatTest {
    public var _time : Time = new Time();
    public var _formattedValue : GoString = (("" : GoString));
    public function new(?_time:Time, ?_formattedValue:GoString) {
        if (_time != null) this._time = _time;
        if (_formattedValue != null) this._formattedValue = _formattedValue;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TimeFormatTest(_time, _formattedValue);
    }
}
@:structInit class FormatTest {
    public var _name : GoString = (("" : GoString));
    public var _format : GoString = (("" : GoString));
    public var _result : GoString = (("" : GoString));
    public function new(?_name:GoString, ?_format:GoString, ?_result:GoString) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FormatTest(_name, _format, _result);
    }
}
@:structInit class ParseTest {
    public var _name : GoString = (("" : GoString));
    public var _format : GoString = (("" : GoString));
    public var _value : GoString = (("" : GoString));
    public var _hasTZ : Bool = false;
    public var _hasWD : Bool = false;
    public var _yearSign : GoInt = ((0 : GoInt));
    public var _fracDigits : GoInt = ((0 : GoInt));
    public function new(?_name:GoString, ?_format:GoString, ?_value:GoString, ?_hasTZ:Bool, ?_hasWD:Bool, ?_yearSign:GoInt, ?_fracDigits:GoInt) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_hasTZ != null) this._hasTZ = _hasTZ;
        if (_hasWD != null) this._hasWD = _hasWD;
        if (_yearSign != null) this._yearSign = _yearSign;
        if (_fracDigits != null) this._fracDigits = _fracDigits;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseTest(_name, _format, _value, _hasTZ, _hasWD, _yearSign, _fracDigits);
    }
}
@:structInit class ParseTimeZoneTest {
    public var _value : GoString = (("" : GoString));
    public var _length : GoInt = ((0 : GoInt));
    public var _ok : Bool = false;
    public function new(?_value:GoString, ?_length:GoInt, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseTimeZoneTest(_value, _length, _ok);
    }
}
@:structInit class ParseErrorTest {
    public var _format : GoString = (("" : GoString));
    public var _value : GoString = (("" : GoString));
    public var _expect : GoString = (("" : GoString));
    public function new(?_format:GoString, ?_value:GoString, ?_expect:GoString) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseErrorTest(_format, _value, _expect);
    }
}
@:structInit class SecondsTimeZoneOffsetTest {
    public var _format : GoString = (("" : GoString));
    public var _value : GoString = (("" : GoString));
    public var _expectedoffset : GoInt = ((0 : GoInt));
    public function new(?_format:GoString, ?_value:GoString, ?_expectedoffset:GoInt) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expectedoffset != null) this._expectedoffset = _expectedoffset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SecondsTimeZoneOffsetTest(_format, _value, _expectedoffset);
    }
}
@:structInit class T_afterResult {
    public var _slot : GoInt = ((0 : GoInt));
    public var _t : Time = new Time();
    public function new(?_slot:GoInt, ?_t:Time) {
        if (_slot != null) this._slot = _slot;
        if (_t != null) this._t = _t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_afterResult(_slot, _t);
    }
}
@:structInit class T_parsedTime {
    public var year : GoInt = ((0 : GoInt));
    public var month : Month = new Month();
    public var day : GoInt = ((0 : GoInt));
    public var hour : GoInt = ((0 : GoInt));
    public var minute : GoInt = ((0 : GoInt));
    public var second : GoInt = ((0 : GoInt));
    public var nanosecond : GoInt = ((0 : GoInt));
    public var weekday : Weekday = new Weekday();
    public var zoneOffset : GoInt = ((0 : GoInt));
    public var zone : GoString = (("" : GoString));
    public function new(?year:GoInt, ?month:Month, ?day:GoInt, ?hour:GoInt, ?minute:GoInt, ?second:GoInt, ?nanosecond:GoInt, ?weekday:Weekday, ?zoneOffset:GoInt, ?zone:GoString) {
        if (year != null) this.year = year;
        if (month != null) this.month = month;
        if (day != null) this.day = day;
        if (hour != null) this.hour = hour;
        if (minute != null) this.minute = minute;
        if (second != null) this.second = second;
        if (nanosecond != null) this.nanosecond = nanosecond;
        if (weekday != null) this.weekday = weekday;
        if (zoneOffset != null) this.zoneOffset = zoneOffset;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_parsedTime(year, month, day, hour, minute, second, nanosecond, weekday, zoneOffset, zone);
    }
}
@:structInit class TimeTest {
    public var _seconds : GoInt64 = ((0 : GoInt64));
    public var _golden : stdgo.time_test.Time_test.T_parsedTime = new stdgo.time_test.Time_test.T_parsedTime();
    public function new(?_seconds:GoInt64, ?_golden:stdgo.time_test.Time_test.T_parsedTime) {
        if (_seconds != null) this._seconds = _seconds;
        if (_golden != null) this._golden = _golden;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TimeTest(_seconds, _golden);
    }
}
@:structInit class ISOWeekTest {
    public var _year : GoInt = ((0 : GoInt));
    public var _month : GoInt = ((0 : GoInt));
    public var _day : GoInt = ((0 : GoInt));
    public var _yex : GoInt = ((0 : GoInt));
    public var _wex : GoInt = ((0 : GoInt));
    public function new(?_year:GoInt, ?_month:GoInt, ?_day:GoInt, ?_yex:GoInt, ?_wex:GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yex != null) this._yex = _yex;
        if (_wex != null) this._wex = _wex;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ISOWeekTest(_year, _month, _day, _yex, _wex);
    }
}
@:structInit class YearDayTest {
    public var _year : GoInt = ((0 : GoInt));
    public var _month : GoInt = ((0 : GoInt));
    public var _day : GoInt = ((0 : GoInt));
    public var _yday : GoInt = ((0 : GoInt));
    public function new(?_year:GoInt, ?_month:GoInt, ?_day:GoInt, ?_yday:GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yday != null) this._yday = _yday;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new YearDayTest(_year, _month, _day, _yday);
    }
}
@:structInit @:local class T__struct_0 {
    public var _in : Time = new Time();
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + "}";
    public function new(?_in:Time, ?_want:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_in, _want);
    }
}
@:structInit @:local class T__struct_1 {
    public var _date : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_date) + " " + Go.string(_ok) + "}";
    public function new(?_date:GoString, ?_ok:Bool, ?toString) {
        if (_date != null) this._date = _date;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_date, _ok);
    }
}
@:structInit @:local class T__struct_2 {
    public var _format : GoString = (("" : GoString));
    public var _value : GoString = (("" : GoString));
    public var _valueElemPrefix : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_format) + " " + Go.string(_value) + " " + Go.string(_valueElemPrefix) + "}";
    public function new(?_format:GoString, ?_value:GoString, ?_valueElemPrefix:GoString, ?toString) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_valueElemPrefix != null) this._valueElemPrefix = _valueElemPrefix;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_format, _value, _valueElemPrefix);
    }
}
@:structInit @:local class T__struct_3 {
    public var _value : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_value) + " " + Go.string(_ok) + "}";
    public function new(?_value:GoString, ?_ok:Bool, ?toString) {
        if (_value != null) this._value = _value;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_value, _ok);
    }
}
@:structInit @:local class T__struct_4 {
    public var _s : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_want) + "}";
    public function new(?_s:GoString, ?_want:GoString, ?toString) {
        if (_s != null) this._s = _s;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_s, _want);
    }
}
@:structInit @:local class T__struct_5 {
    public var _s : GoString = (("" : GoString));
    public var _want : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_want) + "}";
    public function new(?_s:GoString, ?_want:GoInt, ?toString) {
        if (_s != null) this._s = _s;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_s, _want);
    }
}
@:structInit @:local class T__struct_6 {
    public var _mono : GoInt64 = ((0 : GoInt64));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_mono) + " " + Go.string(_want) + "}";
    public function new(?_mono:GoInt64, ?_want:GoString, ?toString) {
        if (_mono != null) this._mono = _mono;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_mono, _want);
    }
}
@:structInit @:local class T__struct_7 {
    public var _sum : GoFloat64 = ((0 : GoFloat64));
    public var _max : Duration = new Duration();
    public var _count : GoInt64 = ((0 : GoInt64));
    public var _0 : GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0 ... 5) ((0 : GoInt64))]);
    public function toString():String return "{" + Go.string(_sum) + " " + Go.string(_max) + " " + Go.string(_count) + " " + Go.string(_0) + "}";
    public function new(?_sum:GoFloat64, ?_max:Duration, ?_count:GoInt64, ?_0:GoArray<GoInt64>, ?toString) {
        if (_sum != null) this._sum = _sum;
        if (_max != null) this._max = _max;
        if (_count != null) this._count = _count;
        if (_0 != null) this._0 = _0;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_sum, _max, _count, _0);
    }
}
@:structInit @:local class T__struct_8 {
    public var _count : GoInt = ((0 : GoInt));
    public var _delta : Duration = new Duration();
    public function toString():String return "{" + Go.string(_count) + " " + Go.string(_delta) + "}";
    public function new(?_count:GoInt, ?_delta:Duration, ?toString) {
        if (_count != null) this._count = _count;
        if (_delta != null) this._delta = _delta;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_count, _delta);
    }
}
@:structInit @:local class T__struct_9 {
    public var _t : Time = new Time();
    public var _d : Duration = new Duration();
    public function toString():String return "{" + Go.string(_t) + " " + Go.string(_d) + "}";
    public function new(?_t:Time, ?_d:Duration, ?toString) {
        if (_t != null) this._t = _t;
        if (_d != null) this._d = _d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_9(_t, _d);
    }
}
@:structInit @:local class T__struct_10 {
    public var _str : GoString = (("" : GoString));
    public var _d : Duration = new Duration();
    public function toString():String return "{" + Go.string(_str) + " " + Go.string(_d) + "}";
    public function new(?_str:GoString, ?_d:Duration, ?toString) {
        if (_str != null) this._str = _str;
        if (_d != null) this._d = _d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_10(_str, _d);
    }
}
@:structInit @:local class T__struct_11 {
    public var _year : GoInt = ((0 : GoInt));
    public var _month : GoInt = ((0 : GoInt));
    public var _day : GoInt = ((0 : GoInt));
    public var _hour : GoInt = ((0 : GoInt));
    public var _min : GoInt = ((0 : GoInt));
    public var _sec : GoInt = ((0 : GoInt));
    public var _nsec : GoInt = ((0 : GoInt));
    public var _z : Ref<Location> = ((null : Ref<Location>));
    public var _unix : GoInt64 = ((0 : GoInt64));
    public function toString():String return "{" + Go.string(_year) + " " + Go.string(_month) + " " + Go.string(_day) + " " + Go.string(_hour) + " " + Go.string(_min) + " " + Go.string(_sec) + " " + Go.string(_nsec) + " " + Go.string(_z) + " " + Go.string(_unix) + "}";
    public function new(?_year:GoInt, ?_month:GoInt, ?_day:GoInt, ?_hour:GoInt, ?_min:GoInt, ?_sec:GoInt, ?_nsec:GoInt, ?_z:Ref<Location>, ?_unix:GoInt64, ?toString) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_hour != null) this._hour = _hour;
        if (_min != null) this._min = _min;
        if (_sec != null) this._sec = _sec;
        if (_nsec != null) this._nsec = _nsec;
        if (_z != null) this._z = _z;
        if (_unix != null) this._unix = _unix;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_11(_year, _month, _day, _hour, _min, _sec, _nsec, _z, _unix);
    }
}
@:structInit @:local class T__struct_12 {
    public var _years : GoInt = ((0 : GoInt));
    public var _months : GoInt = ((0 : GoInt));
    public var _days : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_years) + " " + Go.string(_months) + " " + Go.string(_days) + "}";
    public function new(?_years:GoInt, ?_months:GoInt, ?_days:GoInt, ?toString) {
        if (_years != null) this._years = _years;
        if (_months != null) this._months = _months;
        if (_days != null) this._days = _days;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_12(_years, _months, _days);
    }
}
@:structInit @:local class T__struct_13 {
    public var _year : GoInt = ((0 : GoInt));
    public var _month : GoInt = ((0 : GoInt));
    public var _di : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_year) + " " + Go.string(_month) + " " + Go.string(_di) + "}";
    public function new(?_year:GoInt, ?_month:GoInt, ?_di:GoInt, ?toString) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_di != null) this._di = _di;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_13(_year, _month, _di);
    }
}
@:structInit @:local class T__struct_14 {
    public var _bytes : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_bytes) + " " + Go.string(_want) + "}";
    public function new(?_bytes:Slice<GoUInt8>, ?_want:GoString, ?toString) {
        if (_bytes != null) this._bytes = _bytes;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_14(_bytes, _want);
    }
}
@:structInit @:local class T__struct_15 {
    public var _time : Time = new Time();
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_time) + " " + Go.string(_want) + "}";
    public function new(?_time:Time, ?_want:GoString, ?toString) {
        if (_time != null) this._time = _time;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_15(_time, _want);
    }
}
@:structInit @:local class T__struct_16 {
    public var _time : Time = new Time();
    public var _json : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_time) + " " + Go.string(_json) + "}";
    public function new(?_time:Time, ?_json:GoString, ?toString) {
        if (_time != null) this._time = _time;
        if (_json != null) this._json = _json;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_16(_time, _json);
    }
}
@:structInit @:local class T__struct_17 {
    public var _in : GoString = (("" : GoString));
    public var _want : Duration = new Duration();
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + "}";
    public function new(?_in:GoString, ?_want:Duration, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_17(_in, _want);
    }
}
@:structInit @:local class T__struct_18 {
    public var _in : GoString = (("" : GoString));
    public var _expect : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_expect) + "}";
    public function new(?_in:GoString, ?_expect:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_18(_in, _expect);
    }
}
@:structInit @:local class T__struct_19 {
    public var _count : GoInt = ((0 : GoInt));
    public var _desc : GoString = (("" : GoString));
    public var _fn : () -> Void = null;
    public function toString():String return "{" + Go.string(_count) + " " + Go.string(_desc) + " " + Go.string(_fn) + "}";
    public function new(?_count:GoInt, ?_desc:GoString, ?_fn:() -> Void, ?toString) {
        if (_count != null) this._count = _count;
        if (_desc != null) this._desc = _desc;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_19(_count, _desc, _fn);
    }
}
@:structInit @:local class T__struct_20 {
    public var _t : Time = new Time();
    public var _u : Time = new Time();
    public var _d : Duration = new Duration();
    public function toString():String return "{" + Go.string(_t) + " " + Go.string(_u) + " " + Go.string(_d) + "}";
    public function new(?_t:Time, ?_u:Time, ?_d:Duration, ?toString) {
        if (_t != null) this._t = _t;
        if (_u != null) this._u = _u;
        if (_d != null) this._d = _d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_20(_t, _u, _d);
    }
}
@:structInit @:local class T__struct_21 {
    public var _d : Duration = new Duration();
    public var _want : GoInt64 = ((0 : GoInt64));
    public function toString():String return "{" + Go.string(_d) + " " + Go.string(_want) + "}";
    public function new(?_d:Duration, ?_want:GoInt64, ?toString) {
        if (_d != null) this._d = _d;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_21(_d, _want);
    }
}
@:structInit @:local class T__struct_22 {
    public var _d : Duration = new Duration();
    public var _want : GoFloat64 = ((0 : GoFloat64));
    public function toString():String return "{" + Go.string(_d) + " " + Go.string(_want) + "}";
    public function new(?_d:Duration, ?_want:GoFloat64, ?toString) {
        if (_d != null) this._d = _d;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_22(_d, _want);
    }
}
@:structInit @:local class T__struct_23 {
    public var _d : Duration = new Duration();
    public var _m : Duration = new Duration();
    public var _want : Duration = new Duration();
    public function toString():String return "{" + Go.string(_d) + " " + Go.string(_m) + " " + Go.string(_want) + "}";
    public function new(?_d:Duration, ?_m:Duration, ?_want:Duration, ?toString) {
        if (_d != null) this._d = _d;
        if (_m != null) this._m = _m;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_23(_d, _m, _want);
    }
}
@:structInit @:local class T__struct_24 {
    public var _name : GoString = (("" : GoString));
    public var _f : (Time, Time) -> Bool = null;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_f) + "}";
    public function new(?_name:GoString, ?_f:(Time, Time) -> Bool, ?toString) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_24(_name, _f);
    }
}
@:structInit @:local class T__struct_25 {
    public var _time : Time = new Time();
    public var _want : Bool = false;
    public function toString():String return "{" + Go.string(_time) + " " + Go.string(_want) + "}";
    public function new(?_time:Time, ?_want:Bool, ?toString) {
        if (_time != null) this._time = _time;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_25(_time, _want);
    }
}
@:structInit @:local class T__struct_26 {
    public var _give : Time = new Time();
    public var _want : Time = new Time();
    public function toString():String return "{" + Go.string(_give) + " " + Go.string(_want) + "}";
    public function new(?_give:Time, ?_want:Time, ?toString) {
        if (_give != null) this._give = _give;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_26(_give, _want);
    }
}
@:structInit @:local class T__struct_27 {
    public var _zone : GoString = (("" : GoString));
    public var _unix : GoInt64 = ((0 : GoInt64));
    public var _want1 : GoString = (("" : GoString));
    public var _want2 : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_zone) + " " + Go.string(_unix) + " " + Go.string(_want1) + " " + Go.string(_want2) + "}";
    public function new(?_zone:GoString, ?_unix:GoInt64, ?_want1:GoString, ?_want2:GoString, ?toString) {
        if (_zone != null) this._zone = _zone;
        if (_unix != null) this._unix = _unix;
        if (_want1 != null) this._want1 = _want1;
        if (_want2 != null) this._want2 = _want2;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_27(_zone, _unix, _want1, _want2);
    }
}
@:structInit @:local class T__struct_28 {
    public var _zoneName : GoString = (("" : GoString));
    public var _fileName : GoString = (("" : GoString));
    public var _date : Ref<Location> -> Time = null;
    public var _wantName : GoString = (("" : GoString));
    public var _wantOffset : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_zoneName) + " " + Go.string(_fileName) + " " + Go.string(_date) + " " + Go.string(_wantName) + " " + Go.string(_wantOffset) + "}";
    public function new(?_zoneName:GoString, ?_fileName:GoString, ?_date:Ref<Location> -> Time, ?_wantName:GoString, ?_wantOffset:GoInt, ?toString) {
        if (_zoneName != null) this._zoneName = _zoneName;
        if (_fileName != null) this._fileName = _fileName;
        if (_date != null) this._date = _date;
        if (_wantName != null) this._wantName = _wantName;
        if (_wantOffset != null) this._wantOffset = _wantOffset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_28(_zoneName, _fileName, _date, _wantName, _wantOffset);
    }
}
@:structInit @:local class T__struct_29 {
    public var _inStr : GoString = (("" : GoString));
    public var _inEnd : GoInt64 = ((0 : GoInt64));
    public var _inSec : GoInt64 = ((0 : GoInt64));
    public var _name : GoString = (("" : GoString));
    public var _off : GoInt = ((0 : GoInt));
    public var _start : GoInt64 = ((0 : GoInt64));
    public var _end : GoInt64 = ((0 : GoInt64));
    public var _isDST : Bool = false;
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_inStr) + " " + Go.string(_inEnd) + " " + Go.string(_inSec) + " " + Go.string(_name) + " " + Go.string(_off) + " " + Go.string(_start) + " " + Go.string(_end) + " " + Go.string(_isDST) + " " + Go.string(_ok) + "}";
    public function new(?_inStr:GoString, ?_inEnd:GoInt64, ?_inSec:GoInt64, ?_name:GoString, ?_off:GoInt, ?_start:GoInt64, ?_end:GoInt64, ?_isDST:Bool, ?_ok:Bool, ?toString) {
        if (_inStr != null) this._inStr = _inStr;
        if (_inEnd != null) this._inEnd = _inEnd;
        if (_inSec != null) this._inSec = _inSec;
        if (_name != null) this._name = _name;
        if (_off != null) this._off = _off;
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_isDST != null) this._isDST = _isDST;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_29(_inStr, _inEnd, _inSec, _name, _off, _start, _end, _isDST, _ok);
    }
}
@:structInit @:local class T__struct_30 {
    public var _in : GoString = (("" : GoString));
    public var _name : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_name) + " " + Go.string(_out) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_name:GoString, ?_out:GoString, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_name != null) this._name = _name;
        if (_out != null) this._out = _out;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_30(_in, _name, _out, _ok);
    }
}
@:structInit @:local class T__struct_31 {
    public var _in : GoString = (("" : GoString));
    public var _off : GoInt = ((0 : GoInt));
    public var _out : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_off) + " " + Go.string(_out) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_off:GoInt, ?_out:GoString, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_off != null) this._off = _off;
        if (_out != null) this._out = _out;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_31(_in, _off, _out, _ok);
    }
}
@:structInit @:local class T__struct_32 {
    public var _in : GoString = (("" : GoString));
    public var _r : Rule = new Rule();
    public var _out : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_r) + " " + Go.string(_out) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_r:Rule, ?_out:GoString, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_r != null) this._r = _r;
        if (_out != null) this._out = _out;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_32(_in, _r, _out, _ok);
    }
}
function _expensiveCall():Void {}
function exampleDuration():Void {
        var _t0:Time = (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__());
        _expensiveCall();
        var _t1:Time = (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__());
        stdgo.fmt.Fmt.printf(((("The call took %v to run.\n" : GoString))), Go.toInterface(_t1.sub((_t0 == null ? null : _t0.__copy__()))));
    }
function exampleDuration_Round():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1h15m30.918273645s" : GoString)))), _d:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _round:Slice<Duration> = ((new Slice<Duration>(((1 : GoInt64)), ((1000 : GoInt64)), ((1000000 : GoInt64)), ((1000000000 : GoInt64)), ((2000000000 : GoInt64)), (("60000000000" : GoInt64)), (("600000000000" : GoInt64)), (("3600000000000" : GoInt64))) : Slice<Duration>));
        for (_0 => _r in _round) {
            stdgo.fmt.Fmt.printf(((("d.Round(%6s) = %s\n" : GoString))), Go.toInterface(_r), Go.toInterface(((_d.round(_r).toString() : GoString))));
        };
    }
function exampleDuration_String():Void {
        stdgo.fmt.Fmt.println((("3720300000000" : GoInt64)));
        stdgo.fmt.Fmt.println(((300000000 : GoInt64)));
    }
function exampleDuration_Truncate():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1h15m30.918273645s" : GoString)))), _d:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _trunc:Slice<Duration> = ((new Slice<Duration>(((1 : GoInt64)), ((1000 : GoInt64)), ((1000000 : GoInt64)), ((1000000000 : GoInt64)), ((2000000000 : GoInt64)), (("60000000000" : GoInt64)), (("600000000000" : GoInt64)), (("3600000000000" : GoInt64))) : Slice<Duration>));
        for (_0 => _t in _trunc) {
            stdgo.fmt.Fmt.printf(((("d.Truncate(%6s) = %s\n" : GoString))), Go.toInterface(_t), Go.toInterface(((_d.truncate(_t).toString() : GoString))));
        };
    }
function exampleParseDuration():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("10h" : GoString)))), _hours:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.time.Time.parseDuration(((("1h10m10s" : GoString)))), _complex:Duration = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.time.Time.parseDuration(((("1µs" : GoString)))), _micro:Duration = __tmp__._0, _2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.time.Time.parseDuration(((("1us" : GoString)))), _micro2:Duration = __tmp__._0, _3:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(_hours);
        stdgo.fmt.Fmt.println(_complex);
        stdgo.fmt.Fmt.printf(((("There are %.0f seconds in %v.\n" : GoString))), Go.toInterface(_complex.seconds()), Go.toInterface(_complex));
        stdgo.fmt.Fmt.printf(((("There are %d nanoseconds in %v.\n" : GoString))), Go.toInterface(_micro.nanoseconds()), Go.toInterface(_micro));
        stdgo.fmt.Fmt.printf(((("There are %6.2e seconds in %v.\n" : GoString))), Go.toInterface(_micro2.seconds()), Go.toInterface(_micro));
    }
function exampleDuration_Hours():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("4h30m" : GoString)))), _h:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("I\'ve got %.1f hours of work left." : GoString))), Go.toInterface(_h.hours()));
    }
function exampleDuration_Microseconds():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1s" : GoString)))), _u:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("One second is %d microseconds.\n" : GoString))), Go.toInterface(_u.microseconds()));
    }
function exampleDuration_Milliseconds():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1s" : GoString)))), _u:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("One second is %d milliseconds.\n" : GoString))), Go.toInterface(_u.milliseconds()));
    }
function exampleDuration_Minutes():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1h30m" : GoString)))), _m:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("The movie is %.0f minutes long." : GoString))), Go.toInterface(_m.minutes()));
    }
function exampleDuration_Nanoseconds():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1µs" : GoString)))), _u:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("One microsecond is %d nanoseconds.\n" : GoString))), Go.toInterface(_u.nanoseconds()));
    }
function exampleDuration_Seconds():Void {
        var __tmp__ = stdgo.time.Time.parseDuration(((("1m30s" : GoString)))), _m:Duration = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(((("Take off in t-%.0f seconds." : GoString))), Go.toInterface(_m.seconds()));
    }
function _handle(_0:GoInt):Void {}
function exampleAfter():Void {
        Go.select([stdgo.time.Time.after((("10000000000" : GoInt64))).__get__() => {
            stdgo.fmt.Fmt.println(((("timed out" : GoString))));
        }, var _m = _c.__get__() => {
            _handle(_m);
        }]);
    }
function exampleSleep():Void {
        stdgo.time.Time.sleep(((100000000 : GoInt64)));
    }
function _statusUpdate():GoString {
        return ((("" : GoString)));
    }
function exampleTick():Void {
        var _c:Chan<Time> = stdgo.time.Time.tick((("5000000000" : GoInt64)));
        for (_next => _ in _c) {
            stdgo.fmt.Fmt.printf(((("%v %s\n" : GoString))), Go.toInterface(_next), Go.toInterface(_statusUpdate()));
        };
    }
function exampleMonth():Void {
        var __tmp__ = stdgo.time.Time.now().date(), _0:GoInt = __tmp__._0, _month:Month = __tmp__._1, _day:GoInt = __tmp__._2;
        if ((_month == ((11 : GoInt))) && (_day == ((10 : GoInt)))) {
            stdgo.fmt.Fmt.println(((("Happy Go day!" : GoString))));
        };
    }
function exampleDate():Void {
        var _t:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.printf(((("Go launched at %s\n" : GoString))), Go.toInterface(_t.local()));
    }
function exampleNewTicker():Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ticker:Ref<Ticker> = stdgo.time.Time.newTicker(((1000000000 : GoInt64)));
            __deferstack__.unshift(() -> _ticker.stop());
            var _done:Chan<Bool> = new Chan<Bool>(0, () -> false);
            Go.routine(() -> {
                var a = function():Void {
                    stdgo.time.Time.sleep((("10000000000" : GoInt64)));
                    _done.__send__(true);
                };
                a();
            });
            while (true) {
                Go.select([var _t = _ticker.c.__get__() => {
                    stdgo.fmt.Fmt.println(((("Current time: " : GoString))), _t);
                }, _done.__get__() => {
                    stdgo.fmt.Fmt.println(((("Done!" : GoString))));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                }]);
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
function exampleTime_Format():Void {
        var __tmp__ = stdgo.time.Time.parse(((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Wed Feb 25 11:06:39 PST 2015" : GoString)))), _t:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(((("default format:" : GoString))), _t);
        stdgo.fmt.Fmt.println(((("Unix format:" : GoString))), _t.format(((("Mon Jan _2 15:04:05 MST 2006" : GoString)))));
        stdgo.fmt.Fmt.println(((("Same, in UTC:" : GoString))), _t.utc().format(((("Mon Jan _2 15:04:05 MST 2006" : GoString)))));
        var _do:(GoString, GoString, GoString) -> Void = function(_name:GoString, _layout:GoString, _want:GoString):Void {
            var _got:GoString = _t.format(_layout);
            if (_want != _got) {
                stdgo.fmt.Fmt.printf(((("error: for %q got %q; expected %q\n" : GoString))), Go.toInterface(_layout), Go.toInterface(_got), Go.toInterface(_want));
                return;
            };
            stdgo.fmt.Fmt.printf(((("%-16s %q gives %q\n" : GoString))), Go.toInterface(_name), Go.toInterface(_layout), Go.toInterface(_got));
        };
        stdgo.fmt.Fmt.printf(((("\nFormats:\n\n" : GoString))));
        _do(((("Basic full date" : GoString))), ((("Mon Jan 2 15:04:05 MST 2006" : GoString))), ((("Wed Feb 25 11:06:39 PST 2015" : GoString))));
        _do(((("Basic short date" : GoString))), ((("2006/01/02" : GoString))), ((("2015/02/25" : GoString))));
        _do(((("AM/PM" : GoString))), ((("3PM==3pm==15h" : GoString))), ((("11AM==11am==11h" : GoString))));
        {
            var __tmp__ = stdgo.time.Time.parse(((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Wed Feb 25 11:06:39.1234 PST 2015" : GoString))));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        _do(((("No fraction" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Wed Feb 25 11:06:39 PST 2015" : GoString))));
        _do(((("0s for fraction" : GoString))), ((("15:04:05.00000" : GoString))), ((("11:06:39.12340" : GoString))));
        _do(((("9s for fraction" : GoString))), ((("15:04:05.99999999" : GoString))), ((("11:06:39.1234" : GoString))));
    }
function exampleTime_Format_pad():Void {
        var __tmp__ = stdgo.time.Time.parse(((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Sat Mar 7 11:06:39 PST 2015" : GoString)))), _t:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _do:(GoString, GoString, GoString) -> Void = function(_name:GoString, _layout:GoString, _want:GoString):Void {
            var _got:GoString = _t.format(_layout);
            if (_want != _got) {
                stdgo.fmt.Fmt.printf(((("error: for %q got %q; expected %q\n" : GoString))), Go.toInterface(_layout), Go.toInterface(_got), Go.toInterface(_want));
                return;
            };
            stdgo.fmt.Fmt.printf(((("%-16s %q gives %q\n" : GoString))), Go.toInterface(_name), Go.toInterface(_layout), Go.toInterface(_got));
        };
        _do(((("Unix" : GoString))), ((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Sat Mar  7 11:06:39 PST 2015" : GoString))));
        _do(((("No pad" : GoString))), ((("<2>" : GoString))), ((("<7>" : GoString))));
        _do(((("Spaces" : GoString))), ((("<_2>" : GoString))), ((("< 7>" : GoString))));
        _do(((("Zeros" : GoString))), ((("<02>" : GoString))), ((("<07>" : GoString))));
        _do(((("Suppressed pad" : GoString))), ((("04:05" : GoString))), ((("06:39" : GoString))));
    }
function exampleTime_GoString():Void {
        var _t:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_t.goString());
        _t = (_t.add((("60000000000" : GoInt64))) == null ? null : _t.add((("60000000000" : GoInt64))).__copy__());
        stdgo.fmt.Fmt.println(_t.goString());
        _t = (_t.addDate(((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt))) == null ? null : _t.addDate(((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt))).__copy__());
        stdgo.fmt.Fmt.println(_t.goString());
        {
            var __tmp__ = stdgo.time.Time.parse(((("Jan 2, 2006 at 3:04pm (MST)" : GoString))), ((("Feb 3, 2013 at 7:54pm (UTC)" : GoString))));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        stdgo.fmt.Fmt.println(_t.goString());
    }
function exampleParse():Void {
        {};
        var __tmp__ = stdgo.time.Time.parse(((("Jan 2, 2006 at 3:04pm (MST)" : GoString))), ((("Feb 3, 2013 at 7:54pm (PST)" : GoString)))), _t:Time = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(_t);
        {};
        {
            var __tmp__ = stdgo.time.Time.parse(((("2006-Jan-02" : GoString))), ((("2013-Feb-03" : GoString))));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        stdgo.fmt.Fmt.println(_t);
        {
            var __tmp__ = stdgo.time.Time.parse(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05Z" : GoString))));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        stdgo.fmt.Fmt.println(_t);
        {
            var __tmp__ = stdgo.time.Time.parse(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05+07:00" : GoString))));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        stdgo.fmt.Fmt.println(_t);
        var __tmp__ = stdgo.time.Time.parse(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("2006-01-02T15:04:05Z07:00" : GoString)))), _1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(((("error" : GoString))), _err);
    }
function exampleParseInLocation():Void {
        var __tmp__ = stdgo.time.Time.loadLocation(((("Europe/Berlin" : GoString)))), _loc:Ref<Location> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        {};
        var __tmp__ = stdgo.time.Time.parseInLocation(((("Jan 2, 2006 at 3:04pm (MST)" : GoString))), ((("Jul 9, 2012 at 5:02am (CEST)" : GoString))), _loc), _t:Time = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(_t);
        {};
        {
            var __tmp__ = stdgo.time.Time.parseInLocation(((("2006-Jan-02" : GoString))), ((("2012-Jul-09" : GoString))), _loc);
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        stdgo.fmt.Fmt.println(_t);
    }
function exampleUnix():Void {
        var _unixTime:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_unixTime.unix());
        var _t:Time = (stdgo.time.Time.unix(_unixTime.unix(), ((0 : GoInt64))).utc() == null ? null : stdgo.time.Time.unix(_unixTime.unix(), ((0 : GoInt64))).utc().__copy__());
        stdgo.fmt.Fmt.println(_t);
    }
function exampleUnixMicro():Void {
        var _umt:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_umt.unixMicro());
        var _t:Time = (stdgo.time.Time.unixMicro(_umt.unixMicro()).utc() == null ? null : stdgo.time.Time.unixMicro(_umt.unixMicro()).utc().__copy__());
        stdgo.fmt.Fmt.println(_t);
    }
function exampleUnixMilli():Void {
        var _umt:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_umt.unixMilli());
        var _t:Time = (stdgo.time.Time.unixMilli(_umt.unixMilli()).utc() == null ? null : stdgo.time.Time.unixMilli(_umt.unixMilli()).utc().__copy__());
        stdgo.fmt.Fmt.println(_t);
    }
function exampleTime_Unix():Void {
        stdgo.fmt.Fmt.println(stdgo.time.Time.unix(((1e+09 : GoInt64)), ((0 : GoInt64))).utc());
        stdgo.fmt.Fmt.println(stdgo.time.Time.unix(((0 : GoInt64)), ((1e+18 : GoInt64))).utc());
        stdgo.fmt.Fmt.println(stdgo.time.Time.unix(((2e+09 : GoInt64)), (("-1000000000000000000" : GoInt64))).utc());
        var _t:Time = (stdgo.time.Time.date(((2001 : GoInt)), ((9 : GoInt)), ((9 : GoInt)), ((1 : GoInt)), ((46 : GoInt)), ((40 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2001 : GoInt)), ((9 : GoInt)), ((9 : GoInt)), ((1 : GoInt)), ((46 : GoInt)), ((40 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_t.unix());
        stdgo.fmt.Fmt.println(_t.unixNano());
    }
function exampleTime_Round():Void {
        var _t:Time = (stdgo.time.Time.date(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((918273645 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((12 : GoInt)), ((15 : GoInt)), ((30 : GoInt)), ((918273645 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _round:Slice<Duration> = ((new Slice<Duration>(((1 : GoInt64)), ((1000 : GoInt64)), ((1000000 : GoInt64)), ((1000000000 : GoInt64)), ((2000000000 : GoInt64)), (("60000000000" : GoInt64)), (("600000000000" : GoInt64)), (("3600000000000" : GoInt64))) : Slice<Duration>));
        for (_0 => _d in _round) {
            stdgo.fmt.Fmt.printf(((("t.Round(%6s) = %s\n" : GoString))), Go.toInterface(_d), Go.toInterface(_t.round(_d).format(((("15:04:05.999999999" : GoString))))));
        };
    }
function exampleTime_Truncate():Void {
        var __tmp__ = stdgo.time.Time.parse(((("2006 Jan 02 15:04:05" : GoString))), ((("2012 Dec 07 12:15:30.918273645" : GoString)))), _t:Time = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _trunc:Slice<Duration> = ((new Slice<Duration>(((1 : GoInt64)), ((1000 : GoInt64)), ((1000000 : GoInt64)), ((1000000000 : GoInt64)), ((2000000000 : GoInt64)), (("60000000000" : GoInt64)), (("600000000000" : GoInt64))) : Slice<Duration>));
        for (_1 => _d in _trunc) {
            stdgo.fmt.Fmt.printf(((("t.Truncate(%5s) = %s\n" : GoString))), Go.toInterface(_d), Go.toInterface(_t.truncate(_d).format(((("15:04:05.999999999" : GoString))))));
        };
        var _midnight:Time = (stdgo.time.Time.date(_t.year(), _t.month(), _t.day(), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.local) == null ? null : stdgo.time.Time.date(_t.year(), _t.month(), _t.day(), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.local).__copy__());
        _midnight;
    }
function exampleLoadLocation():Void {
        var __tmp__ = stdgo.time.Time.loadLocation(((("America/Los_Angeles" : GoString)))), _location:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _timeInUTC:Time = (stdgo.time.Time.date(((2018 : GoInt)), ((8 : GoInt)), ((30 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2018 : GoInt)), ((8 : GoInt)), ((30 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        stdgo.fmt.Fmt.println(_timeInUTC.in_(_location));
    }
function exampleLocation():Void {
        var _secondsEastOfUTC:GoInt = (((("28800000000000" : GoInt64)).seconds() : GoInt));
        var _beijing:Ref<Location> = stdgo.time.Time.fixedZone(((("Beijing Time" : GoString))), _secondsEastOfUTC);
        var _timeInUTC:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _sameTimeInBeijing:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _beijing) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _beijing).__copy__());
        var _timesAreEqual:Bool = _timeInUTC.equal((_sameTimeInBeijing == null ? null : _sameTimeInBeijing.__copy__()));
        stdgo.fmt.Fmt.println(_timesAreEqual);
    }
function exampleTime_Add():Void {
        var _start:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _afterTenSeconds:Time = (_start.add((("10000000000" : GoInt64))) == null ? null : _start.add((("10000000000" : GoInt64))).__copy__());
        var _afterTenMinutes:Time = (_start.add((("600000000000" : GoInt64))) == null ? null : _start.add((("600000000000" : GoInt64))).__copy__());
        var _afterTenHours:Time = (_start.add((("36000000000000" : GoInt64))) == null ? null : _start.add((("36000000000000" : GoInt64))).__copy__());
        var _afterTenDays:Time = (_start.add((("864000000000000" : GoInt64))) == null ? null : _start.add((("864000000000000" : GoInt64))).__copy__());
        stdgo.fmt.Fmt.printf(((("start = %v\n" : GoString))), Go.toInterface(_start));
        stdgo.fmt.Fmt.printf(((("start.Add(time.Second * 10) = %v\n" : GoString))), Go.toInterface(_afterTenSeconds));
        stdgo.fmt.Fmt.printf(((("start.Add(time.Minute * 10) = %v\n" : GoString))), Go.toInterface(_afterTenMinutes));
        stdgo.fmt.Fmt.printf(((("start.Add(time.Hour * 10) = %v\n" : GoString))), Go.toInterface(_afterTenHours));
        stdgo.fmt.Fmt.printf(((("start.Add(time.Hour * 24 * 10) = %v\n" : GoString))), Go.toInterface(_afterTenDays));
    }
function exampleTime_AddDate():Void {
        var _start:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _oneDayLater:Time = (_start.addDate(((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt))) == null ? null : _start.addDate(((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt))).__copy__());
        var _oneMonthLater:Time = (_start.addDate(((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt))) == null ? null : _start.addDate(((0 : GoInt)), ((1 : GoInt)), ((0 : GoInt))).__copy__());
        var _oneYearLater:Time = (_start.addDate(((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _start.addDate(((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__());
        stdgo.fmt.Fmt.printf(((("oneDayLater: start.AddDate(0, 0, 1) = %v\n" : GoString))), Go.toInterface(_oneDayLater));
        stdgo.fmt.Fmt.printf(((("oneMonthLater: start.AddDate(0, 1, 0) = %v\n" : GoString))), Go.toInterface(_oneMonthLater));
        stdgo.fmt.Fmt.printf(((("oneYearLater: start.AddDate(1, 0, 0) = %v\n" : GoString))), Go.toInterface(_oneYearLater));
    }
function exampleTime_After():Void {
        var _year2000:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _year3000:Time = (stdgo.time.Time.date(((3000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((3000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _isYear3000AfterYear2000:Bool = _year3000.after((_year2000 == null ? null : _year2000.__copy__()));
        var _isYear2000AfterYear3000:Bool = _year2000.after((_year3000 == null ? null : _year3000.__copy__()));
        stdgo.fmt.Fmt.printf(((("year3000.After(year2000) = %v\n" : GoString))), Go.toInterface(_isYear3000AfterYear2000));
        stdgo.fmt.Fmt.printf(((("year2000.After(year3000) = %v\n" : GoString))), Go.toInterface(_isYear2000AfterYear3000));
    }
function exampleTime_Before():Void {
        var _year2000:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _year3000:Time = (stdgo.time.Time.date(((3000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((3000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _isYear2000BeforeYear3000:Bool = _year2000.before((_year3000 == null ? null : _year3000.__copy__()));
        var _isYear3000BeforeYear2000:Bool = _year3000.before((_year2000 == null ? null : _year2000.__copy__()));
        stdgo.fmt.Fmt.printf(((("year2000.Before(year3000) = %v\n" : GoString))), Go.toInterface(_isYear2000BeforeYear3000));
        stdgo.fmt.Fmt.printf(((("year3000.Before(year2000) = %v\n" : GoString))), Go.toInterface(_isYear3000BeforeYear2000));
    }
function exampleTime_Date():Void {
        var _d:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var __tmp__ = _d.date(), _year:GoInt = __tmp__._0, _month:Month = __tmp__._1, _day:GoInt = __tmp__._2;
        stdgo.fmt.Fmt.printf(((("year = %v\n" : GoString))), Go.toInterface(_year));
        stdgo.fmt.Fmt.printf(((("month = %v\n" : GoString))), Go.toInterface(_month));
        stdgo.fmt.Fmt.printf(((("day = %v\n" : GoString))), Go.toInterface(_day));
    }
function exampleTime_Day():Void {
        var _d:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _day:GoInt = _d.day();
        stdgo.fmt.Fmt.printf(((("day = %v\n" : GoString))), Go.toInterface(_day));
    }
function exampleTime_Equal():Void {
        var _secondsEastOfUTC:GoInt = (((("28800000000000" : GoInt64)).seconds() : GoInt));
        var _beijing:Ref<Location> = stdgo.time.Time.fixedZone(((("Beijing Time" : GoString))), _secondsEastOfUTC);
        var _d1:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _d2:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((20 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _beijing) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((20 : GoInt)), ((30 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _beijing).__copy__());
        var _datesEqualUsingEqualOperator:Bool = _d1 == _d2;
        var _datesEqualUsingFunction:Bool = _d1.equal((_d2 == null ? null : _d2.__copy__()));
        stdgo.fmt.Fmt.printf(((("datesEqualUsingEqualOperator = %v\n" : GoString))), Go.toInterface(_datesEqualUsingEqualOperator));
        stdgo.fmt.Fmt.printf(((("datesEqualUsingFunction = %v\n" : GoString))), Go.toInterface(_datesEqualUsingFunction));
    }
function exampleTime_String():Void {
        var _timeWithNanoseconds:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((14 : GoInt)), ((15 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((14 : GoInt)), ((15 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _withNanoseconds:GoString = ((_timeWithNanoseconds.toString() : GoString));
        var _timeWithoutNanoseconds:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((14 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((13 : GoInt)), ((14 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _withoutNanoseconds:GoString = ((_timeWithoutNanoseconds.toString() : GoString));
        stdgo.fmt.Fmt.printf(((("withNanoseconds = %v\n" : GoString))), Go.toInterface(((_withNanoseconds : GoString))));
        stdgo.fmt.Fmt.printf(((("withoutNanoseconds = %v\n" : GoString))), Go.toInterface(((_withoutNanoseconds : GoString))));
    }
function exampleTime_Sub():Void {
        var _start:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _end:Time = (stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2000 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _difference:Duration = _end.sub((_start == null ? null : _start.__copy__()));
        stdgo.fmt.Fmt.printf(((("difference = %v\n" : GoString))), Go.toInterface(_difference));
    }
function exampleTime_AppendFormat():Void {
        var _t:Time = (stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((4 : GoInt)), ((11 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date(((2017 : GoInt)), ((11 : GoInt)), ((4 : GoInt)), ((11 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc).__copy__());
        var _text:Slice<GoUInt8> = ((((("Time: " : GoString))) : Slice<GoByte>));
        _text = _t.appendFormat(_text, ((("3:04PM" : GoString))));
        stdgo.fmt.Fmt.println(((_text : GoString)));
    }
function exampleFixedZone():Void {
        var _loc:Ref<Location> = stdgo.time.Time.fixedZone(((("UTC-8" : GoString))), ((-28800 : GoInt)));
        var _t:Time = (stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((2009 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
        stdgo.fmt.Fmt.println(((("The time is:" : GoString))), _t.format(((("02 Jan 06 15:04 MST" : GoString)))));
    }
function testNextStdChunk(_t:stdgo.testing.Testing.T_):Void {
        var _markChunks:GoString -> GoString = function(_format:GoString):GoString {
            var _out:GoString = ((("" : GoString)));
            {
                var _s:GoString = _format;
                while (_s != ((("" : GoString)))) {
                    var __tmp__ = nextStdChunk(_s), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
                    _out = _out + (_prefix);
                    if (_std > ((0 : GoInt))) {
                        _out = _out + ((((("(" : GoString))) + (stdChunkNames != null ? stdChunkNames[_std] : (("" : GoString)))) + (((")" : GoString))));
                    };
                    _s = _suffix;
                };
            };
            return _out;
        };
        var _noParens:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if ((_r == ((((("(" : GoString))).code : GoRune))) || (_r == (((((")" : GoString))).code : GoRune)))) {
                return ((-1 : GoInt32));
            };
            return _r;
        };
        for (_0 => _marked in _nextStdChunkTests) {
            var _format:GoString = stdgo.strings.Strings.map(_noParens, _marked);
            var _out:GoString = _markChunks(_format);
            if (_out != _marked) {
                _t.errorf(((("nextStdChunk parses %q as %q, want %q" : GoString))), Go.toInterface(_format), Go.toInterface(_out), Go.toInterface(_marked));
            };
        };
    }
function testRFC3339Conversion(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _f in _rfc3339Formats) {
            if (_f._time.format(((("2006-01-02T15:04:05Z07:00" : GoString)))) != _f._formattedValue) {
                _t.error(Go.toInterface(((("RFC3339:" : GoString)))));
                _t.errorf(((("  want=%+v" : GoString))), Go.toInterface(_f._formattedValue));
                _t.errorf(((("  have=%+v" : GoString))), Go.toInterface(_f._time.format(((("2006-01-02T15:04:05Z07:00" : GoString))))));
            };
        };
    }
function testFormat(_t:stdgo.testing.Testing.T_):Void {
        var _time:Time = (unix(((0 : GoInt64)), (("1233810057012345600" : GoInt64))) == null ? null : unix(((0 : GoInt64)), (("1233810057012345600" : GoInt64))).__copy__());
        for (_0 => _test in _formatTests) {
            var _result:GoString = _time.format(_test._format);
            if (_result != _test._result) {
                _t.errorf(((("%s expected %q got %q" : GoString))), Go.toInterface(_test._name), Go.toInterface(_test._result), Go.toInterface(_result));
            };
        };
    }
function testGoString(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _goStringTests) {
            if (_tt._in.goString() != _tt._want) {
                _t.errorf(((("GoString (%q): got %q want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._in.goString()), Go.toInterface(_tt._want));
            };
        };
    }
function testFormatSingleDigits(_t:stdgo.testing.Testing.T_):Void {
        var _time:Time = (date(((2001 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((700000000 : GoInt)), utc) == null ? null : date(((2001 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt)), ((700000000 : GoInt)), utc).__copy__());
        var _test:stdgo.time_test.Time_test.FormatTest = ((new stdgo.time_test.Time_test.FormatTest(((("single digit format" : GoString))), ((("3:4:5" : GoString))), ((("4:5:6" : GoString)))) : stdgo.time_test.Time_test.FormatTest));
        var _result:GoString = _time.format(_test._format);
        if (_result != _test._result) {
            _t.errorf(((("%s expected %q got %q" : GoString))), Go.toInterface(_test._name), Go.toInterface(_test._result), Go.toInterface(_result));
        };
    }
function testFormatShortYear(_t:stdgo.testing.Testing.T_):Void {
        var _years:Slice<GoInt> = ((new Slice<GoInt>(
((-100001 : GoInt)),
((-100000 : GoInt)),
((-99999 : GoInt)),
((-10001 : GoInt)),
((-10000 : GoInt)),
((-9999 : GoInt)),
((-1001 : GoInt)),
((-1000 : GoInt)),
((-999 : GoInt)),
((-101 : GoInt)),
((-100 : GoInt)),
((-99 : GoInt)),
((-11 : GoInt)),
((-10 : GoInt)),
((-9 : GoInt)),
((-1 : GoInt)),
((0 : GoInt)),
((1 : GoInt)),
((9 : GoInt)),
((10 : GoInt)),
((11 : GoInt)),
((99 : GoInt)),
((100 : GoInt)),
((101 : GoInt)),
((999 : GoInt)),
((1000 : GoInt)),
((1001 : GoInt)),
((9999 : GoInt)),
((10000 : GoInt)),
((10001 : GoInt)),
((99999 : GoInt)),
((100000 : GoInt)),
((100001 : GoInt))) : Slice<GoInt>));
        for (_0 => _y in _years) {
            var _time:Time = (date(_y, ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(_y, ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__());
            var _result:GoString = _time.format(((("2006.01.02" : GoString))));
            var _want:GoString = (("" : GoString));
            if (_y < ((0 : GoInt))) {
                _want = stdgo.fmt.Fmt.sprintf(((("-%04d.%02d.%02d" : GoString))), Go.toInterface(-_y), Go.toInterface(((1 : GoInt))), Go.toInterface(((1 : GoInt))));
            } else {
                _want = stdgo.fmt.Fmt.sprintf(((("%04d.%02d.%02d" : GoString))), Go.toInterface(_y), Go.toInterface(((1 : GoInt))), Go.toInterface(((1 : GoInt))));
            };
            if (_result != _want) {
                _t.errorf(((("(jan 1 %d).Format(\"2006.01.02\") = %q, want %q" : GoString))), Go.toInterface(_y), Go.toInterface(_result), Go.toInterface(_want));
            };
        };
    }
function testParse(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _parseTests) {
            var __tmp__ = parse(_test._format, _test._value), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s error: %v" : GoString))), Go.toInterface(_test._name), Go.toInterface(_err));
            } else {
                _checkTime((_time == null ? null : _time.__copy__()), _test, _t);
            };
        };
    }
function testParseDayOutOfRange(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _dayOutOfRangeTests) {
            var __tmp__ = parse(((("Mon Jan _2 15:04:05 2006" : GoString))), _test._date), _1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._ok && (_err == null)) {} else if (!_test._ok && (_err != null)) {
                if (!stdgo.strings.Strings.contains(_err.error(), ((("day out of range" : GoString))))) {
                    _t.errorf(((("%q: expected \'day\' error, got %v" : GoString))), Go.toInterface(_test._date), Go.toInterface(_err));
                };
            } else if (_test._ok && (_err != null)) {
                _t.errorf(((("%q: unexpected error: %v" : GoString))), Go.toInterface(_test._date), Go.toInterface(_err));
            } else if (!_test._ok && (_err == null)) {
                _t.errorf(((("%q: expected \'day\' error, got none" : GoString))), Go.toInterface(_test._date));
            };
        };
    }
function testParseInLocation(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = loadLocation(((("Asia/Baghdad" : GoString)))), _baghdad:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _t1:Time = new Time(), _t2:Time = new Time();
        {
            var __tmp__ = parseInLocation(((("Jan 02 2006 MST" : GoString))), ((("Feb 01 2013 AST" : GoString))), _baghdad);
            _t1 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = _t1.zone(), _0:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if (_offset != ((0 : GoInt))) {
            _t2 = (date(((2013 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _baghdad) == null ? null : date(((2013 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _baghdad).__copy__());
            if (_t1 != _t2) {
                _t.fatalf(((("ParseInLocation(Feb 01 2013 AST, Baghdad) = %v, want %v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
            };
            if (_offset != ((10800 : GoInt))) {
                _t.fatalf(((("ParseInLocation(Feb 01 2013 AST, Baghdad).Zone = _, %d, want _, %d" : GoString))), Go.toInterface(_offset), Go.toInterface(((10800 : GoInt))));
            };
        };
        var __tmp__ = loadLocation(((("America/Blanc-Sablon" : GoString)))), _blancSablon:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = parseInLocation(((("Jan 02 2006 MST" : GoString))), ((("Feb 01 2013 AST" : GoString))), _blancSablon);
            _t1 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        _t2 = (date(((2013 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _blancSablon) == null ? null : date(((2013 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _blancSablon).__copy__());
        if (_t1 != _t2) {
            _t.fatalf(((("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon) = %v, want %v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
        };
        {
            var __tmp__ = _t1.zone();
            _offset = __tmp__._1;
        };
        if (_offset != ((-14400 : GoInt))) {
            _t.fatalf(((("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon).Zone = _, %d, want _, %d" : GoString))), Go.toInterface(_offset), Go.toInterface(((-14400 : GoInt))));
        };
    }
function testLoadLocationZipFile(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> forceZipFileForTesting(_a0));
            };
            var __tmp__ = loadLocation(((("Australia/Sydney" : GoString)))), _0:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
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
function testRubyParse(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _rubyTests) {
            var __tmp__ = parse(_test._format, _test._value), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s error: %v" : GoString))), Go.toInterface(_test._name), Go.toInterface(_err));
            } else {
                _checkTime((_time == null ? null : _time.__copy__()), _test, _t);
            };
        };
    }
function _checkTime(_time:Time, _test:ParseTest, _t:stdgo.testing.Testing.T_):Void {
        if ((_test._yearSign >= ((0 : GoInt))) && ((_test._yearSign * _time.year()) != ((2010 : GoInt)))) {
            _t.errorf(((("%s: bad year: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.year()), Go.toInterface(((2010 : GoInt))));
        };
        if (_time.month() != ((2 : GoInt))) {
            _t.errorf(((("%s: bad month: %s not %s" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.month()), Go.toInterface(((2 : GoInt))));
        };
        if (_time.day() != ((4 : GoInt))) {
            _t.errorf(((("%s: bad day: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.day()), Go.toInterface(((4 : GoInt))));
        };
        if (_time.hour() != ((21 : GoInt))) {
            _t.errorf(((("%s: bad hour: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.hour()), Go.toInterface(((21 : GoInt))));
        };
        if (_time.minute() != ((0 : GoInt))) {
            _t.errorf(((("%s: bad minute: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.minute()), Go.toInterface(((0 : GoInt))));
        };
        if (_time.second() != ((57 : GoInt))) {
            _t.errorf(((("%s: bad second: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.second()), Go.toInterface(((57 : GoInt))));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseUint(((((("012345678" : GoString))).__slice__(0, _test._fracDigits) : GoString)) + ((((("000000000" : GoString))).__slice__(0, ((9 : GoInt)) - _test._fracDigits) : GoString)), ((10 : GoInt)), ((0 : GoInt))), _nanosec:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        if (_time.nanosecond() != ((_nanosec : GoInt))) {
            _t.errorf(((("%s: bad nanosecond: %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.nanosecond()), Go.toInterface(_nanosec));
        };
        var __tmp__ = _time.zone(), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if (_test._hasTZ && (_offset != ((-28800 : GoInt)))) {
            _t.errorf(((("%s: bad tz offset: %s %d not %d" : GoString))), Go.toInterface(_test._name), Go.toInterface(_name), Go.toInterface(_offset), Go.toInterface(((-28800 : GoInt))));
        };
        if (_test._hasWD && (_time.weekday() != ((4 : GoInt)))) {
            _t.errorf(((("%s: bad weekday: %s not %s" : GoString))), Go.toInterface(_test._name), Go.toInterface(_time.weekday()), Go.toInterface(((4 : GoInt))));
        };
    }
function testFormatAndParse(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _f:GoInt64 -> Bool = function(_sec:GoInt64):Bool {
            var _t1:Time = (unix(_sec / ((2 : GoInt64)), ((0 : GoInt64))) == null ? null : unix(_sec / ((2 : GoInt64)), ((0 : GoInt64))).__copy__());
            if (((_t1.year() < ((1000 : GoInt))) || (_t1.year() > ((9999 : GoInt)))) || (_t1.unix() != _sec)) {
                return true;
            };
            var __tmp__ = parse(((("Mon MST 2006-01-02T15:04:05Z07:00" : GoString))), _t1.format(((("Mon MST 2006-01-02T15:04:05Z07:00" : GoString))))), _t2:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("error: %s" : GoString))), Go.toInterface(_err));
                return false;
            };
            if ((_t1.unix() != _t2.unix()) || (_t1.nanosecond() != _t2.nanosecond())) {
                _t.errorf(((("FormatAndParse %d: %q(%d) %q(%d)" : GoString))), Go.toInterface(_sec), Go.toInterface(_t1), Go.toInterface(_t1.unix()), Go.toInterface(_t2), Go.toInterface(_t2.unix()));
                return false;
            };
            return true;
        };
        var _f32:GoInt32 -> Bool = function(_sec:GoInt32):Bool {
            return _f(((_sec : GoInt64)));
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((10000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testParseTimeZone(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _parseTimeZoneTests) {
            var __tmp__ = parseTimeZone(_test._value), _length:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok != _test._ok) {
                _t.errorf(((("expected %t for %q got %t" : GoString))), Go.toInterface(_test._ok), Go.toInterface(_test._value), Go.toInterface(_ok));
            } else if (_length != _test._length) {
                _t.errorf(((("expected %d for %q got %d" : GoString))), Go.toInterface(_test._length), Go.toInterface(_test._value), Go.toInterface(_length));
            };
        };
    }
function testParseErrors(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _parseErrorTests) {
            var __tmp__ = parse(_test._format, _test._value), _1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(((("expected error for %q %q" : GoString))), Go.toInterface(_test._format), Go.toInterface(_test._value));
            } else if (!stdgo.strings.Strings.contains(_err.error(), _test._expect)) {
                _t.errorf(((("expected error with %q for %q %q; got %s" : GoString))), Go.toInterface(_test._expect), Go.toInterface(_test._format), Go.toInterface(_test._value), Go.toInterface(_err));
            };
        };
    }
function testNoonIs12PM(_t:stdgo.testing.Testing.T_):Void {
        var _noon:Time = (date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__());
        {};
        var _got:GoString = _noon.format(((("3:04PM" : GoString))));
        if (_got != ((("12:00PM" : GoString)))) {
            _t.errorf(((("got %q; expect %q" : GoString))), Go.toInterface(_got), Go.toInterface(((("12:00PM" : GoString)))));
        };
        _got = _noon.format(((("03:04PM" : GoString))));
        if (_got != ((("12:00PM" : GoString)))) {
            _t.errorf(((("got %q; expect %q" : GoString))), Go.toInterface(_got), Go.toInterface(((("12:00PM" : GoString)))));
        };
    }
function testMidnightIs12AM(_t:stdgo.testing.Testing.T_):Void {
        var _midnight:Time = (date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((0 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__());
        var _expect:GoString = ((("12:00AM" : GoString)));
        var _got:GoString = _midnight.format(((("3:04PM" : GoString))));
        if (_got != _expect) {
            _t.errorf(((("got %q; expect %q" : GoString))), Go.toInterface(_got), Go.toInterface(_expect));
        };
        _got = _midnight.format(((("03:04PM" : GoString))));
        if (_got != _expect) {
            _t.errorf(((("got %q; expect %q" : GoString))), Go.toInterface(_got), Go.toInterface(_expect));
        };
    }
function test12PMIsNoon(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("3:04PM" : GoString))), ((("12:00PM" : GoString)))), _noon:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        if (_noon.hour() != ((12 : GoInt))) {
            _t.errorf(((("got %d; expect 12" : GoString))), Go.toInterface(_noon.hour()));
        };
        {
            var __tmp__ = parse(((("03:04PM" : GoString))), ((("12:00PM" : GoString))));
            _noon = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        if (_noon.hour() != ((12 : GoInt))) {
            _t.errorf(((("got %d; expect 12" : GoString))), Go.toInterface(_noon.hour()));
        };
    }
function test12AMIsMidnight(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("3:04PM" : GoString))), ((("12:00AM" : GoString)))), _midnight:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : GoInt))) {
            _t.errorf(((("got %d; expect 0" : GoString))), Go.toInterface(_midnight.hour()));
        };
        {
            var __tmp__ = parse(((("03:04PM" : GoString))), ((("12:00AM" : GoString))));
            _midnight = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : GoInt))) {
            _t.errorf(((("got %d; expect 0" : GoString))), Go.toInterface(_midnight.hour()));
        };
    }
function testMissingZone(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Thu Feb 02 16:10:03 -0500 2006" : GoString)))), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        var _expect:GoString = ((("Thu Feb  2 16:10:03 -0500 2006" : GoString)));
        var _str:GoString = _time.format(((("Mon Jan _2 15:04:05 MST 2006" : GoString))));
        if (_str != _expect) {
            _t.errorf(((("got %s; expect %s" : GoString))), Go.toInterface(_str), Go.toInterface(_expect));
        };
    }
function testMinutesInTimeZone(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("Mon Jan 02 15:04:05 -0700 2006" : GoString))), ((("Mon Jan 02 15:04:05 +0123 2006" : GoString)))), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
        };
        var _expected:GoInt = ((4980 : GoInt));
        var __tmp__ = _time.zone(), _0:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if (_offset != _expected) {
            _t.errorf(((("ZoneOffset = %d, want %d" : GoString))), Go.toInterface(_offset), Go.toInterface(_expected));
        };
    }
function testParseSecondsInTimeZone(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _secondsTimeZoneOffsetTests) {
            var __tmp__ = parse(_test._format, _test._value), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((("error parsing date:" : GoString)))), Go.toInterface(_err));
            };
            var __tmp__ = _time.zone(), _1:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
            if (_offset != _test._expectedoffset) {
                _t.errorf(((("ZoneOffset = %d, want %d" : GoString))), Go.toInterface(_offset), Go.toInterface(_test._expectedoffset));
            };
        };
    }
function testFormatSecondsInTimeZone(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _secondsTimeZoneOffsetTests) {
            var _d:Time = (date(((1871 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((33 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), fixedZone(((("LMT" : GoString))), _test._expectedoffset)) == null ? null : date(((1871 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((33 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), fixedZone(((("LMT" : GoString))), _test._expectedoffset)).__copy__());
            var _timestr:GoString = _d.format(_test._format);
            if (_timestr != _test._value) {
                _t.errorf(((("Format = %s, want %s" : GoString))), Go.toInterface(_timestr), Go.toInterface(_test._value));
            };
        };
    }
function testUnderscoreTwoThousand(_t:stdgo.testing.Testing.T_):Void {
        var _format:GoString = ((("15:04_20060102" : GoString)));
        var _input:GoString = ((("14:38_20150618" : GoString)));
        var __tmp__ = parse(_format, _input), _time:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        {
            var __tmp__ = _time.date(), _y:GoInt = __tmp__._0, _m:Month = __tmp__._1, _d:GoInt = __tmp__._2;
            if (((_y != ((2015 : GoInt))) || (_m != ((6 : GoInt)))) || (_d != ((18 : GoInt)))) {
                _t.errorf(((("Incorrect y/m/d, got %d/%d/%d" : GoString))), Go.toInterface(_y), Go.toInterface(_m), Go.toInterface(_d));
            };
        };
        {
            var _h:GoInt = _time.hour();
            if (_h != ((14 : GoInt))) {
                _t.errorf(((("Incorrect hour, got %d" : GoString))), Go.toInterface(_h));
            };
        };
        {
            var _m:GoInt = _time.minute();
            if (_m != ((38 : GoInt))) {
                _t.errorf(((("Incorrect minute, got %d" : GoString))), Go.toInterface(_m));
            };
        };
    }
function testStd0xParseError(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.time_test.Time_test.T__struct_2> = ((new Slice<stdgo.time_test.Time_test.T__struct_2>(((new stdgo.time_test.Time_test.T__struct_2(((("01 MST" : GoString))), ((("0 MST" : GoString))), ((("0" : GoString)))) : stdgo.time_test.Time_test.T__struct_2)), ((new stdgo.time_test.Time_test.T__struct_2(((("01 MST" : GoString))), ((("1 MST" : GoString))), ((("1" : GoString)))) : stdgo.time_test.Time_test.T__struct_2)), ((new stdgo.time_test.Time_test.T__struct_2(((("Monday, 02-Jan-06 15:04:05 MST" : GoString))), ((("Thursday, 04-Feb-1 21:00:57 PST" : GoString))), ((("1" : GoString)))) : stdgo.time_test.Time_test.T__struct_2))) : Slice<stdgo.time_test.Time_test.T__struct_2>));
        for (_0 => _tt in _tests) {
            var __tmp__ = parse(_tt._format, _tt._value), _1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(((("Parse(%q, %q) did not fail as expected" : GoString))), Go.toInterface(_tt._format), Go.toInterface(_tt._value));
            } else {
                var __tmp__ = try {
                    { value : ((((_err.__underlying__().value : Dynamic)) : ParseError)), ok : true };
                } catch(_) {
                    { value : ((null : Ref<ParseError>)), ok : false };
                }, _perr = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.errorf(((("Parse(%q, %q) returned error type %T, expected ParseError" : GoString))), Go.toInterface(_tt._format), Go.toInterface(_tt._value), Go.toInterface(_perr));
                } else if (!stdgo.strings.Strings.contains(_perr.error(), ((("cannot parse" : GoString)))) || !stdgo.strings.Strings.hasPrefix(_perr.valueElem, _tt._valueElemPrefix)) {
                    _t.errorf(((("Parse(%q, %q) returned wrong parsing error message: %v" : GoString))), Go.toInterface(_tt._format), Go.toInterface(_tt._value), Go.toInterface(_perr));
                };
            };
        };
    }
function testParseMonthOutOfRange(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _monthOutOfRangeTests) {
            var __tmp__ = parse(((("01-02" : GoString))), _test._value), _1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_test._ok && (_err != null)) {
                if (!stdgo.strings.Strings.contains(_err.error(), ((("month out of range" : GoString))))) {
                    _t.errorf(((("%q: expected \'month\' error, got %v" : GoString))), Go.toInterface(_test._value), Go.toInterface(_err));
                };
            } else if (_test._ok && (_err != null)) {
                _t.errorf(((("%q: unexpected error: %v" : GoString))), Go.toInterface(_test._value), Go.toInterface(_err));
            } else if (!_test._ok && (_err == null)) {
                _t.errorf(((("%q: expected \'month\' error, got none" : GoString))), Go.toInterface(_test._value));
            };
        };
    }
function testParseYday(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i <= ((365 : GoInt)), _i++, {
                var _d:GoString = stdgo.fmt.Fmt.sprintf(((("2020-%03d" : GoString))), Go.toInterface(_i));
                var __tmp__ = parse(((("2006-002" : GoString))), _d), _tm:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("unexpected error for %s: %v" : GoString))), Go.toInterface(_d), Go.toInterface(_err));
                } else if ((_tm.year() != ((2020 : GoInt))) || (_tm.yearDay() != _i)) {
                    _t.errorf(((("got year %d yearday %d, want %d %d" : GoString))), Go.toInterface(_tm.year()), Go.toInterface(_tm.yearDay()), Go.toInterface(((2020 : GoInt))), Go.toInterface(_i));
                };
            });
        };
    }
function testQuote(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.time_test.Time_test.T__struct_4> = ((new Slice<stdgo.time_test.Time_test.T__struct_4>(((new stdgo.time_test.Time_test.T__struct_4("\"", "\"\\\"\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("abc\"xyz\"", "\"abc\\\"xyz\\\"\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4(((("" : GoString))), "\"\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4(((("abc" : GoString))), "\"abc\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("☺", "\"\\xe2\\x98\\xba\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("☺ hello ☺ hello", "\"\\xe2\\x98\\xba hello \\xe2\\x98\\xba hello\"") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4((((haxe.io.Bytes.ofHex("04") : GoString))), "\"\\x04\"") : stdgo.time_test.Time_test.T__struct_4))) : Slice<stdgo.time_test.Time_test.T__struct_4>));
        for (_0 => _tt in _tests) {
            {
                var _q:GoString = quote(_tt._s);
                if (_q != _tt._want) {
                    _t.errorf(((("Quote(%q) = got %q, want %q" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_q), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testFormatFractionalSecondSeparators(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.time_test.Time_test.T__struct_4> = ((new Slice<stdgo.time_test.Time_test.T__struct_4>(((new stdgo.time_test.Time_test.T__struct_4("15:04:05.000", "21:00:57.012") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("15:04:05.999", "21:00:57.012") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("15:04:05,000", "21:00:57,012") : stdgo.time_test.Time_test.T__struct_4)), ((new stdgo.time_test.Time_test.T__struct_4("15:04:05,999", "21:00:57,012") : stdgo.time_test.Time_test.T__struct_4))) : Slice<stdgo.time_test.Time_test.T__struct_4>));
        var _time:Time = (unix(((0 : GoInt64)), (("1233810057012345600" : GoInt64))) == null ? null : unix(((0 : GoInt64)), (("1233810057012345600" : GoInt64))).__copy__());
        for (_0 => _tt in _tests) {
            {
                var _q:GoString = _time.format(_tt._s);
                if (_q != _tt._want) {
                    _t.errorf(((("Format(%q) = got %q, want %q" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_q), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testParseFractionalSecondsLongerThanNineDigits(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.time_test.Time_test.T__struct_5> = ((new Slice<stdgo.time_test.Time_test.T__struct_5>(
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.000000000Z" : GoString))), ((0 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.000000001Z" : GoString))), ((1 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.100000000Z" : GoString))), ((100000000 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.100000001Z" : GoString))), ((100000001 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.999999999Z" : GoString))), ((999999999 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.012345678Z" : GoString))), ((12345678 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.0000000000Z" : GoString))), ((0 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.0000000001Z" : GoString))), ((0 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.1000000000Z" : GoString))), ((100000000 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.1000000009Z" : GoString))), ((100000000 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.9999999999Z" : GoString))), ((999999999 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.0123456789Z" : GoString))), ((12345678 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.10000000000Z" : GoString))), ((100000000 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.00123456789Z" : GoString))), ((1234567 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.000123456789Z" : GoString))), ((123456 : GoInt))) : stdgo.time_test.Time_test.T__struct_5)),
((new stdgo.time_test.Time_test.T__struct_5(((("2021-09-29T16:04:33.9999999999999999Z" : GoString))), ((999999999 : GoInt))) : stdgo.time_test.Time_test.T__struct_5))) : Slice<stdgo.time_test.Time_test.T__struct_5>));
        for (_0 => _tt in _tests) {
            var __tmp__ = parse(((("2006-01-02T15:04:05Z07:00" : GoString))), _tt._s), _tm:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Unexpected error: %v" : GoString))), Go.toInterface(_err));
                continue;
            };
            {
                var _got:GoInt = _tm.nanosecond();
                if (_got != _tt._want) {
                    _t.errorf(((("Parse(%q) = got %d, want %d" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testHasMonotonicClock(_t:stdgo.testing.Testing.T_):Void {
        var _yes:(GoString, Time) -> Void = function(_expr:GoString, _tt:Time):Void {
            if (getMono(_tt) == ((0 : GoInt64))) {
                _t.errorf(((("%s: missing monotonic clock reading" : GoString))), Go.toInterface(_expr));
            };
        };
        var _no:(GoString, Time) -> Void = function(_expr:GoString, _tt:Time):Void {
            if (getMono(_tt) != ((0 : GoInt64))) {
                _t.errorf(((("%s: unexpected monotonic clock reading" : GoString))), Go.toInterface(_expr));
            };
        };
        _yes(((("<-After(1)" : GoString))), (after(((1 : GoInt64))).__get__() == null ? null : after(((1 : GoInt64))).__get__().__copy__()));
        var _ticker:Ref<Ticker> = newTicker(((1 : GoInt64)));
        _yes(((("<-Tick(1)" : GoString))), (_ticker.c.__get__() == null ? null : _ticker.c.__get__().__copy__()));
        _ticker.stop();
        _no(((("Date(2009, 11, 23, 0, 0, 0, 0, UTC)" : GoString))), (date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((11 : GoInt)), ((23 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()));
        var __tmp__ = parse(((("Mon Jan _2 15:04:05 MST 2006" : GoString))), ((("Sat Mar  7 11:06:39 PST 2015" : GoString)))), _tp:Time = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        _no("Parse(UnixDate, \"Sat Mar  7 11:06:39 PST 2015\")", (_tp == null ? null : _tp.__copy__()));
        _no(((("Unix(1486057371, 0)" : GoString))), (unix(((1486057371 : GoInt64)), ((0 : GoInt64))) == null ? null : unix(((1486057371 : GoInt64)), ((0 : GoInt64))).__copy__()));
        _yes(((("Now()" : GoString))), (now() == null ? null : now().__copy__()));
        var _tu:Time = (unix(((1486057371 : GoInt64)), ((0 : GoInt64))) == null ? null : unix(((1486057371 : GoInt64)), ((0 : GoInt64))).__copy__());
        var _tm:Time = (_tu == null ? null : _tu.__copy__());
        setMono(_tm, ((123456 : GoInt64)));
        _no(((("tu" : GoString))), (_tu == null ? null : _tu.__copy__()));
        _yes(((("tm" : GoString))), (_tm == null ? null : _tm.__copy__()));
        _no(((("tu.Add(1)" : GoString))), (_tu.add(((1 : GoInt64))) == null ? null : _tu.add(((1 : GoInt64))).__copy__()));
        _no(((("tu.In(UTC)" : GoString))), (_tu.in_(utc) == null ? null : _tu.in_(utc).__copy__()));
        _no(((("tu.AddDate(1, 1, 1)" : GoString))), (_tu.addDate(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) == null ? null : _tu.addDate(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))).__copy__()));
        _no(((("tu.AddDate(0, 0, 0)" : GoString))), (_tu.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _tu.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__()));
        _no(((("tu.Local()" : GoString))), (_tu.local() == null ? null : _tu.local().__copy__()));
        _no(((("tu.UTC()" : GoString))), (_tu.utc() == null ? null : _tu.utc().__copy__()));
        _no(((("tu.Round(2)" : GoString))), (_tu.round(((2 : GoInt64))) == null ? null : _tu.round(((2 : GoInt64))).__copy__()));
        _no(((("tu.Truncate(2)" : GoString))), (_tu.truncate(((2 : GoInt64))) == null ? null : _tu.truncate(((2 : GoInt64))).__copy__()));
        _yes(((("tm.Add(1)" : GoString))), (_tm.add(((1 : GoInt64))) == null ? null : _tm.add(((1 : GoInt64))).__copy__()));
        _no(((("tm.AddDate(1, 1, 1)" : GoString))), (_tm.addDate(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) == null ? null : _tm.addDate(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))).__copy__()));
        _no(((("tm.AddDate(0, 0, 0)" : GoString))), (_tm.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _tm.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__()));
        _no(((("tm.In(UTC)" : GoString))), (_tm.in_(utc) == null ? null : _tm.in_(utc).__copy__()));
        _no(((("tm.Local()" : GoString))), (_tm.local() == null ? null : _tm.local().__copy__()));
        _no(((("tm.UTC()" : GoString))), (_tm.utc() == null ? null : _tm.utc().__copy__()));
        _no(((("tm.Round(2)" : GoString))), (_tm.round(((2 : GoInt64))) == null ? null : _tm.round(((2 : GoInt64))).__copy__()));
        _no(((("tm.Truncate(2)" : GoString))), (_tm.truncate(((2 : GoInt64))) == null ? null : _tm.truncate(((2 : GoInt64))).__copy__()));
    }
function testMonotonicAdd(_t:stdgo.testing.Testing.T_):Void {
        var _tm:Time = (unix(((1486057371 : GoInt64)), ((123456 : GoInt64))) == null ? null : unix(((1486057371 : GoInt64)), ((123456 : GoInt64))).__copy__());
        setMono(_tm, (("123456789012345" : GoInt64)));
        var _t2:Time = (_tm.add(((1e+08 : GoInt64))) == null ? null : _tm.add(((1e+08 : GoInt64))).__copy__());
        if (_t2.nanosecond() != ((100123456 : GoInt))) {
            _t.errorf(((("t2.Nanosecond() = %d, want 100123456" : GoString))), Go.toInterface(_t2.nanosecond()));
        };
        if (getMono(_t2) != (("123456889012345" : GoInt64))) {
            _t.errorf(((("t2.mono = %d, want 123456889012345" : GoString))), Go.toInterface(getMono(_t2)));
        };
        var _t3:Time = (_tm.add((("-9000000000000000000" : GoInt64))) == null ? null : _tm.add((("-9000000000000000000" : GoInt64))).__copy__());
        if (_t3.nanosecond() != ((123456 : GoInt))) {
            _t.errorf(((("t3.Nanosecond() = %d, want 123456" : GoString))), Go.toInterface(_t3.nanosecond()));
        };
        if (getMono(_t3) != ((0 : GoInt64))) {
            _t.errorf(((("t3.mono = %d, want 0 (wall time out of range for monotonic reading)" : GoString))), Go.toInterface(getMono(_t3)));
        };
        var _t4:Time = (_tm.add((("9000000000000000000" : GoInt64))) == null ? null : _tm.add((("9000000000000000000" : GoInt64))).__copy__());
        if (_t4.nanosecond() != ((123456 : GoInt))) {
            _t.errorf(((("t4.Nanosecond() = %d, want 123456" : GoString))), Go.toInterface(_t4.nanosecond()));
        };
        if (getMono(_t4) != ((0 : GoInt64))) {
            _t.errorf(((("t4.mono = %d, want 0 (wall time out of range for monotonic reading)" : GoString))), Go.toInterface(getMono(_t4)));
        };
        var _tn:Time = (now() == null ? null : now().__copy__());
        var _tn1:Time = (_tn.add((("3600000000000" : GoInt64))) == null ? null : _tn.add((("3600000000000" : GoInt64))).__copy__());
        sleep(((100000000 : GoInt64)));
        var _d:Duration = until((_tn1 == null ? null : _tn1.__copy__()));
        if (_d < (("3540000000000" : GoInt64))) {
            _t.errorf(((("Until(Now().Add(1*Hour)) = %v, wanted at least 59m" : GoString))), Go.toInterface(_d));
        };
        var _now:Time = (now() == null ? null : now().__copy__());
        if (_now.after((_tn1 == null ? null : _tn1.__copy__()))) {
            _t.errorf(((("Now().After(Now().Add(1*Hour)) = true, want false" : GoString))));
        };
        if (!_tn1.after((_now == null ? null : _now.__copy__()))) {
            _t.errorf(((("Now().Add(1*Hour).After(now) = false, want true" : GoString))));
        };
        if (_tn1.before((_now == null ? null : _now.__copy__()))) {
            _t.errorf(((("Now().Add(1*Hour).Before(Now()) = true, want false" : GoString))));
        };
        if (!_now.before((_tn1 == null ? null : _tn1.__copy__()))) {
            _t.errorf(((("Now().Before(Now().Add(1*Hour)) = false, want true" : GoString))));
        };
    }
function testMonotonicSub(_t:stdgo.testing.Testing.T_):Void {
        var _t1:Time = (unix(((1483228799 : GoInt64)), ((9.95e+08 : GoInt64))) == null ? null : unix(((1483228799 : GoInt64)), ((9.95e+08 : GoInt64))).__copy__());
        setMono(_t1, (("123456789012345" : GoInt64)));
        var _t2:Time = (unix(((1483228799 : GoInt64)), ((5e+06 : GoInt64))) == null ? null : unix(((1483228799 : GoInt64)), ((5e+06 : GoInt64))).__copy__());
        setMono(_t2, (("123456799012345" : GoInt64)));
        var _t3:Time = (unix(((1483228799 : GoInt64)), ((9.95e+08 : GoInt64))) == null ? null : unix(((1483228799 : GoInt64)), ((9.95e+08 : GoInt64))).__copy__());
        setMono(_t3, (("123457789012345" : GoInt64)));
        var _t1w:Time = (_t1.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _t1.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__());
        if (getMono(_t1w) != ((0 : GoInt64))) {
            _t.fatalf(((("AddDate didn\'t strip monotonic clock reading" : GoString))));
        };
        var _t2w:Time = (_t2.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _t2.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__());
        if (getMono(_t2w) != ((0 : GoInt64))) {
            _t.fatalf(((("AddDate didn\'t strip monotonic clock reading" : GoString))));
        };
        var _t3w:Time = (_t3.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _t3.addDate(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__());
        if (getMono(_t3w) != ((0 : GoInt64))) {
            _t.fatalf(((("AddDate didn\'t strip monotonic clock reading" : GoString))));
        };
        var _sub:(GoString, GoString, Time, Time, Time, Time, Duration, Duration) -> Void = function(_txs:GoString, _tys:GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _d:Duration, _dw:Duration):Void {
            var _check:(GoString, Duration, Duration) -> Void = function(_expr:GoString, _d:Duration, _want:Duration):Void {
                if (_d != _want) {
                    _t.errorf(((("%s = %v, want %v" : GoString))), Go.toInterface(_expr), Go.toInterface(_d), Go.toInterface(_want));
                };
            };
            _check(((_txs + (((".Sub(" : GoString)))) + _tys) + (((")" : GoString))), _tx.sub((_ty == null ? null : _ty.__copy__())), _d);
            _check(((_txs + ((("w.Sub(" : GoString)))) + _tys) + (((")" : GoString))), _txw.sub((_ty == null ? null : _ty.__copy__())), _dw);
            _check(((_txs + (((".Sub(" : GoString)))) + _tys) + ((("w)" : GoString))), _tx.sub((_tyw == null ? null : _tyw.__copy__())), _dw);
            _check(((_txs + ((("w.Sub(" : GoString)))) + _tys) + ((("w)" : GoString))), _txw.sub((_tyw == null ? null : _tyw.__copy__())), _dw);
        };
        _sub(((("t1" : GoString))), ((("t1" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((0 : GoInt64)), ((0 : GoInt64)));
        _sub(((("t1" : GoString))), ((("t2" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((-10000000 : GoInt64)), ((990000000 : GoInt64)));
        _sub(((("t1" : GoString))), ((("t3" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((-1000000000 : GoInt64)), ((0 : GoInt64)));
        _sub(((("t2" : GoString))), ((("t1" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((10000000 : GoInt64)), ((-990000000 : GoInt64)));
        _sub(((("t2" : GoString))), ((("t2" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((0 : GoInt64)), ((0 : GoInt64)));
        _sub(((("t2" : GoString))), ((("t3" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((-990000000 : GoInt64)), ((-990000000 : GoInt64)));
        _sub(((("t3" : GoString))), ((("t1" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((1000000000 : GoInt64)), ((0 : GoInt64)));
        _sub(((("t3" : GoString))), ((("t2" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((990000000 : GoInt64)), ((990000000 : GoInt64)));
        _sub(((("t3" : GoString))), ((("t3" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((0 : GoInt64)), ((0 : GoInt64)));
        var _cmp:(GoString, GoString, Time, Time, Time, Time, GoInt, GoInt) -> Void = function(_txs:GoString, _tys:GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _c:GoInt, _cw:GoInt):Void {
            var _check:(GoString, Bool, Bool) -> Void = function(_expr:GoString, _b:Bool, _want:Bool):Void {
                if (_b != _want) {
                    _t.errorf(((("%s = %v, want %v" : GoString))), Go.toInterface(_expr), Go.toInterface(_b), Go.toInterface(_want));
                };
            };
            _check(((_txs + (((".After(" : GoString)))) + _tys) + (((")" : GoString))), _tx.after((_ty == null ? null : _ty.__copy__())), _c > ((0 : GoInt)));
            _check(((_txs + ((("w.After(" : GoString)))) + _tys) + (((")" : GoString))), _txw.after((_ty == null ? null : _ty.__copy__())), _cw > ((0 : GoInt)));
            _check(((_txs + (((".After(" : GoString)))) + _tys) + ((("w)" : GoString))), _tx.after((_tyw == null ? null : _tyw.__copy__())), _cw > ((0 : GoInt)));
            _check(((_txs + ((("w.After(" : GoString)))) + _tys) + ((("w)" : GoString))), _txw.after((_tyw == null ? null : _tyw.__copy__())), _cw > ((0 : GoInt)));
            _check(((_txs + (((".Before(" : GoString)))) + _tys) + (((")" : GoString))), _tx.before((_ty == null ? null : _ty.__copy__())), _c < ((0 : GoInt)));
            _check(((_txs + ((("w.Before(" : GoString)))) + _tys) + (((")" : GoString))), _txw.before((_ty == null ? null : _ty.__copy__())), _cw < ((0 : GoInt)));
            _check(((_txs + (((".Before(" : GoString)))) + _tys) + ((("w)" : GoString))), _tx.before((_tyw == null ? null : _tyw.__copy__())), _cw < ((0 : GoInt)));
            _check(((_txs + ((("w.Before(" : GoString)))) + _tys) + ((("w)" : GoString))), _txw.before((_tyw == null ? null : _tyw.__copy__())), _cw < ((0 : GoInt)));
            _check(((_txs + (((".Equal(" : GoString)))) + _tys) + (((")" : GoString))), _tx.equal((_ty == null ? null : _ty.__copy__())), _c == ((0 : GoInt)));
            _check(((_txs + ((("w.Equal(" : GoString)))) + _tys) + (((")" : GoString))), _txw.equal((_ty == null ? null : _ty.__copy__())), _cw == ((0 : GoInt)));
            _check(((_txs + (((".Equal(" : GoString)))) + _tys) + ((("w)" : GoString))), _tx.equal((_tyw == null ? null : _tyw.__copy__())), _cw == ((0 : GoInt)));
            _check(((_txs + ((("w.Equal(" : GoString)))) + _tys) + ((("w)" : GoString))), _txw.equal((_tyw == null ? null : _tyw.__copy__())), _cw == ((0 : GoInt)));
        };
        _cmp(((("t1" : GoString))), ((("t1" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((0 : GoInt)), ((0 : GoInt)));
        _cmp(((("t1" : GoString))), ((("t2" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((-1 : GoInt)), ((1 : GoInt)));
        _cmp(((("t1" : GoString))), ((("t3" : GoString))), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((-1 : GoInt)), ((0 : GoInt)));
        _cmp(((("t2" : GoString))), ((("t1" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((1 : GoInt)), ((-1 : GoInt)));
        _cmp(((("t2" : GoString))), ((("t2" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((0 : GoInt)), ((0 : GoInt)));
        _cmp(((("t2" : GoString))), ((("t3" : GoString))), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((-1 : GoInt)), ((-1 : GoInt)));
        _cmp(((("t3" : GoString))), ((("t1" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), ((1 : GoInt)), ((0 : GoInt)));
        _cmp(((("t3" : GoString))), ((("t2" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), ((1 : GoInt)), ((1 : GoInt)));
        _cmp(((("t3" : GoString))), ((("t3" : GoString))), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), ((0 : GoInt)), ((0 : GoInt)));
    }
function testMonotonicOverflow(_t:stdgo.testing.Testing.T_):Void {
        var _t1:Time = (now().add((("-30000000000" : GoInt64))) == null ? null : now().add((("-30000000000" : GoInt64))).__copy__());
        var _d:Duration = until((_t1 == null ? null : _t1.__copy__()));
        if ((_d < (("-35000000000" : GoInt64))) || ((("-30000000000" : GoInt64)) < _d)) {
            _t.errorf(((("Until(Now().Add(-30s)) = %v, want roughly -30s (-35s to -30s)" : GoString))), Go.toInterface(_d));
        };
        _t1 = (now().add((("30000000000" : GoInt64))) == null ? null : now().add((("30000000000" : GoInt64))).__copy__());
        _d = until((_t1 == null ? null : _t1.__copy__()));
        if ((_d < (("25000000000" : GoInt64))) || ((("30000000000" : GoInt64)) < _d)) {
            _t.errorf(((("Until(Now().Add(-30s)) = %v, want roughly 30s (25s to 30s)" : GoString))), Go.toInterface(_d));
        };
        var _t0:Time = (now() == null ? null : now().__copy__());
        _t1 = (_t0.add((((("9223372036854775807" : GoInt64)) : Duration))) == null ? null : _t0.add((((("9223372036854775807" : GoInt64)) : Duration))).__copy__());
        if (getMono(_t1) != ((0 : GoInt64))) {
            _t.errorf(((("Now().Add(maxDuration) has monotonic clock reading (%v => %v %d %d)" : GoString))), Go.toInterface(((_t0.toString() : GoString))), Go.toInterface(((_t1.toString() : GoString))), Go.toInterface(_t0.unix()), Go.toInterface(_t1.unix()));
        };
        var _t2:Time = (_t1.add((("-9223372036854775807" : GoInt64))) == null ? null : _t1.add((("-9223372036854775807" : GoInt64))).__copy__());
        _d = since((_t2 == null ? null : _t2.__copy__()));
        if ((_d < (("-10000000000" : GoInt64))) || ((("10000000000" : GoInt64)) < _d)) {
            _t.errorf(((("Since(Now().Add(max).Add(-max)) = %v, want [-10s, 10s]" : GoString))), Go.toInterface(_d));
        };
        _t0 = (now() == null ? null : now().__copy__());
        _t1 = (_t0.add((("3600000000000" : GoInt64))) == null ? null : _t0.add((("3600000000000" : GoInt64))).__copy__());
        sleep(((100000000 : GoInt64)));
        _t2 = (now().add((("-5000000000" : GoInt64))) == null ? null : now().add((("-5000000000" : GoInt64))).__copy__());
        if (!_t1.after((_t2 == null ? null : _t2.__copy__()))) {
            _t.errorf(((("Now().Add(1*Hour).After(Now().Add(-5*Second)) = false, want true\nt1=%v\nt2=%v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
        };
        if (_t2.after((_t1 == null ? null : _t1.__copy__()))) {
            _t.errorf(((("Now().Add(-5*Second).After(Now().Add(1*Hour)) = true, want false\nt1=%v\nt2=%v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
        };
        if (_t1.before((_t2 == null ? null : _t2.__copy__()))) {
            _t.errorf(((("Now().Add(1*Hour).Before(Now().Add(-5*Second)) = true, want false\nt1=%v\nt2=%v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
        };
        if (!_t2.before((_t1 == null ? null : _t1.__copy__()))) {
            _t.errorf(((("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = false, want true\nt1=%v\nt2=%v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t2));
        };
    }
function testMonotonicString(_t:stdgo.testing.Testing.T_):Void {
        var _t1:Time = (now() == null ? null : now().__copy__());
        _t.logf(((("Now() = %v" : GoString))), Go.toInterface(_t1));
        for (_0 => _tt in _monotonicStringTests) {
            var _t1:Time = (now() == null ? null : now().__copy__());
            setMono(_t1, _tt._mono);
            var _s:GoString = ((_t1.toString() : GoString));
            var _got:GoString = ((_s.__slice__(stdgo.strings.Strings.lastIndex(_s, (((" " : GoString)))) + ((1 : GoInt))) : GoString));
            if (_got != _tt._want) {
                _t.errorf(((("with mono=%d: got %q; want %q" : GoString))), Go.toInterface(_tt._mono), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testSleep(_t:stdgo.testing.Testing.T_):Void {
        {};
        Go.routine(() -> {
            var a = function():Void {
                sleep(((50000000 : GoInt64)));
                interrupt();
            };
            a();
        });
        var _start:Time = (now() == null ? null : now().__copy__());
        sleep(((100000000 : GoInt64)));
        var _delayadj:Duration = ((100000000 : GoInt64));
        if (false) {
            _delayadj = _delayadj - (((17000000 : GoInt64)));
        };
        var _duration:Duration = now().sub((_start == null ? null : _start.__copy__()));
        if (_duration < _delayadj) {
            _t.fatalf(((("Sleep(%s) slept for only %s" : GoString))), Go.toInterface(((100000000 : GoInt64))), Go.toInterface(_duration));
        };
    }
function testAfterFunc(_t:stdgo.testing.Testing.T_):Void {
        var _i:GoInt = ((10 : GoInt));
        var _c:Chan<Bool> = new Chan<Bool>(0, () -> false);
        var _f:() -> Void = null;
        _f = function():Void {
            _i--;
            if (_i >= ((0 : GoInt))) {
                afterFunc(((0 : GoInt64)), _f);
                sleep(((1000000000 : GoInt64)));
            } else {
                _c.__send__(true);
            };
        };
        afterFunc(((0 : GoInt64)), _f);
        _c.__get__();
    }
function testAfterStress(_t:stdgo.testing.Testing.T_):Void {
        var _stop:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        Go.routine(() -> {
            var a = function():Void {
                while (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_stop)) == ((0 : GoUInt32))) {
                    stdgo.runtime.Runtime.gc();
                    sleep(((1 : GoInt64)));
                };
            };
            a();
        });
        var _ticker:Ref<Ticker> = newTicker(((1 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                _ticker.c.__get__();
            });
        };
        _ticker.stop();
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_stop), ((1 : GoUInt32)));
    }
function _benchmark(_b:stdgo.testing.Testing.B, _bench:(_n:GoInt) -> Void):Void {
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        var _garbageAll:Slice<Slice<Ref<Timer>>> = new Slice<Slice<Ref<Timer>>>(...[for (i in 0 ... ((stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) : GoInt)).toBasic()) ((null : Slice<Ref<Timer>>))]);
        for (_i => _ in _garbageAll) {
            _wg.add(((1 : GoInt)));
            Go.routine(() -> {
                var a = function(_i:GoInt):Void {
                    __deferstack__.unshift(() -> _wg.done());
                    var _garbage:Slice<Ref<Timer>> = new Slice<Ref<Timer>>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((null : Ref<Timer>))]);
                    for (_j => _ in _garbage) {
                        if (_garbage != null) _garbage[_j] = afterFunc((("3600000000000" : GoInt64)), null);
                    };
                    if (_garbageAll != null) _garbageAll[_i] = _garbage;
                };
                a(_i);
            });
        };
        _wg.wait();
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            while (_pb.next()) {
                _bench(((1000 : GoInt)));
            };
        });
        _b.stopTimer();
        for (_0 => _garbage in _garbageAll) {
            for (_1 => _t in _garbage) {
                _t.stop();
            };
        };
    }
function benchmarkAfterFunc(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _c:Chan<Bool> = new Chan<Bool>(0, () -> false);
            var _f:() -> Void = null;
            _f = function():Void {
                _n--;
                if (_n >= ((0 : GoInt))) {
                    afterFunc(((0 : GoInt64)), _f);
                } else {
                    _c.__send__(true);
                };
            };
            afterFunc(((0 : GoInt64)), _f);
            _c.__get__();
        });
    }
function benchmarkAfter(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    after(((1 : GoInt64))).__get__();
                });
            };
        });
    }
function benchmarkStop(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    newTimer(((1000000000 : GoInt64))).stop();
                });
            };
        });
    }
function benchmarkSimultaneousAfterFunc(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
            _wg.add(_n);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    afterFunc(((0 : GoInt64)), _wg.done);
                });
            };
            _wg.wait();
        });
    }
function benchmarkStartStop(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _timers:Slice<Ref<Timer>> = new Slice<Ref<Timer>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Ref<Timer>))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    if (_timers != null) _timers[_i] = afterFunc((("3600000000000" : GoInt64)), null);
                });
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    (_timers != null ? _timers[_i] : ((null : Ref<Timer>))).stop();
                });
            };
        });
    }
function benchmarkReset(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _t:Ref<Timer> = newTimer((("3600000000000" : GoInt64)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    _t.reset((("3600000000000" : GoInt64)));
                });
            };
            _t.stop();
        });
    }
function benchmarkSleep(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
            _wg.add(_n);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            sleep(((1 : GoInt64)));
                            _wg.done();
                        };
                        a();
                    });
                });
            };
            _wg.wait();
        });
    }
function testAfter(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _start:Time = (now() == null ? null : now().__copy__());
        var _end:Time = (after(((100000000 : GoInt64))).__get__() == null ? null : after(((100000000 : GoInt64))).__get__().__copy__());
        var _delayadj:Duration = ((100000000 : GoInt64));
        if (false) {
            _delayadj = _delayadj - (((17000000 : GoInt64)));
        };
        {
            var _duration:Duration = now().sub((_start == null ? null : _start.__copy__()));
            if (_duration < _delayadj) {
                _t.fatalf(((("After(%s) slept for only %d ns" : GoString))), Go.toInterface(((100000000 : GoInt64))), Go.toInterface(_duration));
            };
        };
        {
            var _min:Time = (_start.add(_delayadj) == null ? null : _start.add(_delayadj).__copy__());
            if (_end.before((_min == null ? null : _min.__copy__()))) {
                _t.fatalf(((("After(%s) expect >= %s, got %s" : GoString))), Go.toInterface(((100000000 : GoInt64))), Go.toInterface(_min), Go.toInterface(_end));
            };
        };
    }
function testAfterTick(_t:stdgo.testing.Testing.T_):Void {
        {};
        var delta:Duration = ((100000000 : GoInt64));
        if (stdgo.testing.Testing.short()) {
            delta = ((10000000 : GoInt64));
        };
        var _t0:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                after(delta).__get__();
            });
        };
        var _t1:Time = (now() == null ? null : now().__copy__());
        var _d:Duration = _t1.sub((_t0 == null ? null : _t0.__copy__()));
        var _target:Duration = delta * ((10 : GoInt64));
        if (_d < ((_target * ((9 : GoInt64))) / ((10 : GoInt64)))) {
            _t.fatalf(((("%d ticks of %s too fast: took %s, expected %s" : GoString))), Go.toInterface(((10 : GoInt))), Go.toInterface(delta), Go.toInterface(_d), Go.toInterface(_target));
        };
        if (!stdgo.testing.Testing.short() && (_d > ((_target * ((30 : GoInt64))) / ((10 : GoInt64))))) {
            _t.fatalf(((("%d ticks of %s too slow: took %s, expected %s" : GoString))), Go.toInterface(((10 : GoInt))), Go.toInterface(delta), Go.toInterface(_d), Go.toInterface(_target));
        };
    }
function testAfterStop(_t:stdgo.testing.Testing.T_):Void {
        var _errs:Slice<GoString> = ((null : Slice<GoString>));
        var _logErrs:() -> Void = function():Void {
            for (_0 => _e in _errs) {
                _t.log(Go.toInterface(_e));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                afterFunc(((100000000 : GoInt64)), function():Void {});
                var _t0:Ref<Timer> = newTimer(((50000000 : GoInt64)));
                var _c1:Chan<Bool> = new Chan<Bool>(((((1 : GoInt)) : GoInt)).toBasic(), () -> false);
                var _t1:Ref<Timer> = afterFunc(((150000000 : GoInt64)), function():Void {
                    _c1.__send__(true);
                });
                var _c2:Chan<Time> = after(((200000000 : GoInt64)));
                if (!_t0.stop()) {
                    _errs = (_errs != null ? _errs.__append__(((("failed to stop event 0" : GoString)))) : new Slice<GoString>(((("failed to stop event 0" : GoString)))));
                    continue;
                };
                if (!_t1.stop()) {
                    _errs = (_errs != null ? _errs.__append__(((("failed to stop event 1" : GoString)))) : new Slice<GoString>(((("failed to stop event 1" : GoString)))));
                    continue;
                };
                _c2.__get__();
                Go.select([_c1.__get__() => {
                    _errs = (_errs != null ? _errs.__append__(((("event 1 was not stopped" : GoString)))) : new Slice<GoString>(((("event 1 was not stopped" : GoString)))));
                    continue;
                }, _t0.c.__get__() => {
                    _errs = (_errs != null ? _errs.__append__(((("event 0 was not stopped" : GoString)))) : new Slice<GoString>(((("event 0 was not stopped" : GoString)))));
                    continue;
                }, {}]);
                if (_t1.stop()) {
                    _errs = (_errs != null ? _errs.__append__(((("Stop returned true twice" : GoString)))) : new Slice<GoString>(((("Stop returned true twice" : GoString)))));
                    continue;
                };
                if ((_errs != null ? _errs.length : ((0 : GoInt))) > ((0 : GoInt))) {
                    _t.logf(((("saw %d errors, ignoring to avoid flakiness" : GoString))), Go.toInterface((_errs != null ? _errs.length : ((0 : GoInt)))));
                    _logErrs();
                };
                return;
            });
        };
        _t.errorf(((("saw %d errors" : GoString))), Go.toInterface((_errs != null ? _errs.length : ((0 : GoInt)))));
        _logErrs();
    }
function testAfterQueuing(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _err:stdgo.Error = stdgo.errors.Errors.new_(((("!=nil" : GoString))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < ((5 : GoInt))) && (_err != null), _i++, {
                var _delta:Duration = (((((20 : GoInt)) + (_i * ((50 : GoInt)))) : Duration)) * ((1000000 : GoInt64));
                {
                    _err = _testAfterQueuing(_delta);
                    if (_err != null) {
                        _t.logf(((("attempt %v failed: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                    };
                };
            });
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
function _await(_slot:GoInt, _result:Chan<T_afterResult>, _ac:Chan<Time>):Void {
        _result.__send__(((new stdgo.time_test.Time_test.T_afterResult(_slot, (_ac.__get__() == null ? null : _ac.__get__().__copy__())) : stdgo.time_test.Time_test.T_afterResult)));
    }
function _testAfterQueuing(_delta:Duration):Error {
        var _result:Chan<stdgo.time_test.Time_test.T_afterResult> = new Chan<stdgo.time_test.Time_test.T_afterResult>((((_slots != null ? _slots.length : ((0 : GoInt))) : GoInt)).toBasic(), () -> new stdgo.time_test.Time_test.T_afterResult());
        var _t0:Time = (now() == null ? null : now().__copy__());
        for (_0 => _slot in _slots) {
            Go.routine(() -> _await(_slot, _result, after(((_slot : Duration)) * _delta)));
        };
        var _order:Slice<GoInt> = ((null : Slice<GoInt>));
        var _times:Slice<Time> = ((null : Slice<Time>));
        for (_ => _ in _slots) {
            var _r:stdgo.time_test.Time_test.T_afterResult = (_result.__get__() == null ? null : _result.__get__().__copy__());
            _order = (_order != null ? _order.__append__(_r._slot) : new Slice<GoInt>(_r._slot));
            _times = (_times != null ? _times.__append__((_r._t == null ? null : _r._t.__copy__())) : new Slice<Time>((_r._t == null ? null : _r._t.__copy__())));
        };
        for (_i => _ in _order) {
            if ((_i > ((0 : GoInt))) && ((_order != null ? _order[_i] : ((0 : GoInt))) < (_order != null ? _order[_i - ((1 : GoInt))] : ((0 : GoInt))))) {
                return stdgo.fmt.Fmt.errorf(((("After calls returned out of order: %v" : GoString))), Go.toInterface(_order));
            };
        };
        for (_i => _t in _times) {
            var _dt:Duration = _t.sub((_t0 == null ? null : _t0.__copy__()));
            var _target:Duration = (((_order != null ? _order[_i] : ((0 : GoInt))) : Duration)) * _delta;
            if ((_dt < (_target - (_delta / ((2 : GoInt64))))) || (_dt > (_target + (_delta * ((10 : GoInt64)))))) {
                return stdgo.fmt.Fmt.errorf(((("After(%s) arrived at %s, expected [%s,%s]" : GoString))), Go.toInterface(_target), Go.toInterface(_dt), Go.toInterface(_target - (_delta / ((2 : GoInt64)))), Go.toInterface(_target + (_delta * ((10 : GoInt64)))));
            };
        };
        return ((null : stdgo.Error));
    }
function testTimerStopStress(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            return;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        var _timer:Ref<Timer> = afterFunc(((2000000000 : GoInt64)), function():Void {
                            _t.errorf(((("timer %d was not stopped" : GoString))), Go.toInterface(_i));
                        });
                        sleep(((1000000000 : GoInt64)));
                        _timer.stop();
                    };
                    a(_i);
                });
            });
        };
        sleep((("3000000000" : GoInt64)));
    }
function testSleepZeroDeadlock(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs(((4 : GoInt)));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var _c:Chan<Bool> = new Chan<Bool>(0, () -> false);
            Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < ((100 : GoInt)), _i++, {
                            stdgo.runtime.Runtime.gc();
                        });
                    };
                    _c.__send__(true);
                };
                a();
            });
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((100 : GoInt)), _i++, {
                    sleep(((0 : GoInt64)));
                    var _tmp:Chan<Bool> = new Chan<Bool>(((((1 : GoInt)) : GoInt)).toBasic(), () -> false);
                    _tmp.__send__(true);
                    _tmp.__get__();
                });
            };
            _c.__get__();
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
function _testReset(_d:Duration):Error {
        var _t0:Ref<Timer> = newTimer(((2 : GoInt64)) * _d);
        sleep(_d);
        if (!_t0.reset(((3 : GoInt64)) * _d)) {
            return stdgo.errors.Errors.new_(((("resetting unfired timer returned false" : GoString))));
        };
        sleep(((2 : GoInt64)) * _d);
        Go.select([_t0.c.__get__() => {
            return stdgo.errors.Errors.new_(((("timer fired early" : GoString))));
        }, {}]);
        sleep(((2 : GoInt64)) * _d);
        Go.select([_t0.c.__get__() => {}, {
            return stdgo.errors.Errors.new_(((("reset timer did not fire" : GoString))));
        }]);
        if (_t0.reset(((50000000 : GoInt64)))) {
            return stdgo.errors.Errors.new_(((("resetting expired timer returned true" : GoString))));
        };
        return ((null : stdgo.Error));
    }
function testReset(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _tries:Slice<Duration> = ((new Slice<Duration>(((25000000 : GoInt64)), ((75000000 : GoInt64)), ((175000000 : GoInt64)), ((375000000 : GoInt64))) : Slice<Duration>));
        var _err:Error = ((null : stdgo.Error));
        for (_0 => _d in _tries) {
            _err = _testReset(_d);
            if (_err == null) {
                _t.logf(((("passed using duration %v" : GoString))), Go.toInterface(_d));
                return;
            };
        };
        _t.error(Go.toInterface(_err));
    }
function testOverflowSleep(_t:stdgo.testing.Testing.T_):Void {
        {};
        Go.routine(() -> {
            var a = function():Void {
                sleep((("9223372036854775807" : GoInt64)));
                throw Go.toInterface(((("big sleep returned" : GoString))));
            };
            a();
        });
        Go.select([after(((25000000 : GoInt64))).__get__() => {}, after((("9223372036854775807" : GoInt64))).__get__() => {
            _t.fatalf(((("big timeout fired" : GoString))));
        }]);
        {};
        sleep((("-9223372036854775808" : GoInt64)));
        Go.select([after(((1000000000 : GoInt64))).__get__() => {
            _t.fatalf(((("negative timeout didn\'t fire" : GoString))));
        }, after((("-9223372036854775808" : GoInt64))).__get__() => {}]);
    }
function testIssue5745(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ticker:Ref<Ticker> = newTicker((("3600000000000" : GoInt64)));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _ticker.stop();
                    {
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_r == null) {
                            _t.error(Go.toInterface(((("Expected panic, but none happened." : GoString)))));
                        };
                    };
                };
                a();
            });
            var _timer:Timer = ((null : Ref<Timer>));
            _timer.stop();
            _t.error(Go.toInterface(((("Should be unreachable." : GoString)))));
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
function testOverflowPeriodRuntimeTimer(_t:stdgo.testing.Testing.T_):Void {
        checkRuntimeTimerPeriodOverflow();
    }
function _checkZeroPanicString(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var _e:AnyInterface = Go.toInterface(({
            final r = __recover_exception__;
            __recover_exception__ = null;
            r;
        }));
        var __tmp__ = try {
            { value : ((_e.value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _0 = __tmp__.ok;
        {
            var _want:GoString = ((("called on uninitialized Timer" : GoString)));
            if (!stdgo.strings.Strings.contains(_s, _want)) {
                _t.errorf(((("panic = %v; want substring %q" : GoString))), Go.toInterface(_e), Go.toInterface(_want));
            };
        };
    }
function testZeroTimerResetPanics(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _checkZeroPanicString(_a0));
            };
            var _tr:Timer = new Timer();
            _tr.reset(((1 : GoInt64)));
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
function testZeroTimerStopPanics(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _checkZeroPanicString(_a0));
            };
            var _tr:Timer = new Timer();
            _tr.stop();
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
function testZeroTimer(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("-short" : GoString)))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((1000000 : GoInt)), _i++, {
                var _s:Time = (now() == null ? null : now().__copy__());
                var _ti:Ref<Timer> = newTimer(((0 : GoInt64)));
                _ti.c.__get__();
                {
                    var _diff:Duration = since((_s == null ? null : _s.__copy__()));
                    if (_diff > ((2000000000 : GoInt64))) {
                        _t.errorf(((("Expected time to get value from Timer channel in less than 2 sec, took %v" : GoString))), Go.toInterface(_diff));
                    };
                };
            });
        };
    }
function testTimerModifiedEarlier(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                stdgo.internal.testenv.Testenv.skipFlaky(_t, ((50470 : GoInt)));
            };
            var _past:Duration = until((unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()));
            var _count:GoInt = ((1000 : GoInt));
            var _fail:GoInt = ((0 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _count, _i++, {
                    var _timer:Ref<Timer> = newTimer((("3600000000000" : GoInt64)));
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < ((10 : GoInt)), _j++, {
                            if (!_timer.stop()) {
                                _timer.c.__get__();
                            };
                            _timer.reset(_past);
                        });
                    };
                    var _deadline:Ref<Timer> = newTimer((("10000000000" : GoInt64)));
                    __deferstack__.unshift(() -> _deadline.stop());
                    var _now:Time = (now() == null ? null : now().__copy__());
                    Go.select([_deadline.c.__get__() => {
                        _t.error(Go.toInterface(((("deadline expired" : GoString)))));
                    }, _timer.c.__get__() => {
                        {
                            var _since:Duration = since((_now == null ? null : _now.__copy__()));
                            if (_since > (("8000000000" : GoInt64))) {
                                _t.errorf(((("timer took too long (%v)" : GoString))), Go.toInterface(_since));
                                _fail++;
                            };
                        };
                    }]);
                });
            };
            if (_fail > ((0 : GoInt))) {
                _t.errorf(((("%d failures" : GoString))), Go.toInterface(_fail));
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
function testAdjustTimers(_t:stdgo.testing.Testing.T_):Void {
        var _rnd:Ref<stdgo.math.rand.Rand.Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(now().unixNano()));
        var _timers:Slice<Ref<Timer>> = new Slice<Ref<Timer>>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((null : Ref<Timer>))]);
        var _states:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... (((_timers != null ? _timers.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoInt))]);
        var _indices:Slice<GoInt> = _rnd.perm((_timers != null ? _timers.length : ((0 : GoInt))));
        while ((_indices != null ? _indices.length : ((0 : GoInt))) != ((0 : GoInt))) {
            var _ii:GoInt = _rnd.intn((_indices != null ? _indices.length : ((0 : GoInt))));
            var _i:GoInt = (_indices != null ? _indices[_ii] : ((0 : GoInt)));
            var _timer:Ref<Timer> = (_timers != null ? _timers[_i] : ((null : Ref<Timer>)));
            var _state:GoInt = (_states != null ? _states[_i] : ((0 : GoInt)));
            if (_states != null) _states[_i]++;
            if (_state == ((0 : GoInt))) {
                if (_timers != null) _timers[_i] = newTimer(((0 : GoInt64)));
            } else if (_state == ((1 : GoInt))) {
                _timer.c.__get__();
            } else if (_state == ((2 : GoInt))) {
                if (_timer.reset((("60000000000" : GoInt64)))) {
                    throw Go.toInterface(((("shouldn\'t be active (1)" : GoString))));
                };
            } else if (_state == ((4 : GoInt))) {
                if (_timer.reset((("180000000000" : GoInt64)))) {
                    throw Go.toInterface(((("shouldn\'t be active (3)" : GoString))));
                };
            } else if (_state == ((6 : GoInt))) {
                if (_timer.reset((("120000000000" : GoInt64)))) {
                    throw Go.toInterface(((("shouldn\'t be active (2)" : GoString))));
                };
            } else if (_state == ((3 : GoInt)) || _state == ((5 : GoInt)) || _state == ((7 : GoInt))) {
                if (!_timer.stop()) {
                    _t.logf(((("timer %d state %d Stop returned false" : GoString))), Go.toInterface(_i), Go.toInterface(_state));
                    _timer.c.__get__();
                };
            } else if (_state == ((8 : GoInt))) {
                if (_timer.reset(((0 : GoInt64)))) {
                    _t.fatal(Go.toInterface(((("timer.Reset returned true" : GoString)))));
                };
            } else if (_state == ((9 : GoInt))) {
                var _now:Time = (now() == null ? null : now().__copy__());
                _timer.c.__get__();
                var _dur:Duration = since((_now == null ? null : _now.__copy__()));
                if (_dur > ((750000000 : GoInt64))) {
                    _t.errorf(((("timer %d took %v to complete" : GoString))), Go.toInterface(_i), Go.toInterface(_dur));
                };
            } else if (_state == ((10 : GoInt))) {
                if (_indices != null) _indices[_ii] = (_indices != null ? _indices[(_indices != null ? _indices.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt)));
                _indices = ((_indices.__slice__(0, (_indices != null ? _indices.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoInt>));
            };
        };
    }
function benchmarkParallelTimerLatency(_b:stdgo.testing.Testing.B):Void {
        var _gmp:GoInt = stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt)));
        if ((_gmp < ((2 : GoInt))) || (stdgo.runtime.Runtime.numCPU() < _gmp)) {
            _b.skip(Go.toInterface(((("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : GoString)))));
        };
        var _timerCount:GoInt = _gmp - ((1 : GoInt));
        var _stats:Slice<stdgo.time_test.Time_test.T__struct_7> = new Slice<stdgo.time_test.Time_test.T__struct_7>(...[for (i in 0 ... ((_timerCount : GoInt)).toBasic()) new stdgo.time_test.Time_test.T__struct_7()]);
        _warmupScheduler(_gmp);
        _doWork(((30000000 : GoInt64)));
        _b.resetTimer();
        {};
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        var _count:GoInt32 = ((0 : GoInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _wg.add(_timerCount);
                stdgo.sync.atomic.Atomic.storeInt32(Go.pointer(_count), ((0 : GoInt32)));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _timerCount, _j++, {
                        var _j:GoInt = _j;
                        var _expectedWakeup:Time = (now().add(((1000000 : GoInt64))) == null ? null : now().add(((1000000 : GoInt64))).__copy__());
                        afterFunc(((1000000 : GoInt64)), function():Void {
                            var _late:Duration = since((_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
                            if (_late < ((0 : GoInt64))) {
                                _late = ((0 : GoInt64));
                            };
                            (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._count++;
                            (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._sum = (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._sum + (((_late.nanoseconds() : GoFloat64)));
                            if (_late > (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._max) {
                                (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._max = _late;
                            };
                            stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_count), ((1 : GoInt32)));
                            while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < ((_timerCount : GoInt32))) {};
                            _wg.done();
                        });
                    });
                };
                while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < ((_timerCount : GoInt32))) {};
                _wg.wait();
                _doWork(((1000000 : GoInt64)));
            });
        };
        var _total:GoFloat64 = ((0 : GoFloat64));
        var _samples:GoFloat64 = ((0 : GoFloat64));
        var _max:Duration = ((((0 : GoInt64)) : Duration));
        for (_0 => _s in _stats) {
            if (_s._max > _max) {
                _max = _s._max;
            };
            _total = _total + (_s._sum);
            _samples = _samples + (((_s._count : GoFloat64)));
        };
        _b.reportMetric(((0 : GoFloat64)), ((("ns/op" : GoString))));
        _b.reportMetric(_total / _samples, ((("avg-late-ns" : GoString))));
        _b.reportMetric(((_max.nanoseconds() : GoFloat64)), ((("max-late-ns" : GoString))));
    }
function benchmarkStaggeredTickerLatency(_b:stdgo.testing.Testing.B):Void {
        var _gmp:GoInt = stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt)));
        if ((_gmp < ((2 : GoInt))) || (stdgo.runtime.Runtime.numCPU() < _gmp)) {
            _b.skip(Go.toInterface(((("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : GoString)))));
        };
        {};
        for (_0 => _dur in ((new Slice<Duration>(((300000 : GoInt64)), ((2000000 : GoInt64))) : Slice<Duration>))) {
            _b.run(stdgo.fmt.Fmt.sprintf(((("work-dur=%s" : GoString))), Go.toInterface(_dur)), function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _tickersPerP:GoInt = ((1 : GoInt));
                    Go.cfor(_tickersPerP < ((((((3000000 : GoInt64)) / _dur) : GoInt)) + ((1 : GoInt))), _tickersPerP++, {
                        var _tickerCount:GoInt = _gmp * _tickersPerP;
                        _b.run(stdgo.fmt.Fmt.sprintf(((("tickers-per-P=%d" : GoString))), Go.toInterface(_tickersPerP)), function(_b:stdgo.testing.Testing.B):Void {
                            var _stats:Slice<stdgo.time_test.Time_test.T__struct_7> = new Slice<stdgo.time_test.Time_test.T__struct_7>(...[for (i in 0 ... ((_tickerCount : GoInt)).toBasic()) new stdgo.time_test.Time_test.T__struct_7()]);
                            _warmupScheduler(_gmp);
                            _b.resetTimer();
                            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
                            _wg.add(_tickerCount);
                            {
                                var _j:GoInt = ((0 : GoInt));
                                Go.cfor(_j < _tickerCount, _j++, {
                                    var _j:GoInt = _j;
                                    _doWork(((3000000 : GoInt64)) / ((_gmp : Duration)));
                                    var _expectedWakeup:Time = (now().add(((3000000 : GoInt64))) == null ? null : now().add(((3000000 : GoInt64))).__copy__());
                                    var _ticker:Ref<Ticker> = newTicker(((3000000 : GoInt64)));
                                    Go.routine(() -> {
                                        var a = function(_c:GoInt, _ticker:Ticker, _firstWake:Time):Void {
                                            __deferstack__.unshift(() -> _ticker.stop());
                                            Go.cfor(_c > ((0 : GoInt)), _c--, {
                                                _ticker.c.__get__();
                                                var _late:Duration = since((_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
                                                if (_late < ((0 : GoInt64))) {
                                                    _late = ((0 : GoInt64));
                                                };
                                                (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._count++;
                                                (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._sum = (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._sum + (((_late.nanoseconds() : GoFloat64)));
                                                if (_late > (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._max) {
                                                    (_stats != null ? _stats[_j] : new stdgo.time_test.Time_test.T__struct_7())._max = _late;
                                                };
                                                _expectedWakeup = (_expectedWakeup.add(((3000000 : GoInt64))) == null ? null : _expectedWakeup.add(((3000000 : GoInt64))).__copy__());
                                                _doWork(_dur);
                                            });
                                            _wg.done();
                                        };
                                        a(_b.n, _ticker, (_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
                                    });
                                });
                            };
                            _wg.wait();
                            var _total:GoFloat64 = ((0 : GoFloat64));
                            var _samples:GoFloat64 = ((0 : GoFloat64));
                            var _max:Duration = ((((0 : GoInt64)) : Duration));
                            for (_0 => _s in _stats) {
                                if (_s._max > _max) {
                                    _max = _s._max;
                                };
                                _total = _total + (_s._sum);
                                _samples = _samples + (((_s._count : GoFloat64)));
                            };
                            _b.reportMetric(((0 : GoFloat64)), ((("ns/op" : GoString))));
                            _b.reportMetric(_total / _samples, ((("avg-late-ns" : GoString))));
                            _b.reportMetric(((_max.nanoseconds() : GoFloat64)), ((("max-late-ns" : GoString))));
                        });
                    });
                };
            });
        };
    }
function _warmupScheduler(_targetThreadCount:GoInt):Void {
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        var _count:GoInt32 = ((0 : GoInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _targetThreadCount, _i++, {
                _wg.add(((1 : GoInt)));
                Go.routine(() -> {
                    var a = function():Void {
                        stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_count), ((1 : GoInt32)));
                        while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < ((_targetThreadCount : GoInt32))) {};
                        _doWork(((1000000 : GoInt64)));
                        _wg.done();
                    };
                    a();
                });
            });
        };
        _wg.wait();
    }
function _doWork(_dur:Duration):Void {
        var _start:Time = (now() == null ? null : now().__copy__());
        while (since((_start == null ? null : _start.__copy__())) < _dur) {};
    }
function testTicker(_t:stdgo.testing.Testing.T_):Void {
        var _baseCount:GoInt = ((10 : GoInt));
        var _baseDelta:Duration = ((20000000 : GoInt64));
        if (false) {
            _baseCount = ((6 : GoInt));
            _baseDelta = ((100000000 : GoInt64));
        };
        var _errs:Slice<GoString> = ((null : Slice<GoString>));
        var _logErrs:() -> Void = function():Void {
            for (_0 => _e in _errs) {
                _t.log(Go.toInterface(_e));
            };
        };
        for (_0 => _test in ((new Slice<stdgo.time_test.Time_test.T__struct_8>(((({ _count : _baseCount, _delta : _baseDelta } : stdgo.time_test.Time_test.T__struct_8)) == null ? null : (({ _count : _baseCount, _delta : _baseDelta } : stdgo.time_test.Time_test.T__struct_8)).__copy__()), ((({ _count : ((8 : GoInt)), _delta : ((1000000000 : GoInt64)) } : stdgo.time_test.Time_test.T__struct_8)) == null ? null : (({ _count : ((8 : GoInt)), _delta : ((1000000000 : GoInt64)) } : stdgo.time_test.Time_test.T__struct_8)).__copy__())) : Slice<stdgo.time_test.Time_test.T__struct_8>))) {
            var _count:GoInt = _test._count, _delta:Duration = _test._delta;
            var _ticker:Ref<Ticker> = newTicker(_delta);
            var _t0:Time = (now() == null ? null : now().__copy__());
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_count / ((2 : GoInt))), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.reset(_delta * ((2 : GoInt64)));
            {
                var _i:GoInt = _count / ((2 : GoInt));
                Go.cfor(_i < _count, _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.stop();
            var _t1:Time = (now() == null ? null : now().__copy__());
            var _dt:Duration = _t1.sub((_t0 == null ? null : _t0.__copy__()));
            var _target:Duration = (((3 : GoInt64)) * _delta) * (((_count / ((2 : GoInt))) : Duration));
            var _slop:Duration = (_target * ((3 : GoInt64))) / ((10 : GoInt64));
            if ((_dt < (_target - _slop)) || (_dt > (_target + _slop))) {
                _errs = (_errs != null ? _errs.__append__(stdgo.fmt.Fmt.sprintf(((("%d %s ticks then %d %s ticks took %s, expected [%s,%s]" : GoString))), Go.toInterface(_count / ((2 : GoInt))), Go.toInterface(_delta), Go.toInterface(_count / ((2 : GoInt))), Go.toInterface(_delta * ((2 : GoInt64))), Go.toInterface(_dt), Go.toInterface(_target - _slop), Go.toInterface(_target + _slop))) : new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("%d %s ticks then %d %s ticks took %s, expected [%s,%s]" : GoString))), Go.toInterface(_count / ((2 : GoInt))), Go.toInterface(_delta), Go.toInterface(_count / ((2 : GoInt))), Go.toInterface(_delta * ((2 : GoInt64))), Go.toInterface(_dt), Go.toInterface(_target - _slop), Go.toInterface(_target + _slop))));
                if (_dt > (_target + _slop)) {
                    sleep(((500000000 : GoInt64)));
                };
                continue;
            };
            sleep(((2 : GoInt64)) * _delta);
            Go.select([_ticker.c.__get__() => {
                _errs = (_errs != null ? _errs.__append__(((("Ticker did not shut down" : GoString)))) : new Slice<GoString>(((("Ticker did not shut down" : GoString)))));
                continue;
            }, {}]);
            if ((_errs != null ? _errs.length : ((0 : GoInt))) > ((0 : GoInt))) {
                _t.logf(((("saw %d errors, ignoring to avoid flakiness" : GoString))), Go.toInterface((_errs != null ? _errs.length : ((0 : GoInt)))));
                _logErrs();
            };
            return;
        };
        _t.errorf(((("saw %d errors" : GoString))), Go.toInterface((_errs != null ? _errs.length : ((0 : GoInt)))));
        _logErrs();
    }
function testTickerStopWithDirectInitialization(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<Time> = new Chan<Time>(0, () -> new Time());
        var _tk:Ref<Ticker> = (({ c : _c, _r : new T_runtimeTimer() } : Ticker));
        _tk.stop();
    }
function testTeardown(_t:stdgo.testing.Testing.T_):Void {
        var delta:Duration = ((100000000 : GoInt64));
        if (stdgo.testing.Testing.short()) {
            delta = ((20000000 : GoInt64));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((3 : GoInt)), _i++, {
                var _ticker:Ref<Ticker> = newTicker(delta);
                _ticker.c.__get__();
                _ticker.stop();
            });
        };
    }
function testTick(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:Chan<Time> = tick(((-1 : GoInt64)));
            if (_got != null) {
                _t.errorf(((("Tick(-1) = %v; want nil" : GoString))), Go.toInterface(_got));
            };
        };
    }
function testNewTickerLtZeroDuration(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.errorf(((("NewTicker(-1) should have panicked" : GoString))));
                        };
                    };
                };
                a();
            });
            newTicker(((-1 : GoInt64)));
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
function testTickerResetLtZeroDuration(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.errorf(((("Ticker.Reset(0) should have panicked" : GoString))));
                        };
                    };
                };
                a();
            });
            var _tk:Ref<Ticker> = newTicker(((1000000000 : GoInt64)));
            _tk.reset(((0 : GoInt64)));
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
function benchmarkTicker(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _ticker:Ref<Ticker> = newTicker(((1 : GoInt64)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.stop();
        });
    }
function benchmarkTickerReset(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _ticker:Ref<Ticker> = newTicker(((1 : GoInt64)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    _ticker.reset(((2 : GoInt64)));
                });
            };
            _ticker.stop();
        });
    }
function benchmarkTickerResetNaive(_b:stdgo.testing.Testing.B):Void {
        _benchmark(_b, function(_n:GoInt):Void {
            var _ticker:Ref<Ticker> = newTicker(((1 : GoInt64)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    _ticker.stop();
                    _ticker = newTicker(((2 : GoInt64)));
                });
            };
            _ticker.stop();
        });
    }
function testZoneData(_t:stdgo.testing.Testing.T_):Void {
        var _lt:Time = (now() == null ? null : now().__copy__());
        {
            var __tmp__ = _lt.zone(), _name:GoString = __tmp__._0, _off:GoInt = __tmp__._1;
            if ((_off != ((-28800 : GoInt))) && (_off != ((-25200 : GoInt)))) {
                _t.errorf(((("Unable to find US Pacific time zone data for testing; time zone is %q offset %d" : GoString))), Go.toInterface(_name), Go.toInterface(_off));
                _t.error(Go.toInterface(((("Likely problem: the time zone files have not been installed." : GoString)))));
            };
        };
    }
function _same(_t:Time, _u:T_parsedTime):Bool {
        var __tmp__ = _t.date(), _year:GoInt = __tmp__._0, _month:Month = __tmp__._1, _day:GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:GoInt = __tmp__._0, _min:GoInt = __tmp__._1, _sec:GoInt = __tmp__._2;
        var __tmp__ = _t.zone(), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if ((((((((_year != _u.year) || (_month != _u.month)) || (_day != _u.day)) || (_hour != _u.hour)) || (_min != _u.minute)) || (_sec != _u.second)) || (_name != _u.zone)) || (_offset != _u.zoneOffset)) {
            return false;
        };
        return (((((((_t.year() == _u.year) && (_t.month() == _u.month)) && (_t.day() == _u.day)) && (_t.hour() == _u.hour)) && (_t.minute() == _u.minute)) && (_t.second() == _u.second)) && (_t.nanosecond() == _u.nanosecond)) && (_t.weekday() == _u.weekday);
    }
function testSecondsToUTC(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _utctests) {
            var _sec:GoInt64 = _test._seconds;
            var _golden:Ref<stdgo.time_test.Time_test.T_parsedTime> = _test._golden;
            var _tm:Time = (unix(_sec, ((0 : GoInt64))).utc() == null ? null : unix(_sec, ((0 : GoInt64))).utc().__copy__());
            var _newsec:GoInt64 = _tm.unix();
            if (_newsec != _sec) {
                _t.errorf(((("SecondsToUTC(%d).Seconds() = %d" : GoString))), Go.toInterface(_sec), Go.toInterface(_newsec));
            };
            if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
                _t.errorf(((("SecondsToUTC(%d):  // %#v" : GoString))), Go.toInterface(_sec), Go.toInterface(_tm));
                _t.errorf(((("  want=%+v" : GoString))), Go.toInterface(_golden));
                _t.errorf(((("  have=%v" : GoString))), Go.toInterface(_tm.format(((("2006-01-02T15:04:05Z07:00 MST" : GoString))))));
            };
        };
    }
function testNanosecondsToUTC(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _nanoutctests) {
            var _golden:Ref<stdgo.time_test.Time_test.T_parsedTime> = _test._golden;
            var _nsec:GoInt64 = (_test._seconds * ((1e+09 : GoInt64))) + ((_golden.nanosecond : GoInt64));
            var _tm:Time = (unix(((0 : GoInt64)), _nsec).utc() == null ? null : unix(((0 : GoInt64)), _nsec).utc().__copy__());
            var _newnsec:GoInt64 = (_tm.unix() * ((1e+09 : GoInt64))) + ((_tm.nanosecond() : GoInt64));
            if (_newnsec != _nsec) {
                _t.errorf(((("NanosecondsToUTC(%d).Nanoseconds() = %d" : GoString))), Go.toInterface(_nsec), Go.toInterface(_newnsec));
            };
            if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
                _t.errorf(((("NanosecondsToUTC(%d):" : GoString))), Go.toInterface(_nsec));
                _t.errorf(((("  want=%+v" : GoString))), Go.toInterface(_golden));
                _t.errorf(((("  have=%+v" : GoString))), Go.toInterface(_tm.format(((("2006-01-02T15:04:05Z07:00 MST" : GoString))))));
            };
        };
    }
function testSecondsToLocalTime(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _localtests) {
            var _sec:GoInt64 = _test._seconds;
            var _golden:Ref<stdgo.time_test.Time_test.T_parsedTime> = _test._golden;
            var _tm:Time = (unix(_sec, ((0 : GoInt64))) == null ? null : unix(_sec, ((0 : GoInt64))).__copy__());
            var _newsec:GoInt64 = _tm.unix();
            if (_newsec != _sec) {
                _t.errorf(((("SecondsToLocalTime(%d).Seconds() = %d" : GoString))), Go.toInterface(_sec), Go.toInterface(_newsec));
            };
            if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
                _t.errorf(((("SecondsToLocalTime(%d):" : GoString))), Go.toInterface(_sec));
                _t.errorf(((("  want=%+v" : GoString))), Go.toInterface(_golden));
                _t.errorf(((("  have=%+v" : GoString))), Go.toInterface(_tm.format(((("2006-01-02T15:04:05Z07:00 MST" : GoString))))));
            };
        };
    }
function testNanosecondsToLocalTime(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _nanolocaltests) {
            var _golden:Ref<stdgo.time_test.Time_test.T_parsedTime> = _test._golden;
            var _nsec:GoInt64 = (_test._seconds * ((1e+09 : GoInt64))) + ((_golden.nanosecond : GoInt64));
            var _tm:Time = (unix(((0 : GoInt64)), _nsec) == null ? null : unix(((0 : GoInt64)), _nsec).__copy__());
            var _newnsec:GoInt64 = (_tm.unix() * ((1e+09 : GoInt64))) + ((_tm.nanosecond() : GoInt64));
            if (_newnsec != _nsec) {
                _t.errorf(((("NanosecondsToLocalTime(%d).Seconds() = %d" : GoString))), Go.toInterface(_nsec), Go.toInterface(_newnsec));
            };
            if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
                _t.errorf(((("NanosecondsToLocalTime(%d):" : GoString))), Go.toInterface(_nsec));
                _t.errorf(((("  want=%+v" : GoString))), Go.toInterface(_golden));
                _t.errorf(((("  have=%+v" : GoString))), Go.toInterface(_tm.format(((("2006-01-02T15:04:05Z07:00 MST" : GoString))))));
            };
        };
    }
function testSecondsToUTCAndBack(_t:stdgo.testing.Testing.T_):Void {
        var _f:GoInt64 -> Bool = function(_sec:GoInt64):Bool {
            return unix(_sec, ((0 : GoInt64))).utc().unix() == _sec;
        };
        var _f32:GoInt32 -> Bool = function(_sec:GoInt32):Bool {
            return _f(((_sec : GoInt64)));
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((10000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testNanosecondsToUTCAndBack(_t:stdgo.testing.Testing.T_):Void {
        var _f:GoInt64 -> Bool = function(_nsec:GoInt64):Bool {
            var _t:Time = (unix(((0 : GoInt64)), _nsec).utc() == null ? null : unix(((0 : GoInt64)), _nsec).utc().__copy__());
            var _ns:GoInt64 = (_t.unix() * ((1e+09 : GoInt64))) + ((_t.nanosecond() : GoInt64));
            return _ns == _nsec;
        };
        var _f32:GoInt32 -> Bool = function(_nsec:GoInt32):Bool {
            return _f(((_nsec : GoInt64)));
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((10000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testUnixMilli(_t:stdgo.testing.Testing.T_):Void {
        var _f:GoInt64 -> Bool = function(_msec:GoInt64):Bool {
            var _t:Time = (unixMilli(_msec) == null ? null : unixMilli(_msec).__copy__());
            return _t.unixMilli() == _msec;
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((10000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testUnixMicro(_t:stdgo.testing.Testing.T_):Void {
        var _f:GoInt64 -> Bool = function(_usec:GoInt64):Bool {
            var _t:Time = (unixMicro(_usec) == null ? null : unixMicro(_usec).__copy__());
            return _t.unixMicro() == _usec;
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((10000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function _abs(_t:Time):{ var _0 : GoInt64; var _1 : GoInt64; } {
        var _sec:GoInt64 = ((0 : GoInt64)), _nsec:GoInt64 = ((0 : GoInt64));
        var _unix:GoInt64 = _t.unix();
        var _nano:GoInt = _t.nanosecond();
        return { _0 : _unix + (("62135596800" : GoInt64)), _1 : ((_nano : GoInt64)) };
    }
function _absString(_t:Time):GoString {
        var __tmp__ = _abs((_t == null ? null : _t.__copy__())), _sec:GoInt64 = __tmp__._0, _nsec:GoInt64 = __tmp__._1;
        if (_sec < ((0 : GoInt64))) {
            _sec = -_sec;
            _nsec = -_nsec;
            if (_nsec < ((0 : GoInt64))) {
                _nsec = _nsec + (((1e+09 : GoInt64)));
                _sec--;
            };
            return stdgo.fmt.Fmt.sprintf(((("-%d%09d" : GoString))), Go.toInterface(_sec), Go.toInterface(_nsec));
        };
        return stdgo.fmt.Fmt.sprintf(((("%d%09d" : GoString))), Go.toInterface(_sec), Go.toInterface(_nsec));
    }
function testTruncateRound(_t:stdgo.testing.Testing.T_):Void {
        var _bsec:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _bnsec:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _bd:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _bt:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _br:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _bq:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_(), _b1e9:Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_();
        _b1e9.setInt64(((1e+09 : GoInt64)));
        var _testOne:(GoInt64, GoInt64, GoInt64) -> Bool = function(_ti:GoInt64, _tns:GoInt64, _di:GoInt64):Bool {
            var _t0:Time = (unix(_ti, ((_tns : GoInt64))).utc() == null ? null : unix(_ti, ((_tns : GoInt64))).utc().__copy__());
            var _d:Duration = ((_di : Duration));
            if (_d < ((0 : GoInt64))) {
                _d = -_d;
            };
            if (_d <= ((0 : GoInt64))) {
                _d = ((1 : GoInt64));
            };
            var __tmp__ = _abs((_t0 == null ? null : _t0.__copy__())), _sec:GoInt64 = __tmp__._0, _nsec:GoInt64 = __tmp__._1;
            _bsec.setInt64(_sec);
            _bnsec.setInt64(_nsec);
            _bt.mul(_bsec, _b1e9);
            _bt.add(_bt, _bnsec);
            _bd.setInt64(((_d : GoInt64)));
            _bq.divMod(_bt, _bd, _br);
            var _r:GoInt64 = _br.int64();
            var _t1:Time = (_t0.add(-((_r : Duration))) == null ? null : _t0.add(-((_r : Duration))).__copy__());
            {
                var _trunc:Time = (_t0.truncate(_d) == null ? null : _t0.truncate(_d).__copy__());
                if (_trunc != _t1) {
                    _t.errorf(((("Time.Truncate(%s, %s) = %s, want %s\n%v trunc %v =\n%v want\n%v" : GoString))), Go.toInterface(_t0.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString))))), Go.toInterface(_d), Go.toInterface(_trunc), Go.toInterface(_t1.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString))))), Go.toInterface(_absString((_t0 == null ? null : _t0.__copy__()))), Go.toInterface(((_d : GoInt64))), Go.toInterface(_absString((_trunc == null ? null : _trunc.__copy__()))), Go.toInterface(_absString((_t1 == null ? null : _t1.__copy__()))));
                    return false;
                };
            };
            if ((_r > (((_d : GoInt64)) / ((2 : GoInt64)))) || ((_r + _r) == ((_d : GoInt64)))) {
                _t1 = (_t1.add(((_d : Duration))) == null ? null : _t1.add(((_d : Duration))).__copy__());
            };
            {
                var _rnd:Time = (_t0.round(_d) == null ? null : _t0.round(_d).__copy__());
                if (_rnd != _t1) {
                    _t.errorf(((("Time.Round(%s, %s) = %s, want %s\n%v round %v =\n%v want\n%v" : GoString))), Go.toInterface(_t0.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString))))), Go.toInterface(_d), Go.toInterface(_rnd), Go.toInterface(_t1.format(((("2006-01-02T15:04:05.999999999Z07:00" : GoString))))), Go.toInterface(_absString((_t0 == null ? null : _t0.__copy__()))), Go.toInterface(((_d : GoInt64))), Go.toInterface(_absString((_rnd == null ? null : _rnd.__copy__()))), Go.toInterface(_absString((_t1 == null ? null : _t1.__copy__()))));
                    return false;
                };
            };
            return true;
        };
        for (_0 => _tt in _truncateRoundTests) {
            _testOne(_tt._t.unix(), ((_tt._t.nanosecond() : GoInt64)), ((_tt._d : GoInt64)));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j < ((100 : GoInt)), _j++, {
                        _testOne((("62135596800" : GoInt64)), ((_i : GoInt64)), ((_j : GoInt64)));
                        _testOne((("62135596800" : GoInt64)), -((_i : GoInt64)), ((_j : GoInt64)));
                        if (_t.failed()) {
                            return;
                        };
                    });
                };
            });
        };
        if (_t.failed()) {
            return;
        };
        var _cfg:Ref<stdgo.testing.quick.Quick.Config> = (({ maxCount : ((100000 : GoInt)), maxCountScale : 0, rand : ((null : Ref<stdgo.math.rand.Rand.Rand>)), values : null } : stdgo.testing.quick.Quick.Config));
        if (stdgo.testing.Testing.short()) {
            _cfg.maxCount = ((1000 : GoInt));
        };
        var _f1:(GoInt64, GoInt32, GoInt32) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _logdi:GoInt32):Bool {
            var _d:Duration = ((((1 : GoInt64)) : Duration));
            var _a:GoUInt = (((_logdi % ((9 : GoInt32))) : GoUInt)), _b:GoInt32 = (_logdi >> ((16 : GoUnTypedInt))) % ((9 : GoInt32));
            _d = _d << (_a);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((_b : GoInt)), _i++, {
                    _d = _d * (((5 : GoInt64)));
                });
            };
            return _testOne(_ti, ((_tns : GoInt64)), ((_d : GoInt64)));
        };
        stdgo.testing.quick.Quick.check(Go.toInterface(_f1), _cfg);
        var _f2:(GoInt64, GoInt32, GoInt32) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _di:GoInt32):Bool {
            var _d:Duration = ((_di : Duration)) * ((1000000000 : GoInt64));
            if (_d < ((0 : GoInt64))) {
                _d = -_d;
            };
            return _testOne(_ti, ((_tns : GoInt64)), ((_d : GoInt64)));
        };
        stdgo.testing.quick.Quick.check(Go.toInterface(_f2), _cfg);
        var _f3:(GoInt64, GoInt64) -> Bool = function(_tns:GoInt64, _di:GoInt64):Bool {
            _di = _di & ((("4294967294" : GoInt64)));
            if (_di == ((0 : GoInt64))) {
                _di = ((2 : GoInt64));
            };
            _tns = _tns - (_tns % _di);
            if (_tns < ((0 : GoInt64))) {
                _tns = _tns + (_di / ((2 : GoInt64)));
            } else {
                _tns = _tns - (_di / ((2 : GoInt64)));
            };
            return _testOne(((0 : GoInt64)), _tns, _di);
        };
        stdgo.testing.quick.Quick.check(Go.toInterface(_f3), _cfg);
        var _f4:(GoInt64, GoInt32, GoInt64) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _di:GoInt64):Bool {
            return _testOne(_ti, ((_tns : GoInt64)), _di);
        };
        stdgo.testing.quick.Quick.check(Go.toInterface(_f4), _cfg);
    }
function testISOWeek(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _wt in _isoWeekTests) {
            var _dt:Time = (date(_wt._year, ((_wt._month : Month)), _wt._day, ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(_wt._year, ((_wt._month : Month)), _wt._day, ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__());
            var __tmp__ = _dt.isoweek(), _y:GoInt = __tmp__._0, _w:GoInt = __tmp__._1;
            if ((_w != _wt._wex) || (_y != _wt._yex)) {
                _t.errorf(((("got %d/%d; expected %d/%d for %d-%02d-%02d" : GoString))), Go.toInterface(_y), Go.toInterface(_w), Go.toInterface(_wt._yex), Go.toInterface(_wt._wex), Go.toInterface(_wt._year), Go.toInterface(_wt._month), Go.toInterface(_wt._day));
            };
        };
        {
            var _year:GoInt = ((1950 : GoInt));
            Go.cfor(_year < ((2100 : GoInt)), _year++, {
                {
                    var __tmp__ = date(_year, ((1 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).isoweek(), _y:GoInt = __tmp__._0, _w:GoInt = __tmp__._1;
                    if ((_y != _year) || (_w != ((1 : GoInt)))) {
                        _t.errorf(((("got %d/%d; expected %d/1 for Jan 04" : GoString))), Go.toInterface(_y), Go.toInterface(_w), Go.toInterface(_year));
                    };
                };
            });
        };
    }
function testYearDay(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _loc in _yearDayLocations) {
            for (_0 => _ydt in _yearDayTests) {
                var _dt:Time = (date(_ydt._year, ((_ydt._month : Month)), _ydt._day, ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(_ydt._year, ((_ydt._month : Month)), _ydt._day, ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
                var _yday:GoInt = _dt.yearDay();
                if (_yday != _ydt._yday) {
                    _t.errorf(((("Date(%d-%02d-%02d in %v).YearDay() = %d, want %d" : GoString))), Go.toInterface(_ydt._year), Go.toInterface(_ydt._month), Go.toInterface(_ydt._day), Go.toInterface(_loc), Go.toInterface(_yday), Go.toInterface(_ydt._yday));
                    continue;
                };
                if ((_ydt._year < ((0 : GoInt))) || (_ydt._year > ((9999 : GoInt)))) {
                    continue;
                };
                var _f:GoString = stdgo.fmt.Fmt.sprintf(((("%04d-%02d-%02d %03d %+.2d00" : GoString))), Go.toInterface(_ydt._year), Go.toInterface(_ydt._month), Go.toInterface(_ydt._day), Go.toInterface(_ydt._yday), Go.toInterface((_i - ((2 : GoInt))) * ((4 : GoInt))));
                var __tmp__ = parse(((("2006-01-02 002 -0700" : GoString))), _f), _dt1:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf("Parse(\"2006-01-02 002 -0700\", %q): %v", Go.toInterface(_f), Go.toInterface(_err));
                    continue;
                };
                if (!_dt1.equal((_dt == null ? null : _dt.__copy__()))) {
                    _t.errorf("Parse(\"2006-01-02 002 -0700\", %q) = %v, want %v", Go.toInterface(_f), Go.toInterface(_dt1), Go.toInterface(_dt));
                };
            };
        };
    }
function testDurationString(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _durationTests) {
            {
                var _str:GoString = ((_tt._d.toString() : GoString));
                if (_str != _tt._str) {
                    _t.errorf(((("Duration(%d).String() = %s, want %s" : GoString))), Go.toInterface(((_tt._d : GoInt64))), Go.toInterface(_str), Go.toInterface(_tt._str));
                };
            };
            if (_tt._d > ((0 : GoInt64))) {
                {
                    var _str:GoString = (((-_tt._d).toString() : GoString));
                    if (_str != (((("-" : GoString))) + _tt._str)) {
                        _t.errorf(((("Duration(%d).String() = %s, want %s" : GoString))), Go.toInterface(((-_tt._d : GoInt64))), Go.toInterface(_str), Go.toInterface(((("-" : GoString))) + _tt._str));
                    };
                };
            };
        };
    }
function testDate(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _dateTests) {
            var _time:Time = (date(_tt._year, ((_tt._month : Month)), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec, _tt._z) == null ? null : date(_tt._year, ((_tt._month : Month)), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec, _tt._z).__copy__());
            var _want:Time = (unix(_tt._unix, ((0 : GoInt64))) == null ? null : unix(_tt._unix, ((0 : GoInt64))).__copy__());
            if (!_time.equal((_want == null ? null : _want.__copy__()))) {
                _t.errorf(((("Date(%d, %d, %d, %d, %d, %d, %d, %s) = %v, want %v" : GoString))),
Go.toInterface(_tt._year),
Go.toInterface(_tt._month),
Go.toInterface(_tt._day),
Go.toInterface(_tt._hour),
Go.toInterface(_tt._min),
Go.toInterface(_tt._sec),
Go.toInterface(_tt._nsec),
Go.toInterface(_tt._z),
Go.toInterface(_time),
Go.toInterface(_want));
            };
        };
    }
function testAddDate(_t:stdgo.testing.Testing.T_):Void {
        var _t0:Time = (date(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2011 : GoInt)), ((11 : GoInt)), ((18 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), utc).__copy__());
        var _t1:Time = (date(((2016 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2016 : GoInt)), ((3 : GoInt)), ((19 : GoInt)), ((7 : GoInt)), ((56 : GoInt)), ((35 : GoInt)), ((0 : GoInt)), utc).__copy__());
        for (_0 => _at in _addDateTests) {
            var _time:Time = (_t0.addDate(_at._years, _at._months, _at._days) == null ? null : _t0.addDate(_at._years, _at._months, _at._days).__copy__());
            if (!_time.equal((_t1 == null ? null : _t1.__copy__()))) {
                _t.errorf(((("AddDate(%d, %d, %d) = %v, want %v" : GoString))), Go.toInterface(_at._years), Go.toInterface(_at._months), Go.toInterface(_at._days), Go.toInterface(_time), Go.toInterface(_t1));
            };
        };
    }
function testDaysIn(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _daysInTests) {
            var _di:GoInt = daysIn(((_tt._month : Month)), _tt._year);
            if (_di != _tt._di) {
                _t.errorf(((("got %d; expected %d for %d-%02d" : GoString))), Go.toInterface(_di), Go.toInterface(_tt._di), Go.toInterface(_tt._year), Go.toInterface(_tt._month));
            };
        };
    }
function testAddToExactSecond(_t:stdgo.testing.Testing.T_):Void {
        var _t1:Time = (now() == null ? null : now().__copy__());
        var _t2:Time = (_t1.add(((1000000000 : GoInt64)) - ((_t1.nanosecond() : Duration))) == null ? null : _t1.add(((1000000000 : GoInt64)) - ((_t1.nanosecond() : Duration))).__copy__());
        var _sec:GoInt = (_t1.second() + ((1 : GoInt))) % ((60 : GoInt));
        if ((_t2.second() != _sec) || (_t2.nanosecond() != ((0 : GoInt)))) {
            _t.errorf(((("sec = %d, nsec = %d, want sec = %d, nsec = 0" : GoString))), Go.toInterface(_t2.second()), Go.toInterface(_t2.nanosecond()), Go.toInterface(_sec));
        };
    }
function _equalTimeAndZone(_a:Time, _b:Time):Bool {
        var __tmp__ = _a.zone(), _aname:GoString = __tmp__._0, _aoffset:GoInt = __tmp__._1;
        var __tmp__ = _b.zone(), _bname:GoString = __tmp__._0, _boffset:GoInt = __tmp__._1;
        return (_a.equal((_b == null ? null : _b.__copy__())) && (_aoffset == _boffset)) && (_aname == _bname);
    }
function testTimeGob(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Ref<stdgo.encoding.gob.Gob.Encoder> = stdgo.encoding.gob.Gob.newEncoder(_b);
        var _dec:Ref<stdgo.encoding.gob.Gob.Decoder> = stdgo.encoding.gob.Gob.newDecoder(_b);
        for (_0 => _tt in _gobTests) {
            var _gobtt:Time = new Time();
            {
                var _err:stdgo.Error = _enc.encode(Go.toInterface(_tt));
                if (_err != null) {
                    _t.errorf(((("%v gob Encode error = %q, want nil" : GoString))), Go.toInterface(_tt), Go.toInterface(_err));
                } else {
                    var _err:stdgo.Error = _dec.decode(Go.toInterface(_gobtt));
                    if (_err != null) {
                        _t.errorf(((("%v gob Decode error = %q, want nil" : GoString))), Go.toInterface(_tt), Go.toInterface(_err));
                    } else if (!_equalTimeAndZone((_gobtt == null ? null : _gobtt.__copy__()), (_tt == null ? null : _tt.__copy__()))) {
                        _t.errorf(((("Decoded time = %v, want %v" : GoString))), Go.toInterface(_gobtt), Go.toInterface(_tt));
                    };
                };
            };
            _b.reset();
        };
    }
function testInvalidTimeGob(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _invalidEncodingTests) {
            var _ignored:Time = new Time();
            var _err:stdgo.Error = _ignored.gobDecode(_tt._bytes);
            if ((_err == null) || (_err.error() != _tt._want)) {
                _t.errorf(((("time.GobDecode(%#v) error = %v, want %v" : GoString))), Go.toInterface(_tt._bytes), Go.toInterface(_err), Go.toInterface(_tt._want));
            };
            _err = _ignored.unmarshalBinary(_tt._bytes);
            if ((_err == null) || (_err.error() != _tt._want)) {
                _t.errorf(((("time.UnmarshalBinary(%#v) error = %v, want %v" : GoString))), Go.toInterface(_tt._bytes), Go.toInterface(_err), Go.toInterface(_tt._want));
            };
        };
    }
function testNotGobEncodableTime(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _notEncodableTimes) {
            var __tmp__ = _tt._time.gobEncode(), _1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) || (_err.error() != _tt._want)) {
                _t.errorf(((("%v GobEncode error = %v, want %v" : GoString))), Go.toInterface(_tt._time), Go.toInterface(_err), Go.toInterface(_tt._want));
            };
            {
                var __tmp__ = _tt._time.marshalBinary();
                _err = __tmp__._1;
            };
            if ((_err == null) || (_err.error() != _tt._want)) {
                _t.errorf(((("%v MarshalBinary error = %v, want %v" : GoString))), Go.toInterface(_tt._time), Go.toInterface(_err), Go.toInterface(_tt._want));
            };
        };
    }
function testTimeJSON(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _jsonTests) {
            var _jsonTime:Time = new Time();
            {
                var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_tt._time)), _jsonBytes:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("%v json.Marshal error = %v, want nil" : GoString))), Go.toInterface(_tt._time), Go.toInterface(_err));
                } else if (((_jsonBytes : GoString)) != _tt._json) {
                    _t.errorf(((("%v JSON = %#q, want %#q" : GoString))), Go.toInterface(_tt._time), Go.toInterface(((_jsonBytes : GoString))), Go.toInterface(_tt._json));
                } else {
                    _err = stdgo.encoding.json.Json.unmarshal(_jsonBytes, Go.toInterface(_jsonTime));
                    if (_err != null) {
                        _t.errorf(((("%v json.Unmarshal error = %v, want nil" : GoString))), Go.toInterface(_tt._time), Go.toInterface(_err));
                    } else if (!_equalTimeAndZone((_jsonTime == null ? null : _jsonTime.__copy__()), (_tt._time == null ? null : _tt._time.__copy__()))) {
                        _t.errorf(((("Unmarshaled time = %v, want %v" : GoString))), Go.toInterface(_jsonTime), Go.toInterface(_tt._time));
                    };
                };
            };
        };
    }
function testInvalidTimeJSON(_t:stdgo.testing.Testing.T_):Void {
        var _tt:Time = new Time();
        var _err:stdgo.Error = stdgo.encoding.json.Json.unmarshal((("{\"now is the time\":\"buddy\"}" : Slice<GoByte>)), Go.toInterface(_tt));
        var __tmp__ = try {
            { value : ((((_err.__underlying__().value : Dynamic)) : ParseError)), ok : true };
        } catch(_) {
            { value : ((null : Ref<ParseError>)), ok : false };
        }, _0 = __tmp__.value, _isParseErr = __tmp__.ok;
        if (!_isParseErr) {
            _t.errorf(((("expected *time.ParseError unmarshaling JSON, got %v" : GoString))), Go.toInterface(_err));
        };
    }
function testNotJSONEncodableTime(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _notJSONEncodableTimes) {
            var __tmp__ = _tt._time.marshalJSON(), _1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) || (_err.error() != _tt._want)) {
                _t.errorf(((("%v MarshalJSON error = %v, want %v" : GoString))), Go.toInterface(_tt._time), Go.toInterface(_err), Go.toInterface(_tt._want));
            };
        };
    }
function testParseDuration(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tc in _parseDurationTests) {
            var __tmp__ = parseDuration(_tc._in), _d:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_d != _tc._want)) {
                _t.errorf(((("ParseDuration(%q) = %v, %v, want %v, nil" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_d), Go.toInterface(_err), Go.toInterface(_tc._want));
            };
        };
    }
function testParseDurationErrors(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tc in _parseDurationErrorTests) {
            var __tmp__ = parseDuration(_tc._in), _1:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(((("ParseDuration(%q) = _, nil, want _, non-nil" : GoString))), Go.toInterface(_tc._in));
            } else if (!stdgo.strings.Strings.contains(_err.error(), _tc._expect)) {
                _t.errorf(((("ParseDuration(%q) = _, %q, error does not contain %q" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_err), Go.toInterface(_tc._expect));
            };
        };
    }
function testParseDurationRoundTrip(_t:stdgo.testing.Testing.T_):Void {
        var _max0:Duration = (((("9223372036854775807" : GoInt64)) : Duration));
        var __tmp__ = parseDuration(((_max0.toString() : GoString))), _max1:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_max0 != _max1)) {
            _t.errorf(((("round-trip failed: %d => %q => %d, %v" : GoString))), Go.toInterface(_max0), Go.toInterface(((_max0.toString() : GoString))), Go.toInterface(_max1), Go.toInterface(_err));
        };
        var _min0:Duration = (((("-9223372036854775808" : GoInt64)) : Duration));
        var __tmp__ = parseDuration(((_min0.toString() : GoString))), _min1:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_min0 != _min1)) {
            _t.errorf(((("round-trip failed: %d => %q => %d, %v" : GoString))), Go.toInterface(_min0), Go.toInterface(((_min0.toString() : GoString))), Go.toInterface(_min1), Go.toInterface(_err));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                var _d0:Duration = ((stdgo.math.rand.Rand.int31() : Duration)) * ((1000000 : GoInt64));
                var _s:GoString = ((_d0.toString() : GoString));
                var __tmp__ = parseDuration(_s), _d1:Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) || (_d0 != _d1)) {
                    _t.errorf(((("round-trip failed: %d => %q => %d, %v" : GoString))), Go.toInterface(_d0), Go.toInterface(_s), Go.toInterface(_d1), Go.toInterface(_err));
                };
            });
        };
    }
function testLocationRace(_t:stdgo.testing.Testing.T_):Void {
        resetLocalOnceForTest();
        var _c:Chan<GoString> = new Chan<GoString>(((((1 : GoInt)) : GoInt)).toBasic(), () -> (("" : GoString)));
        Go.routine(() -> {
            var a = function():Void {
                _c.__send__(((now().toString() : GoString)));
            };
            a();
        });
        ((now().toString() : GoString));
        _c.__get__();
        sleep(((100000000 : GoInt64)));
        forceUSPacificForTesting();
    }
function testCountMallocs(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping malloc count in short mode" : GoString)))));
        };
        if (stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) > ((1 : GoInt))) {
            _t.skip(Go.toInterface(((("skipping; GOMAXPROCS>1" : GoString)))));
        };
        for (_0 => _mt in _mallocTest) {
            var _allocs:GoInt = ((stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), _mt._fn) : GoInt));
            if (_allocs > _mt._count) {
                _t.errorf(((("%s: %d allocs, want %d" : GoString))), Go.toInterface(_mt._desc), Go.toInterface(_allocs), Go.toInterface(_mt._count));
            };
        };
    }
function testLoadFixed(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = loadLocation(((("Etc/GMT+1" : GoString)))), _loc:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = now().in_(_loc).zone(), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if (!((_name == ((("GMT+1" : GoString)))) || (_name == ((("-01" : GoString))))) || (_offset != ((-3600 : GoInt)))) {
            _t.errorf(((("Now().In(loc).Zone() = %q, %d, want %q or %q, %d" : GoString))), Go.toInterface(_name), Go.toInterface(_offset), Go.toInterface(((("GMT+1" : GoString)))), Go.toInterface(((("-01" : GoString)))), Go.toInterface(((-3600 : GoInt))));
        };
    }
function testSub(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _st in _subTests) {
            var _got:Duration = _st._t.sub((_st._u == null ? null : _st._u.__copy__()));
            if (_got != _st._d) {
                _t.errorf(((("#%d: Sub(%v, %v): got %v; want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_st._t), Go.toInterface(_st._u), Go.toInterface(_got), Go.toInterface(_st._d));
            };
        };
    }
function testDurationNanoseconds(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _nsDurationTests) {
            {
                var _got:GoInt64 = _tt._d.nanoseconds();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Nanoseconds() = %d; want: %d" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMicroseconds(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _usDurationTests) {
            {
                var _got:GoInt64 = _tt._d.microseconds();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Microseconds() = %d; want: %d" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMilliseconds(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _msDurationTests) {
            {
                var _got:GoInt64 = _tt._d.milliseconds();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Milliseconds() = %d; want: %d" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationSeconds(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _secDurationTests) {
            {
                var _got:GoFloat64 = _tt._d.seconds();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Seconds() = %g; want: %g" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMinutes(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _minDurationTests) {
            {
                var _got:GoFloat64 = _tt._d.minutes();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Minutes() = %g; want: %g" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationHours(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _hourDurationTests) {
            {
                var _got:GoFloat64 = _tt._d.hours();
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Hours() = %g; want: %g" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationTruncate(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _durationTruncateTests) {
            {
                var _got:Duration = _tt._d.truncate(_tt._m);
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Truncate(%s) = %s; want: %s" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_tt._m), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationRound(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _durationRoundTests) {
            {
                var _got:Duration = _tt._d.round(_tt._m);
                if (_got != _tt._want) {
                    _t.errorf(((("Duration(%s).Round(%s) = %s; want: %s" : GoString))), Go.toInterface(_tt._d), Go.toInterface(_tt._m), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDefaultLoc(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _defaultLocTests) {
            var _t1:Time = ((new Time() : Time));
            var _t2:Time = (((new Time() : Time)).utc() == null ? null : ((new Time() : Time)).utc().__copy__());
            if (!_tt._f((_t1 == null ? null : _t1.__copy__()), (_t2 == null ? null : _t2.__copy__()))) {
                _t.errorf(((("Time{} and Time{}.UTC() behave differently for %s" : GoString))), Go.toInterface(_tt._name));
            };
        };
    }
function benchmarkNow(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t = (now() == null ? null : now().__copy__());
            });
        };
    }
function benchmarkNowUnixNano(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _u = now().unixNano();
            });
        };
    }
function benchmarkNowUnixMilli(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _u = now().unixMilli();
            });
        };
    }
function benchmarkNowUnixMicro(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _u = now().unixMicro();
            });
        };
    }
function benchmarkFormat(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (unix(((1265346057 : GoInt64)), ((0 : GoInt64))) == null ? null : unix(((1265346057 : GoInt64)), ((0 : GoInt64))).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.format(((("Mon Jan  2 15:04:05 2006" : GoString))));
            });
        };
    }
function benchmarkFormatNow(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.format(((("Mon Jan  2 15:04:05 2006" : GoString))));
            });
        };
    }
function benchmarkMarshalJSON(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.marshalJSON();
            });
        };
    }
function benchmarkMarshalText(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.marshalText();
            });
        };
    }
function benchmarkParse(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                parse(((("Mon Jan _2 15:04:05 2006" : GoString))), ((("Mon Jan  2 15:04:05 2006" : GoString))));
            });
        };
    }
function benchmarkParseDuration(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                parseDuration(((("9007199254.740993ms" : GoString))));
                parseDuration(((("9007199254740993ns" : GoString))));
            });
        };
    }
function benchmarkHour(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.hour();
            });
        };
    }
function benchmarkSecond(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.second();
            });
        };
    }
function benchmarkYear(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.year();
            });
        };
    }
function benchmarkDay(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.day();
            });
        };
    }
function benchmarkISOWeek(_b:stdgo.testing.Testing.B):Void {
        var _t:Time = (now() == null ? null : now().__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _t.isoweek();
            });
        };
    }
function testMarshalBinaryZeroTime(_t:stdgo.testing.Testing.T_):Void {
        var _t0:Time = ((new Time() : Time));
        var __tmp__ = _t0.marshalBinary(), _enc:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _t1:Time = (now() == null ? null : now().__copy__());
        {
            var _err:stdgo.Error = _t1.unmarshalBinary(_enc);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (_t1 != _t0) {
            _t.errorf(((("t0=%#v\nt1=%#v\nwant identical structures" : GoString))), Go.toInterface(_t0), Go.toInterface(_t1));
        };
    }
function testMarshalBinaryVersion2(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = parse(((("2006-01-02T15:04:05Z07:00" : GoString))), ((("1880-01-01T00:00:00Z" : GoString)))), _t0:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Failed to parse time, error = %v" : GoString))), Go.toInterface(_err));
        };
        var __tmp__ = loadLocation(((("US/Eastern" : GoString)))), _loc:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Failed to load location, error = %v" : GoString))), Go.toInterface(_err));
        };
        var _t1:Time = (_t0.in_(_loc) == null ? null : _t0.in_(_loc).__copy__());
        var __tmp__ = _t1.marshalBinary(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("Failed to Marshal, error = %v" : GoString))), Go.toInterface(_err));
        };
        var _t2:Time = ((new Time() : Time));
        _err = _t2.unmarshalBinary(_b);
        if (_err != null) {
            _t.errorf(((("Failed to Unmarshal, error = %v" : GoString))), Go.toInterface(_err));
        };
        if (!(_t0.equal((_t1 == null ? null : _t1.__copy__())) && _t1.equal((_t2 == null ? null : _t2.__copy__())))) {
            if (!_t0.equal((_t1 == null ? null : _t1.__copy__()))) {
                _t.errorf(((("The result t1: %+v after Marshal is not matched original t0: %+v" : GoString))), Go.toInterface(_t1), Go.toInterface(_t0));
            };
            if (!_t1.equal((_t2 == null ? null : _t2.__copy__()))) {
                _t.errorf(((("The result t2: %+v after Unmarshal is not matched original t1: %+v" : GoString))), Go.toInterface(_t2), Go.toInterface(_t1));
            };
        };
    }
function testZeroMonthString(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:GoString = ((((((0 : GoInt)) : Month)).toString() : GoString)), _want:GoString = ((("%!Month(0)" : GoString)));
            if (_got != _want) {
                _t.errorf(((("zero month = %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testWeekdayString(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:GoString = ((((((2 : GoInt)) : Weekday)).toString() : GoString)), _want:GoString = ((("Tuesday" : GoString)));
            if (_got != _want) {
                _t.errorf(((("Tuesday weekday = %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((((((14 : GoInt)) : Weekday)).toString() : GoString)), _want:GoString = ((("%!Weekday(14)" : GoString)));
            if (_got != _want) {
                _t.errorf(((("14th weekday = %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testReadFileLimit(_t:stdgo.testing.Testing.T_):Void {
        {};
        {
            var __tmp__ = stdgo.os.Os.stat(((("/dev/zero" : GoString)))), _0:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip(Go.toInterface(((("skipping test without a /dev/zero" : GoString)))));
            };
        };
        var __tmp__ = readFile(((("/dev/zero" : GoString)))), _1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), ((("is too large" : GoString))))) {
            _t.errorf(((("readFile(%q) error = %v; want error containing \'is too large\'" : GoString))), Go.toInterface(((("/dev/zero" : GoString)))), Go.toInterface(_err));
        };
    }
function testConcurrentTimerReset(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        _wg.add(((8 : GoInt)));
        var _timer:Ref<Timer> = newTimer((("3600000000000" : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        __deferstack__.unshift(() -> _wg.done());
                        {
                            var _j:GoInt = ((0 : GoInt));
                            Go.cfor(_j < ((1000 : GoInt)), _j++, {
                                _timer.reset((("3600000000000" : GoInt64)) + (((_i * _j) : Duration)));
                            });
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait();
    }
function testConcurrentTimerResetStop(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        _wg.add(((16 : GoInt)));
        var _timer:Ref<Timer> = newTimer((("3600000000000" : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        __deferstack__.unshift(() -> _wg.done());
                        {
                            var _j:GoInt = ((0 : GoInt));
                            Go.cfor(_j < ((1000 : GoInt)), _j++, {
                                _timer.reset((("3600000000000" : GoInt64)) + (((_i * _j) : Duration)));
                            });
                        };
                    };
                    a(_i);
                });
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        __deferstack__.unshift(() -> _wg.done());
                        _timer.stop();
                    };
                    a(_i);
                });
            });
        };
        _wg.wait();
    }
function testTimeIsDST(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> forceZipFileForTesting(_a0));
            };
            var __tmp__ = loadLocation(((("Australia/Sydney" : GoString)))), _tzWithDST:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("could not load tz \'Australia/Sydney\': %v" : GoString))), Go.toInterface(_err));
            };
            var __tmp__ = loadLocation(((("Australia/Brisbane" : GoString)))), _tzWithoutDST:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("could not load tz \'Australia/Brisbane\': %v" : GoString))), Go.toInterface(_err));
            };
            var _tzFixed:Ref<Location> = fixedZone(((("FIXED_TIME" : GoString))), ((12345 : GoInt)));
            var _tests:GoArray<stdgo.time_test.Time_test.T__struct_25> = {
                var s:GoArray<stdgo.time_test.Time_test.T__struct_25> = new GoArray<stdgo.time_test.Time_test.T__struct_25>(...[for (i in 0 ... 8) new stdgo.time_test.Time_test.T__struct_25()]);
                s[0] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[1] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[2] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithDST) == null ? null : date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithDST).__copy__()), true) : stdgo.time_test.Time_test.T__struct_25));
                s[3] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithDST) == null ? null : date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithDST).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[4] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithoutDST) == null ? null : date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithoutDST).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[5] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithoutDST) == null ? null : date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzWithoutDST).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[6] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzFixed) == null ? null : date(((2009 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzFixed).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s[7] = ((new stdgo.time_test.Time_test.T__struct_25((date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzFixed) == null ? null : date(((2009 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((12 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _tzFixed).__copy__()), false) : stdgo.time_test.Time_test.T__struct_25));
                s;
            };
            for (_i => _tt in _tests) {
                var _got:Bool = _tt._time.isDST();
                if (_got != _tt._want) {
                    _t.errorf(((("#%d:: (%#v).IsDST()=%t, want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_tt._time.format(((("2006-01-02T15:04:05Z07:00" : GoString))))), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
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
function testTimeAddSecOverflow(_t:stdgo.testing.Testing.T_):Void {
        var _maxInt64:GoInt64 = (("9223372036854775807" : GoInt64));
        var _timeExt:GoInt64 = (_maxInt64 - (("62135596800" : GoInt64))) - ((50 : GoInt64));
        var _notMonoTime:Time = (unix(_timeExt, ((0 : GoInt64))) == null ? null : unix(_timeExt, ((0 : GoInt64))).__copy__());
        {
            var _i:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_i < ((100 : GoInt64)), _i++, {
                var _sec:GoInt64 = _notMonoTime.unix();
                _notMonoTime = (_notMonoTime.add((((_i * ((1e+09 : GoInt64))) : Duration))) == null ? null : _notMonoTime.add((((_i * ((1e+09 : GoInt64))) : Duration))).__copy__());
                {
                    var _newSec:GoInt64 = _notMonoTime.unix();
                    if ((_newSec != (_sec + _i)) && ((_newSec + (("62135596800" : GoInt64))) != _maxInt64)) {
                        _t.fatalf(((("time ext: %d overflows with positive delta, overflow threshold: %d" : GoString))), Go.toInterface(_newSec), Go.toInterface(_maxInt64));
                    };
                };
            });
        };
        _maxInt64 = -_maxInt64;
        _notMonoTime = (notMonoNegativeTime == null ? null : notMonoNegativeTime.__copy__());
        {
            var _i:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_i > ((-100 : GoInt64)), _i--, {
                var _sec:GoInt64 = _notMonoTime.unix();
                _notMonoTime = (_notMonoTime.add((((_i * ((1e+09 : GoInt64))) : Duration))) == null ? null : _notMonoTime.add((((_i * ((1e+09 : GoInt64))) : Duration))).__copy__());
                {
                    var _newSec:GoInt64 = _notMonoTime.unix();
                    if ((_newSec != (_sec + _i)) && ((_newSec + (("62135596800" : GoInt64))) != _maxInt64)) {
                        _t.fatalf(((("time ext: %d overflows with positive delta, overflow threshold: %d" : GoString))), Go.toInterface(_newSec), Go.toInterface(_maxInt64));
                    };
                };
            });
        };
    }
function testTimeWithZoneTransition(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> forceZipFileForTesting(_a0));
            };
            var __tmp__ = loadLocation(((("Asia/Shanghai" : GoString)))), _loc:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _tests:GoArray<stdgo.time_test.Time_test.T__struct_26> = {
                var s:GoArray<stdgo.time_test.Time_test.T__struct_26> = new GoArray<stdgo.time_test.Time_test.T__struct_26>(...[for (i in 0 ... 8) new stdgo.time_test.Time_test.T__struct_26()]);
                s[0] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((17 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((17 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((9 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[1] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((10 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[2] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((4 : GoInt)), ((14 : GoInt)), ((1 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((14 : GoInt)), ((1 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((17 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((17 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[3] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((4 : GoInt)), ((14 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((14 : GoInt)), ((3 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((4 : GoInt)), ((13 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[4] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((16 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((16 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((7 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((7 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[5] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((17 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((17 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[6] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((0 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((0 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((15 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((15 : GoInt)), ((50 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s[7] = ((new stdgo.time_test.Time_test.T__struct_26((date(((1991 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__()), (date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc) == null ? null : date(((1991 : GoInt)), ((9 : GoInt)), ((14 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), utc).__copy__())) : stdgo.time_test.Time_test.T__struct_26));
                s;
            };
            for (_i => _tt in _tests) {
                if (!_tt._give.equal((_tt._want == null ? null : _tt._want.__copy__()))) {
                    _t.errorf(((("#%d:: %#v is not equal to %#v" : GoString))), Go.toInterface(_i), Go.toInterface(_tt._give.format(((("2006-01-02T15:04:05Z07:00" : GoString))))), Go.toInterface(_tt._want.format(((("2006-01-02T15:04:05Z07:00" : GoString))))));
                };
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
function testEmbeddedTZData(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> stdgo.time.Time.forceZipFileForTesting(_a0));
            };
            for (_0 => _zone in _zones) {
                var __tmp__ = stdgo.time.Time.loadLocation(_zone), _ref:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("LoadLocation(%q): %v" : GoString))), Go.toInterface(_zone), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.time.Time.loadFromEmbeddedTZData(_zone), _embedded:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("LoadFromEmbeddedTZData(%q): %v" : GoString))), Go.toInterface(_zone), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.time.Time.loadLocationFromTZData(_zone, ((_embedded : Slice<GoByte>))), _sample:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("LoadLocationFromTZData failed for %q: %v" : GoString))), Go.toInterface(_zone), Go.toInterface(_err));
                    continue;
                };
                var _v1:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_ref)).elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_ref)).elem().__copy__());
                var _v2:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_sample)).elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_sample)).elem().__copy__());
                var _typ:stdgo.reflect.Reflect.Type = _v1.type();
                var _nf:GoInt = _typ.numField();
                var _found:GoInt = ((0 : GoInt));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _nf, _i++, {
                        var _ft:stdgo.reflect.Reflect.StructField = (_typ.field(_i) == null ? null : _typ.field(_i).__copy__());
                        if ((_ft.name != ((("name" : GoString)))) && (_ft.name != ((("zone" : GoString))))) {
                            continue;
                        };
                        _found++;
                        if (!_equal(_t, (_v1.field(_i) == null ? null : _v1.field(_i).__copy__()), (_v2.field(_i) == null ? null : _v2.field(_i).__copy__()))) {
                            _t.errorf(((("zone %s: system and embedded tzdata field %s differs" : GoString))), Go.toInterface(_zone), Go.toInterface(_ft.name));
                        };
                    });
                };
                if (_found != ((2 : GoInt))) {
                    _t.errorf(((("test must be updated for change to time.Location struct" : GoString))));
                };
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
function _equal(_t:stdgo.testing.Testing.T_, _f1:stdgo.reflect.Reflect.Value, _f2:stdgo.reflect.Reflect.Value):Bool {
        if (_f1.type().kind() == ((23 : GoUInt))) {
            if (_f1.len() != _f2.len()) {
                return false;
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _f1.len(), _i++, {
                    if (!_equal(_t, (_f1.index(_i) == null ? null : _f1.index(_i).__copy__()), (_f2.index(_i) == null ? null : _f2.index(_i).__copy__()))) {
                        return false;
                    };
                });
            };
            return true;
        } else if (_f1.type().kind() == ((25 : GoUInt))) {
            var _nf:GoInt = _f1.type().numField();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _nf, _i++, {
                    if (!_equal(_t, (_f1.field(_i) == null ? null : _f1.field(_i).__copy__()), (_f2.field(_i) == null ? null : _f2.field(_i).__copy__()))) {
                        return false;
                    };
                });
            };
            return true;
        } else if (_f1.type().kind() == ((24 : GoUInt))) {
            return ((_f1.toString() : GoString)) == ((_f2.toString() : GoString));
        } else if (_f1.type().kind() == ((1 : GoUInt))) {
            return _f1.bool() == _f2.bool();
        } else if (_f1.type().kind() == ((2 : GoUInt)) || _f1.type().kind() == ((3 : GoUInt)) || _f1.type().kind() == ((4 : GoUInt)) || _f1.type().kind() == ((5 : GoUInt)) || _f1.type().kind() == ((6 : GoUInt))) {
            return _f1.int() == _f2.int();
        } else if (_f1.type().kind() == ((7 : GoUInt)) || _f1.type().kind() == ((8 : GoUInt)) || _f1.type().kind() == ((9 : GoUInt)) || _f1.type().kind() == ((10 : GoUInt)) || _f1.type().kind() == ((11 : GoUInt)) || _f1.type().kind() == ((12 : GoUInt))) {
            return _f1.uint() == _f2.uint();
        } else {
            _t.errorf(((("test internal error: unsupported kind %v" : GoString))), Go.toInterface(_f1.type().kind()));
            return true;
        };
    }
function testEnvVarUsage(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.resetZoneinfoForTesting();
            {};
            {};
            _t.setenv(((("ZONEINFO" : GoString))), ((("foo.zip" : GoString))));
            stdgo.time.Time.loadLocation(((("Asia/Jerusalem" : GoString))));
            __deferstack__.unshift(() -> stdgo.time.Time.resetZoneinfoForTesting());
            {
                var _zoneinfo:Pointer<GoString> = stdgo.time.Time.zoneinfoForTesting();
                if (((("foo.zip" : GoString))) != _zoneinfo.value) {
                    _t.errorf(((("zoneinfo does not match env variable: got %q want %q" : GoString))), Go.toInterface(_zoneinfo.value), Go.toInterface(((("foo.zip" : GoString)))));
                };
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
function testBadLocationErrMsg(_t:stdgo.testing.Testing.T_):Void {
        stdgo.time.Time.resetZoneinfoForTesting();
        var _loc:GoString = ((("Asia/SomethingNotExist" : GoString)));
        var _want:stdgo.Error = stdgo.errors.Errors.new_(((("unknown time zone " : GoString))) + _loc);
        var __tmp__ = stdgo.time.Time.loadLocation(_loc), _0:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err.error() != _want.error()) {
            _t.errorf(((("LoadLocation(%q) error = %v; want %v" : GoString))), Go.toInterface(_loc), Go.toInterface(_err), Go.toInterface(_want));
        };
    }
function testLoadLocationValidatesNames(_t:stdgo.testing.Testing.T_):Void {
        stdgo.time.Time.resetZoneinfoForTesting();
        {};
        _t.setenv(((("ZONEINFO" : GoString))), ((("" : GoString))));
        var _bad:Slice<GoString> = ((new Slice<GoString>(((("/usr/foo/Foo" : GoString))), ((("\\UNC\x0Coo" : GoString))), (((".." : GoString))), ((("a.." : GoString)))) : Slice<GoString>));
        for (_0 => _v in _bad) {
            var __tmp__ = stdgo.time.Time.loadLocation(_v), _1:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != stdgo.time.Time.errLocation) {
                _t.errorf(((("LoadLocation(%q) error = %v; want ErrLocation" : GoString))), Go.toInterface(_v), Go.toInterface(_err));
            };
        };
    }
function testVersion3(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> stdgo.time.Time.forceZipFileForTesting(_a0));
            };
            var __tmp__ = stdgo.time.Time.loadLocation(((("Asia/Jerusalem" : GoString)))), _0:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
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
function testFirstZone(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> stdgo.time.Time.forceZipFileForTesting(_a0));
            };
            {};
            var _tests:Slice<stdgo.time_test.Time_test.T__struct_27> = ((new Slice<stdgo.time_test.Time_test.T__struct_27>(((new stdgo.time_test.Time_test.T__struct_27(((("PST8PDT" : GoString))), ((-1633269601 : GoInt64)), ((("Sun, 31 Mar 1918 01:59:59 -0800 (PST)" : GoString))), ((("Sun, 31 Mar 1918 03:00:00 -0700 (PDT)" : GoString)))) : stdgo.time_test.Time_test.T__struct_27)), ((new stdgo.time_test.Time_test.T__struct_27(((("Pacific/Fakaofo" : GoString))), ((1325242799 : GoInt64)), ((("Thu, 29 Dec 2011 23:59:59 -1100 (-11)" : GoString))), ((("Sat, 31 Dec 2011 00:00:00 +1300 (+13)" : GoString)))) : stdgo.time_test.Time_test.T__struct_27))) : Slice<stdgo.time_test.Time_test.T__struct_27>));
            for (_0 => _test in _tests) {
                var __tmp__ = stdgo.time.Time.loadLocation(_test._zone), _z:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var _s:GoString = stdgo.time.Time.unix(_test._unix, ((0 : GoInt64))).in_(_z).format(((("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : GoString))));
                if (_s != _test._want1) {
                    _t.errorf(((("for %s %d got %q want %q" : GoString))), Go.toInterface(_test._zone), Go.toInterface(_test._unix), Go.toInterface(_s), Go.toInterface(_test._want1));
                };
                _s = stdgo.time.Time.unix(_test._unix + ((1 : GoInt64)), ((0 : GoInt64))).in_(_z).format(((("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : GoString))));
                if (_s != _test._want2) {
                    _t.errorf(((("for %s %d got %q want %q" : GoString))), Go.toInterface(_test._zone), Go.toInterface(_test._unix), Go.toInterface(_s), Go.toInterface(_test._want2));
                };
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
function testLocationNames(_t:stdgo.testing.Testing.T_):Void {
        if (((stdgo.time.Time.local.toString() : GoString)) != ((("Local" : GoString)))) {
            _t.errorf("invalid Local location name: got %q want \"Local\"", Go.toInterface(stdgo.time.Time.local));
        };
        if (((stdgo.time.Time.utc.toString() : GoString)) != ((("UTC" : GoString)))) {
            _t.errorf("invalid UTC location name: got %q want \"UTC\"", Go.toInterface(stdgo.time.Time.utc));
        };
    }
function testLoadLocationFromTZData(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> stdgo.time.Time.forceZipFileForTesting(_a0));
            };
            {};
            var __tmp__ = stdgo.time.Time.loadLocation(((("Asia/Jerusalem" : GoString)))), _reference:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.time.Time.loadTzinfo(((("Asia/Jerusalem" : GoString))), (stdgo.time.Time.origZoneSources != null ? stdgo.time.Time.origZoneSources[(stdgo.time.Time.origZoneSources != null ? stdgo.time.Time.origZoneSources.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString)))), _tzinfo:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.time.Time.loadLocationFromTZData(((("Asia/Jerusalem" : GoString))), _tzinfo), _sample:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_reference), Go.toInterface(_sample))) {
                _t.errorf(((("return values of LoadLocationFromTZData and LoadLocation don\'t match" : GoString))));
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
function testEarlyLocation(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.time.Time.forceZipFileForTesting(true);
            {
                var _a0 = false;
                __deferstack__.unshift(() -> stdgo.time.Time.forceZipFileForTesting(_a0));
            };
            {};
            var __tmp__ = stdgo.time.Time.loadLocation(((("America/New_York" : GoString)))), _loc:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _d:Time = (stdgo.time.Time.date(((1900 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc) == null ? null : stdgo.time.Time.date(((1900 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), _loc).__copy__());
            var __tmp__ = _d.zone(), _tzName:GoString = __tmp__._0, _tzOffset:GoInt = __tmp__._1;
            {
                var _want:GoString = ((("EST" : GoString)));
                if (_tzName != _want) {
                    _t.errorf(((("Zone name == %s, want %s" : GoString))), Go.toInterface(_tzName), Go.toInterface(_want));
                };
            };
            {
                var _want:GoInt = ((-18000 : GoInt));
                if (_tzOffset != _want) {
                    _t.errorf(((("Zone offset == %d, want %d" : GoString))), Go.toInterface(_tzOffset), Go.toInterface(_want));
                };
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
function testMalformedTZData(_t:stdgo.testing.Testing.T_):Void {
        var _issue29437:GoString = ((("TZif" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("000000000000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00" : GoString)));
        var __tmp__ = stdgo.time.Time.loadLocationFromTZData(((("abc" : GoString))), ((_issue29437 : Slice<GoByte>))), _0:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(Go.toInterface(((("expected error, got none" : GoString)))));
        };
    }
function testLoadLocationFromTZDataSlim(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _slimTests) {
            var __tmp__ = stdgo.os.Os.readFile(((("testdata/" : GoString))) + _test._fileName), _tzData:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                continue;
            };
            var __tmp__ = stdgo.time.Time.loadLocationFromTZData(_test._zoneName, _tzData), _reference:Ref<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                continue;
            };
            var _d:Time = (_test._date(_reference) == null ? null : _test._date(_reference).__copy__());
            var __tmp__ = _d.zone(), _tzName:GoString = __tmp__._0, _tzOffset:GoInt = __tmp__._1;
            if (_tzName != _test._wantName) {
                _t.errorf(((("Zone name == %s, want %s" : GoString))), Go.toInterface(_tzName), Go.toInterface(_test._wantName));
            };
            if (_tzOffset != _test._wantOffset) {
                _t.errorf(((("Zone offset == %d, want %d" : GoString))), Go.toInterface(_tzOffset), Go.toInterface(_test._wantOffset));
            };
        };
    }
function testTzset(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in ((new Slice<stdgo.time_test.Time_test.T__struct_29>(((new stdgo.time_test.Time_test.T__struct_29(((("" : GoString))), ((0 : GoInt64)), ((0 : GoInt64)), ((("" : GoString))), ((0 : GoInt)), ((0 : GoInt64)), ((0 : GoInt64)), false, false) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2159200800" : GoInt64)), ((("PDT" : GoString))), ((-25200 : GoInt)), (("2152173600" : GoInt64)), (("2172733200" : GoInt64)), true, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2152173599" : GoInt64)), ((("PST" : GoString))), ((-28800 : GoInt)), ((2145916800 : GoInt64)), (("2152173600" : GoInt64)), false, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2152173600" : GoInt64)), ((("PDT" : GoString))), ((-25200 : GoInt)), (("2152173600" : GoInt64)), (("2172733200" : GoInt64)), true, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2152173601" : GoInt64)), ((("PDT" : GoString))), ((-25200 : GoInt)), (("2152173600" : GoInt64)), (("2172733200" : GoInt64)), true, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2172733199" : GoInt64)), ((("PDT" : GoString))), ((-25200 : GoInt)), (("2152173600" : GoInt64)), (("2172733200" : GoInt64)), true, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2172733200" : GoInt64)), ((("PST" : GoString))), ((-28800 : GoInt)), (("2172733200" : GoInt64)), (("2177452800" : GoInt64)), false, true) : stdgo.time_test.Time_test.T__struct_29)), ((new stdgo.time_test.Time_test.T__struct_29(((("PST8PDT,M3.2.0,M11.1.0" : GoString))), ((0 : GoInt64)), (("2172733201" : GoInt64)), ((("PST" : GoString))), ((-28800 : GoInt)), (("2172733200" : GoInt64)), (("2177452800" : GoInt64)), false, true) : stdgo.time_test.Time_test.T__struct_29))) : Slice<stdgo.time_test.Time_test.T__struct_29>))) {
            var __tmp__ = stdgo.time.Time.tzset(_test._inStr, _test._inEnd, _test._inSec), _name:GoString = __tmp__._0, _off:GoInt = __tmp__._1, _start:GoInt64 = __tmp__._2, _end:GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
            if ((((((_name != _test._name) || (_off != _test._off)) || (_start != _test._start)) || (_end != _test._end)) || (_isDST != _test._isDST)) || (_ok != _test._ok)) {
                _t.errorf(((("tzset(%q, %d, %d) = %q, %d, %d, %d, %t, %t, want %q, %d, %d, %d, %t, %t" : GoString))),
Go.toInterface(_test._inStr),
Go.toInterface(_test._inEnd),
Go.toInterface(_test._inSec),
Go.toInterface(_name),
Go.toInterface(_off),
Go.toInterface(_start),
Go.toInterface(_end),
Go.toInterface(_isDST),
Go.toInterface(_ok),
Go.toInterface(_test._name),
Go.toInterface(_test._off),
Go.toInterface(_test._start),
Go.toInterface(_test._end),
Go.toInterface(_test._isDST),
Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetName(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in ((new Slice<stdgo.time_test.Time_test.T__struct_30>(((new stdgo.time_test.Time_test.T__struct_30(((("" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_30)), ((new stdgo.time_test.Time_test.T__struct_30(((("X" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_30)), ((new stdgo.time_test.Time_test.T__struct_30(((("PST" : GoString))), ((("PST" : GoString))), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_30)), ((new stdgo.time_test.Time_test.T__struct_30(((("PST8PDT" : GoString))), ((("PST" : GoString))), ((("8PDT" : GoString))), true) : stdgo.time_test.Time_test.T__struct_30)), ((new stdgo.time_test.Time_test.T__struct_30(((("PST-08" : GoString))), ((("PST" : GoString))), ((("-08" : GoString))), true) : stdgo.time_test.Time_test.T__struct_30)), ((new stdgo.time_test.Time_test.T__struct_30(((("<A+B>+08" : GoString))), ((("A+B" : GoString))), ((("+08" : GoString))), true) : stdgo.time_test.Time_test.T__struct_30))) : Slice<stdgo.time_test.Time_test.T__struct_30>))) {
            var __tmp__ = stdgo.time.Time.tzsetName(_test._in), _name:GoString = __tmp__._0, _out:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_name != _test._name) || (_out != _test._out)) || (_ok != _test._ok)) {
                _t.errorf(((("tzsetName(%q) = %q, %q, %t, want %q, %q, %t" : GoString))), Go.toInterface(_test._in), Go.toInterface(_name), Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._name), Go.toInterface(_test._out), Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetOffset(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in ((new Slice<stdgo.time_test.Time_test.T__struct_31>(((new stdgo.time_test.Time_test.T__struct_31(((("" : GoString))), ((0 : GoInt)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("X" : GoString))), ((0 : GoInt)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("+" : GoString))), ((0 : GoInt)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("+08" : GoString))), ((28800 : GoInt)), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("-01:02:03" : GoString))), ((-3723 : GoInt)), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("01" : GoString))), ((3600 : GoInt)), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("100" : GoString))), ((360000 : GoInt)), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("1000" : GoString))), ((0 : GoInt)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_31)), ((new stdgo.time_test.Time_test.T__struct_31(((("8PDT" : GoString))), ((28800 : GoInt)), ((("PDT" : GoString))), true) : stdgo.time_test.Time_test.T__struct_31))) : Slice<stdgo.time_test.Time_test.T__struct_31>))) {
            var __tmp__ = stdgo.time.Time.tzsetOffset(_test._in), _off:GoInt = __tmp__._0, _out:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_off != _test._off) || (_out != _test._out)) || (_ok != _test._ok)) {
                _t.errorf(((("tzsetName(%q) = %d, %q, %t, want %d, %q, %t" : GoString))), Go.toInterface(_test._in), Go.toInterface(_off), Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._off), Go.toInterface(_test._out), Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetRule(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in ((new Slice<stdgo.time_test.Time_test.T__struct_32>(((new stdgo.time_test.Time_test.T__struct_32(((("" : GoString))), ((new Rule() : Rule)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("X" : GoString))), ((new Rule() : Rule)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("J10" : GoString))), ((({ kind : ((0 : GoInt)), day : ((10 : GoInt)), time : ((7200 : GoInt)), week : 0, mon : 0 } : Rule)) == null ? null : (({ kind : ((0 : GoInt)), day : ((10 : GoInt)), time : ((7200 : GoInt)), week : 0, mon : 0 } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("20" : GoString))), ((({ kind : ((1 : GoInt)), day : ((20 : GoInt)), time : ((7200 : GoInt)), week : 0, mon : 0 } : Rule)) == null ? null : (({ kind : ((1 : GoInt)), day : ((20 : GoInt)), time : ((7200 : GoInt)), week : 0, mon : 0 } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("M1.2.3" : GoString))), ((({ kind : ((2 : GoInt)), mon : ((1 : GoInt)), week : ((2 : GoInt)), day : ((3 : GoInt)), time : ((7200 : GoInt)) } : Rule)) == null ? null : (({ kind : ((2 : GoInt)), mon : ((1 : GoInt)), week : ((2 : GoInt)), day : ((3 : GoInt)), time : ((7200 : GoInt)) } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("30/03:00:00" : GoString))), ((({ kind : ((1 : GoInt)), day : ((30 : GoInt)), time : ((10800 : GoInt)), week : 0, mon : 0 } : Rule)) == null ? null : (({ kind : ((1 : GoInt)), day : ((30 : GoInt)), time : ((10800 : GoInt)), week : 0, mon : 0 } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("M4.5.6/03:00:00" : GoString))), ((({ kind : ((2 : GoInt)), mon : ((4 : GoInt)), week : ((5 : GoInt)), day : ((6 : GoInt)), time : ((10800 : GoInt)) } : Rule)) == null ? null : (({ kind : ((2 : GoInt)), mon : ((4 : GoInt)), week : ((5 : GoInt)), day : ((6 : GoInt)), time : ((10800 : GoInt)) } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("M4.5.7/03:00:00" : GoString))), ((new Rule() : Rule)), ((("" : GoString))), false) : stdgo.time_test.Time_test.T__struct_32)), ((new stdgo.time_test.Time_test.T__struct_32(((("M4.5.6/-04" : GoString))), ((({ kind : ((2 : GoInt)), mon : ((4 : GoInt)), week : ((5 : GoInt)), day : ((6 : GoInt)), time : ((-14400 : GoInt)) } : Rule)) == null ? null : (({ kind : ((2 : GoInt)), mon : ((4 : GoInt)), week : ((5 : GoInt)), day : ((6 : GoInt)), time : ((-14400 : GoInt)) } : Rule)).__copy__()), ((("" : GoString))), true) : stdgo.time_test.Time_test.T__struct_32))) : Slice<stdgo.time_test.Time_test.T__struct_32>))) {
            var __tmp__ = stdgo.time.Time.tzsetRule(_test._in), _r:Rule = __tmp__._0, _out:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_r != _test._r) || (_out != _test._out)) || (_ok != _test._ok)) {
                _t.errorf(((("tzsetName(%q) = %#v, %q, %t, want %#v, %q, %t" : GoString))), Go.toInterface(_test._in), Go.toInterface(_r), Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._r), Go.toInterface(_test._out), Go.toInterface(_test._ok));
            };
        };
    }
@:keep var _ = {
        try {
            if (stdgo.time.Time.zoneinfoForTesting() != null) {
                throw Go.toInterface(stdgo.fmt.Fmt.errorf(((("zoneinfo initialized before first LoadLocation" : GoString)))));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class TimeFormatTest_wrapper {
    public var __t__ : TimeFormatTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class FormatTest_wrapper {
    public var __t__ : FormatTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ParseTest_wrapper {
    public var __t__ : ParseTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ParseTimeZoneTest_wrapper {
    public var __t__ : ParseTimeZoneTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ParseErrorTest_wrapper {
    public var __t__ : ParseErrorTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class SecondsTimeZoneOffsetTest_wrapper {
    public var __t__ : SecondsTimeZoneOffsetTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_afterResult_wrapper {
    public var __t__ : T_afterResult;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_parsedTime_wrapper {
    public var __t__ : T_parsedTime;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class TimeTest_wrapper {
    public var __t__ : TimeTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ISOWeekTest_wrapper {
    public var __t__ : ISOWeekTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class YearDayTest_wrapper {
    public var __t__ : YearDayTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_8_wrapper {
    public var __t__ : T__struct_8;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_9_wrapper {
    public var __t__ : T__struct_9;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_10_wrapper {
    public var __t__ : T__struct_10;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_11_wrapper {
    public var __t__ : T__struct_11;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_12_wrapper {
    public var __t__ : T__struct_12;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_13_wrapper {
    public var __t__ : T__struct_13;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_14_wrapper {
    public var __t__ : T__struct_14;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_15_wrapper {
    public var __t__ : T__struct_15;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_16_wrapper {
    public var __t__ : T__struct_16;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_17_wrapper {
    public var __t__ : T__struct_17;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_18_wrapper {
    public var __t__ : T__struct_18;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_19_wrapper {
    public var __t__ : T__struct_19;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_20_wrapper {
    public var __t__ : T__struct_20;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_21_wrapper {
    public var __t__ : T__struct_21;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_22_wrapper {
    public var __t__ : T__struct_22;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_23_wrapper {
    public var __t__ : T__struct_23;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_24_wrapper {
    public var __t__ : T__struct_24;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_25_wrapper {
    public var __t__ : T__struct_25;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_26_wrapper {
    public var __t__ : T__struct_26;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_27_wrapper {
    public var __t__ : T__struct_27;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_28_wrapper {
    public var __t__ : T__struct_28;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_29_wrapper {
    public var __t__ : T__struct_29;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_30_wrapper {
    public var __t__ : T__struct_30;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_31_wrapper {
    public var __t__ : T__struct_31;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_32_wrapper {
    public var __t__ : T__struct_32;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
