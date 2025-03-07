const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qwebenginefindtextresult.html
pub const qwebenginefindtextresult = struct {
    /// New constructs a new QWebEngineFindTextResult object.
    ///
    ///
    pub fn New() ?*C.QWebEngineFindTextResult {
        return C.QWebEngineFindTextResult_new();
    }

    /// New2 constructs a new QWebEngineFindTextResult object.
    ///
    /// ``` other: ?*C.QWebEngineFindTextResult ```
    pub fn New2(other: ?*anyopaque) ?*C.QWebEngineFindTextResult {
        return C.QWebEngineFindTextResult_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefindtextresult.html#numberOfMatches)
    ///
    /// ``` self: ?*C.QWebEngineFindTextResult ```
    pub fn NumberOfMatches(self: ?*anyopaque) i32 {
        return C.QWebEngineFindTextResult_NumberOfMatches(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefindtextresult.html#activeMatch)
    ///
    /// ``` self: ?*C.QWebEngineFindTextResult ```
    pub fn ActiveMatch(self: ?*anyopaque) i32 {
        return C.QWebEngineFindTextResult_ActiveMatch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefindtextresult.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineFindTextResult, other: ?*C.QWebEngineFindTextResult ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineFindTextResult_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineFindTextResult ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineFindTextResult_Delete(@ptrCast(self));
    }
};
