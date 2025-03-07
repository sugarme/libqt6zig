const C = @import("qt6c");
const qssl_enums = @import("libqssl.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslkey.html
pub const qsslkey = struct {
    /// New constructs a new QSslKey object.
    ///
    ///
    pub fn New() ?*C.QSslKey {
        return C.QSslKey_new();
    }

    /// New2 constructs a new QSslKey object.
    ///
    /// ``` encoded: []u8, algorithm: qssl_enums.KeyAlgorithm ```
    pub fn New2(encoded: []u8, algorithm: i64) ?*C.QSslKey {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };

        return C.QSslKey_new2(encoded_str, @intCast(algorithm));
    }

    /// New3 constructs a new QSslKey object.
    ///
    /// ``` device: ?*C.QIODevice, algorithm: qssl_enums.KeyAlgorithm ```
    pub fn New3(device: ?*anyopaque, algorithm: i64) ?*C.QSslKey {
        return C.QSslKey_new3(@ptrCast(device), @intCast(algorithm));
    }

    /// New4 constructs a new QSslKey object.
    ///
    /// ``` handle: ?*anyopaque ```
    pub fn New4(handle: ?*anyopaque) ?*C.QSslKey {
        return C.QSslKey_new4(handle);
    }

    /// New5 constructs a new QSslKey object.
    ///
    /// ``` other: ?*C.QSslKey ```
    pub fn New5(other: ?*anyopaque) ?*C.QSslKey {
        return C.QSslKey_new5(@ptrCast(other));
    }

    /// New6 constructs a new QSslKey object.
    ///
    /// ``` encoded: []u8, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat ```
    pub fn New6(encoded: []u8, algorithm: i64, format: i64) ?*C.QSslKey {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };

        return C.QSslKey_new6(encoded_str, @intCast(algorithm), @intCast(format));
    }

    /// New7 constructs a new QSslKey object.
    ///
    /// ``` encoded: []u8, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat, typeVal: qssl_enums.KeyType ```
    pub fn New7(encoded: []u8, algorithm: i64, format: i64, typeVal: i64) ?*C.QSslKey {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };

        return C.QSslKey_new7(encoded_str, @intCast(algorithm), @intCast(format), @intCast(typeVal));
    }

    /// New8 constructs a new QSslKey object.
    ///
    /// ``` encoded: []u8, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat, typeVal: qssl_enums.KeyType, passPhrase: []u8 ```
    pub fn New8(encoded: []u8, algorithm: i64, format: i64, typeVal: i64, passPhrase: []u8) ?*C.QSslKey {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };
        const passPhrase_str = C.struct_libqt_string{
            .len = passPhrase.len,
            .data = @constCast(passPhrase.ptr),
        };

        return C.QSslKey_new8(encoded_str, @intCast(algorithm), @intCast(format), @intCast(typeVal), passPhrase_str);
    }

    /// New9 constructs a new QSslKey object.
    ///
    /// ``` device: ?*C.QIODevice, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat ```
    pub fn New9(device: ?*anyopaque, algorithm: i64, format: i64) ?*C.QSslKey {
        return C.QSslKey_new9(@ptrCast(device), @intCast(algorithm), @intCast(format));
    }

    /// New10 constructs a new QSslKey object.
    ///
    /// ``` device: ?*C.QIODevice, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat, typeVal: qssl_enums.KeyType ```
    pub fn New10(device: ?*anyopaque, algorithm: i64, format: i64, typeVal: i64) ?*C.QSslKey {
        return C.QSslKey_new10(@ptrCast(device), @intCast(algorithm), @intCast(format), @intCast(typeVal));
    }

    /// New11 constructs a new QSslKey object.
    ///
    /// ``` device: ?*C.QIODevice, algorithm: qssl_enums.KeyAlgorithm, format: qssl_enums.EncodingFormat, typeVal: qssl_enums.KeyType, passPhrase: []u8 ```
    pub fn New11(device: ?*anyopaque, algorithm: i64, format: i64, typeVal: i64, passPhrase: []u8) ?*C.QSslKey {
        const passPhrase_str = C.struct_libqt_string{
            .len = passPhrase.len,
            .data = @constCast(passPhrase.ptr),
        };

        return C.QSslKey_new11(@ptrCast(device), @intCast(algorithm), @intCast(format), @intCast(typeVal), passPhrase_str);
    }

    /// New12 constructs a new QSslKey object.
    ///
    /// ``` handle: ?*anyopaque, typeVal: qssl_enums.KeyType ```
    pub fn New12(handle: ?*anyopaque, typeVal: i64) ?*C.QSslKey {
        return C.QSslKey_new12(handle, @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#operator=)
    ///
    /// ``` self: ?*C.QSslKey, other: ?*C.QSslKey ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslKey_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#swap)
    ///
    /// ``` self: ?*C.QSslKey, other: ?*C.QSslKey ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslKey_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#isNull)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSslKey_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#clear)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QSslKey_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#length)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn Length(self: ?*anyopaque) i32 {
        return C.QSslKey_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#type)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QSslKey_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#algorithm)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn Algorithm(self: ?*anyopaque) i64 {
        return C.QSslKey_Algorithm(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#toPem)
    ///
    /// ``` self: ?*C.QSslKey, allocator: std.mem.Allocator ```
    pub fn ToPem(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslKey_ToPem(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#toDer)
    ///
    /// ``` self: ?*C.QSslKey, allocator: std.mem.Allocator ```
    pub fn ToDer(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslKey_ToDer(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#handle)
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn Handle(self: ?*anyopaque) ?*anyopaque {
        return C.QSslKey_Handle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#operator==)
    ///
    /// ``` self: ?*C.QSslKey, key: ?*C.QSslKey ```
    pub fn OperatorEqual(self: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QSslKey_OperatorEqual(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#operator!=)
    ///
    /// ``` self: ?*C.QSslKey, key: ?*C.QSslKey ```
    pub fn OperatorNotEqual(self: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QSslKey_OperatorNotEqual(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#toPem)
    ///
    /// ``` self: ?*C.QSslKey, passPhrase: []u8, allocator: std.mem.Allocator ```
    pub fn ToPem1(self: ?*anyopaque, passPhrase: []u8, allocator: std.mem.Allocator) []u8 {
        const passPhrase_str = C.struct_libqt_string{
            .len = passPhrase.len,
            .data = @constCast(passPhrase.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QSslKey_ToPem1(@ptrCast(self), passPhrase_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslkey.html#toDer)
    ///
    /// ``` self: ?*C.QSslKey, passPhrase: []u8, allocator: std.mem.Allocator ```
    pub fn ToDer1(self: ?*anyopaque, passPhrase: []u8, allocator: std.mem.Allocator) []u8 {
        const passPhrase_str = C.struct_libqt_string{
            .len = passPhrase.len,
            .data = @constCast(passPhrase.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QSslKey_ToDer1(@ptrCast(self), passPhrase_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslKey ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslKey_Delete(@ptrCast(self));
    }
};
