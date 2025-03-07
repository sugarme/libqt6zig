const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qrect.html
pub const qrect = struct {
    /// New constructs a new QRect object.
    ///
    /// ``` other: ?*C.QRect ```
    pub fn New(other: ?*anyopaque) ?*C.QRect {
        return C.QRect_new(@ptrCast(other));
    }

    /// New2 constructs a new QRect object and invalidates the source QRect object.
    ///
    /// ``` other: ?*C.QRect ```
    pub fn New2(other: ?*anyopaque) ?*C.QRect {
        return C.QRect_new2(@ptrCast(other));
    }

    /// New3 constructs a new QRect object.
    ///
    ///
    pub fn New3() ?*C.QRect {
        return C.QRect_new3();
    }

    /// New4 constructs a new QRect object.
    ///
    /// ``` topleft: ?*C.QPoint, bottomright: ?*C.QPoint ```
    pub fn New4(topleft: ?*anyopaque, bottomright: ?*anyopaque) ?*C.QRect {
        return C.QRect_new4(@ptrCast(topleft), @ptrCast(bottomright));
    }

    /// New5 constructs a new QRect object.
    ///
    /// ``` topleft: ?*C.QPoint, size: ?*C.QSize ```
    pub fn New5(topleft: ?*anyopaque, size: ?*anyopaque) ?*C.QRect {
        return C.QRect_new5(@ptrCast(topleft), @ptrCast(size));
    }

    /// New6 constructs a new QRect object.
    ///
    /// ``` left: i32, top: i32, width: i32, height: i32 ```
    pub fn New6(left: i32, top: i32, width: i32, height: i32) ?*C.QRect {
        return C.QRect_new6(@intCast(left), @intCast(top), @intCast(width), @intCast(height));
    }

    /// New7 constructs a new QRect object.
    ///
    /// ``` param1: ?*C.QRect ```
    pub fn New7(param1: ?*anyopaque) ?*C.QRect {
        return C.QRect_new7(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QRect, other: ?*QRect ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRect_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QRect, other: ?*QRect ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRect_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#isNull)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QRect_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#isEmpty)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QRect_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#isValid)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRect_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#left)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Left(self: ?*anyopaque) i32 {
        return C.QRect_Left(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#top)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Top(self: ?*anyopaque) i32 {
        return C.QRect_Top(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#right)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Right(self: ?*anyopaque) i32 {
        return C.QRect_Right(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#bottom)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Bottom(self: ?*anyopaque) i32 {
        return C.QRect_Bottom(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#normalized)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Normalized(self: ?*anyopaque) ?*C.QRect {
        return C.QRect_Normalized(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#x)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QRect_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#y)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QRect_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setLeft)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn SetLeft(self: ?*anyopaque, pos: i32) void {
        C.QRect_SetLeft(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setTop)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn SetTop(self: ?*anyopaque, pos: i32) void {
        C.QRect_SetTop(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setRight)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn SetRight(self: ?*anyopaque, pos: i32) void {
        C.QRect_SetRight(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setBottom)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn SetBottom(self: ?*anyopaque, pos: i32) void {
        C.QRect_SetBottom(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setX)
    ///
    /// ``` self: ?*C.QRect, x: i32 ```
    pub fn SetX(self: ?*anyopaque, x: i32) void {
        C.QRect_SetX(@ptrCast(self), @intCast(x));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setY)
    ///
    /// ``` self: ?*C.QRect, y: i32 ```
    pub fn SetY(self: ?*anyopaque, y: i32) void {
        C.QRect_SetY(@ptrCast(self), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setTopLeft)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn SetTopLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_SetTopLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setBottomRight)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn SetBottomRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_SetBottomRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setTopRight)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn SetTopRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_SetTopRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setBottomLeft)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn SetBottomLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_SetBottomLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#topLeft)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn TopLeft(self: ?*anyopaque) ?*C.QPoint {
        return C.QRect_TopLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#bottomRight)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn BottomRight(self: ?*anyopaque) ?*C.QPoint {
        return C.QRect_BottomRight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#topRight)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn TopRight(self: ?*anyopaque) ?*C.QPoint {
        return C.QRect_TopRight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#bottomLeft)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn BottomLeft(self: ?*anyopaque) ?*C.QPoint {
        return C.QRect_BottomLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#center)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Center(self: ?*anyopaque) ?*C.QPoint {
        return C.QRect_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveLeft)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn MoveLeft(self: ?*anyopaque, pos: i32) void {
        C.QRect_MoveLeft(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveTop)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn MoveTop(self: ?*anyopaque, pos: i32) void {
        C.QRect_MoveTop(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveRight)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn MoveRight(self: ?*anyopaque, pos: i32) void {
        C.QRect_MoveRight(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveBottom)
    ///
    /// ``` self: ?*C.QRect, pos: i32 ```
    pub fn MoveBottom(self: ?*anyopaque, pos: i32) void {
        C.QRect_MoveBottom(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveTopLeft)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveTopLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveTopLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveBottomRight)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveBottomRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveBottomRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveTopRight)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveTopRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveTopRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveBottomLeft)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveBottomLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveBottomLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveCenter)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveCenter(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveCenter(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#translate)
    ///
    /// ``` self: ?*C.QRect, dx: i32, dy: i32 ```
    pub fn Translate(self: ?*anyopaque, dx: i32, dy: i32) void {
        C.QRect_Translate(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#translate)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn TranslateWithQPoint(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_TranslateWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#translated)
    ///
    /// ``` self: ?*C.QRect, dx: i32, dy: i32 ```
    pub fn Translated(self: ?*anyopaque, dx: i32, dy: i32) ?*C.QRect {
        return C.QRect_Translated(@ptrCast(self), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#translated)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn TranslatedWithQPoint(self: ?*anyopaque, p: ?*anyopaque) ?*C.QRect {
        return C.QRect_TranslatedWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#transposed)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QRect {
        return C.QRect_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveTo)
    ///
    /// ``` self: ?*C.QRect, x: i32, t: i32 ```
    pub fn MoveTo(self: ?*anyopaque, x: i32, t: i32) void {
        C.QRect_MoveTo(@ptrCast(self), @intCast(x), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#moveTo)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn MoveToWithQPoint(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRect_MoveToWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setRect)
    ///
    /// ``` self: ?*C.QRect, x: i32, y: i32, w: i32, h: i32 ```
    pub fn SetRect(self: ?*anyopaque, x: i32, y: i32, w: i32, h: i32) void {
        C.QRect_SetRect(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#getRect)
    ///
    /// ``` self: ?*C.QRect, x: ?*i32, y: ?*i32, w: ?*i32, h: ?*i32 ```
    pub fn GetRect(self: ?*anyopaque, x: ?*anyopaque, y: ?*anyopaque, w: ?*anyopaque, h: ?*anyopaque) void {
        C.QRect_GetRect(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setCoords)
    ///
    /// ``` self: ?*C.QRect, x1: i32, y1: i32, x2: i32, y2: i32 ```
    pub fn SetCoords(self: ?*anyopaque, x1: i32, y1: i32, x2: i32, y2: i32) void {
        C.QRect_SetCoords(@ptrCast(self), @intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#getCoords)
    ///
    /// ``` self: ?*C.QRect, x1: ?*i32, y1: ?*i32, x2: ?*i32, y2: ?*i32 ```
    pub fn GetCoords(self: ?*anyopaque, x1: ?*anyopaque, y1: ?*anyopaque, x2: ?*anyopaque, y2: ?*anyopaque) void {
        C.QRect_GetCoords(@ptrCast(self), @intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#adjust)
    ///
    /// ``` self: ?*C.QRect, x1: i32, y1: i32, x2: i32, y2: i32 ```
    pub fn Adjust(self: ?*anyopaque, x1: i32, y1: i32, x2: i32, y2: i32) void {
        C.QRect_Adjust(@ptrCast(self), @intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#adjusted)
    ///
    /// ``` self: ?*C.QRect, x1: i32, y1: i32, x2: i32, y2: i32 ```
    pub fn Adjusted(self: ?*anyopaque, x1: i32, y1: i32, x2: i32, y2: i32) ?*C.QRect {
        return C.QRect_Adjusted(@ptrCast(self), @intCast(x1), @intCast(y1), @intCast(x2), @intCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#size)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QRect_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#width)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QRect_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#height)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QRect_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setWidth)
    ///
    /// ``` self: ?*C.QRect, w: i32 ```
    pub fn SetWidth(self: ?*anyopaque, w: i32) void {
        C.QRect_SetWidth(@ptrCast(self), @intCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setHeight)
    ///
    /// ``` self: ?*C.QRect, h: i32 ```
    pub fn SetHeight(self: ?*anyopaque, h: i32) void {
        C.QRect_SetHeight(@ptrCast(self), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#setSize)
    ///
    /// ``` self: ?*C.QRect, s: ?*C.QSize ```
    pub fn SetSize(self: ?*anyopaque, s: ?*anyopaque) void {
        C.QRect_SetSize(@ptrCast(self), @ptrCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator|)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn OperatorBitwiseOr(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRect {
        return C.QRect_OperatorBitwiseOr(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator&)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn OperatorBitwiseAnd(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRect {
        return C.QRect_OperatorBitwiseAnd(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator|=)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn OperatorBitwiseOrAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRect_OperatorBitwiseOrAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator&=)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn OperatorBitwiseAndAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRect_OperatorBitwiseAndAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn Contains(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRect_Contains(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint ```
    pub fn ContainsWithQPoint(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QRect_ContainsWithQPoint(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, x: i32, y: i32 ```
    pub fn Contains2(self: ?*anyopaque, x: i32, y: i32) bool {
        return C.QRect_Contains2(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, x: i32, y: i32, proper: bool ```
    pub fn Contains3(self: ?*anyopaque, x: i32, y: i32, proper: bool) bool {
        return C.QRect_Contains3(@ptrCast(self), @intCast(x), @intCast(y), proper);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#united)
    ///
    /// ``` self: ?*C.QRect, other: ?*C.QRect ```
    pub fn United(self: ?*anyopaque, other: ?*anyopaque) ?*C.QRect {
        return C.QRect_United(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#intersected)
    ///
    /// ``` self: ?*C.QRect, other: ?*C.QRect ```
    pub fn Intersected(self: ?*anyopaque, other: ?*anyopaque) ?*C.QRect {
        return C.QRect_Intersected(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#intersects)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect ```
    pub fn Intersects(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRect_Intersects(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#marginsAdded)
    ///
    /// ``` self: ?*C.QRect, margins: ?*C.QMargins ```
    pub fn MarginsAdded(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRect {
        return C.QRect_MarginsAdded(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#marginsRemoved)
    ///
    /// ``` self: ?*C.QRect, margins: ?*C.QMargins ```
    pub fn MarginsRemoved(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRect {
        return C.QRect_MarginsRemoved(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator+=)
    ///
    /// ``` self: ?*C.QRect, margins: ?*C.QMargins ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRect {
        return C.QRect_OperatorPlusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#operator-=)
    ///
    /// ``` self: ?*C.QRect, margins: ?*C.QMargins ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRect {
        return C.QRect_OperatorMinusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#span)
    ///
    /// ``` p1: ?*C.QPoint, p2: ?*C.QPoint ```
    pub fn Span(p1: ?*anyopaque, p2: ?*anyopaque) ?*C.QRect {
        return C.QRect_Span(@ptrCast(p1), @ptrCast(p2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#toRectF)
    ///
    /// ``` self: ?*C.QRect ```
    pub fn ToRectF(self: ?*anyopaque) ?*C.QRectF {
        return C.QRect_ToRectF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, r: ?*C.QRect, proper: bool ```
    pub fn Contains22(self: ?*anyopaque, r: ?*anyopaque, proper: bool) bool {
        return C.QRect_Contains22(@ptrCast(self), @ptrCast(r), proper);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrect.html#contains)
    ///
    /// ``` self: ?*C.QRect, p: ?*C.QPoint, proper: bool ```
    pub fn Contains23(self: ?*anyopaque, p: ?*anyopaque, proper: bool) bool {
        return C.QRect_Contains23(@ptrCast(self), @ptrCast(p), proper);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRect ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRect_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qrectf.html
pub const qrectf = struct {
    /// New constructs a new QRectF object.
    ///
    /// ``` other: ?*C.QRectF ```
    pub fn New(other: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new(@ptrCast(other));
    }

    /// New2 constructs a new QRectF object and invalidates the source QRectF object.
    ///
    /// ``` other: ?*C.QRectF ```
    pub fn New2(other: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new2(@ptrCast(other));
    }

    /// New3 constructs a new QRectF object.
    ///
    ///
    pub fn New3() ?*C.QRectF {
        return C.QRectF_new3();
    }

    /// New4 constructs a new QRectF object.
    ///
    /// ``` topleft: ?*C.QPointF, size: ?*C.QSizeF ```
    pub fn New4(topleft: ?*anyopaque, size: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new4(@ptrCast(topleft), @ptrCast(size));
    }

    /// New5 constructs a new QRectF object.
    ///
    /// ``` topleft: ?*C.QPointF, bottomRight: ?*C.QPointF ```
    pub fn New5(topleft: ?*anyopaque, bottomRight: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new5(@ptrCast(topleft), @ptrCast(bottomRight));
    }

    /// New6 constructs a new QRectF object.
    ///
    /// ``` left: f64, top: f64, width: f64, height: f64 ```
    pub fn New6(left: f64, top: f64, width: f64, height: f64) ?*C.QRectF {
        return C.QRectF_new6(@floatCast(left), @floatCast(top), @floatCast(width), @floatCast(height));
    }

    /// New7 constructs a new QRectF object.
    ///
    /// ``` rect: ?*C.QRect ```
    pub fn New7(rect: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new7(@ptrCast(rect));
    }

    /// New8 constructs a new QRectF object.
    ///
    /// ``` param1: ?*C.QRectF ```
    pub fn New8(param1: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_new8(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QRectF, other: ?*QRectF ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRectF_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QRectF, other: ?*QRectF ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRectF_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#isNull)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QRectF_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#isEmpty)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QRectF_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#isValid)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRectF_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#normalized)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Normalized(self: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_Normalized(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#left)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Left(self: ?*anyopaque) f64 {
        return C.QRectF_Left(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#top)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Top(self: ?*anyopaque) f64 {
        return C.QRectF_Top(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#right)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Right(self: ?*anyopaque) f64 {
        return C.QRectF_Right(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#bottom)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Bottom(self: ?*anyopaque) f64 {
        return C.QRectF_Bottom(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#x)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn X(self: ?*anyopaque) f64 {
        return C.QRectF_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#y)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Y(self: ?*anyopaque) f64 {
        return C.QRectF_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setLeft)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetLeft(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetLeft(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setTop)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetTop(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetTop(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setRight)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetRight(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetRight(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setBottom)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetBottom(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetBottom(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setX)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetX(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetX(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setY)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn SetY(self: ?*anyopaque, pos: f64) void {
        C.QRectF_SetY(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#topLeft)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn TopLeft(self: ?*anyopaque) ?*C.QPointF {
        return C.QRectF_TopLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#bottomRight)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn BottomRight(self: ?*anyopaque) ?*C.QPointF {
        return C.QRectF_BottomRight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#topRight)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn TopRight(self: ?*anyopaque) ?*C.QPointF {
        return C.QRectF_TopRight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#bottomLeft)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn BottomLeft(self: ?*anyopaque) ?*C.QPointF {
        return C.QRectF_BottomLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#center)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Center(self: ?*anyopaque) ?*C.QPointF {
        return C.QRectF_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setTopLeft)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn SetTopLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_SetTopLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setBottomRight)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn SetBottomRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_SetBottomRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setTopRight)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn SetTopRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_SetTopRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setBottomLeft)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn SetBottomLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_SetBottomLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveLeft)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn MoveLeft(self: ?*anyopaque, pos: f64) void {
        C.QRectF_MoveLeft(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveTop)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn MoveTop(self: ?*anyopaque, pos: f64) void {
        C.QRectF_MoveTop(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveRight)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn MoveRight(self: ?*anyopaque, pos: f64) void {
        C.QRectF_MoveRight(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveBottom)
    ///
    /// ``` self: ?*C.QRectF, pos: f64 ```
    pub fn MoveBottom(self: ?*anyopaque, pos: f64) void {
        C.QRectF_MoveBottom(@ptrCast(self), @floatCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveTopLeft)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveTopLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveTopLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveBottomRight)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveBottomRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveBottomRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveTopRight)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveTopRight(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveTopRight(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveBottomLeft)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveBottomLeft(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveBottomLeft(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveCenter)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveCenter(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveCenter(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#translate)
    ///
    /// ``` self: ?*C.QRectF, dx: f64, dy: f64 ```
    pub fn Translate(self: ?*anyopaque, dx: f64, dy: f64) void {
        C.QRectF_Translate(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#translate)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn TranslateWithQPointF(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_TranslateWithQPointF(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#translated)
    ///
    /// ``` self: ?*C.QRectF, dx: f64, dy: f64 ```
    pub fn Translated(self: ?*anyopaque, dx: f64, dy: f64) ?*C.QRectF {
        return C.QRectF_Translated(@ptrCast(self), @floatCast(dx), @floatCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#translated)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn TranslatedWithQPointF(self: ?*anyopaque, p: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_TranslatedWithQPointF(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#transposed)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Transposed(self: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_Transposed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveTo)
    ///
    /// ``` self: ?*C.QRectF, x: f64, y: f64 ```
    pub fn MoveTo(self: ?*anyopaque, x: f64, y: f64) void {
        C.QRectF_MoveTo(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#moveTo)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn MoveToWithQPointF(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QRectF_MoveToWithQPointF(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setRect)
    ///
    /// ``` self: ?*C.QRectF, x: f64, y: f64, w: f64, h: f64 ```
    pub fn SetRect(self: ?*anyopaque, x: f64, y: f64, w: f64, h: f64) void {
        C.QRectF_SetRect(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#getRect)
    ///
    /// ``` self: ?*C.QRectF, x: ?*f64, y: ?*f64, w: ?*f64, h: ?*f64 ```
    pub fn GetRect(self: ?*anyopaque, x: ?*anyopaque, y: ?*anyopaque, w: ?*anyopaque, h: ?*anyopaque) void {
        C.QRectF_GetRect(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(w), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setCoords)
    ///
    /// ``` self: ?*C.QRectF, x1: f64, y1: f64, x2: f64, y2: f64 ```
    pub fn SetCoords(self: ?*anyopaque, x1: f64, y1: f64, x2: f64, y2: f64) void {
        C.QRectF_SetCoords(@ptrCast(self), @floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#getCoords)
    ///
    /// ``` self: ?*C.QRectF, x1: ?*f64, y1: ?*f64, x2: ?*f64, y2: ?*f64 ```
    pub fn GetCoords(self: ?*anyopaque, x1: ?*anyopaque, y1: ?*anyopaque, x2: ?*anyopaque, y2: ?*anyopaque) void {
        C.QRectF_GetCoords(@ptrCast(self), @floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#adjust)
    ///
    /// ``` self: ?*C.QRectF, x1: f64, y1: f64, x2: f64, y2: f64 ```
    pub fn Adjust(self: ?*anyopaque, x1: f64, y1: f64, x2: f64, y2: f64) void {
        C.QRectF_Adjust(@ptrCast(self), @floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#adjusted)
    ///
    /// ``` self: ?*C.QRectF, x1: f64, y1: f64, x2: f64, y2: f64 ```
    pub fn Adjusted(self: ?*anyopaque, x1: f64, y1: f64, x2: f64, y2: f64) ?*C.QRectF {
        return C.QRectF_Adjusted(@ptrCast(self), @floatCast(x1), @floatCast(y1), @floatCast(x2), @floatCast(y2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#size)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Size(self: ?*anyopaque) ?*C.QSizeF {
        return C.QRectF_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#width)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QRectF_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#height)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QRectF_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setWidth)
    ///
    /// ``` self: ?*C.QRectF, w: f64 ```
    pub fn SetWidth(self: ?*anyopaque, w: f64) void {
        C.QRectF_SetWidth(@ptrCast(self), @floatCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setHeight)
    ///
    /// ``` self: ?*C.QRectF, h: f64 ```
    pub fn SetHeight(self: ?*anyopaque, h: f64) void {
        C.QRectF_SetHeight(@ptrCast(self), @floatCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#setSize)
    ///
    /// ``` self: ?*C.QRectF, s: ?*C.QSizeF ```
    pub fn SetSize(self: ?*anyopaque, s: ?*anyopaque) void {
        C.QRectF_SetSize(@ptrCast(self), @ptrCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator|)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn OperatorBitwiseOr(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_OperatorBitwiseOr(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator&)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn OperatorBitwiseAnd(self: ?*anyopaque, r: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_OperatorBitwiseAnd(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator|=)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn OperatorBitwiseOrAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRectF_OperatorBitwiseOrAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator&=)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn OperatorBitwiseAndAssign(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QRectF_OperatorBitwiseAndAssign(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#contains)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn Contains(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRectF_Contains(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#contains)
    ///
    /// ``` self: ?*C.QRectF, p: ?*C.QPointF ```
    pub fn ContainsWithQPointF(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QRectF_ContainsWithQPointF(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#contains)
    ///
    /// ``` self: ?*C.QRectF, x: f64, y: f64 ```
    pub fn Contains2(self: ?*anyopaque, x: f64, y: f64) bool {
        return C.QRectF_Contains2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#united)
    ///
    /// ``` self: ?*C.QRectF, other: ?*C.QRectF ```
    pub fn United(self: ?*anyopaque, other: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_United(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#intersected)
    ///
    /// ``` self: ?*C.QRectF, other: ?*C.QRectF ```
    pub fn Intersected(self: ?*anyopaque, other: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_Intersected(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#intersects)
    ///
    /// ``` self: ?*C.QRectF, r: ?*C.QRectF ```
    pub fn Intersects(self: ?*anyopaque, r: ?*anyopaque) bool {
        return C.QRectF_Intersects(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#marginsAdded)
    ///
    /// ``` self: ?*C.QRectF, margins: ?*C.QMarginsF ```
    pub fn MarginsAdded(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_MarginsAdded(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#marginsRemoved)
    ///
    /// ``` self: ?*C.QRectF, margins: ?*C.QMarginsF ```
    pub fn MarginsRemoved(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_MarginsRemoved(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator+=)
    ///
    /// ``` self: ?*C.QRectF, margins: ?*C.QMarginsF ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_OperatorPlusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#operator-=)
    ///
    /// ``` self: ?*C.QRectF, margins: ?*C.QMarginsF ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, margins: ?*anyopaque) ?*C.QRectF {
        return C.QRectF_OperatorMinusAssign(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#toRect)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn ToRect(self: ?*anyopaque) ?*C.QRect {
        return C.QRectF_ToRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrectf.html#toAlignedRect)
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn ToAlignedRect(self: ?*anyopaque) ?*C.QRect {
        return C.QRectF_ToAlignedRect(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRectF ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRectF_Delete(@ptrCast(self));
    }
};
