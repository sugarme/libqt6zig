const C = @import("qt6c");
const qresource_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qresource.html
pub const qresource = struct {
    /// New constructs a new QResource object.
    ///
    ///
    pub fn New() ?*C.QResource {
        return C.QResource_new();
    }

    /// New2 constructs a new QResource object.
    ///
    /// ``` file: []const u8 ```
    pub fn New2(file: []const u8) ?*C.QResource {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };

        return C.QResource_new2(file_str);
    }

    /// New3 constructs a new QResource object.
    ///
    /// ``` file: []const u8, locale: ?*C.QLocale ```
    pub fn New3(file: []const u8, locale: ?*anyopaque) ?*C.QResource {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };

        return C.QResource_new3(file_str, @ptrCast(locale));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#setFileName)
    ///
    /// ``` self: ?*C.QResource, file: []const u8 ```
    pub fn SetFileName(self: ?*anyopaque, file: []const u8) void {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };
        C.QResource_SetFileName(@ptrCast(self), file_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#fileName)
    ///
    /// ``` self: ?*C.QResource, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QResource_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#absoluteFilePath)
    ///
    /// ``` self: ?*C.QResource, allocator: std.mem.Allocator ```
    pub fn AbsoluteFilePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QResource_AbsoluteFilePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#setLocale)
    ///
    /// ``` self: ?*C.QResource, locale: ?*C.QLocale ```
    pub fn SetLocale(self: ?*anyopaque, locale: ?*anyopaque) void {
        C.QResource_SetLocale(@ptrCast(self), @ptrCast(locale));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#locale)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn Locale(self: ?*anyopaque) ?*C.QLocale {
        return C.QResource_Locale(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#isValid)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QResource_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#compressionAlgorithm)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn CompressionAlgorithm(self: ?*anyopaque) i64 {
        return C.QResource_CompressionAlgorithm(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#size)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QResource_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#data)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn Data(self: ?*anyopaque) ?*u8 {
        return @ptrCast(C.QResource_Data(@ptrCast(self)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#uncompressedSize)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn UncompressedSize(self: ?*anyopaque) i64 {
        return C.QResource_UncompressedSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#uncompressedData)
    ///
    /// ``` self: ?*C.QResource, allocator: std.mem.Allocator ```
    pub fn UncompressedData(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QResource_UncompressedData(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#lastModified)
    ///
    /// ``` self: ?*C.QResource ```
    pub fn LastModified(self: ?*anyopaque) ?*C.QDateTime {
        return C.QResource_LastModified(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#registerResource)
    ///
    /// ``` rccFilename: []const u8 ```
    pub fn RegisterResource(rccFilename: []const u8) bool {
        const rccFilename_str = C.struct_libqt_string{
            .len = rccFilename.len,
            .data = @constCast(rccFilename.ptr),
        };
        return C.QResource_RegisterResource(rccFilename_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#unregisterResource)
    ///
    /// ``` rccFilename: []const u8 ```
    pub fn UnregisterResource(rccFilename: []const u8) bool {
        const rccFilename_str = C.struct_libqt_string{
            .len = rccFilename.len,
            .data = @constCast(rccFilename.ptr),
        };
        return C.QResource_UnregisterResource(rccFilename_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#registerResource)
    ///
    /// ``` rccData: ?*u8 ```
    pub fn RegisterResourceWithRccData(rccData: ?*anyopaque) bool {
        return C.QResource_RegisterResourceWithRccData(@intCast(rccData));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#unregisterResource)
    ///
    /// ``` rccData: ?*u8 ```
    pub fn UnregisterResourceWithRccData(rccData: ?*anyopaque) bool {
        return C.QResource_UnregisterResourceWithRccData(@intCast(rccData));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#registerResource)
    ///
    /// ``` rccFilename: []const u8, resourceRoot: []const u8 ```
    pub fn RegisterResource2(rccFilename: []const u8, resourceRoot: []const u8) bool {
        const rccFilename_str = C.struct_libqt_string{
            .len = rccFilename.len,
            .data = @constCast(rccFilename.ptr),
        };
        const resourceRoot_str = C.struct_libqt_string{
            .len = resourceRoot.len,
            .data = @constCast(resourceRoot.ptr),
        };
        return C.QResource_RegisterResource2(rccFilename_str, resourceRoot_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#unregisterResource)
    ///
    /// ``` rccFilename: []const u8, resourceRoot: []const u8 ```
    pub fn UnregisterResource2(rccFilename: []const u8, resourceRoot: []const u8) bool {
        const rccFilename_str = C.struct_libqt_string{
            .len = rccFilename.len,
            .data = @constCast(rccFilename.ptr),
        };
        const resourceRoot_str = C.struct_libqt_string{
            .len = resourceRoot.len,
            .data = @constCast(resourceRoot.ptr),
        };
        return C.QResource_UnregisterResource2(rccFilename_str, resourceRoot_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#registerResource)
    ///
    /// ``` rccData: ?*u8, resourceRoot: []const u8 ```
    pub fn RegisterResource22(rccData: ?*anyopaque, resourceRoot: []const u8) bool {
        const resourceRoot_str = C.struct_libqt_string{
            .len = resourceRoot.len,
            .data = @constCast(resourceRoot.ptr),
        };
        return C.QResource_RegisterResource22(@intCast(rccData), resourceRoot_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresource.html#unregisterResource)
    ///
    /// ``` rccData: ?*u8, resourceRoot: []const u8 ```
    pub fn UnregisterResource22(rccData: ?*anyopaque, resourceRoot: []const u8) bool {
        const resourceRoot_str = C.struct_libqt_string{
            .len = resourceRoot.len,
            .data = @constCast(resourceRoot.ptr),
        };
        return C.QResource_UnregisterResource22(@intCast(rccData), resourceRoot_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QResource ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QResource_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qresource.html#types
pub const enums = struct {
    pub const Compression = enum {
        pub const NoCompression: i32 = 0;
        pub const ZlibCompression: i32 = 1;
        pub const ZstdCompression: i32 = 2;
    };
};
