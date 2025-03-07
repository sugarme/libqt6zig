const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html
pub const qwebengineclientcertificateselection = struct {
    /// New constructs a new QWebEngineClientCertificateSelection object.
    ///
    /// ``` param1: ?*C.QWebEngineClientCertificateSelection ```
    pub fn New(param1: ?*anyopaque) ?*C.QWebEngineClientCertificateSelection {
        return C.QWebEngineClientCertificateSelection_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection, param1: ?*C.QWebEngineClientCertificateSelection ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QWebEngineClientCertificateSelection_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html#host)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection ```
    pub fn Host(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineClientCertificateSelection_Host(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html#select)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection, certificate: ?*C.QSslCertificate ```
    pub fn Select(self: ?*anyopaque, certificate: ?*anyopaque) void {
        C.QWebEngineClientCertificateSelection_Select(@ptrCast(self), @ptrCast(certificate));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html#selectNone)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection ```
    pub fn SelectNone(self: ?*anyopaque) void {
        C.QWebEngineClientCertificateSelection_SelectNone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificateselection.html#certificates)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection, allocator: std.mem.Allocator ```
    pub fn Certificates(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QWebEngineClientCertificateSelection_Certificates(@ptrCast(self));
        defer {
            const _obj: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                if (_obj[_i]) |obj| {
                    C.libqt_free(obj);
                }
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateSelection ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineClientCertificateSelection_Delete(@ptrCast(self));
    }
};
