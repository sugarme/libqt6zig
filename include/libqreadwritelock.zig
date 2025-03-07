const C = @import("qt6c");
const qreadwritelock_enums = enums;

/// https://doc.qt.io/qt-6/qreadwritelock.html
pub const qreadwritelock = struct {
    /// New constructs a new QReadWriteLock object.
    ///
    ///
    pub fn New() ?*C.QReadWriteLock {
        return C.QReadWriteLock_new();
    }

    /// New2 constructs a new QReadWriteLock object.
    ///
    /// ``` recursionMode: qreadwritelock_enums.RecursionMode ```
    pub fn New2(recursionMode: i64) ?*C.QReadWriteLock {
        return C.QReadWriteLock_new2(@intCast(recursionMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#lockForRead)
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn LockForRead(self: ?*anyopaque) void {
        C.QReadWriteLock_LockForRead(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#tryLockForRead)
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn TryLockForRead(self: ?*anyopaque) bool {
        return C.QReadWriteLock_TryLockForRead(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#tryLockForRead)
    ///
    /// ``` self: ?*C.QReadWriteLock, timeout: i32 ```
    pub fn TryLockForReadWithTimeout(self: ?*anyopaque, timeout: i32) bool {
        return C.QReadWriteLock_TryLockForReadWithTimeout(@ptrCast(self), @intCast(timeout));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#lockForWrite)
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn LockForWrite(self: ?*anyopaque) void {
        C.QReadWriteLock_LockForWrite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#tryLockForWrite)
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn TryLockForWrite(self: ?*anyopaque) bool {
        return C.QReadWriteLock_TryLockForWrite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#tryLockForWrite)
    ///
    /// ``` self: ?*C.QReadWriteLock, timeout: i32 ```
    pub fn TryLockForWriteWithTimeout(self: ?*anyopaque, timeout: i32) bool {
        return C.QReadWriteLock_TryLockForWriteWithTimeout(@ptrCast(self), @intCast(timeout));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadwritelock.html#unlock)
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QReadWriteLock_Unlock(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QReadWriteLock ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QReadWriteLock_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qreadlocker.html
pub const qreadlocker = struct {
    /// New constructs a new QReadLocker object.
    ///
    /// ``` readWriteLock: ?*C.QReadWriteLock ```
    pub fn New(readWriteLock: ?*anyopaque) ?*C.QReadLocker {
        return C.QReadLocker_new(@ptrCast(readWriteLock));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadlocker.html#unlock)
    ///
    /// ``` self: ?*C.QReadLocker ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QReadLocker_Unlock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadlocker.html#relock)
    ///
    /// ``` self: ?*C.QReadLocker ```
    pub fn Relock(self: ?*anyopaque) void {
        C.QReadLocker_Relock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qreadlocker.html#readWriteLock)
    ///
    /// ``` self: ?*C.QReadLocker ```
    pub fn ReadWriteLock(self: ?*anyopaque) ?*C.QReadWriteLock {
        return C.QReadLocker_ReadWriteLock(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QReadLocker ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QReadLocker_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwritelocker.html
pub const qwritelocker = struct {
    /// New constructs a new QWriteLocker object.
    ///
    /// ``` readWriteLock: ?*C.QReadWriteLock ```
    pub fn New(readWriteLock: ?*anyopaque) ?*C.QWriteLocker {
        return C.QWriteLocker_new(@ptrCast(readWriteLock));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwritelocker.html#unlock)
    ///
    /// ``` self: ?*C.QWriteLocker ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QWriteLocker_Unlock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwritelocker.html#relock)
    ///
    /// ``` self: ?*C.QWriteLocker ```
    pub fn Relock(self: ?*anyopaque) void {
        C.QWriteLocker_Relock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwritelocker.html#readWriteLock)
    ///
    /// ``` self: ?*C.QWriteLocker ```
    pub fn ReadWriteLock(self: ?*anyopaque) ?*C.QReadWriteLock {
        return C.QWriteLocker_ReadWriteLock(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWriteLocker ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWriteLocker_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qreadwritelock.html#types
pub const enums = struct {
    pub const RecursionMode = enum {
        pub const NonRecursive: i32 = 0;
        pub const Recursive: i32 = 1;
    };
};
