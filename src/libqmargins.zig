const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qmargins.html
pub const qmargins = struct {
    /// New constructs a new QMargins object.
    ///
    /// ``` other: ?*C.QMargins ```
    pub fn New(other: ?*anyopaque) ?*C.QMargins {
        return C.QMargins_new(@ptrCast(other));
    }

    /// New2 constructs a new QMargins object and invalidates the source QMargins object.
    ///
    /// ``` other: ?*C.QMargins ```
    pub fn New2(other: ?*anyopaque) ?*C.QMargins {
        return C.QMargins_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMargins object.
    ///
    ///
    pub fn New3() ?*C.QMargins {
        return C.QMargins_new3();
    }

    /// New4 constructs a new QMargins object.
    ///
    /// ``` left: i32, top: i32, right: i32, bottom: i32 ```
    pub fn New4(left: i32, top: i32, right: i32, bottom: i32) ?*C.QMargins {
        return C.QMargins_new4(@intCast(left), @intCast(top), @intCast(right), @intCast(bottom));
    }

    /// New5 constructs a new QMargins object.
    ///
    /// ``` param1: ?*C.QMargins ```
    pub fn New5(param1: ?*anyopaque) ?*C.QMargins {
        return C.QMargins_new5(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMargins, other: ?*QMargins ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMargins_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMargins, other: ?*QMargins ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMargins_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#isNull)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QMargins_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#left)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn Left(self: ?*anyopaque) i32 {
        return C.QMargins_Left(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#top)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn Top(self: ?*anyopaque) i32 {
        return C.QMargins_Top(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#right)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn Right(self: ?*anyopaque) i32 {
        return C.QMargins_Right(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#bottom)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn Bottom(self: ?*anyopaque) i32 {
        return C.QMargins_Bottom(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#setLeft)
    ///
    /// ``` self: ?*C.QMargins, left: i32 ```
    pub fn SetLeft(self: ?*anyopaque, left: i32) void {
        C.QMargins_SetLeft(@ptrCast(self), @intCast(left));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#setTop)
    ///
    /// ``` self: ?*C.QMargins, top: i32 ```
    pub fn SetTop(self: ?*anyopaque, top: i32) void {
        C.QMargins_SetTop(@ptrCast(self), @intCast(top));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#setRight)
    ///
    /// ``` self: ?*C.QMargins, right: i32 ```
    pub fn SetRight(self: ?*anyopaque, right: i32) void {
        C.QMargins_SetRight(@ptrCast(self), @intCast(right));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#setBottom)
    ///
    /// ``` self: ?*C.QMargins, bottom: i32 ```
    pub fn SetBottom(self: ?*anyopaque, bottom: i32) void {
        C.QMargins_SetBottom(@ptrCast(self), @intCast(bottom));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator+=)
    ///
    /// ``` self: ?*C.QMargins, margins: ?*C.QMargins ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QMargins {
        return C.QMargins_OperatorPlusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator-=)
    ///
    /// ``` self: ?*C.QMargins, margins: ?*C.QMargins ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QMargins {
        return C.QMargins_OperatorMinusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator+=)
    ///
    /// ``` self: ?*C.QMargins, param1: i32 ```
    pub fn OperatorPlusAssignWithInt(self: ?*anyopaque, param1: i32) ?*C.QMargins {
        return C.QMargins_OperatorPlusAssignWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator-=)
    ///
    /// ``` self: ?*C.QMargins, param1: i32 ```
    pub fn OperatorMinusAssignWithInt(self: ?*anyopaque, param1: i32) ?*C.QMargins {
        return C.QMargins_OperatorMinusAssignWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator*=)
    ///
    /// ``` self: ?*C.QMargins, param1: i32 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, param1: i32) ?*C.QMargins {
        return C.QMargins_OperatorMultiplyAssign(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator/=)
    ///
    /// ``` self: ?*C.QMargins, param1: i32 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, param1: i32) ?*C.QMargins {
        return C.QMargins_OperatorDivideAssign(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator*=)
    ///
    /// ``` self: ?*C.QMargins, param1: f64 ```
    pub fn OperatorMultiplyAssignWithDouble(self: ?*anyopaque, param1: f64) ?*C.QMargins {
        return C.QMargins_OperatorMultiplyAssignWithDouble(@ptrCast(self), @floatCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#operator/=)
    ///
    /// ``` self: ?*C.QMargins, param1: f64 ```
    pub fn OperatorDivideAssignWithDouble(self: ?*anyopaque, param1: f64) ?*C.QMargins {
        return C.QMargins_OperatorDivideAssignWithDouble(@ptrCast(self), @floatCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmargins.html#toMarginsF)
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn ToMarginsF(self: ?*anyopaque) ?*C.QMarginsF {
        return C.QMargins_ToMarginsF(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMargins ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMargins_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmarginsf.html
pub const qmarginsf = struct {
    /// New constructs a new QMarginsF object.
    ///
    /// ``` other: ?*C.QMarginsF ```
    pub fn New(other: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_new(@ptrCast(other));
    }

    /// New2 constructs a new QMarginsF object and invalidates the source QMarginsF object.
    ///
    /// ``` other: ?*C.QMarginsF ```
    pub fn New2(other: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMarginsF object.
    ///
    ///
    pub fn New3() ?*C.QMarginsF {
        return C.QMarginsF_new3();
    }

    /// New4 constructs a new QMarginsF object.
    ///
    /// ``` left: f64, top: f64, right: f64, bottom: f64 ```
    pub fn New4(left: f64, top: f64, right: f64, bottom: f64) ?*C.QMarginsF {
        return C.QMarginsF_new4(@floatCast(left), @floatCast(top), @floatCast(right), @floatCast(bottom));
    }

    /// New5 constructs a new QMarginsF object.
    ///
    /// ``` margins: ?*C.QMargins ```
    pub fn New5(margins: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_new5(@ptrCast(margins));
    }

    /// New6 constructs a new QMarginsF object.
    ///
    /// ``` param1: ?*C.QMarginsF ```
    pub fn New6(param1: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_new6(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMarginsF, other: ?*QMarginsF ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMarginsF_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMarginsF, other: ?*QMarginsF ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMarginsF_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#isNull)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QMarginsF_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#left)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn Left(self: ?*anyopaque) f64 {
        return C.QMarginsF_Left(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#top)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn Top(self: ?*anyopaque) f64 {
        return C.QMarginsF_Top(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#right)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn Right(self: ?*anyopaque) f64 {
        return C.QMarginsF_Right(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#bottom)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn Bottom(self: ?*anyopaque) f64 {
        return C.QMarginsF_Bottom(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#setLeft)
    ///
    /// ``` self: ?*C.QMarginsF, aleft: f64 ```
    pub fn SetLeft(self: ?*anyopaque, aleft: f64) void {
        C.QMarginsF_SetLeft(@ptrCast(self), @floatCast(aleft));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#setTop)
    ///
    /// ``` self: ?*C.QMarginsF, atop: f64 ```
    pub fn SetTop(self: ?*anyopaque, atop: f64) void {
        C.QMarginsF_SetTop(@ptrCast(self), @floatCast(atop));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#setRight)
    ///
    /// ``` self: ?*C.QMarginsF, aright: f64 ```
    pub fn SetRight(self: ?*anyopaque, aright: f64) void {
        C.QMarginsF_SetRight(@ptrCast(self), @floatCast(aright));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#setBottom)
    ///
    /// ``` self: ?*C.QMarginsF, abottom: f64 ```
    pub fn SetBottom(self: ?*anyopaque, abottom: f64) void {
        C.QMarginsF_SetBottom(@ptrCast(self), @floatCast(abottom));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator+=)
    ///
    /// ``` self: ?*C.QMarginsF, margins: ?*C.QMarginsF ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_OperatorPlusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator-=)
    ///
    /// ``` self: ?*C.QMarginsF, margins: ?*C.QMarginsF ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QMarginsF {
        return C.QMarginsF_OperatorMinusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator+=)
    ///
    /// ``` self: ?*C.QMarginsF, addend: f64 ```
    pub fn OperatorPlusAssignWithAddend(self: ?*anyopaque, addend: f64) ?*C.QMarginsF {
        return C.QMarginsF_OperatorPlusAssignWithAddend(@ptrCast(self), @floatCast(addend));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator-=)
    ///
    /// ``` self: ?*C.QMarginsF, subtrahend: f64 ```
    pub fn OperatorMinusAssignWithSubtrahend(self: ?*anyopaque, subtrahend: f64) ?*C.QMarginsF {
        return C.QMarginsF_OperatorMinusAssignWithSubtrahend(@ptrCast(self), @floatCast(subtrahend));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator*=)
    ///
    /// ``` self: ?*C.QMarginsF, factor: f64 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, factor: f64) ?*C.QMarginsF {
        return C.QMarginsF_OperatorMultiplyAssign(@ptrCast(self), @floatCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#operator/=)
    ///
    /// ``` self: ?*C.QMarginsF, divisor: f64 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, divisor: f64) ?*C.QMarginsF {
        return C.QMarginsF_OperatorDivideAssign(@ptrCast(self), @floatCast(divisor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmarginsf.html#toMargins)
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn ToMargins(self: ?*anyopaque) ?*C.QMargins {
        return C.QMarginsF_ToMargins(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMarginsF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMarginsF_Delete(@ptrCast(self));
    }
};
