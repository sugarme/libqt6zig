const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpaintdevice_enums = @import("libqpaintdevice.zig").enums;

/// https://doc.qt.io/qt-6/qpixmap.html
pub const qpixmap = struct {
    /// New constructs a new QPixmap object.
    ///
    ///
    pub fn New() ?*C.QPixmap {
        return C.QPixmap_new();
    }

    /// New2 constructs a new QPixmap object.
    ///
    /// ``` w: i32, h: i32 ```
    pub fn New2(w: i32, h: i32) ?*C.QPixmap {
        return C.QPixmap_new2(@intCast(w), @intCast(h));
    }

    /// New3 constructs a new QPixmap object.
    ///
    /// ``` param1: ?*C.QSize ```
    pub fn New3(param1: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_new3(@ptrCast(param1));
    }

    /// New4 constructs a new QPixmap object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New4(fileName: []const u8) ?*C.QPixmap {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QPixmap_new4(fileName_str);
    }

    /// New5 constructs a new QPixmap object.
    ///
    /// ``` param1: ?*C.QPixmap ```
    pub fn New5(param1: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_new5(@ptrCast(param1));
    }

    /// New6 constructs a new QPixmap object.
    ///
    /// ``` fileName: []const u8, format: []const u8 ```
    pub fn New6(fileName: []const u8, format: []const u8) ?*C.QPixmap {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);

        return C.QPixmap_new6(fileName_str, format_Cstring);
    }

    /// New7 constructs a new QPixmap object.
    ///
    /// ``` fileName: []const u8, format: []const u8, flags: i32 ```
    pub fn New7(fileName: []const u8, format: []const u8, flags: i64) ?*C.QPixmap {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);

        return C.QPixmap_new7(fileName_str, format_Cstring, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#operator=)
    ///
    /// ``` self: ?*C.QPixmap, param1: ?*C.QPixmap ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QPixmap_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#swap)
    ///
    /// ``` self: ?*C.QPixmap, other: ?*C.QPixmap ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixmap_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#operator QVariant)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QPixmap_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isNull)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPixmap_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#devType)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QPixmap_DevType(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QPixmap_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QPixmap_QBaseDevType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#width)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPixmap_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#height)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPixmap_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#size)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QPixmap_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#rect)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QPixmap_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#depth)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QPixmap_Depth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#defaultDepth)
    ///
    ///
    pub fn DefaultDepth() i32 {
        return C.QPixmap_DefaultDepth();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fill)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Fill(self: ?*anyopaque) void {
        C.QPixmap_Fill(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#mask)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Mask(self: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_Mask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#setMask)
    ///
    /// ``` self: ?*C.QPixmap, mask: ?*C.QBitmap ```
    pub fn SetMask(self: ?*anyopaque, mask: ?*anyopaque) void {
        C.QPixmap_SetMask(@ptrCast(self), @ptrCast(mask));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPixmap_DevicePixelRatio(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#setDevicePixelRatio)
    ///
    /// ``` self: ?*C.QPixmap, scaleFactor: f64 ```
    pub fn SetDevicePixelRatio(self: ?*anyopaque, scaleFactor: f64) void {
        C.QPixmap_SetDevicePixelRatio(@ptrCast(self), @floatCast(scaleFactor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#deviceIndependentSize)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn DeviceIndependentSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QPixmap_DeviceIndependentSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#hasAlpha)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn HasAlpha(self: ?*anyopaque) bool {
        return C.QPixmap_HasAlpha(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#hasAlphaChannel)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn HasAlphaChannel(self: ?*anyopaque) bool {
        return C.QPixmap_HasAlphaChannel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn CreateHeuristicMask(self: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_CreateHeuristicMask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QPixmap, maskColor: ?*C.QColor ```
    pub fn CreateMaskFromColor(self: ?*anyopaque, maskColor: ?*anyopaque) ?*C.QBitmap {
        return C.QPixmap_CreateMaskFromColor(@ptrCast(self), @ptrCast(maskColor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, w: i32, h: i32 ```
    pub fn Scaled(self: ?*anyopaque, w: i32, h: i32) ?*C.QPixmap {
        return C.QPixmap_Scaled(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, s: ?*C.QSize ```
    pub fn ScaledWithQSize(self: ?*anyopaque, s: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_ScaledWithQSize(@ptrCast(self), @ptrCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QPixmap, w: i32 ```
    pub fn ScaledToWidth(self: ?*anyopaque, w: i32) ?*C.QPixmap {
        return C.QPixmap_ScaledToWidth(@ptrCast(self), @intCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QPixmap, h: i32 ```
    pub fn ScaledToHeight(self: ?*anyopaque, h: i32) ?*C.QPixmap {
        return C.QPixmap_ScaledToHeight(@ptrCast(self), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#transformed)
    ///
    /// ``` self: ?*C.QPixmap, param1: ?*C.QTransform ```
    pub fn Transformed(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_Transformed(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#trueMatrix)
    ///
    /// ``` m: ?*C.QTransform, w: i32, h: i32 ```
    pub fn TrueMatrix(m: ?*anyopaque, w: i32, h: i32) ?*C.QTransform {
        return C.QPixmap_TrueMatrix(@ptrCast(m), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#toImage)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn ToImage(self: ?*anyopaque) ?*C.QImage {
        return C.QPixmap_ToImage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImage)
    ///
    /// ``` image: ?*C.QImage ```
    pub fn FromImage(image: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_FromImage(@ptrCast(image));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImageReader)
    ///
    /// ``` imageReader: ?*C.QImageReader ```
    pub fn FromImageReader(imageReader: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_FromImageReader(@ptrCast(imageReader));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8 ```
    pub fn Load(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPixmap_Load(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, buf: ?*u8, lenVal: u32 ```
    pub fn LoadFromData(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32) bool {
        return C.QPixmap_LoadFromData(@ptrCast(self), @intCast(buf), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, data: []u8 ```
    pub fn LoadFromDataWithData(self: ?*anyopaque, data: []u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QPixmap_LoadFromDataWithData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8 ```
    pub fn Save(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPixmap_Save(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, device: ?*C.QIODevice ```
    pub fn SaveWithDevice(self: ?*anyopaque, device: ?*anyopaque) bool {
        return C.QPixmap_SaveWithDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#convertFromImage)
    ///
    /// ``` self: ?*C.QPixmap, img: ?*C.QImage ```
    pub fn ConvertFromImage(self: ?*anyopaque, img: ?*anyopaque) bool {
        return C.QPixmap_ConvertFromImage(@ptrCast(self), @ptrCast(img));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QPixmap, x: i32, y: i32, width: i32, height: i32 ```
    pub fn Copy(self: ?*anyopaque, x: i32, y: i32, width: i32, height: i32) ?*C.QPixmap {
        return C.QPixmap_Copy(@ptrCast(self), @intCast(x), @intCast(y), @intCast(width), @intCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Copy2(self: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_Copy2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QPixmap, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32 ```
    pub fn Scroll(self: ?*anyopaque, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32) void {
        C.QPixmap_Scroll(@ptrCast(self), @intCast(dx), @intCast(dy), @intCast(x), @intCast(y), @intCast(width), @intCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QPixmap, dx: i32, dy: i32, rect: ?*C.QRect ```
    pub fn Scroll2(self: ?*anyopaque, dx: i32, dy: i32, rect: ?*anyopaque) void {
        C.QPixmap_Scroll2(@ptrCast(self), @intCast(dx), @intCast(dy), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#cacheKey)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn CacheKey(self: ?*anyopaque) i64 {
        return C.QPixmap_CacheKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isDetached)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QPixmap_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#detach)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QPixmap_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#isQBitmap)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn IsQBitmap(self: ?*anyopaque) bool {
        return C.QPixmap_IsQBitmap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#paintEngine)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPixmap_PaintEngine(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QPixmap_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPixmap_QBasePaintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#operator!)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn OperatorNot(self: ?*anyopaque) bool {
        return C.QPixmap_OperatorNot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#metric)
    ///
    /// ``` self: ?*C.QPixmap, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, param1: i64) i32 {
        return C.QPixmap_Metric(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn (?*C.QPixmap, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QPixmap_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPixmap, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, param1: i64) i32 {
        return C.QPixmap_QBaseMetric(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fill)
    ///
    /// ``` self: ?*C.QPixmap, fillColor: ?*C.QColor ```
    pub fn Fill1(self: ?*anyopaque, fillColor: ?*anyopaque) void {
        C.QPixmap_Fill1(@ptrCast(self), @ptrCast(fillColor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QPixmap, clipTight: bool ```
    pub fn CreateHeuristicMask1(self: ?*anyopaque, clipTight: bool) ?*C.QBitmap {
        return C.QPixmap_CreateHeuristicMask1(@ptrCast(self), clipTight);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QPixmap, maskColor: ?*C.QColor, mode: qnamespace_enums.MaskMode ```
    pub fn CreateMaskFromColor2(self: ?*anyopaque, maskColor: ?*anyopaque, mode: i64) ?*C.QBitmap {
        return C.QPixmap_CreateMaskFromColor2(@ptrCast(self), @ptrCast(maskColor), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled3(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled3(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled4(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled4(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled2(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled2(@ptrCast(self), @ptrCast(s), @intCast(aspectMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaled)
    ///
    /// ``` self: ?*C.QPixmap, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled32(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Scaled32(@ptrCast(self), @ptrCast(s), @intCast(aspectMode), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QPixmap, w: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToWidth2(self: ?*anyopaque, w: i32, mode: i64) ?*C.QPixmap {
        return C.QPixmap_ScaledToWidth2(@ptrCast(self), @intCast(w), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QPixmap, h: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToHeight2(self: ?*anyopaque, h: i32, mode: i64) ?*C.QPixmap {
        return C.QPixmap_ScaledToHeight2(@ptrCast(self), @intCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#transformed)
    ///
    /// ``` self: ?*C.QPixmap, param1: ?*C.QTransform, mode: qnamespace_enums.TransformationMode ```
    pub fn Transformed2(self: ?*anyopaque, param1: ?*anyopaque, mode: i64) ?*C.QPixmap {
        return C.QPixmap_Transformed2(@ptrCast(self), @ptrCast(param1), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImage)
    ///
    /// ``` image: ?*C.QImage, flags: i32 ```
    pub fn FromImage2(image: ?*anyopaque, flags: i64) ?*C.QPixmap {
        return C.QPixmap_FromImage2(@ptrCast(image), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#fromImageReader)
    ///
    /// ``` imageReader: ?*C.QImageReader, flags: i32 ```
    pub fn FromImageReader2(imageReader: ?*anyopaque, flags: i64) ?*C.QPixmap {
        return C.QPixmap_FromImageReader2(@ptrCast(imageReader), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8, format: []const u8 ```
    pub fn Load2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Load2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#load)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8, format: []const u8, flags: i32 ```
    pub fn Load3(self: ?*anyopaque, fileName: []const u8, format: []const u8, flags: i64) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Load3(@ptrCast(self), fileName_str, format_Cstring, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, buf: ?*u8, lenVal: u32, format: []const u8 ```
    pub fn LoadFromData3(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData3(@ptrCast(self), @intCast(buf), @intCast(lenVal), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, buf: ?*u8, lenVal: u32, format: []const u8, flags: i32 ```
    pub fn LoadFromData4(self: ?*anyopaque, buf: ?*anyopaque, lenVal: u32, format: []const u8, flags: i64) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData4(@ptrCast(self), @intCast(buf), @intCast(lenVal), format_Cstring, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, data: []u8, format: []const u8 ```
    pub fn LoadFromData2(self: ?*anyopaque, data: []u8, format: []const u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData2(@ptrCast(self), data_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#loadFromData)
    ///
    /// ``` self: ?*C.QPixmap, data: []u8, format: []const u8, flags: i32 ```
    pub fn LoadFromData32(self: ?*anyopaque, data: []u8, format: []const u8, flags: i64) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_LoadFromData32(@ptrCast(self), data_str, format_Cstring, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8, format: []const u8 ```
    pub fn Save2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, fileName: []const u8, format: []const u8, quality: i32 ```
    pub fn Save3(self: ?*anyopaque, fileName: []const u8, format: []const u8, quality: i32) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save3(@ptrCast(self), fileName_str, format_Cstring, @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, device: ?*C.QIODevice, format: []const u8 ```
    pub fn Save22(self: ?*anyopaque, device: ?*anyopaque, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save22(@ptrCast(self), @ptrCast(device), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#save)
    ///
    /// ``` self: ?*C.QPixmap, device: ?*C.QIODevice, format: []const u8, quality: i32 ```
    pub fn Save32(self: ?*anyopaque, device: ?*anyopaque, format: []const u8, quality: i32) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QPixmap_Save32(@ptrCast(self), @ptrCast(device), format_Cstring, @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#convertFromImage)
    ///
    /// ``` self: ?*C.QPixmap, img: ?*C.QImage, flags: i32 ```
    pub fn ConvertFromImage2(self: ?*anyopaque, img: ?*anyopaque, flags: i64) bool {
        return C.QPixmap_ConvertFromImage2(@ptrCast(self), @ptrCast(img), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#copy)
    ///
    /// ``` self: ?*C.QPixmap, rect: ?*C.QRect ```
    pub fn Copy1(self: ?*anyopaque, rect: ?*anyopaque) ?*C.QPixmap {
        return C.QPixmap_Copy1(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QPixmap, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32, exposed: ?*C.QRegion ```
    pub fn Scroll7(self: ?*anyopaque, dx: i32, dy: i32, x: i32, y: i32, width: i32, height: i32, exposed: ?*anyopaque) void {
        C.QPixmap_Scroll7(@ptrCast(self), @intCast(dx), @intCast(dy), @intCast(x), @intCast(y), @intCast(width), @intCast(height), @ptrCast(exposed));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmap.html#scroll)
    ///
    /// ``` self: ?*C.QPixmap, dx: i32, dy: i32, rect: ?*C.QRect, exposed: ?*C.QRegion ```
    pub fn Scroll4(self: ?*anyopaque, dx: i32, dy: i32, rect: ?*anyopaque, exposed: ?*anyopaque) void {
        C.QPixmap_Scroll4(@ptrCast(self), @intCast(dx), @intCast(dy), @ptrCast(rect), @ptrCast(exposed));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QPixmap ```
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

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPixmap_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPixmap_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn (?*C.QPixmap, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPixmap_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPixmap_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPixmap_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn (?*C.QPixmap, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QPixmap_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPixmap_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPixmap_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPixmap, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QPixmap_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPixmap ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPixmap_Delete(@ptrCast(self));
    }
};
