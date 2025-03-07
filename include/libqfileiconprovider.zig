const C = @import("qt6c");
const qabstractfileiconprovider_enums = @import("libqabstractfileiconprovider.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qfileiconprovider.html
pub const qfileiconprovider = struct {
    /// New constructs a new QFileIconProvider object.
    ///
    ///
    pub fn New() ?*C.QFileIconProvider {
        return C.QFileIconProvider_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileiconprovider.html#icon)
    ///
    /// ``` self: ?*C.QFileIconProvider, typeVal: qabstractfileiconprovider_enums.IconType ```
    pub fn Icon(self: ?*anyopaque, typeVal: i64) ?*C.QIcon {
        return C.QFileIconProvider_Icon(@ptrCast(self), @intCast(typeVal));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QFileIconProvider, slot: fn (?*C.QFileIconProvider, qabstractfileiconprovider_enums.IconType) callconv(.c) ?*C.QIcon ```
    pub fn OnIcon(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) ?*C.QIcon) void {
        C.QFileIconProvider_OnIcon(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QFileIconProvider, typeVal: qabstractfileiconprovider_enums.IconType ```
    pub fn QBaseIcon(self: ?*anyopaque, typeVal: i64) ?*C.QIcon {
        return C.QFileIconProvider_QBaseIcon(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileiconprovider.html#icon)
    ///
    /// ``` self: ?*C.QFileIconProvider, info: ?*C.QFileInfo ```
    pub fn IconWithInfo(self: ?*anyopaque, info: ?*anyopaque) ?*C.QIcon {
        return C.QFileIconProvider_IconWithInfo(@ptrCast(self), @ptrCast(info));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QFileIconProvider, slot: fn (?*C.QFileIconProvider, ?*C.QFileInfo) callconv(.c) ?*C.QIcon ```
    pub fn OnIconWithInfo(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QIcon) void {
        C.QFileIconProvider_OnIconWithInfo(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QFileIconProvider, info: ?*C.QFileInfo ```
    pub fn QBaseIconWithInfo(self: ?*anyopaque, info: ?*anyopaque) ?*C.QIcon {
        return C.QFileIconProvider_QBaseIconWithInfo(@ptrCast(self), @ptrCast(info));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#icon)
    ///
    /// ``` self: ?*C.QFileIconProvider, param1: ?*C.QFileInfo ```
    pub fn IconWithQFileInfo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QIcon {
        return C.QAbstractFileIconProvider_IconWithQFileInfo(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn (?*C.QAbstractFileIconProvider, ?*C.QFileInfo) callconv(.c) ?*C.QIcon ```
    pub fn OnIconWithQFileInfo(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QIcon) void {
        C.QAbstractFileIconProvider_OnIconWithQFileInfo(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Base class method implementation
    ///
    /// ``` self: ?*C.QFileIconProvider, param1: ?*C.QFileInfo ```
    pub fn QBaseIconWithQFileInfo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QIcon {
        return C.QAbstractFileIconProvider_QBaseIconWithQFileInfo(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#type)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, param1: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Type(self: ?*anyopaque, param1: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileIconProvider_Type(@ptrCast(self), @ptrCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, param1: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn QBaseType(self: ?*anyopaque, param1: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileIconProvider_QBaseType(@ptrCast(self), @ptrCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, slot: fn (?*C.QFileIconProvider, ?*C.QFileInfo) callconv(.c) []const u8 ```
    pub fn OnType(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) []const u8) void {
        C.QFileIconProvider_OnType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#setOptions)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, options: i32 ```
    pub fn SetOptions(self: ?*anyopaque, options: i64) void {
        C.QFileIconProvider_SetOptions(@ptrCast(self), @intCast(options));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, options: i32 ```
    pub fn QBaseSetOptions(self: ?*anyopaque, options: i64) void {
        C.QFileIconProvider_QBaseSetOptions(@ptrCast(self), @intCast(options));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, slot: fn (?*C.QFileIconProvider, i32) callconv(.c) void ```
    pub fn OnSetOptions(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) void) void {
        C.QFileIconProvider_OnSetOptions(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#options)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider ```
    pub fn Options(self: ?*anyopaque) i64 {
        return C.QFileIconProvider_Options(@ptrCast(self));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider ```
    pub fn QBaseOptions(self: ?*anyopaque) i64 {
        return C.QFileIconProvider_QBaseOptions(@ptrCast(self));
    }

    /// Inherited from QAbstractFileIconProvider
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileIconProvider, slot: fn () callconv(.c) i64 ```
    pub fn OnOptions(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QFileIconProvider_OnOptions(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFileIconProvider ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFileIconProvider_Delete(@ptrCast(self));
    }
};
