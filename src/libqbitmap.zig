const C = @import("qt6c");
const qimage_enums = @import("libqimage.zig").enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpaintdevice_enums = @import("libqpaintdevice.zig").enums;

/// https://doc.qt.io/qt-6/qbitmap.html
pub const qbitmap = struct {
    /// New constructs a new QBitmap object.
    ///
    ///
    pub fn New() ?*C.QBitmap {
        return C.QBitmap_new();
    }

    /// New2 constructs a new QBitmap object.
    ///
    /// ``` param1: ?*C.QPixmap ```
    pub fn New2(param1: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QBitmap object.
    ///
    /// ``` w: i32, h: i32 ```
    pub fn New3(w: i32, h: i32) ?*C.QBitmap {
        return C.QBitmap_new3(@intCast(w), @intCast(h));
    }

    /// New4 constructs a new QBitmap object.
    ///
    /// ``` param1: ?*C.QSize ```
    pub fn New4(param1: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_new4(@ptrCast(param1));
    }

    /// New5 constructs a new QBitmap object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New5(fileName: []const u8) ?*C.QBitmap {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QBitmap_new5(fileName_str);
    }

    /// New6 constructs a new QBitmap object.
    ///
    /// ``` param1: ?*C.QBitmap ```
    pub fn New6(param1: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_new6(@ptrCast(param1));
    }

    /// New7 constructs a new QBitmap object.
    ///
    /// ``` fileName: []const u8, format: []const u8 ```
    pub fn New7(fileName: []const u8, format: []const u8) ?*C.QBitmap {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);

        return C.QBitmap_new7(fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#operator=)
    ///
    /// ``` self: ?*C.QBitmap, param1: ?*C.QPixmap ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBitmap_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#swap)
    ///
    /// ``` self: ?*C.QBitmap, other: ?*C.QBitmap ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBitmap_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#operator QVariant)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QBitmap_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#clear)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QBitmap_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#fromImage)
    ///
    /// ``` image: ?*C.QImage ```
    pub fn FromImage(image: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_FromImage(@ptrCast(image));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#fromData)
    ///
    /// ``` size: ?*C.QSize, bits: ?*u8 ```
    pub fn FromData(size: ?*anyopaque, bits: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_FromData(@ptrCast(size), @intCast(bits));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#fromPixmap)
    ///
    /// ``` pixmap: ?*C.QPixmap ```
    pub fn FromPixmap(pixmap: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_FromPixmap(@ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#transformed)
    ///
    /// ``` self: ?*C.QBitmap, matrix: ?*C.QTransform ```
    pub fn Transformed(self: ?*anyopaque, matrix: ?*anyopaque) ?*C.QBitmap {
        return C.QBitmap_Transformed(@ptrCast(self), @ptrCast(matrix));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#operator=)
    ///
    /// ``` self: ?*C.QBitmap, param1: ?*C.QBitmap ```
    pub fn OperatorAssignWithQBitmap(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBitmap_OperatorAssignWithQBitmap(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#fromImage)
    ///
    /// ``` image: ?*C.QImage, flags: i32 ```
    pub fn FromImage2(image: ?*anyopaque, flags: i64) ?*C.QBitmap {
        return C.QBitmap_FromImage2(@ptrCast(image), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitmap.html#fromData)
    ///
    /// ``` size: ?*C.QSize, bits: ?*u8, monoFormat: qimage_enums.Format ```
    pub fn FromData3(size: ?*anyopaque, bits: ?*anyopaque, monoFormat: i64) ?*C.QBitmap {
        return C.QBitmap_FromData3(@ptrCast(size), @intCast(bits), @intCast(monoFormat));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isNull)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPixmap_IsNull(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#width)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPixmap_Width(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#height)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPixmap_Height(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#size)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QPixmap_Size(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#rect)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QPixmap_Rect(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#depth)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QPixmap_Depth(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#defaultDepth)
    ///
    ///
    pub fn DefaultDepth() i32 {
        return C.QPixmap_DefaultDepth();
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fill)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Fill(self: ?*anyopaque) void {
        C.QPixmap_Fill(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#mask)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Mask(self: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_Mask(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#setMask)
    ///
    /// ``` self: ?*C.QBitmap, mask: ?*C.QBitmap ```
    pub fn SetMask(self: ?*anyopaque, mask: ?*anyopaque) void {
        C.QPixmap_SetMask(@ptrCast(self), @ptrCast(mask));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPixmap_DevicePixelRatio(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#setDevicePixelRatio)
    ///
    /// ``` self: ?*C.QBitmap, scaleFactor: f64 ```
    pub fn SetDevicePixelRatio(self: ?*anyopaque, scaleFactor: f64) void {
        C.QPixmap_SetDevicePixelRatio(@ptrCast(self), @floatCast(scaleFactor));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#deviceIndependentSize)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn DeviceIndependentSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QPixmap_DeviceIndependentSize(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#hasAlpha)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn HasAlpha(self: ?*anyopaque) bool {
        return C.QPixmap_HasAlpha(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#hasAlphaChannel)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn HasAlphaChannel(self: ?*anyopaque) bool {
        return C.QPixmap_HasAlphaChannel(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn CreateHeuristicMask(self: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_CreateHeuristicMask(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QBitmap, maskColor: ?*C.QColor ```
    pub fn CreateMaskFromColor(self: ?*anyopaque, maskColor: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_CreateMaskFromColor(@ptrCast(self), @ptrCast(maskColor));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, w: i32, h: i32 ```
    pub fn Scaled(self: ?*anyopaque, w: i32, h: i32) ?*C.QPixmap {
        return C.QPixmap_Scaled(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, s: ?*C.QSize ```
    pub fn ScaledWithQSize(self: ?*anyopaque, s: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_ScaledWithQSize(@ptrCast(self), @ptrCast(s));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QBitmap, w: i32 ```
    pub fn ScaledToWidth(self: ?*anyopaque, w: i32) ?*C.QPixmap {
        return C.QPixmap_ScaledToWidth(@ptrCast(self), @intCast(w));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QBitmap, h: i32 ```
    pub fn ScaledToHeight(self: ?*anyopaque, h: i32) ?*C.QPixmap {
        return C.QPixmap_ScaledToHeight(@ptrCast(self), @intCast(h));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#trueMatrix)
    ///
    /// ``` m: ?*C.QTransform, w: i32, h: i32 ```
    pub fn TrueMatrix(m: ?*anyopaque, w: i32, h: i32) ?*C.QTransform {
        return C.QPixmap_TrueMatrix(@ptrCast(m), @intCast(w), @intCast(h));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#toImage)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn ToImage(self: ?*anyopaque) ?*C.QImage {
        return C.QPixmap_ToImage(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImageReader)
    ///
    /// ``` imageReader: ?*C.QImageReader ```
    pub fn FromImageReader(imageReader: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_FromImageReader(@ptrCast(imageReader));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8 ```
    pub fn Load(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPixmap_Load(@ptrCast(self), fileName_str);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, buf: ?*u8, lenVal: u32 ```
    pub fn LoadFromData(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32) bool {
        return C.QPixmap_LoadFromData(@ptrCast(self), @intCast(buf), @intCast(lenVal));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, data: []u8 ```
    pub fn LoadFromDataWithData(self: ?*anyopaque, data: []u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QPixmap_LoadFromDataWithData(@ptrCast(self), data_str);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8 ```
    pub fn Save(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPixmap_Save(@ptrCast(self), fileName_str);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, device: ?*C.QIODevice ```
    pub fn SaveWithDevice(self: ?*anyopaque, device: ?*anyopaque) bool {
        return C.QPixmap_SaveWithDevice(@ptrCast(self), @ptrCast(device));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#convertFromImage)
    ///
    /// ``` self: ?*C.QBitmap, img: ?*C.QImage ```
    pub fn ConvertFromImage(self: ?*anyopaque, img: ?*anyopaque) bool {
        return C.QPixmap_ConvertFromImage(@ptrCast(self), @ptrCast(img));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QBitmap, x: i32, y: i32, width: i32, height: i32 ```
    pub fn Copy(self: ?*anyopaque, x: i32, y: i32, width: i32, height: i32) ?*C.QPixmap {
        return C.QPixmap_Copy(@ptrCast(self), @intCast(x), @intCast(y), @intCast(width), @intCast(height));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Copy2(self: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_Copy2(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QBitmap, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32 ```
    pub fn Scroll(self: ?*anyopaque, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32) void {
        C.QPixmap_Scroll(@ptrCast(self), @intCast(dx), @intCast(dy), @intCast(x), @intCast(y), @intCast(width), @intCast(height));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QBitmap, dx: i32, dy: i32, rect: ?*C.QRect ```
    pub fn Scroll2(self: ?*anyopaque, dx: i32, dy: i32, rect: ?*anyopaque) void {
        C.QPixmap_Scroll2(@ptrCast(self), @intCast(dx), @intCast(dy), @ptrCast(rect));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#cacheKey)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn CacheKey(self: ?*anyopaque) i64 {
        return C.QPixmap_CacheKey(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isDetached)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QPixmap_IsDetached(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#detach)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QPixmap_Detach(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isQBitmap)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn IsQBitmap(self: ?*anyopaque) bool {
        return C.QPixmap_IsQBitmap(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#operator!)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn OperatorNot(self: ?*anyopaque) bool {
        return C.QPixmap_OperatorNot(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fill)
    ///
    /// ``` self: ?*C.QBitmap, fillColor: ?*C.QColor ```
    pub fn Fill1(self: ?*anyopaque, fillColor: ?*anyopaque) void {
        C.QPixmap_Fill1(@ptrCast(self), @ptrCast(fillColor));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QBitmap, clipTight: bool ```
    pub fn CreateHeuristicMask1(self: ?*anyopaque, clipTight: bool) ?*C.QBitmap {
        return C.QPixmap_CreateHeuristicMask1(@ptrCast(self), clipTight);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QBitmap, maskColor: ?*C.QColor, mode: qnamespace_enums.MaskMode ```
    pub fn CreateMaskFromColor2(self: ?*anyopaque, maskColor: ?*anyopaque, mode: i64) ?*C.QBitmap {
        return C.QPixmap_CreateMaskFromColor2(@ptrCast(self), @ptrCast(maskColor), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled3(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled3(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled4(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled4(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled2(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled2(@ptrCast(self), @ptrCast(s), @intCast(aspectMode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QBitmap, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled32(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled32(@ptrCast(self), @ptrCast(s), @intCast(aspectMode), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QBitmap, w: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToWidth2(self: ?*anyopaque, w: i32, mode: i64) ?*C.QPixmap {
        return C.QPixmap_ScaledToWidth2(@ptrCast(self), @intCast(w), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QBitmap, h: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToHeight2(self: ?*anyopaque, h: i32, mode: i64) ?*C.QPixmap {
        return C.QPixmap_ScaledToHeight2(@ptrCast(self), @intCast(h), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#transformed)
    ///
    /// ``` self: ?*C.QBitmap, param1: ?*C.QTransform, mode: qnamespace_enums.TransformationMode ```
    pub fn Transformed2(self: ?*anyopaque, param1: ?*anyopaque, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Transformed2(@ptrCast(self), @ptrCast(param1), @intCast(mode));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImageReader)
    ///
    /// ``` imageReader: ?*C.QImageReader, flags: i32 ```
    pub fn FromImageReader2(imageReader: ?*anyopaque, flags: i64) ?*C.QPixmap {
        return C.QPixmap_FromImageReader2(@ptrCast(imageReader), @intCast(flags));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8, format: []const u8 ```
    pub fn Load2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Load2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8, format: []const u8, flags: i32 ```
    pub fn Load3(self: ?*anyopaque, fileName: []const u8, format: []const u8, flags: i64) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Load3(@ptrCast(self), fileName_str, format_Cstring, @intCast(flags));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, buf: ?*u8, lenVal: u32, format: []const u8 ```
    pub fn LoadFromData3(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData3(@ptrCast(self), @intCast(buf), @intCast(lenVal), format_Cstring);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, buf: ?*u8, lenVal: u32, format: []const u8, flags: i32 ```
    pub fn LoadFromData4(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32, format: []const u8, flags: i64) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData4(@ptrCast(self), @intCast(buf), @intCast(lenVal), format_Cstring, @intCast(flags));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, data: []u8, format: []const u8 ```
    pub fn LoadFromData2(self: ?*anyopaque, data: []u8, format: []const u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData2(@ptrCast(self), data_str, format_Cstring);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QBitmap, data: []u8, format: []const u8, flags: i32 ```
    pub fn LoadFromData32(self: ?*anyopaque, data: []u8, format: []const u8, flags: i64) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData32(@ptrCast(self), data_str, format_Cstring, @intCast(flags));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8, format: []const u8 ```
    pub fn Save2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, fileName: []const u8, format: []const u8, quality: i32 ```
    pub fn Save3(self: ?*anyopaque, fileName: []const u8, format: []const u8, quality: i32) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save3(@ptrCast(self), fileName_str, format_Cstring, @intCast(quality));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, device: ?*C.QIODevice, format: []const u8 ```
    pub fn Save22(self: ?*anyopaque, device: ?*anyopaque, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save22(@ptrCast(self), @ptrCast(device), format_Cstring);
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QBitmap, device: ?*C.QIODevice, format: []const u8, quality: i32 ```
    pub fn Save32(self: ?*anyopaque, device: ?*anyopaque, format: []const u8, quality: i32) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save32(@ptrCast(self), @ptrCast(device), format_Cstring, @intCast(quality));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#convertFromImage)
    ///
    /// ``` self: ?*C.QBitmap, img: ?*C.QImage, flags: i32 ```
    pub fn ConvertFromImage2(self: ?*anyopaque, img: ?*anyopaque, flags: i64) bool {
        return C.QPixmap_ConvertFromImage2(@ptrCast(self), @ptrCast(img), @intCast(flags));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QBitmap, rect: ?*C.QRect ```
    pub fn Copy1(self: ?*anyopaque, rect: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_Copy1(@ptrCast(self), @ptrCast(rect));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QBitmap, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32, exposed: ?*C.QRegion ```
    pub fn Scroll7(self: ?*anyopaque, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32, exposed: ?*anyopaque) void {
        C.QPixmap_Scroll7(@ptrCast(self), @intCast(dx), @intCast(dy), @intCast(x), @intCast(y), @intCast(width), @intCast(height), @ptrCast(exposed));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QBitmap, dx: i32, dy: i32, rect: ?*C.QRect, exposed: ?*C.QRegion ```
    pub fn Scroll4(self: ?*anyopaque, dx: i32, dy: i32, rect: ?*anyopaque, exposed: ?*anyopaque) void {
        C.QPixmap_Scroll4(@ptrCast(self), @intCast(dx), @intCast(dy), @ptrCast(rect), @ptrCast(exposed));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QPaintDevice_ColorCount(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioFScale)
    ///
    ///
    pub fn DevicePixelRatioFScale() f64 {
        return C.QPaintDevice_DevicePixelRatioFScale();
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#devType)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QBitmap_DevType(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QBitmap_QBaseDevType(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QBitmap_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#paintEngine)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QBitmap_PaintEngine(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QBitmap_QBasePaintEngine(@ptrCast(self));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QBitmap_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPixmap
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#metric)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, param1: i64) i32 {
        return C.QBitmap_Metric(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, param1: i64) i32 {
        return C.QBitmap_QBaseMetric(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPixmap
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn (?*C.QBitmap, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QBitmap_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QBitmap_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QBitmap_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn (?*C.QBitmap, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QBitmap_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QBitmap_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QBitmap_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn (?*C.QBitmap, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QBitmap_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QBitmap_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QBitmap_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QBitmap, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QBitmap_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBitmap ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBitmap_Delete(@ptrCast(self));
    }
};
