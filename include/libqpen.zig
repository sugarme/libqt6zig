const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qpen.html
pub const qpen = struct {
    /// New constructs a new QPen object.
    ///
    ///
    pub fn New() ?*C.QPen {
        return C.QPen_new();
    }

    /// New2 constructs a new QPen object.
    ///
    /// ``` param1: qnamespace_enums.PenStyle ```
    pub fn New2(param1: i64) ?*C.QPen {
        return C.QPen_new2(@intCast(param1));
    }

    /// New3 constructs a new QPen object.
    ///
    /// ``` color: ?*C.QColor ```
    pub fn New3(color: ?*anyopaque) ?*C.QPen {
        return C.QPen_new3(@ptrCast(color));
    }

    /// New4 constructs a new QPen object.
    ///
    /// ``` brush: ?*C.QBrush, width: f64 ```
    pub fn New4(brush: ?*anyopaque, width: f64) ?*C.QPen {
        return C.QPen_new4(@ptrCast(brush), @floatCast(width));
    }

    /// New5 constructs a new QPen object.
    ///
    /// ``` pen: ?*C.QPen ```
    pub fn New5(pen: ?*anyopaque) ?*C.QPen {
        return C.QPen_new5(@ptrCast(pen));
    }

    /// New6 constructs a new QPen object.
    ///
    /// ``` brush: ?*C.QBrush, width: f64, s: qnamespace_enums.PenStyle ```
    pub fn New6(brush: ?*anyopaque, width: f64, s: i64) ?*C.QPen {
        return C.QPen_new6(@ptrCast(brush), @floatCast(width), @intCast(s));
    }

    /// New7 constructs a new QPen object.
    ///
    /// ``` brush: ?*C.QBrush, width: f64, s: qnamespace_enums.PenStyle, c: qnamespace_enums.PenCapStyle ```
    pub fn New7(brush: ?*anyopaque, width: f64, s: i64, c: i64) ?*C.QPen {
        return C.QPen_new7(@ptrCast(brush), @floatCast(width), @intCast(s), @intCast(c));
    }

    /// New8 constructs a new QPen object.
    ///
    /// ``` brush: ?*C.QBrush, width: f64, s: qnamespace_enums.PenStyle, c: qnamespace_enums.PenCapStyle, j: qnamespace_enums.PenJoinStyle ```
    pub fn New8(brush: ?*anyopaque, width: f64, s: i64, c: i64, j: i64) ?*C.QPen {
        return C.QPen_new8(@ptrCast(brush), @floatCast(width), @intCast(s), @intCast(c), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#operator=)
    ///
    /// ``` self: ?*C.QPen, pen: ?*C.QPen ```
    pub fn OperatorAssign(self: ?*anyopaque, pen: ?*anyopaque) void {
        C.QPen_OperatorAssign(@ptrCast(self), @ptrCast(pen));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#swap)
    ///
    /// ``` self: ?*C.QPen, other: ?*C.QPen ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPen_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#style)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn Style(self: ?*anyopaque) i64 {
        return C.QPen_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setStyle)
    ///
    /// ``` self: ?*C.QPen, style: qnamespace_enums.PenStyle ```
    pub fn SetStyle(self: ?*anyopaque, style: i64) void {
        C.QPen_SetStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#dashPattern)
    ///
    /// ``` self: ?*C.QPen, allocator: std.mem.Allocator ```
    pub fn DashPattern(self: ?*anyopaque, allocator: std.mem.Allocator) []f64 {
        const _arr: C.struct_libqt_list = C.QPen_DashPattern(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(f64, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]f64 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setDashPattern)
    ///
    /// ``` self: ?*C.QPen, pattern: []f64 ```
    pub fn SetDashPattern(self: ?*anyopaque, pattern: []f64) void {
        const pattern_list = C.struct_libqt_list{
            .len = pattern.len,
            .data = pattern.ptr,
        };
        C.QPen_SetDashPattern(@ptrCast(self), pattern_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#dashOffset)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn DashOffset(self: ?*anyopaque) f64 {
        return C.QPen_DashOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setDashOffset)
    ///
    /// ``` self: ?*C.QPen, doffset: f64 ```
    pub fn SetDashOffset(self: ?*anyopaque, doffset: f64) void {
        C.QPen_SetDashOffset(@ptrCast(self), @floatCast(doffset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#miterLimit)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn MiterLimit(self: ?*anyopaque) f64 {
        return C.QPen_MiterLimit(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setMiterLimit)
    ///
    /// ``` self: ?*C.QPen, limit: f64 ```
    pub fn SetMiterLimit(self: ?*anyopaque, limit: f64) void {
        C.QPen_SetMiterLimit(@ptrCast(self), @floatCast(limit));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#widthF)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn WidthF(self: ?*anyopaque) f64 {
        return C.QPen_WidthF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setWidthF)
    ///
    /// ``` self: ?*C.QPen, width: f64 ```
    pub fn SetWidthF(self: ?*anyopaque, width: f64) void {
        C.QPen_SetWidthF(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#width)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPen_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setWidth)
    ///
    /// ``` self: ?*C.QPen, width: i32 ```
    pub fn SetWidth(self: ?*anyopaque, width: i32) void {
        C.QPen_SetWidth(@ptrCast(self), @intCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#color)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn Color(self: ?*anyopaque) ?*C.QColor {
        return C.QPen_Color(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setColor)
    ///
    /// ``` self: ?*C.QPen, color: ?*C.QColor ```
    pub fn SetColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QPen_SetColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#brush)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn Brush(self: ?*anyopaque) ?*C.QBrush {
        return C.QPen_Brush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setBrush)
    ///
    /// ``` self: ?*C.QPen, brush: ?*C.QBrush ```
    pub fn SetBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QPen_SetBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#isSolid)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn IsSolid(self: ?*anyopaque) bool {
        return C.QPen_IsSolid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#capStyle)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn CapStyle(self: ?*anyopaque) i64 {
        return C.QPen_CapStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setCapStyle)
    ///
    /// ``` self: ?*C.QPen, pcs: qnamespace_enums.PenCapStyle ```
    pub fn SetCapStyle(self: ?*anyopaque, pcs: i64) void {
        C.QPen_SetCapStyle(@ptrCast(self), @intCast(pcs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#joinStyle)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn JoinStyle(self: ?*anyopaque) i64 {
        return C.QPen_JoinStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setJoinStyle)
    ///
    /// ``` self: ?*C.QPen, pcs: qnamespace_enums.PenJoinStyle ```
    pub fn SetJoinStyle(self: ?*anyopaque, pcs: i64) void {
        C.QPen_SetJoinStyle(@ptrCast(self), @intCast(pcs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#isCosmetic)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn IsCosmetic(self: ?*anyopaque) bool {
        return C.QPen_IsCosmetic(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#setCosmetic)
    ///
    /// ``` self: ?*C.QPen, cosmetic: bool ```
    pub fn SetCosmetic(self: ?*anyopaque, cosmetic: bool) void {
        C.QPen_SetCosmetic(@ptrCast(self), cosmetic);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#operator==)
    ///
    /// ``` self: ?*C.QPen, p: ?*C.QPen ```
    pub fn OperatorEqual(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPen_OperatorEqual(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#operator!=)
    ///
    /// ``` self: ?*C.QPen, p: ?*C.QPen ```
    pub fn OperatorNotEqual(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPen_OperatorNotEqual(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#operator QVariant)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QPen_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpen.html#isDetached)
    ///
    /// ``` self: ?*C.QPen ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QPen_IsDetached(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPen ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPen_Delete(@ptrCast(self));
    }
};
