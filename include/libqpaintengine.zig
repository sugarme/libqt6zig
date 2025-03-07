const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpaintengine_enums = enums;
const qpainter_enums = @import("libqpainter.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextitem.html
pub const qtextitem = struct {
    /// New constructs a new QTextItem object.
    ///
    /// ``` other: ?*C.QTextItem ```
    pub fn New(other: ?*anyopaque) ?*C.QTextItem {
        return C.QTextItem_new(@ptrCast(other));
    }

    /// New2 constructs a new QTextItem object and invalidates the source QTextItem object.
    ///
    /// ``` other: ?*C.QTextItem ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextItem {
        return C.QTextItem_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTextItem, other: ?*QTextItem ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextItem_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTextItem, other: ?*QTextItem ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextItem_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#descent)
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn Descent(self: ?*anyopaque) f64 {
        return C.QTextItem_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#ascent)
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn Ascent(self: ?*anyopaque) f64 {
        return C.QTextItem_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#width)
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QTextItem_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#renderFlags)
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn RenderFlags(self: ?*anyopaque) i64 {
        return C.QTextItem_RenderFlags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#text)
    ///
    /// ``` self: ?*C.QTextItem, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextItem_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextitem.html#font)
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QTextItem_Font(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpaintengine.html
pub const qpaintengine = struct {
    /// New constructs a new QPaintEngine object.
    ///
    ///
    pub fn New() ?*C.QPaintEngine {
        return C.QPaintEngine_new();
    }

    /// New2 constructs a new QPaintEngine object.
    ///
    /// ``` features: i32 ```
    pub fn New2(features: i64) ?*C.QPaintEngine {
        return C.QPaintEngine_new2(@intCast(features));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#isActive)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn IsActive(self: ?*anyopaque) bool {
        return C.QPaintEngine_IsActive(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#setActive)
    ///
    /// ``` self: ?*C.QPaintEngine, newState: bool ```
    pub fn SetActive(self: ?*anyopaque, newState: bool) void {
        C.QPaintEngine_SetActive(@ptrCast(self), newState);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#begin)
    ///
    /// ``` self: ?*C.QPaintEngine, pdev: ?*C.QPaintDevice ```
    pub fn Begin(self: ?*anyopaque, pdev: ?*anyopaque) bool {
        return C.QPaintEngine_Begin(@ptrCast(self), @ptrCast(pdev));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPaintDevice) callconv(.c) bool ```
    pub fn OnBegin(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QPaintEngine_OnBegin(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, pdev: ?*C.QPaintDevice ```
    pub fn QBaseBegin(self: ?*anyopaque, pdev: ?*anyopaque) bool {
        return C.QPaintEngine_QBaseBegin(@ptrCast(self), @ptrCast(pdev));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#end)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn End(self: ?*anyopaque) bool {
        return C.QPaintEngine_End(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn () callconv(.c) bool ```
    pub fn OnEnd(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QPaintEngine_OnEnd(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn QBaseEnd(self: ?*anyopaque) bool {
        return C.QPaintEngine_QBaseEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#updateState)
    ///
    /// ``` self: ?*C.QPaintEngine, state: ?*C.QPaintEngineState ```
    pub fn UpdateState(self: ?*anyopaque, state: ?*anyopaque) void {
        C.QPaintEngine_UpdateState(@ptrCast(self), @ptrCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPaintEngineState) callconv(.c) void ```
    pub fn OnUpdateState(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnUpdateState(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, state: ?*C.QPaintEngineState ```
    pub fn QBaseUpdateState(self: ?*anyopaque, state: ?*anyopaque) void {
        C.QPaintEngine_QBaseUpdateState(@ptrCast(self), @ptrCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawRects)
    ///
    /// ``` self: ?*C.QPaintEngine, rects: ?*C.QRect, rectCount: i32 ```
    pub fn DrawRects(self: ?*anyopaque, rects: ?*anyopaque, rectCount: i32) void {
        C.QPaintEngine_DrawRects(@ptrCast(self), @ptrCast(rects), @intCast(rectCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRect, i32) callconv(.c) void ```
    pub fn OnDrawRects(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawRects(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, rects: ?*C.QRect, rectCount: i32 ```
    pub fn QBaseDrawRects(self: ?*anyopaque, rects: ?*anyopaque, rectCount: i32) void {
        C.QPaintEngine_QBaseDrawRects(@ptrCast(self), @ptrCast(rects), @intCast(rectCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawRects)
    ///
    /// ``` self: ?*C.QPaintEngine, rects: ?*C.QRectF, rectCount: i32 ```
    pub fn DrawRects2(self: ?*anyopaque, rects: ?*anyopaque, rectCount: i32) void {
        C.QPaintEngine_DrawRects2(@ptrCast(self), @ptrCast(rects), @intCast(rectCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRectF, i32) callconv(.c) void ```
    pub fn OnDrawRects2(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawRects2(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, rects: ?*C.QRectF, rectCount: i32 ```
    pub fn QBaseDrawRects2(self: ?*anyopaque, rects: ?*anyopaque, rectCount: i32) void {
        C.QPaintEngine_QBaseDrawRects2(@ptrCast(self), @ptrCast(rects), @intCast(rectCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawLines)
    ///
    /// ``` self: ?*C.QPaintEngine, lines: ?*C.QLine, lineCount: i32 ```
    pub fn DrawLines(self: ?*anyopaque, lines: ?*anyopaque, lineCount: i32) void {
        C.QPaintEngine_DrawLines(@ptrCast(self), @ptrCast(lines), @intCast(lineCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QLine, i32) callconv(.c) void ```
    pub fn OnDrawLines(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawLines(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, lines: ?*C.QLine, lineCount: i32 ```
    pub fn QBaseDrawLines(self: ?*anyopaque, lines: ?*anyopaque, lineCount: i32) void {
        C.QPaintEngine_QBaseDrawLines(@ptrCast(self), @ptrCast(lines), @intCast(lineCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawLines)
    ///
    /// ``` self: ?*C.QPaintEngine, lines: ?*C.QLineF, lineCount: i32 ```
    pub fn DrawLines2(self: ?*anyopaque, lines: ?*anyopaque, lineCount: i32) void {
        C.QPaintEngine_DrawLines2(@ptrCast(self), @ptrCast(lines), @intCast(lineCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QLineF, i32) callconv(.c) void ```
    pub fn OnDrawLines2(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawLines2(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, lines: ?*C.QLineF, lineCount: i32 ```
    pub fn QBaseDrawLines2(self: ?*anyopaque, lines: ?*anyopaque, lineCount: i32) void {
        C.QPaintEngine_QBaseDrawLines2(@ptrCast(self), @ptrCast(lines), @intCast(lineCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawEllipse)
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF ```
    pub fn DrawEllipse(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QPaintEngine_DrawEllipse(@ptrCast(self), @ptrCast(r));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRectF) callconv(.c) void ```
    pub fn OnDrawEllipse(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawEllipse(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF ```
    pub fn QBaseDrawEllipse(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawEllipse(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawEllipse)
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRect ```
    pub fn DrawEllipseWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QPaintEngine_DrawEllipseWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRect) callconv(.c) void ```
    pub fn OnDrawEllipseWithQRect(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawEllipseWithQRect(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRect ```
    pub fn QBaseDrawEllipseWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawEllipseWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPath)
    ///
    /// ``` self: ?*C.QPaintEngine, path: ?*C.QPainterPath ```
    pub fn DrawPath(self: ?*anyopaque, path: ?*anyopaque) void {
        C.QPaintEngine_DrawPath(@ptrCast(self), @ptrCast(path));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPainterPath) callconv(.c) void ```
    pub fn OnDrawPath(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPath(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, path: ?*C.QPainterPath ```
    pub fn QBaseDrawPath(self: ?*anyopaque, path: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawPath(@ptrCast(self), @ptrCast(path));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPoints)
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPointF, pointCount: i32 ```
    pub fn DrawPoints(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32) void {
        C.QPaintEngine_DrawPoints(@ptrCast(self), @ptrCast(points), @intCast(pointCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPointF, i32) callconv(.c) void ```
    pub fn OnDrawPoints(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPoints(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPointF, pointCount: i32 ```
    pub fn QBaseDrawPoints(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32) void {
        C.QPaintEngine_QBaseDrawPoints(@ptrCast(self), @ptrCast(points), @intCast(pointCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPoints)
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPoint, pointCount: i32 ```
    pub fn DrawPoints2(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32) void {
        C.QPaintEngine_DrawPoints2(@ptrCast(self), @ptrCast(points), @intCast(pointCount));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPoint, i32) callconv(.c) void ```
    pub fn OnDrawPoints2(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPoints2(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPoint, pointCount: i32 ```
    pub fn QBaseDrawPoints2(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32) void {
        C.QPaintEngine_QBaseDrawPoints2(@ptrCast(self), @ptrCast(points), @intCast(pointCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPolygon)
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPointF, pointCount: i32, mode: qpaintengine_enums.PolygonDrawMode ```
    pub fn DrawPolygon(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32, mode: i64) void {
        C.QPaintEngine_DrawPolygon(@ptrCast(self), @ptrCast(points), @intCast(pointCount), @intCast(mode));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPointF, i32, qpaintengine_enums.PolygonDrawMode) callconv(.c) void ```
    pub fn OnDrawPolygon(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32, i64) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPolygon(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPointF, pointCount: i32, mode: qpaintengine_enums.PolygonDrawMode ```
    pub fn QBaseDrawPolygon(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32, mode: i64) void {
        C.QPaintEngine_QBaseDrawPolygon(@ptrCast(self), @ptrCast(points), @intCast(pointCount), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPolygon)
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPoint, pointCount: i32, mode: qpaintengine_enums.PolygonDrawMode ```
    pub fn DrawPolygon2(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32, mode: i64) void {
        C.QPaintEngine_DrawPolygon2(@ptrCast(self), @ptrCast(points), @intCast(pointCount), @intCast(mode));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPoint, i32, qpaintengine_enums.PolygonDrawMode) callconv(.c) void ```
    pub fn OnDrawPolygon2(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32, i64) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPolygon2(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, points: ?*C.QPoint, pointCount: i32, mode: qpaintengine_enums.PolygonDrawMode ```
    pub fn QBaseDrawPolygon2(self: ?*anyopaque, points: ?*anyopaque, pointCount: i32, mode: i64) void {
        C.QPaintEngine_QBaseDrawPolygon2(@ptrCast(self), @ptrCast(points), @intCast(pointCount), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawPixmap)
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pm: ?*C.QPixmap, sr: ?*C.QRectF ```
    pub fn DrawPixmap(self: ?*anyopaque, r: ?*anyopaque, pm: ?*anyopaque, sr: ?*anyopaque) void {
        C.QPaintEngine_DrawPixmap(@ptrCast(self), @ptrCast(r), @ptrCast(pm), @ptrCast(sr));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRectF, ?*C.QPixmap, ?*C.QRectF) callconv(.c) void ```
    pub fn OnDrawPixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawPixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pm: ?*C.QPixmap, sr: ?*C.QRectF ```
    pub fn QBaseDrawPixmap(self: ?*anyopaque, r: ?*anyopaque, pm: ?*anyopaque, sr: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawPixmap(@ptrCast(self), @ptrCast(r), @ptrCast(pm), @ptrCast(sr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawTextItem)
    ///
    /// ``` self: ?*C.QPaintEngine, p: ?*C.QPointF, textItem: ?*C.QTextItem ```
    pub fn DrawTextItem(self: ?*anyopaque, p: ?*anyopaque, textItem: ?*anyopaque) void {
        C.QPaintEngine_DrawTextItem(@ptrCast(self), @ptrCast(p), @ptrCast(textItem));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QPointF, ?*C.QTextItem) callconv(.c) void ```
    pub fn OnDrawTextItem(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawTextItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, p: ?*C.QPointF, textItem: ?*C.QTextItem ```
    pub fn QBaseDrawTextItem(self: ?*anyopaque, p: ?*anyopaque, textItem: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawTextItem(@ptrCast(self), @ptrCast(p), @ptrCast(textItem));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawTiledPixmap)
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pixmap: ?*C.QPixmap, s: ?*C.QPointF ```
    pub fn DrawTiledPixmap(self: ?*anyopaque, r: ?*anyopaque, pixmap: ?*anyopaque, s: ?*anyopaque) void {
        C.QPaintEngine_DrawTiledPixmap(@ptrCast(self), @ptrCast(r), @ptrCast(pixmap), @ptrCast(s));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRectF, ?*C.QPixmap, ?*C.QPointF) callconv(.c) void ```
    pub fn OnDrawTiledPixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPaintEngine_OnDrawTiledPixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pixmap: ?*C.QPixmap, s: ?*C.QPointF ```
    pub fn QBaseDrawTiledPixmap(self: ?*anyopaque, r: ?*anyopaque, pixmap: ?*anyopaque, s: ?*anyopaque) void {
        C.QPaintEngine_QBaseDrawTiledPixmap(@ptrCast(self), @ptrCast(r), @ptrCast(pixmap), @ptrCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#drawImage)
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pm: ?*C.QImage, sr: ?*C.QRectF, flags: i32 ```
    pub fn DrawImage(self: ?*anyopaque, r: ?*anyopaque, pm: ?*anyopaque, sr: ?*anyopaque, flags: i64) void {
        C.QPaintEngine_DrawImage(@ptrCast(self), @ptrCast(r), @ptrCast(pm), @ptrCast(sr), @intCast(flags));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QRectF, ?*C.QImage, ?*C.QRectF, i32) callconv(.c) void ```
    pub fn OnDrawImage(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque, i64) callconv(.c) void) void {
        C.QPaintEngine_OnDrawImage(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, r: ?*C.QRectF, pm: ?*C.QImage, sr: ?*C.QRectF, flags: i32 ```
    pub fn QBaseDrawImage(self: ?*anyopaque, r: ?*anyopaque, pm: ?*anyopaque, sr: ?*anyopaque, flags: i64) void {
        C.QPaintEngine_QBaseDrawImage(@ptrCast(self), @ptrCast(r), @ptrCast(pm), @ptrCast(sr), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#setPaintDevice)
    ///
    /// ``` self: ?*C.QPaintEngine, device: ?*C.QPaintDevice ```
    pub fn SetPaintDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QPaintEngine_SetPaintDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#paintDevice)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn PaintDevice(self: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPaintEngine_PaintDevice(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#setSystemClip)
    ///
    /// ``` self: ?*C.QPaintEngine, baseClip: ?*C.QRegion ```
    pub fn SetSystemClip(self: ?*anyopaque, baseClip: ?*anyopaque) void {
        C.QPaintEngine_SetSystemClip(@ptrCast(self), @ptrCast(baseClip));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#systemClip)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn SystemClip(self: ?*anyopaque) ?*C.QRegion {
        return C.QPaintEngine_SystemClip(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#setSystemRect)
    ///
    /// ``` self: ?*C.QPaintEngine, rect: ?*C.QRect ```
    pub fn SetSystemRect(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QPaintEngine_SetSystemRect(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#systemRect)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn SystemRect(self: ?*anyopaque) ?*C.QRect {
        return C.QPaintEngine_SystemRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#coordinateOffset)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn CoordinateOffset(self: ?*anyopaque) ?*C.QPoint {
        return C.QPaintEngine_CoordinateOffset(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn () callconv(.c) ?*C.QPoint ```
    pub fn OnCoordinateOffset(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPoint) void {
        C.QPaintEngine_OnCoordinateOffset(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn QBaseCoordinateOffset(self: ?*anyopaque) ?*C.QPoint {
        return C.QPaintEngine_QBaseCoordinateOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#type)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QPaintEngine_Type(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn () callconv(.c) i64 ```
    pub fn OnType(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QPaintEngine_OnType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn QBaseType(self: ?*anyopaque) i64 {
        return C.QPaintEngine_QBaseType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#fix_neg_rect)
    ///
    /// ``` self: ?*C.QPaintEngine, x: ?*i32, y: ?*i32, w: ?*i32, h: ?*i32 ```
    pub fn FixNegRect(self: ?*anyopaque, x: ?*anyopaque, y: ?*anyopaque, w: ?*anyopaque, h: ?*anyopaque) void {
        C.QPaintEngine_FixNegRect(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#testDirty)
    ///
    /// ``` self: ?*C.QPaintEngine, df: i32 ```
    pub fn TestDirty(self: ?*anyopaque, df: i64) bool {
        return C.QPaintEngine_TestDirty(@ptrCast(self), @intCast(df));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#setDirty)
    ///
    /// ``` self: ?*C.QPaintEngine, df: i32 ```
    pub fn SetDirty(self: ?*anyopaque, df: i64) void {
        C.QPaintEngine_SetDirty(@ptrCast(self), @intCast(df));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#clearDirty)
    ///
    /// ``` self: ?*C.QPaintEngine, df: i32 ```
    pub fn ClearDirty(self: ?*anyopaque, df: i64) void {
        C.QPaintEngine_ClearDirty(@ptrCast(self), @intCast(df));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#hasFeature)
    ///
    /// ``` self: ?*C.QPaintEngine, feature: i32 ```
    pub fn HasFeature(self: ?*anyopaque, feature: i64) bool {
        return C.QPaintEngine_HasFeature(@ptrCast(self), @intCast(feature));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#painter)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn Painter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPaintEngine_Painter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#syncState)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn SyncState(self: ?*anyopaque) void {
        C.QPaintEngine_SyncState(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#isExtended)
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn IsExtended(self: ?*anyopaque) bool {
        return C.QPaintEngine_IsExtended(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#createPixmap)
    ///
    /// ``` self: ?*C.QPaintEngine, size: ?*C.QSize ```
    pub fn CreatePixmap(self: ?*anyopaque, size: ?*C.QSize) ?*C.QPixmap {
        return C.QPaintEngine_CreatePixmap(@ptrCast(self), @ptrCast(size));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QSize) callconv(.c) ?*C.QPixmap ```
    pub fn OnCreatePixmap(self: ?*anyopaque, slot: fn (?*anyopaque, ?*C.QSize) callconv(.c) ?*C.QPixmap) void {
        C.QPaintEngine_OnCreatePixmap(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, size: ?*C.QSize ```
    pub fn QBaseCreatePixmap(self: ?*anyopaque, size: ?*C.QSize) ?*C.QPixmap {
        return C.QPaintEngine_QBaseCreatePixmap(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintengine.html#createPixmapFromImage)
    ///
    /// ``` self: ?*C.QPaintEngine, image: ?*C.QImage, flags: i32 ```
    pub fn CreatePixmapFromImage(self: ?*anyopaque, image: ?*C.QImage, flags: i64) ?*C.QPixmap {
        return C.QPaintEngine_CreatePixmapFromImage(@ptrCast(self), @ptrCast(image), @intCast(flags));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEngine, slot: fn (?*C.QPaintEngine, ?*C.QImage, i32) callconv(.c) ?*C.QPixmap ```
    pub fn OnCreatePixmapFromImage(self: ?*anyopaque, slot: fn (?*anyopaque, ?*C.QImage, i64) callconv(.c) ?*C.QPixmap) void {
        C.QPaintEngine_OnCreatePixmapFromImage(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEngine, image: ?*C.QImage, flags: i32 ```
    pub fn QBaseCreatePixmapFromImage(self: ?*anyopaque, image: ?*C.QImage, flags: i64) ?*C.QPixmap {
        return C.QPaintEngine_QBaseCreatePixmapFromImage(@ptrCast(self), @ptrCast(image), @intCast(flags));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPaintEngine ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPaintEngine_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpaintenginestate.html
pub const qpaintenginestate = struct {
    /// New constructs a new QPaintEngineState object.
    ///
    /// ``` other: ?*C.QPaintEngineState ```
    pub fn New(other: ?*anyopaque) ?*C.QPaintEngineState {
        return C.QPaintEngineState_new(@ptrCast(other));
    }

    /// New2 constructs a new QPaintEngineState object and invalidates the source QPaintEngineState object.
    ///
    /// ``` other: ?*C.QPaintEngineState ```
    pub fn New2(other: ?*anyopaque) ?*C.QPaintEngineState {
        return C.QPaintEngineState_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPaintEngineState, other: ?*QPaintEngineState ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPaintEngineState_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPaintEngineState, other: ?*QPaintEngineState ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPaintEngineState_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#state)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn State(self: ?*anyopaque) i64 {
        return C.QPaintEngineState_State(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#pen)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Pen(self: ?*anyopaque) ?*C.QPen {
        return C.QPaintEngineState_Pen(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#brush)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Brush(self: ?*anyopaque) ?*C.QBrush {
        return C.QPaintEngineState_Brush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#brushOrigin)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn BrushOrigin(self: ?*anyopaque) ?*C.QPointF {
        return C.QPaintEngineState_BrushOrigin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#backgroundBrush)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn BackgroundBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QPaintEngineState_BackgroundBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#backgroundMode)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn BackgroundMode(self: ?*anyopaque) i64 {
        return C.QPaintEngineState_BackgroundMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#font)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QPaintEngineState_Font(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#transform)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Transform(self: ?*anyopaque) ?*C.QTransform {
        return C.QPaintEngineState_Transform(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#clipOperation)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn ClipOperation(self: ?*anyopaque) i64 {
        return C.QPaintEngineState_ClipOperation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#clipRegion)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn ClipRegion(self: ?*anyopaque) ?*C.QRegion {
        return C.QPaintEngineState_ClipRegion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#clipPath)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn ClipPath(self: ?*anyopaque) ?*C.QPainterPath {
        return C.QPaintEngineState_ClipPath(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#isClipEnabled)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn IsClipEnabled(self: ?*anyopaque) bool {
        return C.QPaintEngineState_IsClipEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#renderHints)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn RenderHints(self: ?*anyopaque) i64 {
        return C.QPaintEngineState_RenderHints(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#compositionMode)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn CompositionMode(self: ?*anyopaque) i64 {
        return C.QPaintEngineState_CompositionMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#opacity)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Opacity(self: ?*anyopaque) f64 {
        return C.QPaintEngineState_Opacity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#painter)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn Painter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPaintEngineState_Painter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#brushNeedsResolving)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn BrushNeedsResolving(self: ?*anyopaque) bool {
        return C.QPaintEngineState_BrushNeedsResolving(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintenginestate.html#penNeedsResolving)
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn PenNeedsResolving(self: ?*anyopaque) bool {
        return C.QPaintEngineState_PenNeedsResolving(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPaintEngineState ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPaintEngineState_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpaintengine.html#types
pub const enums = struct {
    pub const RenderFlag = enum {
        pub const RightToLeft: i32 = 1;
        pub const Overline: i32 = 16;
        pub const Underline: i32 = 32;
        pub const StrikeOut: i32 = 64;
        pub const Dummy: i64 = 4294967295;
    };

    pub const PaintEngineFeature = enum {
        pub const PrimitiveTransform: i32 = 1;
        pub const PatternTransform: i32 = 2;
        pub const PixmapTransform: i32 = 4;
        pub const PatternBrush: i32 = 8;
        pub const LinearGradientFill: i32 = 16;
        pub const RadialGradientFill: i32 = 32;
        pub const ConicalGradientFill: i32 = 64;
        pub const AlphaBlend: i32 = 128;
        pub const PorterDuff: i32 = 256;
        pub const PainterPaths: i32 = 512;
        pub const Antialiasing: i32 = 1024;
        pub const BrushStroke: i32 = 2048;
        pub const ConstantOpacity: i32 = 4096;
        pub const MaskedBrush: i32 = 8192;
        pub const PerspectiveTransform: i32 = 16384;
        pub const BlendModes: i32 = 32768;
        pub const ObjectBoundingModeGradients: i32 = 65536;
        pub const RasterOpModes: i32 = 131072;
        pub const PaintOutsidePaintEvent: i32 = 536870912;
        pub const AllFeatures: i64 = 4294967295;
    };

    pub const DirtyFlag = enum {
        pub const DirtyPen: i32 = 1;
        pub const DirtyBrush: i32 = 2;
        pub const DirtyBrushOrigin: i32 = 4;
        pub const DirtyFont: i32 = 8;
        pub const DirtyBackground: i32 = 16;
        pub const DirtyBackgroundMode: i32 = 32;
        pub const DirtyTransform: i32 = 64;
        pub const DirtyClipRegion: i32 = 128;
        pub const DirtyClipPath: i32 = 256;
        pub const DirtyHints: i32 = 512;
        pub const DirtyCompositionMode: i32 = 1024;
        pub const DirtyClipEnabled: i32 = 2048;
        pub const DirtyOpacity: i32 = 4096;
        pub const AllDirty: i32 = 65535;
    };

    pub const PolygonDrawMode = enum {
        pub const OddEvenMode: i32 = 0;
        pub const WindingMode: i32 = 1;
        pub const ConvexMode: i32 = 2;
        pub const PolylineMode: i32 = 3;
    };

    pub const Type = enum {
        pub const X11: i32 = 0;
        pub const Windows: i32 = 1;
        pub const QuickDraw: i32 = 2;
        pub const CoreGraphics: i32 = 3;
        pub const MacPrinter: i32 = 4;
        pub const QWindowSystem: i32 = 5;
        pub const OpenGL: i32 = 6;
        pub const Picture: i32 = 7;
        pub const SVG: i32 = 8;
        pub const Raster: i32 = 9;
        pub const Direct3D: i32 = 10;
        pub const Pdf: i32 = 11;
        pub const OpenVG: i32 = 12;
        pub const OpenGL2: i32 = 13;
        pub const PaintBuffer: i32 = 14;
        pub const Blitter: i32 = 15;
        pub const Direct2D: i32 = 16;
        pub const User: i32 = 50;
        pub const MaxUser: i32 = 100;
    };
};
