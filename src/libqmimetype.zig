const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qmimetype.html
pub const qmimetype = struct {
    /// New constructs a new QMimeType object.
    ///
    ///
    pub fn New() ?*C.QMimeType {
        return C.QMimeType_new();
    }

    /// New2 constructs a new QMimeType object.
    ///
    /// ``` other: ?*C.QMimeType ```
    pub fn New2(other: ?*anyopaque) ?*C.QMimeType {
        return C.QMimeType_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#operator=)
    ///
    /// ``` self: ?*C.QMimeType, other: ?*C.QMimeType ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMimeType_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#swap)
    ///
    /// ``` self: ?*C.QMimeType, other: ?*C.QMimeType ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMimeType_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#operator==)
    ///
    /// ``` self: ?*C.QMimeType, other: ?*C.QMimeType ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QMimeType_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#operator!=)
    ///
    /// ``` self: ?*C.QMimeType, other: ?*C.QMimeType ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QMimeType_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#isValid)
    ///
    /// ``` self: ?*C.QMimeType ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QMimeType_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#isDefault)
    ///
    /// ``` self: ?*C.QMimeType ```
    pub fn IsDefault(self: ?*anyopaque) bool {
        return C.QMimeType_IsDefault(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#name)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#comment)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn Comment(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_Comment(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#genericIconName)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn GenericIconName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_GenericIconName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#iconName)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn IconName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_IconName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#globPatterns)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn GlobPatterns(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QMimeType_GlobPatterns(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#parentMimeTypes)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn ParentMimeTypes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QMimeType_ParentMimeTypes(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#allAncestors)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn AllAncestors(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QMimeType_AllAncestors(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#aliases)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn Aliases(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QMimeType_Aliases(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#suffixes)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn Suffixes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QMimeType_Suffixes(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#preferredSuffix)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn PreferredSuffix(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_PreferredSuffix(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#inherits)
    ///
    /// ``` self: ?*C.QMimeType, mimeTypeName: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, mimeTypeName: []const u8) bool {
        const mimeTypeName_str = C.struct_libqt_string{
            .len = mimeTypeName.len,
            .data = @constCast(mimeTypeName.ptr),
        };
        return C.QMimeType_Inherits(@ptrCast(self), mimeTypeName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmimetype.html#filterString)
    ///
    /// ``` self: ?*C.QMimeType, allocator: std.mem.Allocator ```
    pub fn FilterString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMimeType_FilterString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMimeType ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMimeType_Delete(@ptrCast(self));
    }
};
