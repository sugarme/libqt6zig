const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qnamespace_enums = @import("../libqnamespace.zig").enums;
const qobjectdefs_enums = @import("../libqobjectdefs.zig").enums;
const std = @import("std");

/// https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html
pub const qscilexercustom = struct {
    /// New constructs a new QsciLexerCustom object.
    ///
    ///
    pub fn New() QtC.QsciLexerCustom {
        return qtc.QsciLexerCustom_new();
    }

    /// New2 constructs a new QsciLexerCustom object.
    ///
    /// ``` parent: QtC.QObject ```
    pub fn New2(parent: ?*anyopaque) QtC.QsciLexerCustom {
        return qtc.QsciLexerCustom_new2(@ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#metaObject)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn MetaObject(self: ?*anyopaque) QtC.QMetaObject {
        return qtc.QsciLexerCustom_MetaObject(@ptrCast(self));
    }

    /// ``` self: QtC.QsciLexerCustom, param1: []const u8 ```
    pub fn Metacast(self: ?*anyopaque, param1: []const u8) ?*anyopaque {
        const param1_Cstring = param1.ptr;
        return qtc.QsciLexerCustom_Metacast(@ptrCast(self), param1_Cstring);
    }

    /// ``` self: QtC.QsciLexerCustom, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn Metacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_Metacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque) callconv(.c) i32 ```
    pub fn OnMetacall(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32, ?*anyopaque) callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnMetacall(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerCustom, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn QBaseMetacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseMetacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(s: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const _str = qtc.QsciLexerCustom_Tr(s_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.Tr: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, length: i32, style: i32 ```
    pub fn SetStyling(self: ?*anyopaque, length: i32, style: i32) void {
        qtc.QsciLexerCustom_SetStyling(@ptrCast(self), @intCast(length), @intCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, length: i32, style: QtC.QsciStyle ```
    pub fn SetStyling2(self: ?*anyopaque, length: i32, style: ?*anyopaque) void {
        qtc.QsciLexerCustom_SetStyling2(@ptrCast(self), @intCast(length), @ptrCast(style));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, pos: i32 ```
    pub fn StartStyling(self: ?*anyopaque, pos: i32) void {
        qtc.QsciLexerCustom_StartStyling(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, start: i32, end: i32 ```
    pub fn StyleText(self: ?*anyopaque, start: i32, end: i32) void {
        qtc.QsciLexerCustom_StyleText(@ptrCast(self), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, start: i32, end: i32) callconv(.c) void ```
    pub fn OnStyleText(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnStyleText(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerCustom, start: i32, end: i32 ```
    pub fn QBaseStyleText(self: ?*anyopaque, start: i32, end: i32) void {
        qtc.QsciLexerCustom_QBaseStyleText(@ptrCast(self), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, editor: QtC.QsciScintilla ```
    pub fn SetEditor(self: ?*anyopaque, editor: ?*anyopaque) void {
        qtc.QsciLexerCustom_SetEditor(@ptrCast(self), @ptrCast(editor));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, editor: QtC.QsciScintilla) callconv(.c) void ```
    pub fn OnSetEditor(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetEditor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerCustom, editor: QtC.QsciScintilla ```
    pub fn QBaseSetEditor(self: ?*anyopaque, editor: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseSetEditor(@ptrCast(self), @ptrCast(editor));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn StyleBitsNeeded(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_StyleBitsNeeded(@ptrCast(self));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnStyleBitsNeeded(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnStyleBitsNeeded(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseStyleBitsNeeded(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseStyleBitsNeeded(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QsciLexerCustom_Tr2(s_Cstring, c_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.Tr2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QsciLexerCustom_Tr3(s_Cstring, c_Cstring, @intCast(n));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.Tr3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, pos: i32, styleBits: i32 ```
    pub fn StartStyling2(self: ?*anyopaque, pos: i32, styleBits: i32) void {
        qtc.QsciLexerCustom_StartStyling2(@ptrCast(self), @intCast(pos), @intCast(styleBits));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Apis(self: ?*anyopaque) QtC.QsciAbstractAPIs {
        return qtc.QsciLexer_Apis(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn AutoIndentStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexer_AutoIndentStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DefaultColor(self: ?*anyopaque) QtC.QColor {
        return qtc.QsciLexer_DefaultColor(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DefaultFont(self: ?*anyopaque) QtC.QFont {
        return qtc.QsciLexer_DefaultFont(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DefaultPaper(self: ?*anyopaque) QtC.QColor {
        return qtc.QsciLexer_DefaultPaper(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Editor(self: ?*anyopaque) QtC.QsciScintilla {
        return qtc.QsciLexer_Editor(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, apis: QtC.QsciAbstractAPIs ```
    pub fn SetAPIs(self: ?*anyopaque, apis: ?*anyopaque) void {
        qtc.QsciLexer_SetAPIs(@ptrCast(self), @ptrCast(apis));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor ```
    pub fn SetDefaultColor(self: ?*anyopaque, c: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultColor(@ptrCast(self), @ptrCast(c));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, f: QtC.QFont ```
    pub fn SetDefaultFont(self: ?*anyopaque, f: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultFont(@ptrCast(self), @ptrCast(f));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor ```
    pub fn SetDefaultPaper(self: ?*anyopaque, c: ?*anyopaque) void {
        qtc.QsciLexer_SetDefaultPaper(@ptrCast(self), @ptrCast(c));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings ```
    pub fn ReadSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return qtc.QsciLexer_ReadSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings ```
    pub fn WriteSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return qtc.QsciLexer_WriteSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn ColorChanged(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_ColorChanged(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_ColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, eolfilled: bool, style: i32 ```
    pub fn EolFillChanged(self: ?*anyopaque, eolfilled: bool, style: i32) void {
        qtc.QsciLexer_EolFillChanged(@ptrCast(self), eolfilled, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, eolfilled: bool, style: i32) callconv(.c) void ```
    pub fn OnEolFillChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_EolFillChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, f: QtC.QFont, style: i32 ```
    pub fn FontChanged(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_FontChanged(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, f: QtC.QFont, style: i32) callconv(.c) void ```
    pub fn OnFontChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_FontChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn PaperChanged(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexer_PaperChanged(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnPaperChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexer_Connect_PaperChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, prop: []const u8, val: []const u8 ```
    pub fn PropertyChanged(self: ?*anyopaque, prop: []const u8, val: []const u8) void {
        const prop_Cstring = prop.ptr;
        const val_Cstring = val.ptr;
        qtc.QsciLexer_PropertyChanged(@ptrCast(self), prop_Cstring, val_Cstring);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, prop: [*:0]const u8, val: [*:0]const u8) callconv(.c) void ```
    pub fn OnPropertyChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8, [*:0]const u8) callconv(.c) void) void {
        qtc.QsciLexer_Connect_PropertyChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn ReadSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = prefix.ptr;
        return qtc.QsciLexer_ReadSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn WriteSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = prefix.ptr;
        return qtc.QsciLexer_WriteSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectName)
    ///
    /// ``` self: QtC.QsciLexerCustom, allocator: std.mem.Allocator ```
    pub fn ObjectName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QObject_ObjectName(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.ObjectName: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setObjectName)
    ///
    /// ``` self: QtC.QsciLexerCustom, name: []const u8 ```
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
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn IsWidgetType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWidgetType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWindowType)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn IsWindowType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWindowType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isQuickItemType)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn IsQuickItemType(self: ?*anyopaque) bool {
        return qtc.QObject_IsQuickItemType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#signalsBlocked)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn SignalsBlocked(self: ?*anyopaque) bool {
        return qtc.QObject_SignalsBlocked(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#blockSignals)
    ///
    /// ``` self: QtC.QsciLexerCustom, b: bool ```
    pub fn BlockSignals(self: ?*anyopaque, b: bool) bool {
        return qtc.QObject_BlockSignals(@ptrCast(self), b);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#thread)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Thread(self: ?*anyopaque) QtC.QThread {
        return qtc.QObject_Thread(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QsciLexerCustom, thread: QtC.QThread ```
    pub fn MoveToThread(self: ?*anyopaque, thread: ?*anyopaque) bool {
        return qtc.QObject_MoveToThread(@ptrCast(self), @ptrCast(thread));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QsciLexerCustom, interval: i32 ```
    pub fn StartTimer(self: ?*anyopaque, interval: i32) i32 {
        return qtc.QObject_StartTimer(@ptrCast(self), @intCast(interval));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QsciLexerCustom, id: i32 ```
    pub fn KillTimer(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QsciLexerCustom, id: qnamespace_enums.TimerId ```
    pub fn KillTimer2(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer2(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#children)
    ///
    /// ``` self: QtC.QsciLexerCustom, allocator: std.mem.Allocator ```
    pub fn Children(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QObject {
        const _arr: qtc.libqt_list = qtc.QObject_Children(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QObject, _arr.len) catch @panic("qscilexercustom.Children: Memory allocation failed");
        const _data: [*]QtC.QObject = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setParent)
    ///
    /// ``` self: QtC.QsciLexerCustom, parent: QtC.QObject ```
    pub fn SetParent(self: ?*anyopaque, parent: ?*anyopaque) void {
        qtc.QObject_SetParent(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#installEventFilter)
    ///
    /// ``` self: QtC.QsciLexerCustom, filterObj: QtC.QObject ```
    pub fn InstallEventFilter(self: ?*anyopaque, filterObj: ?*anyopaque) void {
        qtc.QObject_InstallEventFilter(@ptrCast(self), @ptrCast(filterObj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#removeEventFilter)
    ///
    /// ``` self: QtC.QsciLexerCustom, obj: QtC.QObject ```
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
    /// ``` self: QtC.QsciLexerCustom, sender: QtC.QObject, signal: []const u8, member: []const u8 ```
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
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DumpObjectTree(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectTree(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectInfo)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DumpObjectInfo(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectInfo(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setProperty)
    ///
    /// ``` self: QtC.QsciLexerCustom, name: []const u8, value: QtC.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, name: []const u8, value: ?*anyopaque) bool {
        const name_Cstring = name.ptr;
        return qtc.QObject_SetProperty(@ptrCast(self), name_Cstring, @ptrCast(value));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#property)
    ///
    /// ``` self: QtC.QsciLexerCustom, name: []const u8 ```
    pub fn Property(self: ?*anyopaque, name: []const u8) QtC.QVariant {
        const name_Cstring = name.ptr;
        return qtc.QObject_Property(@ptrCast(self), name_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dynamicPropertyNames)
    ///
    /// ``` self: QtC.QsciLexerCustom, allocator: std.mem.Allocator ```
    pub fn DynamicPropertyNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: qtc.libqt_list = qtc.QObject_DynamicPropertyNames(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("qscilexercustom.DynamicPropertyNames: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexercustom.DynamicPropertyNames: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn BindingStorage(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn BindingStorage2(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage2(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Destroyed(self: ?*anyopaque) void {
        qtc.QObject_Destroyed(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom) callconv(.c) void ```
    pub fn OnDestroyed(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#parent)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Parent(self: ?*anyopaque) QtC.QObject {
        return qtc.QObject_Parent(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#inherits)
    ///
    /// ``` self: QtC.QsciLexerCustom, classname: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, classname: []const u8) bool {
        const classname_Cstring = classname.ptr;
        return qtc.QObject_Inherits(@ptrCast(self), classname_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#deleteLater)
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DeleteLater(self: ?*anyopaque) void {
        qtc.QObject_DeleteLater(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QsciLexerCustom, thread: QtC.QThread, param2: QtC.Disambiguated_t ```
    pub fn MoveToThread2(self: ?*anyopaque, thread: ?*anyopaque, param2: QtC.Disambiguated_t) bool {
        return qtc.QObject_MoveToThread2(@ptrCast(self), @ptrCast(thread), @ptrCast(param2));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QsciLexerCustom, interval: i32, timerType: qnamespace_enums.TimerType ```
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
    /// ``` self: QtC.QsciLexerCustom, sender: QtC.QObject, signal: []const u8, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect4(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8, typeVal: i32) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect4(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring, @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerCustom, param1: QtC.QObject ```
    pub fn Destroyed1(self: ?*anyopaque, param1: ?*anyopaque) void {
        qtc.QObject_Destroyed1(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, param1: QtC.QObject) callconv(.c) void ```
    pub fn OnDestroyed1(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed1(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Language(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_Language(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseLanguage(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseLanguage(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnLanguage(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnLanguage(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Lexer(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_Lexer(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseLexer(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseLexer(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnLexer(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnLexer(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn LexerId(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_LexerId(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseLexerId(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseLexerId(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnLexerId(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnLexerId(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn AutoCompletionFillups(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_AutoCompletionFillups(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseAutoCompletionFillups(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseAutoCompletionFillups(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnAutoCompletionFillups(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnAutoCompletionFillups(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, allocator: std.mem.Allocator ```
    pub fn AutoCompletionWordSeparators(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QsciLexerCustom_AutoCompletionWordSeparators(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qscilexercustom.AutoCompletionWordSeparators: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexercustom.AutoCompletionWordSeparators: Memory allocation failed");
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
    /// ``` self: QtC.QsciLexerCustom, allocator: std.mem.Allocator ```
    pub fn QBaseAutoCompletionWordSeparators(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QsciLexerCustom_QBaseAutoCompletionWordSeparators(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qscilexercustom.AutoCompletionWordSeparators: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qscilexercustom.AutoCompletionWordSeparators: Memory allocation failed");
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
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) [*][*:0]const u8 ```
    pub fn OnAutoCompletionWordSeparators(self: ?*anyopaque, callback: *const fn () callconv(.c) [*][*:0]const u8) void {
        qtc.QsciLexerCustom_OnAutoCompletionWordSeparators(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn BlockEnd(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_BlockEnd(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn QBaseBlockEnd(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseBlockEnd(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockEnd(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnBlockEnd(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn BlockLookback(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_BlockLookback(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseBlockLookback(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseBlockLookback(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnBlockLookback(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnBlockLookback(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn BlockStart(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_BlockStart(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn QBaseBlockStart(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseBlockStart(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockStart(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnBlockStart(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn BlockStartKeyword(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_BlockStartKeyword(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: *i32 ```
    pub fn QBaseBlockStartKeyword(self: ?*anyopaque, style: *i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseBlockStartKeyword(@ptrCast(self), @ptrCast(style));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: *i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBlockStartKeyword(self: ?*anyopaque, callback: *const fn (?*anyopaque, *i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnBlockStartKeyword(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn BraceStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_BraceStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseBraceStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseBraceStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnBraceStyle(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnBraceStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn CaseSensitive(self: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_CaseSensitive(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseCaseSensitive(self: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_QBaseCaseSensitive(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) bool ```
    pub fn OnCaseSensitive(self: ?*anyopaque, callback: *const fn () callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnCaseSensitive(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn Color(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_Color(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseColor(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_QBaseColor(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnColor(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerCustom_OnColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn EolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerCustom_EolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseEolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerCustom_QBaseEolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) bool ```
    pub fn OnEolFill(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnEolFill(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn Font(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerCustom_Font(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseFont(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerCustom_QBaseFont(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QFont ```
    pub fn OnFont(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QFont) void {
        qtc.QsciLexerCustom_OnFont(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn IndentationGuideView(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_IndentationGuideView(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseIndentationGuideView(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseIndentationGuideView(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnIndentationGuideView(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnIndentationGuideView(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, set: i32 ```
    pub fn Keywords(self: ?*anyopaque, set: i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_Keywords(@ptrCast(self), @intCast(set));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, set: i32 ```
    pub fn QBaseKeywords(self: ?*anyopaque, set: i32) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseKeywords(@ptrCast(self), @intCast(set));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, set: i32) callconv(.c) [*:0]const u8 ```
    pub fn OnKeywords(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnKeywords(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn DefaultStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_DefaultStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseDefaultStyle(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseDefaultStyle(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnDefaultStyle(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnDefaultStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, style: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QsciLexerCustom_Description(@ptrCast(self), @intCast(style));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.Description: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32, allocator: std.mem.Allocator ```
    pub fn QBaseDescription(self: ?*anyopaque, style: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QsciLexerCustom_QBaseDescription(@ptrCast(self), @intCast(style));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.Description: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) [*:0]const u8 ```
    pub fn OnDescription(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnDescription(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn Paper(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_Paper(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBasePaper(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_QBasePaper(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnPaper(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerCustom_OnPaper(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn DefaultColor2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_DefaultColor2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseDefaultColor2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_QBaseDefaultColor2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnDefaultColor2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerCustom_OnDefaultColor2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn DefaultEolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerCustom_DefaultEolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseDefaultEolFill(self: ?*anyopaque, style: i32) bool {
        return qtc.QsciLexerCustom_QBaseDefaultEolFill(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) bool ```
    pub fn OnDefaultEolFill(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnDefaultEolFill(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn DefaultFont2(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerCustom_DefaultFont2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseDefaultFont2(self: ?*anyopaque, style: i32) QtC.QFont {
        return qtc.QsciLexerCustom_QBaseDefaultFont2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QFont ```
    pub fn OnDefaultFont2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QFont) void {
        qtc.QsciLexerCustom_OnDefaultFont2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn DefaultPaper2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_DefaultPaper2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, style: i32 ```
    pub fn QBaseDefaultPaper2(self: ?*anyopaque, style: i32) QtC.QColor {
        return qtc.QsciLexerCustom_QBaseDefaultPaper2(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, style: i32) callconv(.c) QtC.QColor ```
    pub fn OnDefaultPaper2(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) QtC.QColor) void {
        qtc.QsciLexerCustom_OnDefaultPaper2(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn RefreshProperties(self: ?*anyopaque) void {
        qtc.QsciLexerCustom_RefreshProperties(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseRefreshProperties(self: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseRefreshProperties(@ptrCast(self));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) void ```
    pub fn OnRefreshProperties(self: ?*anyopaque, callback: *const fn () callconv(.c) void) void {
        qtc.QsciLexerCustom_OnRefreshProperties(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn WordCharacters(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_WordCharacters(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseWordCharacters(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QsciLexerCustom_QBaseWordCharacters(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) [*:0]const u8 ```
    pub fn OnWordCharacters(self: ?*anyopaque, callback: *const fn () callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnWordCharacters(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, autoindentstyle: i32 ```
    pub fn SetAutoIndentStyle(self: ?*anyopaque, autoindentstyle: i32) void {
        qtc.QsciLexerCustom_SetAutoIndentStyle(@ptrCast(self), @intCast(autoindentstyle));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, autoindentstyle: i32 ```
    pub fn QBaseSetAutoIndentStyle(self: ?*anyopaque, autoindentstyle: i32) void {
        qtc.QsciLexerCustom_QBaseSetAutoIndentStyle(@ptrCast(self), @intCast(autoindentstyle));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, autoindentstyle: i32) callconv(.c) void ```
    pub fn OnSetAutoIndentStyle(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetAutoIndentStyle(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn SetColor(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_SetColor(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn QBaseSetColor(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_QBaseSetColor(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnSetColor(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, eoffill: bool, style: i32 ```
    pub fn SetEolFill(self: ?*anyopaque, eoffill: bool, style: i32) void {
        qtc.QsciLexerCustom_SetEolFill(@ptrCast(self), eoffill, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, eoffill: bool, style: i32 ```
    pub fn QBaseSetEolFill(self: ?*anyopaque, eoffill: bool, style: i32) void {
        qtc.QsciLexerCustom_QBaseSetEolFill(@ptrCast(self), eoffill, @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, eoffill: bool, style: i32) callconv(.c) void ```
    pub fn OnSetEolFill(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetEolFill(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, f: QtC.QFont, style: i32 ```
    pub fn SetFont(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_SetFont(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, f: QtC.QFont, style: i32 ```
    pub fn QBaseSetFont(self: ?*anyopaque, f: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_QBaseSetFont(@ptrCast(self), @ptrCast(f), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, f: QtC.QFont, style: i32) callconv(.c) void ```
    pub fn OnSetFont(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetFont(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn SetPaper(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_SetPaper(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32 ```
    pub fn QBaseSetPaper(self: ?*anyopaque, c: ?*anyopaque, style: i32) void {
        qtc.QsciLexerCustom_QBaseSetPaper(@ptrCast(self), @ptrCast(c), @intCast(style));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, c: QtC.QColor, style: i32) callconv(.c) void ```
    pub fn OnSetPaper(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnSetPaper(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn ReadProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerCustom_ReadProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn QBaseReadProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerCustom_QBaseReadProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: [*:0]const u8) callconv(.c) bool ```
    pub fn OnReadProperties(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, [*:0]const u8) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnReadProperties(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn WriteProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerCustom_WriteProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: []const u8 ```
    pub fn QBaseWriteProperties(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_str = qtc.libqt_string{
            .len = prefix.len,
            .data = prefix.ptr,
        };
        return qtc.QsciLexerCustom_QBaseWriteProperties(@ptrCast(self), @ptrCast(qs), prefix_str);
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, qs: QtC.QSettings, prefix: [*:0]const u8) callconv(.c) bool ```
    pub fn OnWriteProperties(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, [*:0]const u8) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnWriteProperties(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QEvent ```
    pub fn Event(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_Event(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QEvent ```
    pub fn QBaseEvent(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_QBaseEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn EventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_EventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn QBaseEventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_QBaseEventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, watched: QtC.QObject, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEventFilter(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnEventFilter(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QTimerEvent ```
    pub fn TimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_TimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QTimerEvent ```
    pub fn QBaseTimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseTimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, event: QtC.QTimerEvent) callconv(.c) void ```
    pub fn OnTimerEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnTimerEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QChildEvent ```
    pub fn ChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_ChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QChildEvent ```
    pub fn QBaseChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, event: QtC.QChildEvent) callconv(.c) void ```
    pub fn OnChildEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnChildEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QEvent ```
    pub fn CustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_CustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, event: QtC.QEvent ```
    pub fn QBaseCustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseCustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, event: QtC.QEvent) callconv(.c) void ```
    pub fn OnCustomEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnCustomEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn ConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerCustom_ConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn QBaseConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnConnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnConnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn DisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerCustom_DisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn QBaseDisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QsciLexerCustom_QBaseDisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnDisconnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QsciLexerCustom_OnDisconnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, text: []const u8, allocator: std.mem.Allocator ```
    pub fn TextAsBytes(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _bytearray: qtc.libqt_string = qtc.QsciLexerCustom_TextAsBytes(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qscilexercustom.TextAsBytes: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, text: []const u8, allocator: std.mem.Allocator ```
    pub fn QBaseTextAsBytes(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []u8 {
        const text_str = qtc.libqt_string{
            .len = text.len,
            .data = text.ptr,
        };
        const _bytearray: qtc.libqt_string = qtc.QsciLexerCustom_QBaseTextAsBytes(@ptrCast(self), text_str);
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qscilexercustom.TextAsBytes: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, text: [*:0]const u8) callconv(.c) [*:0]u8 ```
    pub fn OnTextAsBytes(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) [*:0]u8) void {
        qtc.QsciLexerCustom_OnTextAsBytes(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, bytes: []const u8, size: i32, allocator: std.mem.Allocator ```
    pub fn BytesAsText(self: ?*anyopaque, bytes: []const u8, size: i32, allocator: std.mem.Allocator) []const u8 {
        const bytes_Cstring = bytes.ptr;
        const _str = qtc.QsciLexerCustom_BytesAsText(@ptrCast(self), bytes_Cstring, @intCast(size));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.BytesAsText: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, bytes: []const u8, size: i32, allocator: std.mem.Allocator ```
    pub fn QBaseBytesAsText(self: ?*anyopaque, bytes: []const u8, size: i32, allocator: std.mem.Allocator) []const u8 {
        const bytes_Cstring = bytes.ptr;
        const _str = qtc.QsciLexerCustom_QBaseBytesAsText(@ptrCast(self), bytes_Cstring, @intCast(size));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qscilexercustom.BytesAsText: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QsciLexer
    ///
    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexer.html)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, bytes: [*:0]const u8, size: i32) callconv(.c) [*:0]const u8 ```
    pub fn OnBytesAsText(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8, i32) callconv(.c) [*:0]const u8) void {
        qtc.QsciLexerCustom_OnBytesAsText(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn Sender(self: ?*anyopaque) QtC.QObject {
        return qtc.QsciLexerCustom_Sender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseSender(self: ?*anyopaque) QtC.QObject {
        return qtc.QsciLexerCustom_QBaseSender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) QtC.QObject ```
    pub fn OnSender(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QObject) void {
        qtc.QsciLexerCustom_OnSender(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn SenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_SenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QBaseSenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QsciLexerCustom_QBaseSenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn () callconv(.c) i32 ```
    pub fn OnSenderSignalIndex(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnSenderSignalIndex(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: []const u8 ```
    pub fn Receivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QsciLexerCustom_Receivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: []const u8 ```
    pub fn QBaseReceivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QsciLexerCustom_QBaseReceivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, signal: [*:0]const u8) callconv(.c) i32 ```
    pub fn OnReceivers(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) i32) void {
        qtc.QsciLexerCustom_OnReceivers(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn IsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_IsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod ```
    pub fn QBaseIsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QsciLexerCustom_QBaseIsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, signal: QtC.QMetaMethod) callconv(.c) bool ```
    pub fn OnIsSignalConnected(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QsciLexerCustom_OnIsSignalConnected(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectNameChanged)
    ///
    /// Wrapper to allow calling private signal
    ///
    /// ``` self: QtC.QsciLexerCustom, callback: *const fn (self: QtC.QsciLexerCustom, objectName: [*:0]const u8) callconv(.c) void ```
    pub fn OnObjectNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QObject_Connect_ObjectNameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://www.riverbankcomputing.com/static/Docs/QScintilla/classQsciLexerCustom.html)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QsciLexerCustom ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QsciLexerCustom_Delete(@ptrCast(self));
    }
};
