const C = @import("qt6c");
const qicon_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qicon.html
pub const qicon = struct {
    /// New constructs a new QIcon object.
    ///
    ///
    pub fn New() ?*C.QIcon {
        return C.QIcon_new();
    }

    /// New2 constructs a new QIcon object.
    ///
    /// ``` pixmap: ?*C.QPixmap ```
    pub fn New2(pixmap: ?*anyopaque) ?*C.QIcon {
        return C.QIcon_new2(@ptrCast(pixmap));
    }

    /// New3 constructs a new QIcon object.
    ///
    /// ``` other: ?*C.QIcon ```
    pub fn New3(other: ?*anyopaque) ?*C.QIcon {
        return C.QIcon_new3(@ptrCast(other));
    }

    /// New4 constructs a new QIcon object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New4(fileName: []const u8) ?*C.QIcon {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QIcon_new4(fileName_str);
    }

    /// New5 constructs a new QIcon object.
    ///
    /// ``` engine: ?*C.QIconEngine ```
    pub fn New5(engine: ?*anyopaque) ?*C.QIcon {
        return C.QIcon_new5(@ptrCast(engine));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#operator=)
    ///
    /// ``` self: ?*C.QIcon, other: ?*C.QIcon ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QIcon_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#swap)
    ///
    /// ``` self: ?*C.QIcon, other: ?*C.QIcon ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QIcon_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#operator QVariant)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QIcon_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize ```
    pub fn Pixmap(self: ?*anyopaque, size: ?*anyopaque) ?*C.QPixmap {
        return C.QIcon_Pixmap(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, w: i32, h: i32 ```
    pub fn Pixmap2(self: ?*anyopaque, w: i32, h: i32) ?*C.QPixmap {
        return C.QIcon_Pixmap2(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, extent: i32 ```
    pub fn PixmapWithExtent(self: ?*anyopaque, extent: i32) ?*C.QPixmap {
        return C.QIcon_PixmapWithExtent(@ptrCast(self), @intCast(extent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, devicePixelRatio: f64 ```
    pub fn Pixmap3(self: ?*anyopaque, size: ?*anyopaque, devicePixelRatio: f64) ?*C.QPixmap {
        return C.QIcon_Pixmap3(@ptrCast(self), @ptrCast(size), @floatCast(devicePixelRatio));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize ```
    pub fn Pixmap4(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque) ?*C.QPixmap {
        return C.QIcon_Pixmap4(@ptrCast(self), @ptrCast(window), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize ```
    pub fn ActualSize(self: ?*anyopaque, size: ?*anyopaque) ?*C.QSize {
        return C.QIcon_ActualSize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize ```
    pub fn ActualSize2(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque) ?*C.QSize {
        return C.QIcon_ActualSize2(@ptrCast(self), @ptrCast(window), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#name)
    ///
    /// ``` self: ?*C.QIcon, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIcon_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, rect: ?*C.QRect ```
    pub fn Paint(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque) void {
        C.QIcon_Paint(@ptrCast(self), @ptrCast(painter), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, x: i32, y: i32, w: i32, h: i32 ```
    pub fn Paint2(self: ?*anyopaque, painter: ?*anyopaque, x: i32, y: i32, w: i32, h: i32) void {
        C.QIcon_Paint2(@ptrCast(self), @ptrCast(painter), @intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#isNull)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QIcon_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#isDetached)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QIcon_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#detach)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QIcon_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#cacheKey)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn CacheKey(self: ?*anyopaque) i64 {
        return C.QIcon_CacheKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addPixmap)
    ///
    /// ``` self: ?*C.QIcon, pixmap: ?*C.QPixmap ```
    pub fn AddPixmap(self: ?*anyopaque, pixmap: ?*anyopaque) void {
        C.QIcon_AddPixmap(@ptrCast(self), @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addFile)
    ///
    /// ``` self: ?*C.QIcon, fileName: []const u8 ```
    pub fn AddFile(self: ?*anyopaque, fileName: []const u8) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIcon_AddFile(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#availableSizes)
    ///
    /// ``` self: ?*C.QIcon, allocator: std.mem.Allocator ```
    pub fn AvailableSizes(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QIcon_AvailableSizes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#setIsMask)
    ///
    /// ``` self: ?*C.QIcon, isMask: bool ```
    pub fn SetIsMask(self: ?*anyopaque, isMask: bool) void {
        C.QIcon_SetIsMask(@ptrCast(self), isMask);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#isMask)
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn IsMask(self: ?*anyopaque) bool {
        return C.QIcon_IsMask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#fromTheme)
    ///
    /// ``` name: []const u8 ```
    pub fn FromTheme(name: []const u8) ?*C.QIcon {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QIcon_FromTheme(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#fromTheme)
    ///
    /// ``` name: []const u8, fallback: ?*C.QIcon ```
    pub fn FromTheme2(name: []const u8, fallback: ?*anyopaque) ?*C.QIcon {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QIcon_FromTheme2(name_str, @ptrCast(fallback));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#hasThemeIcon)
    ///
    /// ``` name: []const u8 ```
    pub fn HasThemeIcon(name: []const u8) bool {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QIcon_HasThemeIcon(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#themeSearchPaths)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ThemeSearchPaths(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QIcon_ThemeSearchPaths();
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#setThemeSearchPaths)
    ///
    /// ``` searchpath: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetThemeSearchPaths(searchpath: [][]const u8, allocator: std.mem.Allocator) void {
        var searchpath_arr = allocator.alloc(C.struct_libqt_string, searchpath.len) catch @panic("Memory allocation failed");
        defer allocator.free(searchpath_arr);
        for (searchpath, 0..searchpath.len) |item, _i| {
            searchpath_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const searchpath_list = C.struct_libqt_list{
            .len = searchpath.len,
            .data = searchpath_arr.ptr,
        };
        C.QIcon_SetThemeSearchPaths(searchpath_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#fallbackSearchPaths)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn FallbackSearchPaths(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QIcon_FallbackSearchPaths();
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#setFallbackSearchPaths)
    ///
    /// ``` paths: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetFallbackSearchPaths(paths: [][]const u8, allocator: std.mem.Allocator) void {
        var paths_arr = allocator.alloc(C.struct_libqt_string, paths.len) catch @panic("Memory allocation failed");
        defer allocator.free(paths_arr);
        for (paths, 0..paths.len) |item, _i| {
            paths_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const paths_list = C.struct_libqt_list{
            .len = paths.len,
            .data = paths_arr.ptr,
        };
        C.QIcon_SetFallbackSearchPaths(paths_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#themeName)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ThemeName(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIcon_ThemeName();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#setThemeName)
    ///
    /// ``` path: []const u8 ```
    pub fn SetThemeName(path: []const u8) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QIcon_SetThemeName(path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#fallbackThemeName)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn FallbackThemeName(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIcon_FallbackThemeName();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#setFallbackThemeName)
    ///
    /// ``` name: []const u8 ```
    pub fn SetFallbackThemeName(name: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QIcon_SetFallbackThemeName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, mode: qicon_enums.Mode ```
    pub fn Pixmap22(self: ?*anyopaque, size: ?*anyopaque, mode: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap22(@ptrCast(self), @ptrCast(size), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap32(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap32(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, w: i32, h: i32, mode: qicon_enums.Mode ```
    pub fn Pixmap33(self: ?*anyopaque, w: i32, h: i32, mode: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap33(@ptrCast(self), @intCast(w), @intCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, w: i32, h: i32, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap42(self: ?*anyopaque, w: i32, h: i32, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap42(@ptrCast(self), @intCast(w), @intCast(h), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, extent: i32, mode: qicon_enums.Mode ```
    pub fn Pixmap23(self: ?*anyopaque, extent: i32, mode: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap23(@ptrCast(self), @intCast(extent), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, extent: i32, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap34(self: ?*anyopaque, extent: i32, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap34(@ptrCast(self), @intCast(extent), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, devicePixelRatio: f64, mode: qicon_enums.Mode ```
    pub fn Pixmap35(self: ?*anyopaque, size: ?*anyopaque, devicePixelRatio: f64, mode: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap35(@ptrCast(self), @ptrCast(size), @floatCast(devicePixelRatio), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, devicePixelRatio: f64, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap43(self: ?*anyopaque, size: ?*anyopaque, devicePixelRatio: f64, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap43(@ptrCast(self), @ptrCast(size), @floatCast(devicePixelRatio), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize, mode: qicon_enums.Mode ```
    pub fn Pixmap36(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque, mode: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap36(@ptrCast(self), @ptrCast(window), @ptrCast(size), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#pixmap)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap44(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIcon_Pixmap44(@ptrCast(self), @ptrCast(window), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, mode: qicon_enums.Mode ```
    pub fn ActualSize22(self: ?*anyopaque, size: ?*anyopaque, mode: i64) ?*C.QSize {
        return C.QIcon_ActualSize22(@ptrCast(self), @ptrCast(size), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn ActualSize3(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QSize {
        return C.QIcon_ActualSize3(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize, mode: qicon_enums.Mode ```
    pub fn ActualSize32(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque, mode: i64) ?*C.QSize {
        return C.QIcon_ActualSize32(@ptrCast(self), @ptrCast(window), @ptrCast(size), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#actualSize)
    ///
    /// ``` self: ?*C.QIcon, window: ?*C.QWindow, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn ActualSize4(self: ?*anyopaque, window: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QSize {
        return C.QIcon_ActualSize4(@ptrCast(self), @ptrCast(window), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, rect: ?*C.QRect, alignment: i32 ```
    pub fn Paint3(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, alignment: i64) void {
        C.QIcon_Paint3(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, rect: ?*C.QRect, alignment: i32, mode: qicon_enums.Mode ```
    pub fn Paint4(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, alignment: i64, mode: i64) void {
        C.QIcon_Paint4(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @intCast(alignment), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, rect: ?*C.QRect, alignment: i32, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Paint5(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, alignment: i64, mode: i64, state: i64) void {
        C.QIcon_Paint5(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @intCast(alignment), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, x: i32, y: i32, w: i32, h: i32, alignment: i32 ```
    pub fn Paint6(self: ?*anyopaque, painter: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, alignment: i64) void {
        C.QIcon_Paint6(@ptrCast(self), @ptrCast(painter), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, x: i32, y: i32, w: i32, h: i32, alignment: i32, mode: qicon_enums.Mode ```
    pub fn Paint7(self: ?*anyopaque, painter: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, alignment: i64, mode: i64) void {
        C.QIcon_Paint7(@ptrCast(self), @ptrCast(painter), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(alignment), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#paint)
    ///
    /// ``` self: ?*C.QIcon, painter: ?*C.QPainter, x: i32, y: i32, w: i32, h: i32, alignment: i32, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Paint8(self: ?*anyopaque, painter: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, alignment: i64, mode: i64, state: i64) void {
        C.QIcon_Paint8(@ptrCast(self), @ptrCast(painter), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(alignment), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addPixmap)
    ///
    /// ``` self: ?*C.QIcon, pixmap: ?*C.QPixmap, mode: qicon_enums.Mode ```
    pub fn AddPixmap2(self: ?*anyopaque, pixmap: ?*anyopaque, mode: i64) void {
        C.QIcon_AddPixmap2(@ptrCast(self), @ptrCast(pixmap), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addPixmap)
    ///
    /// ``` self: ?*C.QIcon, pixmap: ?*C.QPixmap, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn AddPixmap3(self: ?*anyopaque, pixmap: ?*anyopaque, mode: i64, state: i64) void {
        C.QIcon_AddPixmap3(@ptrCast(self), @ptrCast(pixmap), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addFile)
    ///
    /// ``` self: ?*C.QIcon, fileName: []const u8, size: ?*C.QSize ```
    pub fn AddFile2(self: ?*anyopaque, fileName: []const u8, size: ?*anyopaque) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIcon_AddFile2(@ptrCast(self), fileName_str, @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addFile)
    ///
    /// ``` self: ?*C.QIcon, fileName: []const u8, size: ?*C.QSize, mode: qicon_enums.Mode ```
    pub fn AddFile3(self: ?*anyopaque, fileName: []const u8, size: ?*anyopaque, mode: i64) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIcon_AddFile3(@ptrCast(self), fileName_str, @ptrCast(size), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#addFile)
    ///
    /// ``` self: ?*C.QIcon, fileName: []const u8, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn AddFile4(self: ?*anyopaque, fileName: []const u8, size: ?*anyopaque, mode: i64, state: i64) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIcon_AddFile4(@ptrCast(self), fileName_str, @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#availableSizes)
    ///
    /// ``` self: ?*C.QIcon, mode: qicon_enums.Mode, allocator: std.mem.Allocator ```
    pub fn AvailableSizes1(self: ?*anyopaque, mode: i64, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QIcon_AvailableSizes1(@ptrCast(self), @intCast(mode));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicon.html#availableSizes)
    ///
    /// ``` self: ?*C.QIcon, mode: qicon_enums.Mode, state: qicon_enums.State, allocator: std.mem.Allocator ```
    pub fn AvailableSizes2(self: ?*anyopaque, mode: i64, state: i64, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QIcon_AvailableSizes2(@ptrCast(self), @intCast(mode), @intCast(state));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QIcon ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QIcon_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qicon.html#types
pub const enums = struct {
    pub const Mode = enum {
        pub const Normal: i32 = 0;
        pub const Disabled: i32 = 1;
        pub const Active: i32 = 2;
        pub const Selected: i32 = 3;
    };

    pub const State = enum {
        pub const On: i32 = 0;
        pub const Off: i32 = 1;
    };
};
