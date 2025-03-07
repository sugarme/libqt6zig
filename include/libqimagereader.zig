const C = @import("qt6c");
const qimage_enums = @import("libqimage.zig").enums;
const qimageiohandler_enums = @import("libqimageiohandler.zig").enums;
const qimagereader_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qimagereader.html
pub const qimagereader = struct {
    /// New constructs a new QImageReader object.
    ///
    ///
    pub fn New() ?*C.QImageReader {
        return C.QImageReader_new();
    }

    /// New2 constructs a new QImageReader object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New2(device: ?*anyopaque) ?*C.QImageReader {
        return C.QImageReader_new2(@ptrCast(device));
    }

    /// New3 constructs a new QImageReader object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New3(fileName: []const u8) ?*C.QImageReader {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QImageReader_new3(fileName_str);
    }

    /// New4 constructs a new QImageReader object.
    ///
    /// ``` device: ?*C.QIODevice, format: []u8 ```
    pub fn New4(device: ?*anyopaque, format: []u8) ?*C.QImageReader {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QImageReader_new4(@ptrCast(device), format_str);
    }

    /// New5 constructs a new QImageReader object.
    ///
    /// ``` fileName: []const u8, format: []u8 ```
    pub fn New5(fileName: []const u8, format: []u8) ?*C.QImageReader {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QImageReader_new5(fileName_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(sourceText: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const _str = C.QImageReader_Tr(sourceText_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setFormat)
    ///
    /// ``` self: ?*C.QImageReader, format: []u8 ```
    pub fn SetFormat(self: ?*anyopaque, format: []u8) void {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        C.QImageReader_SetFormat(@ptrCast(self), format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#format)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn Format(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QImageReader_Format(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setAutoDetectImageFormat)
    ///
    /// ``` self: ?*C.QImageReader, enabled: bool ```
    pub fn SetAutoDetectImageFormat(self: ?*anyopaque, enabled: bool) void {
        C.QImageReader_SetAutoDetectImageFormat(@ptrCast(self), enabled);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#autoDetectImageFormat)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn AutoDetectImageFormat(self: ?*anyopaque) bool {
        return C.QImageReader_AutoDetectImageFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setDecideFormatFromContent)
    ///
    /// ``` self: ?*C.QImageReader, ignored: bool ```
    pub fn SetDecideFormatFromContent(self: ?*anyopaque, ignored: bool) void {
        C.QImageReader_SetDecideFormatFromContent(@ptrCast(self), ignored);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#decideFormatFromContent)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn DecideFormatFromContent(self: ?*anyopaque) bool {
        return C.QImageReader_DecideFormatFromContent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setDevice)
    ///
    /// ``` self: ?*C.QImageReader, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QImageReader_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#device)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QImageReader_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setFileName)
    ///
    /// ``` self: ?*C.QImageReader, fileName: []const u8 ```
    pub fn SetFileName(self: ?*anyopaque, fileName: []const u8) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QImageReader_SetFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#fileName)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QImageReader_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#size)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QImageReader_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#imageFormat)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn ImageFormat(self: ?*anyopaque) i64 {
        return C.QImageReader_ImageFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#textKeys)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn TextKeys(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QImageReader_TextKeys(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#text)
    ///
    /// ``` self: ?*C.QImageReader, key: []const u8, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, key: []const u8, allocator: std.mem.Allocator) []const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _str = C.QImageReader_Text(@ptrCast(self), key_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setClipRect)
    ///
    /// ``` self: ?*C.QImageReader, rect: ?*C.QRect ```
    pub fn SetClipRect(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QImageReader_SetClipRect(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#clipRect)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn ClipRect(self: ?*anyopaque) ?*C.QRect {
        return C.QImageReader_ClipRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setScaledSize)
    ///
    /// ``` self: ?*C.QImageReader, size: ?*C.QSize ```
    pub fn SetScaledSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QImageReader_SetScaledSize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#scaledSize)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn ScaledSize(self: ?*anyopaque) ?*C.QSize {
        return C.QImageReader_ScaledSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setQuality)
    ///
    /// ``` self: ?*C.QImageReader, quality: i32 ```
    pub fn SetQuality(self: ?*anyopaque, quality: i32) void {
        C.QImageReader_SetQuality(@ptrCast(self), @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#quality)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Quality(self: ?*anyopaque) i32 {
        return C.QImageReader_Quality(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setScaledClipRect)
    ///
    /// ``` self: ?*C.QImageReader, rect: ?*C.QRect ```
    pub fn SetScaledClipRect(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QImageReader_SetScaledClipRect(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#scaledClipRect)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn ScaledClipRect(self: ?*anyopaque) ?*C.QRect {
        return C.QImageReader_ScaledClipRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setBackgroundColor)
    ///
    /// ``` self: ?*C.QImageReader, color: ?*C.QColor ```
    pub fn SetBackgroundColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QImageReader_SetBackgroundColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#backgroundColor)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn BackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QImageReader_BackgroundColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#supportsAnimation)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn SupportsAnimation(self: ?*anyopaque) bool {
        return C.QImageReader_SupportsAnimation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#transformation)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Transformation(self: ?*anyopaque) i64 {
        return C.QImageReader_Transformation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setAutoTransform)
    ///
    /// ``` self: ?*C.QImageReader, enabled: bool ```
    pub fn SetAutoTransform(self: ?*anyopaque, enabled: bool) void {
        C.QImageReader_SetAutoTransform(@ptrCast(self), enabled);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#autoTransform)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn AutoTransform(self: ?*anyopaque) bool {
        return C.QImageReader_AutoTransform(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#subType)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn SubType(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QImageReader_SubType(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#supportedSubTypes)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn SupportedSubTypes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageReader_SupportedSubTypes(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#canRead)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn CanRead(self: ?*anyopaque) bool {
        return C.QImageReader_CanRead(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#read)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Read(self: ?*anyopaque) ?*C.QImage {
        return C.QImageReader_Read(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#read)
    ///
    /// ``` self: ?*C.QImageReader, image: ?*C.QImage ```
    pub fn ReadWithImage(self: ?*anyopaque, image: ?*anyopaque) bool {
        return C.QImageReader_ReadWithImage(@ptrCast(self), @ptrCast(image));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#jumpToNextImage)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn JumpToNextImage(self: ?*anyopaque) bool {
        return C.QImageReader_JumpToNextImage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#jumpToImage)
    ///
    /// ``` self: ?*C.QImageReader, imageNumber: i32 ```
    pub fn JumpToImage(self: ?*anyopaque, imageNumber: i32) bool {
        return C.QImageReader_JumpToImage(@ptrCast(self), @intCast(imageNumber));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#loopCount)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn LoopCount(self: ?*anyopaque) i32 {
        return C.QImageReader_LoopCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#imageCount)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn ImageCount(self: ?*anyopaque) i32 {
        return C.QImageReader_ImageCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#nextImageDelay)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn NextImageDelay(self: ?*anyopaque) i32 {
        return C.QImageReader_NextImageDelay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#currentImageNumber)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn CurrentImageNumber(self: ?*anyopaque) i32 {
        return C.QImageReader_CurrentImageNumber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#currentImageRect)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn CurrentImageRect(self: ?*anyopaque) ?*C.QRect {
        return C.QImageReader_CurrentImageRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#error)
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QImageReader_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#errorString)
    ///
    /// ``` self: ?*C.QImageReader, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QImageReader_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#supportsOption)
    ///
    /// ``` self: ?*C.QImageReader, option: qimageiohandler_enums.ImageOption ```
    pub fn SupportsOption(self: ?*anyopaque, option: i64) bool {
        return C.QImageReader_SupportsOption(@ptrCast(self), @intCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#imageFormat)
    ///
    /// ``` fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn ImageFormatWithFileName(fileName: []const u8, allocator: std.mem.Allocator) []u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QImageReader_ImageFormatWithFileName(fileName_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#imageFormat)
    ///
    /// ``` device: ?*C.QIODevice, allocator: std.mem.Allocator ```
    pub fn ImageFormatWithDevice(device: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QImageReader_ImageFormatWithDevice(@ptrCast(device));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#supportedImageFormats)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedImageFormats(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageReader_SupportedImageFormats();
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#supportedMimeTypes)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedMimeTypes(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageReader_SupportedMimeTypes();
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#imageFormatsForMimeType)
    ///
    /// ``` mimeType: []u8, allocator: std.mem.Allocator ```
    pub fn ImageFormatsForMimeType(mimeType: []u8, allocator: std.mem.Allocator) [][]u8 {
        const mimeType_str = C.struct_libqt_string{
            .len = mimeType.len,
            .data = @constCast(mimeType.ptr),
        };
        const _arr: C.struct_libqt_list = C.QImageReader_ImageFormatsForMimeType(mimeType_str);
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#allocationLimit)
    ///
    ///
    pub fn AllocationLimit() i32 {
        return C.QImageReader_AllocationLimit();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagereader.html#setAllocationLimit)
    ///
    /// ``` mbLimit: i32 ```
    pub fn SetAllocationLimit(mbLimit: i32) void {
        C.QImageReader_SetAllocationLimit(@intCast(mbLimit));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QImageReader_Tr2(sourceText_Cstring, disambiguation_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QImageReader_Tr3(sourceText_Cstring, disambiguation_Cstring, @intCast(n));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QImageReader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QImageReader_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qimagereader.html#types
pub const enums = struct {
    pub const ImageReaderError = enum {
        pub const UnknownError: i32 = 0;
        pub const FileNotFoundError: i32 = 1;
        pub const DeviceError: i32 = 2;
        pub const UnsupportedFormatError: i32 = 3;
        pub const InvalidDataError: i32 = 4;
    };
};
