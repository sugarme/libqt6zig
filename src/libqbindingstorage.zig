const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qbindingstatus.html
pub const qbindingstatus = struct {
    /// New constructs a new QBindingStatus object.
    ///
    /// ``` other: ?*C.QBindingStatus ```
    pub fn New(other: ?*anyopaque) ?*C.QBindingStatus {
        return C.QBindingStatus_new(@ptrCast(other));
    }

    /// New2 constructs a new QBindingStatus object and invalidates the source QBindingStatus object.
    ///
    /// ``` other: ?*C.QBindingStatus ```
    pub fn New2(other: ?*anyopaque) ?*C.QBindingStatus {
        return C.QBindingStatus_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QBindingStatus, other: ?*QBindingStatus ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBindingStatus_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QBindingStatus, other: ?*QBindingStatus ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBindingStatus_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBindingStatus ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBindingStatus_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qbindingstorage.html
pub const qbindingstorage = struct {
    /// New constructs a new QBindingStorage object.
    ///
    ///
    pub fn New() ?*C.QBindingStorage {
        return C.QBindingStorage_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbindingstorage.html#isEmpty)
    ///
    /// ``` self: ?*C.QBindingStorage ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QBindingStorage_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbindingstorage.html#isValid)
    ///
    /// ``` self: ?*C.QBindingStorage ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QBindingStorage_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbindingstorage.html#registerDependency)
    ///
    /// ``` self: ?*C.QBindingStorage, data: ?*C.QUntypedPropertyData ```
    pub fn RegisterDependency(self: ?*anyopaque, data: ?*anyopaque) void {
        C.QBindingStorage_RegisterDependency(@ptrCast(self), @ptrCast(data));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBindingStorage ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBindingStorage_Delete(@ptrCast(self));
    }
};
