const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qfontmetrics.html
pub const qfontmetrics = struct {
    /// New constructs a new QFontMetrics object.
    ///
    /// ``` param1: ?*C.QFont ```
    pub fn New(param1: ?*anyopaque) ?*C.QFontMetrics {
        return C.QFontMetrics_new(@ptrCast(param1));
    }

    /// New2 constructs a new QFontMetrics object.
    ///
    /// ``` font: ?*C.QFont, pd: ?*C.QPaintDevice ```
    pub fn New2(font: ?*anyopaque, pd: ?*anyopaque) ?*C.QFontMetrics {
        return C.QFontMetrics_new2(@ptrCast(font), @ptrCast(pd));
    }

    /// New3 constructs a new QFontMetrics object.
    ///
    /// ``` param1: ?*C.QFontMetrics ```
    pub fn New3(param1: ?*anyopaque) ?*C.QFontMetrics {
        return C.QFontMetrics_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#operator=)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QFontMetrics ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QFontMetrics_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#swap)
    ///
    /// ``` self: ?*C.QFontMetrics, other: ?*C.QFontMetrics ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFontMetrics_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#ascent)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn Ascent(self: ?*anyopaque) i32 {
        return C.QFontMetrics_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#capHeight)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn CapHeight(self: ?*anyopaque) i32 {
        return C.QFontMetrics_CapHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#descent)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn Descent(self: ?*anyopaque) i32 {
        return C.QFontMetrics_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#height)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QFontMetrics_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#leading)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn Leading(self: ?*anyopaque) i32 {
        return C.QFontMetrics_Leading(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#lineSpacing)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn LineSpacing(self: ?*anyopaque) i32 {
        return C.QFontMetrics_LineSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#minLeftBearing)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn MinLeftBearing(self: ?*anyopaque) i32 {
        return C.QFontMetrics_MinLeftBearing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#minRightBearing)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn MinRightBearing(self: ?*anyopaque) i32 {
        return C.QFontMetrics_MinRightBearing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#maxWidth)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn MaxWidth(self: ?*anyopaque) i32 {
        return C.QFontMetrics_MaxWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#xHeight)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn XHeight(self: ?*anyopaque) i32 {
        return C.QFontMetrics_XHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#averageCharWidth)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn AverageCharWidth(self: ?*anyopaque) i32 {
        return C.QFontMetrics_AverageCharWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#inFont)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QChar ```
    pub fn InFont(self: ?*anyopaque, param1: ?*C.QChar) bool {
        return C.QFontMetrics_InFont(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#inFontUcs4)
    ///
    /// ``` self: ?*C.QFontMetrics, ucs4: u32 ```
    pub fn InFontUcs4(self: ?*anyopaque, ucs4: u32) bool {
        return C.QFontMetrics_InFontUcs4(@ptrCast(self), @intCast(ucs4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#leftBearing)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QChar ```
    pub fn LeftBearing(self: ?*anyopaque, param1: ?*C.QChar) i32 {
        return C.QFontMetrics_LeftBearing(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#rightBearing)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QChar ```
    pub fn RightBearing(self: ?*anyopaque, param1: ?*C.QChar) i32 {
        return C.QFontMetrics_RightBearing(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: []const u8 ```
    pub fn HorizontalAdvance(self: ?*anyopaque, param1: []const u8) i32 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        return C.QFontMetrics_HorizontalAdvance(@ptrCast(self), param1_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: []const u8, textOption: ?*C.QTextOption ```
    pub fn HorizontalAdvance2(self: ?*anyopaque, param1: []const u8, textOption: ?*anyopaque) i32 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        return C.QFontMetrics_HorizontalAdvance2(@ptrCast(self), param1_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QChar ```
    pub fn HorizontalAdvanceWithQChar(self: ?*anyopaque, param1: ?*C.QChar) i32 {
        return C.QFontMetrics_HorizontalAdvanceWithQChar(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: ?*C.QChar ```
    pub fn BoundingRect(self: ?*anyopaque, param1: ?*C.QChar) ?*C.QRect {
        return C.QFontMetrics_BoundingRect(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8 ```
    pub fn BoundingRectWithText(self: ?*anyopaque, text: []const u8) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRectWithText(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8, textOption: ?*C.QTextOption ```
    pub fn BoundingRect2(self: ?*anyopaque, text: []const u8, textOption: ?*anyopaque) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect2(@ptrCast(self), text_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, r: ?*C.QRect, flags: i32, text: []const u8 ```
    pub fn BoundingRect3(self: ?*anyopaque, r: ?*anyopaque, flags: i32, text: []const u8) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect3(@ptrCast(self), @ptrCast(r), @intCast(flags), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8 ```
    pub fn BoundingRect4(self: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect4(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(flags), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#size)
    ///
    /// ``` self: ?*C.QFontMetrics, flags: i32, str: []const u8 ```
    pub fn Size(self: ?*anyopaque, flags: i32, str: []const u8) ?*C.QSize {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetrics_Size(@ptrCast(self), @intCast(flags), str_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#tightBoundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8 ```
    pub fn TightBoundingRect(self: ?*anyopaque, text: []const u8) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_TightBoundingRect(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#tightBoundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8, textOption: ?*C.QTextOption ```
    pub fn TightBoundingRect2(self: ?*anyopaque, text: []const u8, textOption: ?*anyopaque) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_TightBoundingRect2(@ptrCast(self), text_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#elidedText)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8, mode: qnamespace_enums.TextElideMode, width: i32, allocator: std.mem.Allocator ```
    pub fn ElidedText(self: ?*anyopaque, text: []const u8, mode: i64, width: i32, allocator: std.mem.Allocator) []const u8 {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        const _str = C.QFontMetrics_ElidedText(@ptrCast(self), text_str, @intCast(mode), @intCast(width));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#underlinePos)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn UnderlinePos(self: ?*anyopaque) i32 {
        return C.QFontMetrics_UnderlinePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#overlinePos)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn OverlinePos(self: ?*anyopaque) i32 {
        return C.QFontMetrics_OverlinePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#strikeOutPos)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn StrikeOutPos(self: ?*anyopaque) i32 {
        return C.QFontMetrics_StrikeOutPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#lineWidth)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn LineWidth(self: ?*anyopaque) i32 {
        return C.QFontMetrics_LineWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#fontDpi)
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn FontDpi(self: ?*anyopaque) f64 {
        return C.QFontMetrics_FontDpi(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#operator==)
    ///
    /// ``` self: ?*C.QFontMetrics, other: ?*C.QFontMetrics ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFontMetrics_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#operator!=)
    ///
    /// ``` self: ?*C.QFontMetrics, other: ?*C.QFontMetrics ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFontMetrics_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetrics, param1: []const u8, lenVal: i32 ```
    pub fn HorizontalAdvance22(self: ?*anyopaque, param1: []const u8, lenVal: i32) i32 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        return C.QFontMetrics_HorizontalAdvance22(@ptrCast(self), param1_str, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, r: ?*C.QRect, flags: i32, text: []const u8, tabstops: i32 ```
    pub fn BoundingRect42(self: ?*anyopaque, r: ?*anyopaque, flags: i32, text: []const u8, tabstops: i32) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect42(@ptrCast(self), @ptrCast(r), @intCast(flags), text_str, @intCast(tabstops));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, r: ?*C.QRect, flags: i32, text: []const u8, tabstops: i32, tabarray: ?*i32 ```
    pub fn BoundingRect5(self: ?*anyopaque, r: ?*anyopaque, flags: i32, text: []const u8, tabstops: i32, tabarray: ?*anyopaque) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect5(@ptrCast(self), @ptrCast(r), @intCast(flags), text_str, @intCast(tabstops), @intCast(tabarray));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8, tabstops: i32 ```
    pub fn BoundingRect7(self: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8, tabstops: i32) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect7(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(flags), text_str, @intCast(tabstops));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetrics, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8, tabstops: i32, tabarray: ?*i32 ```
    pub fn BoundingRect8(self: ?*anyopaque, x: i32, y: i32, w: i32, h: i32, flags: i32, text: []const u8, tabstops: i32, tabarray: ?*anyopaque) ?*C.QRect {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetrics_BoundingRect8(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(flags), text_str, @intCast(tabstops), @intCast(tabarray));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#size)
    ///
    /// ``` self: ?*C.QFontMetrics, flags: i32, str: []const u8, tabstops: i32 ```
    pub fn Size3(self: ?*anyopaque, flags: i32, str: []const u8, tabstops: i32) ?*C.QSize {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetrics_Size3(@ptrCast(self), @intCast(flags), str_str, @intCast(tabstops));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#size)
    ///
    /// ``` self: ?*C.QFontMetrics, flags: i32, str: []const u8, tabstops: i32, tabarray: ?*i32 ```
    pub fn Size4(self: ?*anyopaque, flags: i32, str: []const u8, tabstops: i32, tabarray: ?*anyopaque) ?*C.QSize {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetrics_Size4(@ptrCast(self), @intCast(flags), str_str, @intCast(tabstops), @intCast(tabarray));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetrics.html#elidedText)
    ///
    /// ``` self: ?*C.QFontMetrics, text: []const u8, mode: qnamespace_enums.TextElideMode, width: i32, flags: i32, allocator: std.mem.Allocator ```
    pub fn ElidedText4(self: ?*anyopaque, text: []const u8, mode: i64, width: i32, flags: i32, allocator: std.mem.Allocator) []const u8 {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        const _str = C.QFontMetrics_ElidedText4(@ptrCast(self), text_str, @intCast(mode), @intCast(width), @intCast(flags));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFontMetrics ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFontMetrics_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qfontmetricsf.html
pub const qfontmetricsf = struct {
    /// New constructs a new QFontMetricsF object.
    ///
    /// ``` font: ?*C.QFont ```
    pub fn New(font: ?*anyopaque) ?*C.QFontMetricsF {
        return C.QFontMetricsF_new(@ptrCast(font));
    }

    /// New2 constructs a new QFontMetricsF object.
    ///
    /// ``` font: ?*C.QFont, pd: ?*C.QPaintDevice ```
    pub fn New2(font: ?*anyopaque, pd: ?*anyopaque) ?*C.QFontMetricsF {
        return C.QFontMetricsF_new2(@ptrCast(font), @ptrCast(pd));
    }

    /// New3 constructs a new QFontMetricsF object.
    ///
    /// ``` param1: ?*C.QFontMetrics ```
    pub fn New3(param1: ?*anyopaque) ?*C.QFontMetricsF {
        return C.QFontMetricsF_new3(@ptrCast(param1));
    }

    /// New4 constructs a new QFontMetricsF object.
    ///
    /// ``` param1: ?*C.QFontMetricsF ```
    pub fn New4(param1: ?*anyopaque) ?*C.QFontMetricsF {
        return C.QFontMetricsF_new4(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#operator=)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QFontMetricsF ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QFontMetricsF_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#operator=)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QFontMetrics ```
    pub fn OperatorAssignWithQFontMetrics(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QFontMetricsF_OperatorAssignWithQFontMetrics(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#swap)
    ///
    /// ``` self: ?*C.QFontMetricsF, other: ?*C.QFontMetricsF ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFontMetricsF_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#ascent)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn Ascent(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#capHeight)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn CapHeight(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_CapHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#descent)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn Descent(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#height)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#leading)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn Leading(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_Leading(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#lineSpacing)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn LineSpacing(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_LineSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#minLeftBearing)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn MinLeftBearing(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_MinLeftBearing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#minRightBearing)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn MinRightBearing(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_MinRightBearing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#maxWidth)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn MaxWidth(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_MaxWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#xHeight)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn XHeight(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_XHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#averageCharWidth)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn AverageCharWidth(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_AverageCharWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#inFont)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QChar ```
    pub fn InFont(self: ?*anyopaque, param1: ?*C.QChar) bool {
        return C.QFontMetricsF_InFont(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#inFontUcs4)
    ///
    /// ``` self: ?*C.QFontMetricsF, ucs4: u32 ```
    pub fn InFontUcs4(self: ?*anyopaque, ucs4: u32) bool {
        return C.QFontMetricsF_InFontUcs4(@ptrCast(self), @intCast(ucs4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#leftBearing)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QChar ```
    pub fn LeftBearing(self: ?*anyopaque, param1: ?*C.QChar) f64 {
        return C.QFontMetricsF_LeftBearing(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#rightBearing)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QChar ```
    pub fn RightBearing(self: ?*anyopaque, param1: ?*C.QChar) f64 {
        return C.QFontMetricsF_RightBearing(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetricsF, stringVal: []const u8 ```
    pub fn HorizontalAdvance(self: ?*anyopaque, stringVal: []const u8) f64 {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_HorizontalAdvance(@ptrCast(self), stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QChar ```
    pub fn HorizontalAdvanceWithQChar(self: ?*anyopaque, param1: ?*C.QChar) f64 {
        return C.QFontMetricsF_HorizontalAdvanceWithQChar(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetricsF, stringVal: []const u8, textOption: ?*C.QTextOption ```
    pub fn HorizontalAdvance2(self: ?*anyopaque, stringVal: []const u8, textOption: ?*anyopaque) f64 {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_HorizontalAdvance2(@ptrCast(self), stringVal_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, stringVal: []const u8 ```
    pub fn BoundingRect(self: ?*anyopaque, stringVal: []const u8) ?*C.QRectF {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_BoundingRect(@ptrCast(self), stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, text: []const u8, textOption: ?*C.QTextOption ```
    pub fn BoundingRect2(self: ?*anyopaque, text: []const u8, textOption: ?*anyopaque) ?*C.QRectF {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetricsF_BoundingRect2(@ptrCast(self), text_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, param1: ?*C.QChar ```
    pub fn BoundingRectWithQChar(self: ?*anyopaque, param1: ?*C.QChar) ?*C.QRectF {
        return C.QFontMetricsF_BoundingRectWithQChar(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, r: ?*C.QRectF, flags: i32, stringVal: []const u8 ```
    pub fn BoundingRect3(self: ?*anyopaque, r: ?*anyopaque, flags: i32, stringVal: []const u8) ?*C.QRectF {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_BoundingRect3(@ptrCast(self), @ptrCast(r), @intCast(flags), stringVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#size)
    ///
    /// ``` self: ?*C.QFontMetricsF, flags: i32, str: []const u8 ```
    pub fn Size(self: ?*anyopaque, flags: i32, str: []const u8) ?*C.QSizeF {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetricsF_Size(@ptrCast(self), @intCast(flags), str_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#tightBoundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, text: []const u8 ```
    pub fn TightBoundingRect(self: ?*anyopaque, text: []const u8) ?*C.QRectF {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetricsF_TightBoundingRect(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#tightBoundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, text: []const u8, textOption: ?*C.QTextOption ```
    pub fn TightBoundingRect2(self: ?*anyopaque, text: []const u8, textOption: ?*anyopaque) ?*C.QRectF {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        return C.QFontMetricsF_TightBoundingRect2(@ptrCast(self), text_str, @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#elidedText)
    ///
    /// ``` self: ?*C.QFontMetricsF, text: []const u8, mode: qnamespace_enums.TextElideMode, width: f64, allocator: std.mem.Allocator ```
    pub fn ElidedText(self: ?*anyopaque, text: []const u8, mode: i64, width: f64, allocator: std.mem.Allocator) []const u8 {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        const _str = C.QFontMetricsF_ElidedText(@ptrCast(self), text_str, @intCast(mode), @floatCast(width));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#underlinePos)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn UnderlinePos(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_UnderlinePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#overlinePos)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn OverlinePos(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_OverlinePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#strikeOutPos)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn StrikeOutPos(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_StrikeOutPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#lineWidth)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn LineWidth(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_LineWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#fontDpi)
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn FontDpi(self: ?*anyopaque) f64 {
        return C.QFontMetricsF_FontDpi(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#operator==)
    ///
    /// ``` self: ?*C.QFontMetricsF, other: ?*C.QFontMetricsF ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFontMetricsF_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#operator!=)
    ///
    /// ``` self: ?*C.QFontMetricsF, other: ?*C.QFontMetricsF ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFontMetricsF_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#horizontalAdvance)
    ///
    /// ``` self: ?*C.QFontMetricsF, stringVal: []const u8, length: i32 ```
    pub fn HorizontalAdvance22(self: ?*anyopaque, stringVal: []const u8, length: i32) f64 {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_HorizontalAdvance22(@ptrCast(self), stringVal_str, @intCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, r: ?*C.QRectF, flags: i32, stringVal: []const u8, tabstops: i32 ```
    pub fn BoundingRect4(self: ?*anyopaque, r: ?*anyopaque, flags: i32, stringVal: []const u8, tabstops: i32) ?*C.QRectF {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_BoundingRect4(@ptrCast(self), @ptrCast(r), @intCast(flags), stringVal_str, @intCast(tabstops));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#boundingRect)
    ///
    /// ``` self: ?*C.QFontMetricsF, r: ?*C.QRectF, flags: i32, stringVal: []const u8, tabstops: i32, tabarray: ?*i32 ```
    pub fn BoundingRect5(self: ?*anyopaque, r: ?*anyopaque, flags: i32, stringVal: []const u8, tabstops: i32, tabarray: ?*anyopaque) ?*C.QRectF {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QFontMetricsF_BoundingRect5(@ptrCast(self), @ptrCast(r), @intCast(flags), stringVal_str, @intCast(tabstops), @intCast(tabarray));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#size)
    ///
    /// ``` self: ?*C.QFontMetricsF, flags: i32, str: []const u8, tabstops: i32 ```
    pub fn Size3(self: ?*anyopaque, flags: i32, str: []const u8, tabstops: i32) ?*C.QSizeF {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetricsF_Size3(@ptrCast(self), @intCast(flags), str_str, @intCast(tabstops));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#size)
    ///
    /// ``` self: ?*C.QFontMetricsF, flags: i32, str: []const u8, tabstops: i32, tabarray: ?*i32 ```
    pub fn Size4(self: ?*anyopaque, flags: i32, str: []const u8, tabstops: i32, tabarray: ?*anyopaque) ?*C.QSizeF {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QFontMetricsF_Size4(@ptrCast(self), @intCast(flags), str_str, @intCast(tabstops), @intCast(tabarray));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontmetricsf.html#elidedText)
    ///
    /// ``` self: ?*C.QFontMetricsF, text: []const u8, mode: qnamespace_enums.TextElideMode, width: f64, flags: i32, allocator: std.mem.Allocator ```
    pub fn ElidedText4(self: ?*anyopaque, text: []const u8, mode: i64, width: f64, flags: i32, allocator: std.mem.Allocator) []const u8 {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        const _str = C.QFontMetricsF_ElidedText4(@ptrCast(self), text_str, @intCast(mode), @floatCast(width), @intCast(flags));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFontMetricsF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFontMetricsF_Delete(@ptrCast(self));
    }
};
