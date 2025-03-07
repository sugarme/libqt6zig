const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qbasictimer.html
pub const qbasictimer = struct {
    /// New constructs a new QBasicTimer object.
    ///
    ///
    pub fn New() ?*C.QBasicTimer {
        return C.QBasicTimer_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#swap)
    ///
    /// ``` self: ?*C.QBasicTimer, other: ?*C.QBasicTimer ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBasicTimer_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#isActive)
    ///
    /// ``` self: ?*C.QBasicTimer ```
    pub fn IsActive(self: ?*anyopaque) bool {
        return C.QBasicTimer_IsActive(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#timerId)
    ///
    /// ``` self: ?*C.QBasicTimer ```
    pub fn TimerId(self: ?*anyopaque) i32 {
        return C.QBasicTimer_TimerId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#start)
    ///
    /// ``` self: ?*C.QBasicTimer, msec: i32, obj: ?*C.QObject ```
    pub fn Start(self: ?*anyopaque, msec: i32, obj: ?*anyopaque) void {
        C.QBasicTimer_Start(@ptrCast(self), @intCast(msec), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#start)
    ///
    /// ``` self: ?*C.QBasicTimer, msec: i32, timerType: qnamespace_enums.TimerType, obj: ?*C.QObject ```
    pub fn Start2(self: ?*anyopaque, msec: i32, timerType: i64, obj: ?*anyopaque) void {
        C.QBasicTimer_Start2(@ptrCast(self), @intCast(msec), @intCast(timerType), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasictimer.html#stop)
    ///
    /// ``` self: ?*C.QBasicTimer ```
    pub fn Stop(self: ?*anyopaque) void {
        C.QBasicTimer_Stop(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBasicTimer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBasicTimer_Delete(@ptrCast(self));
    }
};
