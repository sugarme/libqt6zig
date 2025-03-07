const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html
pub const qsslpresharedkeyauthenticator = struct {
    /// New constructs a new QSslPreSharedKeyAuthenticator object.
    ///
    ///
    pub fn New() ?*C.QSslPreSharedKeyAuthenticator {
        return C.QSslPreSharedKeyAuthenticator_new();
    }

    /// New2 constructs a new QSslPreSharedKeyAuthenticator object.
    ///
    /// ``` authenticator: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn New2(authenticator: ?*anyopaque) ?*C.QSslPreSharedKeyAuthenticator {
        return C.QSslPreSharedKeyAuthenticator_new2(@ptrCast(authenticator));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#operator=)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, authenticator: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn OperatorAssign(self: ?*anyopaque, authenticator: ?*anyopaque) void {
        C.QSslPreSharedKeyAuthenticator_OperatorAssign(@ptrCast(self), @ptrCast(authenticator));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#swap)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, other: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslPreSharedKeyAuthenticator_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#identityHint)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, allocator: std.mem.Allocator ```
    pub fn IdentityHint(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslPreSharedKeyAuthenticator_IdentityHint(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#setIdentity)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, identity: []u8 ```
    pub fn SetIdentity(self: ?*anyopaque, identity: []u8) void {
        const identity_str = C.struct_libqt_string{
            .len = identity.len,
            .data = @constCast(identity.ptr),
        };
        C.QSslPreSharedKeyAuthenticator_SetIdentity(@ptrCast(self), identity_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#identity)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, allocator: std.mem.Allocator ```
    pub fn Identity(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslPreSharedKeyAuthenticator_Identity(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#maximumIdentityLength)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn MaximumIdentityLength(self: ?*anyopaque) i32 {
        return C.QSslPreSharedKeyAuthenticator_MaximumIdentityLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#setPreSharedKey)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, preSharedKey: []u8 ```
    pub fn SetPreSharedKey(self: ?*anyopaque, preSharedKey: []u8) void {
        const preSharedKey_str = C.struct_libqt_string{
            .len = preSharedKey.len,
            .data = @constCast(preSharedKey.ptr),
        };
        C.QSslPreSharedKeyAuthenticator_SetPreSharedKey(@ptrCast(self), preSharedKey_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#preSharedKey)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator, allocator: std.mem.Allocator ```
    pub fn PreSharedKey(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslPreSharedKeyAuthenticator_PreSharedKey(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslpresharedkeyauthenticator.html#maximumPreSharedKeyLength)
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn MaximumPreSharedKeyLength(self: ?*anyopaque) i32 {
        return C.QSslPreSharedKeyAuthenticator_MaximumPreSharedKeyLength(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslPreSharedKeyAuthenticator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslPreSharedKeyAuthenticator_Delete(@ptrCast(self));
    }
};
