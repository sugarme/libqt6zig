const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html
pub const qwebenginefullscreenrequest = struct {
    /// New constructs a new QWebEngineFullScreenRequest object.
    ///
    /// ``` other: ?*C.QWebEngineFullScreenRequest ```
    pub fn New(other: ?*anyopaque) ?*C.QWebEngineFullScreenRequest {
        return C.QWebEngineFullScreenRequest_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest, other: ?*C.QWebEngineFullScreenRequest ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineFullScreenRequest_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html#reject)
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest ```
    pub fn Reject(self: ?*anyopaque) void {
        C.QWebEngineFullScreenRequest_Reject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html#accept)
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QWebEngineFullScreenRequest_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html#toggleOn)
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest ```
    pub fn ToggleOn(self: ?*anyopaque) bool {
        return C.QWebEngineFullScreenRequest_ToggleOn(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefullscreenrequest.html#origin)
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest ```
    pub fn Origin(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineFullScreenRequest_Origin(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineFullScreenRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineFullScreenRequest_Delete(@ptrCast(self));
    }
};
