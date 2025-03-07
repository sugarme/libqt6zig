const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qscopedpointerpoddeleter.html
pub const qscopedpointerpoddeleter = struct {
    /// New constructs a new QScopedPointerPodDeleter object.
    ///
    /// ``` other: ?*C.QScopedPointerPodDeleter ```
    pub fn New(other: ?*anyopaque) ?*C.QScopedPointerPodDeleter {
        return C.QScopedPointerPodDeleter_new(@ptrCast(other));
    }

    /// New2 constructs a new QScopedPointerPodDeleter object and invalidates the source QScopedPointerPodDeleter object.
    ///
    /// ``` other: ?*C.QScopedPointerPodDeleter ```
    pub fn New2(other: ?*anyopaque) ?*C.QScopedPointerPodDeleter {
        return C.QScopedPointerPodDeleter_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QScopedPointerPodDeleter, other: ?*QScopedPointerPodDeleter ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QScopedPointerPodDeleter_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QScopedPointerPodDeleter, other: ?*QScopedPointerPodDeleter ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QScopedPointerPodDeleter_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscopedpointerpoddeleter.html#cleanup)
    ///
    /// ``` pointer: ?*anyopaque ```
    pub fn Cleanup(pointer: ?*anyopaque) void {
        C.QScopedPointerPodDeleter_Cleanup(pointer);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscopedpointerpoddeleter.html#operator())
    ///
    /// ``` self: ?*C.QScopedPointerPodDeleter, pointer: ?*anyopaque ```
    pub fn OperatorCall(self: ?*anyopaque, pointer: ?*anyopaque) void {
        C.QScopedPointerPodDeleter_OperatorCall(@ptrCast(self), pointer);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QScopedPointerPodDeleter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QScopedPointerPodDeleter_Delete(@ptrCast(self));
    }
};
