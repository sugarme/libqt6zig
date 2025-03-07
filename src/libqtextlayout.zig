const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qtextlayout_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextinlineobject.html
pub const qtextinlineobject = struct {
    /// New constructs a new QTextInlineObject object.
    ///
    /// ``` other: ?*C.QTextInlineObject ```
    pub fn New(other: ?*anyopaque) ?*C.QTextInlineObject {
        return C.QTextInlineObject_new(@ptrCast(other));
    }

    /// New2 constructs a new QTextInlineObject object and invalidates the source QTextInlineObject object.
    ///
    /// ``` other: ?*C.QTextInlineObject ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextInlineObject {
        return C.QTextInlineObject_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTextInlineObject object.
    ///
    ///
    pub fn New3() ?*C.QTextInlineObject {
        return C.QTextInlineObject_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTextInlineObject, other: ?*QTextInlineObject ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextInlineObject_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTextInlineObject, other: ?*QTextInlineObject ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextInlineObject_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#isValid)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextInlineObject_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#rect)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRectF {
        return C.QTextInlineObject_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#width)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QTextInlineObject_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#ascent)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Ascent(self: ?*anyopaque) f64 {
        return C.QTextInlineObject_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#descent)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Descent(self: ?*anyopaque) f64 {
        return C.QTextInlineObject_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#height)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QTextInlineObject_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#textDirection)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn TextDirection(self: ?*anyopaque) i64 {
        return C.QTextInlineObject_TextDirection(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#setWidth)
    ///
    /// ``` self: ?*C.QTextInlineObject, w: f64 ```
    pub fn SetWidth(self: ?*anyopaque, w: f64) void {
        C.QTextInlineObject_SetWidth(@ptrCast(self), @floatCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#setAscent)
    ///
    /// ``` self: ?*C.QTextInlineObject, a: f64 ```
    pub fn SetAscent(self: ?*anyopaque, a: f64) void {
        C.QTextInlineObject_SetAscent(@ptrCast(self), @floatCast(a));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#setDescent)
    ///
    /// ``` self: ?*C.QTextInlineObject, d: f64 ```
    pub fn SetDescent(self: ?*anyopaque, d: f64) void {
        C.QTextInlineObject_SetDescent(@ptrCast(self), @floatCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#textPosition)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn TextPosition(self: ?*anyopaque) i32 {
        return C.QTextInlineObject_TextPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#formatIndex)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn FormatIndex(self: ?*anyopaque) i32 {
        return C.QTextInlineObject_FormatIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextinlineobject.html#format)
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn Format(self: ?*anyopaque) ?*C.QTextFormat {
        return C.QTextInlineObject_Format(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextInlineObject ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextInlineObject_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextlayout.html
pub const qtextlayout = struct {
    /// New constructs a new QTextLayout object.
    ///
    ///
    pub fn New() ?*C.QTextLayout {
        return C.QTextLayout_new();
    }

    /// New2 constructs a new QTextLayout object.
    ///
    /// ``` text: []const u8 ```
    pub fn New2(text: []const u8) ?*C.QTextLayout {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QTextLayout_new2(text_str);
    }

    /// New3 constructs a new QTextLayout object.
    ///
    /// ``` text: []const u8, font: ?*C.QFont ```
    pub fn New3(text: []const u8, font: ?*anyopaque) ?*C.QTextLayout {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QTextLayout_new3(text_str, @ptrCast(font));
    }

    /// New4 constructs a new QTextLayout object.
    ///
    /// ``` b: ?*C.QTextBlock ```
    pub fn New4(b: ?*anyopaque) ?*C.QTextLayout {
        return C.QTextLayout_new4(@ptrCast(b));
    }

    /// New5 constructs a new QTextLayout object.
    ///
    /// ``` text: []const u8, font: ?*C.QFont, paintdevice: ?*C.QPaintDevice ```
    pub fn New5(text: []const u8, font: ?*anyopaque, paintdevice: ?*anyopaque) ?*C.QTextLayout {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QTextLayout_new5(text_str, @ptrCast(font), @ptrCast(paintdevice));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setFont)
    ///
    /// ``` self: ?*C.QTextLayout, f: ?*C.QFont ```
    pub fn SetFont(self: ?*anyopaque, f: ?*anyopaque) void {
        C.QTextLayout_SetFont(@ptrCast(self), @ptrCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#font)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QTextLayout_Font(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setRawFont)
    ///
    /// ``` self: ?*C.QTextLayout, rawFont: ?*C.QRawFont ```
    pub fn SetRawFont(self: ?*anyopaque, rawFont: ?*anyopaque) void {
        C.QTextLayout_SetRawFont(@ptrCast(self), @ptrCast(rawFont));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setText)
    ///
    /// ``` self: ?*C.QTextLayout, stringVal: []const u8 ```
    pub fn SetText(self: ?*anyopaque, stringVal: []const u8) void {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        C.QTextLayout_SetText(@ptrCast(self), stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#text)
    ///
    /// ``` self: ?*C.QTextLayout, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextLayout_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setTextOption)
    ///
    /// ``` self: ?*C.QTextLayout, option: ?*C.QTextOption ```
    pub fn SetTextOption(self: ?*anyopaque, option: ?*anyopaque) void {
        C.QTextLayout_SetTextOption(@ptrCast(self), @ptrCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#textOption)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn TextOption(self: ?*anyopaque) ?*C.QTextOption {
        return C.QTextLayout_TextOption(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setPreeditArea)
    ///
    /// ``` self: ?*C.QTextLayout, position: i32, text: []const u8 ```
    pub fn SetPreeditArea(self: ?*anyopaque, position: i32, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QTextLayout_SetPreeditArea(@ptrCast(self), @intCast(position), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#preeditAreaPosition)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn PreeditAreaPosition(self: ?*anyopaque) i32 {
        return C.QTextLayout_PreeditAreaPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#preeditAreaText)
    ///
    /// ``` self: ?*C.QTextLayout, allocator: std.mem.Allocator ```
    pub fn PreeditAreaText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextLayout_PreeditAreaText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setFormats)
    ///
    /// ``` self: ?*C.QTextLayout, overrides: []?*C.QTextLayout__FormatRange ```
    pub fn SetFormats(self: ?*anyopaque, overrides: []?*C.QTextLayout__FormatRange) void {
        const overrides_list = C.struct_libqt_list{
            .len = overrides.len,
            .data = @ptrCast(overrides.ptr),
        };
        C.QTextLayout_SetFormats(@ptrCast(self), overrides_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#formats)
    ///
    /// ``` self: ?*C.QTextLayout, allocator: std.mem.Allocator ```
    pub fn Formats(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QTextLayout__FormatRange {
        const _arr: C.struct_libqt_list = C.QTextLayout_Formats(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLayout__FormatRange, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLayout__FormatRange = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#clearFormats)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn ClearFormats(self: ?*anyopaque) void {
        C.QTextLayout_ClearFormats(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setCacheEnabled)
    ///
    /// ``` self: ?*C.QTextLayout, enable: bool ```
    pub fn SetCacheEnabled(self: ?*anyopaque, enable: bool) void {
        C.QTextLayout_SetCacheEnabled(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#cacheEnabled)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn CacheEnabled(self: ?*anyopaque) bool {
        return C.QTextLayout_CacheEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setCursorMoveStyle)
    ///
    /// ``` self: ?*C.QTextLayout, style: qnamespace_enums.CursorMoveStyle ```
    pub fn SetCursorMoveStyle(self: ?*anyopaque, style: i64) void {
        C.QTextLayout_SetCursorMoveStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#cursorMoveStyle)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn CursorMoveStyle(self: ?*anyopaque) i64 {
        return C.QTextLayout_CursorMoveStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#beginLayout)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn BeginLayout(self: ?*anyopaque) void {
        C.QTextLayout_BeginLayout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#endLayout)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn EndLayout(self: ?*anyopaque) void {
        C.QTextLayout_EndLayout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#clearLayout)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn ClearLayout(self: ?*anyopaque) void {
        C.QTextLayout_ClearLayout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#createLine)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn CreateLine(self: ?*anyopaque) ?*C.QTextLine {
        return C.QTextLayout_CreateLine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#lineCount)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn LineCount(self: ?*anyopaque) i32 {
        return C.QTextLayout_LineCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#lineAt)
    ///
    /// ``` self: ?*C.QTextLayout, i: i32 ```
    pub fn LineAt(self: ?*anyopaque, i: i32) ?*C.QTextLine {
        return C.QTextLayout_LineAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#lineForTextPosition)
    ///
    /// ``` self: ?*C.QTextLayout, pos: i32 ```
    pub fn LineForTextPosition(self: ?*anyopaque, pos: i32) ?*C.QTextLine {
        return C.QTextLayout_LineForTextPosition(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#isValidCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, pos: i32 ```
    pub fn IsValidCursorPosition(self: ?*anyopaque, pos: i32) bool {
        return C.QTextLayout_IsValidCursorPosition(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#nextCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32 ```
    pub fn NextCursorPosition(self: ?*anyopaque, oldPos: i32) i32 {
        return C.QTextLayout_NextCursorPosition(@ptrCast(self), @intCast(oldPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#previousCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32 ```
    pub fn PreviousCursorPosition(self: ?*anyopaque, oldPos: i32) i32 {
        return C.QTextLayout_PreviousCursorPosition(@ptrCast(self), @intCast(oldPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#leftCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32 ```
    pub fn LeftCursorPosition(self: ?*anyopaque, oldPos: i32) i32 {
        return C.QTextLayout_LeftCursorPosition(@ptrCast(self), @intCast(oldPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#rightCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32 ```
    pub fn RightCursorPosition(self: ?*anyopaque, oldPos: i32) i32 {
        return C.QTextLayout_RightCursorPosition(@ptrCast(self), @intCast(oldPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#draw)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPainter, pos: ?*C.QPointF ```
    pub fn Draw(self: ?*anyopaque, p: ?*anyopaque, pos: ?*anyopaque) void {
        C.QTextLayout_Draw(@ptrCast(self), @ptrCast(p), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#drawCursor)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPainter, pos: ?*C.QPointF, cursorPosition: i32 ```
    pub fn DrawCursor(self: ?*anyopaque, p: ?*anyopaque, pos: ?*anyopaque, cursorPosition: i32) void {
        C.QTextLayout_DrawCursor(@ptrCast(self), @ptrCast(p), @ptrCast(pos), @intCast(cursorPosition));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#drawCursor)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPainter, pos: ?*C.QPointF, cursorPosition: i32, width: i32 ```
    pub fn DrawCursor2(self: ?*anyopaque, p: ?*anyopaque, pos: ?*anyopaque, cursorPosition: i32, width: i32) void {
        C.QTextLayout_DrawCursor2(@ptrCast(self), @ptrCast(p), @ptrCast(pos), @intCast(cursorPosition), @intCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#position)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QTextLayout_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setPosition)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPointF ```
    pub fn SetPosition(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QTextLayout_SetPosition(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#boundingRect)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn BoundingRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QTextLayout_BoundingRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#minimumWidth)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn MinimumWidth(self: ?*anyopaque) f64 {
        return C.QTextLayout_MinimumWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#maximumWidth)
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn MaximumWidth(self: ?*anyopaque) f64 {
        return C.QTextLayout_MaximumWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLayout, allocator: std.mem.Allocator ```
    pub fn GlyphRuns(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLayout_GlyphRuns(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#setFlags)
    ///
    /// ``` self: ?*C.QTextLayout, flags: i32 ```
    pub fn SetFlags(self: ?*anyopaque, flags: i32) void {
        C.QTextLayout_SetFlags(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#nextCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32, mode: qtextlayout_enums.CursorMode ```
    pub fn NextCursorPosition2(self: ?*anyopaque, oldPos: i32, mode: i64) i32 {
        return C.QTextLayout_NextCursorPosition2(@ptrCast(self), @intCast(oldPos), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#previousCursorPosition)
    ///
    /// ``` self: ?*C.QTextLayout, oldPos: i32, mode: qtextlayout_enums.CursorMode ```
    pub fn PreviousCursorPosition2(self: ?*anyopaque, oldPos: i32, mode: i64) i32 {
        return C.QTextLayout_PreviousCursorPosition2(@ptrCast(self), @intCast(oldPos), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#draw)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPainter, pos: ?*C.QPointF, selections: []?*C.QTextLayout__FormatRange ```
    pub fn Draw3(self: ?*anyopaque, p: ?*anyopaque, pos: ?*anyopaque, selections: []?*C.QTextLayout__FormatRange) void {
        const selections_list = C.struct_libqt_list{
            .len = selections.len,
            .data = @ptrCast(selections.ptr),
        };
        C.QTextLayout_Draw3(@ptrCast(self), @ptrCast(p), @ptrCast(pos), selections_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#draw)
    ///
    /// ``` self: ?*C.QTextLayout, p: ?*C.QPainter, pos: ?*C.QPointF, selections: []?*C.QTextLayout__FormatRange, clip: ?*C.QRectF ```
    pub fn Draw4(self: ?*anyopaque, p: ?*anyopaque, pos: ?*anyopaque, selections: []?*C.QTextLayout__FormatRange, clip: ?*anyopaque) void {
        const selections_list = C.struct_libqt_list{
            .len = selections.len,
            .data = @ptrCast(selections.ptr),
        };
        C.QTextLayout_Draw4(@ptrCast(self), @ptrCast(p), @ptrCast(pos), selections_list, @ptrCast(clip));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLayout, from: i32, allocator: std.mem.Allocator ```
    pub fn GlyphRuns1(self: ?*anyopaque, from: i32, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLayout_GlyphRuns1(@ptrCast(self), @intCast(from));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLayout, from: i32, length: i32, allocator: std.mem.Allocator ```
    pub fn GlyphRuns2(self: ?*anyopaque, from: i32, length: i32, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLayout_GlyphRuns2(@ptrCast(self), @intCast(from), @intCast(length));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextLayout ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextLayout_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextline.html
pub const qtextline = struct {
    /// New constructs a new QTextLine object.
    ///
    /// ``` other: ?*C.QTextLine ```
    pub fn New(other: ?*anyopaque) ?*C.QTextLine {
        return C.QTextLine_new(@ptrCast(other));
    }

    /// New2 constructs a new QTextLine object and invalidates the source QTextLine object.
    ///
    /// ``` other: ?*C.QTextLine ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextLine {
        return C.QTextLine_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTextLine object.
    ///
    ///
    pub fn New3() ?*C.QTextLine {
        return C.QTextLine_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTextLine, other: ?*QTextLine ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextLine_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTextLine, other: ?*QTextLine ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextLine_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#isValid)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextLine_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#rect)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRectF {
        return C.QTextLine_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#x)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn X(self: ?*anyopaque) f64 {
        return C.QTextLine_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#y)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Y(self: ?*anyopaque) f64 {
        return C.QTextLine_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#width)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QTextLine_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#ascent)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Ascent(self: ?*anyopaque) f64 {
        return C.QTextLine_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#descent)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Descent(self: ?*anyopaque) f64 {
        return C.QTextLine_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#height)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QTextLine_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#leading)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Leading(self: ?*anyopaque) f64 {
        return C.QTextLine_Leading(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#setLeadingIncluded)
    ///
    /// ``` self: ?*C.QTextLine, included: bool ```
    pub fn SetLeadingIncluded(self: ?*anyopaque, included: bool) void {
        C.QTextLine_SetLeadingIncluded(@ptrCast(self), included);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#leadingIncluded)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn LeadingIncluded(self: ?*anyopaque) bool {
        return C.QTextLine_LeadingIncluded(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#naturalTextWidth)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn NaturalTextWidth(self: ?*anyopaque) f64 {
        return C.QTextLine_NaturalTextWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn HorizontalAdvance(self: ?*anyopaque) f64 {
        return C.QTextLine_HorizontalAdvance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#naturalTextRect)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn NaturalTextRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QTextLine_NaturalTextRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#cursorToX)
    ///
    /// ``` self: ?*C.QTextLine, cursorPos: ?*i32 ```
    pub fn CursorToX(self: ?*anyopaque, cursorPos: ?*anyopaque) f64 {
        return C.QTextLine_CursorToX(@ptrCast(self), @intCast(cursorPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#cursorToX)
    ///
    /// ``` self: ?*C.QTextLine, cursorPos: i32 ```
    pub fn CursorToXWithCursorPos(self: ?*anyopaque, cursorPos: i32) f64 {
        return C.QTextLine_CursorToXWithCursorPos(@ptrCast(self), @intCast(cursorPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#xToCursor)
    ///
    /// ``` self: ?*C.QTextLine, x: f64 ```
    pub fn XToCursor(self: ?*anyopaque, x: f64) i32 {
        return C.QTextLine_XToCursor(@ptrCast(self), @floatCast(x));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#setLineWidth)
    ///
    /// ``` self: ?*C.QTextLine, width: f64 ```
    pub fn SetLineWidth(self: ?*anyopaque, width: f64) void {
        C.QTextLine_SetLineWidth(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#setNumColumns)
    ///
    /// ``` self: ?*C.QTextLine, columns: i32 ```
    pub fn SetNumColumns(self: ?*anyopaque, columns: i32) void {
        C.QTextLine_SetNumColumns(@ptrCast(self), @intCast(columns));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#setNumColumns)
    ///
    /// ``` self: ?*C.QTextLine, columns: i32, alignmentWidth: f64 ```
    pub fn SetNumColumns2(self: ?*anyopaque, columns: i32, alignmentWidth: f64) void {
        C.QTextLine_SetNumColumns2(@ptrCast(self), @intCast(columns), @floatCast(alignmentWidth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#setPosition)
    ///
    /// ``` self: ?*C.QTextLine, pos: ?*C.QPointF ```
    pub fn SetPosition(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QTextLine_SetPosition(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#position)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QTextLine_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#textStart)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn TextStart(self: ?*anyopaque) i32 {
        return C.QTextLine_TextStart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#textLength)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn TextLength(self: ?*anyopaque) i32 {
        return C.QTextLine_TextLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#lineNumber)
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn LineNumber(self: ?*anyopaque) i32 {
        return C.QTextLine_LineNumber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#draw)
    ///
    /// ``` self: ?*C.QTextLine, painter: ?*C.QPainter, position: ?*C.QPointF ```
    pub fn Draw(self: ?*anyopaque, painter: ?*anyopaque, position: ?*anyopaque) void {
        C.QTextLine_Draw(@ptrCast(self), @ptrCast(painter), @ptrCast(position));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLine, allocator: std.mem.Allocator ```
    pub fn GlyphRuns(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLine_GlyphRuns(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#cursorToX)
    ///
    /// ``` self: ?*C.QTextLine, cursorPos: ?*i32, edge: qtextlayout_enums.Edge ```
    pub fn CursorToX2(self: ?*anyopaque, cursorPos: ?*anyopaque, edge: i64) f64 {
        return C.QTextLine_CursorToX2(@ptrCast(self), @intCast(cursorPos), @intCast(edge));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#cursorToX)
    ///
    /// ``` self: ?*C.QTextLine, cursorPos: i32, edge: qtextlayout_enums.Edge ```
    pub fn CursorToX22(self: ?*anyopaque, cursorPos: i32, edge: i64) f64 {
        return C.QTextLine_CursorToX22(@ptrCast(self), @intCast(cursorPos), @intCast(edge));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#xToCursor)
    ///
    /// ``` self: ?*C.QTextLine, x: f64, param2: qtextlayout_enums.CursorPosition ```
    pub fn XToCursor2(self: ?*anyopaque, x: f64, param2: i64) i32 {
        return C.QTextLine_XToCursor2(@ptrCast(self), @floatCast(x), @intCast(param2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLine, from: i32, allocator: std.mem.Allocator ```
    pub fn GlyphRuns1(self: ?*anyopaque, from: i32, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLine_GlyphRuns1(@ptrCast(self), @intCast(from));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextline.html#glyphRuns)
    ///
    /// ``` self: ?*C.QTextLine, from: i32, length: i32, allocator: std.mem.Allocator ```
    pub fn GlyphRuns2(self: ?*anyopaque, from: i32, length: i32, allocator: std.mem.Allocator) []?*C.QGlyphRun {
        const _arr: C.struct_libqt_list = C.QTextLine_GlyphRuns2(@ptrCast(self), @intCast(from), @intCast(length));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QGlyphRun, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QGlyphRun = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextLine ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextLine_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextlayout-formatrange.html
pub const qtextlayout__formatrange = struct {
    /// New constructs a new QTextLayout::FormatRange object.
    ///
    /// ``` param1: ?*C.QTextLayout__FormatRange ```
    pub fn New(param1: ?*anyopaque) ?*C.QTextLayout__FormatRange {
        return C.QTextLayout__FormatRange_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlayout__formatrange.html#operator=)
    ///
    /// ``` self: ?*C.QTextLayout__FormatRange, param1: ?*C.QTextLayout__FormatRange ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QTextLayout__FormatRange_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextLayout__FormatRange ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextLayout__FormatRange_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextlayout.html#types
pub const enums = struct {
    pub const CursorMode = enum {
        pub const SkipCharacters: i32 = 0;
        pub const SkipWords: i32 = 1;
    };

    pub const Edge = enum {
        pub const Leading: i32 = 0;
        pub const Trailing: i32 = 1;
    };

    pub const CursorPosition = enum {
        pub const CursorBetweenCharacters: i32 = 0;
        pub const CursorOnCharacter: i32 = 1;
    };
};
