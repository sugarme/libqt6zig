const C = @import("qt6c");

/// https://doc.qt.io/qt-6/quntypedpropertydata.html
pub const quntypedpropertydata = struct {
    /// New constructs a new QUntypedPropertyData object.
    ///
    /// ``` other: ?*C.QUntypedPropertyData ```
    pub fn New(other: ?*anyopaque) ?*C.QUntypedPropertyData {
        return C.QUntypedPropertyData_new(@ptrCast(other));
    }

    /// New2 constructs a new QUntypedPropertyData object and invalidates the source QUntypedPropertyData object.
    ///
    /// ``` other: ?*C.QUntypedPropertyData ```
    pub fn New2(other: ?*anyopaque) ?*C.QUntypedPropertyData {
        return C.QUntypedPropertyData_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QUntypedPropertyData, other: ?*QUntypedPropertyData ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUntypedPropertyData_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QUntypedPropertyData, other: ?*QUntypedPropertyData ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUntypedPropertyData_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QUntypedPropertyData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QUntypedPropertyData_Delete(@ptrCast(self));
    }
};
