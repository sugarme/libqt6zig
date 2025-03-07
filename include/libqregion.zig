const C = @import("qt6c");
const qregion_enums = enums;

/// https://doc.qt.io/qt-6/qregion.html
pub const qregion = struct {
    /// New constructs a new QRegion object.
    ///
    ///
    pub fn New() ?*C.QRegion {
        return C.QRegion_new();
    }

    /// New2 constructs a new QRegion object.
    ///
    /// ``` x: i32, y: i32, w: i32, h: i32 ```
    pub fn New2(x: i32, y: i32, w: i32, h: i32) ?*C.QRegion {
        return C.QRegion_new2(@intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// New3 constructs a new QRegion object.
    ///
    /// ``` r: ?*C.QRect ```
    pub fn New3(r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_new3(@ptrCast(r));
    }

    /// New4 constructs a new QRegion object.
    ///
    /// ``` region: ?*C.QRegion ```
    pub fn New4(region: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_new4(@ptrCast(region));
    }

    /// New5 constructs a new QRegion object.
    ///
    /// ``` bitmap: ?*C.QBitmap ```
    pub fn New5(bitmap: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_new5(@ptrCast(bitmap));
    }

    /// New6 constructs a new QRegion object.
    ///
    /// ``` x: i32, y: i32, w: i32, h: i32, t: qregion_enums.RegionType ```
    pub fn New6(x: i32, y: i32, w: i32, h: i32, t: i64) ?*C.QRegion {
        return C.QRegion_new6(@intCast(x), @intCast(y), @intCast(w), @intCast(h), @intCast(t));
    }

    /// New7 constructs a new QRegion object.
    ///
    /// ``` r: ?*C.QRect, t: qregion_enums.RegionType ```
    pub fn New7(r: ?*anyopaque, t: i64) ?*C.QRegion {
        return C.QRegion_new7(@ptrCast(r), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator=)
    ///
    /// ``` self: ?*C.QRegion, param1: ?*C.QRegion ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QRegion_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#swap)
    ///
    /// ``` self: ?*C.QRegion, other: ?*C.QRegion ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRegion_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#isEmpty)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QRegion_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#isNull)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QRegion_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#begin)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn Begin(self: ?*anyopaque) ?*C.QRect {
        return C.QRegion_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#cbegin)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn Cbegin(self: ?*anyopaque) ?*C.QRect {
        return C.QRegion_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#end)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn End(self: ?*anyopaque) ?*C.QRect {
        return C.QRegion_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#cend)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn Cend(self: ?*anyopaque) ?*C.QRect {
        return C.QRegion_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#contains)
    ///
    /// ``` self: ?*C.QRegion, p: ?*C.QPoint ```
    pub fn Contains(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QRegion_Contains(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#contains)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn ContainsWithQRect(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRegion_ContainsWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#translate)
    ///
    /// ``` self: ?*C.QRegion, dx: i32, dy: i32 ```
    pub fn Translate(self: ?*anyopaque, dx: i32, dy: i32) void {
        C.QRegion_Translate(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#translate)
    ///
    /// ``` self: ?*C.QRegion, p: ?*C.QPoint ```
    pub fn TranslateWithQPoint(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRegion_TranslateWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#translated)
    ///
    /// ``` self: ?*C.QRegion, dx: i32, dy: i32 ```
    pub fn Translated(self: ?*anyopaque, dx: i32, dy: i32) ?*C.QRegion {
        return C.QRegion_Translated(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#translated)
    ///
    /// ``` self: ?*C.QRegion, p: ?*C.QPoint ```
    pub fn TranslatedWithQPoint(self: ?*anyopaque, p: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_TranslatedWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#united)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn United(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_United(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#united)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn UnitedWithQRect(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_UnitedWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#intersected)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn Intersected(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_Intersected(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#intersected)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn IntersectedWithQRect(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_IntersectedWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#subtracted)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn Subtracted(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_Subtracted(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#xored)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn Xored(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_Xored(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#intersects)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn Intersects(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRegion_Intersects(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#intersects)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn IntersectsWithQRect(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRegion_IntersectsWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#boundingRect)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn BoundingRect(self: ?*anyopaque) ?*C.QRect {
        return C.QRegion_BoundingRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#setRects)
    ///
    /// ``` self: ?*C.QRegion, rect: ?*C.QRect, num: i32 ```
    pub fn SetRects(self: ?*anyopaque, rect: ?*anyopaque, num: i32) void {
        C.QRegion_SetRects(@ptrCast(self), @ptrCast(rect), @intCast(num));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#rectCount)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn RectCount(self: ?*anyopaque) i32 {
        return C.QRegion_RectCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator|)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseOr(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorBitwiseOr(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator+)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorPlus(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorPlus(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator+)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn OperatorPlusWithQRect(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorPlusWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator&)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseAnd(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorBitwiseAnd(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator&)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn OperatorBitwiseAndWithQRect(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorBitwiseAndWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator-)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorMinus(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorMinus(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator^)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseNot(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorBitwiseNot(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator|=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseOrAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRegion_OperatorBitwiseOrAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator+=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorPlusAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator+=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn OperatorPlusAssignWithQRect(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorPlusAssignWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator&=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseAndAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRegion_OperatorBitwiseAndAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator&=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRect ```
    pub fn OperatorBitwiseAndAssignWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRegion_OperatorBitwiseAndAssignWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator-=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRegion {
        return C.QRegion_OperatorMinusAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator^=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorBitwiseNotAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRegion_OperatorBitwiseNotAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator==)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorEqual(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRegion_OperatorEqual(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator!=)
    ///
    /// ``` self: ?*C.QRegion, r: ?*C.QRegion ```
    pub fn OperatorNotEqual(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRegion_OperatorNotEqual(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregion.html#operator QVariant)
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QRegion_ToQVariant(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRegion ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRegion_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qregion.html#types
pub const enums = struct {
    pub const RegionType = enum {
        pub const Rectangle: i32 = 0;
        pub const Ellipse: i32 = 1;
    };
};
