const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslcertificateextension.html
pub const qsslcertificateextension = struct {
    /// New constructs a new QSslCertificateExtension object.
    ///
    ///
    pub fn New() ?*C.QSslCertificateExtension {
        return C.QSslCertificateExtension_new();
    }

    /// New2 constructs a new QSslCertificateExtension object.
    ///
    /// ``` other: ?*C.QSslCertificateExtension ```
    pub fn New2(other: ?*anyopaque) ?*C.QSslCertificateExtension {
        return C.QSslCertificateExtension_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#operator=)
    ///
    /// ``` self: ?*C.QSslCertificateExtension, other: ?*C.QSslCertificateExtension ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCertificateExtension_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#swap)
    ///
    /// ``` self: ?*C.QSslCertificateExtension, other: ?*C.QSslCertificateExtension ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCertificateExtension_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#oid)
    ///
    /// ``` self: ?*C.QSslCertificateExtension, allocator: std.mem.Allocator ```
    pub fn Oid(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCertificateExtension_Oid(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#name)
    ///
    /// ``` self: ?*C.QSslCertificateExtension, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCertificateExtension_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#value)
    ///
    /// ``` self: ?*C.QSslCertificateExtension ```
    pub fn Value(self: ?*anyopaque) ?*C.QVariant {
        return C.QSslCertificateExtension_Value(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#isCritical)
    ///
    /// ``` self: ?*C.QSslCertificateExtension ```
    pub fn IsCritical(self: ?*anyopaque) bool {
        return C.QSslCertificateExtension_IsCritical(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificateextension.html#isSupported)
    ///
    /// ``` self: ?*C.QSslCertificateExtension ```
    pub fn IsSupported(self: ?*anyopaque) bool {
        return C.QSslCertificateExtension_IsSupported(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslCertificateExtension ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslCertificateExtension_Delete(@ptrCast(self));
    }
};
