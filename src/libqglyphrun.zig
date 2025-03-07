const C = @import("qt6c");
const qglyphrun_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qglyphrun.html
pub const qglyphrun = struct {
    /// New constructs a new QGlyphRun object.
    ///
    ///
    pub fn New() ?*C.QGlyphRun {
        return C.QGlyphRun_new();
    }

    /// New2 constructs a new QGlyphRun object.
    ///
    /// ``` other: ?*C.QGlyphRun ```
    pub fn New2(other: ?*anyopaque) ?*C.QGlyphRun {
        return C.QGlyphRun_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#operator=)
    ///
    /// ``` self: ?*C.QGlyphRun, other: ?*C.QGlyphRun ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGlyphRun_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#swap)
    ///
    /// ``` self: ?*C.QGlyphRun, other: ?*C.QGlyphRun ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGlyphRun_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#rawFont)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn RawFont(self: ?*anyopaque) ?*C.QRawFont {
        return C.QGlyphRun_RawFont(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setRawFont)
    ///
    /// ``` self: ?*C.QGlyphRun, rawFont: ?*C.QRawFont ```
    pub fn SetRawFont(self: ?*anyopaque, rawFont: ?*anyopaque) void {
        C.QGlyphRun_SetRawFont(@ptrCast(self), @ptrCast(rawFont));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setRawData)
    ///
    /// ``` self: ?*C.QGlyphRun, glyphIndexArray: ?*u32, glyphPositionArray: ?*C.QPointF, size: i32 ```
    pub fn SetRawData(self: ?*anyopaque, glyphIndexArray: ?*anyopaque, glyphPositionArray: ?*anyopaque, size: i32) void {
        C.QGlyphRun_SetRawData(@ptrCast(self), @intCast(glyphIndexArray), @ptrCast(glyphPositionArray), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#glyphIndexes)
    ///
    /// ``` self: ?*C.QGlyphRun, allocator: std.mem.Allocator ```
    pub fn GlyphIndexes(self: ?*anyopaque, allocator: std.mem.Allocator) []u32 {
        const _arr: C.struct_libqt_list = C.QGlyphRun_GlyphIndexes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(u32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]u32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setGlyphIndexes)
    ///
    /// ``` self: ?*C.QGlyphRun, glyphIndexes: []u32 ```
    pub fn SetGlyphIndexes(self: ?*anyopaque, glyphIndexes: []u32) void {
        const glyphIndexes_list = C.struct_libqt_list{
            .len = glyphIndexes.len,
            .data = glyphIndexes.ptr,
        };
        C.QGlyphRun_SetGlyphIndexes(@ptrCast(self), glyphIndexes_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#positions)
    ///
    /// ``` self: ?*C.QGlyphRun, allocator: std.mem.Allocator ```
    pub fn Positions(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QPointF {
        const _arr: C.struct_libqt_list = C.QGlyphRun_Positions(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPointF, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPointF = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setPositions)
    ///
    /// ``` self: ?*C.QGlyphRun, positions: []?*C.QPointF ```
    pub fn SetPositions(self: ?*anyopaque, positions: []?*C.QPointF) void {
        const positions_list = C.struct_libqt_list{
            .len = positions.len,
            .data = @ptrCast(positions.ptr),
        };
        C.QGlyphRun_SetPositions(@ptrCast(self), positions_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#clear)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QGlyphRun_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#operator==)
    ///
    /// ``` self: ?*C.QGlyphRun, other: ?*C.QGlyphRun ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGlyphRun_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#operator!=)
    ///
    /// ``` self: ?*C.QGlyphRun, other: ?*C.QGlyphRun ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGlyphRun_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setOverline)
    ///
    /// ``` self: ?*C.QGlyphRun, overline: bool ```
    pub fn SetOverline(self: ?*anyopaque, overline: bool) void {
        C.QGlyphRun_SetOverline(@ptrCast(self), overline);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#overline)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn Overline(self: ?*anyopaque) bool {
        return C.QGlyphRun_Overline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setUnderline)
    ///
    /// ``` self: ?*C.QGlyphRun, underline: bool ```
    pub fn SetUnderline(self: ?*anyopaque, underline: bool) void {
        C.QGlyphRun_SetUnderline(@ptrCast(self), underline);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#underline)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn Underline(self: ?*anyopaque) bool {
        return C.QGlyphRun_Underline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setStrikeOut)
    ///
    /// ``` self: ?*C.QGlyphRun, strikeOut: bool ```
    pub fn SetStrikeOut(self: ?*anyopaque, strikeOut: bool) void {
        C.QGlyphRun_SetStrikeOut(@ptrCast(self), strikeOut);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#strikeOut)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn StrikeOut(self: ?*anyopaque) bool {
        return C.QGlyphRun_StrikeOut(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setRightToLeft)
    ///
    /// ``` self: ?*C.QGlyphRun, on: bool ```
    pub fn SetRightToLeft(self: ?*anyopaque, on: bool) void {
        C.QGlyphRun_SetRightToLeft(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#isRightToLeft)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn IsRightToLeft(self: ?*anyopaque) bool {
        return C.QGlyphRun_IsRightToLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setFlag)
    ///
    /// ``` self: ?*C.QGlyphRun, flag: qglyphrun_enums.GlyphRunFlag ```
    pub fn SetFlag(self: ?*anyopaque, flag: i64) void {
        C.QGlyphRun_SetFlag(@ptrCast(self), @intCast(flag));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setFlags)
    ///
    /// ``` self: ?*C.QGlyphRun, flags: i32 ```
    pub fn SetFlags(self: ?*anyopaque, flags: i64) void {
        C.QGlyphRun_SetFlags(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#flags)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QGlyphRun_Flags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setBoundingRect)
    ///
    /// ``` self: ?*C.QGlyphRun, boundingRect: ?*C.QRectF ```
    pub fn SetBoundingRect(self: ?*anyopaque, boundingRect: ?*anyopaque) void {
        C.QGlyphRun_SetBoundingRect(@ptrCast(self), @ptrCast(boundingRect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#boundingRect)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn BoundingRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QGlyphRun_BoundingRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#isEmpty)
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QGlyphRun_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qglyphrun.html#setFlag)
    ///
    /// ``` self: ?*C.QGlyphRun, flag: qglyphrun_enums.GlyphRunFlag, enabled: bool ```
    pub fn SetFlag2(self: ?*anyopaque, flag: i64, enabled: bool) void {
        C.QGlyphRun_SetFlag2(@ptrCast(self), @intCast(flag), enabled);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGlyphRun ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGlyphRun_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qglyphrun.html#types
pub const enums = struct {
    pub const GlyphRunFlag = enum {
        pub const Overline: i32 = 1;
        pub const Underline: i32 = 2;
        pub const StrikeOut: i32 = 4;
        pub const RightToLeft: i32 = 8;
        pub const SplitLigature: i32 = 16;
    };
};
