const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qcontiguouscachedata.html
pub const qcontiguouscachedata = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qcontiguouscachedata.html#allocateData)
    ///
    /// ``` size: i64, alignment: i64 ```
    pub fn AllocateData(size: i64, alignment: i64) ?*C.QContiguousCacheData {
        return C.QContiguousCacheData_AllocateData(@intCast(size), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontiguouscachedata.html#freeData)
    ///
    /// ``` data: ?*C.QContiguousCacheData ```
    pub fn FreeData(data: ?*anyopaque) void {
        C.QContiguousCacheData_FreeData(@ptrCast(data));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QContiguousCacheData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QContiguousCacheData_Delete(@ptrCast(self));
    }
};
