const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qpoint.html
pub const qpoint = struct {
    /// New constructs a new QPoint object.
    ///
    /// ``` other: ?*C.QPoint ```
    pub fn New(other: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_new(@ptrCast(other));
    }

    /// New2 constructs a new QPoint object and invalidates the source QPoint object.
    ///
    /// ``` other: ?*C.QPoint ```
    pub fn New2(other: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPoint object.
    ///
    ///
    pub fn New3() ?*C.QPoint {
        return C.QPoint_new3();
    }

    /// New4 constructs a new QPoint object.
    ///
    /// ``` xpos: i32, ypos: i32 ```
    pub fn New4(xpos: i32, ypos: i32) ?*C.QPoint {
        return C.QPoint_new4(@intCast(xpos), @intCast(ypos));
    }

    /// New5 constructs a new QPoint object.
    ///
    /// ``` param1: ?*C.QPoint ```
    pub fn New5(param1: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_new5(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPoint, other: ?*QPoint ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPoint_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPoint, other: ?*QPoint ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPoint_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#isNull)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPoint_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#x)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QPoint_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#y)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QPoint_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#setX)
    ///
    /// ``` self: ?*C.QPoint, x: i32 ```
    pub fn SetX(self: ?*anyopaque, x: i32) void {
        C.QPoint_SetX(@ptrCast(self), @intCast(x));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#setY)
    ///
    /// ``` self: ?*C.QPoint, y: i32 ```
    pub fn SetY(self: ?*anyopaque, y: i32) void {
        C.QPoint_SetY(@ptrCast(self), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#manhattanLength)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn ManhattanLength(self: ?*anyopaque) i32 {
        return C.QPoint_ManhattanLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#transposed)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator+=)
    ///
    /// ``` self: ?*C.QPoint, p: ?*C.QPoint ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, p: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_OperatorPlusAssign(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator-=)
    ///
    /// ``` self: ?*C.QPoint, p: ?*C.QPoint ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, p: ?*anyopaque) ?*C.QPoint {
        return C.QPoint_OperatorMinusAssign(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator*=)
    ///
    /// ``` self: ?*C.QPoint, factor: f32 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, factor: f32) ?*C.QPoint {
        return C.QPoint_OperatorMultiplyAssign(@ptrCast(self), @floatCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator*=)
    ///
    /// ``` self: ?*C.QPoint, factor: f64 ```
    pub fn OperatorMultiplyAssignWithFactor(self: ?*anyopaque, factor: f64) ?*C.QPoint {
        return C.QPoint_OperatorMultiplyAssignWithFactor(@ptrCast(self), @floatCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator*=)
    ///
    /// ``` self: ?*C.QPoint, factor: i32 ```
    pub fn OperatorMultiplyAssign2(self: ?*anyopaque, factor: i32) ?*C.QPoint {
        return C.QPoint_OperatorMultiplyAssign2(@ptrCast(self), @intCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#operator/=)
    ///
    /// ``` self: ?*C.QPoint, divisor: f64 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, divisor: f64) ?*C.QPoint {
        return C.QPoint_OperatorDivideAssign(@ptrCast(self), @floatCast(divisor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#dotProduct)
    ///
    /// ``` p1: ?*C.QPoint, p2: ?*C.QPoint ```
    pub fn DotProduct(p1: ?*anyopaque, p2: ?*anyopaque) i32 {
        return C.QPoint_DotProduct(@ptrCast(p1), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpoint.html#toPointF)
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn ToPointF(self: ?*anyopaque) ?*C.QPointF {
        return C.QPoint_ToPointF(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPoint ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPoint_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpointf.html
pub const qpointf = struct {
    /// New constructs a new QPointF object.
    ///
    /// ``` other: ?*C.QPointF ```
    pub fn New(other: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_new(@ptrCast(other));
    }

    /// New2 constructs a new QPointF object and invalidates the source QPointF object.
    ///
    /// ``` other: ?*C.QPointF ```
    pub fn New2(other: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPointF object.
    ///
    ///
    pub fn New3() ?*C.QPointF {
        return C.QPointF_new3();
    }

    /// New4 constructs a new QPointF object.
    ///
    /// ``` p: ?*C.QPoint ```
    pub fn New4(p: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_new4(@ptrCast(p));
    }

    /// New5 constructs a new QPointF object.
    ///
    /// ``` xpos: f64, ypos: f64 ```
    pub fn New5(xpos: f64, ypos: f64) ?*C.QPointF {
        return C.QPointF_new5(@floatCast(xpos), @floatCast(ypos));
    }

    /// New6 constructs a new QPointF object.
    ///
    /// ``` param1: ?*C.QPointF ```
    pub fn New6(param1: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_new6(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPointF, other: ?*QPointF ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPointF_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPointF, other: ?*QPointF ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPointF_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#manhattanLength)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn ManhattanLength(self: ?*anyopaque) f64 {
        return C.QPointF_ManhattanLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#isNull)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPointF_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#x)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn X(self: ?*anyopaque) f64 {
        return C.QPointF_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#y)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn Y(self: ?*anyopaque) f64 {
        return C.QPointF_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#setX)
    ///
    /// ``` self: ?*C.QPointF, x: f64 ```
    pub fn SetX(self: ?*anyopaque, x: f64) void {
        C.QPointF_SetX(@ptrCast(self), @floatCast(x));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#setY)
    ///
    /// ``` self: ?*C.QPointF, y: f64 ```
    pub fn SetY(self: ?*anyopaque, y: f64) void {
        C.QPointF_SetY(@ptrCast(self), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#transposed)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#operator+=)
    ///
    /// ``` self: ?*C.QPointF, p: ?*C.QPointF ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, p: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_OperatorPlusAssign(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#operator-=)
    ///
    /// ``` self: ?*C.QPointF, p: ?*C.QPointF ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, p: ?*anyopaque) ?*C.QPointF {
        return C.QPointF_OperatorMinusAssign(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#operator*=)
    ///
    /// ``` self: ?*C.QPointF, c: f64 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, c: f64) ?*C.QPointF {
        return C.QPointF_OperatorMultiplyAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#operator/=)
    ///
    /// ``` self: ?*C.QPointF, c: f64 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, c: f64) ?*C.QPointF {
        return C.QPointF_OperatorDivideAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#dotProduct)
    ///
    /// ``` p1: ?*C.QPointF, p2: ?*C.QPointF ```
    pub fn DotProduct(p1: ?*anyopaque, p2: ?*anyopaque) f64 {
        return C.QPointF_DotProduct(@ptrCast(p1), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointf.html#toPoint)
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn ToPoint(self: ?*anyopaque) ?*C.QPoint {
        return C.QPointF_ToPoint(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPointF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPointF_Delete(@ptrCast(self));
    }
};
