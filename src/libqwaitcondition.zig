const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qwaitcondition.html
pub const qwaitcondition = struct {
    /// New constructs a new QWaitCondition object.
    ///
    ///
    pub fn New() ?*C.QWaitCondition {
        return C.QWaitCondition_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedMutex: ?*C.QMutex ```
    pub fn Wait(self: ?*anyopaque, lockedMutex: ?*anyopaque) bool {
        return C.QWaitCondition_Wait(@ptrCast(self), @ptrCast(lockedMutex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedMutex: ?*C.QMutex, time: u64 ```
    pub fn Wait2(self: ?*anyopaque, lockedMutex: ?*anyopaque, time: u64) bool {
        return C.QWaitCondition_Wait2(@ptrCast(self), @ptrCast(lockedMutex), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedReadWriteLock: ?*C.QReadWriteLock ```
    pub fn WaitWithLockedReadWriteLock(self: ?*anyopaque, lockedReadWriteLock: ?*anyopaque) bool {
        return C.QWaitCondition_WaitWithLockedReadWriteLock(@ptrCast(self), @ptrCast(lockedReadWriteLock));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedReadWriteLock: ?*C.QReadWriteLock, time: u64 ```
    pub fn Wait3(self: ?*anyopaque, lockedReadWriteLock: ?*anyopaque, time: u64) bool {
        return C.QWaitCondition_Wait3(@ptrCast(self), @ptrCast(lockedReadWriteLock), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wakeOne)
    ///
    /// ``` self: ?*C.QWaitCondition ```
    pub fn WakeOne(self: ?*anyopaque) void {
        C.QWaitCondition_WakeOne(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wakeAll)
    ///
    /// ``` self: ?*C.QWaitCondition ```
    pub fn WakeAll(self: ?*anyopaque) void {
        C.QWaitCondition_WakeAll(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#notify_one)
    ///
    /// ``` self: ?*C.QWaitCondition ```
    pub fn NotifyOne(self: ?*anyopaque) void {
        C.QWaitCondition_NotifyOne(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#notify_all)
    ///
    /// ``` self: ?*C.QWaitCondition ```
    pub fn NotifyAll(self: ?*anyopaque) void {
        C.QWaitCondition_NotifyAll(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedMutex: ?*C.QMutex, deadline: ?*C.QDeadlineTimer ```
    pub fn Wait22(self: ?*anyopaque, lockedMutex: ?*anyopaque, deadline: ?*C.QDeadlineTimer) bool {
        return C.QWaitCondition_Wait22(@ptrCast(self), @ptrCast(lockedMutex), @ptrCast(deadline));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwaitcondition.html#wait)
    ///
    /// ``` self: ?*C.QWaitCondition, lockedReadWriteLock: ?*C.QReadWriteLock, deadline: ?*C.QDeadlineTimer ```
    pub fn Wait23(self: ?*anyopaque, lockedReadWriteLock: ?*anyopaque, deadline: ?*C.QDeadlineTimer) bool {
        return C.QWaitCondition_Wait23(@ptrCast(self), @ptrCast(lockedReadWriteLock), @ptrCast(deadline));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWaitCondition ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWaitCondition_Delete(@ptrCast(self));
    }
};
