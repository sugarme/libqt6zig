const C = @import("qt6c");
const qcryptographichash_enums = @import("libqcryptographichash.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qmessageauthenticationcode.html
pub const qmessageauthenticationcode = struct {
    /// New constructs a new QMessageAuthenticationCode object.
    ///
    /// ``` method: qcryptographichash_enums.Algorithm ```
    pub fn New(method: i64) ?*C.QMessageAuthenticationCode {
        return C.QMessageAuthenticationCode_new(@intCast(method));
    }

    /// New2 constructs a new QMessageAuthenticationCode object.
    ///
    /// ``` method: qcryptographichash_enums.Algorithm, key: []u8 ```
    pub fn New2(method: i64, key: []u8) ?*C.QMessageAuthenticationCode {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };

        return C.QMessageAuthenticationCode_new2(@intCast(method), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#reset)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode ```
    pub fn Reset(self: ?*anyopaque) void {
        C.QMessageAuthenticationCode_Reset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#setKey)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode, key: []u8 ```
    pub fn SetKey(self: ?*anyopaque, key: []u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        C.QMessageAuthenticationCode_SetKey(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#addData)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode, data: []const u8, length: i64 ```
    pub fn AddData(self: ?*anyopaque, data: []const u8, length: i64) void {
        const data_Cstring = @constCast(data.ptr);
        C.QMessageAuthenticationCode_AddData(@ptrCast(self), data_Cstring, @intCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#addData)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode, data: []u8 ```
    pub fn AddDataWithData(self: ?*anyopaque, data: []u8) void {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QMessageAuthenticationCode_AddDataWithData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#addData)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode, device: ?*C.QIODevice ```
    pub fn AddDataWithDevice(self: ?*anyopaque, device: ?*anyopaque) bool {
        return C.QMessageAuthenticationCode_AddDataWithDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#result)
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode, allocator: std.mem.Allocator ```
    pub fn Result(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QMessageAuthenticationCode_Result(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmessageauthenticationcode.html#hash)
    ///
    /// ``` message: []u8, key: []u8, method: qcryptographichash_enums.Algorithm, allocator: std.mem.Allocator ```
    pub fn Hash(message: []u8, key: []u8, method: i64, allocator: std.mem.Allocator) []u8 {
        const message_str = C.struct_libqt_string{
            .len = message.len,
            .data = @constCast(message.ptr),
        };
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QMessageAuthenticationCode_Hash(message_str, key_str, @intCast(method));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMessageAuthenticationCode ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMessageAuthenticationCode_Delete(@ptrCast(self));
    }
};
