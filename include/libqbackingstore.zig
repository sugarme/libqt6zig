const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qbackingstore.html
pub const qbackingstore = struct {
    /// New constructs a new QBackingStore object.
    ///
    /// ``` window: ?*C.QWindow ```
    pub fn New(window: ?*anyopaque) ?*C.QBackingStore {
        return C.QBackingStore_new(@ptrCast(window));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#window)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn Window(self: ?*anyopaque) ?*C.QWindow {
        return C.QBackingStore_Window(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#paintDevice)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn PaintDevice(self: ?*anyopaque) ?*C.QPaintDevice {
        return C.QBackingStore_PaintDevice(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#flush)
    ///
    /// ``` self: ?*C.QBackingStore, region: ?*C.QRegion ```
    pub fn Flush(self: ?*anyopaque, region: ?*anyopaque) void {
        C.QBackingStore_Flush(@ptrCast(self), @ptrCast(region));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#resize)
    ///
    /// ``` self: ?*C.QBackingStore, size: ?*C.QSize ```
    pub fn Resize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QBackingStore_Resize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#size)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QBackingStore_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#scroll)
    ///
    /// ``` self: ?*C.QBackingStore, area: ?*C.QRegion, dx: i32, dy: i32 ```
    pub fn Scroll(self: ?*anyopaque, area: ?*anyopaque, dx: i32, dy: i32) bool {
        return C.QBackingStore_Scroll(@ptrCast(self), @ptrCast(area), @intCast(dx), @intCast(dy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#beginPaint)
    ///
    /// ``` self: ?*C.QBackingStore, param1: ?*C.QRegion ```
    pub fn BeginPaint(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBackingStore_BeginPaint(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#endPaint)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn EndPaint(self: ?*anyopaque) void {
        C.QBackingStore_EndPaint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#setStaticContents)
    ///
    /// ``` self: ?*C.QBackingStore, region: ?*C.QRegion ```
    pub fn SetStaticContents(self: ?*anyopaque, region: ?*anyopaque) void {
        C.QBackingStore_SetStaticContents(@ptrCast(self), @ptrCast(region));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#staticContents)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn StaticContents(self: ?*anyopaque) ?*C.QRegion {
        return C.QBackingStore_StaticContents(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#hasStaticContents)
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn HasStaticContents(self: ?*anyopaque) bool {
        return C.QBackingStore_HasStaticContents(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#flush)
    ///
    /// ``` self: ?*C.QBackingStore, region: ?*C.QRegion, window: ?*C.QWindow ```
    pub fn Flush2(self: ?*anyopaque, region: ?*anyopaque, window: ?*anyopaque) void {
        C.QBackingStore_Flush2(@ptrCast(self), @ptrCast(region), @ptrCast(window));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbackingstore.html#flush)
    ///
    /// ``` self: ?*C.QBackingStore, region: ?*C.QRegion, window: ?*C.QWindow, offset: ?*C.QPoint ```
    pub fn Flush3(self: ?*anyopaque, region: ?*anyopaque, window: ?*anyopaque, offset: ?*anyopaque) void {
        C.QBackingStore_Flush3(@ptrCast(self), @ptrCast(region), @ptrCast(window), @ptrCast(offset));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBackingStore ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBackingStore_Delete(@ptrCast(self));
    }
};
