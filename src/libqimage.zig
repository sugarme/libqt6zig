const C = @import("qt6c");
const qimage_enums = enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpaintdevice_enums = @import("libqpaintdevice.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qimage.html
pub const qimage = struct {
    /// New constructs a new QImage object.
    ///
    ///
    pub fn New() ?*C.QImage {
        return C.QImage_new();
    }

    /// New2 constructs a new QImage object.
    ///
    /// ``` size: ?*C.QSize, format: qimage_enums.Format ```
    pub fn New2(size: ?*anyopaque, format: i64) ?*C.QImage {
        return C.QImage_new2(@ptrCast(size), @intCast(format));
    }

    /// New3 constructs a new QImage object.
    ///
    /// ``` width: i32, height: i32, format: qimage_enums.Format ```
    pub fn New3(width: i32, height: i32, format: i64) ?*C.QImage {
        return C.QImage_new3(@intCast(width), @intCast(height), @intCast(format));
    }

    /// New4 constructs a new QImage object.
    ///
    /// ``` data: ?*u8, width: i32, height: i32, format: qimage_enums.Format ```
    pub fn New4(data: ?*anyopaque, width: i32, height: i32, format: i64) ?*C.QImage {
        return C.QImage_new4(@intCast(data), @intCast(width), @intCast(height), @intCast(format));
    }

    /// New5 constructs a new QImage object.
    ///
    /// ``` data: ?*u8, width: i32, height: i32, format: qimage_enums.Format ```
    pub fn New5(data: ?*anyopaque, width: i32, height: i32, format: i64) ?*C.QImage {
        return C.QImage_new5(@intCast(data), @intCast(width), @intCast(height), @intCast(format));
    }

    /// New6 constructs a new QImage object.
    ///
    /// ``` data: ?*u8, width: i32, height: i32, bytesPerLine: i64, format: qimage_enums.Format ```
    pub fn New6(data: ?*anyopaque, width: i32, height: i32, bytesPerLine: i64, format: i64) ?*C.QImage {
        return C.QImage_new6(@intCast(data), @intCast(width), @intCast(height), @intCast(bytesPerLine), @intCast(format));
    }

    /// New7 constructs a new QImage object.
    ///
    /// ``` data: ?*u8, width: i32, height: i32, bytesPerLine: i64, format: qimage_enums.Format ```
    pub fn New7(data: ?*anyopaque, width: i32, height: i32, bytesPerLine: i64, format: i64) ?*C.QImage {
        return C.QImage_new7(@intCast(data), @intCast(width), @intCast(height), @intCast(bytesPerLine), @intCast(format));
    }

    /// New8 constructs a new QImage object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New8(fileName: []const u8) ?*C.QImage {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QImage_new8(fileName_str);
    }

    /// New9 constructs a new QImage object.
    ///
    /// ``` param1: ?*C.QImage ```
    pub fn New9(param1: ?*anyopaque) ?*C.QImage {
        return C.QImage_new9(@ptrCast(param1));
    }

    /// New10 constructs a new QImage object.
    ///
    /// ``` fileName: []const u8, format: []const u8 ```
    pub fn New10(fileName: []const u8, format: []const u8) ?*C.QImage {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);

        return C.QImage_new10(fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#operator=)
    ///
    /// ``` self: ?*C.QImage, param1: ?*C.QImage ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QImage_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#swap)
    ///
    /// ``` self: ?*C.QImage, other: ?*C.QImage ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QImage_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#isNull)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QImage_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#devType)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QImage_DevType(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QImage_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QImage_QBaseDevType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#operator==)
    ///
    /// ``` self: ?*C.QImage, param1: ?*C.QImage ```
    pub fn OperatorEqual(self: ?*anyopaque, param1: ?*anyopaque) bool {
        return C.QImage_OperatorEqual(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#operator!=)
    ///
    /// ``` self: ?*C.QImage, param1: ?*C.QImage ```
    pub fn OperatorNotEqual(self: ?*anyopaque, param1: ?*anyopaque) bool {
        return C.QImage_OperatorNotEqual(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#operator QVariant)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QImage_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#detach)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QImage_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#isDetached)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QImage_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#copy)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Copy(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_Copy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#copy)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32, w: i32, h: i32 ```
    pub fn Copy2(self: ?*anyopaque, x: i32, y: i32, w: i32, h: i32) ?*C.QImage {
        return C.QImage_Copy2(@ptrCast(self), @intCast(x), @intCast(y), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#format)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Format(self: ?*anyopaque) i64 {
        return C.QImage_Format(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format ```
    pub fn ConvertToFormat(self: ?*anyopaque, f: i64) ?*C.QImage {
        return C.QImage_ConvertToFormat(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format, colorTable: []u32 ```
    pub fn ConvertToFormat2(self: ?*anyopaque, f: i64, colorTable: []u32) ?*C.QImage {
        const colorTable_list = C.struct_libqt_list{
            .len = colorTable.len,
            .data = colorTable.ptr,
        };
        return C.QImage_ConvertToFormat2(@ptrCast(self), @intCast(f), colorTable_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#reinterpretAsFormat)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format ```
    pub fn ReinterpretAsFormat(self: ?*anyopaque, f: i64) bool {
        return C.QImage_ReinterpretAsFormat(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertedTo)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format ```
    pub fn ConvertedTo(self: ?*anyopaque, f: i64) ?*C.QImage {
        return C.QImage_ConvertedTo(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertTo)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format ```
    pub fn ConvertTo(self: ?*anyopaque, f: i64) void {
        C.QImage_ConvertTo(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#width)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QImage_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#height)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QImage_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#size)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QImage_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#rect)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QImage_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#depth)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QImage_Depth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#colorCount)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QImage_ColorCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#bitPlaneCount)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn BitPlaneCount(self: ?*anyopaque) i32 {
        return C.QImage_BitPlaneCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#color)
    ///
    /// ``` self: ?*C.QImage, i: i32 ```
    pub fn Color(self: ?*anyopaque, i: i32) u32 {
        return C.QImage_Color(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setColor)
    ///
    /// ``` self: ?*C.QImage, i: i32, c: u32 ```
    pub fn SetColor(self: ?*anyopaque, i: i32, c: u32) void {
        C.QImage_SetColor(@ptrCast(self), @intCast(i), @intCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setColorCount)
    ///
    /// ``` self: ?*C.QImage, colorCount: i32 ```
    pub fn SetColorCount(self: ?*anyopaque, colorCount: i32) void {
        C.QImage_SetColorCount(@ptrCast(self), @intCast(colorCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#allGray)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn AllGray(self: ?*anyopaque) bool {
        return C.QImage_AllGray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#isGrayscale)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn IsGrayscale(self: ?*anyopaque) bool {
        return C.QImage_IsGrayscale(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#bits)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Bits(self: ?*anyopaque) ?*u8 {
        return @ptrCast(C.QImage_Bits(@ptrCast(self)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#bits)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Bits2(self: ?*anyopaque) ?*u8 {
        return @ptrCast(C.QImage_Bits2(@ptrCast(self)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#constBits)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn ConstBits(self: ?*anyopaque) ?*u8 {
        return @ptrCast(C.QImage_ConstBits(@ptrCast(self)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#sizeInBytes)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn SizeInBytes(self: ?*anyopaque) i64 {
        return C.QImage_SizeInBytes(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scanLine)
    ///
    /// ``` self: ?*C.QImage, param1: i32 ```
    pub fn ScanLine(self: ?*anyopaque, param1: i32) ?*u8 {
        return @ptrCast(C.QImage_ScanLine(@ptrCast(self), @intCast(param1)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scanLine)
    ///
    /// ``` self: ?*C.QImage, param1: i32 ```
    pub fn ScanLineWithInt(self: ?*anyopaque, param1: i32) ?*u8 {
        return @ptrCast(C.QImage_ScanLineWithInt(@ptrCast(self), @intCast(param1)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#constScanLine)
    ///
    /// ``` self: ?*C.QImage, param1: i32 ```
    pub fn ConstScanLine(self: ?*anyopaque, param1: i32) ?*u8 {
        return @ptrCast(C.QImage_ConstScanLine(@ptrCast(self), @intCast(param1)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#bytesPerLine)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn BytesPerLine(self: ?*anyopaque) i64 {
        return C.QImage_BytesPerLine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#valid)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32 ```
    pub fn Valid(self: ?*anyopaque, x: i32, y: i32) bool {
        return C.QImage_Valid(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#valid)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint ```
    pub fn ValidWithPt(self: ?*anyopaque, pt: ?*anyopaque) bool {
        return C.QImage_ValidWithPt(@ptrCast(self), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixelIndex)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32 ```
    pub fn PixelIndex(self: ?*anyopaque, x: i32, y: i32) i32 {
        return C.QImage_PixelIndex(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixelIndex)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint ```
    pub fn PixelIndexWithPt(self: ?*anyopaque, pt: ?*anyopaque) i32 {
        return C.QImage_PixelIndexWithPt(@ptrCast(self), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixel)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32 ```
    pub fn Pixel(self: ?*anyopaque, x: i32, y: i32) u32 {
        return C.QImage_Pixel(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixel)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint ```
    pub fn PixelWithPt(self: ?*anyopaque, pt: ?*anyopaque) u32 {
        return C.QImage_PixelWithPt(@ptrCast(self), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setPixel)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32, index_or_rgb: u32 ```
    pub fn SetPixel(self: ?*anyopaque, x: i32, y: i32, index_or_rgb: u32) void {
        C.QImage_SetPixel(@ptrCast(self), @intCast(x), @intCast(y), @intCast(index_or_rgb));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setPixel)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint, index_or_rgb: u32 ```
    pub fn SetPixel2(self: ?*anyopaque, pt: ?*anyopaque, index_or_rgb: u32) void {
        C.QImage_SetPixel2(@ptrCast(self), @ptrCast(pt), @intCast(index_or_rgb));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixelColor)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32 ```
    pub fn PixelColor(self: ?*anyopaque, x: i32, y: i32) ?*C.QColor {
        return C.QImage_PixelColor(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixelColor)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint ```
    pub fn PixelColorWithPt(self: ?*anyopaque, pt: ?*anyopaque) ?*C.QColor {
        return C.QImage_PixelColorWithPt(@ptrCast(self), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setPixelColor)
    ///
    /// ``` self: ?*C.QImage, x: i32, y: i32, c: ?*C.QColor ```
    pub fn SetPixelColor(self: ?*anyopaque, x: i32, y: i32, c: ?*anyopaque) void {
        C.QImage_SetPixelColor(@ptrCast(self), @intCast(x), @intCast(y), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setPixelColor)
    ///
    /// ``` self: ?*C.QImage, pt: ?*C.QPoint, c: ?*C.QColor ```
    pub fn SetPixelColor2(self: ?*anyopaque, pt: ?*anyopaque, c: ?*anyopaque) void {
        C.QImage_SetPixelColor2(@ptrCast(self), @ptrCast(pt), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#colorTable)
    ///
    /// ``` self: ?*C.QImage, allocator: std.mem.Allocator ```
    pub fn ColorTable(self: ?*anyopaque, allocator: std.mem.Allocator) []u32 {
        const _arr: C.struct_libqt_list = C.QImage_ColorTable(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(u32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]u32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setColorTable)
    ///
    /// ``` self: ?*C.QImage, colors: []u32 ```
    pub fn SetColorTable(self: ?*anyopaque, colors: []u32) void {
        const colors_list = C.struct_libqt_list{
            .len = colors.len,
            .data = colors.ptr,
        };
        C.QImage_SetColorTable(@ptrCast(self), colors_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QImage_DevicePixelRatio(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setDevicePixelRatio)
    ///
    /// ``` self: ?*C.QImage, scaleFactor: f64 ```
    pub fn SetDevicePixelRatio(self: ?*anyopaque, scaleFactor: f64) void {
        C.QImage_SetDevicePixelRatio(@ptrCast(self), @floatCast(scaleFactor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#deviceIndependentSize)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DeviceIndependentSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QImage_DeviceIndependentSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fill)
    ///
    /// ``` self: ?*C.QImage, pixel: u32 ```
    pub fn Fill(self: ?*anyopaque, pixel: u32) void {
        C.QImage_Fill(@ptrCast(self), @intCast(pixel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fill)
    ///
    /// ``` self: ?*C.QImage, color: ?*C.QColor ```
    pub fn FillWithColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QImage_FillWithColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fill)
    ///
    /// ``` self: ?*C.QImage, color: qnamespace_enums.GlobalColor ```
    pub fn Fill2(self: ?*anyopaque, color: i64) void {
        C.QImage_Fill2(@ptrCast(self), @intCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#hasAlphaChannel)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn HasAlphaChannel(self: ?*anyopaque) bool {
        return C.QImage_HasAlphaChannel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setAlphaChannel)
    ///
    /// ``` self: ?*C.QImage, alphaChannel: ?*C.QImage ```
    pub fn SetAlphaChannel(self: ?*anyopaque, alphaChannel: ?*anyopaque) void {
        C.QImage_SetAlphaChannel(@ptrCast(self), @ptrCast(alphaChannel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createAlphaMask)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn CreateAlphaMask(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_CreateAlphaMask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn CreateHeuristicMask(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_CreateHeuristicMask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QImage, color: u32 ```
    pub fn CreateMaskFromColor(self: ?*anyopaque, color: u32) ?*C.QImage {
        return C.QImage_CreateMaskFromColor(@ptrCast(self), @intCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, w: i32, h: i32 ```
    pub fn Scaled(self: ?*anyopaque, w: i32, h: i32) ?*C.QImage {
        return C.QImage_Scaled(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, s: ?*C.QSize ```
    pub fn ScaledWithQSize(self: ?*anyopaque, s: ?*anyopaque) ?*C.QImage {
        return C.QImage_ScaledWithQSize(@ptrCast(self), @ptrCast(s));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QImage, w: i32 ```
    pub fn ScaledToWidth(self: ?*anyopaque, w: i32) ?*C.QImage {
        return C.QImage_ScaledToWidth(@ptrCast(self), @intCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QImage, h: i32 ```
    pub fn ScaledToHeight(self: ?*anyopaque, h: i32) ?*C.QImage {
        return C.QImage_ScaledToHeight(@ptrCast(self), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#transformed)
    ///
    /// ``` self: ?*C.QImage, matrix: ?*C.QTransform ```
    pub fn Transformed(self: ?*anyopaque, matrix: ?*anyopaque) ?*C.QImage {
        return C.QImage_Transformed(@ptrCast(self), @ptrCast(matrix));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#trueMatrix)
    ///
    /// ``` param1: ?*C.QTransform, w: i32, h: i32 ```
    pub fn TrueMatrix(param1: ?*anyopaque, w: i32, h: i32) ?*C.QTransform {
        return C.QImage_TrueMatrix(@ptrCast(param1), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirrored)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Mirrored(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_Mirrored(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#rgbSwapped)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn RgbSwapped(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_RgbSwapped(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirror)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Mirror(self: ?*anyopaque) void {
        C.QImage_Mirror(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#rgbSwap)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn RgbSwap(self: ?*anyopaque) void {
        C.QImage_RgbSwap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#invertPixels)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn InvertPixels(self: ?*anyopaque) void {
        C.QImage_InvertPixels(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#colorSpace)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn ColorSpace(self: ?*anyopaque) ?*C.QColorSpace {
        return C.QImage_ColorSpace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertedToColorSpace)
    ///
    /// ``` self: ?*C.QImage, param1: ?*C.QColorSpace ```
    pub fn ConvertedToColorSpace(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QImage {
        return C.QImage_ConvertedToColorSpace(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToColorSpace)
    ///
    /// ``` self: ?*C.QImage, param1: ?*C.QColorSpace ```
    pub fn ConvertToColorSpace(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QImage_ConvertToColorSpace(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setColorSpace)
    ///
    /// ``` self: ?*C.QImage, colorSpace: ?*C.QColorSpace ```
    pub fn SetColorSpace(self: ?*anyopaque, colorSpace: ?*anyopaque) void {
        C.QImage_SetColorSpace(@ptrCast(self), @ptrCast(colorSpace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#colorTransformed)
    ///
    /// ``` self: ?*C.QImage, transform: ?*C.QColorTransform ```
    pub fn ColorTransformed(self: ?*anyopaque, transform: ?*anyopaque) ?*C.QImage {
        return C.QImage_ColorTransformed(@ptrCast(self), @ptrCast(transform));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#applyColorTransform)
    ///
    /// ``` self: ?*C.QImage, transform: ?*C.QColorTransform ```
    pub fn ApplyColorTransform(self: ?*anyopaque, transform: ?*anyopaque) void {
        C.QImage_ApplyColorTransform(@ptrCast(self), @ptrCast(transform));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#load)
    ///
    /// ``` self: ?*C.QImage, device: ?*C.QIODevice, format: []const u8 ```
    pub fn Load(self: ?*anyopaque, device: ?*anyopaque, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Load(@ptrCast(self), @ptrCast(device), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#load)
    ///
    /// ``` self: ?*C.QImage, fileName: []const u8 ```
    pub fn LoadWithFileName(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QImage_LoadWithFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, data: []const u8 ```
    pub fn LoadFromData(self: ?*anyopaque, data: []const u8) bool {
        return C.QImage_LoadFromData(@ptrCast(self), @ptrCast(@constCast(&data)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, buf: ?*u8, lenVal: i32 ```
    pub fn LoadFromData2(self: ?*anyopaque, buf: ?*anyopaque, lenVal: i32) bool {
        return C.QImage_LoadFromData2(@ptrCast(self), @intCast(buf), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, data: []u8 ```
    pub fn LoadFromDataWithData(self: ?*anyopaque, data: []u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QImage_LoadFromDataWithData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, fileName: []const u8 ```
    pub fn Save(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QImage_Save(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, device: ?*C.QIODevice ```
    pub fn SaveWithDevice(self: ?*anyopaque, device: ?*anyopaque) bool {
        return C.QImage_SaveWithDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: []const u8 ```
    pub fn FromData(data: []const u8) ?*C.QImage {
        return C.QImage_FromData(@ptrCast(@constCast(&data)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: ?*u8, size: i32 ```
    pub fn FromData2(data: ?*anyopaque, size: i32) ?*C.QImage {
        return C.QImage_FromData2(@intCast(data), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: []u8 ```
    pub fn FromDataWithData(data: []u8) ?*C.QImage {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QImage_FromDataWithData(data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#cacheKey)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn CacheKey(self: ?*anyopaque) i64 {
        return C.QImage_CacheKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#paintEngine)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QImage_PaintEngine(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QImage_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QImage_QBasePaintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#dotsPerMeterX)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DotsPerMeterX(self: ?*anyopaque) i32 {
        return C.QImage_DotsPerMeterX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#dotsPerMeterY)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DotsPerMeterY(self: ?*anyopaque) i32 {
        return C.QImage_DotsPerMeterY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setDotsPerMeterX)
    ///
    /// ``` self: ?*C.QImage, dotsPerMeterX: i32 ```
    pub fn SetDotsPerMeterX(self: ?*anyopaque, dotsPerMeterX: i32) void {
        C.QImage_SetDotsPerMeterX(@ptrCast(self), @intCast(dotsPerMeterX));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setDotsPerMeterY)
    ///
    /// ``` self: ?*C.QImage, dotsPerMeterY: i32 ```
    pub fn SetDotsPerMeterY(self: ?*anyopaque, dotsPerMeterY: i32) void {
        C.QImage_SetDotsPerMeterY(@ptrCast(self), @intCast(dotsPerMeterY));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#offset)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn Offset(self: ?*anyopaque) ?*C.QPoint {
        return C.QImage_Offset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setOffset)
    ///
    /// ``` self: ?*C.QImage, offset: ?*C.QPoint ```
    pub fn SetOffset(self: ?*anyopaque, offset: ?*anyopaque) void {
        C.QImage_SetOffset(@ptrCast(self), @ptrCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#textKeys)
    ///
    /// ``` self: ?*C.QImage, allocator: std.mem.Allocator ```
    pub fn TextKeys(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QImage_TextKeys(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#text)
    ///
    /// ``` self: ?*C.QImage, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QImage_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#setText)
    ///
    /// ``` self: ?*C.QImage, key: []const u8, value: []const u8 ```
    pub fn SetText(self: ?*anyopaque, key: []const u8, value: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QImage_SetText(@ptrCast(self), key_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#pixelFormat)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn PixelFormat(self: ?*anyopaque) ?*C.QPixelFormat {
        return C.QImage_PixelFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#toPixelFormat)
    ///
    /// ``` format: qimage_enums.Format ```
    pub fn ToPixelFormat(format: i64) ?*C.QPixelFormat {
        return C.QImage_ToPixelFormat(@intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#toImageFormat)
    ///
    /// ``` format: ?*C.QPixelFormat ```
    pub fn ToImageFormat(format: ?*C.QPixelFormat) i64 {
        return C.QImage_ToImageFormat(@ptrCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#metric)
    ///
    /// ``` self: ?*C.QImage, metric: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, metric: i64) i32 {
        return C.QImage_Metric(@ptrCast(self), @intCast(metric));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QImage_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, metric: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, metric: i64) i32 {
        return C.QImage_QBaseMetric(@ptrCast(self), @intCast(metric));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirrored_helper)
    ///
    /// ``` self: ?*C.QImage, horizontal: bool, vertical: bool ```
    pub fn MirroredHelper(self: ?*anyopaque, horizontal: bool, vertical: bool) ?*C.QImage {
        return C.QImage_MirroredHelper(@ptrCast(self), horizontal, vertical);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, bool, bool) callconv(.c) ?*C.QImage ```
    pub fn OnMirroredHelper(self: ?*anyopaque, slot: fn (?*anyopaque, bool, bool) callconv(.c) ?*C.QImage) void {
        C.QImage_OnMirroredHelper(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, horizontal: bool, vertical: bool ```
    pub fn QBaseMirroredHelper(self: ?*anyopaque, horizontal: bool, vertical: bool) ?*C.QImage {
        return C.QImage_QBaseMirroredHelper(@ptrCast(self), horizontal, vertical);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#rgbSwapped_helper)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn RgbSwappedHelper(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_RgbSwappedHelper(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) ?*C.QImage ```
    pub fn OnRgbSwappedHelper(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QImage) void {
        C.QImage_OnRgbSwappedHelper(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBaseRgbSwappedHelper(self: ?*anyopaque) ?*C.QImage {
        return C.QImage_QBaseRgbSwappedHelper(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirrored_inplace)
    ///
    /// ``` self: ?*C.QImage, horizontal: bool, vertical: bool ```
    pub fn MirroredInplace(self: ?*anyopaque, horizontal: bool, vertical: bool) void {
        C.QImage_MirroredInplace(@ptrCast(self), horizontal, vertical);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, bool, bool) callconv(.c) void ```
    pub fn OnMirroredInplace(self: ?*anyopaque, slot: fn (?*anyopaque, bool, bool) callconv(.c) void) void {
        C.QImage_OnMirroredInplace(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, horizontal: bool, vertical: bool ```
    pub fn QBaseMirroredInplace(self: ?*anyopaque, horizontal: bool, vertical: bool) void {
        C.QImage_QBaseMirroredInplace(@ptrCast(self), horizontal, vertical);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#rgbSwapped_inplace)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn RgbSwappedInplace(self: ?*anyopaque) void {
        C.QImage_RgbSwappedInplace(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) void ```
    pub fn OnRgbSwappedInplace(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QImage_OnRgbSwappedInplace(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBaseRgbSwappedInplace(self: ?*anyopaque) void {
        C.QImage_QBaseRgbSwappedInplace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat_helper)
    ///
    /// ``` self: ?*C.QImage, format: qimage_enums.Format, flags: i32 ```
    pub fn ConvertToFormatHelper(self: ?*anyopaque, format: i64, flags: i64) ?*C.QImage {
        return C.QImage_ConvertToFormatHelper(@ptrCast(self), @intCast(format), @intCast(flags));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, qimage_enums.Format, i32) callconv(.c) ?*C.QImage ```
    pub fn OnConvertToFormatHelper(self: ?*anyopaque, slot: fn (?*anyopaque, i64, i64) callconv(.c) ?*C.QImage) void {
        C.QImage_OnConvertToFormatHelper(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, format: qimage_enums.Format, flags: i32 ```
    pub fn QBaseConvertToFormatHelper(self: ?*anyopaque, format: i64, flags: i64) ?*C.QImage {
        return C.QImage_QBaseConvertToFormatHelper(@ptrCast(self), @intCast(format), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat_inplace)
    ///
    /// ``` self: ?*C.QImage, format: qimage_enums.Format, flags: i32 ```
    pub fn ConvertToFormatInplace(self: ?*anyopaque, format: i64, flags: i64) bool {
        return C.QImage_ConvertToFormatInplace(@ptrCast(self), @intCast(format), @intCast(flags));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, qimage_enums.Format, i32) callconv(.c) bool ```
    pub fn OnConvertToFormatInplace(self: ?*anyopaque, slot: fn (?*anyopaque, i64, i64) callconv(.c) bool) void {
        C.QImage_OnConvertToFormatInplace(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, format: qimage_enums.Format, flags: i32 ```
    pub fn QBaseConvertToFormatInplace(self: ?*anyopaque, format: i64, flags: i64) bool {
        return C.QImage_QBaseConvertToFormatInplace(@ptrCast(self), @intCast(format), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#smoothScaled)
    ///
    /// ``` self: ?*C.QImage, w: i32, h: i32 ```
    pub fn SmoothScaled(self: ?*anyopaque, w: i32, h: i32) ?*C.QImage {
        return C.QImage_SmoothScaled(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, i32, i32) callconv(.c) ?*C.QImage ```
    pub fn OnSmoothScaled(self: ?*anyopaque, slot: fn (?*anyopaque, i32, i32) callconv(.c) ?*C.QImage) void {
        C.QImage_OnSmoothScaled(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, w: i32, h: i32 ```
    pub fn QBaseSmoothScaled(self: ?*anyopaque, w: i32, h: i32) ?*C.QImage {
        return C.QImage_QBaseSmoothScaled(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#detachMetadata)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DetachMetadata(self: ?*anyopaque) void {
        C.QImage_DetachMetadata(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) void ```
    pub fn OnDetachMetadata(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QImage_OnDetachMetadata(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBaseDetachMetadata(self: ?*anyopaque) void {
        C.QImage_QBaseDetachMetadata(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#copy)
    ///
    /// ``` self: ?*C.QImage, rect: ?*C.QRect ```
    pub fn Copy1(self: ?*anyopaque, rect: ?*anyopaque) ?*C.QImage {
        return C.QImage_Copy1(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format, flags: i32 ```
    pub fn ConvertToFormat22(self: ?*anyopaque, f: i64, flags: i64) ?*C.QImage {
        return C.QImage_ConvertToFormat22(@ptrCast(self), @intCast(f), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertToFormat)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format, colorTable: []u32, flags: i32 ```
    pub fn ConvertToFormat3(self: ?*anyopaque, f: i64, colorTable: []u32, flags: i64) ?*C.QImage {
        const colorTable_list = C.struct_libqt_list{
            .len = colorTable.len,
            .data = colorTable.ptr,
        };
        return C.QImage_ConvertToFormat3(@ptrCast(self), @intCast(f), colorTable_list, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertedTo)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format, flags: i32 ```
    pub fn ConvertedTo2(self: ?*anyopaque, f: i64, flags: i64) ?*C.QImage {
        return C.QImage_ConvertedTo2(@ptrCast(self), @intCast(f), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#convertTo)
    ///
    /// ``` self: ?*C.QImage, f: qimage_enums.Format, flags: i32 ```
    pub fn ConvertTo2(self: ?*anyopaque, f: i64, flags: i64) void {
        C.QImage_ConvertTo2(@ptrCast(self), @intCast(f), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createAlphaMask)
    ///
    /// ``` self: ?*C.QImage, flags: i32 ```
    pub fn CreateAlphaMask1(self: ?*anyopaque, flags: i64) ?*C.QImage {
        return C.QImage_CreateAlphaMask1(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createHeuristicMask)
    ///
    /// ``` self: ?*C.QImage, clipTight: bool ```
    pub fn CreateHeuristicMask1(self: ?*anyopaque, clipTight: bool) ?*C.QImage {
        return C.QImage_CreateHeuristicMask1(@ptrCast(self), clipTight);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#createMaskFromColor)
    ///
    /// ``` self: ?*C.QImage, color: u32, mode: qnamespace_enums.MaskMode ```
    pub fn CreateMaskFromColor2(self: ?*anyopaque, color: u32, mode: i64) ?*C.QImage {
        return C.QImage_CreateMaskFromColor2(@ptrCast(self), @intCast(color), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled3(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64) ?*C.QImage {
        return C.QImage_Scaled3(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, w: i32, h: i32, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled4(self: ?*anyopaque, w: i32, h: i32, aspectMode: i64, mode: i64) ?*C.QImage {
        return C.QImage_Scaled4(@ptrCast(self), @intCast(w), @intCast(h), @intCast(aspectMode), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode ```
    pub fn Scaled2(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64) ?*C.QImage {
        return C.QImage_Scaled2(@ptrCast(self), @ptrCast(s), @intCast(aspectMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaled)
    ///
    /// ``` self: ?*C.QImage, s: ?*C.QSize, aspectMode: qnamespace_enums.AspectRatioMode, mode: qnamespace_enums.TransformationMode ```
    pub fn Scaled32(self: ?*anyopaque, s: ?*anyopaque, aspectMode: i64, mode: i64) ?*C.QImage {
        return C.QImage_Scaled32(@ptrCast(self), @ptrCast(s), @intCast(aspectMode), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaledToWidth)
    ///
    /// ``` self: ?*C.QImage, w: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToWidth2(self: ?*anyopaque, w: i32, mode: i64) ?*C.QImage {
        return C.QImage_ScaledToWidth2(@ptrCast(self), @intCast(w), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#scaledToHeight)
    ///
    /// ``` self: ?*C.QImage, h: i32, mode: qnamespace_enums.TransformationMode ```
    pub fn ScaledToHeight2(self: ?*anyopaque, h: i32, mode: i64) ?*C.QImage {
        return C.QImage_ScaledToHeight2(@ptrCast(self), @intCast(h), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#transformed)
    ///
    /// ``` self: ?*C.QImage, matrix: ?*C.QTransform, mode: qnamespace_enums.TransformationMode ```
    pub fn Transformed2(self: ?*anyopaque, matrix: ?*anyopaque, mode: i64) ?*C.QImage {
        return C.QImage_Transformed2(@ptrCast(self), @ptrCast(matrix), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirrored)
    ///
    /// ``` self: ?*C.QImage, horizontally: bool ```
    pub fn Mirrored1(self: ?*anyopaque, horizontally: bool) ?*C.QImage {
        return C.QImage_Mirrored1(@ptrCast(self), horizontally);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirrored)
    ///
    /// ``` self: ?*C.QImage, horizontally: bool, vertically: bool ```
    pub fn Mirrored2(self: ?*anyopaque, horizontally: bool, vertically: bool) ?*C.QImage {
        return C.QImage_Mirrored2(@ptrCast(self), horizontally, vertically);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirror)
    ///
    /// ``` self: ?*C.QImage, horizontally: bool ```
    pub fn Mirror1(self: ?*anyopaque, horizontally: bool) void {
        C.QImage_Mirror1(@ptrCast(self), horizontally);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#mirror)
    ///
    /// ``` self: ?*C.QImage, horizontally: bool, vertically: bool ```
    pub fn Mirror2(self: ?*anyopaque, horizontally: bool, vertically: bool) void {
        C.QImage_Mirror2(@ptrCast(self), horizontally, vertically);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#invertPixels)
    ///
    /// ``` self: ?*C.QImage, param1: qimage_enums.InvertMode ```
    pub fn InvertPixels1(self: ?*anyopaque, param1: i64) void {
        C.QImage_InvertPixels1(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#load)
    ///
    /// ``` self: ?*C.QImage, fileName: []const u8, format: []const u8 ```
    pub fn Load2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Load2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, data: []const u8, format: []const u8 ```
    pub fn LoadFromData22(self: ?*anyopaque, data: []const u8, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_LoadFromData22(@ptrCast(self), @ptrCast(@constCast(&data)), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, buf: ?*u8, lenVal: i32, format: []const u8 ```
    pub fn LoadFromData3(self: ?*anyopaque, buf: ?*anyopaque, lenVal: i32, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_LoadFromData3(@ptrCast(self), @intCast(buf), @intCast(lenVal), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#loadFromData)
    ///
    /// ``` self: ?*C.QImage, data: []u8, format: []const u8 ```
    pub fn LoadFromData23(self: ?*anyopaque, data: []u8, format: []const u8) bool {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_LoadFromData23(@ptrCast(self), data_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, fileName: []const u8, format: []const u8 ```
    pub fn Save2(self: ?*anyopaque, fileName: []const u8, format: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Save2(@ptrCast(self), fileName_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, fileName: []const u8, format: []const u8, quality: i32 ```
    pub fn Save3(self: ?*anyopaque, fileName: []const u8, format: []const u8, quality: i32) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Save3(@ptrCast(self), fileName_str, format_Cstring, @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, device: ?*C.QIODevice, format: []const u8 ```
    pub fn Save22(self: ?*anyopaque, device: ?*anyopaque, format: []const u8) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Save22(@ptrCast(self), @ptrCast(device), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#save)
    ///
    /// ``` self: ?*C.QImage, device: ?*C.QIODevice, format: []const u8, quality: i32 ```
    pub fn Save32(self: ?*anyopaque, device: ?*anyopaque, format: []const u8, quality: i32) bool {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_Save32(@ptrCast(self), @ptrCast(device), format_Cstring, @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: []const u8, format: []const u8 ```
    pub fn FromData22(data: []const u8, format: []const u8) ?*C.QImage {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_FromData22(@ptrCast(@constCast(&data)), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: ?*u8, size: i32, format: []const u8 ```
    pub fn FromData3(data: ?*anyopaque, size: i32, format: []const u8) ?*C.QImage {
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_FromData3(@intCast(data), @intCast(size), format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#fromData)
    ///
    /// ``` data: []u8, format: []const u8 ```
    pub fn FromData23(data: []u8, format: []const u8) ?*C.QImage {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const format_Cstring = @constCast(format.ptr);
        return C.QImage_FromData23(data_str, format_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#text)
    ///
    /// ``` self: ?*C.QImage, key: []const u8, allocator: std.mem.Allocator ```
    pub fn Text1(self: ?*anyopaque, key: []const u8, allocator: std.mem.Allocator) []const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _str = C.QImage_Text1(@ptrCast(self), key_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimage.html#detachMetadata)
    ///
    /// ``` self: ?*C.QImage, invalidateCache: bool ```
    pub fn DetachMetadata1(self: ?*anyopaque, invalidateCache: bool) void {
        C.QImage_DetachMetadata1(@ptrCast(self), invalidateCache);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, bool) callconv(.c) void ```
    pub fn OnDetachMetadata1(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QImage_OnDetachMetadata1(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QImage, invalidateCache: bool ```
    pub fn QBaseDetachMetadata1(self: ?*anyopaque, invalidateCache: bool) void {
        C.QImage_QBaseDetachMetadata1(@ptrCast(self), invalidateCache);
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QImage ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
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
    /// ``` self: ?*C.QImage, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QImage_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QImage_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QImage_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QImage, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QImage_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QImage_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage, slot: fn (?*C.QImage, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QImage_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QImage ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QImage_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QImage_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QImage, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QImage_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QImage ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QImage_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qimage.html#types
pub const enums = struct {
    pub const InvertMode = enum {
        pub const InvertRgb: i32 = 0;
        pub const InvertRgba: i32 = 1;
    };

    pub const Format = enum {
        pub const Format_Invalid: i32 = 0;
        pub const Format_Mono: i32 = 1;
        pub const Format_MonoLSB: i32 = 2;
        pub const Format_Indexed8: i32 = 3;
        pub const Format_RGB32: i32 = 4;
        pub const Format_ARGB32: i32 = 5;
        pub const Format_ARGB32_Premultiplied: i32 = 6;
        pub const Format_RGB16: i32 = 7;
        pub const Format_ARGB8565_Premultiplied: i32 = 8;
        pub const Format_RGB666: i32 = 9;
        pub const Format_ARGB6666_Premultiplied: i32 = 10;
        pub const Format_RGB555: i32 = 11;
        pub const Format_ARGB8555_Premultiplied: i32 = 12;
        pub const Format_RGB888: i32 = 13;
        pub const Format_RGB444: i32 = 14;
        pub const Format_ARGB4444_Premultiplied: i32 = 15;
        pub const Format_RGBX8888: i32 = 16;
        pub const Format_RGBA8888: i32 = 17;
        pub const Format_RGBA8888_Premultiplied: i32 = 18;
        pub const Format_BGR30: i32 = 19;
        pub const Format_A2BGR30_Premultiplied: i32 = 20;
        pub const Format_RGB30: i32 = 21;
        pub const Format_A2RGB30_Premultiplied: i32 = 22;
        pub const Format_Alpha8: i32 = 23;
        pub const Format_Grayscale8: i32 = 24;
        pub const Format_RGBX64: i32 = 25;
        pub const Format_RGBA64: i32 = 26;
        pub const Format_RGBA64_Premultiplied: i32 = 27;
        pub const Format_Grayscale16: i32 = 28;
        pub const Format_BGR888: i32 = 29;
        pub const Format_RGBX16FPx4: i32 = 30;
        pub const Format_RGBA16FPx4: i32 = 31;
        pub const Format_RGBA16FPx4_Premultiplied: i32 = 32;
        pub const Format_RGBX32FPx4: i32 = 33;
        pub const Format_RGBA32FPx4: i32 = 34;
        pub const Format_RGBA32FPx4_Premultiplied: i32 = 35;
        pub const NImageFormats: i32 = 36;
    };
};
