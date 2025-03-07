const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qsize.html
pub const qsize = struct {
    /// New constructs a new QSize object.
    ///
    /// ``` other: ?*C.QSize ```
    pub fn New(other: ?*anyopaque) ?*C.QSize {
        return C.QSize_new(@ptrCast(other));
    }

    /// New2 constructs a new QSize object and invalidates the source QSize object.
    ///
    /// ``` other: ?*C.QSize ```
    pub fn New2(other: ?*anyopaque) ?*C.QSize {
        return C.QSize_new2(@ptrCast(other));
    }

    /// New3 constructs a new QSize object.
    ///
    ///
    pub fn New3() ?*C.QSize {
        return C.QSize_new3();
    }

    /// New4 constructs a new QSize object.
    ///
    /// ``` w: i32, h: i32 ```
    pub fn New4(w: i32, h: i32) ?*C.QSize {
        return C.QSize_new4(@intCast(w), @intCast(h));
    }

    /// New5 constructs a new QSize object.
    ///
    /// ``` param1: ?*C.QSize ```
    pub fn New5(param1: ?*anyopaque) ?*C.QSize {
        return C.QSize_new5(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QSize, other: ?*QSize ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSize_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QSize, other: ?*QSize ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSize_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#isNull)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSize_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#isEmpty)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QSize_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#isValid)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QSize_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#width)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QSize_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#height)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QSize_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#setWidth)
    ///
    /// ``` self: ?*C.QSize, w: i32 ```
    pub fn SetWidth(self: ?*anyopaque, w: i32) void {
        C.QSize_SetWidth(@ptrCast(self), @intCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#setHeight)
    ///
    /// ``` self: ?*C.QSize, h: i32 ```
    pub fn SetHeight(self: ?*anyopaque, h: i32) void {
        C.QSize_SetHeight(@ptrCast(self), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#transpose)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn Transpose(self: ?*anyopaque) void {
        C.QSize_Transpose(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#transposed)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QSize {
        return C.QSize_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#scale)
    ///
    /// ``` self: ?*C.QSize, w: i32, h: i32, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scale(self: ?*anyopaque, w: i32, h: i32, mode: i64) void {
        C.QSize_Scale(@ptrCast(self), @intCast(w), @intCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#scale)
    ///
    /// ``` self: ?*C.QSize, s: ?*C.QSize, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scale2(self: ?*anyopaque, s: ?*anyopaque, mode: i64) void {
        C.QSize_Scale2(@ptrCast(self), @ptrCast(s), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#scaled)
    ///
    /// ``` self: ?*C.QSize, w: i32, h: i32, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled(self: ?*anyopaque, w: i32, h: i32, mode: i64) ?*C.QSize {
        return C.QSize_Scaled(@ptrCast(self), @intCast(w), @intCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#scaled)
    ///
    /// ``` self: ?*C.QSize, s: ?*C.QSize, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled2(self: ?*anyopaque, s: ?*anyopaque, mode: i64) ?*C.QSize {
        return C.QSize_Scaled2(@ptrCast(self), @ptrCast(s), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#expandedTo)
    ///
    /// ``` self: ?*C.QSize, param1: ?*C.QSize ```
    pub fn ExpandedTo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSize {
        return C.QSize_ExpandedTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#boundedTo)
    ///
    /// ``` self: ?*C.QSize, param1: ?*C.QSize ```
    pub fn BoundedTo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSize {
        return C.QSize_BoundedTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#grownBy)
    ///
    /// ``` self: ?*C.QSize, m: ?*C.QMargins ```
    pub fn GrownBy(self: ?*anyopaque, m: ?*C.QMargins) ?*C.QSize {
        return C.QSize_GrownBy(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#shrunkBy)
    ///
    /// ``` self: ?*C.QSize, m: ?*C.QMargins ```
    pub fn ShrunkBy(self: ?*anyopaque, m: ?*C.QMargins) ?*C.QSize {
        return C.QSize_ShrunkBy(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#operator+=)
    ///
    /// ``` self: ?*C.QSize, param1: ?*C.QSize ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSize {
        return C.QSize_OperatorPlusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#operator-=)
    ///
    /// ``` self: ?*C.QSize, param1: ?*C.QSize ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSize {
        return C.QSize_OperatorMinusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#operator*=)
    ///
    /// ``` self: ?*C.QSize, c: f64 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, c: f64) ?*C.QSize {
        return C.QSize_OperatorMultiplyAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#operator/=)
    ///
    /// ``` self: ?*C.QSize, c: f64 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, c: f64) ?*C.QSize {
        return C.QSize_OperatorDivideAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsize.html#toSizeF)
    ///
    /// ``` self: ?*C.QSize ```
    pub fn ToSizeF(self: ?*anyopaque) ?*C.QSizeF {
        return C.QSize_ToSizeF(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSize ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSize_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsizef.html
pub const qsizef = struct {
    /// New constructs a new QSizeF object.
    ///
    /// ``` other: ?*C.QSizeF ```
    pub fn New(other: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_new(@ptrCast(other));
    }

    /// New2 constructs a new QSizeF object and invalidates the source QSizeF object.
    ///
    /// ``` other: ?*C.QSizeF ```
    pub fn New2(other: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_new2(@ptrCast(other));
    }

    /// New3 constructs a new QSizeF object.
    ///
    ///
    pub fn New3() ?*C.QSizeF {
        return C.QSizeF_new3();
    }

    /// New4 constructs a new QSizeF object.
    ///
    /// ``` sz: ?*C.QSize ```
    pub fn New4(sz: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_new4(@ptrCast(sz));
    }

    /// New5 constructs a new QSizeF object.
    ///
    /// ``` w: f64, h: f64 ```
    pub fn New5(w: f64, h: f64) ?*C.QSizeF {
        return C.QSizeF_new5(@floatCast(w), @floatCast(h));
    }

    /// New6 constructs a new QSizeF object.
    ///
    /// ``` param1: ?*C.QSizeF ```
    pub fn New6(param1: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_new6(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QSizeF, other: ?*QSizeF ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSizeF_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QSizeF, other: ?*QSizeF ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSizeF_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#isNull)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSizeF_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#isEmpty)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QSizeF_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#isValid)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QSizeF_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#width)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QSizeF_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#height)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QSizeF_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#setWidth)
    ///
    /// ``` self: ?*C.QSizeF, w: f64 ```
    pub fn SetWidth(self: ?*anyopaque, w: f64) void {
        C.QSizeF_SetWidth(@ptrCast(self), @floatCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#setHeight)
    ///
    /// ``` self: ?*C.QSizeF, h: f64 ```
    pub fn SetHeight(self: ?*anyopaque, h: f64) void {
        C.QSizeF_SetHeight(@ptrCast(self), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#transpose)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn Transpose(self: ?*anyopaque) void {
        C.QSizeF_Transpose(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#transposed)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#scale)
    ///
    /// ``` self: ?*C.QSizeF, w: f64, h: f64, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scale(self: ?*anyopaque, w: f64, h: f64, mode: i64) void {
        C.QSizeF_Scale(@ptrCast(self), @floatCast(w), @floatCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#scale)
    ///
    /// ``` self: ?*C.QSizeF, s: ?*C.QSizeF, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scale2(self: ?*anyopaque, s: ?*anyopaque, mode: i64) void {
        C.QSizeF_Scale2(@ptrCast(self), @ptrCast(s), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#scaled)
    ///
    /// ``` self: ?*C.QSizeF, w: f64, h: f64, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled(self: ?*anyopaque, w: f64, h: f64, mode: i64) ?*C.QSizeF {
        return C.QSizeF_Scaled(@ptrCast(self), @floatCast(w), @floatCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#scaled)
    ///
    /// ``` self: ?*C.QSizeF, s: ?*C.QSizeF, mode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled2(self: ?*anyopaque, s: ?*anyopaque, mode: i64) ?*C.QSizeF {
        return C.QSizeF_Scaled2(@ptrCast(self), @ptrCast(s), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#expandedTo)
    ///
    /// ``` self: ?*C.QSizeF, param1: ?*C.QSizeF ```
    pub fn ExpandedTo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_ExpandedTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#boundedTo)
    ///
    /// ``` self: ?*C.QSizeF, param1: ?*C.QSizeF ```
    pub fn BoundedTo(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_BoundedTo(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#grownBy)
    ///
    /// ``` self: ?*C.QSizeF, m: ?*C.QMarginsF ```
    pub fn GrownBy(self: ?*anyopaque, m: ?*C.QMarginsF) ?*C.QSizeF {
        return C.QSizeF_GrownBy(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#shrunkBy)
    ///
    /// ``` self: ?*C.QSizeF, m: ?*C.QMarginsF ```
    pub fn ShrunkBy(self: ?*anyopaque, m: ?*C.QMarginsF) ?*C.QSizeF {
        return C.QSizeF_ShrunkBy(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#operator+=)
    ///
    /// ``` self: ?*C.QSizeF, param1: ?*C.QSizeF ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_OperatorPlusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#operator-=)
    ///
    /// ``` self: ?*C.QSizeF, param1: ?*C.QSizeF ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QSizeF {
        return C.QSizeF_OperatorMinusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#operator*=)
    ///
    /// ``` self: ?*C.QSizeF, c: f64 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, c: f64) ?*C.QSizeF {
        return C.QSizeF_OperatorMultiplyAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#operator/=)
    ///
    /// ``` self: ?*C.QSizeF, c: f64 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, c: f64) ?*C.QSizeF {
        return C.QSizeF_OperatorDivideAssign(@ptrCast(self), @floatCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsizef.html#toSize)
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn ToSize(self: ?*anyopaque) ?*C.QSize {
        return C.QSizeF_ToSize(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSizeF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSizeF_Delete(@ptrCast(self));
    }
};
