const C = @import("qt6c");
const qscicommand_enums = @import("libqscicommand.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qscicommandset.html
pub const qscicommandset = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#readSettings)
    ///
    /// ``` self: ?*C.QsciCommandSet, qs: ?*C.QSettings ```
    pub fn ReadSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return C.QsciCommandSet_ReadSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#writeSettings)
    ///
    /// ``` self: ?*C.QsciCommandSet, qs: ?*C.QSettings ```
    pub fn WriteSettings(self: ?*anyopaque, qs: ?*anyopaque) bool {
        return C.QsciCommandSet_WriteSettings(@ptrCast(self), @ptrCast(qs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#commands)
    ///
    /// ``` self: ?*C.QsciCommandSet, allocator: std.mem.Allocator ```
    pub fn Commands(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QsciCommand {
        const _arr: C.struct_libqt_list = C.QsciCommandSet_Commands(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QsciCommand, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QsciCommand = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#clearKeys)
    ///
    /// ``` self: ?*C.QsciCommandSet ```
    pub fn ClearKeys(self: ?*anyopaque) void {
        C.QsciCommandSet_ClearKeys(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#clearAlternateKeys)
    ///
    /// ``` self: ?*C.QsciCommandSet ```
    pub fn ClearAlternateKeys(self: ?*anyopaque) void {
        C.QsciCommandSet_ClearAlternateKeys(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#boundTo)
    ///
    /// ``` self: ?*C.QsciCommandSet, key: i32 ```
    pub fn BoundTo(self: ?*anyopaque, key: i32) ?*C.QsciCommand {
        return C.QsciCommandSet_BoundTo(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#find)
    ///
    /// ``` self: ?*C.QsciCommandSet, command: qscicommand_enums.Command ```
    pub fn Find(self: ?*anyopaque, command: i64) ?*C.QsciCommand {
        return C.QsciCommandSet_Find(@ptrCast(self), @intCast(command));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#readSettings)
    ///
    /// ``` self: ?*C.QsciCommandSet, qs: ?*C.QSettings, prefix: []const u8 ```
    pub fn ReadSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = @constCast(prefix.ptr);
        return C.QsciCommandSet_ReadSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscicommandset.html#writeSettings)
    ///
    /// ``` self: ?*C.QsciCommandSet, qs: ?*C.QSettings, prefix: []const u8 ```
    pub fn WriteSettings2(self: ?*anyopaque, qs: ?*anyopaque, prefix: []const u8) bool {
        const prefix_Cstring = @constCast(prefix.ptr);
        return C.QsciCommandSet_WriteSettings2(@ptrCast(self), @ptrCast(qs), prefix_Cstring);
    }
};
