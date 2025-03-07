const C = @import("qt6c");
const qfont_enums = @import("libqfont.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qfontinfo.html
pub const qfontinfo = struct {
    /// New constructs a new QFontInfo object.
    ///
    /// ``` param1: ?*C.QFont ```
    pub fn New(param1: ?*anyopaque) ?*C.QFontInfo {
        return C.QFontInfo_new(@ptrCast(param1));
    }

    /// New2 constructs a new QFontInfo object.
    ///
    /// ``` param1: ?*C.QFontInfo ```
    pub fn New2(param1: ?*anyopaque) ?*C.QFontInfo {
        return C.QFontInfo_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#operator=)
    ///
    /// ``` self: ?*C.QFontInfo, param1: ?*C.QFontInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QFontInfo_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#swap)
    ///
    /// ``` self: ?*C.QFontInfo, other: ?*C.QFontInfo ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFontInfo_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#family)
    ///
    /// ``` self: ?*C.QFontInfo, allocator: std.mem.Allocator ```
    pub fn Family(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFontInfo_Family(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#styleName)
    ///
    /// ``` self: ?*C.QFontInfo, allocator: std.mem.Allocator ```
    pub fn StyleName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFontInfo_StyleName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#pixelSize)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn PixelSize(self: ?*anyopaque) i32 {
        return C.QFontInfo_PixelSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#pointSize)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn PointSize(self: ?*anyopaque) i32 {
        return C.QFontInfo_PointSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#pointSizeF)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn PointSizeF(self: ?*anyopaque) f64 {
        return C.QFontInfo_PointSizeF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#italic)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Italic(self: ?*anyopaque) bool {
        return C.QFontInfo_Italic(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#style)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Style(self: ?*anyopaque) i64 {
        return C.QFontInfo_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#weight)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Weight(self: ?*anyopaque) i32 {
        return C.QFontInfo_Weight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#bold)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Bold(self: ?*anyopaque) bool {
        return C.QFontInfo_Bold(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#underline)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Underline(self: ?*anyopaque) bool {
        return C.QFontInfo_Underline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#overline)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn Overline(self: ?*anyopaque) bool {
        return C.QFontInfo_Overline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#strikeOut)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn StrikeOut(self: ?*anyopaque) bool {
        return C.QFontInfo_StrikeOut(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#fixedPitch)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn FixedPitch(self: ?*anyopaque) bool {
        return C.QFontInfo_FixedPitch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#styleHint)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn StyleHint(self: ?*anyopaque) i64 {
        return C.QFontInfo_StyleHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#legacyWeight)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn LegacyWeight(self: ?*anyopaque) i32 {
        return C.QFontInfo_LegacyWeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfontinfo.html#exactMatch)
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn ExactMatch(self: ?*anyopaque) bool {
        return C.QFontInfo_ExactMatch(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFontInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFontInfo_Delete(@ptrCast(self));
    }
};
