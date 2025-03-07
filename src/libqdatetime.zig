const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qdate.html
pub const qdate = struct {
    /// New constructs a new QDate object.
    ///
    /// ``` other: ?*C.QDate ```
    pub fn New(other: ?*anyopaque) ?*C.QDate {
        return C.QDate_new(@ptrCast(other));
    }

    /// New2 constructs a new QDate object and invalidates the source QDate object.
    ///
    /// ``` other: ?*C.QDate ```
    pub fn New2(other: ?*anyopaque) ?*C.QDate {
        return C.QDate_new2(@ptrCast(other));
    }

    /// New3 constructs a new QDate object.
    ///
    ///
    pub fn New3() ?*C.QDate {
        return C.QDate_new3();
    }

    /// New4 constructs a new QDate object.
    ///
    /// ``` y: i32, m: i32, d: i32 ```
    pub fn New4(y: i32, m: i32, d: i32) ?*C.QDate {
        return C.QDate_new4(@intCast(y), @intCast(m), @intCast(d));
    }

    /// New5 constructs a new QDate object.
    ///
    /// ``` y: i32, m: i32, d: i32, cal: ?*C.QCalendar ```
    pub fn New5(y: i32, m: i32, d: i32, cal: ?*C.QCalendar) ?*C.QDate {
        return C.QDate_new5(@intCast(y), @intCast(m), @intCast(d), @ptrCast(cal));
    }

    /// New6 constructs a new QDate object.
    ///
    /// ``` param1: ?*C.QDate ```
    pub fn New6(param1: ?*anyopaque) ?*C.QDate {
        return C.QDate_new6(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QDate, other: ?*QDate ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDate_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QDate, other: ?*QDate ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDate_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#isNull)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QDate_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#isValid)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QDate_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#year)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn Year(self: ?*anyopaque) i32 {
        return C.QDate_Year(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#month)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn Month(self: ?*anyopaque) i32 {
        return C.QDate_Month(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#day)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn Day(self: ?*anyopaque) i32 {
        return C.QDate_Day(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#dayOfWeek)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn DayOfWeek(self: ?*anyopaque) i32 {
        return C.QDate_DayOfWeek(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#dayOfYear)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn DayOfYear(self: ?*anyopaque) i32 {
        return C.QDate_DayOfYear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#daysInMonth)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn DaysInMonth(self: ?*anyopaque) i32 {
        return C.QDate_DaysInMonth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#daysInYear)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn DaysInYear(self: ?*anyopaque) i32 {
        return C.QDate_DaysInYear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#weekNumber)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn WeekNumber(self: ?*anyopaque) i32 {
        return C.QDate_WeekNumber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#year)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn YearWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_YearWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#month)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn MonthWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_MonthWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#day)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn DayWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_DayWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#dayOfWeek)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn DayOfWeekWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_DayOfWeekWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#dayOfYear)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn DayOfYearWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_DayOfYearWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#daysInMonth)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn DaysInMonthWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_DaysInMonthWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#daysInYear)
    ///
    /// ``` self: ?*C.QDate, cal: ?*C.QCalendar ```
    pub fn DaysInYearWithCal(self: ?*anyopaque, cal: ?*C.QCalendar) i32 {
        return C.QDate_DaysInYearWithCal(@ptrCast(self), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#startOfDay)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn StartOfDay(self: ?*anyopaque) ?*C.QDateTime {
        return C.QDate_StartOfDay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#endOfDay)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn EndOfDay(self: ?*anyopaque) ?*C.QDateTime {
        return C.QDate_EndOfDay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#startOfDay)
    ///
    /// ``` self: ?*C.QDate, zone: ?*C.QTimeZone ```
    pub fn StartOfDayWithZone(self: ?*anyopaque, zone: ?*anyopaque) ?*C.QDateTime {
        return C.QDate_StartOfDayWithZone(@ptrCast(self), @ptrCast(zone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#endOfDay)
    ///
    /// ``` self: ?*C.QDate, zone: ?*C.QTimeZone ```
    pub fn EndOfDayWithZone(self: ?*anyopaque, zone: ?*anyopaque) ?*C.QDateTime {
        return C.QDate_EndOfDayWithZone(@ptrCast(self), @ptrCast(zone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#toString)
    ///
    /// ``` self: ?*C.QDate, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDate_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#toString)
    ///
    /// ``` self: ?*C.QDate, format: []const u8, allocator: std.mem.Allocator ```
    pub fn ToStringWithFormat(self: ?*anyopaque, format: []const u8, allocator: std.mem.Allocator) []const u8 {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        const _str = C.QDate_ToStringWithFormat(@ptrCast(self), format_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#setDate)
    ///
    /// ``` self: ?*C.QDate, year: i32, month: i32, day: i32 ```
    pub fn SetDate(self: ?*anyopaque, year: i32, month: i32, day: i32) bool {
        return C.QDate_SetDate(@ptrCast(self), @intCast(year), @intCast(month), @intCast(day));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#setDate)
    ///
    /// ``` self: ?*C.QDate, year: i32, month: i32, day: i32, cal: ?*C.QCalendar ```
    pub fn SetDate2(self: ?*anyopaque, year: i32, month: i32, day: i32, cal: ?*C.QCalendar) bool {
        return C.QDate_SetDate2(@ptrCast(self), @intCast(year), @intCast(month), @intCast(day), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#getDate)
    ///
    /// ``` self: ?*C.QDate, year: ?*i32, month: ?*i32, day: ?*i32 ```
    pub fn GetDate(self: ?*anyopaque, year: ?*anyopaque, month: ?*anyopaque, day: ?*anyopaque) void {
        C.QDate_GetDate(@ptrCast(self), @intCast(year), @intCast(month), @intCast(day));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#addDays)
    ///
    /// ``` self: ?*C.QDate, days: i64 ```
    pub fn AddDays(self: ?*anyopaque, days: i64) ?*C.QDate {
        return C.QDate_AddDays(@ptrCast(self), @intCast(days));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#addMonths)
    ///
    /// ``` self: ?*C.QDate, months: i32 ```
    pub fn AddMonths(self: ?*anyopaque, months: i32) ?*C.QDate {
        return C.QDate_AddMonths(@ptrCast(self), @intCast(months));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#addYears)
    ///
    /// ``` self: ?*C.QDate, years: i32 ```
    pub fn AddYears(self: ?*anyopaque, years: i32) ?*C.QDate {
        return C.QDate_AddYears(@ptrCast(self), @intCast(years));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#addMonths)
    ///
    /// ``` self: ?*C.QDate, months: i32, cal: ?*C.QCalendar ```
    pub fn AddMonths2(self: ?*anyopaque, months: i32, cal: ?*C.QCalendar) ?*C.QDate {
        return C.QDate_AddMonths2(@ptrCast(self), @intCast(months), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#addYears)
    ///
    /// ``` self: ?*C.QDate, years: i32, cal: ?*C.QCalendar ```
    pub fn AddYears2(self: ?*anyopaque, years: i32, cal: ?*C.QCalendar) ?*C.QDate {
        return C.QDate_AddYears2(@ptrCast(self), @intCast(years), @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#daysTo)
    ///
    /// ``` self: ?*C.QDate, d: ?*C.QDate ```
    pub fn DaysTo(self: ?*anyopaque, d: ?*C.QDate) i64 {
        return C.QDate_DaysTo(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#currentDate)
    ///
    ///
    pub fn CurrentDate() ?*C.QDate {
        return C.QDate_CurrentDate();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#fromString)
    ///
    /// ``` stringVal: []const u8 ```
    pub fn FromStringWithStringVal(stringVal: []const u8) ?*C.QDate {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QDate_FromStringWithStringVal(stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: []const u8 ```
    pub fn FromString4(stringVal: []const u8, format: []const u8) ?*C.QDate {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        return C.QDate_FromString4(stringVal_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#isValid)
    ///
    /// ``` y: i32, m: i32, d: i32 ```
    pub fn IsValid2(y: i32, m: i32, d: i32) bool {
        return C.QDate_IsValid2(@intCast(y), @intCast(m), @intCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#isLeapYear)
    ///
    /// ``` year: i32 ```
    pub fn IsLeapYear(year: i32) bool {
        return C.QDate_IsLeapYear(@intCast(year));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#fromJulianDay)
    ///
    /// ``` jd_: i64 ```
    pub fn FromJulianDay(jd_: i64) ?*C.QDate {
        return C.QDate_FromJulianDay(@intCast(jd_));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#toJulianDay)
    ///
    /// ``` self: ?*C.QDate ```
    pub fn ToJulianDay(self: ?*anyopaque) i64 {
        return C.QDate_ToJulianDay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#weekNumber)
    ///
    /// ``` self: ?*C.QDate, yearNum: ?*i32 ```
    pub fn WeekNumber1(self: ?*anyopaque, yearNum: ?*anyopaque) i32 {
        return C.QDate_WeekNumber1(@ptrCast(self), @intCast(yearNum));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#startOfDay)
    ///
    /// ``` self: ?*C.QDate, spec: qnamespace_enums.TimeSpec ```
    pub fn StartOfDay1(self: ?*anyopaque, spec: i64) ?*C.QDateTime {
        return C.QDate_StartOfDay1(@ptrCast(self), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#startOfDay)
    ///
    /// ``` self: ?*C.QDate, spec: qnamespace_enums.TimeSpec, offsetSeconds: i32 ```
    pub fn StartOfDay2(self: ?*anyopaque, spec: i64, offsetSeconds: i32) ?*C.QDateTime {
        return C.QDate_StartOfDay2(@ptrCast(self), @intCast(spec), @intCast(offsetSeconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#endOfDay)
    ///
    /// ``` self: ?*C.QDate, spec: qnamespace_enums.TimeSpec ```
    pub fn EndOfDay1(self: ?*anyopaque, spec: i64) ?*C.QDateTime {
        return C.QDate_EndOfDay1(@ptrCast(self), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#endOfDay)
    ///
    /// ``` self: ?*C.QDate, spec: qnamespace_enums.TimeSpec, offsetSeconds: i32 ```
    pub fn EndOfDay2(self: ?*anyopaque, spec: i64, offsetSeconds: i32) ?*C.QDateTime {
        return C.QDate_EndOfDay2(@ptrCast(self), @intCast(spec), @intCast(offsetSeconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#toString)
    ///
    /// ``` self: ?*C.QDate, format: qnamespace_enums.DateFormat, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, format: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDate_ToString1(@ptrCast(self), @intCast(format));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#toString)
    ///
    /// ``` self: ?*C.QDate, format: []const u8, cal: ?*C.QCalendar, allocator: std.mem.Allocator ```
    pub fn ToString22(self: ?*anyopaque, format: []const u8, cal: ?*C.QCalendar, allocator: std.mem.Allocator) []const u8 {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        const _str = C.QDate_ToString22(@ptrCast(self), format_str, @ptrCast(cal));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: qnamespace_enums.DateFormat ```
    pub fn FromString23(stringVal: []const u8, format: i64) ?*C.QDate {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QDate_FromString23(stringVal_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdate.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: []const u8, cal: ?*C.QCalendar ```
    pub fn FromString34(stringVal: []const u8, format: []const u8, cal: ?*C.QCalendar) ?*C.QDate {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        return C.QDate_FromString34(stringVal_str, format_str, @ptrCast(cal));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDate ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDate_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtime.html
pub const qtime = struct {
    /// New constructs a new QTime object.
    ///
    /// ``` other: ?*C.QTime ```
    pub fn New(other: ?*anyopaque) ?*C.QTime {
        return C.QTime_new(@ptrCast(other));
    }

    /// New2 constructs a new QTime object and invalidates the source QTime object.
    ///
    /// ``` other: ?*C.QTime ```
    pub fn New2(other: ?*anyopaque) ?*C.QTime {
        return C.QTime_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTime object.
    ///
    ///
    pub fn New3() ?*C.QTime {
        return C.QTime_new3();
    }

    /// New4 constructs a new QTime object.
    ///
    /// ``` h: i32, m: i32 ```
    pub fn New4(h: i32, m: i32) ?*C.QTime {
        return C.QTime_new4(@intCast(h), @intCast(m));
    }

    /// New5 constructs a new QTime object.
    ///
    /// ``` param1: ?*C.QTime ```
    pub fn New5(param1: ?*anyopaque) ?*C.QTime {
        return C.QTime_new5(@ptrCast(param1));
    }

    /// New6 constructs a new QTime object.
    ///
    /// ``` h: i32, m: i32, s: i32 ```
    pub fn New6(h: i32, m: i32, s: i32) ?*C.QTime {
        return C.QTime_new6(@intCast(h), @intCast(m), @intCast(s));
    }

    /// New7 constructs a new QTime object.
    ///
    /// ``` h: i32, m: i32, s: i32, ms: i32 ```
    pub fn New7(h: i32, m: i32, s: i32, ms: i32) ?*C.QTime {
        return C.QTime_new7(@intCast(h), @intCast(m), @intCast(s), @intCast(ms));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTime, other: ?*QTime ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTime_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTime, other: ?*QTime ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTime_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#isNull)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QTime_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#isValid)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTime_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#hour)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn Hour(self: ?*anyopaque) i32 {
        return C.QTime_Hour(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#minute)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn Minute(self: ?*anyopaque) i32 {
        return C.QTime_Minute(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#second)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn Second(self: ?*anyopaque) i32 {
        return C.QTime_Second(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#msec)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn Msec(self: ?*anyopaque) i32 {
        return C.QTime_Msec(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#toString)
    ///
    /// ``` self: ?*C.QTime, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTime_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#toString)
    ///
    /// ``` self: ?*C.QTime, format: []const u8, allocator: std.mem.Allocator ```
    pub fn ToStringWithFormat(self: ?*anyopaque, format: []const u8, allocator: std.mem.Allocator) []const u8 {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        const _str = C.QTime_ToStringWithFormat(@ptrCast(self), format_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#setHMS)
    ///
    /// ``` self: ?*C.QTime, h: i32, m: i32, s: i32 ```
    pub fn SetHMS(self: ?*anyopaque, h: i32, m: i32, s: i32) bool {
        return C.QTime_SetHMS(@ptrCast(self), @intCast(h), @intCast(m), @intCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#addSecs)
    ///
    /// ``` self: ?*C.QTime, secs: i32 ```
    pub fn AddSecs(self: ?*anyopaque, secs: i32) ?*C.QTime {
        return C.QTime_AddSecs(@ptrCast(self), @intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#secsTo)
    ///
    /// ``` self: ?*C.QTime, t: ?*C.QTime ```
    pub fn SecsTo(self: ?*anyopaque, t: ?*C.QTime) i32 {
        return C.QTime_SecsTo(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#addMSecs)
    ///
    /// ``` self: ?*C.QTime, ms: i32 ```
    pub fn AddMSecs(self: ?*anyopaque, ms: i32) ?*C.QTime {
        return C.QTime_AddMSecs(@ptrCast(self), @intCast(ms));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#msecsTo)
    ///
    /// ``` self: ?*C.QTime, t: ?*C.QTime ```
    pub fn MsecsTo(self: ?*anyopaque, t: ?*C.QTime) i32 {
        return C.QTime_MsecsTo(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#fromMSecsSinceStartOfDay)
    ///
    /// ``` msecs: i32 ```
    pub fn FromMSecsSinceStartOfDay(msecs: i32) ?*C.QTime {
        return C.QTime_FromMSecsSinceStartOfDay(@intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#msecsSinceStartOfDay)
    ///
    /// ``` self: ?*C.QTime ```
    pub fn MsecsSinceStartOfDay(self: ?*anyopaque) i32 {
        return C.QTime_MsecsSinceStartOfDay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#currentTime)
    ///
    ///
    pub fn CurrentTime() ?*C.QTime {
        return C.QTime_CurrentTime();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#fromString)
    ///
    /// ``` stringVal: []const u8 ```
    pub fn FromStringWithStringVal(stringVal: []const u8) ?*C.QTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QTime_FromStringWithStringVal(stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: []const u8 ```
    pub fn FromString4(stringVal: []const u8, format: []const u8) ?*C.QTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        return C.QTime_FromString4(stringVal_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#isValid)
    ///
    /// ``` h: i32, m: i32, s: i32 ```
    pub fn IsValid2(h: i32, m: i32, s: i32) bool {
        return C.QTime_IsValid2(@intCast(h), @intCast(m), @intCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#toString)
    ///
    /// ``` self: ?*C.QTime, f: qnamespace_enums.DateFormat, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, f: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTime_ToString1(@ptrCast(self), @intCast(f));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#setHMS)
    ///
    /// ``` self: ?*C.QTime, h: i32, m: i32, s: i32, ms: i32 ```
    pub fn SetHMS4(self: ?*anyopaque, h: i32, m: i32, s: i32, ms: i32) bool {
        return C.QTime_SetHMS4(@ptrCast(self), @intCast(h), @intCast(m), @intCast(s), @intCast(ms));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: qnamespace_enums.DateFormat ```
    pub fn FromString23(stringVal: []const u8, format: i64) ?*C.QTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QTime_FromString23(stringVal_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtime.html#isValid)
    ///
    /// ``` h: i32, m: i32, s: i32, ms: i32 ```
    pub fn IsValid4(h: i32, m: i32, s: i32, ms: i32) bool {
        return C.QTime_IsValid4(@intCast(h), @intCast(m), @intCast(s), @intCast(ms));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTime ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTime_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdatetime.html
pub const qdatetime = struct {
    /// New constructs a new QDateTime object.
    ///
    ///
    pub fn New() ?*C.QDateTime {
        return C.QDateTime_new();
    }

    /// New2 constructs a new QDateTime object.
    ///
    /// ``` date: ?*C.QDate, time: ?*C.QTime ```
    pub fn New2(date: ?*C.QDate, time: ?*C.QTime) ?*C.QDateTime {
        return C.QDateTime_new2(@ptrCast(date), @ptrCast(time));
    }

    /// New3 constructs a new QDateTime object.
    ///
    /// ``` date: ?*C.QDate, time: ?*C.QTime, timeZone: ?*C.QTimeZone ```
    pub fn New3(date: ?*C.QDate, time: ?*C.QTime, timeZone: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_new3(@ptrCast(date), @ptrCast(time), @ptrCast(timeZone));
    }

    /// New4 constructs a new QDateTime object.
    ///
    /// ``` other: ?*C.QDateTime ```
    pub fn New4(other: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_new4(@ptrCast(other));
    }

    /// New5 constructs a new QDateTime object.
    ///
    /// ``` date: ?*C.QDate, time: ?*C.QTime, spec: qnamespace_enums.TimeSpec ```
    pub fn New5(date: ?*C.QDate, time: ?*C.QTime, spec: i64) ?*C.QDateTime {
        return C.QDateTime_new5(@ptrCast(date), @ptrCast(time), @intCast(spec));
    }

    /// New6 constructs a new QDateTime object.
    ///
    /// ``` date: ?*C.QDate, time: ?*C.QTime, spec: qnamespace_enums.TimeSpec, offsetSeconds: i32 ```
    pub fn New6(date: ?*C.QDate, time: ?*C.QTime, spec: i64, offsetSeconds: i32) ?*C.QDateTime {
        return C.QDateTime_new6(@ptrCast(date), @ptrCast(time), @intCast(spec), @intCast(offsetSeconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#operator=)
    ///
    /// ``` self: ?*C.QDateTime, other: ?*C.QDateTime ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDateTime_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#swap)
    ///
    /// ``` self: ?*C.QDateTime, other: ?*C.QDateTime ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDateTime_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#isNull)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QDateTime_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#isValid)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QDateTime_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#date)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn Date(self: ?*anyopaque) ?*C.QDate {
        return C.QDateTime_Date(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#time)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn Time(self: ?*anyopaque) ?*C.QTime {
        return C.QDateTime_Time(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#timeSpec)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn TimeSpec(self: ?*anyopaque) i64 {
        return C.QDateTime_TimeSpec(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#offsetFromUtc)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn OffsetFromUtc(self: ?*anyopaque) i32 {
        return C.QDateTime_OffsetFromUtc(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#timeZone)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn TimeZone(self: ?*anyopaque) ?*C.QTimeZone {
        return C.QDateTime_TimeZone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#timeZoneAbbreviation)
    ///
    /// ``` self: ?*C.QDateTime, allocator: std.mem.Allocator ```
    pub fn TimeZoneAbbreviation(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDateTime_TimeZoneAbbreviation(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#isDaylightTime)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn IsDaylightTime(self: ?*anyopaque) bool {
        return C.QDateTime_IsDaylightTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toMSecsSinceEpoch)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn ToMSecsSinceEpoch(self: ?*anyopaque) i64 {
        return C.QDateTime_ToMSecsSinceEpoch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toSecsSinceEpoch)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn ToSecsSinceEpoch(self: ?*anyopaque) i64 {
        return C.QDateTime_ToSecsSinceEpoch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setDate)
    ///
    /// ``` self: ?*C.QDateTime, date: ?*C.QDate ```
    pub fn SetDate(self: ?*anyopaque, date: ?*C.QDate) void {
        C.QDateTime_SetDate(@ptrCast(self), @ptrCast(date));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setTime)
    ///
    /// ``` self: ?*C.QDateTime, time: ?*C.QTime ```
    pub fn SetTime(self: ?*anyopaque, time: ?*C.QTime) void {
        C.QDateTime_SetTime(@ptrCast(self), @ptrCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setTimeSpec)
    ///
    /// ``` self: ?*C.QDateTime, spec: qnamespace_enums.TimeSpec ```
    pub fn SetTimeSpec(self: ?*anyopaque, spec: i64) void {
        C.QDateTime_SetTimeSpec(@ptrCast(self), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setOffsetFromUtc)
    ///
    /// ``` self: ?*C.QDateTime, offsetSeconds: i32 ```
    pub fn SetOffsetFromUtc(self: ?*anyopaque, offsetSeconds: i32) void {
        C.QDateTime_SetOffsetFromUtc(@ptrCast(self), @intCast(offsetSeconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setTimeZone)
    ///
    /// ``` self: ?*C.QDateTime, toZone: ?*C.QTimeZone ```
    pub fn SetTimeZone(self: ?*anyopaque, toZone: ?*anyopaque) void {
        C.QDateTime_SetTimeZone(@ptrCast(self), @ptrCast(toZone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setMSecsSinceEpoch)
    ///
    /// ``` self: ?*C.QDateTime, msecs: i64 ```
    pub fn SetMSecsSinceEpoch(self: ?*anyopaque, msecs: i64) void {
        C.QDateTime_SetMSecsSinceEpoch(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#setSecsSinceEpoch)
    ///
    /// ``` self: ?*C.QDateTime, secs: i64 ```
    pub fn SetSecsSinceEpoch(self: ?*anyopaque, secs: i64) void {
        C.QDateTime_SetSecsSinceEpoch(@ptrCast(self), @intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toString)
    ///
    /// ``` self: ?*C.QDateTime, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDateTime_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toString)
    ///
    /// ``` self: ?*C.QDateTime, format: []const u8, allocator: std.mem.Allocator ```
    pub fn ToStringWithFormat(self: ?*anyopaque, format: []const u8, allocator: std.mem.Allocator) []const u8 {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        const _str = C.QDateTime_ToStringWithFormat(@ptrCast(self), format_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#addDays)
    ///
    /// ``` self: ?*C.QDateTime, days: i64 ```
    pub fn AddDays(self: ?*anyopaque, days: i64) ?*C.QDateTime {
        return C.QDateTime_AddDays(@ptrCast(self), @intCast(days));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#addMonths)
    ///
    /// ``` self: ?*C.QDateTime, months: i32 ```
    pub fn AddMonths(self: ?*anyopaque, months: i32) ?*C.QDateTime {
        return C.QDateTime_AddMonths(@ptrCast(self), @intCast(months));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#addYears)
    ///
    /// ``` self: ?*C.QDateTime, years: i32 ```
    pub fn AddYears(self: ?*anyopaque, years: i32) ?*C.QDateTime {
        return C.QDateTime_AddYears(@ptrCast(self), @intCast(years));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#addSecs)
    ///
    /// ``` self: ?*C.QDateTime, secs: i64 ```
    pub fn AddSecs(self: ?*anyopaque, secs: i64) ?*C.QDateTime {
        return C.QDateTime_AddSecs(@ptrCast(self), @intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#addMSecs)
    ///
    /// ``` self: ?*C.QDateTime, msecs: i64 ```
    pub fn AddMSecs(self: ?*anyopaque, msecs: i64) ?*C.QDateTime {
        return C.QDateTime_AddMSecs(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toTimeSpec)
    ///
    /// ``` self: ?*C.QDateTime, spec: qnamespace_enums.TimeSpec ```
    pub fn ToTimeSpec(self: ?*anyopaque, spec: i64) ?*C.QDateTime {
        return C.QDateTime_ToTimeSpec(@ptrCast(self), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toLocalTime)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn ToLocalTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_ToLocalTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toUTC)
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn ToUTC(self: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_ToUTC(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toOffsetFromUtc)
    ///
    /// ``` self: ?*C.QDateTime, offsetSeconds: i32 ```
    pub fn ToOffsetFromUtc(self: ?*anyopaque, offsetSeconds: i32) ?*C.QDateTime {
        return C.QDateTime_ToOffsetFromUtc(@ptrCast(self), @intCast(offsetSeconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toTimeZone)
    ///
    /// ``` self: ?*C.QDateTime, toZone: ?*C.QTimeZone ```
    pub fn ToTimeZone(self: ?*anyopaque, toZone: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_ToTimeZone(@ptrCast(self), @ptrCast(toZone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#daysTo)
    ///
    /// ``` self: ?*C.QDateTime, param1: ?*C.QDateTime ```
    pub fn DaysTo(self: ?*anyopaque, param1: ?*anyopaque) i64 {
        return C.QDateTime_DaysTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#secsTo)
    ///
    /// ``` self: ?*C.QDateTime, param1: ?*C.QDateTime ```
    pub fn SecsTo(self: ?*anyopaque, param1: ?*anyopaque) i64 {
        return C.QDateTime_SecsTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#msecsTo)
    ///
    /// ``` self: ?*C.QDateTime, param1: ?*C.QDateTime ```
    pub fn MsecsTo(self: ?*anyopaque, param1: ?*anyopaque) i64 {
        return C.QDateTime_MsecsTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#currentDateTime)
    ///
    ///
    pub fn CurrentDateTime() ?*C.QDateTime {
        return C.QDateTime_CurrentDateTime();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#currentDateTimeUtc)
    ///
    ///
    pub fn CurrentDateTimeUtc() ?*C.QDateTime {
        return C.QDateTime_CurrentDateTimeUtc();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromString)
    ///
    /// ``` stringVal: []const u8 ```
    pub fn FromStringWithStringVal(stringVal: []const u8) ?*C.QDateTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QDateTime_FromStringWithStringVal(stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: []const u8 ```
    pub fn FromString4(stringVal: []const u8, format: []const u8) ?*C.QDateTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        return C.QDateTime_FromString4(stringVal_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromMSecsSinceEpoch)
    ///
    /// ``` msecs: i64 ```
    pub fn FromMSecsSinceEpoch(msecs: i64) ?*C.QDateTime {
        return C.QDateTime_FromMSecsSinceEpoch(@intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromSecsSinceEpoch)
    ///
    /// ``` secs: i64 ```
    pub fn FromSecsSinceEpoch(secs: i64) ?*C.QDateTime {
        return C.QDateTime_FromSecsSinceEpoch(@intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromMSecsSinceEpoch)
    ///
    /// ``` msecs: i64, timeZone: ?*C.QTimeZone ```
    pub fn FromMSecsSinceEpoch2(msecs: i64, timeZone: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_FromMSecsSinceEpoch2(@intCast(msecs), @ptrCast(timeZone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromSecsSinceEpoch)
    ///
    /// ``` secs: i64, timeZone: ?*C.QTimeZone ```
    pub fn FromSecsSinceEpoch2(secs: i64, timeZone: ?*anyopaque) ?*C.QDateTime {
        return C.QDateTime_FromSecsSinceEpoch2(@intCast(secs), @ptrCast(timeZone));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#currentMSecsSinceEpoch)
    ///
    ///
    pub fn CurrentMSecsSinceEpoch() i64 {
        return C.QDateTime_CurrentMSecsSinceEpoch();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#currentSecsSinceEpoch)
    ///
    ///
    pub fn CurrentSecsSinceEpoch() i64 {
        return C.QDateTime_CurrentSecsSinceEpoch();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toString)
    ///
    /// ``` self: ?*C.QDateTime, format: qnamespace_enums.DateFormat, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, format: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDateTime_ToString1(@ptrCast(self), @intCast(format));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#toString)
    ///
    /// ``` self: ?*C.QDateTime, format: []const u8, cal: ?*C.QCalendar, allocator: std.mem.Allocator ```
    pub fn ToString22(self: ?*anyopaque, format: []const u8, cal: ?*C.QCalendar, allocator: std.mem.Allocator) []const u8 {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        const _str = C.QDateTime_ToString22(@ptrCast(self), format_str, @ptrCast(cal));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: qnamespace_enums.DateFormat ```
    pub fn FromString23(stringVal: []const u8, format: i64) ?*C.QDateTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QDateTime_FromString23(stringVal_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromString)
    ///
    /// ``` stringVal: []const u8, format: []const u8, cal: ?*C.QCalendar ```
    pub fn FromString34(stringVal: []const u8, format: []const u8, cal: ?*C.QCalendar) ?*C.QDateTime {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        return C.QDateTime_FromString34(stringVal_str, format_str, @ptrCast(cal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromMSecsSinceEpoch)
    ///
    /// ``` msecs: i64, spec: qnamespace_enums.TimeSpec ```
    pub fn FromMSecsSinceEpoch22(msecs: i64, spec: i64) ?*C.QDateTime {
        return C.QDateTime_FromMSecsSinceEpoch22(@intCast(msecs), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromMSecsSinceEpoch)
    ///
    /// ``` msecs: i64, spec: qnamespace_enums.TimeSpec, offsetFromUtc: i32 ```
    pub fn FromMSecsSinceEpoch3(msecs: i64, spec: i64, offsetFromUtc: i32) ?*C.QDateTime {
        return C.QDateTime_FromMSecsSinceEpoch3(@intCast(msecs), @intCast(spec), @intCast(offsetFromUtc));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromSecsSinceEpoch)
    ///
    /// ``` secs: i64, spec: qnamespace_enums.TimeSpec ```
    pub fn FromSecsSinceEpoch22(secs: i64, spec: i64) ?*C.QDateTime {
        return C.QDateTime_FromSecsSinceEpoch22(@intCast(secs), @intCast(spec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatetime.html#fromSecsSinceEpoch)
    ///
    /// ``` secs: i64, spec: qnamespace_enums.TimeSpec, offsetFromUtc: i32 ```
    pub fn FromSecsSinceEpoch3(secs: i64, spec: i64, offsetFromUtc: i32) ?*C.QDateTime {
        return C.QDateTime_FromSecsSinceEpoch3(@intCast(secs), @intCast(spec), @intCast(offsetFromUtc));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDateTime ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDateTime_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdatetime.html#types
pub const enums = struct {
    pub const YearRange = enum {
        pub const First: i32 = -292275056;
        pub const Last: i32 = 292278994;
    };
};
