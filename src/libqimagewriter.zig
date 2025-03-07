const C = @import("qt6c");
const qimageiohandler_enums = @import("libqimageiohandler.zig").enums;
const qimagewriter_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qimagewriter.html
pub const qimagewriter = struct {
    /// New constructs a new QImageWriter object.
    ///
    ///
    pub fn New() ?*C.QImageWriter {
        return C.QImageWriter_new();
    }

    /// New2 constructs a new QImageWriter object.
    ///
    /// ``` device: ?*C.QIODevice, format: []u8 ```
    pub fn New2(device: ?*anyopaque, format: []u8) ?*C.QImageWriter {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QImageWriter_new2(@ptrCast(device), format_str);
    }

    /// New3 constructs a new QImageWriter object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New3(fileName: []const u8) ?*C.QImageWriter {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QImageWriter_new3(fileName_str);
    }

    /// New4 constructs a new QImageWriter object.
    ///
    /// ``` fileName: []const u8, format: []u8 ```
    pub fn New4(fileName: []const u8, format: []u8) ?*C.QImageWriter {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QImageWriter_new4(fileName_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(sourceText: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const _str = C.QImageWriter_Tr(sourceText_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setFormat)
    ///
    /// ``` self: ?*C.QImageWriter, format: []u8 ```
    pub fn SetFormat(self: ?*anyopaque, format: []u8) void {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        C.QImageWriter_SetFormat(@ptrCast(self), format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#format)
    ///
    /// ``` self: ?*C.QImageWriter, allocator: std.mem.Allocator ```
    pub fn Format(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QImageWriter_Format(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setDevice)
    ///
    /// ``` self: ?*C.QImageWriter, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QImageWriter_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#device)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QImageWriter_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setFileName)
    ///
    /// ``` self: ?*C.QImageWriter, fileName: []const u8 ```
    pub fn SetFileName(self: ?*anyopaque, fileName: []const u8) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QImageWriter_SetFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#fileName)
    ///
    /// ``` self: ?*C.QImageWriter, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QImageWriter_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setQuality)
    ///
    /// ``` self: ?*C.QImageWriter, quality: i32 ```
    pub fn SetQuality(self: ?*anyopaque, quality: i32) void {
        C.QImageWriter_SetQuality(@ptrCast(self), @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#quality)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn Quality(self: ?*anyopaque) i32 {
        return C.QImageWriter_Quality(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setCompression)
    ///
    /// ``` self: ?*C.QImageWriter, compression: i32 ```
    pub fn SetCompression(self: ?*anyopaque, compression: i32) void {
        C.QImageWriter_SetCompression(@ptrCast(self), @intCast(compression));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#compression)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn Compression(self: ?*anyopaque) i32 {
        return C.QImageWriter_Compression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setSubType)
    ///
    /// ``` self: ?*C.QImageWriter, typeVal: []u8 ```
    pub fn SetSubType(self: ?*anyopaque, typeVal: []u8) void {
        const typeVal_str = C.struct_libqt_string{
            .len = typeVal.len,
            .data = @constCast(typeVal.ptr),
        };
        C.QImageWriter_SetSubType(@ptrCast(self), typeVal_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#subType)
    ///
    /// ``` self: ?*C.QImageWriter, allocator: std.mem.Allocator ```
    pub fn SubType(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QImageWriter_SubType(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#supportedSubTypes)
    ///
    /// ``` self: ?*C.QImageWriter, allocator: std.mem.Allocator ```
    pub fn SupportedSubTypes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageWriter_SupportedSubTypes(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setOptimizedWrite)
    ///
    /// ``` self: ?*C.QImageWriter, optimize: bool ```
    pub fn SetOptimizedWrite(self: ?*anyopaque, optimize: bool) void {
        C.QImageWriter_SetOptimizedWrite(@ptrCast(self), optimize);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#optimizedWrite)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn OptimizedWrite(self: ?*anyopaque) bool {
        return C.QImageWriter_OptimizedWrite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setProgressiveScanWrite)
    ///
    /// ``` self: ?*C.QImageWriter, progressive: bool ```
    pub fn SetProgressiveScanWrite(self: ?*anyopaque, progressive: bool) void {
        C.QImageWriter_SetProgressiveScanWrite(@ptrCast(self), progressive);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#progressiveScanWrite)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn ProgressiveScanWrite(self: ?*anyopaque) bool {
        return C.QImageWriter_ProgressiveScanWrite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#transformation)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn Transformation(self: ?*anyopaque) i64 {
        return C.QImageWriter_Transformation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setTransformation)
    ///
    /// ``` self: ?*C.QImageWriter, orientation: i32 ```
    pub fn SetTransformation(self: ?*anyopaque, orientation: i64) void {
        C.QImageWriter_SetTransformation(@ptrCast(self), @intCast(orientation));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#setText)
    ///
    /// ``` self: ?*C.QImageWriter, key: []const u8, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, key: []const u8, text: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QImageWriter_SetText(@ptrCast(self), key_str, text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#canWrite)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn CanWrite(self: ?*anyopaque) bool {
        return C.QImageWriter_CanWrite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#write)
    ///
    /// ``` self: ?*C.QImageWriter, image: ?*C.QImage ```
    pub fn Write(self: ?*anyopaque, image: ?*anyopaque) bool {
        return C.QImageWriter_Write(@ptrCast(self), @ptrCast(image));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#error)
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QImageWriter_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#errorString)
    ///
    /// ``` self: ?*C.QImageWriter, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QImageWriter_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#supportsOption)
    ///
    /// ``` self: ?*C.QImageWriter, option: qimageiohandler_enums.ImageOption ```
    pub fn SupportsOption(self: ?*anyopaque, option: i64) bool {
        return C.QImageWriter_SupportsOption(@ptrCast(self), @intCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#supportedImageFormats)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedImageFormats(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageWriter_SupportedImageFormats();
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#supportedMimeTypes)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedMimeTypes(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QImageWriter_SupportedMimeTypes();
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qimagewriter.html#imageFormatsForMimeType)
    ///
    /// ``` mimeType: []u8, allocator: std.mem.Allocator ```
    pub fn ImageFormatsForMimeType(mimeType: []u8, allocator: std.mem.Allocator) [][]u8 {
        const mimeType_str = C.struct_libqt_string{
            .len = mimeType.len,
            .data = @constCast(mimeType.ptr),
        };
        const _arr: C.struct_libqt_list = C.QImageWriter_ImageFormatsForMimeType(mimeType_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QImageWriter_Tr2(sourceText_Cstring, disambiguation_Cstring);
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
        const _str = C.QImageWriter_Tr3(sourceText_Cstring, disambiguation_Cstring, @intCast(n));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QImageWriter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QImageWriter_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qimagewriter.html#types
pub const enums = struct {
    pub const ImageWriterError = enum {
        pub const UnknownError: i32 = 0;
        pub const DeviceError: i32 = 1;
        pub const UnsupportedFormatError: i32 = 2;
        pub const InvalidImageError: i32 = 3;
    };
};
