const C = @import("qt6c");
const qurl_enums = @import("../libqurl.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qhstspolicy.html
pub const qhstspolicy = struct {
    /// New constructs a new QHstsPolicy object.
    ///
    ///
    pub fn New() ?*C.QHstsPolicy {
        return C.QHstsPolicy_new();
    }

    /// New2 constructs a new QHstsPolicy object.
    ///
    /// ``` expiry: ?*C.QDateTime, flags: i32, host: []const u8 ```
    pub fn New2(expiry: ?*anyopaque, flags: i64, host: []const u8) ?*C.QHstsPolicy {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };

        return C.QHstsPolicy_new2(@ptrCast(expiry), @intCast(flags), host_str);
    }

    /// New3 constructs a new QHstsPolicy object.
    ///
    /// ``` rhs: ?*C.QHstsPolicy ```
    pub fn New3(rhs: ?*anyopaque) ?*C.QHstsPolicy {
        return C.QHstsPolicy_new3(@ptrCast(rhs));
    }

    /// New4 constructs a new QHstsPolicy object.
    ///
    /// ``` expiry: ?*C.QDateTime, flags: i32, host: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn New4(expiry: ?*anyopaque, flags: i64, host: []const u8, mode: i64) ?*C.QHstsPolicy {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };

        return C.QHstsPolicy_new4(@ptrCast(expiry), @intCast(flags), host_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#operator=)
    ///
    /// ``` self: ?*C.QHstsPolicy, rhs: ?*C.QHstsPolicy ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QHstsPolicy_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#swap)
    ///
    /// ``` self: ?*C.QHstsPolicy, other: ?*C.QHstsPolicy ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QHstsPolicy_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#setHost)
    ///
    /// ``` self: ?*C.QHstsPolicy, host: []const u8 ```
    pub fn SetHost(self: ?*anyopaque, host: []const u8) void {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };
        C.QHstsPolicy_SetHost(@ptrCast(self), host_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#host)
    ///
    /// ``` self: ?*C.QHstsPolicy, allocator: std.mem.Allocator ```
    pub fn Host(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHstsPolicy_Host(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#setExpiry)
    ///
    /// ``` self: ?*C.QHstsPolicy, expiry: ?*C.QDateTime ```
    pub fn SetExpiry(self: ?*anyopaque, expiry: ?*anyopaque) void {
        C.QHstsPolicy_SetExpiry(@ptrCast(self), @ptrCast(expiry));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#expiry)
    ///
    /// ``` self: ?*C.QHstsPolicy ```
    pub fn Expiry(self: ?*anyopaque) ?*C.QDateTime {
        return C.QHstsPolicy_Expiry(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#setIncludesSubDomains)
    ///
    /// ``` self: ?*C.QHstsPolicy, include: bool ```
    pub fn SetIncludesSubDomains(self: ?*anyopaque, include: bool) void {
        C.QHstsPolicy_SetIncludesSubDomains(@ptrCast(self), include);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#includesSubDomains)
    ///
    /// ``` self: ?*C.QHstsPolicy ```
    pub fn IncludesSubDomains(self: ?*anyopaque) bool {
        return C.QHstsPolicy_IncludesSubDomains(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#isExpired)
    ///
    /// ``` self: ?*C.QHstsPolicy ```
    pub fn IsExpired(self: ?*anyopaque) bool {
        return C.QHstsPolicy_IsExpired(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#setHost)
    ///
    /// ``` self: ?*C.QHstsPolicy, host: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetHost2(self: ?*anyopaque, host: []const u8, mode: i64) void {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };
        C.QHstsPolicy_SetHost2(@ptrCast(self), host_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhstspolicy.html#host)
    ///
    /// ``` self: ?*C.QHstsPolicy, options: u32, allocator: std.mem.Allocator ```
    pub fn Host1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHstsPolicy_Host1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHstsPolicy ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHstsPolicy_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qhstspolicy.html#types
pub const enums = struct {
    pub const PolicyFlag = enum {
        pub const IncludeSubDomains: i32 = 1;
    };
};
