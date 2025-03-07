const C = @import("qt6c");
const qmimedatabase_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qmimedatabase.html
pub const qmimedatabase = struct {
    /// New constructs a new QMimeDatabase object.
    ///
    ///
    pub fn New() ?*C.QMimeDatabase {
        return C.QMimeDatabase_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForName)
    ///
    /// ``` self: ?*C.QMimeDatabase, nameOrAlias: []const u8 ```
    pub fn MimeTypeForName(self: ?*anyopaque, nameOrAlias: []const u8) ?*C.QMimeType {
        const nameOrAlias_str = C.struct_libqt_string{
            .len = nameOrAlias.len,
            .data = @constCast(nameOrAlias.ptr),
        };
        return C.QMimeDatabase_MimeTypeForName(@ptrCast(self), nameOrAlias_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFile)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8 ```
    pub fn MimeTypeForFile(self: ?*anyopaque, fileName: []const u8) ?*C.QMimeType {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QMimeDatabase_MimeTypeForFile(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFile)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileInfo: ?*C.QFileInfo ```
    pub fn MimeTypeForFileWithFileInfo(self: ?*anyopaque, fileInfo: ?*anyopaque) ?*C.QMimeType {
        return C.QMimeDatabase_MimeTypeForFileWithFileInfo(@ptrCast(self), @ptrCast(fileInfo));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypesForFileName)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn MimeTypesForFileName(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []?*C.QMimeType {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _arr: C.struct_libqt_list = C.QMimeDatabase_MimeTypesForFileName(@ptrCast(self), fileName_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QMimeType, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QMimeType = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForData)
    ///
    /// ``` self: ?*C.QMimeDatabase, data: []u8 ```
    pub fn MimeTypeForData(self: ?*anyopaque, data: []u8) ?*C.QMimeType {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QMimeDatabase_MimeTypeForData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForData)
    ///
    /// ``` self: ?*C.QMimeDatabase, device: ?*C.QIODevice ```
    pub fn MimeTypeForDataWithDevice(self: ?*anyopaque, device: ?*anyopaque) ?*C.QMimeType {
        return C.QMimeDatabase_MimeTypeForDataWithDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForUrl)
    ///
    /// ``` self: ?*C.QMimeDatabase, url: ?*C.QUrl ```
    pub fn MimeTypeForUrl(self: ?*anyopaque, url: ?*anyopaque) ?*C.QMimeType {
        return C.QMimeDatabase_MimeTypeForUrl(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFileNameAndData)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8, device: ?*C.QIODevice ```
    pub fn MimeTypeForFileNameAndData(self: ?*anyopaque, fileName: []const u8, device: ?*anyopaque) ?*C.QMimeType {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QMimeDatabase_MimeTypeForFileNameAndData(@ptrCast(self), fileName_str, @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFileNameAndData)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8, data: []u8 ```
    pub fn MimeTypeForFileNameAndData2(self: ?*anyopaque, fileName: []const u8, data: []u8) ?*C.QMimeType {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        return C.QMimeDatabase_MimeTypeForFileNameAndData2(@ptrCast(self), fileName_str, data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#suffixForFileName)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn SuffixForFileName(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _str = C.QMimeDatabase_SuffixForFileName(@ptrCast(self), fileName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#allMimeTypes)
    ///
    /// ``` self: ?*C.QMimeDatabase, allocator: std.mem.Allocator ```
    pub fn AllMimeTypes(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QMimeType {
        const _arr: C.struct_libqt_list = C.QMimeDatabase_AllMimeTypes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QMimeType, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QMimeType = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFile)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileName: []const u8, mode: qmimedatabase_enums.MatchMode ```
    pub fn MimeTypeForFile2(self: ?*anyopaque, fileName: []const u8, mode: i64) ?*C.QMimeType {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QMimeDatabase_MimeTypeForFile2(@ptrCast(self), fileName_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimedatabase.html#mimeTypeForFile)
    ///
    /// ``` self: ?*C.QMimeDatabase, fileInfo: ?*C.QFileInfo, mode: qmimedatabase_enums.MatchMode ```
    pub fn MimeTypeForFile22(self: ?*anyopaque, fileInfo: ?*anyopaque, mode: i64) ?*C.QMimeType {
        return C.QMimeDatabase_MimeTypeForFile22(@ptrCast(self), @ptrCast(fileInfo), @intCast(mode));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMimeDatabase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMimeDatabase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmimedatabase.html#types
pub const enums = struct {
    pub const MatchMode = enum {
        pub const MatchDefault: i32 = 0;
        pub const MatchExtension: i32 = 1;
        pub const MatchContent: i32 = 2;
    };
};
