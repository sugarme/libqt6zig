const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qsemaphore.html
pub const qsemaphore = struct {
    /// New constructs a new QSemaphore object.
    ///
    ///
    pub fn New() ?*C.QSemaphore {
        return C.QSemaphore_new();
    }

    /// New2 constructs a new QSemaphore object.
    ///
    /// ``` n: i32 ```
    pub fn New2(n: i32) ?*C.QSemaphore {
        return C.QSemaphore_new2(@intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#acquire)
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn Acquire(self: ?*anyopaque) void {
        C.QSemaphore_Acquire(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#tryAcquire)
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn TryAcquire(self: ?*anyopaque) bool {
        return C.QSemaphore_TryAcquire(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#tryAcquire)
    ///
    /// ``` self: ?*C.QSemaphore, n: i32, timeout: i32 ```
    pub fn TryAcquire2(self: ?*anyopaque, n: i32, timeout: i32) bool {
        return C.QSemaphore_TryAcquire2(@ptrCast(self), @intCast(n), @intCast(timeout));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#release)
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn Release(self: ?*anyopaque) void {
        C.QSemaphore_Release(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#available)
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn Available(self: ?*anyopaque) i32 {
        return C.QSemaphore_Available(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#try_acquire)
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn TryAcquire3(self: ?*anyopaque) bool {
        return C.QSemaphore_TryAcquire3(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#acquire)
    ///
    /// ``` self: ?*C.QSemaphore, n: i32 ```
    pub fn Acquire1(self: ?*anyopaque, n: i32) void {
        C.QSemaphore_Acquire1(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#tryAcquire)
    ///
    /// ``` self: ?*C.QSemaphore, n: i32 ```
    pub fn TryAcquire1(self: ?*anyopaque, n: i32) bool {
        return C.QSemaphore_TryAcquire1(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphore.html#release)
    ///
    /// ``` self: ?*C.QSemaphore, n: i32 ```
    pub fn Release1(self: ?*anyopaque, n: i32) void {
        C.QSemaphore_Release1(@ptrCast(self), @intCast(n));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSemaphore ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSemaphore_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsemaphorereleaser.html
pub const qsemaphorereleaser = struct {
    /// New constructs a new QSemaphoreReleaser object.
    ///
    ///
    pub fn New() ?*C.QSemaphoreReleaser {
        return C.QSemaphoreReleaser_new();
    }

    /// New2 constructs a new QSemaphoreReleaser object.
    ///
    /// ``` sem: ?*C.QSemaphore ```
    pub fn New2(sem: ?*anyopaque) ?*C.QSemaphoreReleaser {
        return C.QSemaphoreReleaser_new2(@ptrCast(sem));
    }

    /// New3 constructs a new QSemaphoreReleaser object.
    ///
    /// ``` sem: ?*C.QSemaphore ```
    pub fn New3(sem: ?*anyopaque) ?*C.QSemaphoreReleaser {
        return C.QSemaphoreReleaser_new3(@ptrCast(sem));
    }

    /// New4 constructs a new QSemaphoreReleaser object.
    ///
    /// ``` sem: ?*C.QSemaphore, n: i32 ```
    pub fn New4(sem: ?*anyopaque, n: i32) ?*C.QSemaphoreReleaser {
        return C.QSemaphoreReleaser_new4(@ptrCast(sem), @intCast(n));
    }

    /// New5 constructs a new QSemaphoreReleaser object.
    ///
    /// ``` sem: ?*C.QSemaphore, n: i32 ```
    pub fn New5(sem: ?*anyopaque, n: i32) ?*C.QSemaphoreReleaser {
        return C.QSemaphoreReleaser_new5(@ptrCast(sem), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphorereleaser.html#swap)
    ///
    /// ``` self: ?*C.QSemaphoreReleaser, other: ?*C.QSemaphoreReleaser ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSemaphoreReleaser_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphorereleaser.html#semaphore)
    ///
    /// ``` self: ?*C.QSemaphoreReleaser ```
    pub fn Semaphore(self: ?*anyopaque) ?*C.QSemaphore {
        return C.QSemaphoreReleaser_Semaphore(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsemaphorereleaser.html#cancel)
    ///
    /// ``` self: ?*C.QSemaphoreReleaser ```
    pub fn Cancel(self: ?*anyopaque) ?*C.QSemaphore {
        return C.QSemaphoreReleaser_Cancel(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSemaphoreReleaser ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSemaphoreReleaser_Delete(@ptrCast(self));
    }
};
