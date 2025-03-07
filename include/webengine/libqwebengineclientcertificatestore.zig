const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineclientcertificatestore.html
pub const qwebengineclientcertificatestore = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificatestore.html#add)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateStore, certificate: ?*C.QSslCertificate, privateKey: ?*C.QSslKey ```
    pub fn Add(self: ?*anyopaque, certificate: ?*anyopaque, privateKey: ?*anyopaque) void {
        C.QWebEngineClientCertificateStore_Add(@ptrCast(self), @ptrCast(certificate), @ptrCast(privateKey));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificatestore.html#certificates)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateStore, allocator: std.mem.Allocator ```
    pub fn Certificates(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QWebEngineClientCertificateStore_Certificates(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificatestore.html#remove)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateStore, certificate: ?*C.QSslCertificate ```
    pub fn Remove(self: ?*anyopaque, certificate: ?*anyopaque) void {
        C.QWebEngineClientCertificateStore_Remove(@ptrCast(self), @ptrCast(certificate));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineclientcertificatestore.html#clear)
    ///
    /// ``` self: ?*C.QWebEngineClientCertificateStore ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QWebEngineClientCertificateStore_Clear(@ptrCast(self));
    }
};
