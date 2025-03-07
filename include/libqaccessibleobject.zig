const C = @import("qt6c");
const qaccessible_base_enums = @import("libqaccessible_base.zig").enums;
const std = @import("std");
pub const struct_cqaccessibleinterface_i32 = struct { first: ?*C.QAccessibleInterface, second: i32 };
pub const struct_cqaccessibleinterface_i64 = struct { first: ?*C.QAccessibleInterface, second: i64 };

/// https://doc.qt.io/qt-6/qaccessibleobject.html
pub const qaccessibleobject = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#isValid)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAccessibleObject_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#object)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleObject_Object(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#rect)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QAccessibleObject_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#setText)
    ///
    /// ``` self: ?*C.QAccessibleObject, t: qaccessible_base_enums.Text, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, t: i64, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleObject_SetText(@ptrCast(self), @intCast(t), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#childAt)
    ///
    /// ``` self: ?*C.QAccessibleObject, x: i32, y: i32 ```
    pub fn ChildAt(self: ?*anyopaque, x: i32, y: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleObject_ChildAt(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#window)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn Window(self: ?*anyopaque) ?*C.QWindow {
        return C.QAccessibleInterface_Window(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#relations)
    ///
    /// ``` self: ?*C.QAccessibleObject, match: i32, allocator: std.mem.Allocator ```
    pub fn Relations(self: ?*anyopaque, match: i64, allocator: std.mem.Allocator) []struct_cqaccessibleinterface_i64 {
        const _arr: C.struct_libqt_list = C.QAccessibleInterface_Relations(@ptrCast(self), @intCast(match));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_cqaccessibleinterface_i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_cqaccessibleinterface_i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#focusChild)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn FocusChild(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_FocusChild(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#parent)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn Parent(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_Parent(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#child)
    ///
    /// ``` self: ?*C.QAccessibleObject, index: i32 ```
    pub fn Child(self: ?*anyopaque, index: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_Child(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#childCount)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn ChildCount(self: ?*anyopaque) i32 {
        return C.QAccessibleInterface_ChildCount(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#indexOfChild)
    ///
    /// ``` self: ?*C.QAccessibleObject, param1: ?*C.QAccessibleInterface ```
    pub fn IndexOfChild(self: ?*anyopaque, param1: ?*anyopaque) i32 {
        return C.QAccessibleInterface_IndexOfChild(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#text)
    ///
    /// ``` self: ?*C.QAccessibleObject, t: qaccessible_base_enums.Text, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, t: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleInterface_Text(@ptrCast(self), @intCast(t));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#role)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn Role(self: ?*anyopaque) i64 {
        return C.QAccessibleInterface_Role(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#state)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn State(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleInterface_State(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#foregroundColor)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn ForegroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleInterface_ForegroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#backgroundColor)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn BackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleInterface_BackgroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#textInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn TextInterface(self: ?*anyopaque) ?*C.QAccessibleTextInterface {
        return C.QAccessibleInterface_TextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#editableTextInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn EditableTextInterface(self: ?*anyopaque) ?*C.QAccessibleEditableTextInterface {
        return C.QAccessibleInterface_EditableTextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#valueInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn ValueInterface(self: ?*anyopaque) ?*C.QAccessibleValueInterface {
        return C.QAccessibleInterface_ValueInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#actionInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn ActionInterface(self: ?*anyopaque) ?*C.QAccessibleActionInterface {
        return C.QAccessibleInterface_ActionInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#imageInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn ImageInterface(self: ?*anyopaque) ?*C.QAccessibleImageInterface {
        return C.QAccessibleInterface_ImageInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn TableInterface(self: ?*anyopaque) ?*C.QAccessibleTableInterface {
        return C.QAccessibleInterface_TableInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableCellInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn TableCellInterface(self: ?*anyopaque) ?*C.QAccessibleTableCellInterface {
        return C.QAccessibleInterface_TableCellInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#hyperlinkInterface)
    ///
    /// ``` self: ?*C.QAccessibleObject ```
    pub fn HyperlinkInterface(self: ?*anyopaque) ?*C.QAccessibleHyperlinkInterface {
        return C.QAccessibleInterface_HyperlinkInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#virtual_hook)
    ///
    /// ``` self: ?*C.QAccessibleObject, id: i32, data: ?*anyopaque ```
    pub fn VirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QAccessibleInterface_VirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#interface_cast)
    ///
    /// ``` self: ?*C.QAccessibleObject, param1: qaccessible_base_enums.InterfaceType ```
    pub fn InterfaceCast(self: ?*anyopaque, param1: i64) ?*anyopaque {
        return C.QAccessibleInterface_InterfaceCast(@ptrCast(self), @intCast(param1));
    }
};

/// https://doc.qt.io/qt-6/qaccessibleapplication.html
pub const qaccessibleapplication = struct {
    /// New constructs a new QAccessibleApplication object.
    ///
    ///
    pub fn New() ?*C.QAccessibleApplication {
        return C.QAccessibleApplication_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#window)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn Window(self: ?*anyopaque) ?*C.QWindow {
        return C.QAccessibleApplication_Window(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QWindow ```
    pub fn OnWindow(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWindow) void {
        C.QAccessibleApplication_OnWindow(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseWindow(self: ?*anyopaque) ?*C.QWindow {
        return C.QAccessibleApplication_QBaseWindow(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#childCount)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn ChildCount(self: ?*anyopaque) i32 {
        return C.QAccessibleApplication_ChildCount(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) i32 ```
    pub fn OnChildCount(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QAccessibleApplication_OnChildCount(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseChildCount(self: ?*anyopaque) i32 {
        return C.QAccessibleApplication_QBaseChildCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#indexOfChild)
    ///
    /// ``` self: ?*C.QAccessibleApplication, param1: ?*C.QAccessibleInterface ```
    pub fn IndexOfChild(self: ?*anyopaque, param1: ?*anyopaque) i32 {
        return C.QAccessibleApplication_IndexOfChild(@ptrCast(self), @ptrCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, ?*C.QAccessibleInterface) callconv(.c) i32 ```
    pub fn OnIndexOfChild(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) i32) void {
        C.QAccessibleApplication_OnIndexOfChild(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication, param1: ?*C.QAccessibleInterface ```
    pub fn QBaseIndexOfChild(self: ?*anyopaque, param1: ?*anyopaque) i32 {
        return C.QAccessibleApplication_QBaseIndexOfChild(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#focusChild)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn FocusChild(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_FocusChild(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnFocusChild(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleApplication_OnFocusChild(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseFocusChild(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_QBaseFocusChild(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#parent)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn Parent(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_Parent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnParent(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleApplication_OnParent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseParent(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_QBaseParent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#child)
    ///
    /// ``` self: ?*C.QAccessibleApplication, index: i32 ```
    pub fn Child(self: ?*anyopaque, index: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_Child(@ptrCast(self), @intCast(index));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, i32) callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnChild(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleApplication_OnChild(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication, index: i32 ```
    pub fn QBaseChild(self: ?*anyopaque, index: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_QBaseChild(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#text)
    ///
    /// ``` self: ?*C.QAccessibleApplication, t: qaccessible_base_enums.Text, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, t: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleApplication_Text(@ptrCast(self), @intCast(t));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, qaccessible_base_enums.Text) callconv(.c) []const u8 ```
    pub fn OnText(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) []const u8) void {
        C.QAccessibleApplication_OnText(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication, t: qaccessible_base_enums.Text, allocator: std.mem.Allocator ```
    pub fn QBaseText(self: ?*anyopaque, t: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleApplication_QBaseText(@ptrCast(self), @intCast(t));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#role)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn Role(self: ?*anyopaque) i64 {
        return C.QAccessibleApplication_Role(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) i64 ```
    pub fn OnRole(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QAccessibleApplication_OnRole(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseRole(self: ?*anyopaque) i64 {
        return C.QAccessibleApplication_QBaseRole(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleapplication.html#state)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn State(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleApplication_State(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QAccessible__State ```
    pub fn OnState(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessible__State) void {
        C.QAccessibleApplication_OnState(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseState(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleApplication_QBaseState(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#textInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn TextInterface(self: ?*anyopaque) ?*C.QAccessibleTextInterface {
        return C.QAccessibleInterface_TextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#editableTextInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn EditableTextInterface(self: ?*anyopaque) ?*C.QAccessibleEditableTextInterface {
        return C.QAccessibleInterface_EditableTextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#valueInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn ValueInterface(self: ?*anyopaque) ?*C.QAccessibleValueInterface {
        return C.QAccessibleInterface_ValueInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#actionInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn ActionInterface(self: ?*anyopaque) ?*C.QAccessibleActionInterface {
        return C.QAccessibleInterface_ActionInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#imageInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn ImageInterface(self: ?*anyopaque) ?*C.QAccessibleImageInterface {
        return C.QAccessibleInterface_ImageInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn TableInterface(self: ?*anyopaque) ?*C.QAccessibleTableInterface {
        return C.QAccessibleInterface_TableInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableCellInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn TableCellInterface(self: ?*anyopaque) ?*C.QAccessibleTableCellInterface {
        return C.QAccessibleInterface_TableCellInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#hyperlinkInterface)
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn HyperlinkInterface(self: ?*anyopaque) ?*C.QAccessibleHyperlinkInterface {
        return C.QAccessibleInterface_HyperlinkInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#isValid)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAccessibleApplication_IsValid(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseIsValid(self: ?*anyopaque) bool {
        return C.QAccessibleApplication_QBaseIsValid(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) bool ```
    pub fn OnIsValid(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QAccessibleApplication_OnIsValid(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#object)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleApplication_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseObject(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleApplication_QBaseObject(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QObject ```
    pub fn OnObject(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QObject) void {
        C.QAccessibleApplication_OnObject(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#rect)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QAccessibleApplication_Rect(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseRect(self: ?*anyopaque) ?*C.QRect {
        return C.QAccessibleApplication_QBaseRect(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QRect ```
    pub fn OnRect(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QRect) void {
        C.QAccessibleApplication_OnRect(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#setText)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, t: qaccessible_base_enums.Text, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, t: i64, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleApplication_SetText(@ptrCast(self), @intCast(t), text_str);
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, t: qaccessible_base_enums.Text, text: []const u8 ```
    pub fn QBaseSetText(self: ?*anyopaque, t: i64, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleApplication_QBaseSetText(@ptrCast(self), @intCast(t), text_str);
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, qaccessible_base_enums.Text, []const u8) callconv(.c) void ```
    pub fn OnSetText(self: ?*anyopaque, slot: fn (?*anyopaque, i64, []const u8) callconv(.c) void) void {
        C.QAccessibleApplication_OnSetText(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#childAt)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, x: i32, y: i32 ```
    pub fn ChildAt(self: ?*anyopaque, x: i32, y: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_ChildAt(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, x: i32, y: i32 ```
    pub fn QBaseChildAt(self: ?*anyopaque, x: i32, y: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleApplication_QBaseChildAt(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// Inherited from QAccessibleObject
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, i32, i32) callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnChildAt(self: ?*anyopaque, slot: fn (?*anyopaque, i32, i32) callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleApplication_OnChildAt(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#relations)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, match: i32, allocator: std.mem.Allocator ```
    pub fn Relations(self: ?*anyopaque, match: i64, allocator: std.mem.Allocator) []struct_cqaccessibleinterface_i64 {
        const _arr: C.struct_libqt_list = C.QAccessibleApplication_Relations(@ptrCast(self), @intCast(match));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_cqaccessibleinterface_i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_cqaccessibleinterface_i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, match: i32, allocator: std.mem.Allocator ```
    pub fn QBaseRelations(self: ?*anyopaque, match: i64, allocator: std.mem.Allocator) []struct_cqaccessibleinterface_i64 {
        const _arr: C.struct_libqt_list = C.QAccessibleApplication_QBaseRelations(@ptrCast(self), @intCast(match));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_cqaccessibleinterface_i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_cqaccessibleinterface_i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, i32) callconv(.c) []struct_cqaccessibleinterface_i64 ```
    pub fn OnRelations(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) []struct_cqaccessibleinterface_i64) void {
        C.QAccessibleApplication_OnRelations(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#foregroundColor)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn ForegroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleApplication_ForegroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseForegroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleApplication_QBaseForegroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QColor ```
    pub fn OnForegroundColor(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QColor) void {
        C.QAccessibleApplication_OnForegroundColor(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#backgroundColor)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn BackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleApplication_BackgroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QBaseBackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleApplication_QBaseBackgroundColor(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn () callconv(.c) ?*C.QColor ```
    pub fn OnBackgroundColor(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QColor) void {
        C.QAccessibleApplication_OnBackgroundColor(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#virtual_hook)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, id: i32, data: ?*anyopaque ```
    pub fn VirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QAccessibleApplication_VirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, id: i32, data: ?*anyopaque ```
    pub fn QBaseVirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QAccessibleApplication_QBaseVirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, i32, ?*anyopaque) callconv(.c) void ```
    pub fn OnVirtualHook(self: ?*anyopaque, slot: fn (?*anyopaque, i32, ?*anyopaque) callconv(.c) void) void {
        C.QAccessibleApplication_OnVirtualHook(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#interface_cast)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, param1: qaccessible_base_enums.InterfaceType ```
    pub fn InterfaceCast(self: ?*anyopaque, param1: i64) ?*anyopaque {
        return C.QAccessibleApplication_InterfaceCast(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, param1: qaccessible_base_enums.InterfaceType ```
    pub fn QBaseInterfaceCast(self: ?*anyopaque, param1: i64) ?*anyopaque {
        return C.QAccessibleApplication_QBaseInterfaceCast(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleApplication, slot: fn (?*C.QAccessibleApplication, qaccessible_base_enums.InterfaceType) callconv(.c) ?*anyopaque ```
    pub fn OnInterfaceCast(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) ?*anyopaque) void {
        C.QAccessibleApplication_OnInterfaceCast(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleApplication ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleApplication_Delete(@ptrCast(self));
    }
};
