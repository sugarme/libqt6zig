const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qscidocument.html
pub const qscidocument = struct {
    /// New constructs a new QsciDocument object.
    ///
    ///
    pub fn New() ?*C.QsciDocument {
        return C.QsciDocument_new();
    }

    /// New2 constructs a new QsciDocument object.
    ///
    /// ``` param1: ?*C.QsciDocument ```
    pub fn New2(param1: ?*anyopaque) ?*C.QsciDocument {
        return C.QsciDocument_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscidocument.html#operator=)
    ///
    /// ``` self: ?*C.QsciDocument, param1: ?*C.QsciDocument ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QsciDocument_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QsciDocument ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QsciDocument_Delete(@ptrCast(self));
    }
};
