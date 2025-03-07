const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qstorageinfo.html
pub const qstorageinfo = struct {
    /// New constructs a new QStorageInfo object.
    ///
    ///
    pub fn New() ?*C.QStorageInfo {
        return C.QStorageInfo_new();
    }

    /// New2 constructs a new QStorageInfo object.
    ///
    /// ``` path: []const u8 ```
    pub fn New2(path: []const u8) ?*C.QStorageInfo {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };

        return C.QStorageInfo_new2(path_str);
    }

    /// New3 constructs a new QStorageInfo object.
    ///
    /// ``` dir: ?*C.QDir ```
    pub fn New3(dir: ?*anyopaque) ?*C.QStorageInfo {
        return C.QStorageInfo_new3(@ptrCast(dir));
    }

    /// New4 constructs a new QStorageInfo object.
    ///
    /// ``` other: ?*C.QStorageInfo ```
    pub fn New4(other: ?*anyopaque) ?*C.QStorageInfo {
        return C.QStorageInfo_new4(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#operator=)
    ///
    /// ``` self: ?*C.QStorageInfo, other: ?*C.QStorageInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStorageInfo_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#swap)
    ///
    /// ``` self: ?*C.QStorageInfo, other: ?*C.QStorageInfo ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStorageInfo_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#setPath)
    ///
    /// ``` self: ?*C.QStorageInfo, path: []const u8 ```
    pub fn SetPath(self: ?*anyopaque, path: []const u8) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QStorageInfo_SetPath(@ptrCast(self), path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#rootPath)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn RootPath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStorageInfo_RootPath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#device)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn Device(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStorageInfo_Device(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#subvolume)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn Subvolume(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStorageInfo_Subvolume(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#fileSystemType)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn FileSystemType(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStorageInfo_FileSystemType(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#name)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStorageInfo_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#displayName)
    ///
    /// ``` self: ?*C.QStorageInfo, allocator: std.mem.Allocator ```
    pub fn DisplayName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStorageInfo_DisplayName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#bytesTotal)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn BytesTotal(self: ?*anyopaque) i64 {
        return C.QStorageInfo_BytesTotal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#bytesFree)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn BytesFree(self: ?*anyopaque) i64 {
        return C.QStorageInfo_BytesFree(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#bytesAvailable)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn BytesAvailable(self: ?*anyopaque) i64 {
        return C.QStorageInfo_BytesAvailable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#blockSize)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn BlockSize(self: ?*anyopaque) i32 {
        return C.QStorageInfo_BlockSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#isRoot)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn IsRoot(self: ?*anyopaque) bool {
        return C.QStorageInfo_IsRoot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#isReadOnly)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn IsReadOnly(self: ?*anyopaque) bool {
        return C.QStorageInfo_IsReadOnly(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#isReady)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn IsReady(self: ?*anyopaque) bool {
        return C.QStorageInfo_IsReady(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#isValid)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QStorageInfo_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#refresh)
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn Refresh(self: ?*anyopaque) void {
        C.QStorageInfo_Refresh(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#mountedVolumes)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn MountedVolumes(allocator: std.mem.Allocator) []?*C.QStorageInfo {
        const _arr: C.struct_libqt_list = C.QStorageInfo_MountedVolumes();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QStorageInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QStorageInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstorageinfo.html#root)
    ///
    ///
    pub fn Root() ?*C.QStorageInfo {
        return C.QStorageInfo_Root();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStorageInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStorageInfo_Delete(@ptrCast(self));
    }
};
