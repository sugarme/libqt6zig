const C = @import("qt6c");
const qdeadlinetimer_enums = enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qdeadlinetimer.html
pub const qdeadlinetimer = struct {
    /// New constructs a new QDeadlineTimer object.
    ///
    /// ``` other: ?*C.QDeadlineTimer ```
    pub fn New(other: ?*anyopaque) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new(@ptrCast(other));
    }

    /// New2 constructs a new QDeadlineTimer object and invalidates the source QDeadlineTimer object.
    ///
    /// ``` other: ?*C.QDeadlineTimer ```
    pub fn New2(other: ?*anyopaque) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new2(@ptrCast(other));
    }

    /// New3 constructs a new QDeadlineTimer object.
    ///
    ///
    pub fn New3() ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new3();
    }

    /// New4 constructs a new QDeadlineTimer object.
    ///
    /// ``` param1: qdeadlinetimer_enums.ForeverConstant ```
    pub fn New4(param1: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new4(@intCast(param1));
    }

    /// New5 constructs a new QDeadlineTimer object.
    ///
    /// ``` msecs: i64 ```
    pub fn New5(msecs: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new5(@intCast(msecs));
    }

    /// New6 constructs a new QDeadlineTimer object.
    ///
    /// ``` param1: ?*C.QDeadlineTimer ```
    pub fn New6(param1: ?*anyopaque) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new6(@ptrCast(param1));
    }

    /// New7 constructs a new QDeadlineTimer object.
    ///
    /// ``` type_: qnamespace_enums.TimerType ```
    pub fn New7(type_: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new7(@intCast(type_));
    }

    /// New8 constructs a new QDeadlineTimer object.
    ///
    /// ``` param1: qdeadlinetimer_enums.ForeverConstant, type_: qnamespace_enums.TimerType ```
    pub fn New8(param1: i64, type_: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new8(@intCast(param1), @intCast(type_));
    }

    /// New9 constructs a new QDeadlineTimer object.
    ///
    /// ``` msecs: i64, typeVal: qnamespace_enums.TimerType ```
    pub fn New9(msecs: i64, typeVal: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_new9(@intCast(msecs), @intCast(typeVal));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QDeadlineTimer, other: ?*QDeadlineTimer ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDeadlineTimer_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QDeadlineTimer, other: ?*QDeadlineTimer ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDeadlineTimer_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#swap)
    ///
    /// ``` self: ?*C.QDeadlineTimer, other: ?*C.QDeadlineTimer ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDeadlineTimer_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#isForever)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn IsForever(self: ?*anyopaque) bool {
        return C.QDeadlineTimer_IsForever(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#hasExpired)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn HasExpired(self: ?*anyopaque) bool {
        return C.QDeadlineTimer_HasExpired(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#timerType)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn TimerType(self: ?*anyopaque) i64 {
        return C.QDeadlineTimer_TimerType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setTimerType)
    ///
    /// ``` self: ?*C.QDeadlineTimer, typeVal: qnamespace_enums.TimerType ```
    pub fn SetTimerType(self: ?*anyopaque, typeVal: i64) void {
        C.QDeadlineTimer_SetTimerType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#remainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn RemainingTime(self: ?*anyopaque) i64 {
        return C.QDeadlineTimer_RemainingTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#remainingTimeNSecs)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn RemainingTimeNSecs(self: ?*anyopaque) i64 {
        return C.QDeadlineTimer_RemainingTimeNSecs(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setRemainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64 ```
    pub fn SetRemainingTime(self: ?*anyopaque, msecs: i64) void {
        C.QDeadlineTimer_SetRemainingTime(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseRemainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64 ```
    pub fn SetPreciseRemainingTime(self: ?*anyopaque, secs: i64) void {
        C.QDeadlineTimer_SetPreciseRemainingTime(@ptrCast(self), @intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#deadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn Deadline(self: ?*anyopaque) i64 {
        return C.QDeadlineTimer_Deadline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#deadlineNSecs)
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn DeadlineNSecs(self: ?*anyopaque) i64 {
        return C.QDeadlineTimer_DeadlineNSecs(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setDeadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64 ```
    pub fn SetDeadline(self: ?*anyopaque, msecs: i64) void {
        C.QDeadlineTimer_SetDeadline(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseDeadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64 ```
    pub fn SetPreciseDeadline(self: ?*anyopaque, secs: i64) void {
        C.QDeadlineTimer_SetPreciseDeadline(@ptrCast(self), @intCast(secs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#addNSecs)
    ///
    /// ``` dt: ?*C.QDeadlineTimer, nsecs: i64 ```
    pub fn AddNSecs(dt: ?*C.QDeadlineTimer, nsecs: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_AddNSecs(@ptrCast(dt), @intCast(nsecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#current)
    ///
    ///
    pub fn Current() ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_Current();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#operator+=)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, msecs: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_OperatorPlusAssign(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#operator-=)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, msecs: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_OperatorMinusAssign(@ptrCast(self), @intCast(msecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#operator=)
    ///
    /// ``` self: ?*C.QDeadlineTimer, param1: ?*C.QDeadlineTimer ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QDeadlineTimer_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setRemainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64, typeVal: qnamespace_enums.TimerType ```
    pub fn SetRemainingTime2(self: ?*anyopaque, msecs: i64, typeVal: i64) void {
        C.QDeadlineTimer_SetRemainingTime2(@ptrCast(self), @intCast(msecs), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseRemainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64, nsecs: i64 ```
    pub fn SetPreciseRemainingTime2(self: ?*anyopaque, secs: i64, nsecs: i64) void {
        C.QDeadlineTimer_SetPreciseRemainingTime2(@ptrCast(self), @intCast(secs), @intCast(nsecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseRemainingTime)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64, nsecs: i64, typeVal: qnamespace_enums.TimerType ```
    pub fn SetPreciseRemainingTime3(self: ?*anyopaque, secs: i64, nsecs: i64, typeVal: i64) void {
        C.QDeadlineTimer_SetPreciseRemainingTime3(@ptrCast(self), @intCast(secs), @intCast(nsecs), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setDeadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer, msecs: i64, timerType: qnamespace_enums.TimerType ```
    pub fn SetDeadline2(self: ?*anyopaque, msecs: i64, timerType: i64) void {
        C.QDeadlineTimer_SetDeadline2(@ptrCast(self), @intCast(msecs), @intCast(timerType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseDeadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64, nsecs: i64 ```
    pub fn SetPreciseDeadline2(self: ?*anyopaque, secs: i64, nsecs: i64) void {
        C.QDeadlineTimer_SetPreciseDeadline2(@ptrCast(self), @intCast(secs), @intCast(nsecs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#setPreciseDeadline)
    ///
    /// ``` self: ?*C.QDeadlineTimer, secs: i64, nsecs: i64, typeVal: qnamespace_enums.TimerType ```
    pub fn SetPreciseDeadline3(self: ?*anyopaque, secs: i64, nsecs: i64, typeVal: i64) void {
        C.QDeadlineTimer_SetPreciseDeadline3(@ptrCast(self), @intCast(secs), @intCast(nsecs), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdeadlinetimer.html#current)
    ///
    /// ``` timerType: qnamespace_enums.TimerType ```
    pub fn Current1(timerType: i64) ?*C.QDeadlineTimer {
        return C.QDeadlineTimer_Current1(@intCast(timerType));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDeadlineTimer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDeadlineTimer_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdeadlinetimer.html#types
pub const enums = struct {
    pub const ForeverConstant = enum {
        pub const Forever: i32 = 0;
    };
};
