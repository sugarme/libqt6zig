const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qfactoryinterface.html
pub const qfactoryinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qfactoryinterface.html#keys)
    ///
    /// ``` self: ?*C.QFactoryInterface, allocator: std.mem.Allocator ```
    pub fn Keys(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QFactoryInterface_Keys(@ptrCast(self));
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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFactoryInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFactoryInterface_Delete(@ptrCast(self));
    }
};
