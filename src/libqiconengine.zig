const C = @import("qt6c");
const qicon_enums = @import("libqicon.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qiconengine.html
pub const qiconengine = struct {
    /// New constructs a new QIconEngine object.
    ///
    ///
    pub fn New() ?*C.QIconEngine {
        return C.QIconEngine_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#paint)
    ///
    /// ``` self: ?*C.QIconEngine, painter: ?*C.QPainter, rect: ?*C.QRect, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Paint(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, mode: i64, state: i64) void {
        C.QIconEngine_Paint(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @intCast(mode), @intCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QPainter, ?*C.QRect, qicon_enums.Mode, qicon_enums.State) callconv(.c) void ```
    pub fn OnPaint(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, i64, i64) callconv(.c) void) void {
        C.QIconEngine_OnPaint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, painter: ?*C.QPainter, rect: ?*C.QRect, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn QBasePaint(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, mode: i64, state: i64) void {
        C.QIconEngine_QBasePaint(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#actualSize)
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn ActualSize(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QSize {
        return C.QIconEngine_ActualSize(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QSize, qicon_enums.Mode, qicon_enums.State) callconv(.c) ?*C.QSize ```
    pub fn OnActualSize(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64, i64) callconv(.c) ?*C.QSize) void {
        C.QIconEngine_OnActualSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn QBaseActualSize(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QSize {
        return C.QIconEngine_QBaseActualSize(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#pixmap)
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn Pixmap(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIconEngine_Pixmap(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QSize, qicon_enums.Mode, qicon_enums.State) callconv(.c) ?*C.QPixmap ```
    pub fn OnPixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64, i64) callconv(.c) ?*C.QPixmap) void {
        C.QIconEngine_OnPixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn QBasePixmap(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64) ?*C.QPixmap {
        return C.QIconEngine_QBasePixmap(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#addPixmap)
    ///
    /// ``` self: ?*C.QIconEngine, pixmap: ?*C.QPixmap, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn AddPixmap(self: ?*anyopaque, pixmap: ?*anyopaque, mode: i64, state: i64) void {
        C.QIconEngine_AddPixmap(@ptrCast(self), @ptrCast(pixmap), @intCast(mode), @intCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QPixmap, qicon_enums.Mode, qicon_enums.State) callconv(.c) void ```
    pub fn OnAddPixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64, i64) callconv(.c) void) void {
        C.QIconEngine_OnAddPixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, pixmap: ?*C.QPixmap, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn QBaseAddPixmap(self: ?*anyopaque, pixmap: ?*anyopaque, mode: i64, state: i64) void {
        C.QIconEngine_QBaseAddPixmap(@ptrCast(self), @ptrCast(pixmap), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#addFile)
    ///
    /// ``` self: ?*C.QIconEngine, fileName: []const u8, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn AddFile(self: ?*anyopaque, fileName: []const u8, size: ?*anyopaque, mode: i64, state: i64) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIconEngine_AddFile(@ptrCast(self), fileName_str, @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, []const u8, ?*C.QSize, qicon_enums.Mode, qicon_enums.State) callconv(.c) void ```
    pub fn OnAddFile(self: ?*anyopaque, slot: fn (?*anyopaque, []const u8, ?*anyopaque, i64, i64) callconv(.c) void) void {
        C.QIconEngine_OnAddFile(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, fileName: []const u8, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State ```
    pub fn QBaseAddFile(self: ?*anyopaque, fileName: []const u8, size: ?*anyopaque, mode: i64, state: i64) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QIconEngine_QBaseAddFile(@ptrCast(self), fileName_str, @ptrCast(size), @intCast(mode), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#key)
    ///
    /// ``` self: ?*C.QIconEngine, allocator: std.mem.Allocator ```
    pub fn Key(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIconEngine_Key(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn () callconv(.c) []const u8 ```
    pub fn OnKey(self: ?*anyopaque, slot: fn () callconv(.c) []const u8) void {
        C.QIconEngine_OnKey(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, allocator: std.mem.Allocator ```
    pub fn QBaseKey(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIconEngine_QBaseKey(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#clone)
    ///
    /// ``` self: ?*C.QIconEngine ```
    pub fn Clone(self: ?*anyopaque) ?*C.QIconEngine {
        return C.QIconEngine_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn () callconv(.c) ?*C.QIconEngine ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QIconEngine) void {
        C.QIconEngine_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QIconEngine {
        return C.QIconEngine_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#read)
    ///
    /// ``` self: ?*C.QIconEngine, in: ?*C.QDataStream ```
    pub fn Read(self: ?*anyopaque, in: ?*anyopaque) bool {
        return C.QIconEngine_Read(@ptrCast(self), @ptrCast(in));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QDataStream) callconv(.c) bool ```
    pub fn OnRead(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QIconEngine_OnRead(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, in: ?*C.QDataStream ```
    pub fn QBaseRead(self: ?*anyopaque, in: ?*anyopaque) bool {
        return C.QIconEngine_QBaseRead(@ptrCast(self), @ptrCast(in));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#write)
    ///
    /// ``` self: ?*C.QIconEngine, out: ?*C.QDataStream ```
    pub fn Write(self: ?*anyopaque, out: ?*anyopaque) bool {
        return C.QIconEngine_Write(@ptrCast(self), @ptrCast(out));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QDataStream) callconv(.c) bool ```
    pub fn OnWrite(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QIconEngine_OnWrite(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, out: ?*C.QDataStream ```
    pub fn QBaseWrite(self: ?*anyopaque, out: ?*anyopaque) bool {
        return C.QIconEngine_QBaseWrite(@ptrCast(self), @ptrCast(out));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#availableSizes)
    ///
    /// ``` self: ?*C.QIconEngine, mode: qicon_enums.Mode, state: qicon_enums.State, allocator: std.mem.Allocator ```
    pub fn AvailableSizes(self: ?*anyopaque, mode: i64, state: i64, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QIconEngine_AvailableSizes(@ptrCast(self), @intCast(mode), @intCast(state));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, qicon_enums.Mode, qicon_enums.State) callconv(.c) []?*C.QSize ```
    pub fn OnAvailableSizes(self: ?*anyopaque, slot: fn (?*anyopaque, i64, i64) callconv(.c) []?*C.QSize) void {
        C.QIconEngine_OnAvailableSizes(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, mode: qicon_enums.Mode, state: qicon_enums.State, allocator: std.mem.Allocator ```
    pub fn QBaseAvailableSizes(self: ?*anyopaque, mode: i64, state: i64, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QIconEngine_QBaseAvailableSizes(@ptrCast(self), @intCast(mode), @intCast(state));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#iconName)
    ///
    /// ``` self: ?*C.QIconEngine, allocator: std.mem.Allocator ```
    pub fn IconName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIconEngine_IconName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn () callconv(.c) []const u8 ```
    pub fn OnIconName(self: ?*anyopaque, slot: fn () callconv(.c) []const u8) void {
        C.QIconEngine_OnIconName(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, allocator: std.mem.Allocator ```
    pub fn QBaseIconName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QIconEngine_QBaseIconName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#isNull)
    ///
    /// ``` self: ?*C.QIconEngine ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QIconEngine_IsNull(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn () callconv(.c) bool ```
    pub fn OnIsNull(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QIconEngine_OnIsNull(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine ```
    pub fn QBaseIsNull(self: ?*anyopaque) bool {
        return C.QIconEngine_QBaseIsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#scaledPixmap)
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State, scale: f64 ```
    pub fn ScaledPixmap(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64, scale: f64) ?*C.QPixmap {
        return C.QIconEngine_ScaledPixmap(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state), @floatCast(scale));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, ?*C.QSize, qicon_enums.Mode, qicon_enums.State, f64) callconv(.c) ?*C.QPixmap ```
    pub fn OnScaledPixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64, i64, f64) callconv(.c) ?*C.QPixmap) void {
        C.QIconEngine_OnScaledPixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, size: ?*C.QSize, mode: qicon_enums.Mode, state: qicon_enums.State, scale: f64 ```
    pub fn QBaseScaledPixmap(self: ?*anyopaque, size: ?*anyopaque, mode: i64, state: i64, scale: f64) ?*C.QPixmap {
        return C.QIconEngine_QBaseScaledPixmap(@ptrCast(self), @ptrCast(size), @intCast(mode), @intCast(state), @floatCast(scale));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine.html#virtual_hook)
    ///
    /// ``` self: ?*C.QIconEngine, id: i32, data: ?*anyopaque ```
    pub fn VirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QIconEngine_VirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconEngine, slot: fn (?*C.QIconEngine, i32, ?*anyopaque) callconv(.c) void ```
    pub fn OnVirtualHook(self: ?*anyopaque, slot: fn (?*anyopaque, i32, ?*anyopaque) callconv(.c) void) void {
        C.QIconEngine_OnVirtualHook(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconEngine, id: i32, data: ?*anyopaque ```
    pub fn QBaseVirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QIconEngine_QBaseVirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QIconEngine ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QIconEngine_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qiconengine-scaledpixmapargument.html
pub const qiconengine__scaledpixmapargument = struct {
    /// New constructs a new QIconEngine::ScaledPixmapArgument object.
    ///
    /// ``` param1: ?*C.QIconEngine__ScaledPixmapArgument ```
    pub fn New(param1: ?*anyopaque) ?*C.QIconEngine__ScaledPixmapArgument {
        return C.QIconEngine__ScaledPixmapArgument_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qiconengine__scaledpixmapargument.html#operator=)
    ///
    /// ``` self: ?*C.QIconEngine__ScaledPixmapArgument, param1: ?*C.QIconEngine__ScaledPixmapArgument ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QIconEngine__ScaledPixmapArgument_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QIconEngine__ScaledPixmapArgument ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QIconEngine__ScaledPixmapArgument_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qiconengine.html#types
pub const enums = struct {
    pub const IconEngineHook = enum {
        pub const IsNullHook: i32 = 3;
        pub const ScaledPixmapHook: i32 = 4;
    };
};
