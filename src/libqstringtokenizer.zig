const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qstringtokenizerbasebase.html
pub const qstringtokenizerbasebase = struct {
    /// New constructs a new QStringTokenizerBaseBase object.
    ///
    /// ``` other: ?*C.QStringTokenizerBaseBase ```
    pub fn New(other: ?*anyopaque) ?*C.QStringTokenizerBaseBase {
        return C.QStringTokenizerBaseBase_new(@ptrCast(other));
    }

    /// New2 constructs a new QStringTokenizerBaseBase object.
    ///
    /// ``` param1: ?*C.QStringTokenizerBaseBase ```
    pub fn New2(param1: ?*anyopaque) ?*C.QStringTokenizerBaseBase {
        return C.QStringTokenizerBaseBase_new2(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QStringTokenizerBaseBase, other: ?*QStringTokenizerBaseBase ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStringTokenizerBaseBase_CopyAssign(@ptrCast(self), @ptrCast(other));
    }
};
