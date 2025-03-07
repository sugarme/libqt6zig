const C = @import("qt6c");
const qpaintdevice_enums = @import("../libqpaintdevice.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsvggenerator.html
pub const qsvggenerator = struct {
    /// New constructs a new QSvgGenerator object.
    ///
    ///
    pub fn New() ?*C.QSvgGenerator {
        return C.QSvgGenerator_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#title)
    ///
    /// ``` self: ?*C.QSvgGenerator, allocator: std.mem.Allocator ```
    pub fn Title(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSvgGenerator_Title(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setTitle)
    ///
    /// ``` self: ?*C.QSvgGenerator, title: []const u8 ```
    pub fn SetTitle(self: ?*anyopaque, title: []const u8) void {
        const title_str = C.struct_libqt_string{
            .len = title.len,
            .data = @constCast(title.ptr),
        };
        C.QSvgGenerator_SetTitle(@ptrCast(self), title_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#description)
    ///
    /// ``` self: ?*C.QSvgGenerator, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSvgGenerator_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setDescription)
    ///
    /// ``` self: ?*C.QSvgGenerator, description: []const u8 ```
    pub fn SetDescription(self: ?*anyopaque, description: []const u8) void {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        C.QSvgGenerator_SetDescription(@ptrCast(self), description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#size)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QSvgGenerator_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setSize)
    ///
    /// ``` self: ?*C.QSvgGenerator, size: ?*C.QSize ```
    pub fn SetSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QSvgGenerator_SetSize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#viewBox)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn ViewBox(self: ?*anyopaque) ?*C.QRect {
        return C.QSvgGenerator_ViewBox(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#viewBoxF)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn ViewBoxF(self: ?*anyopaque) ?*C.QRectF {
        return C.QSvgGenerator_ViewBoxF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setViewBox)
    ///
    /// ``` self: ?*C.QSvgGenerator, viewBox: ?*C.QRect ```
    pub fn SetViewBox(self: ?*anyopaque, viewBox: ?*anyopaque) void {
        C.QSvgGenerator_SetViewBox(@ptrCast(self), @ptrCast(viewBox));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setViewBox)
    ///
    /// ``` self: ?*C.QSvgGenerator, viewBox: ?*C.QRectF ```
    pub fn SetViewBoxWithViewBox(self: ?*anyopaque, viewBox: ?*anyopaque) void {
        C.QSvgGenerator_SetViewBoxWithViewBox(@ptrCast(self), @ptrCast(viewBox));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#fileName)
    ///
    /// ``` self: ?*C.QSvgGenerator, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSvgGenerator_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setFileName)
    ///
    /// ``` self: ?*C.QSvgGenerator, fileName: []const u8 ```
    pub fn SetFileName(self: ?*anyopaque, fileName: []const u8) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QSvgGenerator_SetFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#outputDevice)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn OutputDevice(self: ?*anyopaque) ?*C.QIODevice {
        return C.QSvgGenerator_OutputDevice(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setOutputDevice)
    ///
    /// ``` self: ?*C.QSvgGenerator, outputDevice: ?*C.QIODevice ```
    pub fn SetOutputDevice(self: ?*anyopaque, outputDevice: ?*anyopaque) void {
        C.QSvgGenerator_SetOutputDevice(@ptrCast(self), @ptrCast(outputDevice));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#setResolution)
    ///
    /// ``` self: ?*C.QSvgGenerator, dpi: i32 ```
    pub fn SetResolution(self: ?*anyopaque, dpi: i32) void {
        C.QSvgGenerator_SetResolution(@ptrCast(self), @intCast(dpi));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#resolution)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn Resolution(self: ?*anyopaque) i32 {
        return C.QSvgGenerator_Resolution(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#paintEngine)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QSvgGenerator_PaintEngine(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QSvgGenerator_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QSvgGenerator_QBasePaintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsvggenerator.html#metric)
    ///
    /// ``` self: ?*C.QSvgGenerator, metric: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, metric: i64) i32 {
        return C.QSvgGenerator_Metric(@ptrCast(self), @intCast(metric));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn (?*C.QSvgGenerator, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QSvgGenerator_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSvgGenerator, metric: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, metric: i64) i32 {
        return C.QSvgGenerator_QBaseMetric(@ptrCast(self), @intCast(metric));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#width)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Width(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#height)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Height(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatio(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QPaintDevice_ColorCount(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#depth)
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Depth(@ptrCast(self));
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
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devType)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QSvgGenerator_DevType(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QSvgGenerator_QBaseDevType(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QSvgGenerator_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QSvgGenerator_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QSvgGenerator_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn (?*C.QSvgGenerator, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QSvgGenerator_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QSvgGenerator_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QSvgGenerator_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn (?*C.QSvgGenerator, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QSvgGenerator_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QSvgGenerator_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QSvgGenerator_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSvgGenerator, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QSvgGenerator_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSvgGenerator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSvgGenerator_Delete(@ptrCast(self));
    }
};
