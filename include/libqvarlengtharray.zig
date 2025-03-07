const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qvlabasebase.html
pub const qvlabasebase = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qvlabasebase.html#capacity)
    ///
    /// ``` self: ?*C.QVLABaseBase ```
    pub fn Capacity(self: ?*anyopaque) i64 {
        return C.QVLABaseBase_Capacity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvlabasebase.html#size)
    ///
    /// ``` self: ?*C.QVLABaseBase ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QVLABaseBase_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvlabasebase.html#empty)
    ///
    /// ``` self: ?*C.QVLABaseBase ```
    pub fn Empty(self: ?*anyopaque) bool {
        return C.QVLABaseBase_Empty(@ptrCast(self));
    }
};
