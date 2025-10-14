const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const kcompletion_enums = @import("../extras-kcompletion/libkcompletion.zig").enums;
const kurlcompletion_enums = enums;
const qnamespace_enums = @import("../libqnamespace.zig").enums;
const qobjectdefs_enums = @import("../libqobjectdefs.zig").enums;
const std = @import("std");

/// https://api.kde.org/kurlcompletion.html
pub const kurlcompletion = struct {
    /// New constructs a new KUrlCompletion object.
    ///
    ///
    pub fn New() QtC.KUrlCompletion {
        return qtc.KUrlCompletion_new();
    }

    /// New2 constructs a new KUrlCompletion object.
    ///
    /// ``` param1: kurlcompletion_enums.Mode ```
    pub fn New2(param1: i32) QtC.KUrlCompletion {
        return qtc.KUrlCompletion_new2(@intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#metaObject)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn MetaObject(self: ?*anyopaque) QtC.QMetaObject {
        return qtc.KUrlCompletion_MetaObject(@ptrCast(self));
    }

    /// ``` self: QtC.KUrlCompletion, param1: []const u8 ```
    pub fn Metacast(self: ?*anyopaque, param1: []const u8) ?*anyopaque {
        const param1_Cstring = param1.ptr;
        return qtc.KUrlCompletion_Metacast(@ptrCast(self), param1_Cstring);
    }

    /// ``` self: QtC.KUrlCompletion, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn Metacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_Metacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque) callconv(.c) i32 ```
    pub fn OnMetacall(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32, ?*anyopaque) callconv(.c) i32) void {
        qtc.KUrlCompletion_OnMetacall(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn QBaseMetacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_QBaseMetacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(s: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const _str = qtc.KUrlCompletion_Tr(s_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.Tr: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#makeCompletion)
    ///
    /// ``` self: QtC.KUrlCompletion, text: []const u8, allocator: std.mem.Allocator ```
    pub fn MakeCompletion(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []const u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _str = qtc.KUrlCompletion_MakeCompletion(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.MakeCompletion: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#makeCompletion)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, text: [*:0]const u8) callconv(.c) [*:0]const u8 ```
    pub fn OnMakeCompletion(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) [*:0]const u8) void {
        qtc.KUrlCompletion_OnMakeCompletion(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#makeCompletion)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, text: []const u8, allocator: std.mem.Allocator ```
    pub fn QBaseMakeCompletion(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []const u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _str = qtc.KUrlCompletion_QBaseMakeCompletion(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.MakeCompletion: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setDir)
    ///
    /// ``` self: QtC.KUrlCompletion, dir: QtC.QUrl ```
    pub fn SetDir(self: ?*anyopaque, dir: ?*anyopaque) void {
        qtc.KUrlCompletion_SetDir(@ptrCast(self), @ptrCast(dir));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setDir)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, dir: QtC.QUrl) callconv(.c) void ```
    pub fn OnSetDir(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetDir(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setDir)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, dir: QtC.QUrl ```
    pub fn QBaseSetDir(self: ?*anyopaque, dir: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseSetDir(@ptrCast(self), @ptrCast(dir));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#dir)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Dir(self: ?*anyopaque) QtC.QUrl {
        return qtc.KUrlCompletion_Dir(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#dir)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) QtC.QUrl ```
    pub fn OnDir(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QUrl) void {
        qtc.KUrlCompletion_OnDir(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#dir)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseDir(self: ?*anyopaque) QtC.QUrl {
        return qtc.KUrlCompletion_QBaseDir(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#isRunning)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IsRunning(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_IsRunning(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#isRunning)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) bool ```
    pub fn OnIsRunning(self: ?*anyopaque, callback: *const fn () callconv(.c) bool) void {
        qtc.KUrlCompletion_OnIsRunning(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#isRunning)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseIsRunning(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseIsRunning(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#stop)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Stop(self: ?*anyopaque) void {
        qtc.KUrlCompletion_Stop(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#stop)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) void ```
    pub fn OnStop(self: ?*anyopaque, callback: *const fn () callconv(.c) void) void {
        qtc.KUrlCompletion_OnStop(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#stop)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseStop(self: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseStop(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#mode)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    ///
    /// Returns: ``` kurlcompletion_enums.Mode ```
    pub fn Mode(self: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_Mode(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#mode)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) i32 ```
    pub fn OnMode(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.KUrlCompletion_OnMode(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#mode)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    ///
    /// Returns: ``` kurlcompletion_enums.Mode ```
    pub fn QBaseMode(self: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_QBaseMode(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setMode)
    ///
    /// ``` self: QtC.KUrlCompletion, mode: kurlcompletion_enums.Mode ```
    pub fn SetMode(self: ?*anyopaque, mode: i32) void {
        qtc.KUrlCompletion_SetMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setMode)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, mode: kurlcompletion_enums.Mode) callconv(.c) void ```
    pub fn OnSetMode(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetMode(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setMode)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, mode: kurlcompletion_enums.Mode ```
    pub fn QBaseSetMode(self: ?*anyopaque, mode: i32) void {
        qtc.KUrlCompletion_QBaseSetMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceEnv)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn ReplaceEnv(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_ReplaceEnv(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceEnv)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) bool ```
    pub fn OnReplaceEnv(self: ?*anyopaque, callback: *const fn () callconv(.c) bool) void {
        qtc.KUrlCompletion_OnReplaceEnv(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceEnv)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseReplaceEnv(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseReplaceEnv(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceEnv)
    ///
    /// ``` self: QtC.KUrlCompletion, replace: bool ```
    pub fn SetReplaceEnv(self: ?*anyopaque, replace: bool) void {
        qtc.KUrlCompletion_SetReplaceEnv(@ptrCast(self), replace);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceEnv)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, replace: bool) callconv(.c) void ```
    pub fn OnSetReplaceEnv(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetReplaceEnv(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceEnv)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, replace: bool ```
    pub fn QBaseSetReplaceEnv(self: ?*anyopaque, replace: bool) void {
        qtc.KUrlCompletion_QBaseSetReplaceEnv(@ptrCast(self), replace);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceHome)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn ReplaceHome(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_ReplaceHome(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceHome)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) bool ```
    pub fn OnReplaceHome(self: ?*anyopaque, callback: *const fn () callconv(.c) bool) void {
        qtc.KUrlCompletion_OnReplaceHome(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replaceHome)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseReplaceHome(self: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseReplaceHome(@ptrCast(self));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceHome)
    ///
    /// ``` self: QtC.KUrlCompletion, replace: bool ```
    pub fn SetReplaceHome(self: ?*anyopaque, replace: bool) void {
        qtc.KUrlCompletion_SetReplaceHome(@ptrCast(self), replace);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceHome)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, replace: bool) callconv(.c) void ```
    pub fn OnSetReplaceHome(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetReplaceHome(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setReplaceHome)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, replace: bool ```
    pub fn QBaseSetReplaceHome(self: ?*anyopaque, replace: bool) void {
        qtc.KUrlCompletion_QBaseSetReplaceHome(@ptrCast(self), replace);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replacedPath)
    ///
    /// ``` self: QtC.KUrlCompletion, text: []const u8, allocator: std.mem.Allocator ```
    pub fn ReplacedPath(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []const u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _str = qtc.KUrlCompletion_ReplacedPath(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.ReplacedPath: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replacedPath)
    ///
    /// ``` text: []const u8, replaceHome: bool, allocator: std.mem.Allocator ```
    pub fn ReplacedPath2(text: []const u8, replaceHome: bool, allocator: std.mem.Allocator) []const u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _str = qtc.KUrlCompletion_ReplacedPath2(text_str, replaceHome);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.ReplacedPath2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#setMimeTypeFilters)
    ///
    /// ``` self: QtC.KUrlCompletion, mimeTypes: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetMimeTypeFilters(self: ?*anyopaque, mimeTypes: [][]const u8, allocator: std.mem.Allocator) void {
        var mimeTypes_arr = allocator.alloc(qtc.libqt_string, mimeTypes.len) catch @panic("kurlcompletion.SetMimeTypeFilters: Memory allocation failed");
        defer allocator.free(mimeTypes_arr);
        for (mimeTypes, 0..mimeTypes.len) |item, i| {
            mimeTypes_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const mimeTypes_list = qtc.libqt_list{
            .len = mimeTypes.len,
            .data = mimeTypes_arr.ptr,
        };
        qtc.KUrlCompletion_SetMimeTypeFilters(@ptrCast(self), mimeTypes_list);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#mimeTypeFilters)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn MimeTypeFilters(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.KUrlCompletion_MimeTypeFilters(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("kurlcompletion.MimeTypeFilters: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.MimeTypeFilters: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, matches: [][]const u8, allocator: std.mem.Allocator ```
    pub fn PostProcessMatches(self: ?*anyopaque, matches: [][]const u8, allocator: std.mem.Allocator) void {
        var matches_arr = allocator.alloc(qtc.libqt_string, matches.len) catch @panic("kurlcompletion.PostProcessMatches: Memory allocation failed");
        defer allocator.free(matches_arr);
        for (matches, 0..matches.len) |item, i| {
            matches_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const matches_list = qtc.libqt_list{
            .len = matches.len,
            .data = matches_arr.ptr,
        };
        qtc.KUrlCompletion_PostProcessMatches(@ptrCast(self), matches_list);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, matches: [*][*:0]const u8) callconv(.c) void ```
    pub fn OnPostProcessMatches(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*][*:0]const u8) callconv(.c) void) void {
        qtc.KUrlCompletion_OnPostProcessMatches(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, matches: [][]const u8, allocator: std.mem.Allocator ```
    pub fn QBasePostProcessMatches(self: ?*anyopaque, matches: [][]const u8, allocator: std.mem.Allocator) void {
        var matches_arr = allocator.alloc(qtc.libqt_string, matches.len) catch @panic("kurlcompletion.PostProcessMatches: Memory allocation failed");
        defer allocator.free(matches_arr);
        for (matches, 0..matches.len) |item, i| {
            matches_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const matches_list = qtc.libqt_list{
            .len = matches.len,
            .data = matches_arr.ptr,
        };
        qtc.KUrlCompletion_QBasePostProcessMatches(@ptrCast(self), matches_list);
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, matches: QtC.KCompletionMatches ```
    pub fn PostProcessMatches2(self: ?*anyopaque, matches: ?*anyopaque) void {
        qtc.KUrlCompletion_PostProcessMatches2(@ptrCast(self), @ptrCast(matches));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, matches: QtC.KCompletionMatches) callconv(.c) void ```
    pub fn OnPostProcessMatches2(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnPostProcessMatches2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#postProcessMatches)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.KUrlCompletion, matches: QtC.KCompletionMatches ```
    pub fn QBasePostProcessMatches2(self: ?*anyopaque, matches: ?*anyopaque) void {
        qtc.KUrlCompletion_QBasePostProcessMatches2(@ptrCast(self), @ptrCast(matches));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.KUrlCompletion_Tr2(s_Cstring, c_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.Tr2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.KUrlCompletion_Tr3(s_Cstring, c_Cstring, @intCast(n));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.Tr3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#replacedPath)
    ///
    /// ``` text: []const u8, replaceHome: bool, replaceEnv: bool, allocator: std.mem.Allocator ```
    pub fn ReplacedPath3(text: []const u8, replaceHome: bool, replaceEnv: bool, allocator: std.mem.Allocator) []const u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _str = qtc.KUrlCompletion_ReplacedPath3(text_str, replaceHome, replaceEnv);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.ReplacedPath3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#substringCompletion)
    ///
    /// ``` self: QtC.KUrlCompletion, stringVal: []const u8, allocator: std.mem.Allocator ```
    pub fn SubstringCompletion(self: ?*anyopaque, stringVal: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const stringVal_str = qtc.libqt_string{
            .len = stringVal.len,
            .data = stringVal.ptr,
        };
        const _arr: qtc.libqt_list = qtc.KCompletion_SubstringCompletion(@ptrCast(self), stringVal_str);
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("kurlcompletion.SubstringCompletion: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.SubstringCompletion: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#items)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn Items(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.KCompletion_Items(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("kurlcompletion.Items: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.Items: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#isEmpty)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return qtc.KCompletion_IsEmpty(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#completionMode)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    ///
    /// Returns: ``` kcompletion_enums.CompletionMode ```
    pub fn CompletionMode(self: ?*anyopaque) i32 {
        return qtc.KCompletion_CompletionMode(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#order)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    ///
    /// Returns: ``` kcompletion_enums.CompOrder ```
    pub fn Order(self: ?*anyopaque) i32 {
        return qtc.KCompletion_Order(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#ignoreCase)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IgnoreCase(self: ?*anyopaque) bool {
        return qtc.KCompletion_IgnoreCase(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#shouldAutoSuggest)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn ShouldAutoSuggest(self: ?*anyopaque) bool {
        return qtc.KCompletion_ShouldAutoSuggest(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#allMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn AllMatches(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.KCompletion_AllMatches(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("kurlcompletion.AllMatches: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.AllMatches: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#allMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, stringVal: []const u8, allocator: std.mem.Allocator ```
    pub fn AllMatches2(self: ?*anyopaque, stringVal: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const stringVal_str = qtc.libqt_string{
            .len = stringVal.len,
            .data = stringVal.ptr,
        };
        const _arr: qtc.libqt_list = qtc.KCompletion_AllMatches2(@ptrCast(self), stringVal_str);
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("kurlcompletion.AllMatches2: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.AllMatches2: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#allWeightedMatches)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn AllWeightedMatches(self: ?*anyopaque) QtC.KCompletionMatches {
        return qtc.KCompletion_AllWeightedMatches(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#allWeightedMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, stringVal: []const u8 ```
    pub fn AllWeightedMatches2(self: ?*anyopaque, stringVal: []const u8) QtC.KCompletionMatches {
        const stringVal_str = qtc.libqt_string{
            .len = stringVal.len,
            .data = stringVal.ptr,
        };
        return qtc.KCompletion_AllWeightedMatches2(@ptrCast(self), stringVal_str);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#soundsEnabled)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn SoundsEnabled(self: ?*anyopaque) bool {
        return qtc.KCompletion_SoundsEnabled(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#hasMultipleMatches)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn HasMultipleMatches(self: ?*anyopaque) bool {
        return qtc.KCompletion_HasMultipleMatches(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#previousMatch)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn PreviousMatch(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.KCompletion_PreviousMatch(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.PreviousMatch: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#nextMatch)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn NextMatch(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.KCompletion_NextMatch(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.NextMatch: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#insertItems)
    ///
    /// ``` self: QtC.KUrlCompletion, items: [][]const u8, allocator: std.mem.Allocator ```
    pub fn InsertItems(self: ?*anyopaque, items: [][]const u8, allocator: std.mem.Allocator) void {
        var items_arr = allocator.alloc(qtc.libqt_string, items.len) catch @panic("kurlcompletion.InsertItems: Memory allocation failed");
        defer allocator.free(items_arr);
        for (items, 0..items.len) |item, i| {
            items_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const items_list = qtc.libqt_list{
            .len = items.len,
            .data = items_arr.ptr,
        };
        qtc.KCompletion_InsertItems(@ptrCast(self), items_list);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#addItem)
    ///
    /// ``` self: QtC.KUrlCompletion, item: []const u8 ```
    pub fn AddItem(self: ?*anyopaque, item: []const u8) void {
        const item_str = qtc.libqt_string{
            .len = item.len,
            .data = item.ptr,
        };
        qtc.KCompletion_AddItem(@ptrCast(self), item_str);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#addItem)
    ///
    /// ``` self: QtC.KUrlCompletion, item: []const u8, weight: u32 ```
    pub fn AddItem2(self: ?*anyopaque, item: []const u8, weight: u32) void {
        const item_str = qtc.libqt_string{
            .len = item.len,
            .data = item.ptr,
        };
        qtc.KCompletion_AddItem2(@ptrCast(self), item_str, @intCast(weight));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#removeItem)
    ///
    /// ``` self: QtC.KUrlCompletion, item: []const u8 ```
    pub fn RemoveItem(self: ?*anyopaque, item: []const u8) void {
        const item_str = qtc.libqt_string{
            .len = item.len,
            .data = item.ptr,
        };
        qtc.KCompletion_RemoveItem(@ptrCast(self), item_str);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#match)
    ///
    /// ``` self: QtC.KUrlCompletion, item: []const u8 ```
    pub fn Match(self: ?*anyopaque, item: []const u8) void {
        const item_str = qtc.libqt_string{
            .len = item.len,
            .data = item.ptr,
        };
        qtc.KCompletion_Match(@ptrCast(self), item_str);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#match)
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, item: [*:0]const u8) callconv(.c) void ```
    pub fn OnMatch(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.KCompletion_Connect_Match(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#matches)
    ///
    /// ``` self: QtC.KUrlCompletion, matchlist: [][]const u8, allocator: std.mem.Allocator ```
    pub fn Matches(self: ?*anyopaque, matchlist: [][]const u8, allocator: std.mem.Allocator) void {
        var matchlist_arr = allocator.alloc(qtc.libqt_string, matchlist.len) catch @panic("kurlcompletion.Matches: Memory allocation failed");
        defer allocator.free(matchlist_arr);
        for (matchlist, 0..matchlist.len) |item, i| {
            matchlist_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const matchlist_list = qtc.libqt_list{
            .len = matchlist.len,
            .data = matchlist_arr.ptr,
        };
        qtc.KCompletion_Matches(@ptrCast(self), matchlist_list);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#matches)
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, matchlist: [*][*:0]const u8) callconv(.c) void ```
    pub fn OnMatches(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*][*:0]const u8) callconv(.c) void) void {
        qtc.KCompletion_Connect_Matches(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#multipleMatches)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn MultipleMatches(self: ?*anyopaque) void {
        qtc.KCompletion_MultipleMatches(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#multipleMatches)
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion) callconv(.c) void ```
    pub fn OnMultipleMatches(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.KCompletion_Connect_MultipleMatches(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectName)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn ObjectName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QObject_ObjectName(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.ObjectName: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setObjectName)
    ///
    /// ``` self: QtC.KUrlCompletion, name: []const u8 ```
    pub fn SetObjectName(self: ?*anyopaque, name: []const u8) void {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };
        qtc.QObject_SetObjectName(@ptrCast(self), name_str);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWidgetType)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IsWidgetType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWidgetType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWindowType)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IsWindowType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWindowType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isQuickItemType)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn IsQuickItemType(self: ?*anyopaque) bool {
        return qtc.QObject_IsQuickItemType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#signalsBlocked)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn SignalsBlocked(self: ?*anyopaque) bool {
        return qtc.QObject_SignalsBlocked(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#blockSignals)
    ///
    /// ``` self: QtC.KUrlCompletion, b: bool ```
    pub fn BlockSignals(self: ?*anyopaque, b: bool) bool {
        return qtc.QObject_BlockSignals(@ptrCast(self), b);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#thread)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Thread(self: ?*anyopaque) QtC.QThread {
        return qtc.QObject_Thread(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.KUrlCompletion, thread: QtC.QThread ```
    pub fn MoveToThread(self: ?*anyopaque, thread: ?*anyopaque) bool {
        return qtc.QObject_MoveToThread(@ptrCast(self), @ptrCast(thread));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.KUrlCompletion, interval: i32 ```
    pub fn StartTimer(self: ?*anyopaque, interval: i32) i32 {
        return qtc.QObject_StartTimer(@ptrCast(self), @intCast(interval));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.KUrlCompletion, id: i32 ```
    pub fn KillTimer(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.KUrlCompletion, id: qnamespace_enums.TimerId ```
    pub fn KillTimer2(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer2(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#children)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn Children(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QObject {
        const _arr: qtc.libqt_list = qtc.QObject_Children(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QObject, _arr.len) catch @panic("kurlcompletion.Children: Memory allocation failed");
        const _data: [*]QtC.QObject = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setParent)
    ///
    /// ``` self: QtC.KUrlCompletion, parent: QtC.QObject ```
    pub fn SetParent(self: ?*anyopaque, parent: ?*anyopaque) void {
        qtc.QObject_SetParent(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#installEventFilter)
    ///
    /// ``` self: QtC.KUrlCompletion, filterObj: QtC.QObject ```
    pub fn InstallEventFilter(self: ?*anyopaque, filterObj: ?*anyopaque) void {
        qtc.QObject_InstallEventFilter(@ptrCast(self), @ptrCast(filterObj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#removeEventFilter)
    ///
    /// ``` self: QtC.KUrlCompletion, obj: QtC.QObject ```
    pub fn RemoveEventFilter(self: ?*anyopaque, obj: ?*anyopaque) void {
        qtc.QObject_RemoveEventFilter(@ptrCast(self), @ptrCast(obj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod ```
    pub fn Connect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.KUrlCompletion, sender: QtC.QObject, signal: []const u8, member: []const u8 ```
    pub fn Connect2(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect2(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, member: QtC.QMetaMethod ```
    pub fn Disconnect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, member: ?*anyopaque) bool {
        return qtc.QObject_Disconnect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(member));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` param1: QtC.QMetaObject__Connection ```
    pub fn Disconnect2(param1: ?*anyopaque) bool {
        return qtc.QObject_Disconnect2(@ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectTree)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn DumpObjectTree(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectTree(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectInfo)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn DumpObjectInfo(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectInfo(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setProperty)
    ///
    /// ``` self: QtC.KUrlCompletion, name: []const u8, value: QtC.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, name: []const u8, value: ?*anyopaque) bool {
        const name_Cstring = name.ptr;
        return qtc.QObject_SetProperty(@ptrCast(self), name_Cstring, @ptrCast(value));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#property)
    ///
    /// ``` self: QtC.KUrlCompletion, name: []const u8 ```
    pub fn Property(self: ?*anyopaque, name: []const u8) QtC.QVariant {
        const name_Cstring = name.ptr;
        return qtc.QObject_Property(@ptrCast(self), name_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dynamicPropertyNames)
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn DynamicPropertyNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: qtc.libqt_list = qtc.QObject_DynamicPropertyNames(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("kurlcompletion.DynamicPropertyNames: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("kurlcompletion.DynamicPropertyNames: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn BindingStorage(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn BindingStorage2(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage2(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Destroyed(self: ?*anyopaque) void {
        qtc.QObject_Destroyed(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion) callconv(.c) void ```
    pub fn OnDestroyed(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#parent)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Parent(self: ?*anyopaque) QtC.QObject {
        return qtc.QObject_Parent(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#inherits)
    ///
    /// ``` self: QtC.KUrlCompletion, classname: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, classname: []const u8) bool {
        const classname_Cstring = classname.ptr;
        return qtc.QObject_Inherits(@ptrCast(self), classname_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#deleteLater)
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn DeleteLater(self: ?*anyopaque) void {
        qtc.QObject_DeleteLater(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.KUrlCompletion, thread: QtC.QThread, param2: QtC.Disambiguated_t ```
    pub fn MoveToThread2(self: ?*anyopaque, thread: ?*anyopaque, param2: QtC.Disambiguated_t) bool {
        return qtc.QObject_MoveToThread2(@ptrCast(self), @ptrCast(thread), @ptrCast(param2));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.KUrlCompletion, interval: i32, timerType: qnamespace_enums.TimerType ```
    pub fn StartTimer22(self: ?*anyopaque, interval: i32, timerType: i32) i32 {
        return qtc.QObject_StartTimer22(@ptrCast(self), @intCast(interval), @intCast(timerType));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect5(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque, typeVal: i32) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect5(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method), @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.KUrlCompletion, sender: QtC.QObject, signal: []const u8, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect4(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8, typeVal: i32) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect4(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring, @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.KUrlCompletion, param1: QtC.QObject ```
    pub fn Destroyed1(self: ?*anyopaque, param1: ?*anyopaque) void {
        qtc.QObject_Destroyed1(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, param1: QtC.QObject) callconv(.c) void ```
    pub fn OnDestroyed1(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed1(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#lastMatch)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn LastMatch(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.KUrlCompletion_LastMatch(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.LastMatch: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#lastMatch)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, allocator: std.mem.Allocator ```
    pub fn QBaseLastMatch(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.KUrlCompletion_QBaseLastMatch(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("kurlcompletion.LastMatch: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#lastMatch)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnLastMatch(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.KUrlCompletion_OnLastMatch(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setCompletionMode)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, mode: kcompletion_enums.CompletionMode ```
    pub fn SetCompletionMode(self: ?*anyopaque, mode: i32) void {
        qtc.KUrlCompletion_SetCompletionMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setCompletionMode)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, mode: kcompletion_enums.CompletionMode ```
    pub fn QBaseSetCompletionMode(self: ?*anyopaque, mode: i32) void {
        qtc.KUrlCompletion_QBaseSetCompletionMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setCompletionMode)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, mode: kcompletion_enums.CompletionMode) callconv(.c) void ```
    pub fn OnSetCompletionMode(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetCompletionMode(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setOrder)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, order: kcompletion_enums.CompOrder ```
    pub fn SetOrder(self: ?*anyopaque, order: i32) void {
        qtc.KUrlCompletion_SetOrder(@ptrCast(self), @intCast(order));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setOrder)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, order: kcompletion_enums.CompOrder ```
    pub fn QBaseSetOrder(self: ?*anyopaque, order: i32) void {
        qtc.KUrlCompletion_QBaseSetOrder(@ptrCast(self), @intCast(order));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setOrder)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, order: kcompletion_enums.CompOrder) callconv(.c) void ```
    pub fn OnSetOrder(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetOrder(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setIgnoreCase)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, ignoreCase: bool ```
    pub fn SetIgnoreCase(self: ?*anyopaque, ignoreCase: bool) void {
        qtc.KUrlCompletion_SetIgnoreCase(@ptrCast(self), ignoreCase);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setIgnoreCase)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, ignoreCase: bool ```
    pub fn QBaseSetIgnoreCase(self: ?*anyopaque, ignoreCase: bool) void {
        qtc.KUrlCompletion_QBaseSetIgnoreCase(@ptrCast(self), ignoreCase);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setIgnoreCase)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, ignoreCase: bool) callconv(.c) void ```
    pub fn OnSetIgnoreCase(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetIgnoreCase(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setSoundsEnabled)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, enable: bool ```
    pub fn SetSoundsEnabled(self: ?*anyopaque, enable: bool) void {
        qtc.KUrlCompletion_SetSoundsEnabled(@ptrCast(self), enable);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setSoundsEnabled)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, enable: bool ```
    pub fn QBaseSetSoundsEnabled(self: ?*anyopaque, enable: bool) void {
        qtc.KUrlCompletion_QBaseSetSoundsEnabled(@ptrCast(self), enable);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setSoundsEnabled)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, enable: bool) callconv(.c) void ```
    pub fn OnSetSoundsEnabled(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetSoundsEnabled(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setItems)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, itemList: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetItems(self: ?*anyopaque, itemList: [][]const u8, allocator: std.mem.Allocator) void {
        var itemList_arr = allocator.alloc(qtc.libqt_string, itemList.len) catch @panic("kurlcompletion.SetItems: Memory allocation failed");
        defer allocator.free(itemList_arr);
        for (itemList, 0..itemList.len) |item, i| {
            itemList_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const itemList_list = qtc.libqt_list{
            .len = itemList.len,
            .data = itemList_arr.ptr,
        };
        qtc.KUrlCompletion_SetItems(@ptrCast(self), itemList_list);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setItems)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, itemList: [][]const u8, allocator: std.mem.Allocator ```
    pub fn QBaseSetItems(self: ?*anyopaque, itemList: [][]const u8, allocator: std.mem.Allocator) void {
        var itemList_arr = allocator.alloc(qtc.libqt_string, itemList.len) catch @panic("kurlcompletion.SetItems: Memory allocation failed");
        defer allocator.free(itemList_arr);
        for (itemList, 0..itemList.len) |item, i| {
            itemList_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const itemList_list = qtc.libqt_list{
            .len = itemList.len,
            .data = itemList_arr.ptr,
        };
        qtc.KUrlCompletion_QBaseSetItems(@ptrCast(self), itemList_list);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setItems)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, itemList: [*][*:0]const u8) callconv(.c) void ```
    pub fn OnSetItems(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*][*:0]const u8) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetItems(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#clear)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Clear(self: ?*anyopaque) void {
        qtc.KUrlCompletion_Clear(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#clear)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseClear(self: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseClear(@ptrCast(self));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#clear)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) void ```
    pub fn OnClear(self: ?*anyopaque, callback: *const fn () callconv(.c) void) void {
        qtc.KUrlCompletion_OnClear(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QEvent ```
    pub fn Event(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.KUrlCompletion_Event(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QEvent ```
    pub fn QBaseEvent(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.KUrlCompletion_OnEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn EventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.KUrlCompletion_EventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn QBaseEventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseEventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, watched: QtC.QObject, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEventFilter(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.KUrlCompletion_OnEventFilter(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QTimerEvent ```
    pub fn TimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_TimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QTimerEvent ```
    pub fn QBaseTimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseTimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, event: QtC.QTimerEvent) callconv(.c) void ```
    pub fn OnTimerEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnTimerEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QChildEvent ```
    pub fn ChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_ChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QChildEvent ```
    pub fn QBaseChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, event: QtC.QChildEvent) callconv(.c) void ```
    pub fn OnChildEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnChildEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QEvent ```
    pub fn CustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_CustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, event: QtC.QEvent ```
    pub fn QBaseCustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseCustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, event: QtC.QEvent) callconv(.c) void ```
    pub fn OnCustomEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnCustomEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn ConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.KUrlCompletion_ConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn QBaseConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnConnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnConnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn DisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.KUrlCompletion_DisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn QBaseDisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.KUrlCompletion_QBaseDisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnDisconnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.KUrlCompletion_OnDisconnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setShouldAutoSuggest)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, shouldAutosuggest: bool ```
    pub fn SetShouldAutoSuggest(self: ?*anyopaque, shouldAutosuggest: bool) void {
        qtc.KUrlCompletion_SetShouldAutoSuggest(@ptrCast(self), shouldAutosuggest);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setShouldAutoSuggest)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, shouldAutosuggest: bool ```
    pub fn QBaseSetShouldAutoSuggest(self: ?*anyopaque, shouldAutosuggest: bool) void {
        qtc.KUrlCompletion_QBaseSetShouldAutoSuggest(@ptrCast(self), shouldAutosuggest);
    }

    /// Inherited from KCompletion
    ///
    /// [Qt documentation](https://api.kde.org/kcompletion.html#setShouldAutoSuggest)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, shouldAutosuggest: bool) callconv(.c) void ```
    pub fn OnSetShouldAutoSuggest(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.KUrlCompletion_OnSetShouldAutoSuggest(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn Sender(self: ?*anyopaque) QtC.QObject {
        return qtc.KUrlCompletion_Sender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseSender(self: ?*anyopaque) QtC.QObject {
        return qtc.KUrlCompletion_QBaseSender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) QtC.QObject ```
    pub fn OnSender(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QObject) void {
        qtc.KUrlCompletion_OnSender(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn SenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_SenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QBaseSenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.KUrlCompletion_QBaseSenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn () callconv(.c) i32 ```
    pub fn OnSenderSignalIndex(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.KUrlCompletion_OnSenderSignalIndex(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: []const u8 ```
    pub fn Receivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.KUrlCompletion_Receivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: []const u8 ```
    pub fn QBaseReceivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.KUrlCompletion_QBaseReceivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, signal: [*:0]const u8) callconv(.c) i32 ```
    pub fn OnReceivers(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) i32) void {
        qtc.KUrlCompletion_OnReceivers(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn IsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.KUrlCompletion_IsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, signal: QtC.QMetaMethod ```
    pub fn QBaseIsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.KUrlCompletion_QBaseIsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, signal: QtC.QMetaMethod) callconv(.c) bool ```
    pub fn OnIsSignalConnected(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.KUrlCompletion_OnIsSignalConnected(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectNameChanged)
    ///
    /// Wrapper to allow calling private signal
    ///
    /// ``` self: QtC.KUrlCompletion, callback: *const fn (self: QtC.KUrlCompletion, objectName: [*:0]const u8) callconv(.c) void ```
    pub fn OnObjectNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QObject_Connect_ObjectNameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://api.kde.org/kurlcompletion.html#dtor.KUrlCompletion)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.KUrlCompletion ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.KUrlCompletion_Delete(@ptrCast(self));
    }
};

/// https://api.kde.org/kurlcompletion.html#types
pub const enums = struct {
    pub const Mode = enum {
        pub const ExeCompletion: i32 = 1;
        pub const FileCompletion: i32 = 2;
        pub const DirCompletion: i32 = 3;
    };
};
