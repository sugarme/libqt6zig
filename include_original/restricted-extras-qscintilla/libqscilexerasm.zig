const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qnamespace_enums = @import("../libqnamespace.zig").enums;
const qobjectdefs_enums = @import("../libqobjectdefs.zig").enums;
const std = @import("std");

/// https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html
pub const qscilexerasm = struct {
    /// New constructs a new QsciLexerAsm object.
    ///
    ///
    pub fn New() QtC.QsciLexerAsm {
        return qtc.QsciLexerAsm_new();
    }

    /// New2 constructs a new QsciLexerAsm object.
    ///
    /// ``` parent: QtC.QObject ```
    pub fn New2(parent: ?*anyopaque) QtC.QsciLexerAsm {
        return qtc.QsciLexerAsm_new2(@ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#metaObject)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn MetaObject(self: ?*anyopaque) QtC.QMetaObject {
        return qtc.QsciLexerAsm_MetaObject(@ptrCast(self));
    }

    /// ``` self: QtC.QsciLexerAsm, param1: []const u8 ```
    pub fn Metacast(self: ?*anyopaque, param1: []const u8) ?*anyopaque {
        const param1_Cstring = param1.ptr;
        return qtc.QsciLexerAsm_Metacast(@ptrCast(self), param1_Cstring);
    }

    /// ``` self: QtC.QsciLexerAsm, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn Metacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_Metacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque) callconv(.c) i32 ```
    pub fn OnMetacall(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32, ?*anyopaque) callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnMetacall(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn QBaseMetacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseMetacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(s: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const _str = qtc.QsciLexerAsm_Tr(s_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.Tr: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultColor(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_DefaultColor(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultEolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerAsm_DefaultEolFill(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultFont(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerAsm_DefaultFont(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultPaper(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_DefaultPaper(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, set: i32 ```
    pub fn Keywords(self: ?*anyopaque, set: i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_Keywords(@ptrCast(self), @intCast(set));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, style: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QsciLexerAsm_Description(@ptrCast(self), @intCast(style));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.Description: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn RefreshProperties(self: ?*anyopaque) void {
        qtc.QsciLexerAsm_RefreshProperties(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn FoldComments(self: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_FoldComments(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn FoldCompact(self: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_FoldCompact(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn CommentDelimiter(self: ?*anyopaque) QtC.QChar {
        return qtc.QsciLexerAsm_CommentDelimiter(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn FoldSyntaxBased(self: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_FoldSyntaxBased(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, fold: bool ```
    pub fn SetFoldComments(self: ?*anyopaque, fold: bool) void {
        qtc.QsciLexerAsm_SetFoldComments(@ptrCast(self), fold);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, fold: bool) callconv(.c) void ```
    pub fn OnSetFoldComments(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetFoldComments(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, fold: bool ```
    pub fn QBaseSetFoldComments(self: ?*anyopaque, fold: bool) void {
        qtc.QsciLexerAsm_QBaseSetFoldComments(@ptrCast(self), fold);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, fold: bool ```
    pub fn SetFoldCompact(self: ?*anyopaque, fold: bool) void {
        qtc.QsciLexerAsm_SetFoldCompact(@ptrCast(self), fold);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, fold: bool) callconv(.c) void ```
    pub fn OnSetFoldCompact(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetFoldCompact(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, fold: bool ```
    pub fn QBaseSetFoldCompact(self: ?*anyopaque, fold: bool) void {
        qtc.QsciLexerAsm_QBaseSetFoldCompact(@ptrCast(self), fold);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, delimeter: QtC.QChar ```
    pub fn SetCommentDelimiter(self: ?*anyopaque, delimeter: QtC.QChar) void {
        qtc.QsciLexerAsm_SetCommentDelimiter(@ptrCast(self), @ptrCast(delimeter));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, delimeter: QtC.QChar) callconv(.c) void ```
    pub fn OnSetCommentDelimiter(self: ?*anyopaque, callback: *const fn (?*anyopaque, QtC.QChar) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetCommentDelimiter(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, delimeter: QtC.QChar ```
    pub fn QBaseSetCommentDelimiter(self: ?*anyopaque, delimeter: QtC.QChar) void {
        qtc.QsciLexerAsm_QBaseSetCommentDelimiter(@ptrCast(self), @ptrCast(delimeter));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, syntax_based: bool ```
    pub fn SetFoldSyntaxBased(self: ?*anyopaque, syntax_based: bool) void {
        qtc.QsciLexerAsm_SetFoldSyntaxBased(@ptrCast(self), syntax_based);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, syntax_based: bool) callconv(.c) void ```
    pub fn OnSetFoldSyntaxBased(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetFoldSyntaxBased(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, syntax_based: bool ```
    pub fn QBaseSetFoldSyntaxBased(self: ?*anyopaque, syntax_based: bool) void {
        qtc.QsciLexerAsm_QBaseSetFoldSyntaxBased(@ptrCast(self), syntax_based);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn ReadProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerAsm_ReadProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: [*:0]const u8) callconv(.c) bool ```
    pub fn OnReadProperties(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, [*:0]const u8) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnReadProperties(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn QBaseReadProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerAsm_QBaseReadProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn WriteProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerAsm_WriteProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: [*:0]const u8) callconv(.c) bool ```
    pub fn OnWriteProperties(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, [*:0]const u8) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnWriteProperties(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn QBaseWriteProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerAsm_QBaseWriteProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QsciLexerAsm_Tr2(s_Cstring, c_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.Tr2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QsciLexerAsm_Tr3(s_Cstring, c_Cstring, @intCast(n));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.Tr3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Apis(self: ?*anyopaque) QtC.QsciAbstractAPIs {
        return qtc.QsciLexer_Apis(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn AutoIndentStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexer_AutoIndentStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Editor(self: ?*anyopaque) QtC.QsciScintilla {
        return qtc.QsciLexer_Editor(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, apis: QtC.QsciAbstractAPIs ```
    pub fn SetAPIs(self: ?*anyopaque, apis: ?*anyopaque) void {
        qtc.QsciLexer_SetAPIs(@ptrCast(self), @ptrCast(apis));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor ```
    pub fn SetDefaultColor(self: ?*anyopaque, c: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultColor(@ptrCast(self), @ptrCast(c));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, f: QtC.QFont ```
    pub fn SetDefaultFont(self: ?*anyopaque, f: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultFont(@ptrCast(self), @ptrCast(f));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor ```
    pub fn SetDefaultPaper(self: ?*anyopaque, c: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultPaper(@ptrCast(self), @ptrCast(c));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings ```
    pub fn ReadSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return qtc.QsciLexer_ReadSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings ```
    pub fn WriteSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return qtc.QsciLexer_WriteSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn ColorChanged(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_ColorChanged(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_ColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, eolfilled: bool, style: i32 ```
    pub fn EolFillChanged(self: ?*anyopaque, eolfilled: bool, style: i32) void {
        qtc.QsciLexer_EolFillChanged(@ptrCast(self), eolfilled, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, eolfilled: bool, style: i32) callconv(.c) void ```
    pub fn OnEolFillChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_EolFillChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, f: QtC.QFont, style: i32 ```
    pub fn FontChanged(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_FontChanged(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, f: QtC.QFont, style: i32) callconv(.c) void ```
    pub fn OnFontChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_FontChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn PaperChanged(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_PaperChanged(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnPaperChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_PaperChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, prop: []const u8, val: []const u8 ```
    pub fn PropertyChanged(self: ?*anyopaque, prop: []const u8, val: []const u8) void {
        const prop_Cstring = prop.ptr;
        const val_Cstring = val.ptr;
        qtc.QsciLexer_PropertyChanged(@ptrCast(self), prop_Cstring, val_Cstring);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, prop: [*:0]const u8, val: [*:0]const u8) callconv(.c) void ```
    pub fn OnPropertyChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8, [*:0]const u8) callconv(.c) void) void {
        qtc.QsciLexer_Connect_PropertyChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn ReadSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = prefix.ptr;
        return qtc.QsciLexer_ReadSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerAsm, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn WriteSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = prefix.ptr;
        return qtc.QsciLexer_WriteSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectName)
    ///
    /// ``` self: QtC.QsciLexerAsm, allocator: std.mem.Allocator ```
    pub fn ObjectName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QObject_ObjectName(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.ObjectName: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setObjectName)
    ///
    /// ``` self: QtC.QsciLexerAsm, name: []const u8 ```
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
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn IsWidgetType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWidgetType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWindowType)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn IsWindowType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWindowType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isQuickItemType)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn IsQuickItemType(self: ?*anyopaque) bool {
        return qtc.QObject_IsQuickItemType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#signalsBlocked)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn SignalsBlocked(self: ?*anyopaque) bool {
        return qtc.QObject_SignalsBlocked(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#blockSignals)
    ///
    /// ``` self: QtC.QsciLexerAsm, b: bool ```
    pub fn BlockSignals(self: ?*anyopaque, b: bool) bool {
        return qtc.QObject_BlockSignals(@ptrCast(self), b);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#thread)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Thread(self: ?*anyopaque) QtC.QThread {
        return qtc.QObject_Thread(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QsciLexerAsm, thread: QtC.QThread ```
    pub fn MoveToThread(self: ?*anyopaque, thread: ?*anyopaque) bool {
        return qtc.QObject_MoveToThread(@ptrCast(self), @ptrCast(thread));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QsciLexerAsm, interval: i32 ```
    pub fn StartTimer(self: ?*anyopaque, interval: i32) i32 {
        return qtc.QObject_StartTimer(@ptrCast(self), @intCast(interval));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QsciLexerAsm, id: i32 ```
    pub fn KillTimer(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QsciLexerAsm, id: qnamespace_enums.TimerId ```
    pub fn KillTimer2(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer2(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#children)
    ///
    /// ``` self: QtC.QsciLexerAsm, allocator: std.mem.Allocator ```
    pub fn Children(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QObject {
        const _arr: qtc.libqt_list = qtc.QObject_Children(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QObject, _arr.len) catch @panic("qscilexerasm.Children: Memory allocation failed");
        const _data: [*]QtC.QObject = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setParent)
    ///
    /// ``` self: QtC.QsciLexerAsm, parent: QtC.QObject ```
    pub fn SetParent(self: ?*anyopaque, parent: ?*anyopaque) void {
        qtc.QObject_SetParent(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#installEventFilter)
    ///
    /// ``` self: QtC.QsciLexerAsm, filterObj: QtC.QObject ```
    pub fn InstallEventFilter(self: ?*anyopaque, filterObj: ?*anyopaque) void {
        qtc.QObject_InstallEventFilter(@ptrCast(self), @ptrCast(filterObj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#removeEventFilter)
    ///
    /// ``` self: QtC.QsciLexerAsm, obj: QtC.QObject ```
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
    /// ``` self: QtC.QsciLexerAsm, sender: QtC.QObject, signal: []const u8, member: []const u8 ```
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
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn DumpObjectTree(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectTree(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectInfo)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn DumpObjectInfo(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectInfo(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setProperty)
    ///
    /// ``` self: QtC.QsciLexerAsm, name: []const u8, value: QtC.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, name: []const u8, value: ?*anyopaque) bool {
        const name_Cstring = name.ptr;
        return qtc.QObject_SetProperty(@ptrCast(self), name_Cstring, @ptrCast(value));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#property)
    ///
    /// ``` self: QtC.QsciLexerAsm, name: []const u8 ```
    pub fn Property(self: ?*anyopaque, name: []const u8) QtC.QVariant {
        const name_Cstring = name.ptr;
        return qtc.QObject_Property(@ptrCast(self), name_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dynamicPropertyNames)
    ///
    /// ``` self: QtC.QsciLexerAsm, allocator: std.mem.Allocator ```
    pub fn DynamicPropertyNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: qtc.libqt_list = qtc.QObject_DynamicPropertyNames(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("qscilexerasm.DynamicPropertyNames: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexerasm.DynamicPropertyNames: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn BindingStorage(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn BindingStorage2(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage2(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Destroyed(self: ?*anyopaque) void {
        qtc.QObject_Destroyed(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm) callconv(.c) void ```
    pub fn OnDestroyed(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#parent)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Parent(self: ?*anyopaque) QtC.QObject {
        return qtc.QObject_Parent(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#inherits)
    ///
    /// ``` self: QtC.QsciLexerAsm, classname: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, classname: []const u8) bool {
        const classname_Cstring = classname.ptr;
        return qtc.QObject_Inherits(@ptrCast(self), classname_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#deleteLater)
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn DeleteLater(self: ?*anyopaque) void {
        qtc.QObject_DeleteLater(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QsciLexerAsm, thread: QtC.QThread, param2: QtC.Disambiguated_t ```
    pub fn MoveToThread2(self: ?*anyopaque, thread: ?*anyopaque, param2: QtC.Disambiguated_t) bool {
        return qtc.QObject_MoveToThread2(@ptrCast(self), @ptrCast(thread), @ptrCast(param2));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QsciLexerAsm, interval: i32, timerType: qnamespace_enums.TimerType ```
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
    /// ``` self: QtC.QsciLexerAsm, sender: QtC.QObject, signal: []const u8, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect4(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8, typeVal: i32) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect4(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring, @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerAsm, param1: QtC.QObject ```
    pub fn Destroyed1(self: ?*anyopaque, param1: ?*anyopaque) void {
        qtc.QObject_Destroyed1(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, param1: QtC.QObject) callconv(.c) void ```
    pub fn OnDestroyed1(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed1(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Language(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_Language(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseLanguage(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseLanguage(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnLanguage(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnLanguage(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Lexer(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_Lexer(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseLexer(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseLexer(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnLexer(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnLexer(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn LexerId(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_LexerId(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseLexerId(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseLexerId(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnLexerId(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnLexerId(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn AutoCompletionFillups(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_AutoCompletionFillups(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseAutoCompletionFillups(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseAutoCompletionFillups(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnAutoCompletionFillups(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnAutoCompletionFillups(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, allocator: std.mem.Allocator ```
    pub fn AutoCompletionWordSeparators(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QsciLexerAsm_AutoCompletionWordSeparators(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qscilexerasm.AutoCompletionWordSeparators: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexerasm.AutoCompletionWordSeparators: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, allocator: std.mem.Allocator ```
    pub fn QBaseAutoCompletionWordSeparators(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QsciLexerAsm_QBaseAutoCompletionWordSeparators(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qscilexerasm.AutoCompletionWordSeparators: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexerasm.AutoCompletionWordSeparators: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) [*][*:0]const u8 ```
    pub fn OnAutoCompletionWordSeparators(self: ?*anyopaque, callback: *const fn () callconv(.c) [*][*:0]const u8) void {
        qtc.QsciLexerAsm_OnAutoCompletionWordSeparators(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn BlockEnd(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_BlockEnd(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn QBaseBlockEnd(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseBlockEnd(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockEnd(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnBlockEnd(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn BlockLookback(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_BlockLookback(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseBlockLookback(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseBlockLookback(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnBlockLookback(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnBlockLookback(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn BlockStart(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_BlockStart(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn QBaseBlockStart(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseBlockStart(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockStart(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnBlockStart(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn BlockStartKeyword(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_BlockStartKeyword(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: *i32 ```
    pub fn QBaseBlockStartKeyword(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseBlockStartKeyword(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockStartKeyword(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnBlockStartKeyword(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn BraceStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_BraceStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseBraceStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseBraceStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnBraceStyle(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnBraceStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn CaseSensitive(self: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_CaseSensitive(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseCaseSensitive(self: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_QBaseCaseSensitive(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) bool ```
    pub fn OnCaseSensitive(self: ?*anyopaque, callback: *const fn () callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnCaseSensitive(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn Color(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_Color(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseColor(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_QBaseColor(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnColor(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerAsm_OnColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn EolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerAsm_EolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseEolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerAsm_QBaseEolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) bool ```
    pub fn OnEolFill(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnEolFill(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn Font(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerAsm_Font(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseFont(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerAsm_QBaseFont(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QFont ```
    pub fn OnFont(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QFont) void {
        qtc.QsciLexerAsm_OnFont(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn IndentationGuideView(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_IndentationGuideView(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseIndentationGuideView(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseIndentationGuideView(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnIndentationGuideView(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnIndentationGuideView(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn DefaultStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_DefaultStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseDefaultStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseDefaultStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnDefaultStyle(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnDefaultStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn Paper(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_Paper(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBasePaper(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_QBasePaper(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnPaper(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerAsm_OnPaper(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultColor2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_DefaultColor2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseDefaultColor2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_QBaseDefaultColor2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnDefaultColor2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerAsm_OnDefaultColor2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultFont2(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerAsm_DefaultFont2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseDefaultFont2(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerAsm_QBaseDefaultFont2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QFont ```
    pub fn OnDefaultFont2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QFont) void {
        qtc.QsciLexerAsm_OnDefaultFont2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn DefaultPaper2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_DefaultPaper2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, style: i32 ```
    pub fn QBaseDefaultPaper2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerAsm_QBaseDefaultPaper2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnDefaultPaper2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerAsm_OnDefaultPaper2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, editor: QtC.QsciScintilla ```
    pub fn SetEditor(self: ?*anyopaque, editor: ?*anyopaque) void {
        qtc.QsciLexerAsm_SetEditor(@ptrCast(self), @ptrCast(editor));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, editor: QtC.QsciScintilla ```
    pub fn QBaseSetEditor(self: ?*anyopaque, editor: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseSetEditor(@ptrCast(self), @ptrCast(editor));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, editor: QtC.QsciScintilla) callconv(.c) void ```
    pub fn OnSetEditor(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetEditor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn StyleBitsNeeded(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_StyleBitsNeeded(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseStyleBitsNeeded(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseStyleBitsNeeded(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnStyleBitsNeeded(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnStyleBitsNeeded(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn WordCharacters(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_WordCharacters(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseWordCharacters(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerAsm_QBaseWordCharacters(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnWordCharacters(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnWordCharacters(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, autoindentstyle: i32 ```
    pub fn SetAutoIndentStyle(self: ?*anyopaque, autoindentstyle: i32) void {
        qtc.QsciLexerAsm_SetAutoIndentStyle(@ptrCast(self), @intCast(autoindentstyle));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, autoindentstyle: i32 ```
    pub fn QBaseSetAutoIndentStyle(self: ?*anyopaque, autoindentstyle: i32) void {
        qtc.QsciLexerAsm_QBaseSetAutoIndentStyle(@ptrCast(self), @intCast(autoindentstyle));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, autoindentstyle: i32) callconv(.c) void ```
    pub fn OnSetAutoIndentStyle(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetAutoIndentStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn SetColor(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_SetColor(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn QBaseSetColor(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_QBaseSetColor(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnSetColor(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, eoffill: bool, style: i32 ```
    pub fn SetEolFill(self: ?*anyopaque, eoffill: bool, style: i32) void {
        qtc.QsciLexerAsm_SetEolFill(@ptrCast(self), eoffill, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, eoffill: bool, style: i32 ```
    pub fn QBaseSetEolFill(self: ?*anyopaque, eoffill: bool, style: i32) void {
        qtc.QsciLexerAsm_QBaseSetEolFill(@ptrCast(self), eoffill, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, eoffill: bool, style: i32) callconv(.c) void ```
    pub fn OnSetEolFill(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool, i32) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetEolFill(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, f: QtC.QFont, style: i32 ```
    pub fn SetFont(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_SetFont(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, f: QtC.QFont, style: i32 ```
    pub fn QBaseSetFont(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_QBaseSetFont(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, f: QtC.QFont, style: i32) callconv(.c) void ```
    pub fn OnSetFont(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetFont(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn SetPaper(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_SetPaper(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32 ```
    pub fn QBaseSetPaper(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerAsm_QBaseSetPaper(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnSetPaper(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnSetPaper(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QEvent ```
    pub fn Event(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_Event(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QEvent ```
    pub fn QBaseEvent(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_QBaseEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn EventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_EventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn QBaseEventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_QBaseEventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, watched: QtC.QObject, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEventFilter(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnEventFilter(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QTimerEvent ```
    pub fn TimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_TimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QTimerEvent ```
    pub fn QBaseTimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseTimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, event: QtC.QTimerEvent) callconv(.c) void ```
    pub fn OnTimerEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnTimerEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QChildEvent ```
    pub fn ChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_ChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QChildEvent ```
    pub fn QBaseChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, event: QtC.QChildEvent) callconv(.c) void ```
    pub fn OnChildEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnChildEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QEvent ```
    pub fn CustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_CustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, event: QtC.QEvent ```
    pub fn QBaseCustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseCustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, event: QtC.QEvent) callconv(.c) void ```
    pub fn OnCustomEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnCustomEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn ConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerAsm_ConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn QBaseConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnConnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnConnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn DisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerAsm_DisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn QBaseDisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerAsm_QBaseDisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnDisconnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerAsm_OnDisconnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, text: []const u8, allocator: std.mem.Allocator ```
    pub fn TextAsBytes(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _bytearray: qtc.libqt_string = qtc.QsciLexerAsm_TextAsBytes(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qscilexerasm.TextAsBytes: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, text: []const u8, allocator: std.mem.Allocator ```
    pub fn QBaseTextAsBytes(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _bytearray: qtc.libqt_string = qtc.QsciLexerAsm_QBaseTextAsBytes(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qscilexerasm.TextAsBytes: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, text: [*:0]const u8) callconv(.c) [*:0]u8 ```
    pub fn OnTextAsBytes(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) [*:0]u8) void {
        qtc.QsciLexerAsm_OnTextAsBytes(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, bytes: []const u8, size: i32, allocator: std.mem.Allocator ```
    pub fn BytesAsText(self: ?*anyopaque, bytes: []const u8, size: i32, allocator: std.mem.Allocator) []const u8 {
        const bytes_Cstring = bytes.ptr;
        const _str = qtc.QsciLexerAsm_BytesAsText(@ptrCast(self), bytes_Cstring, @intCast(size));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.BytesAsText: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, bytes: []const u8, size: i32, allocator: std.mem.Allocator ```
    pub fn QBaseBytesAsText(self: ?*anyopaque, bytes: []const u8, size: i32, allocator: std.mem.Allocator) []const u8 {
        const bytes_Cstring = bytes.ptr;
        const _str = qtc.QsciLexerAsm_QBaseBytesAsText(@ptrCast(self), bytes_Cstring, @intCast(size));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexerasm.BytesAsText: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, bytes: [*:0]const u8, size: i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBytesAsText(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8, i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerAsm_OnBytesAsText(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn Sender(self: ?*anyopaque) QtC.QObject {
        return qtc.QsciLexerAsm_Sender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseSender(self: ?*anyopaque) QtC.QObject {
        return qtc.QsciLexerAsm_QBaseSender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) QtC.QObject ```
    pub fn OnSender(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QObject) void {
        qtc.QsciLexerAsm_OnSender(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn SenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_SenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QBaseSenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QsciLexerAsm_QBaseSenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn () callconv(.c) i32 ```
    pub fn OnSenderSignalIndex(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnSenderSignalIndex(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: []const u8 ```
    pub fn Receivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QsciLexerAsm_Receivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: []const u8 ```
    pub fn QBaseReceivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QsciLexerAsm_QBaseReceivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, signal: [*:0]const u8) callconv(.c) i32 ```
    pub fn OnReceivers(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) i32) void {
        qtc.QsciLexerAsm_OnReceivers(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn IsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_IsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod ```
    pub fn QBaseIsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QsciLexerAsm_QBaseIsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, signal: QtC.QMetaMethod) callconv(.c) bool ```
    pub fn OnIsSignalConnected(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerAsm_OnIsSignalConnected(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectNameChanged)
    ///
    /// Wrapper to allow calling private signal
    ///
    /// ``` self: QtC.QsciLexerAsm, callback: *const fn (self: QtC.QsciLexerAsm, objectName: [*:0]const u8) callconv(.c) void ```
    pub fn OnObjectNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QObject_Connect_ObjectNameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerAsm.html)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QsciLexerAsm ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QsciLexerAsm_Delete(@ptrCast(self));
    }
};

pub const enums = struct {
    pub const QsciLexerAsm = enum {
        pub const Default: i32 = 0;
        pub const Comment: i32 = 1;
        pub const Number: i32 = 2;
        pub const DoubleQuotedString: i32 = 3;
        pub const Operator: i32 = 4;
        pub const Identifier: i32 = 5;
        pub const CPUInstruction: i32 = 6;
        pub const FPUInstruction: i32 = 7;
        pub const Register: i32 = 8;
        pub const Directive: i32 = 9;
        pub const DirectiveOperand: i32 = 11;
        pub const BlockComment: i32 = 12;
        pub const SingleQuotedString: i32 = 13;
        pub const UnclosedString: i32 = 14;
        pub const ExtendedInstruction: i32 = 16;
        pub const CommentDirective: i32 = 17;
    };
};
