const C = @import("qt6c");
const qlibraryinfo_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qlibraryinfo.html
pub const qlibraryinfo = struct {
    /// New constructs a new QLibraryInfo object.
    ///
    /// ``` other: ?*C.QLibraryInfo ```
    pub fn New(other: ?*anyopaque) ?*C.QLibraryInfo {
        return C.QLibraryInfo_new(@ptrCast(other));
    }

    /// New2 constructs a new QLibraryInfo object and invalidates the source QLibraryInfo object.
    ///
    /// ``` other: ?*C.QLibraryInfo ```
    pub fn New2(other: ?*anyopaque) ?*C.QLibraryInfo {
        return C.QLibraryInfo_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QLibraryInfo, other: ?*QLibraryInfo ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLibraryInfo_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QLibraryInfo, other: ?*QLibraryInfo ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLibraryInfo_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#build)
    ///
    ///
    pub fn Build() []const u8 {
        const _ret = C.QLibraryInfo_Build();
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#isDebugBuild)
    ///
    ///
    pub fn IsDebugBuild() bool {
        return C.QLibraryInfo_IsDebugBuild();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#version)
    ///
    ///
    pub fn Version() ?*C.QVersionNumber {
        return C.QLibraryInfo_Version();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#path)
    ///
    /// ``` p: qlibraryinfo_enums.LibraryPath, allocator: std.mem.Allocator ```
    pub fn Path(p: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QLibraryInfo_Path(@intCast(p));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#location)
    ///
    /// ``` location: qlibraryinfo_enums.LibraryPath, allocator: std.mem.Allocator ```
    pub fn Location(location: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QLibraryInfo_Location(@intCast(location));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlibraryinfo.html#platformPluginArguments)
    ///
    /// ``` platformName: []const u8, allocator: std.mem.Allocator ```
    pub fn PlatformPluginArguments(platformName: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const platformName_str = C.struct_libqt_string{
            .len = platformName.len,
            .data = @constCast(platformName.ptr),
        };
        const _arr: C.struct_libqt_list = C.QLibraryInfo_PlatformPluginArguments(platformName_str);
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLibraryInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLibraryInfo_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qlibraryinfo.html#types
pub const enums = struct {
    pub const LibraryPath = enum {
        pub const PrefixPath: i32 = 0;
        pub const DocumentationPath: i32 = 1;
        pub const HeadersPath: i32 = 2;
        pub const LibrariesPath: i32 = 3;
        pub const LibraryExecutablesPath: i32 = 4;
        pub const BinariesPath: i32 = 5;
        pub const PluginsPath: i32 = 6;
        pub const QmlImportsPath: i32 = 7;
        pub const Qml2ImportsPath: i32 = 7;
        pub const ArchDataPath: i32 = 8;
        pub const DataPath: i32 = 9;
        pub const TranslationsPath: i32 = 10;
        pub const ExamplesPath: i32 = 11;
        pub const TestsPath: i32 = 12;
        pub const SettingsPath: i32 = 100;
    };
};
