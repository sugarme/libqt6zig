const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qtemporarydir.html
pub const qtemporarydir = struct {
    /// New constructs a new QTemporaryDir object.
    ///
    ///
    pub fn New() ?*C.QTemporaryDir {
        return C.QTemporaryDir_new();
    }

    /// New2 constructs a new QTemporaryDir object.
    ///
    /// ``` templateName: []const u8 ```
    pub fn New2(templateName: []const u8) ?*C.QTemporaryDir {
        const templateName_str = C.struct_libqt_string{
            .len = templateName.len,
            .data = @constCast(templateName.ptr),
        };

        return C.QTemporaryDir_new2(templateName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#swap)
    ///
    /// ``` self: ?*C.QTemporaryDir, other: ?*C.QTemporaryDir ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTemporaryDir_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#isValid)
    ///
    /// ``` self: ?*C.QTemporaryDir ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTemporaryDir_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#errorString)
    ///
    /// ``` self: ?*C.QTemporaryDir, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTemporaryDir_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#autoRemove)
    ///
    /// ``` self: ?*C.QTemporaryDir ```
    pub fn AutoRemove(self: ?*anyopaque) bool {
        return C.QTemporaryDir_AutoRemove(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#setAutoRemove)
    ///
    /// ``` self: ?*C.QTemporaryDir, b: bool ```
    pub fn SetAutoRemove(self: ?*anyopaque, b: bool) void {
        C.QTemporaryDir_SetAutoRemove(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#remove)
    ///
    /// ``` self: ?*C.QTemporaryDir ```
    pub fn Remove(self: ?*anyopaque) bool {
        return C.QTemporaryDir_Remove(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#path)
    ///
    /// ``` self: ?*C.QTemporaryDir, allocator: std.mem.Allocator ```
    pub fn Path(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTemporaryDir_Path(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtemporarydir.html#filePath)
    ///
    /// ``` self: ?*C.QTemporaryDir, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn FilePath(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _str = C.QTemporaryDir_FilePath(@ptrCast(self), fileName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTemporaryDir ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTemporaryDir_Delete(@ptrCast(self));
    }
};
