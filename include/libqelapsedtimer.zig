const C = @import("qt6c");
const qelapsedtimer_enums = enums;

/// https://doc.qt.io/qt-6/qelapsedtimer.html
pub const qelapsedtimer = struct {
    /// New constructs a new QElapsedTimer object.
    ///
    /// ``` other: ?*C.QElapsedTimer ```
    pub fn New(other: ?*anyopaque) ?*C.QElapsedTimer {
        return C.QElapsedTimer_new(@ptrCast(other));
    }

    /// New2 constructs a new QElapsedTimer object and invalidates the source QElapsedTimer object.
    ///
    /// ``` other: ?*C.QElapsedTimer ```
    pub fn New2(other: ?*anyopaque) ?*C.QElapsedTimer {
        return C.QElapsedTimer_new2(@ptrCast(other));
    }

    /// New3 constructs a new QElapsedTimer object.
    ///
    ///
    pub fn New3() ?*C.QElapsedTimer {
        return C.QElapsedTimer_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QElapsedTimer, other: ?*QElapsedTimer ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QElapsedTimer_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QElapsedTimer, other: ?*QElapsedTimer ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QElapsedTimer_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#clockType)
    ///
    ///
    pub fn ClockType() i64 {
        return C.QElapsedTimer_ClockType();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#isMonotonic)
    ///
    ///
    pub fn IsMonotonic() bool {
        return C.QElapsedTimer_IsMonotonic();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#start)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn Start(self: ?*anyopaque) void {
        C.QElapsedTimer_Start(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#restart)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn Restart(self: ?*anyopaque) i64 {
        return C.QElapsedTimer_Restart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#invalidate)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QElapsedTimer_Invalidate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#isValid)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QElapsedTimer_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#nsecsElapsed)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn NsecsElapsed(self: ?*anyopaque) i64 {
        return C.QElapsedTimer_NsecsElapsed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#elapsed)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn Elapsed(self: ?*anyopaque) i64 {
        return C.QElapsedTimer_Elapsed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#hasExpired)
    ///
    /// ``` self: ?*C.QElapsedTimer, timeout: i64 ```
    pub fn HasExpired(self: ?*anyopaque, timeout: i64) bool {
        return C.QElapsedTimer_HasExpired(@ptrCast(self), @intCast(timeout));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#msecsSinceReference)
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn MsecsSinceReference(self: ?*anyopaque) i64 {
        return C.QElapsedTimer_MsecsSinceReference(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#msecsTo)
    ///
    /// ``` self: ?*C.QElapsedTimer, other: ?*C.QElapsedTimer ```
    pub fn MsecsTo(self: ?*anyopaque, other: ?*anyopaque) i64 {
        return C.QElapsedTimer_MsecsTo(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qelapsedtimer.html#secsTo)
    ///
    /// ``` self: ?*C.QElapsedTimer, other: ?*C.QElapsedTimer ```
    pub fn SecsTo(self: ?*anyopaque, other: ?*anyopaque) i64 {
        return C.QElapsedTimer_SecsTo(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QElapsedTimer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QElapsedTimer_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qelapsedtimer.html#types
pub const enums = struct {
    pub const ClockType = enum {
        pub const SystemTime: i32 = 0;
        pub const MonotonicClock: i32 = 1;
        pub const MachAbsoluteTime: i32 = 2;
        pub const PerformanceCounter: i32 = 3;
    };
};
