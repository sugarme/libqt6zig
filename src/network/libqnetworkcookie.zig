const C = @import("qt6c");
const qnetworkcookie_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qnetworkcookie.html
pub const qnetworkcookie = struct {
    /// New constructs a new QNetworkCookie object.
    ///
    ///
    pub fn New() ?*C.QNetworkCookie {
        return C.QNetworkCookie_new();
    }

    /// New2 constructs a new QNetworkCookie object.
    ///
    /// ``` other: ?*C.QNetworkCookie ```
    pub fn New2(other: ?*anyopaque) ?*C.QNetworkCookie {
        return C.QNetworkCookie_new2(@ptrCast(other));
    }

    /// New3 constructs a new QNetworkCookie object.
    ///
    /// ``` name: []u8 ```
    pub fn New3(name: []u8) ?*C.QNetworkCookie {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QNetworkCookie_new3(name_str);
    }

    /// New4 constructs a new QNetworkCookie object.
    ///
    /// ``` name: []u8, value: []u8 ```
    pub fn New4(name: []u8, value: []u8) ?*C.QNetworkCookie {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };

        return C.QNetworkCookie_new4(name_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkCookie, other: ?*C.QNetworkCookie ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkCookie_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#swap)
    ///
    /// ``` self: ?*C.QNetworkCookie, other: ?*C.QNetworkCookie ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkCookie_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#operator==)
    ///
    /// ``` self: ?*C.QNetworkCookie, other: ?*C.QNetworkCookie ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkCookie_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#operator!=)
    ///
    /// ``` self: ?*C.QNetworkCookie, other: ?*C.QNetworkCookie ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkCookie_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#isSecure)
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn IsSecure(self: ?*anyopaque) bool {
        return C.QNetworkCookie_IsSecure(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setSecure)
    ///
    /// ``` self: ?*C.QNetworkCookie, enable: bool ```
    pub fn SetSecure(self: ?*anyopaque, enable: bool) void {
        C.QNetworkCookie_SetSecure(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#isHttpOnly)
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn IsHttpOnly(self: ?*anyopaque) bool {
        return C.QNetworkCookie_IsHttpOnly(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setHttpOnly)
    ///
    /// ``` self: ?*C.QNetworkCookie, enable: bool ```
    pub fn SetHttpOnly(self: ?*anyopaque, enable: bool) void {
        C.QNetworkCookie_SetHttpOnly(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#sameSitePolicy)
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn SameSitePolicy(self: ?*anyopaque) i64 {
        return C.QNetworkCookie_SameSitePolicy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setSameSitePolicy)
    ///
    /// ``` self: ?*C.QNetworkCookie, sameSite: qnetworkcookie_enums.SameSite ```
    pub fn SetSameSitePolicy(self: ?*anyopaque, sameSite: i64) void {
        C.QNetworkCookie_SetSameSitePolicy(@ptrCast(self), @intCast(sameSite));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#isSessionCookie)
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn IsSessionCookie(self: ?*anyopaque) bool {
        return C.QNetworkCookie_IsSessionCookie(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#expirationDate)
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn ExpirationDate(self: ?*anyopaque) ?*C.QDateTime {
        return C.QNetworkCookie_ExpirationDate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setExpirationDate)
    ///
    /// ``` self: ?*C.QNetworkCookie, date: ?*C.QDateTime ```
    pub fn SetExpirationDate(self: ?*anyopaque, date: ?*anyopaque) void {
        C.QNetworkCookie_SetExpirationDate(@ptrCast(self), @ptrCast(date));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#domain)
    ///
    /// ``` self: ?*C.QNetworkCookie, allocator: std.mem.Allocator ```
    pub fn Domain(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkCookie_Domain(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setDomain)
    ///
    /// ``` self: ?*C.QNetworkCookie, domain: []const u8 ```
    pub fn SetDomain(self: ?*anyopaque, domain: []const u8) void {
        const domain_str = C.struct_libqt_string{
            .len = domain.len,
            .data = @constCast(domain.ptr),
        };
        C.QNetworkCookie_SetDomain(@ptrCast(self), domain_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#path)
    ///
    /// ``` self: ?*C.QNetworkCookie, allocator: std.mem.Allocator ```
    pub fn Path(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkCookie_Path(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setPath)
    ///
    /// ``` self: ?*C.QNetworkCookie, path: []const u8 ```
    pub fn SetPath(self: ?*anyopaque, path: []const u8) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QNetworkCookie_SetPath(@ptrCast(self), path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#name)
    ///
    /// ``` self: ?*C.QNetworkCookie, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QNetworkCookie_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setName)
    ///
    /// ``` self: ?*C.QNetworkCookie, cookieName: []u8 ```
    pub fn SetName(self: ?*anyopaque, cookieName: []u8) void {
        const cookieName_str = C.struct_libqt_string{
            .len = cookieName.len,
            .data = @constCast(cookieName.ptr),
        };
        C.QNetworkCookie_SetName(@ptrCast(self), cookieName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#value)
    ///
    /// ``` self: ?*C.QNetworkCookie, allocator: std.mem.Allocator ```
    pub fn Value(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QNetworkCookie_Value(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#setValue)
    ///
    /// ``` self: ?*C.QNetworkCookie, value: []u8 ```
    pub fn SetValue(self: ?*anyopaque, value: []u8) void {
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QNetworkCookie_SetValue(@ptrCast(self), value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#toRawForm)
    ///
    /// ``` self: ?*C.QNetworkCookie, allocator: std.mem.Allocator ```
    pub fn ToRawForm(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QNetworkCookie_ToRawForm(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#hasSameIdentifier)
    ///
    /// ``` self: ?*C.QNetworkCookie, other: ?*C.QNetworkCookie ```
    pub fn HasSameIdentifier(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkCookie_HasSameIdentifier(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#normalize)
    ///
    /// ``` self: ?*C.QNetworkCookie, url: ?*C.QUrl ```
    pub fn Normalize(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QNetworkCookie_Normalize(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#parseCookies)
    ///
    /// ``` cookieString: []u8, allocator: std.mem.Allocator ```
    pub fn ParseCookies(cookieString: []u8, allocator: std.mem.Allocator) []?*C.QNetworkCookie {
        const cookieString_str = C.struct_libqt_string{
            .len = cookieString.len,
            .data = @constCast(cookieString.ptr),
        };
        const _arr: C.struct_libqt_list = C.QNetworkCookie_ParseCookies(cookieString_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkCookie, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkCookie = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkcookie.html#toRawForm)
    ///
    /// ``` self: ?*C.QNetworkCookie, form: qnetworkcookie_enums.RawForm, allocator: std.mem.Allocator ```
    pub fn ToRawForm1(self: ?*anyopaque, form: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QNetworkCookie_ToRawForm1(@ptrCast(self), @intCast(form));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkCookie ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkCookie_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkcookie.html#types
pub const enums = struct {
    pub const RawForm = enum {
        pub const NameAndValueOnly: i32 = 0;
        pub const Full: i32 = 1;
    };

    pub const SameSite = enum {
        pub const Default: i32 = 0;
        pub const None: i32 = 1;
        pub const Lax: i32 = 2;
        pub const Strict: i32 = 3;
    };
};
