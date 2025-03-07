const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qshareddata.html
pub const qshareddata = struct {
    /// New constructs a new QSharedData object.
    ///
    ///
    pub fn New() ?*C.QSharedData {
        return C.QSharedData_new();
    }

    /// New2 constructs a new QSharedData object.
    ///
    /// ``` param1: ?*C.QSharedData ```
    pub fn New2(param1: ?*anyopaque) ?*C.QSharedData {
        return C.QSharedData_new2(@ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSharedData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSharedData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qadoptshareddatatag.html
pub const qadoptshareddatatag = struct {
    /// New constructs a new QAdoptSharedDataTag object.
    ///
    /// ``` other: ?*C.QAdoptSharedDataTag ```
    pub fn New(other: ?*anyopaque) ?*C.QAdoptSharedDataTag {
        return C.QAdoptSharedDataTag_new(@ptrCast(other));
    }

    /// New2 constructs a new QAdoptSharedDataTag object and invalidates the source QAdoptSharedDataTag object.
    ///
    /// ``` other: ?*C.QAdoptSharedDataTag ```
    pub fn New2(other: ?*anyopaque) ?*C.QAdoptSharedDataTag {
        return C.QAdoptSharedDataTag_new2(@ptrCast(other));
    }

    /// New3 constructs a new QAdoptSharedDataTag object.
    ///
    ///
    pub fn New3() ?*C.QAdoptSharedDataTag {
        return C.QAdoptSharedDataTag_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QAdoptSharedDataTag, other: ?*QAdoptSharedDataTag ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAdoptSharedDataTag_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QAdoptSharedDataTag, other: ?*QAdoptSharedDataTag ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAdoptSharedDataTag_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAdoptSharedDataTag ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAdoptSharedDataTag_Delete(@ptrCast(self));
    }
};
