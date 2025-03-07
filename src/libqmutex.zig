const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qbasicmutex.html
pub const qbasicmutex = struct {
    /// New constructs a new QBasicMutex object.
    ///
    ///
    pub fn New() ?*C.QBasicMutex {
        return C.QBasicMutex_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#lock)
    ///
    /// ``` self: ?*C.QBasicMutex ```
    pub fn Lock(self: ?*anyopaque) void {
        C.QBasicMutex_Lock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#unlock)
    ///
    /// ``` self: ?*C.QBasicMutex ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QBasicMutex_Unlock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#tryLock)
    ///
    /// ``` self: ?*C.QBasicMutex ```
    pub fn TryLock(self: ?*anyopaque) bool {
        return C.QBasicMutex_TryLock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#try_lock)
    ///
    /// ``` self: ?*C.QBasicMutex ```
    pub fn TryLock2(self: ?*anyopaque) bool {
        return C.QBasicMutex_TryLock2(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBasicMutex ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBasicMutex_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmutex.html
pub const qmutex = struct {
    /// New constructs a new QMutex object.
    ///
    ///
    pub fn New() ?*C.QMutex {
        return C.QMutex_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmutex.html#try_lock)
    ///
    /// ``` self: ?*C.QMutex ```
    pub fn TryLock(self: ?*anyopaque) bool {
        return C.QMutex_TryLock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmutex.html#tryLock)
    ///
    /// ``` self: ?*C.QMutex, timeout: i32 ```
    pub fn TryLockWithTimeout(self: ?*anyopaque, timeout: i32) bool {
        return C.QMutex_TryLockWithTimeout(@ptrCast(self), @intCast(timeout));
    }

    /// Inherited from QBasicMutex
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#lock)
    ///
    /// ``` self: ?*C.QMutex ```
    pub fn Lock(self: ?*anyopaque) void {
        C.QBasicMutex_Lock(@ptrCast(self));
    }

    /// Inherited from QBasicMutex
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#unlock)
    ///
    /// ``` self: ?*C.QMutex ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QBasicMutex_Unlock(@ptrCast(self));
    }

    /// Inherited from QBasicMutex
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qbasicmutex.html#try_lock)
    ///
    /// ``` self: ?*C.QMutex ```
    pub fn TryLock2(self: ?*anyopaque) bool {
        return C.QBasicMutex_TryLock2(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMutex ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMutex_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qrecursivemutex.html
pub const qrecursivemutex = struct {
    /// New constructs a new QRecursiveMutex object.
    ///
    ///
    pub fn New() ?*C.QRecursiveMutex {
        return C.QRecursiveMutex_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrecursivemutex.html#lock)
    ///
    /// ``` self: ?*C.QRecursiveMutex ```
    pub fn Lock(self: ?*anyopaque) void {
        C.QRecursiveMutex_Lock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrecursivemutex.html#tryLock)
    ///
    /// ``` self: ?*C.QRecursiveMutex ```
    pub fn TryLock(self: ?*anyopaque) bool {
        return C.QRecursiveMutex_TryLock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrecursivemutex.html#unlock)
    ///
    /// ``` self: ?*C.QRecursiveMutex ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QRecursiveMutex_Unlock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrecursivemutex.html#try_lock)
    ///
    /// ``` self: ?*C.QRecursiveMutex ```
    pub fn TryLock2(self: ?*anyopaque) bool {
        return C.QRecursiveMutex_TryLock2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrecursivemutex.html#tryLock)
    ///
    /// ``` self: ?*C.QRecursiveMutex, timeout: i32 ```
    pub fn TryLock1(self: ?*anyopaque, timeout: i32) bool {
        return C.QRecursiveMutex_TryLock1(@ptrCast(self), @intCast(timeout));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRecursiveMutex ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRecursiveMutex_Delete(@ptrCast(self));
    }
};
