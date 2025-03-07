const C = @import("qt6c");
const qpaintdevice_enums = @import("libqpaintdevice.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qpicture.html
pub const qpicture = struct {
    /// New constructs a new QPicture object.
    ///
    ///
    pub fn New() ?*C.QPicture {
        return C.QPicture_new();
    }

    /// New2 constructs a new QPicture object.
    ///
    /// ``` param1: ?*C.QPicture ```
    pub fn New2(param1: ?*anyopaque) ?*C.QPicture {
        return C.QPicture_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QPicture object.
    ///
    /// ``` formatVersion: i32 ```
    pub fn New3(formatVersion: i32) ?*C.QPicture {
        return C.QPicture_new3(@intCast(formatVersion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#isNull)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPicture_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#devType)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QPicture_DevType(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPicture, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QPicture_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QPicture_QBaseDevType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#size)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn Size(self: ?*anyopaque) u32 {
        return C.QPicture_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#data)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn Data(self: ?*anyopaque) []const u8 {
        const _ret = C.QPicture_Data(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#setData)
    ///
    /// ``` self: ?*C.QPicture, data: []const u8, size: u32 ```
    pub fn SetData(self: ?*anyopaque, data: []const u8, size: u32) void {
        const data_Cstring = @constCast(data.ptr);
        C.QPicture_SetData(@ptrCast(self), data_Cstring, @intCast(size));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPicture, slot: fn (?*C.QPicture, []const u8, u32) callconv(.c) void ```
    pub fn OnSetData(self: ?*anyopaque, slot: fn (?*anyopaque, []const u8, u32) callconv(.c) void) void {
        C.QPicture_OnSetData(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPicture, data: []const u8, size: u32 ```
    pub fn QBaseSetData(self: ?*anyopaque, data: []const u8, size: u32) void {
        const data_Cstring = @constCast(data.ptr);
        C.QPicture_QBaseSetData(@ptrCast(self), data_Cstring, @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#play)
    ///
    /// ``` self: ?*C.QPicture, p: ?*C.QPainter ```
    pub fn Play(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPicture_Play(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#load)
    ///
    /// ``` self: ?*C.QPicture, dev: ?*C.QIODevice ```
    pub fn Load(self: ?*anyopaque, dev: ?*anyopaque) bool {
        return C.QPicture_Load(@ptrCast(self), @ptrCast(dev));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#load)
    ///
    /// ``` self: ?*C.QPicture, fileName: []const u8 ```
    pub fn LoadWithFileName(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPicture_LoadWithFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#save)
    ///
    /// ``` self: ?*C.QPicture, dev: ?*C.QIODevice ```
    pub fn Save(self: ?*anyopaque, dev: ?*anyopaque) bool {
        return C.QPicture_Save(@ptrCast(self), @ptrCast(dev));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#save)
    ///
    /// ``` self: ?*C.QPicture, fileName: []const u8 ```
    pub fn SaveWithFileName(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QPicture_SaveWithFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#boundingRect)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn BoundingRect(self: ?*anyopaque) ?*C.QRect {
        return C.QPicture_BoundingRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#setBoundingRect)
    ///
    /// ``` self: ?*C.QPicture, r: ?*C.QRect ```
    pub fn SetBoundingRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QPicture_SetBoundingRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#operator=)
    ///
    /// ``` self: ?*C.QPicture, p: ?*C.QPicture ```
    pub fn OperatorAssign(self: ?*anyopaque, p: ?*anyopaque) void {
        C.QPicture_OperatorAssign(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#swap)
    ///
    /// ``` self: ?*C.QPicture, other: ?*C.QPicture ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPicture_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#detach)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QPicture_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#isDetached)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QPicture_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#paintEngine)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPicture_PaintEngine(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPicture, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QPicture_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPicture_QBasePaintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpicture.html#metric)
    ///
    /// ``` self: ?*C.QPicture, m: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, m: i64) i32 {
        return C.QPicture_Metric(@ptrCast(self), @intCast(m));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPicture, slot: fn (?*C.QPicture, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QPicture_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPicture, m: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, m: i64) i32 {
        return C.QPicture_QBaseMetric(@ptrCast(self), @intCast(m));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#width)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Width(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#height)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Height(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatio(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QPaintDevice_ColorCount(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#depth)
    ///
    /// ``` self: ?*C.QPicture ```
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
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPicture_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPicture_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, slot: fn (?*C.QPicture, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPicture_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPicture_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPicture_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, slot: fn (?*C.QPicture, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QPicture_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPicture_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPicture_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPicture, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QPicture_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPicture ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPicture_Delete(@ptrCast(self));
    }
};
