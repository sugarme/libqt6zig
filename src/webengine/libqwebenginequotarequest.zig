const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qwebenginequotarequest.html
pub const qwebenginequotarequest = struct {
    /// New constructs a new QWebEngineQuotaRequest object.
    ///
    ///
    pub fn New() ?*C.QWebEngineQuotaRequest {
        return C.QWebEngineQuotaRequest_new();
    }

    /// New2 constructs a new QWebEngineQuotaRequest object.
    ///
    /// ``` param1: ?*C.QWebEngineQuotaRequest ```
    pub fn New2(param1: ?*anyopaque) ?*C.QWebEngineQuotaRequest {
        return C.QWebEngineQuotaRequest_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#accept)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QWebEngineQuotaRequest_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#reject)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest ```
    pub fn Reject(self: ?*anyopaque) void {
        C.QWebEngineQuotaRequest_Reject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#origin)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest ```
    pub fn Origin(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineQuotaRequest_Origin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#requestedSize)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest ```
    pub fn RequestedSize(self: ?*anyopaque) i64 {
        return C.QWebEngineQuotaRequest_RequestedSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#operator==)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest, that: ?*C.QWebEngineQuotaRequest ```
    pub fn OperatorEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineQuotaRequest_OperatorEqual(@ptrCast(self), @ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginequotarequest.html#operator!=)
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest, that: ?*C.QWebEngineQuotaRequest ```
    pub fn OperatorNotEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineQuotaRequest_OperatorNotEqual(@ptrCast(self), @ptrCast(that));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineQuotaRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineQuotaRequest_Delete(@ptrCast(self));
    }
};
