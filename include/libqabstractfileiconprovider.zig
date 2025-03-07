const C = @import("qt6c");
const qabstractfileiconprovider_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qabstractfileiconprovider.html
pub const qabstractfileiconprovider = struct {
    /// New constructs a new QAbstractFileIconProvider object.
    ///
    ///
    pub fn New() ?*C.QAbstractFileIconProvider {
        return C.QAbstractFileIconProvider_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#icon)
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: qabstractfileiconprovider_enums.IconType ```
    pub fn Icon(self: ?*anyopaque, param1: i64) ?*C.QIcon {
        return C.QAbstractFileIconProvider_Icon(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn (?*C.QAbstractFileIconProvider, qabstractfileiconprovider_enums.IconType) callconv(.c) ?*C.QIcon ```
    pub fn OnIcon(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) ?*C.QIcon) void {
        C.QAbstractFileIconProvider_OnIcon(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: qabstractfileiconprovider_enums.IconType ```
    pub fn QBaseIcon(self: ?*anyopaque, param1: i64) ?*C.QIcon {
        return C.QAbstractFileIconProvider_QBaseIcon(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#icon)
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: ?*C.QFileInfo ```
    pub fn IconWithQFileInfo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QIcon {
        return C.QAbstractFileIconProvider_IconWithQFileInfo(@ptrCast(self), @ptrCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn (?*C.QAbstractFileIconProvider, ?*C.QFileInfo) callconv(.c) ?*C.QIcon ```
    pub fn OnIconWithQFileInfo(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QIcon) void {
        C.QAbstractFileIconProvider_OnIconWithQFileInfo(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: ?*C.QFileInfo ```
    pub fn QBaseIconWithQFileInfo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QIcon {
        return C.QAbstractFileIconProvider_QBaseIconWithQFileInfo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#type)
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Type(self: ?*anyopaque, param1: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAbstractFileIconProvider_Type(@ptrCast(self), @ptrCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn (?*C.QAbstractFileIconProvider, ?*C.QFileInfo) callconv(.c) []const u8 ```
    pub fn OnType(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) []const u8) void {
        C.QAbstractFileIconProvider_OnType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, param1: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn QBaseType(self: ?*anyopaque, param1: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAbstractFileIconProvider_QBaseType(@ptrCast(self), @ptrCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#setOptions)
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, options: i32 ```
    pub fn SetOptions(self: ?*anyopaque, options: i64) void {
        C.QAbstractFileIconProvider_SetOptions(@ptrCast(self), @intCast(options));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn (?*C.QAbstractFileIconProvider, i32) callconv(.c) void ```
    pub fn OnSetOptions(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) void) void {
        C.QAbstractFileIconProvider_OnSetOptions(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, options: i32 ```
    pub fn QBaseSetOptions(self: ?*anyopaque, options: i64) void {
        C.QAbstractFileIconProvider_QBaseSetOptions(@ptrCast(self), @intCast(options));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractfileiconprovider.html#options)
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider ```
    pub fn Options(self: ?*anyopaque) i64 {
        return C.QAbstractFileIconProvider_Options(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider, slot: fn () callconv(.c) i64 ```
    pub fn OnOptions(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QAbstractFileIconProvider_OnOptions(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider ```
    pub fn QBaseOptions(self: ?*anyopaque) i64 {
        return C.QAbstractFileIconProvider_QBaseOptions(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAbstractFileIconProvider ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAbstractFileIconProvider_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qabstractfileiconprovider.html#types
pub const enums = struct {
    pub const IconType = enum {
        pub const Computer: i32 = 0;
        pub const Desktop: i32 = 1;
        pub const Trashcan: i32 = 2;
        pub const Network: i32 = 3;
        pub const Drive: i32 = 4;
        pub const Folder: i32 = 5;
        pub const File: i32 = 6;
    };

    pub const Option = enum {
        pub const DontUseCustomDirectoryIcons: i32 = 1;
    };
};
