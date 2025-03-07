const C = @import("qt6c");
const qscistyle_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qscistyle.html
pub const qscistyle = struct {
    /// New constructs a new QsciStyle object.
    ///
    ///
    pub fn New() ?*C.QsciStyle {
        return C.QsciStyle_new();
    }

    /// New2 constructs a new QsciStyle object.
    ///
    /// ``` style: i32, description: []const u8, color: ?*C.QColor, paper: ?*C.QColor, font: ?*C.QFont ```
    pub fn New2(style: i32, description: []const u8, color: ?*anyopaque, paper: ?*anyopaque, font: ?*anyopaque) ?*C.QsciStyle {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };

        return C.QsciStyle_new2(@intCast(style), description_str, @ptrCast(color), @ptrCast(paper), @ptrCast(font));
    }

    /// New3 constructs a new QsciStyle object.
    ///
    /// ``` param1: ?*C.QsciStyle ```
    pub fn New3(param1: ?*anyopaque) ?*C.QsciStyle {
        return C.QsciStyle_new3(@ptrCast(param1));
    }

    /// New4 constructs a new QsciStyle object.
    ///
    /// ``` style: i32 ```
    pub fn New4(style: i32) ?*C.QsciStyle {
        return C.QsciStyle_new4(@intCast(style));
    }

    /// New5 constructs a new QsciStyle object.
    ///
    /// ``` style: i32, description: []const u8, color: ?*C.QColor, paper: ?*C.QColor, font: ?*C.QFont, eolFill: bool ```
    pub fn New5(style: i32, description: []const u8, color: ?*anyopaque, paper: ?*anyopaque, font: ?*anyopaque, eolFill: bool) ?*C.QsciStyle {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };

        return C.QsciStyle_new5(@intCast(style), description_str, @ptrCast(color), @ptrCast(paper), @ptrCast(font), eolFill);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#apply)
    ///
    /// ``` self: ?*C.QsciStyle, sci: ?*C.QsciScintillaBase ```
    pub fn Apply(self: ?*anyopaque, sci: ?*anyopaque) void {
        C.QsciStyle_Apply(@ptrCast(self), @ptrCast(sci));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setStyle)
    ///
    /// ``` self: ?*C.QsciStyle, style: i32 ```
    pub fn SetStyle(self: ?*anyopaque, style: i32) void {
        C.QsciStyle_SetStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#style)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Style(self: ?*anyopaque) i32 {
        return C.QsciStyle_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setDescription)
    ///
    /// ``` self: ?*C.QsciStyle, description: []const u8 ```
    pub fn SetDescription(self: ?*anyopaque, description: []const u8) void {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        C.QsciStyle_SetDescription(@ptrCast(self), description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#description)
    ///
    /// ``` self: ?*C.QsciStyle, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QsciStyle_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setColor)
    ///
    /// ``` self: ?*C.QsciStyle, color: ?*C.QColor ```
    pub fn SetColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QsciStyle_SetColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#color)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Color(self: ?*anyopaque) ?*C.QColor {
        return C.QsciStyle_Color(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setPaper)
    ///
    /// ``` self: ?*C.QsciStyle, paper: ?*C.QColor ```
    pub fn SetPaper(self: ?*anyopaque, paper: ?*anyopaque) void {
        C.QsciStyle_SetPaper(@ptrCast(self), @ptrCast(paper));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#paper)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Paper(self: ?*anyopaque) ?*C.QColor {
        return C.QsciStyle_Paper(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setFont)
    ///
    /// ``` self: ?*C.QsciStyle, font: ?*C.QFont ```
    pub fn SetFont(self: ?*anyopaque, font: ?*anyopaque) void {
        C.QsciStyle_SetFont(@ptrCast(self), @ptrCast(font));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#font)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QsciStyle_Font(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setEolFill)
    ///
    /// ``` self: ?*C.QsciStyle, fill: bool ```
    pub fn SetEolFill(self: ?*anyopaque, fill: bool) void {
        C.QsciStyle_SetEolFill(@ptrCast(self), fill);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#eolFill)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn EolFill(self: ?*anyopaque) bool {
        return C.QsciStyle_EolFill(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setTextCase)
    ///
    /// ``` self: ?*C.QsciStyle, text_case: qscistyle_enums.TextCase ```
    pub fn SetTextCase(self: ?*anyopaque, text_case: i64) void {
        C.QsciStyle_SetTextCase(@ptrCast(self), @intCast(text_case));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#textCase)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn TextCase(self: ?*anyopaque) i64 {
        return C.QsciStyle_TextCase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setVisible)
    ///
    /// ``` self: ?*C.QsciStyle, visible: bool ```
    pub fn SetVisible(self: ?*anyopaque, visible: bool) void {
        C.QsciStyle_SetVisible(@ptrCast(self), visible);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#visible)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Visible(self: ?*anyopaque) bool {
        return C.QsciStyle_Visible(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setChangeable)
    ///
    /// ``` self: ?*C.QsciStyle, changeable: bool ```
    pub fn SetChangeable(self: ?*anyopaque, changeable: bool) void {
        C.QsciStyle_SetChangeable(@ptrCast(self), changeable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#changeable)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Changeable(self: ?*anyopaque) bool {
        return C.QsciStyle_Changeable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#setHotspot)
    ///
    /// ``` self: ?*C.QsciStyle, hotspot: bool ```
    pub fn SetHotspot(self: ?*anyopaque, hotspot: bool) void {
        C.QsciStyle_SetHotspot(@ptrCast(self), hotspot);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#hotspot)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Hotspot(self: ?*anyopaque) bool {
        return C.QsciStyle_Hotspot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyle.html#refresh)
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn Refresh(self: ?*anyopaque) void {
        C.QsciStyle_Refresh(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QsciStyle ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QsciStyle_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qscistyle.html#types
pub const enums = struct {
    pub const TextCase = enum {
        pub const OriginalCase: i32 = 0;
        pub const UpperCase: i32 = 1;
        pub const LowerCase: i32 = 2;
    };
};
