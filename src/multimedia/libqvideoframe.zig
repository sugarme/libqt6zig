const C = @import("qt6c");
const qvideoframe_enums = enums;
const qvideoframeformat_enums = @import("libqvideoframeformat.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qvideoframe.html
pub const qvideoframe = struct {
    /// New constructs a new QVideoFrame object.
    ///
    ///
    pub fn New() ?*C.QVideoFrame {
        return C.QVideoFrame_new();
    }

    /// New2 constructs a new QVideoFrame object.
    ///
    /// ``` format: ?*C.QVideoFrameFormat ```
    pub fn New2(format: ?*anyopaque) ?*C.QVideoFrame {
        return C.QVideoFrame_new2(@ptrCast(format));
    }

    /// New3 constructs a new QVideoFrame object.
    ///
    /// ``` other: ?*C.QVideoFrame ```
    pub fn New3(other: ?*anyopaque) ?*C.QVideoFrame {
        return C.QVideoFrame_new3(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#swap)
    ///
    /// ``` self: ?*C.QVideoFrame, other: ?*C.QVideoFrame ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVideoFrame_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#operator=)
    ///
    /// ``` self: ?*C.QVideoFrame, other: ?*C.QVideoFrame ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVideoFrame_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#operator==)
    ///
    /// ``` self: ?*C.QVideoFrame, other: ?*C.QVideoFrame ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QVideoFrame_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#operator!=)
    ///
    /// ``` self: ?*C.QVideoFrame, other: ?*C.QVideoFrame ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QVideoFrame_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#isValid)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QVideoFrame_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#pixelFormat)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn PixelFormat(self: ?*anyopaque) i64 {
        return C.QVideoFrame_PixelFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#surfaceFormat)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn SurfaceFormat(self: ?*anyopaque) ?*C.QVideoFrameFormat {
        return C.QVideoFrame_SurfaceFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#handleType)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn HandleType(self: ?*anyopaque) i64 {
        return C.QVideoFrame_HandleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#size)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QVideoFrame_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#width)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QVideoFrame_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#height)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QVideoFrame_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#isMapped)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn IsMapped(self: ?*anyopaque) bool {
        return C.QVideoFrame_IsMapped(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#isReadable)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn IsReadable(self: ?*anyopaque) bool {
        return C.QVideoFrame_IsReadable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#isWritable)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn IsWritable(self: ?*anyopaque) bool {
        return C.QVideoFrame_IsWritable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#mapMode)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn MapMode(self: ?*anyopaque) i64 {
        return C.QVideoFrame_MapMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#map)
    ///
    /// ``` self: ?*C.QVideoFrame, mode: qvideoframe_enums.MapMode ```
    pub fn Map(self: ?*anyopaque, mode: i64) bool {
        return C.QVideoFrame_Map(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#unmap)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn Unmap(self: ?*anyopaque) void {
        C.QVideoFrame_Unmap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#bytesPerLine)
    ///
    /// ``` self: ?*C.QVideoFrame, plane: i32 ```
    pub fn BytesPerLine(self: ?*anyopaque, plane: i32) i32 {
        return C.QVideoFrame_BytesPerLine(@ptrCast(self), @intCast(plane));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#bits)
    ///
    /// ``` self: ?*C.QVideoFrame, plane: i32 ```
    pub fn Bits(self: ?*anyopaque, plane: i32) ?*u8 {
        return @ptrCast(C.QVideoFrame_Bits(@ptrCast(self), @intCast(plane)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#bits)
    ///
    /// ``` self: ?*C.QVideoFrame, plane: i32 ```
    pub fn BitsWithPlane(self: ?*anyopaque, plane: i32) ?*u8 {
        return @ptrCast(C.QVideoFrame_BitsWithPlane(@ptrCast(self), @intCast(plane)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#mappedBytes)
    ///
    /// ``` self: ?*C.QVideoFrame, plane: i32 ```
    pub fn MappedBytes(self: ?*anyopaque, plane: i32) i32 {
        return C.QVideoFrame_MappedBytes(@ptrCast(self), @intCast(plane));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#planeCount)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn PlaneCount(self: ?*anyopaque) i32 {
        return C.QVideoFrame_PlaneCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#startTime)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn StartTime(self: ?*anyopaque) i64 {
        return C.QVideoFrame_StartTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#setStartTime)
    ///
    /// ``` self: ?*C.QVideoFrame, time: i64 ```
    pub fn SetStartTime(self: ?*anyopaque, time: i64) void {
        C.QVideoFrame_SetStartTime(@ptrCast(self), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#endTime)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn EndTime(self: ?*anyopaque) i64 {
        return C.QVideoFrame_EndTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#setEndTime)
    ///
    /// ``` self: ?*C.QVideoFrame, time: i64 ```
    pub fn SetEndTime(self: ?*anyopaque, time: i64) void {
        C.QVideoFrame_SetEndTime(@ptrCast(self), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#setRotationAngle)
    ///
    /// ``` self: ?*C.QVideoFrame, rotationAngle: qvideoframe_enums.RotationAngle ```
    pub fn SetRotationAngle(self: ?*anyopaque, rotationAngle: i64) void {
        C.QVideoFrame_SetRotationAngle(@ptrCast(self), @intCast(rotationAngle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#rotationAngle)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn RotationAngle(self: ?*anyopaque) i64 {
        return C.QVideoFrame_RotationAngle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#setMirrored)
    ///
    /// ``` self: ?*C.QVideoFrame, mirrored: bool ```
    pub fn SetMirrored(self: ?*anyopaque, mirrored: bool) void {
        C.QVideoFrame_SetMirrored(@ptrCast(self), mirrored);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#mirrored)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn Mirrored(self: ?*anyopaque) bool {
        return C.QVideoFrame_Mirrored(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#toImage)
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn ToImage(self: ?*anyopaque) ?*C.QImage {
        return C.QVideoFrame_ToImage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#subtitleText)
    ///
    /// ``` self: ?*C.QVideoFrame, allocator: std.mem.Allocator ```
    pub fn SubtitleText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QVideoFrame_SubtitleText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#setSubtitleText)
    ///
    /// ``` self: ?*C.QVideoFrame, text: []const u8 ```
    pub fn SetSubtitleText(self: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QVideoFrame_SetSubtitleText(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvideoframe.html#paint)
    ///
    /// ``` self: ?*C.QVideoFrame, painter: ?*C.QPainter, rect: ?*C.QRectF, options: ?*C.QVideoFrame__PaintOptions ```
    pub fn Paint(self: ?*anyopaque, painter: ?*anyopaque, rect: ?*anyopaque, options: ?*anyopaque) void {
        C.QVideoFrame_Paint(@ptrCast(self), @ptrCast(painter), @ptrCast(rect), @ptrCast(options));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QVideoFrame ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QVideoFrame_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qvideoframe-paintoptions.html
pub const qvideoframe__paintoptions = struct {
    /// New constructs a new QVideoFrame::PaintOptions object.
    ///
    /// ``` other: ?*C.QVideoFrame__PaintOptions ```
    pub fn New(other: ?*anyopaque) ?*C.QVideoFrame__PaintOptions {
        return C.QVideoFrame__PaintOptions_new(@ptrCast(other));
    }

    /// New2 constructs a new QVideoFrame::PaintOptions object and invalidates the source QVideoFrame::PaintOptions object.
    ///
    /// ``` other: ?*C.QVideoFrame__PaintOptions ```
    pub fn New2(other: ?*anyopaque) ?*C.QVideoFrame__PaintOptions {
        return C.QVideoFrame__PaintOptions_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QVideoFrame__PaintOptions, other: ?*QVideoFrame__PaintOptions ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVideoFrame__PaintOptions_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QVideoFrame__PaintOptions, other: ?*QVideoFrame__PaintOptions ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVideoFrame__PaintOptions_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QVideoFrame__PaintOptions ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QVideoFrame__PaintOptions_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qvideoframe.html#types
pub const enums = struct {
    pub const HandleType = enum {
        pub const NoHandle: i32 = 0;
        pub const RhiTextureHandle: i32 = 1;
    };

    pub const MapMode = enum {
        pub const NotMapped: i32 = 0;
        pub const ReadOnly: i32 = 1;
        pub const WriteOnly: i32 = 2;
        pub const ReadWrite: i32 = 3;
    };

    pub const RotationAngle = enum {
        pub const Rotation0: i32 = 0;
        pub const Rotation90: i32 = 90;
        pub const Rotation180: i32 = 180;
        pub const Rotation270: i32 = 270;
    };

    pub const PaintFlag = enum {
        pub const DontDrawSubtitles: i32 = 1;
    };
};
