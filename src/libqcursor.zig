const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qcursor.html
pub const qcursor = struct {
    /// New constructs a new QCursor object.
    ///
    ///
    pub fn New() ?*C.QCursor {
        return C.QCursor_new();
    }

    /// New2 constructs a new QCursor object.
    ///
    /// ``` shape: qnamespace_enums.CursorShape ```
    pub fn New2(shape: i64) ?*C.QCursor {
        return C.QCursor_new2(@intCast(shape));
    }

    /// New3 constructs a new QCursor object.
    ///
    /// ``` bitmap: ?*C.QBitmap, mask: ?*C.QBitmap ```
    pub fn New3(bitmap: ?*anyopaque, mask: ?*anyopaque) ?*C.QCursor {
        return C.QCursor_new3(@ptrCast(bitmap), @ptrCast(mask));
    }

    /// New4 constructs a new QCursor object.
    ///
    /// ``` pixmap: ?*C.QPixmap ```
    pub fn New4(pixmap: ?*anyopaque) ?*C.QCursor {
        return C.QCursor_new4(@ptrCast(pixmap));
    }

    /// New5 constructs a new QCursor object.
    ///
    /// ``` cursor: ?*C.QCursor ```
    pub fn New5(cursor: ?*anyopaque) ?*C.QCursor {
        return C.QCursor_new5(@ptrCast(cursor));
    }

    /// New6 constructs a new QCursor object.
    ///
    /// ``` bitmap: ?*C.QBitmap, mask: ?*C.QBitmap, hotX: i32 ```
    pub fn New6(bitmap: ?*anyopaque, mask: ?*anyopaque, hotX: i32) ?*C.QCursor {
        return C.QCursor_new6(@ptrCast(bitmap), @ptrCast(mask), @intCast(hotX));
    }

    /// New7 constructs a new QCursor object.
    ///
    /// ``` bitmap: ?*C.QBitmap, mask: ?*C.QBitmap, hotX: i32, hotY: i32 ```
    pub fn New7(bitmap: ?*anyopaque, mask: ?*anyopaque, hotX: i32, hotY: i32) ?*C.QCursor {
        return C.QCursor_new7(@ptrCast(bitmap), @ptrCast(mask), @intCast(hotX), @intCast(hotY));
    }

    /// New8 constructs a new QCursor object.
    ///
    /// ``` pixmap: ?*C.QPixmap, hotX: i32 ```
    pub fn New8(pixmap: ?*anyopaque, hotX: i32) ?*C.QCursor {
        return C.QCursor_new8(@ptrCast(pixmap), @intCast(hotX));
    }

    /// New9 constructs a new QCursor object.
    ///
    /// ``` pixmap: ?*C.QPixmap, hotX: i32, hotY: i32 ```
    pub fn New9(pixmap: ?*anyopaque, hotX: i32, hotY: i32) ?*C.QCursor {
        return C.QCursor_new9(@ptrCast(pixmap), @intCast(hotX), @intCast(hotY));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#operator=)
    ///
    /// ``` self: ?*C.QCursor, cursor: ?*C.QCursor ```
    pub fn OperatorAssign(self: ?*anyopaque, cursor: ?*anyopaque) void {
        C.QCursor_OperatorAssign(@ptrCast(self), @ptrCast(cursor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#swap)
    ///
    /// ``` self: ?*C.QCursor, other: ?*C.QCursor ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCursor_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#operator QVariant)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QCursor_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#shape)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn Shape(self: ?*anyopaque) i64 {
        return C.QCursor_Shape(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#setShape)
    ///
    /// ``` self: ?*C.QCursor, newShape: qnamespace_enums.CursorShape ```
    pub fn SetShape(self: ?*anyopaque, newShape: i64) void {
        C.QCursor_SetShape(@ptrCast(self), @intCast(newShape));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#bitmap)
    ///
    /// ``` self: ?*C.QCursor, param1: qnamespace_enums.ReturnByValueConstant ```
    pub fn Bitmap(self: ?*anyopaque, param1: i64) ?*C.QBitmap {
        return C.QCursor_Bitmap(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#mask)
    ///
    /// ``` self: ?*C.QCursor, param1: qnamespace_enums.ReturnByValueConstant ```
    pub fn Mask(self: ?*anyopaque, param1: i64) ?*C.QBitmap {
        return C.QCursor_Mask(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#bitmap)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn Bitmap2(self: ?*anyopaque) ?*C.QBitmap {
        return C.QCursor_Bitmap2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#mask)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn Mask2(self: ?*anyopaque) ?*C.QBitmap {
        return C.QCursor_Mask2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#pixmap)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn Pixmap(self: ?*anyopaque) ?*C.QPixmap {
        return C.QCursor_Pixmap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#hotSpot)
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn HotSpot(self: ?*anyopaque) ?*C.QPoint {
        return C.QCursor_HotSpot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#pos)
    ///
    ///
    pub fn Pos() ?*C.QPoint {
        return C.QCursor_Pos();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#pos)
    ///
    /// ``` screen: ?*C.QScreen ```
    pub fn PosWithScreen(screen: ?*anyopaque) ?*C.QPoint {
        return C.QCursor_PosWithScreen(@ptrCast(screen));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#setPos)
    ///
    /// ``` x: i32, y: i32 ```
    pub fn SetPos(x: i32, y: i32) void {
        C.QCursor_SetPos(@intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#setPos)
    ///
    /// ``` screen: ?*C.QScreen, x: i32, y: i32 ```
    pub fn SetPos2(screen: ?*anyopaque, x: i32, y: i32) void {
        C.QCursor_SetPos2(@ptrCast(screen), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#setPos)
    ///
    /// ``` p: ?*C.QPoint ```
    pub fn SetPosWithQPoint(p: ?*anyopaque) void {
        C.QCursor_SetPosWithQPoint(@ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcursor.html#setPos)
    ///
    /// ``` screen: ?*C.QScreen, p: ?*C.QPoint ```
    pub fn SetPos3(screen: ?*anyopaque, p: ?*anyopaque) void {
        C.QCursor_SetPos3(@ptrCast(screen), @ptrCast(p));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCursor ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCursor_Delete(@ptrCast(self));
    }
};
