const C = @import("qt6c");
const std = @import("std");
pub const map_constu8_cqvariant = std.StringHashMapUnmanaged(?*C.QVariant);

/// https://doc.qt.io/qt-6/qauthenticator.html
pub const qauthenticator = struct {
    /// New constructs a new QAuthenticator object.
    ///
    ///
    pub fn New() ?*C.QAuthenticator {
        return C.QAuthenticator_new();
    }

    /// New2 constructs a new QAuthenticator object.
    ///
    /// ``` other: ?*C.QAuthenticator ```
    pub fn New2(other: ?*anyopaque) ?*C.QAuthenticator {
        return C.QAuthenticator_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#operator=)
    ///
    /// ``` self: ?*C.QAuthenticator, other: ?*C.QAuthenticator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAuthenticator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#operator==)
    ///
    /// ``` self: ?*C.QAuthenticator, other: ?*C.QAuthenticator ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QAuthenticator_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#operator!=)
    ///
    /// ``` self: ?*C.QAuthenticator, other: ?*C.QAuthenticator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QAuthenticator_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#user)
    ///
    /// ``` self: ?*C.QAuthenticator, allocator: std.mem.Allocator ```
    pub fn User(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAuthenticator_User(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#setUser)
    ///
    /// ``` self: ?*C.QAuthenticator, user: []const u8 ```
    pub fn SetUser(self: ?*anyopaque, user: []const u8) void {
        const user_str = C.struct_libqt_string{
            .len = user.len,
            .data = @constCast(user.ptr),
        };
        C.QAuthenticator_SetUser(@ptrCast(self), user_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#password)
    ///
    /// ``` self: ?*C.QAuthenticator, allocator: std.mem.Allocator ```
    pub fn Password(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAuthenticator_Password(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#setPassword)
    ///
    /// ``` self: ?*C.QAuthenticator, password: []const u8 ```
    pub fn SetPassword(self: ?*anyopaque, password: []const u8) void {
        const password_str = C.struct_libqt_string{
            .len = password.len,
            .data = @constCast(password.ptr),
        };
        C.QAuthenticator_SetPassword(@ptrCast(self), password_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#realm)
    ///
    /// ``` self: ?*C.QAuthenticator, allocator: std.mem.Allocator ```
    pub fn Realm(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAuthenticator_Realm(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#setRealm)
    ///
    /// ``` self: ?*C.QAuthenticator, realm: []const u8 ```
    pub fn SetRealm(self: ?*anyopaque, realm: []const u8) void {
        const realm_str = C.struct_libqt_string{
            .len = realm.len,
            .data = @constCast(realm.ptr),
        };
        C.QAuthenticator_SetRealm(@ptrCast(self), realm_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#option)
    ///
    /// ``` self: ?*C.QAuthenticator, opt: []const u8 ```
    pub fn Option(self: ?*anyopaque, opt: []const u8) ?*C.QVariant {
        const opt_str = C.struct_libqt_string{
            .len = opt.len,
            .data = @constCast(opt.ptr),
        };
        return C.QAuthenticator_Option(@ptrCast(self), opt_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#options)
    ///
    /// ``` self: ?*C.QAuthenticator, allocator: std.mem.Allocator ```
    pub fn Options(self: ?*anyopaque, allocator: std.mem.Allocator) map_constu8_cqvariant {
        const _map: C.struct_libqt_map = C.QAuthenticator_Options(@ptrCast(self));
        var _ret: map_constu8_cqvariant = .empty;
        defer {
            const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
            for (0.._map.len) |_i| {
                C.libqt_free(_keys[_i].data);
            }
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _entry_slice = std.mem.span(_key.data);
            const _value = _values[_i];
            _ret.put(allocator, _entry_slice, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#setOption)
    ///
    /// ``` self: ?*C.QAuthenticator, opt: []const u8, value: ?*C.QVariant ```
    pub fn SetOption(self: ?*anyopaque, opt: []const u8, value: ?*anyopaque) void {
        const opt_str = C.struct_libqt_string{
            .len = opt.len,
            .data = @constCast(opt.ptr),
        };
        C.QAuthenticator_SetOption(@ptrCast(self), opt_str, @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#isNull)
    ///
    /// ``` self: ?*C.QAuthenticator ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QAuthenticator_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qauthenticator.html#detach)
    ///
    /// ``` self: ?*C.QAuthenticator ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QAuthenticator_Detach(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAuthenticator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAuthenticator_Delete(@ptrCast(self));
    }
};
