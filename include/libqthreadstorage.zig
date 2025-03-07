const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qthreadstoragedata.html
pub const qthreadstoragedata = struct {
    /// New constructs a new QThreadStorageData object.
    ///
    /// ``` param1: ?*C.QThreadStorageData ```
    pub fn New(param1: ?*anyopaque) ?*C.QThreadStorageData {
        return C.QThreadStorageData_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qthreadstoragedata.html#get)
    ///
    /// ``` self: ?*C.QThreadStorageData ```
    pub fn Get(self: ?*anyopaque) ?*anyopaque {
        return C.QThreadStorageData_Get(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qthreadstoragedata.html#set)
    ///
    /// ``` self: ?*C.QThreadStorageData, p: ?*anyopaque ```
    pub fn Set(self: ?*anyopaque, p: ?*anyopaque) ?*anyopaque {
        return C.QThreadStorageData_Set(@ptrCast(self), p);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qthreadstoragedata.html#finish)
    ///
    /// ``` param1: ?*anyopaque ```
    pub fn Finish(param1: ?*anyopaque) void {
        C.QThreadStorageData_Finish(param1);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QThreadStorageData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QThreadStorageData_Delete(@ptrCast(self));
    }
};
