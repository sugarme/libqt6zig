const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qitemeditorcreatorbase.html
pub const qitemeditorcreatorbase = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorcreatorbase.html#createWidget)
    ///
    /// ``` self: ?*C.QItemEditorCreatorBase, parent: ?*C.QWidget ```
    pub fn CreateWidget(self: ?*anyopaque, parent: ?*anyopaque) ?*C.QWidget {
        return C.QItemEditorCreatorBase_CreateWidget(@ptrCast(self), @ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorcreatorbase.html#valuePropertyName)
    ///
    /// ``` self: ?*C.QItemEditorCreatorBase, allocator: std.mem.Allocator ```
    pub fn ValuePropertyName(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QItemEditorCreatorBase_ValuePropertyName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorcreatorbase.html#operator=)
    ///
    /// ``` self: ?*C.QItemEditorCreatorBase, param1: ?*C.QItemEditorCreatorBase ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QItemEditorCreatorBase_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QItemEditorCreatorBase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QItemEditorCreatorBase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qitemeditorfactory.html
pub const qitemeditorfactory = struct {
    /// New constructs a new QItemEditorFactory object.
    ///
    ///
    pub fn New() ?*C.QItemEditorFactory {
        return C.QItemEditorFactory_new();
    }

    /// New2 constructs a new QItemEditorFactory object.
    ///
    /// ``` param1: ?*C.QItemEditorFactory ```
    pub fn New2(param1: ?*anyopaque) ?*C.QItemEditorFactory {
        return C.QItemEditorFactory_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorfactory.html#createEditor)
    ///
    /// ``` self: ?*C.QItemEditorFactory, userType: i32, parent: ?*C.QWidget ```
    pub fn CreateEditor(self: ?*anyopaque, userType: i32, parent: ?*anyopaque) ?*C.QWidget {
        return C.QItemEditorFactory_CreateEditor(@ptrCast(self), @intCast(userType), @ptrCast(parent));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QItemEditorFactory, slot: fn (?*C.QItemEditorFactory, i32, ?*C.QWidget) callconv(.c) ?*C.QWidget ```
    pub fn OnCreateEditor(self: ?*anyopaque, slot: fn (?*anyopaque, i32, ?*anyopaque) callconv(.c) ?*C.QWidget) void {
        C.QItemEditorFactory_OnCreateEditor(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QItemEditorFactory, userType: i32, parent: ?*C.QWidget ```
    pub fn QBaseCreateEditor(self: ?*anyopaque, userType: i32, parent: ?*anyopaque) ?*C.QWidget {
        return C.QItemEditorFactory_QBaseCreateEditor(@ptrCast(self), @intCast(userType), @ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorfactory.html#valuePropertyName)
    ///
    /// ``` self: ?*C.QItemEditorFactory, userType: i32, allocator: std.mem.Allocator ```
    pub fn ValuePropertyName(self: ?*anyopaque, userType: i32, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QItemEditorFactory_ValuePropertyName(@ptrCast(self), @intCast(userType));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QItemEditorFactory, slot: fn (?*C.QItemEditorFactory, i32) callconv(.c) []u8 ```
    pub fn OnValuePropertyName(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) []u8) void {
        C.QItemEditorFactory_OnValuePropertyName(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QItemEditorFactory, userType: i32, allocator: std.mem.Allocator ```
    pub fn QBaseValuePropertyName(self: ?*anyopaque, userType: i32, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QItemEditorFactory_QBaseValuePropertyName(@ptrCast(self), @intCast(userType));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorfactory.html#registerEditor)
    ///
    /// ``` self: ?*C.QItemEditorFactory, userType: i32, creator: ?*C.QItemEditorCreatorBase ```
    pub fn RegisterEditor(self: ?*anyopaque, userType: i32, creator: ?*anyopaque) void {
        C.QItemEditorFactory_RegisterEditor(@ptrCast(self), @intCast(userType), @ptrCast(creator));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorfactory.html#defaultFactory)
    ///
    ///
    pub fn DefaultFactory() ?*C.QItemEditorFactory {
        return C.QItemEditorFactory_DefaultFactory();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qitemeditorfactory.html#setDefaultFactory)
    ///
    /// ``` factory: ?*C.QItemEditorFactory ```
    pub fn SetDefaultFactory(factory: ?*anyopaque) void {
        C.QItemEditorFactory_SetDefaultFactory(@ptrCast(factory));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QItemEditorFactory ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QItemEditorFactory_Delete(@ptrCast(self));
    }
};
