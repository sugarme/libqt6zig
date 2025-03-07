const C = @import("qt6c");
const qaccessible_base_enums = @import("libqaccessible_base.zig").enums;
const std = @import("std");
pub const struct_cqaccessibleinterface_i32 = struct { first: ?*C.QAccessibleInterface, second: i32 };
pub const struct_cqaccessibleinterface_i64 = struct { first: ?*C.QAccessibleInterface, second: i64 };

/// https://doc.qt.io/qt-6/qaccessiblewidget.html
pub const qaccessiblewidget = struct {
    /// New constructs a new QAccessibleWidget object.
    ///
    /// ``` o: ?*C.QWidget ```
    pub fn New(o: ?*anyopaque) ?*C.QAccessibleWidget {
        return C.QAccessibleWidget_new(@ptrCast(o));
    }

    /// New2 constructs a new QAccessibleWidget object.
    ///
    /// ``` o: ?*C.QWidget, r: qaccessible_base_enums.Role ```
    pub fn New2(o: ?*anyopaque, r: i64) ?*C.QAccessibleWidget {
        return C.QAccessibleWidget_new2(@ptrCast(o), @intCast(r));
    }

    /// New3 constructs a new QAccessibleWidget object.
    ///
    /// ``` o: ?*C.QWidget, r: qaccessible_base_enums.Role, name: []const u8 ```
    pub fn New3(o: ?*anyopaque, r: i64, name: []const u8) ?*C.QAccessibleWidget {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QAccessibleWidget_new3(@ptrCast(o), @intCast(r), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#isValid)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAccessibleWidget_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#window)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn Window(self: ?*anyopaque) ?*C.QWindow {
        return C.QAccessibleWidget_Window(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#childCount)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn ChildCount(self: ?*anyopaque) i32 {
        return C.QAccessibleWidget_ChildCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#indexOfChild)
    ///
    /// ``` self: ?*C.QAccessibleWidget, child: ?*C.QAccessibleInterface ```
    pub fn IndexOfChild(self: ?*anyopaque, child: ?*anyopaque) i32 {
        return C.QAccessibleWidget_IndexOfChild(@ptrCast(self), @ptrCast(child));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#relations)
    ///
    /// ``` self: ?*C.QAccessibleWidget, match: i32, allocator: std.mem.Allocator ```
    pub fn Relations(self: ?*anyopaque, match: i64, allocator: std.mem.Allocator) []struct_cqaccessibleinterface_i64 {
        const _arr: C.struct_libqt_list = C.QAccessibleWidget_Relations(@ptrCast(self), @intCast(match));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#focusChild)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn FocusChild(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleWidget_FocusChild(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#rect)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QAccessibleWidget_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#parent)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn Parent(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleWidget_Parent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#child)
    ///
    /// ``` self: ?*C.QAccessibleWidget, index: i32 ```
    pub fn Child(self: ?*anyopaque, index: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleWidget_Child(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#text)
    ///
    /// ``` self: ?*C.QAccessibleWidget, t: qaccessible_base_enums.Text, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, t: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleWidget_Text(@ptrCast(self), @intCast(t));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#role)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn Role(self: ?*anyopaque) i64 {
        return C.QAccessibleWidget_Role(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#state)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn State(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleWidget_State(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#foregroundColor)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn ForegroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleWidget_ForegroundColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#backgroundColor)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn BackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleWidget_BackgroundColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#interface_cast)
    ///
    /// ``` self: ?*C.QAccessibleWidget, t: qaccessible_base_enums.InterfaceType ```
    pub fn InterfaceCast(self: ?*anyopaque, t: i64) ?*anyopaque {
        return C.QAccessibleWidget_InterfaceCast(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#actionNames)
    ///
    /// ``` self: ?*C.QAccessibleWidget, allocator: std.mem.Allocator ```
    pub fn ActionNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QAccessibleWidget_ActionNames(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#doAction)
    ///
    /// ``` self: ?*C.QAccessibleWidget, actionName: []const u8 ```
    pub fn DoAction(self: ?*anyopaque, actionName: []const u8) void {
        const actionName_str = C.struct_libqt_string{
            .len = actionName.len,
            .data = @constCast(actionName.ptr),
        };
        C.QAccessibleWidget_DoAction(@ptrCast(self), actionName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblewidget.html#keyBindingsForAction)
    ///
    /// ``` self: ?*C.QAccessibleWidget, actionName: []const u8, allocator: std.mem.Allocator ```
    pub fn KeyBindingsForAction(self: ?*anyopaque, actionName: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const actionName_str = C.struct_libqt_string{
            .len = actionName.len,
            .data = @constCast(actionName.ptr),
        };
        const _arr: C.struct_libqt_list = C.QAccessibleWidget_KeyBindingsForAction(@ptrCast(self), actionName_str);
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

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#object)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleObject_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#setText)
    ///
    /// ``` self: ?*C.QAccessibleWidget, t: qaccessible_base_enums.Text, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, t: i64, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleObject_SetText(@ptrCast(self), @intCast(t), text_str);
    }

    /// Inherited from QAccessibleObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleobject.html#childAt)
    ///
    /// ``` self: ?*C.QAccessibleWidget, x: i32, y: i32 ```
    pub fn ChildAt(self: ?*anyopaque, x: i32, y: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleObject_ChildAt(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#textInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn TextInterface(self: ?*anyopaque) ?*C.QAccessibleTextInterface {
        return C.QAccessibleInterface_TextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#editableTextInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn EditableTextInterface(self: ?*anyopaque) ?*C.QAccessibleEditableTextInterface {
        return C.QAccessibleInterface_EditableTextInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#valueInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn ValueInterface(self: ?*anyopaque) ?*C.QAccessibleValueInterface {
        return C.QAccessibleInterface_ValueInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#actionInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn ActionInterface(self: ?*anyopaque) ?*C.QAccessibleActionInterface {
        return C.QAccessibleInterface_ActionInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#imageInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn ImageInterface(self: ?*anyopaque) ?*C.QAccessibleImageInterface {
        return C.QAccessibleInterface_ImageInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn TableInterface(self: ?*anyopaque) ?*C.QAccessibleTableInterface {
        return C.QAccessibleInterface_TableInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableCellInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn TableCellInterface(self: ?*anyopaque) ?*C.QAccessibleTableCellInterface {
        return C.QAccessibleInterface_TableCellInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#hyperlinkInterface)
    ///
    /// ``` self: ?*C.QAccessibleWidget ```
    pub fn HyperlinkInterface(self: ?*anyopaque) ?*C.QAccessibleHyperlinkInterface {
        return C.QAccessibleInterface_HyperlinkInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#virtual_hook)
    ///
    /// ``` self: ?*C.QAccessibleWidget, id: i32, data: ?*anyopaque ```
    pub fn VirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QAccessibleInterface_VirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(sourceText: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const _str = C.QAccessibleActionInterface_Tr(sourceText_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#localizedActionName)
    ///
    /// ``` self: ?*C.QAccessibleWidget, name: []const u8, allocator: std.mem.Allocator ```
    pub fn LocalizedActionName(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _str = C.QAccessibleActionInterface_LocalizedActionName(@ptrCast(self), name_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#localizedActionDescription)
    ///
    /// ``` self: ?*C.QAccessibleWidget, name: []const u8, allocator: std.mem.Allocator ```
    pub fn LocalizedActionDescription(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _str = C.QAccessibleActionInterface_LocalizedActionDescription(@ptrCast(self), name_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#pressAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn PressAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_PressAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#increaseAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn IncreaseAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_IncreaseAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#decreaseAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn DecreaseAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_DecreaseAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#showMenuAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ShowMenuAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ShowMenuAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#setFocusAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SetFocusAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_SetFocusAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#toggleAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ToggleAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ToggleAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#scrollLeftAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ScrollLeftAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ScrollLeftAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#scrollRightAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ScrollRightAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ScrollRightAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#scrollUpAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ScrollUpAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ScrollUpAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#scrollDownAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn ScrollDownAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_ScrollDownAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#nextPageAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn NextPageAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_NextPageAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#previousPageAction)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn PreviousPageAction(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleActionInterface_PreviousPageAction();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QAccessibleActionInterface_Tr2(sourceText_Cstring, disambiguation_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QAccessibleActionInterface
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QAccessibleActionInterface_Tr3(sourceText_Cstring, disambiguation_Cstring, @intCast(n));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }
};
