const C = @import("qt6c");
const qwebengineurlscheme_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineurlscheme.html
pub const qwebengineurlscheme = struct {
    /// New constructs a new QWebEngineUrlScheme object.
    ///
    ///
    pub fn New() ?*C.QWebEngineUrlScheme {
        return C.QWebEngineUrlScheme_new();
    }

    /// New2 constructs a new QWebEngineUrlScheme object.
    ///
    /// ``` name: []u8 ```
    pub fn New2(name: []u8) ?*C.QWebEngineUrlScheme {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QWebEngineUrlScheme_new2(name_str);
    }

    /// New3 constructs a new QWebEngineUrlScheme object.
    ///
    /// ``` that: ?*C.QWebEngineUrlScheme ```
    pub fn New3(that: ?*anyopaque) ?*C.QWebEngineUrlScheme {
        return C.QWebEngineUrlScheme_new3(@ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, that: ?*C.QWebEngineUrlScheme ```
    pub fn OperatorAssign(self: ?*anyopaque, that: ?*anyopaque) void {
        C.QWebEngineUrlScheme_OperatorAssign(@ptrCast(self), @ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#operator==)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, that: ?*C.QWebEngineUrlScheme ```
    pub fn OperatorEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineUrlScheme_OperatorEqual(@ptrCast(self), @ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#operator!=)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, that: ?*C.QWebEngineUrlScheme ```
    pub fn OperatorNotEqual(self: ?*anyopaque, that: ?*anyopaque) bool {
        return C.QWebEngineUrlScheme_OperatorNotEqual(@ptrCast(self), @ptrCast(that));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#name)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QWebEngineUrlScheme_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#setName)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, newValue: []u8 ```
    pub fn SetName(self: ?*anyopaque, newValue: []u8) void {
        const newValue_str = C.struct_libqt_string{
            .len = newValue.len,
            .data = @constCast(newValue.ptr),
        };
        C.QWebEngineUrlScheme_SetName(@ptrCast(self), newValue_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#syntax)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme ```
    pub fn Syntax(self: ?*anyopaque) i64 {
        return C.QWebEngineUrlScheme_Syntax(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#setSyntax)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, newValue: qwebengineurlscheme_enums.Syntax ```
    pub fn SetSyntax(self: ?*anyopaque, newValue: i64) void {
        C.QWebEngineUrlScheme_SetSyntax(@ptrCast(self), @intCast(newValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#defaultPort)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme ```
    pub fn DefaultPort(self: ?*anyopaque) i32 {
        return C.QWebEngineUrlScheme_DefaultPort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#setDefaultPort)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, newValue: i32 ```
    pub fn SetDefaultPort(self: ?*anyopaque, newValue: i32) void {
        C.QWebEngineUrlScheme_SetDefaultPort(@ptrCast(self), @intCast(newValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#flags)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QWebEngineUrlScheme_Flags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#setFlags)
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme, newValue: i32 ```
    pub fn SetFlags(self: ?*anyopaque, newValue: i64) void {
        C.QWebEngineUrlScheme_SetFlags(@ptrCast(self), @intCast(newValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#registerScheme)
    ///
    /// ``` scheme: ?*C.QWebEngineUrlScheme ```
    pub fn RegisterScheme(scheme: ?*anyopaque) void {
        C.QWebEngineUrlScheme_RegisterScheme(@ptrCast(scheme));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlscheme.html#schemeByName)
    ///
    /// ``` name: []u8 ```
    pub fn SchemeByName(name: []u8) ?*C.QWebEngineUrlScheme {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QWebEngineUrlScheme_SchemeByName(name_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineUrlScheme ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineUrlScheme_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebengineurlscheme.html#types
pub const enums = struct {
    pub const Syntax = enum {
        pub const HostPortAndUserInformation: i32 = 0;
        pub const HostAndPort: i32 = 1;
        pub const Host: i32 = 2;
        pub const Path: i32 = 3;
    };

    pub const SpecialPort = enum {
        pub const PortUnspecified: i32 = -1;
    };

    pub const Flag = enum {
        pub const SecureScheme: i32 = 1;
        pub const LocalScheme: i32 = 2;
        pub const LocalAccessAllowed: i32 = 4;
        pub const NoAccessAllowed: i32 = 8;
        pub const ServiceWorkersAllowed: i32 = 16;
        pub const ViewSourceAllowed: i32 = 32;
        pub const ContentSecurityPolicyIgnored: i32 = 64;
        pub const CorsEnabled: i32 = 128;
    };
};
