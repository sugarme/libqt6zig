const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qtooltip.html
pub const qtooltip = struct {
    /// New constructs a new QToolTip object.
    ///
    /// ``` other: ?*C.QToolTip ```
    pub fn New(other: ?*anyopaque) ?*C.QToolTip {
        return C.QToolTip_new(@ptrCast(other));
    }

    /// New2 constructs a new QToolTip object and invalidates the source QToolTip object.
    ///
    /// ``` other: ?*C.QToolTip ```
    pub fn New2(other: ?*anyopaque) ?*C.QToolTip {
        return C.QToolTip_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QToolTip, other: ?*QToolTip ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QToolTip_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QToolTip, other: ?*QToolTip ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QToolTip_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8 ```
    pub fn ShowText(pos: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QToolTip_ShowText(@ptrCast(pos), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#hideText)
    ///
    ///
    pub fn HideText() void {
        C.QToolTip_HideText();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#isVisible)
    ///
    ///
    pub fn IsVisible() bool {
        return C.QToolTip_IsVisible();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#text)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn Text(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QToolTip_Text();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#palette)
    ///
    ///
    pub fn Palette() ?*C.QPalette {
        return C.QToolTip_Palette();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#setPalette)
    ///
    /// ``` palette: ?*C.QPalette ```
    pub fn SetPalette(palette: ?*anyopaque) void {
        C.QToolTip_SetPalette(@ptrCast(palette));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#font)
    ///
    ///
    pub fn Font() ?*C.QFont {
        return C.QToolTip_Font();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#setFont)
    ///
    /// ``` font: ?*C.QFont ```
    pub fn SetFont(font: ?*anyopaque) void {
        C.QToolTip_SetFont(@ptrCast(font));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8, w: ?*C.QWidget ```
    pub fn ShowText3(pos: ?*anyopaque, text: []const u8, w: ?*anyopaque) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QToolTip_ShowText3(@ptrCast(pos), text_str, @ptrCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8, w: ?*C.QWidget, rect: ?*C.QRect ```
    pub fn ShowText4(pos: ?*anyopaque, text: []const u8, w: ?*anyopaque, rect: ?*anyopaque) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QToolTip_ShowText4(@ptrCast(pos), text_str, @ptrCast(w), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtooltip.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8, w: ?*C.QWidget, rect: ?*C.QRect, msecShowTime: i32 ```
    pub fn ShowText5(pos: ?*anyopaque, text: []const u8, w: ?*anyopaque, rect: ?*anyopaque, msecShowTime: i32) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QToolTip_ShowText5(@ptrCast(pos), text_str, @ptrCast(w), @ptrCast(rect), @intCast(msecShowTime));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QToolTip ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QToolTip_Delete(@ptrCast(self));
    }
};
