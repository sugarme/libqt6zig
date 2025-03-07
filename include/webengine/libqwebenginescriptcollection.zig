const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebenginescriptcollection.html
pub const qwebenginescriptcollection = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#isEmpty)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QWebEngineScriptCollection_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#count)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection ```
    pub fn Count(self: ?*anyopaque) i32 {
        return C.QWebEngineScriptCollection_Count(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#contains)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, value: ?*C.QWebEngineScript ```
    pub fn Contains(self: ?*anyopaque, value: ?*anyopaque) bool {
        return C.QWebEngineScriptCollection_Contains(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#find)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, name: []const u8, allocator: std.mem.Allocator ```
    pub fn Find(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []?*C.QWebEngineScript {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _arr: C.struct_libqt_list = C.QWebEngineScriptCollection_Find(@ptrCast(self), name_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QWebEngineScript, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QWebEngineScript = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#insert)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, param1: ?*C.QWebEngineScript ```
    pub fn Insert(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QWebEngineScriptCollection_Insert(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#insert)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, list: []?*C.QWebEngineScript ```
    pub fn InsertWithList(self: ?*anyopaque, list: []?*C.QWebEngineScript) void {
        const list_list = C.struct_libqt_list{
            .len = list.len,
            .data = @ptrCast(list.ptr),
        };
        C.QWebEngineScriptCollection_InsertWithList(@ptrCast(self), list_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#remove)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, param1: ?*C.QWebEngineScript ```
    pub fn Remove(self: ?*anyopaque, param1: ?*anyopaque) bool {
        return C.QWebEngineScriptCollection_Remove(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#clear)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QWebEngineScriptCollection_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescriptcollection.html#toList)
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection, allocator: std.mem.Allocator ```
    pub fn ToList(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QWebEngineScript {
        const _arr: C.struct_libqt_list = C.QWebEngineScriptCollection_ToList(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QWebEngineScript, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QWebEngineScript = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineScriptCollection ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineScriptCollection_Delete(@ptrCast(self));
    }
};
