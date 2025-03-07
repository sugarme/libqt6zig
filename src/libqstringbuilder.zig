const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qabstractconcatenable.html
pub const qabstractconcatenable = struct {
    /// New constructs a new QAbstractConcatenable object.
    ///
    /// ``` other: ?*C.QAbstractConcatenable ```
    pub fn New(other: ?*anyopaque) ?*C.QAbstractConcatenable {
        return C.QAbstractConcatenable_new(@ptrCast(other));
    }

    /// New2 constructs a new QAbstractConcatenable object and invalidates the source QAbstractConcatenable object.
    ///
    /// ``` other: ?*C.QAbstractConcatenable ```
    pub fn New2(other: ?*anyopaque) ?*C.QAbstractConcatenable {
        return C.QAbstractConcatenable_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QAbstractConcatenable, other: ?*QAbstractConcatenable ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAbstractConcatenable_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QAbstractConcatenable, other: ?*QAbstractConcatenable ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAbstractConcatenable_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAbstractConcatenable ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAbstractConcatenable_Delete(@ptrCast(self));
    }
};
