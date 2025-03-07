const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qpainterpath.html
pub const qpainterpath = struct {
    /// New constructs a new QPainterPath object.
    ///
    ///
    pub fn New() ?*C.QPainterPath {
        return C.QPainterPath_new();
    }

    /// New2 constructs a new QPainterPath object.
    ///
    /// ``` startPoint: ?*C.QPointF ```
    pub fn New2(startPoint: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_new2(@ptrCast(startPoint));
    }

    /// New3 constructs a new QPainterPath object.
    ///
    /// ``` other: ?*C.QPainterPath ```
    pub fn New3(other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_new3(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPainterPath_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#swap)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPainterPath_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#clear)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QPainterPath_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#reserve)
    ///
    /// ``` self: ?*C.QPainterPath, size: i32 ```
    pub fn Reserve(self: ?*anyopaque, size: i32) void {
        C.QPainterPath_Reserve(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#capacity)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn Capacity(self: ?*anyopaque) i32 {
        return C.QPainterPath_Capacity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#closeSubpath)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn CloseSubpath(self: ?*anyopaque) void {
        C.QPainterPath_CloseSubpath(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#moveTo)
    ///
    /// ``` self: ?*C.QPainterPath, p: ?*C.QPointF ```
    pub fn MoveTo(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QPainterPath_MoveTo(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#moveTo)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64 ```
    pub fn MoveTo2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QPainterPath_MoveTo2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#lineTo)
    ///
    /// ``` self: ?*C.QPainterPath, p: ?*C.QPointF ```
    pub fn LineTo(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QPainterPath_LineTo(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#lineTo)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64 ```
    pub fn LineTo2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QPainterPath_LineTo2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#arcMoveTo)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF, angle: f64 ```
    pub fn ArcMoveTo(self: ?*anyopaque, rect: ?*anyopaque, angle: f64) void {
        C.QPainterPath_ArcMoveTo(@ptrCast(self), @ptrCast(rect), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#arcMoveTo)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64, angle: f64 ```
    pub fn ArcMoveTo2(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64, angle: f64) void {
        C.QPainterPath_ArcMoveTo2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#arcTo)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF, startAngle: f64, arcLength: f64 ```
    pub fn ArcTo(self: ?*anyopaque, rect: ?*anyopaque, startAngle: f64, arcLength: f64) void {
        C.QPainterPath_ArcTo(@ptrCast(self), @ptrCast(rect), @floatCast(startAngle), @floatCast(arcLength));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#arcTo)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64, startAngle: f64, arcLength: f64 ```
    pub fn ArcTo2(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64, startAngle: f64, arcLength: f64) void {
        C.QPainterPath_ArcTo2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h), @floatCast(startAngle), @floatCast(arcLength));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#cubicTo)
    ///
    /// ``` self: ?*C.QPainterPath, ctrlPt1: ?*C.QPointF, ctrlPt2: ?*C.QPointF, endPt: ?*C.QPointF ```
    pub fn CubicTo(self: ?*anyopaque, ctrlPt1: ?*anyopaque, ctrlPt2: ?*anyopaque, endPt: ?*anyopaque) void {
        C.QPainterPath_CubicTo(@ptrCast(self), @ptrCast(ctrlPt1), @ptrCast(ctrlPt2), @ptrCast(endPt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#cubicTo)
    ///
    /// ``` self: ?*C.QPainterPath, ctrlPt1x: f64, ctrlPt1y: f64, ctrlPt2x: f64, ctrlPt2y: f64, endPtx: f64, endPty: f64 ```
    pub fn CubicTo2(self: ?*anyopaque, ctrlPt1x: f64, ctrlPt1y: f64, ctrlPt2x: f64, ctrlPt2y: f64, endPtx: f64, endPty: f64) void {
        C.QPainterPath_CubicTo2(@ptrCast(self), @floatCast(ctrlPt1x), @floatCast(ctrlPt1y), @floatCast(ctrlPt2x), @floatCast(ctrlPt2y), @floatCast(endPtx), @floatCast(endPty));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#quadTo)
    ///
    /// ``` self: ?*C.QPainterPath, ctrlPt: ?*C.QPointF, endPt: ?*C.QPointF ```
    pub fn QuadTo(self: ?*anyopaque, ctrlPt: ?*anyopaque, endPt: ?*anyopaque) void {
        C.QPainterPath_QuadTo(@ptrCast(self), @ptrCast(ctrlPt), @ptrCast(endPt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#quadTo)
    ///
    /// ``` self: ?*C.QPainterPath, ctrlPtx: f64, ctrlPty: f64, endPtx: f64, endPty: f64 ```
    pub fn QuadTo2(self: ?*anyopaque, ctrlPtx: f64, ctrlPty: f64, endPtx: f64, endPty: f64) void {
        C.QPainterPath_QuadTo2(@ptrCast(self), @floatCast(ctrlPtx), @floatCast(ctrlPty), @floatCast(endPtx), @floatCast(endPty));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#currentPosition)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn CurrentPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QPainterPath_CurrentPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRect)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF ```
    pub fn AddRect(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QPainterPath_AddRect(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRect)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64 ```
    pub fn AddRect2(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64) void {
        C.QPainterPath_AddRect2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addEllipse)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF ```
    pub fn AddEllipse(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QPainterPath_AddEllipse(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addEllipse)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64 ```
    pub fn AddEllipse2(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64) void {
        C.QPainterPath_AddEllipse2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addEllipse)
    ///
    /// ``` self: ?*C.QPainterPath, center: ?*C.QPointF, rx: f64, ry: f64 ```
    pub fn AddEllipse3(self: ?*anyopaque, center: ?*anyopaque, rx: f64, ry: f64) void {
        C.QPainterPath_AddEllipse3(@ptrCast(self), @ptrCast(center), @floatCast(rx), @floatCast(ry));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addText)
    ///
    /// ``` self: ?*C.QPainterPath, point: ?*C.QPointF, f: ?*C.QFont, text: []const u8 ```
    pub fn AddText(self: ?*anyopaque, point: ?*anyopaque, f: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QPainterPath_AddText(@ptrCast(self), @ptrCast(point), @ptrCast(f), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addText)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, f: ?*C.QFont, text: []const u8 ```
    pub fn AddText2(self: ?*anyopaque, x: f64, y: f64, f: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QPainterPath_AddText2(@ptrCast(self), @floatCast(x), @floatCast(y), @ptrCast(f), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addPath)
    ///
    /// ``` self: ?*C.QPainterPath, path: ?*C.QPainterPath ```
    pub fn AddPath(self: ?*anyopaque, path: ?*anyopaque) void {
        C.QPainterPath_AddPath(@ptrCast(self), @ptrCast(path));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRegion)
    ///
    /// ``` self: ?*C.QPainterPath, region: ?*C.QRegion ```
    pub fn AddRegion(self: ?*anyopaque, region: ?*anyopaque) void {
        C.QPainterPath_AddRegion(@ptrCast(self), @ptrCast(region));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRoundedRect)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF, xRadius: f64, yRadius: f64 ```
    pub fn AddRoundedRect(self: ?*anyopaque, rect: ?*anyopaque, xRadius: f64, yRadius: f64) void {
        C.QPainterPath_AddRoundedRect(@ptrCast(self), @ptrCast(rect), @floatCast(xRadius), @floatCast(yRadius));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRoundedRect)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64, xRadius: f64, yRadius: f64 ```
    pub fn AddRoundedRect2(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64, xRadius: f64, yRadius: f64) void {
        C.QPainterPath_AddRoundedRect2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h), @floatCast(xRadius), @floatCast(yRadius));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#connectPath)
    ///
    /// ``` self: ?*C.QPainterPath, path: ?*C.QPainterPath ```
    pub fn ConnectPath(self: ?*anyopaque, path: ?*anyopaque) void {
        C.QPainterPath_ConnectPath(@ptrCast(self), @ptrCast(path));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#contains)
    ///
    /// ``` self: ?*C.QPainterPath, pt: ?*C.QPointF ```
    pub fn Contains(self: ?*anyopaque, pt: ?*anyopaque) bool {
        return C.QPainterPath_Contains(@ptrCast(self), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#contains)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF ```
    pub fn ContainsWithRect(self: ?*anyopaque, rect: ?*anyopaque) bool {
        return C.QPainterPath_ContainsWithRect(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#intersects)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF ```
    pub fn Intersects(self: ?*anyopaque, rect: ?*anyopaque) bool {
        return C.QPainterPath_Intersects(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#translate)
    ///
    /// ``` self: ?*C.QPainterPath, dx: f64, dy: f64 ```
    pub fn Translate(self: ?*anyopaque, dx: f64, dy: f64) void {
        C.QPainterPath_Translate(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#translate)
    ///
    /// ``` self: ?*C.QPainterPath, offset: ?*C.QPointF ```
    pub fn TranslateWithOffset(self: ?*anyopaque, offset: ?*anyopaque) void {
        C.QPainterPath_TranslateWithOffset(@ptrCast(self), @ptrCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#translated)
    ///
    /// ``` self: ?*C.QPainterPath, dx: f64, dy: f64 ```
    pub fn Translated(self: ?*anyopaque, dx: f64, dy: f64) ?*C.QPainterPath {
        return C.QPainterPath_Translated(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#translated)
    ///
    /// ``` self: ?*C.QPainterPath, offset: ?*C.QPointF ```
    pub fn TranslatedWithOffset(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_TranslatedWithOffset(@ptrCast(self), @ptrCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#boundingRect)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn BoundingRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QPainterPath_BoundingRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#controlPointRect)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn ControlPointRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QPainterPath_ControlPointRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#fillRule)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn FillRule(self: ?*anyopaque) i64 {
        return C.QPainterPath_FillRule(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#setFillRule)
    ///
    /// ``` self: ?*C.QPainterPath, fillRule: qnamespace_enums.FillRule ```
    pub fn SetFillRule(self: ?*anyopaque, fillRule: i64) void {
        C.QPainterPath_SetFillRule(@ptrCast(self), @intCast(fillRule));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#isEmpty)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QPainterPath_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#toReversed)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn ToReversed(self: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_ToReversed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#elementCount)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn ElementCount(self: ?*anyopaque) i32 {
        return C.QPainterPath_ElementCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#elementAt)
    ///
    /// ``` self: ?*C.QPainterPath, i: i32 ```
    pub fn ElementAt(self: ?*anyopaque, i: i32) ?*C.QPainterPath__Element {
        return C.QPainterPath_ElementAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#setElementPositionAt)
    ///
    /// ``` self: ?*C.QPainterPath, i: i32, x: f64, y: f64 ```
    pub fn SetElementPositionAt(self: ?*anyopaque, i: i32, x: f64, y: f64) void {
        C.QPainterPath_SetElementPositionAt(@ptrCast(self), @intCast(i), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#length)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn Length(self: ?*anyopaque) f64 {
        return C.QPainterPath_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#percentAtLength)
    ///
    /// ``` self: ?*C.QPainterPath, t: f64 ```
    pub fn PercentAtLength(self: ?*anyopaque, t: f64) f64 {
        return C.QPainterPath_PercentAtLength(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#pointAtPercent)
    ///
    /// ``` self: ?*C.QPainterPath, t: f64 ```
    pub fn PointAtPercent(self: ?*anyopaque, t: f64) ?*C.QPointF {
        return C.QPainterPath_PointAtPercent(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#angleAtPercent)
    ///
    /// ``` self: ?*C.QPainterPath, t: f64 ```
    pub fn AngleAtPercent(self: ?*anyopaque, t: f64) f64 {
        return C.QPainterPath_AngleAtPercent(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#slopeAtPercent)
    ///
    /// ``` self: ?*C.QPainterPath, t: f64 ```
    pub fn SlopeAtPercent(self: ?*anyopaque, t: f64) f64 {
        return C.QPainterPath_SlopeAtPercent(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#intersects)
    ///
    /// ``` self: ?*C.QPainterPath, p: ?*C.QPainterPath ```
    pub fn IntersectsWithQPainterPath(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPainterPath_IntersectsWithQPainterPath(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#contains)
    ///
    /// ``` self: ?*C.QPainterPath, p: ?*C.QPainterPath ```
    pub fn ContainsWithQPainterPath(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPainterPath_ContainsWithQPainterPath(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#united)
    ///
    /// ``` self: ?*C.QPainterPath, r: ?*C.QPainterPath ```
    pub fn United(self: ?*anyopaque, r: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_United(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#intersected)
    ///
    /// ``` self: ?*C.QPainterPath, r: ?*C.QPainterPath ```
    pub fn Intersected(self: ?*anyopaque, r: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_Intersected(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#subtracted)
    ///
    /// ``` self: ?*C.QPainterPath, r: ?*C.QPainterPath ```
    pub fn Subtracted(self: ?*anyopaque, r: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_Subtracted(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#simplified)
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn Simplified(self: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_Simplified(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator==)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QPainterPath_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator!=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QPainterPath_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator&)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorBitwiseAnd(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorBitwiseAnd(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator|)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorBitwiseOr(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorBitwiseOr(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator+)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorPlus(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorPlus(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator-)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorMinus(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorMinus(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator&=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorBitwiseAndAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPainterPath_OperatorBitwiseAndAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator|=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorBitwiseOrAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPainterPath_OperatorBitwiseOrAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator+=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorPlusAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#operator-=)
    ///
    /// ``` self: ?*C.QPainterPath, other: ?*C.QPainterPath ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPath_OperatorMinusAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRoundedRect)
    ///
    /// ``` self: ?*C.QPainterPath, rect: ?*C.QRectF, xRadius: f64, yRadius: f64, mode: qnamespace_enums.SizeMode ```
    pub fn AddRoundedRect4(self: ?*anyopaque, rect: ?*anyopaque, xRadius: f64, yRadius: f64, mode: i64) void {
        C.QPainterPath_AddRoundedRect4(@ptrCast(self), @ptrCast(rect), @floatCast(xRadius), @floatCast(yRadius), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath.html#addRoundedRect)
    ///
    /// ``` self: ?*C.QPainterPath, x: f64, y: f64, w: f64, h: f64, xRadius: f64, yRadius: f64, mode: qnamespace_enums.SizeMode ```
    pub fn AddRoundedRect7(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64, xRadius: f64, yRadius: f64, mode: i64) void {
        C.QPainterPath_AddRoundedRect7(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h), @floatCast(xRadius), @floatCast(yRadius), @intCast(mode));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPainterPath ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPainterPath_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpainterpathstroker.html
pub const qpainterpathstroker = struct {
    /// New constructs a new QPainterPathStroker object.
    ///
    ///
    pub fn New() ?*C.QPainterPathStroker {
        return C.QPainterPathStroker_new();
    }

    /// New2 constructs a new QPainterPathStroker object.
    ///
    /// ``` pen: ?*C.QPen ```
    pub fn New2(pen: ?*anyopaque) ?*C.QPainterPathStroker {
        return C.QPainterPathStroker_new2(@ptrCast(pen));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setWidth)
    ///
    /// ``` self: ?*C.QPainterPathStroker, width: f64 ```
    pub fn SetWidth(self: ?*anyopaque, width: f64) void {
        C.QPainterPathStroker_SetWidth(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#width)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QPainterPathStroker_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setCapStyle)
    ///
    /// ``` self: ?*C.QPainterPathStroker, style: qnamespace_enums.PenCapStyle ```
    pub fn SetCapStyle(self: ?*anyopaque, style: i64) void {
        C.QPainterPathStroker_SetCapStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#capStyle)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn CapStyle(self: ?*anyopaque) i64 {
        return C.QPainterPathStroker_CapStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setJoinStyle)
    ///
    /// ``` self: ?*C.QPainterPathStroker, style: qnamespace_enums.PenJoinStyle ```
    pub fn SetJoinStyle(self: ?*anyopaque, style: i64) void {
        C.QPainterPathStroker_SetJoinStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#joinStyle)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn JoinStyle(self: ?*anyopaque) i64 {
        return C.QPainterPathStroker_JoinStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setMiterLimit)
    ///
    /// ``` self: ?*C.QPainterPathStroker, length: f64 ```
    pub fn SetMiterLimit(self: ?*anyopaque, length: f64) void {
        C.QPainterPathStroker_SetMiterLimit(@ptrCast(self), @floatCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#miterLimit)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn MiterLimit(self: ?*anyopaque) f64 {
        return C.QPainterPathStroker_MiterLimit(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setCurveThreshold)
    ///
    /// ``` self: ?*C.QPainterPathStroker, threshold: f64 ```
    pub fn SetCurveThreshold(self: ?*anyopaque, threshold: f64) void {
        C.QPainterPathStroker_SetCurveThreshold(@ptrCast(self), @floatCast(threshold));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#curveThreshold)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn CurveThreshold(self: ?*anyopaque) f64 {
        return C.QPainterPathStroker_CurveThreshold(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setDashPattern)
    ///
    /// ``` self: ?*C.QPainterPathStroker, dashPattern: qnamespace_enums.PenStyle ```
    pub fn SetDashPattern(self: ?*anyopaque, dashPattern: i64) void {
        C.QPainterPathStroker_SetDashPattern(@ptrCast(self), @intCast(dashPattern));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setDashPattern)
    ///
    /// ``` self: ?*C.QPainterPathStroker, dashPattern: []f64 ```
    pub fn SetDashPatternWithDashPattern(self: ?*anyopaque, dashPattern: []f64) void {
        const dashPattern_list = C.struct_libqt_list{
            .len = dashPattern.len,
            .data = dashPattern.ptr,
        };
        C.QPainterPathStroker_SetDashPatternWithDashPattern(@ptrCast(self), dashPattern_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#dashPattern)
    ///
    /// ``` self: ?*C.QPainterPathStroker, allocator: std.mem.Allocator ```
    pub fn DashPattern(self: ?*anyopaque, allocator: std.mem.Allocator) []f64 {
        const _arr: C.struct_libqt_list = C.QPainterPathStroker_DashPattern(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(f64, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]f64 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#setDashOffset)
    ///
    /// ``` self: ?*C.QPainterPathStroker, offset: f64 ```
    pub fn SetDashOffset(self: ?*anyopaque, offset: f64) void {
        C.QPainterPathStroker_SetDashOffset(@ptrCast(self), @floatCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#dashOffset)
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn DashOffset(self: ?*anyopaque) f64 {
        return C.QPainterPathStroker_DashOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpathstroker.html#createStroke)
    ///
    /// ``` self: ?*C.QPainterPathStroker, path: ?*C.QPainterPath ```
    pub fn CreateStroke(self: ?*anyopaque, path: ?*anyopaque) ?*C.QPainterPath {
        return C.QPainterPathStroker_CreateStroke(@ptrCast(self), @ptrCast(path));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPainterPathStroker ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPainterPathStroker_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpainterpath-element.html
pub const qpainterpath__element = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#isMoveTo)
    ///
    /// ``` self: ?*C.QPainterPath__Element ```
    pub fn IsMoveTo(self: ?*anyopaque) bool {
        return C.QPainterPath__Element_IsMoveTo(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#isLineTo)
    ///
    /// ``` self: ?*C.QPainterPath__Element ```
    pub fn IsLineTo(self: ?*anyopaque) bool {
        return C.QPainterPath__Element_IsLineTo(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#isCurveTo)
    ///
    /// ``` self: ?*C.QPainterPath__Element ```
    pub fn IsCurveTo(self: ?*anyopaque) bool {
        return C.QPainterPath__Element_IsCurveTo(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#operator QPointF)
    ///
    /// ``` self: ?*C.QPainterPath__Element ```
    pub fn ToQPointF(self: ?*anyopaque) ?*C.QPointF {
        return C.QPainterPath__Element_ToQPointF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#operator==)
    ///
    /// ``` self: ?*C.QPainterPath__Element, e: ?*C.QPainterPath__Element ```
    pub fn OperatorEqual(self: ?*anyopaque, e: ?*anyopaque) bool {
        return C.QPainterPath__Element_OperatorEqual(@ptrCast(self), @ptrCast(e));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpainterpath__element.html#operator!=)
    ///
    /// ``` self: ?*C.QPainterPath__Element, e: ?*C.QPainterPath__Element ```
    pub fn OperatorNotEqual(self: ?*anyopaque, e: ?*anyopaque) bool {
        return C.QPainterPath__Element_OperatorNotEqual(@ptrCast(self), @ptrCast(e));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPainterPath__Element ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPainterPath__Element_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpainterpath.html#types
pub const enums = struct {
    pub const ElementType = enum {
        pub const MoveToElement: i32 = 0;
        pub const LineToElement: i32 = 1;
        pub const CurveToElement: i32 = 2;
        pub const CurveToDataElement: i32 = 3;
    };
};
