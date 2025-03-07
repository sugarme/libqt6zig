const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qrunnable.html
pub const qrunnable = struct {
    /// New constructs a new QRunnable object.
    ///
    ///
    pub fn New() ?*C.QRunnable {
        return C.QRunnable_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrunnable.html#run)
    ///
    /// ``` self: ?*C.QRunnable ```
    pub fn Run(self: ?*anyopaque) void {
        C.QRunnable_Run(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QRunnable, slot: fn () callconv(.c) void ```
    pub fn OnRun(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QRunnable_OnRun(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QRunnable ```
    pub fn QBaseRun(self: ?*anyopaque) void {
        C.QRunnable_QBaseRun(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrunnable.html#autoDelete)
    ///
    /// ``` self: ?*C.QRunnable ```
    pub fn AutoDelete(self: ?*anyopaque) bool {
        return C.QRunnable_AutoDelete(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrunnable.html#setAutoDelete)
    ///
    /// ``` self: ?*C.QRunnable, autoDelete: bool ```
    pub fn SetAutoDelete(self: ?*anyopaque, autoDelete: bool) void {
        C.QRunnable_SetAutoDelete(@ptrCast(self), autoDelete);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRunnable ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRunnable_Delete(@ptrCast(self));
    }
};
