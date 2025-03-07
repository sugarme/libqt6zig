const C = @import("qt6c");
const qline_enums = enums;

/// https://doc.qt.io/qt-6/qline.html
pub const qline = struct {
    /// New constructs a new QLine object.
    ///
    /// ``` other: ?*C.QLine ```
    pub fn New(other: ?*anyopaque) ?*C.QLine {
        return C.QLine_new(@ptrCast(other));
    }

    /// New2 constructs a new QLine object and invalidates the source QLine object.
    ///
    /// ``` other: ?*C.QLine ```
    pub fn New2(other: ?*anyopaque) ?*C.QLine {
        return C.QLine_new2(@ptrCast(other));
    }

    /// New3 constructs a new QLine object.
    ///
    ///
    pub fn New3() ?*C.QLine {
        return C.QLine_new3();
    }

    /// New4 constructs a new QLine object.
    ///
    /// ``` pt1: ?*C.QPoint, pt2: ?*C.QPoint ```
    pub fn New4(pt1: ?*anyopaque, pt2: ?*anyopaque) ?*C.QLine {
        return C.QLine_new4(@ptrCast(pt1), @ptrCast(pt2));
    }

    /// New5 constructs a new QLine object.
    ///
    /// ``` x1: i32, y1: i32, x2: i32, y2: i32 ```
    pub fn New5(x1: i32, y1: i32, x2: i32, y2: i32) ?*C.QLine {
        return C.QLine_new5(@intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// New6 constructs a new QLine object.
    ///
    /// ``` param1: ?*C.QLine ```
    pub fn New6(param1: ?*anyopaque) ?*C.QLine {
        return C.QLine_new6(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QLine, other: ?*QLine ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLine_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QLine, other: ?*QLine ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLine_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#isNull)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QLine_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#p1)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn P1(self: ?*anyopaque) ?*C.QPoint {
        return C.QLine_P1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#p2)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn P2(self: ?*anyopaque) ?*C.QPoint {
        return C.QLine_P2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#x1)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn X1(self: ?*anyopaque) i32 {
        return C.QLine_X1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#y1)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn Y1(self: ?*anyopaque) i32 {
        return C.QLine_Y1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#x2)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn X2(self: ?*anyopaque) i32 {
        return C.QLine_X2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#y2)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn Y2(self: ?*anyopaque) i32 {
        return C.QLine_Y2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#dx)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn Dx(self: ?*anyopaque) i32 {
        return C.QLine_Dx(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#dy)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn Dy(self: ?*anyopaque) i32 {
        return C.QLine_Dy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#translate)
    ///
    /// ``` self: ?*C.QLine, p: ?*C.QPoint ```
    pub fn Translate(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QLine_Translate(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#translate)
    ///
    /// ``` self: ?*C.QLine, dx: i32, dy: i32 ```
    pub fn Translate2(self: ?*anyopaque, dx: i32, dy: i32) void {
        C.QLine_Translate2(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#translated)
    ///
    /// ``` self: ?*C.QLine, p: ?*C.QPoint ```
    pub fn Translated(self: ?*anyopaque, p: ?*anyopaque) ?*C.QLine {
        return C.QLine_Translated(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#translated)
    ///
    /// ``` self: ?*C.QLine, dx: i32, dy: i32 ```
    pub fn Translated2(self: ?*anyopaque, dx: i32, dy: i32) ?*C.QLine {
        return C.QLine_Translated2(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#center)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn Center(self: ?*anyopaque) ?*C.QPoint {
        return C.QLine_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#setP1)
    ///
    /// ``` self: ?*C.QLine, p1: ?*C.QPoint ```
    pub fn SetP1(self: ?*anyopaque, p1: ?*anyopaque) void {
        C.QLine_SetP1(@ptrCast(self), @ptrCast(p1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#setP2)
    ///
    /// ``` self: ?*C.QLine, p2: ?*C.QPoint ```
    pub fn SetP2(self: ?*anyopaque, p2: ?*anyopaque) void {
        C.QLine_SetP2(@ptrCast(self), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#setPoints)
    ///
    /// ``` self: ?*C.QLine, p1: ?*C.QPoint, p2: ?*C.QPoint ```
    pub fn SetPoints(self: ?*anyopaque, p1: ?*anyopaque, p2: ?*anyopaque) void {
        C.QLine_SetPoints(@ptrCast(self), @ptrCast(p1), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#setLine)
    ///
    /// ``` self: ?*C.QLine, x1: i32, y1: i32, x2: i32, y2: i32 ```
    pub fn SetLine(self: ?*anyopaque, x1: i32, y1: i32, x2: i32, y2: i32) void {
        C.QLine_SetLine(@ptrCast(self), @intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#operator==)
    ///
    /// ``` self: ?*C.QLine, d: ?*C.QLine ```
    pub fn OperatorEqual(self: ?*anyopaque, d: ?*anyopaque) bool {
        return C.QLine_OperatorEqual(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#operator!=)
    ///
    /// ``` self: ?*C.QLine, d: ?*C.QLine ```
    pub fn OperatorNotEqual(self: ?*anyopaque, d: ?*anyopaque) bool {
        return C.QLine_OperatorNotEqual(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qline.html#toLineF)
    ///
    /// ``` self: ?*C.QLine ```
    pub fn ToLineF(self: ?*anyopaque) ?*C.QLineF {
        return C.QLine_ToLineF(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLine ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLine_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qlinef.html
pub const qlinef = struct {
    /// New constructs a new QLineF object.
    ///
    /// ``` other: ?*C.QLineF ```
    pub fn New(other: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_new(@ptrCast(other));
    }

    /// New2 constructs a new QLineF object and invalidates the source QLineF object.
    ///
    /// ``` other: ?*C.QLineF ```
    pub fn New2(other: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_new2(@ptrCast(other));
    }

    /// New3 constructs a new QLineF object.
    ///
    ///
    pub fn New3() ?*C.QLineF {
        return C.QLineF_new3();
    }

    /// New4 constructs a new QLineF object.
    ///
    /// ``` pt1: ?*C.QPointF, pt2: ?*C.QPointF ```
    pub fn New4(pt1: ?*anyopaque, pt2: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_new4(@ptrCast(pt1), @ptrCast(pt2));
    }

    /// New5 constructs a new QLineF object.
    ///
    /// ``` x1: f64, y1: f64, x2: f64, y2: f64 ```
    pub fn New5(x1: f64, y1: f64, x2: f64, y2: f64) ?*C.QLineF {
        return C.QLineF_new5(@floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// New6 constructs a new QLineF object.
    ///
    /// ``` line: ?*C.QLine ```
    pub fn New6(line: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_new6(@ptrCast(line));
    }

    /// New7 constructs a new QLineF object.
    ///
    /// ``` param1: ?*C.QLineF ```
    pub fn New7(param1: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_new7(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QLineF, other: ?*QLineF ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLineF_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QLineF, other: ?*QLineF ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QLineF_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#fromPolar)
    ///
    /// ``` length: f64, angle: f64 ```
    pub fn FromPolar(length: f64, angle: f64) ?*C.QLineF {
        return C.QLineF_FromPolar(@floatCast(length), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#isNull)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QLineF_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#p1)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn P1(self: ?*anyopaque) ?*C.QPointF {
        return C.QLineF_P1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#p2)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn P2(self: ?*anyopaque) ?*C.QPointF {
        return C.QLineF_P2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#x1)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn X1(self: ?*anyopaque) f64 {
        return C.QLineF_X1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#y1)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Y1(self: ?*anyopaque) f64 {
        return C.QLineF_Y1(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#x2)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn X2(self: ?*anyopaque) f64 {
        return C.QLineF_X2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#y2)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Y2(self: ?*anyopaque) f64 {
        return C.QLineF_Y2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#dx)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Dx(self: ?*anyopaque) f64 {
        return C.QLineF_Dx(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#dy)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Dy(self: ?*anyopaque) f64 {
        return C.QLineF_Dy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#length)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Length(self: ?*anyopaque) f64 {
        return C.QLineF_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setLength)
    ///
    /// ``` self: ?*C.QLineF, lenVal: f64 ```
    pub fn SetLength(self: ?*anyopaque, lenVal: f64) void {
        C.QLineF_SetLength(@ptrCast(self), @floatCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#angle)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Angle(self: ?*anyopaque) f64 {
        return C.QLineF_Angle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setAngle)
    ///
    /// ``` self: ?*C.QLineF, angle: f64 ```
    pub fn SetAngle(self: ?*anyopaque, angle: f64) void {
        C.QLineF_SetAngle(@ptrCast(self), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#angleTo)
    ///
    /// ``` self: ?*C.QLineF, l: ?*C.QLineF ```
    pub fn AngleTo(self: ?*anyopaque, l: ?*anyopaque) f64 {
        return C.QLineF_AngleTo(@ptrCast(self), @ptrCast(l));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#unitVector)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn UnitVector(self: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_UnitVector(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#normalVector)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn NormalVector(self: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_NormalVector(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#intersects)
    ///
    /// ``` self: ?*C.QLineF, l: ?*C.QLineF ```
    pub fn Intersects(self: ?*anyopaque, l: ?*anyopaque) i64 {
        return C.QLineF_Intersects(@ptrCast(self), @ptrCast(l));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#pointAt)
    ///
    /// ``` self: ?*C.QLineF, t: f64 ```
    pub fn PointAt(self: ?*anyopaque, t: f64) ?*C.QPointF {
        return C.QLineF_PointAt(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#translate)
    ///
    /// ``` self: ?*C.QLineF, p: ?*C.QPointF ```
    pub fn Translate(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QLineF_Translate(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#translate)
    ///
    /// ``` self: ?*C.QLineF, dx: f64, dy: f64 ```
    pub fn Translate2(self: ?*anyopaque, dx: f64, dy: f64) void {
        C.QLineF_Translate2(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#translated)
    ///
    /// ``` self: ?*C.QLineF, p: ?*C.QPointF ```
    pub fn Translated(self: ?*anyopaque, p: ?*anyopaque) ?*C.QLineF {
        return C.QLineF_Translated(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#translated)
    ///
    /// ``` self: ?*C.QLineF, dx: f64, dy: f64 ```
    pub fn Translated2(self: ?*anyopaque, dx: f64, dy: f64) ?*C.QLineF {
        return C.QLineF_Translated2(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#center)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn Center(self: ?*anyopaque) ?*C.QPointF {
        return C.QLineF_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setP1)
    ///
    /// ``` self: ?*C.QLineF, p1: ?*C.QPointF ```
    pub fn SetP1(self: ?*anyopaque, p1: ?*anyopaque) void {
        C.QLineF_SetP1(@ptrCast(self), @ptrCast(p1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setP2)
    ///
    /// ``` self: ?*C.QLineF, p2: ?*C.QPointF ```
    pub fn SetP2(self: ?*anyopaque, p2: ?*anyopaque) void {
        C.QLineF_SetP2(@ptrCast(self), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setPoints)
    ///
    /// ``` self: ?*C.QLineF, p1: ?*C.QPointF, p2: ?*C.QPointF ```
    pub fn SetPoints(self: ?*anyopaque, p1: ?*anyopaque, p2: ?*anyopaque) void {
        C.QLineF_SetPoints(@ptrCast(self), @ptrCast(p1), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#setLine)
    ///
    /// ``` self: ?*C.QLineF, x1: f64, y1: f64, x2: f64, y2: f64 ```
    pub fn SetLine(self: ?*anyopaque, x1: f64, y1: f64, x2: f64, y2: f64) void {
        C.QLineF_SetLine(@ptrCast(self), @floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#operator==)
    ///
    /// ``` self: ?*C.QLineF, d: ?*C.QLineF ```
    pub fn OperatorEqual(self: ?*anyopaque, d: ?*anyopaque) bool {
        return C.QLineF_OperatorEqual(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#operator!=)
    ///
    /// ``` self: ?*C.QLineF, d: ?*C.QLineF ```
    pub fn OperatorNotEqual(self: ?*anyopaque, d: ?*anyopaque) bool {
        return C.QLineF_OperatorNotEqual(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#toLine)
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn ToLine(self: ?*anyopaque) ?*C.QLine {
        return C.QLineF_ToLine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlinef.html#intersects)
    ///
    /// ``` self: ?*C.QLineF, l: ?*C.QLineF, intersectionPoint: ?*C.QPointF ```
    pub fn Intersects2(self: ?*anyopaque, l: ?*anyopaque, intersectionPoint: ?*anyopaque) i64 {
        return C.QLineF_Intersects2(@ptrCast(self), @ptrCast(l), @ptrCast(intersectionPoint));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLineF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLineF_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qline.html#types
pub const enums = struct {
    pub const IntersectionType = enum {
        pub const NoIntersection: i32 = 0;
        pub const BoundedIntersection: i32 = 1;
        pub const UnboundedIntersection: i32 = 2;
    };
};
