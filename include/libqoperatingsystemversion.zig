const C = @import("qt6c");
const qoperatingsystemversion_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qoperatingsystemversionbase.html
pub const qoperatingsystemversionbase = struct {
    /// New constructs a new QOperatingSystemVersionBase object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32 ```
    pub fn New(osType: i64, vmajor: i32) ?*C.QOperatingSystemVersionBase {
        return C.QOperatingSystemVersionBase_new(@intCast(osType), @intCast(vmajor));
    }

    /// New2 constructs a new QOperatingSystemVersionBase object.
    ///
    /// ``` param1: ?*C.QOperatingSystemVersionBase ```
    pub fn New2(param1: ?*anyopaque) ?*C.QOperatingSystemVersionBase {
        return C.QOperatingSystemVersionBase_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QOperatingSystemVersionBase object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32, vminor: i32 ```
    pub fn New3(osType: i64, vmajor: i32, vminor: i32) ?*C.QOperatingSystemVersionBase {
        return C.QOperatingSystemVersionBase_new3(@intCast(osType), @intCast(vmajor), @intCast(vminor));
    }

    /// New4 constructs a new QOperatingSystemVersionBase object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32, vminor: i32, vmicro: i32 ```
    pub fn New4(osType: i64, vmajor: i32, vminor: i32, vmicro: i32) ?*C.QOperatingSystemVersionBase {
        return C.QOperatingSystemVersionBase_new4(@intCast(osType), @intCast(vmajor), @intCast(vminor), @intCast(vmicro));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#current)
    ///
    ///
    pub fn Current() ?*C.QOperatingSystemVersionBase {
        return C.QOperatingSystemVersionBase_Current();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#name)
    ///
    /// ``` osversion: ?*C.QOperatingSystemVersionBase, allocator: std.mem.Allocator ```
    pub fn Name(osversion: ?*C.QOperatingSystemVersionBase, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QOperatingSystemVersionBase_Name(@ptrCast(osversion));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#currentType)
    ///
    ///
    pub fn CurrentType() i64 {
        return C.QOperatingSystemVersionBase_CurrentType();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#version)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn Version(self: ?*anyopaque) ?*C.QVersionNumber {
        return C.QOperatingSystemVersionBase_Version(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#majorVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn MajorVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersionBase_MajorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#minorVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn MinorVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersionBase_MinorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#microVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn MicroVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersionBase_MicroVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#segmentCount)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn SegmentCount(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersionBase_SegmentCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#type)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QOperatingSystemVersionBase_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#name)
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase, allocator: std.mem.Allocator ```
    pub fn Name2(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QOperatingSystemVersionBase_Name2(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QOperatingSystemVersionBase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QOperatingSystemVersionBase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qoperatingsystemversion.html
pub const qoperatingsystemversion = struct {
    /// New constructs a new QOperatingSystemVersion object.
    ///
    /// ``` osversion: ?*C.QOperatingSystemVersionBase ```
    pub fn New(osversion: ?*anyopaque) ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_new(@ptrCast(osversion));
    }

    /// New2 constructs a new QOperatingSystemVersion object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32 ```
    pub fn New2(osType: i64, vmajor: i32) ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_new2(@intCast(osType), @intCast(vmajor));
    }

    /// New3 constructs a new QOperatingSystemVersion object.
    ///
    /// ``` param1: ?*C.QOperatingSystemVersion ```
    pub fn New3(param1: ?*anyopaque) ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_new3(@ptrCast(param1));
    }

    /// New4 constructs a new QOperatingSystemVersion object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32, vminor: i32 ```
    pub fn New4(osType: i64, vmajor: i32, vminor: i32) ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_new4(@intCast(osType), @intCast(vmajor), @intCast(vminor));
    }

    /// New5 constructs a new QOperatingSystemVersion object.
    ///
    /// ``` osType: qoperatingsystemversion_enums.OSType, vmajor: i32, vminor: i32, vmicro: i32 ```
    pub fn New5(osType: i64, vmajor: i32, vminor: i32, vmicro: i32) ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_new5(@intCast(osType), @intCast(vmajor), @intCast(vminor), @intCast(vmicro));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#current)
    ///
    ///
    pub fn Current() ?*C.QOperatingSystemVersion {
        return C.QOperatingSystemVersion_Current();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#currentType)
    ///
    ///
    pub fn CurrentType() i64 {
        return C.QOperatingSystemVersion_CurrentType();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#version)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn Version(self: ?*anyopaque) ?*C.QVersionNumber {
        return C.QOperatingSystemVersion_Version(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#majorVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn MajorVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersion_MajorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#minorVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn MinorVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersion_MinorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#microVersion)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn MicroVersion(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersion_MicroVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#segmentCount)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn SegmentCount(self: ?*anyopaque) i32 {
        return C.QOperatingSystemVersion_SegmentCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#type)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QOperatingSystemVersion_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversion.html#name)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QOperatingSystemVersion_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QOperatingSystemVersionBase
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qoperatingsystemversionbase.html#name)
    ///
    /// ``` self: ?*C.QOperatingSystemVersion, allocator: std.mem.Allocator ```
    pub fn Name2(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QOperatingSystemVersionBase_Name2(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QOperatingSystemVersion ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QOperatingSystemVersion_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qoperatingsystemversion.html#types
pub const enums = struct {
    pub const QOperatingSystemVersionBase__OSType = enum {
        pub const Unknown: i32 = 0;
        pub const Windows: i32 = 1;
        pub const MacOS: i32 = 2;
        pub const IOS: i32 = 3;
        pub const TvOS: i32 = 4;
        pub const WatchOS: i32 = 5;
        pub const Android: i32 = 6;
    };

    pub const QOperatingSystemVersion__OSType = enum {
        pub const Unknown: i32 = 0;
        pub const Windows: i32 = 1;
        pub const MacOS: i32 = 2;
        pub const IOS: i32 = 3;
        pub const TvOS: i32 = 4;
        pub const WatchOS: i32 = 5;
        pub const Android: i32 = 6;
    };
};
