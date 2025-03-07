const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html
pub const qwebengineregisterprotocolhandlerrequest = struct {
    /// New constructs a new QWebEngineRegisterProtocolHandlerRequest object.
    ///
    ///
    pub fn New() ?*C.QWebEngineRegisterProtocolHandlerRequest {
        return C.QWebEngineRegisterProtocolHandlerRequest_new();
    }

    /// New2 constructs a new QWebEngineRegisterProtocolHandlerRequest object.
    ///
    /// ``` param1: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn New2(param1: ?*anyopaque) ?*C.QWebEngineRegisterProtocolHandlerRequest {
        return C.QWebEngineRegisterProtocolHandlerRequest_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#accept)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QWebEngineRegisterProtocolHandlerRequest_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#reject)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn Reject(self: ?*anyopaque) void {
        C.QWebEngineRegisterProtocolHandlerRequest_Reject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#origin)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn Origin(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineRegisterProtocolHandlerRequest_Origin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#scheme)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest, allocator: std.mem.Allocator ```
    pub fn Scheme(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWebEngineRegisterProtocolHandlerRequest_Scheme(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#operator==)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest, that: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn OperatorEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineRegisterProtocolHandlerRequest_OperatorEqual(@ptrCast(self), @ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineregisterprotocolhandlerrequest.html#operator!=)
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest, that: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn OperatorNotEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineRegisterProtocolHandlerRequest_OperatorNotEqual(@ptrCast(self), @ptrCast(that));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineRegisterProtocolHandlerRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineRegisterProtocolHandlerRequest_Delete(@ptrCast(self));
    }
};
