const C = @import("qt6c");
const qssl_enums = @import("libqssl.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslcipher.html
pub const qsslcipher = struct {
    /// New constructs a new QSslCipher object.
    ///
    ///
    pub fn New() ?*C.QSslCipher {
        return C.QSslCipher_new();
    }

    /// New2 constructs a new QSslCipher object.
    ///
    /// ``` name: []const u8 ```
    pub fn New2(name: []const u8) ?*C.QSslCipher {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QSslCipher_new2(name_str);
    }

    /// New3 constructs a new QSslCipher object.
    ///
    /// ``` name: []const u8, protocol: qssl_enums.SslProtocol ```
    pub fn New3(name: []const u8, protocol: i64) ?*C.QSslCipher {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QSslCipher_new3(name_str, @intCast(protocol));
    }

    /// New4 constructs a new QSslCipher object.
    ///
    /// ``` other: ?*C.QSslCipher ```
    pub fn New4(other: ?*anyopaque) ?*C.QSslCipher {
        return C.QSslCipher_new4(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#operator=)
    ///
    /// ``` self: ?*C.QSslCipher, other: ?*C.QSslCipher ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCipher_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#swap)
    ///
    /// ``` self: ?*C.QSslCipher, other: ?*C.QSslCipher ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCipher_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#operator==)
    ///
    /// ``` self: ?*C.QSslCipher, other: ?*C.QSslCipher ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslCipher_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#operator!=)
    ///
    /// ``` self: ?*C.QSslCipher, other: ?*C.QSslCipher ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslCipher_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#isNull)
    ///
    /// ``` self: ?*C.QSslCipher ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSslCipher_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#name)
    ///
    /// ``` self: ?*C.QSslCipher, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCipher_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#supportedBits)
    ///
    /// ``` self: ?*C.QSslCipher ```
    pub fn SupportedBits(self: ?*anyopaque) i32 {
        return C.QSslCipher_SupportedBits(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#usedBits)
    ///
    /// ``` self: ?*C.QSslCipher ```
    pub fn UsedBits(self: ?*anyopaque) i32 {
        return C.QSslCipher_UsedBits(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#keyExchangeMethod)
    ///
    /// ``` self: ?*C.QSslCipher, allocator: std.mem.Allocator ```
    pub fn KeyExchangeMethod(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCipher_KeyExchangeMethod(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#authenticationMethod)
    ///
    /// ``` self: ?*C.QSslCipher, allocator: std.mem.Allocator ```
    pub fn AuthenticationMethod(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCipher_AuthenticationMethod(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#encryptionMethod)
    ///
    /// ``` self: ?*C.QSslCipher, allocator: std.mem.Allocator ```
    pub fn EncryptionMethod(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCipher_EncryptionMethod(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#protocolString)
    ///
    /// ``` self: ?*C.QSslCipher, allocator: std.mem.Allocator ```
    pub fn ProtocolString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCipher_ProtocolString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcipher.html#protocol)
    ///
    /// ``` self: ?*C.QSslCipher ```
    pub fn Protocol(self: ?*anyopaque) i64 {
        return C.QSslCipher_Protocol(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslCipher ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslCipher_Delete(@ptrCast(self));
    }
};
