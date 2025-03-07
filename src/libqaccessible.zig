const C = @import("qt6c");
const qaccessible_base_enums = @import("libqaccessible_base.zig").enums;
const qaccessible_enums = enums;
const std = @import("std");
pub const struct_cqaccessibleinterface_i32 = struct { first: ?*C.QAccessibleInterface, second: i32 };
pub const struct_cqaccessibleinterface_i64 = struct { first: ?*C.QAccessibleInterface, second: i64 };

/// https://doc.qt.io/qt-6/qaccessibleinterface.html
pub const qaccessibleinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#isValid)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAccessibleInterface_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#object)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleInterface_Object(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#window)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn Window(self: ?*anyopaque) ?*C.QWindow {
        return C.QAccessibleInterface_Window(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#relations)
    ///
    /// ``` self: ?*C.QAccessibleInterface, match: i32, allocator: std.mem.Allocator ```
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#focusChild)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn FocusChild(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_FocusChild(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#childAt)
    ///
    /// ``` self: ?*C.QAccessibleInterface, x: i32, y: i32 ```
    pub fn ChildAt(self: ?*anyopaque, x: i32, y: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_ChildAt(@ptrCast(self), @intCast(x), @intCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#parent)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn Parent(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_Parent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#child)
    ///
    /// ``` self: ?*C.QAccessibleInterface, index: i32 ```
    pub fn Child(self: ?*anyopaque, index: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleInterface_Child(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#childCount)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn ChildCount(self: ?*anyopaque) i32 {
        return C.QAccessibleInterface_ChildCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#indexOfChild)
    ///
    /// ``` self: ?*C.QAccessibleInterface, param1: ?*C.QAccessibleInterface ```
    pub fn IndexOfChild(self: ?*anyopaque, param1: ?*anyopaque) i32 {
        return C.QAccessibleInterface_IndexOfChild(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#text)
    ///
    /// ``` self: ?*C.QAccessibleInterface, t: qaccessible_base_enums.Text, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, t: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleInterface_Text(@ptrCast(self), @intCast(t));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#setText)
    ///
    /// ``` self: ?*C.QAccessibleInterface, t: qaccessible_base_enums.Text, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, t: i64, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleInterface_SetText(@ptrCast(self), @intCast(t), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#rect)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QAccessibleInterface_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#role)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn Role(self: ?*anyopaque) i64 {
        return C.QAccessibleInterface_Role(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#state)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn State(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleInterface_State(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#foregroundColor)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn ForegroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleInterface_ForegroundColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#backgroundColor)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn BackgroundColor(self: ?*anyopaque) ?*C.QColor {
        return C.QAccessibleInterface_BackgroundColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#textInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn TextInterface(self: ?*anyopaque) ?*C.QAccessibleTextInterface {
        return C.QAccessibleInterface_TextInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#editableTextInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn EditableTextInterface(self: ?*anyopaque) ?*C.QAccessibleEditableTextInterface {
        return C.QAccessibleInterface_EditableTextInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#valueInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn ValueInterface(self: ?*anyopaque) ?*C.QAccessibleValueInterface {
        return C.QAccessibleInterface_ValueInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#actionInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn ActionInterface(self: ?*anyopaque) ?*C.QAccessibleActionInterface {
        return C.QAccessibleInterface_ActionInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#imageInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn ImageInterface(self: ?*anyopaque) ?*C.QAccessibleImageInterface {
        return C.QAccessibleInterface_ImageInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn TableInterface(self: ?*anyopaque) ?*C.QAccessibleTableInterface {
        return C.QAccessibleInterface_TableInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#tableCellInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn TableCellInterface(self: ?*anyopaque) ?*C.QAccessibleTableCellInterface {
        return C.QAccessibleInterface_TableCellInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#hyperlinkInterface)
    ///
    /// ``` self: ?*C.QAccessibleInterface ```
    pub fn HyperlinkInterface(self: ?*anyopaque) ?*C.QAccessibleHyperlinkInterface {
        return C.QAccessibleInterface_HyperlinkInterface(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#virtual_hook)
    ///
    /// ``` self: ?*C.QAccessibleInterface, id: i32, data: ?*anyopaque ```
    pub fn VirtualHook(self: ?*anyopaque, id: i32, data: ?*anyopaque) void {
        C.QAccessibleInterface_VirtualHook(@ptrCast(self), @intCast(id), data);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleinterface.html#interface_cast)
    ///
    /// ``` self: ?*C.QAccessibleInterface, param1: qaccessible_base_enums.InterfaceType ```
    pub fn InterfaceCast(self: ?*anyopaque, param1: i64) ?*anyopaque {
        return C.QAccessibleInterface_InterfaceCast(@ptrCast(self), @intCast(param1));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextinterface.html
pub const qaccessibletextinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#selection)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, selectionIndex: i32, startOffset: ?*i32, endOffset: ?*i32 ```
    pub fn Selection(self: ?*anyopaque, selectionIndex: i32, startOffset: ?*anyopaque, endOffset: ?*anyopaque) void {
        C.QAccessibleTextInterface_Selection(@ptrCast(self), @intCast(selectionIndex), @intCast(startOffset), @intCast(endOffset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#selectionCount)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface ```
    pub fn SelectionCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTextInterface_SelectionCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#addSelection)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, startOffset: i32, endOffset: i32 ```
    pub fn AddSelection(self: ?*anyopaque, startOffset: i32, endOffset: i32) void {
        C.QAccessibleTextInterface_AddSelection(@ptrCast(self), @intCast(startOffset), @intCast(endOffset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#removeSelection)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, selectionIndex: i32 ```
    pub fn RemoveSelection(self: ?*anyopaque, selectionIndex: i32) void {
        C.QAccessibleTextInterface_RemoveSelection(@ptrCast(self), @intCast(selectionIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#setSelection)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, selectionIndex: i32, startOffset: i32, endOffset: i32 ```
    pub fn SetSelection(self: ?*anyopaque, selectionIndex: i32, startOffset: i32, endOffset: i32) void {
        C.QAccessibleTextInterface_SetSelection(@ptrCast(self), @intCast(selectionIndex), @intCast(startOffset), @intCast(endOffset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextInterface_CursorPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextInterface_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#text)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, startOffset: i32, endOffset: i32, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, startOffset: i32, endOffset: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInterface_Text(@ptrCast(self), @intCast(startOffset), @intCast(endOffset));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#textBeforeOffset)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, offset: i32, boundaryType: qaccessible_base_enums.TextBoundaryType, startOffset: ?*i32, endOffset: ?*i32, allocator: std.mem.Allocator ```
    pub fn TextBeforeOffset(self: ?*anyopaque, offset: i32, boundaryType: i64, startOffset: ?*anyopaque, endOffset: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInterface_TextBeforeOffset(@ptrCast(self), @intCast(offset), @intCast(boundaryType), @intCast(startOffset), @intCast(endOffset));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#textAfterOffset)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, offset: i32, boundaryType: qaccessible_base_enums.TextBoundaryType, startOffset: ?*i32, endOffset: ?*i32, allocator: std.mem.Allocator ```
    pub fn TextAfterOffset(self: ?*anyopaque, offset: i32, boundaryType: i64, startOffset: ?*anyopaque, endOffset: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInterface_TextAfterOffset(@ptrCast(self), @intCast(offset), @intCast(boundaryType), @intCast(startOffset), @intCast(endOffset));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#textAtOffset)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, offset: i32, boundaryType: qaccessible_base_enums.TextBoundaryType, startOffset: ?*i32, endOffset: ?*i32, allocator: std.mem.Allocator ```
    pub fn TextAtOffset(self: ?*anyopaque, offset: i32, boundaryType: i64, startOffset: ?*anyopaque, endOffset: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInterface_TextAtOffset(@ptrCast(self), @intCast(offset), @intCast(boundaryType), @intCast(startOffset), @intCast(endOffset));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#characterCount)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface ```
    pub fn CharacterCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTextInterface_CharacterCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#characterRect)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, offset: i32 ```
    pub fn CharacterRect(self: ?*anyopaque, offset: i32) ?*C.QRect {
        return C.QAccessibleTextInterface_CharacterRect(@ptrCast(self), @intCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#offsetAtPoint)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, point: ?*C.QPoint ```
    pub fn OffsetAtPoint(self: ?*anyopaque, point: ?*anyopaque) i32 {
        return C.QAccessibleTextInterface_OffsetAtPoint(@ptrCast(self), @ptrCast(point));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#scrollToSubstring)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, startIndex: i32, endIndex: i32 ```
    pub fn ScrollToSubstring(self: ?*anyopaque, startIndex: i32, endIndex: i32) void {
        C.QAccessibleTextInterface_ScrollToSubstring(@ptrCast(self), @intCast(startIndex), @intCast(endIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#attributes)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, offset: i32, startOffset: ?*i32, endOffset: ?*i32, allocator: std.mem.Allocator ```
    pub fn Attributes(self: ?*anyopaque, offset: i32, startOffset: ?*anyopaque, endOffset: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInterface_Attributes(@ptrCast(self), @intCast(offset), @intCast(startOffset), @intCast(endOffset));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleTextInterface, param1: ?*C.QAccessibleTextInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleTextInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibleeditabletextinterface.html
pub const qaccessibleeditabletextinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleeditabletextinterface.html#deleteText)
    ///
    /// ``` self: ?*C.QAccessibleEditableTextInterface, startOffset: i32, endOffset: i32 ```
    pub fn DeleteText(self: ?*anyopaque, startOffset: i32, endOffset: i32) void {
        C.QAccessibleEditableTextInterface_DeleteText(@ptrCast(self), @intCast(startOffset), @intCast(endOffset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleeditabletextinterface.html#insertText)
    ///
    /// ``` self: ?*C.QAccessibleEditableTextInterface, offset: i32, text: []const u8 ```
    pub fn InsertText(self: ?*anyopaque, offset: i32, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleEditableTextInterface_InsertText(@ptrCast(self), @intCast(offset), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleeditabletextinterface.html#replaceText)
    ///
    /// ``` self: ?*C.QAccessibleEditableTextInterface, startOffset: i32, endOffset: i32, text: []const u8 ```
    pub fn ReplaceText(self: ?*anyopaque, startOffset: i32, endOffset: i32, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QAccessibleEditableTextInterface_ReplaceText(@ptrCast(self), @intCast(startOffset), @intCast(endOffset), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleeditabletextinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleEditableTextInterface, param1: ?*C.QAccessibleEditableTextInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleEditableTextInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleEditableTextInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleEditableTextInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessiblevalueinterface.html
pub const qaccessiblevalueinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#currentValue)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface ```
    pub fn CurrentValue(self: ?*anyopaque) ?*C.QVariant {
        return C.QAccessibleValueInterface_CurrentValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#setCurrentValue)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface, value: ?*C.QVariant ```
    pub fn SetCurrentValue(self: ?*anyopaque, value: ?*anyopaque) void {
        C.QAccessibleValueInterface_SetCurrentValue(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#maximumValue)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface ```
    pub fn MaximumValue(self: ?*anyopaque) ?*C.QVariant {
        return C.QAccessibleValueInterface_MaximumValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#minimumValue)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface ```
    pub fn MinimumValue(self: ?*anyopaque) ?*C.QVariant {
        return C.QAccessibleValueInterface_MinimumValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#minimumStepSize)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface ```
    pub fn MinimumStepSize(self: ?*anyopaque) ?*C.QVariant {
        return C.QAccessibleValueInterface_MinimumStepSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevalueinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleValueInterface, param1: ?*C.QAccessibleValueInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleValueInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleValueInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleValueInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletablecellinterface.html
pub const qaccessibletablecellinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#isSelected)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn IsSelected(self: ?*anyopaque) bool {
        return C.QAccessibleTableCellInterface_IsSelected(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#columnHeaderCells)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface, allocator: std.mem.Allocator ```
    pub fn ColumnHeaderCells(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QAccessibleInterface {
        const _arr: C.struct_libqt_list = C.QAccessibleTableCellInterface_ColumnHeaderCells(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QAccessibleInterface, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QAccessibleInterface = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#rowHeaderCells)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface, allocator: std.mem.Allocator ```
    pub fn RowHeaderCells(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QAccessibleInterface {
        const _arr: C.struct_libqt_list = C.QAccessibleTableCellInterface_RowHeaderCells(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QAccessibleInterface, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QAccessibleInterface = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#columnIndex)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn ColumnIndex(self: ?*anyopaque) i32 {
        return C.QAccessibleTableCellInterface_ColumnIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#rowIndex)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn RowIndex(self: ?*anyopaque) i32 {
        return C.QAccessibleTableCellInterface_RowIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#columnExtent)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn ColumnExtent(self: ?*anyopaque) i32 {
        return C.QAccessibleTableCellInterface_ColumnExtent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#rowExtent)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn RowExtent(self: ?*anyopaque) i32 {
        return C.QAccessibleTableCellInterface_RowExtent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#table)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn Table(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTableCellInterface_Table(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablecellinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface, param1: ?*C.QAccessibleTableCellInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleTableCellInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTableCellInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTableCellInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletableinterface.html
pub const qaccessibletableinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#caption)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn Caption(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTableInterface_Caption(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#summary)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn Summary(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTableInterface_Summary(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#cellAt)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, row: i32, column: i32 ```
    pub fn CellAt(self: ?*anyopaque, row: i32, column: i32) ?*C.QAccessibleInterface {
        return C.QAccessibleTableInterface_CellAt(@ptrCast(self), @intCast(row), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedCellCount)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn SelectedCellCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTableInterface_SelectedCellCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedCells)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, allocator: std.mem.Allocator ```
    pub fn SelectedCells(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QAccessibleInterface {
        const _arr: C.struct_libqt_list = C.QAccessibleTableInterface_SelectedCells(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QAccessibleInterface, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QAccessibleInterface = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#columnDescription)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, column: i32, allocator: std.mem.Allocator ```
    pub fn ColumnDescription(self: ?*anyopaque, column: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTableInterface_ColumnDescription(@ptrCast(self), @intCast(column));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#rowDescription)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, row: i32, allocator: std.mem.Allocator ```
    pub fn RowDescription(self: ?*anyopaque, row: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTableInterface_RowDescription(@ptrCast(self), @intCast(row));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedColumnCount)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn SelectedColumnCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTableInterface_SelectedColumnCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedRowCount)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn SelectedRowCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTableInterface_SelectedRowCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#columnCount)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn ColumnCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTableInterface_ColumnCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#rowCount)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn RowCount(self: ?*anyopaque) i32 {
        return C.QAccessibleTableInterface_RowCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedColumns)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, allocator: std.mem.Allocator ```
    pub fn SelectedColumns(self: ?*anyopaque, allocator: std.mem.Allocator) []i32 {
        const _arr: C.struct_libqt_list = C.QAccessibleTableInterface_SelectedColumns(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectedRows)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, allocator: std.mem.Allocator ```
    pub fn SelectedRows(self: ?*anyopaque, allocator: std.mem.Allocator) []i32 {
        const _arr: C.struct_libqt_list = C.QAccessibleTableInterface_SelectedRows(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#isColumnSelected)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, column: i32 ```
    pub fn IsColumnSelected(self: ?*anyopaque, column: i32) bool {
        return C.QAccessibleTableInterface_IsColumnSelected(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#isRowSelected)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, row: i32 ```
    pub fn IsRowSelected(self: ?*anyopaque, row: i32) bool {
        return C.QAccessibleTableInterface_IsRowSelected(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectRow)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, row: i32 ```
    pub fn SelectRow(self: ?*anyopaque, row: i32) bool {
        return C.QAccessibleTableInterface_SelectRow(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#selectColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, column: i32 ```
    pub fn SelectColumn(self: ?*anyopaque, column: i32) bool {
        return C.QAccessibleTableInterface_SelectColumn(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#unselectRow)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, row: i32 ```
    pub fn UnselectRow(self: ?*anyopaque, row: i32) bool {
        return C.QAccessibleTableInterface_UnselectRow(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#unselectColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, column: i32 ```
    pub fn UnselectColumn(self: ?*anyopaque, column: i32) bool {
        return C.QAccessibleTableInterface_UnselectColumn(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletableinterface.html#modelChange)
    ///
    /// ``` self: ?*C.QAccessibleTableInterface, event: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn ModelChange(self: ?*anyopaque, event: ?*anyopaque) void {
        C.QAccessibleTableInterface_ModelChange(@ptrCast(self), @ptrCast(event));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTableInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTableInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibleactioninterface.html
pub const qaccessibleactioninterface = struct {
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#actionNames)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, allocator: std.mem.Allocator ```
    pub fn ActionNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QAccessibleActionInterface_ActionNames(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#localizedActionName)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, name: []const u8, allocator: std.mem.Allocator ```
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#localizedActionDescription)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, name: []const u8, allocator: std.mem.Allocator ```
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#doAction)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, actionName: []const u8 ```
    pub fn DoAction(self: ?*anyopaque, actionName: []const u8) void {
        const actionName_str = C.struct_libqt_string{
            .len = actionName.len,
            .data = @constCast(actionName.ptr),
        };
        C.QAccessibleActionInterface_DoAction(@ptrCast(self), actionName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#keyBindingsForAction)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, actionName: []const u8, allocator: std.mem.Allocator ```
    pub fn KeyBindingsForAction(self: ?*anyopaque, actionName: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const actionName_str = C.struct_libqt_string{
            .len = actionName.len,
            .data = @constCast(actionName.ptr),
        };
        const _arr: C.struct_libqt_list = C.QAccessibleActionInterface_KeyBindingsForAction(@ptrCast(self), actionName_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleactioninterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleActionInterface, param1: ?*C.QAccessibleActionInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleActionInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleActionInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleActionInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibleimageinterface.html
pub const qaccessibleimageinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleimageinterface.html#imageDescription)
    ///
    /// ``` self: ?*C.QAccessibleImageInterface, allocator: std.mem.Allocator ```
    pub fn ImageDescription(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleImageInterface_ImageDescription(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleimageinterface.html#imageSize)
    ///
    /// ``` self: ?*C.QAccessibleImageInterface ```
    pub fn ImageSize(self: ?*anyopaque) ?*C.QSize {
        return C.QAccessibleImageInterface_ImageSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleimageinterface.html#imagePosition)
    ///
    /// ``` self: ?*C.QAccessibleImageInterface ```
    pub fn ImagePosition(self: ?*anyopaque) ?*C.QPoint {
        return C.QAccessibleImageInterface_ImagePosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleimageinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleImageInterface, param1: ?*C.QAccessibleImageInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleImageInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleImageInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleImageInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html
pub const qaccessiblehyperlinkinterface = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#anchor)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface, allocator: std.mem.Allocator ```
    pub fn Anchor(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleHyperlinkInterface_Anchor(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#anchorTarget)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface, allocator: std.mem.Allocator ```
    pub fn AnchorTarget(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleHyperlinkInterface_AnchorTarget(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#startIndex)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface ```
    pub fn StartIndex(self: ?*anyopaque) i32 {
        return C.QAccessibleHyperlinkInterface_StartIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#endIndex)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface ```
    pub fn EndIndex(self: ?*anyopaque) i32 {
        return C.QAccessibleHyperlinkInterface_EndIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#isValid)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAccessibleHyperlinkInterface_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblehyperlinkinterface.html#operator=)
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface, param1: ?*C.QAccessibleHyperlinkInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QAccessibleHyperlinkInterface_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleHyperlinkInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleHyperlinkInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibleevent.html
pub const qaccessibleevent = struct {
    /// New constructs a new QAccessibleEvent object.
    ///
    /// ``` obj: ?*C.QObject, typ: qaccessible_base_enums.Event ```
    pub fn New(obj: ?*anyopaque, typ: i64) ?*C.QAccessibleEvent {
        return C.QAccessibleEvent_new(@ptrCast(obj), @intCast(typ));
    }

    /// New2 constructs a new QAccessibleEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, typ: qaccessible_base_enums.Event ```
    pub fn New2(iface: ?*anyopaque, typ: i64) ?*C.QAccessibleEvent {
        return C.QAccessibleEvent_new2(@ptrCast(iface), @intCast(typ));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAccessibleEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessiblestatechangeevent.html
pub const qaccessiblestatechangeevent = struct {
    /// New constructs a new QAccessibleStateChangeEvent object.
    ///
    /// ``` obj: ?*C.QObject, state: ?*C.QAccessible__State ```
    pub fn New(obj: ?*anyopaque, state: ?*C.QAccessible__State) ?*C.QAccessibleStateChangeEvent {
        return C.QAccessibleStateChangeEvent_new(@ptrCast(obj), @ptrCast(state));
    }

    /// New2 constructs a new QAccessibleStateChangeEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, state: ?*C.QAccessible__State ```
    pub fn New2(iface: ?*anyopaque, state: ?*C.QAccessible__State) ?*C.QAccessibleStateChangeEvent {
        return C.QAccessibleStateChangeEvent_new2(@ptrCast(iface), @ptrCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblestatechangeevent.html#changedStates)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn ChangedStates(self: ?*anyopaque) ?*C.QAccessible__State {
        return C.QAccessibleStateChangeEvent_ChangedStates(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleStateChangeEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleStateChangeEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleStateChangeEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleStateChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleStateChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextcursorevent.html
pub const qaccessibletextcursorevent = struct {
    /// New constructs a new QAccessibleTextCursorEvent object.
    ///
    /// ``` obj: ?*C.QObject, cursorPos: i32 ```
    pub fn New(obj: ?*anyopaque, cursorPos: i32) ?*C.QAccessibleTextCursorEvent {
        return C.QAccessibleTextCursorEvent_new(@ptrCast(obj), @intCast(cursorPos));
    }

    /// New2 constructs a new QAccessibleTextCursorEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, cursorPos: i32 ```
    pub fn New2(iface: ?*anyopaque, cursorPos: i32) ?*C.QAccessibleTextCursorEvent {
        return C.QAccessibleTextCursorEvent_new2(@ptrCast(iface), @intCast(cursorPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextCursorEvent_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextCursorEvent_CursorPosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextCursorEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextCursorEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTextCursorEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextCursorEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextCursorEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextselectionevent.html
pub const qaccessibletextselectionevent = struct {
    /// New constructs a new QAccessibleTextSelectionEvent object.
    ///
    /// ``` obj: ?*C.QObject, start: i32, end: i32 ```
    pub fn New(obj: ?*anyopaque, start: i32, end: i32) ?*C.QAccessibleTextSelectionEvent {
        return C.QAccessibleTextSelectionEvent_new(@ptrCast(obj), @intCast(start), @intCast(end));
    }

    /// New2 constructs a new QAccessibleTextSelectionEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, start: i32, end: i32 ```
    pub fn New2(iface: ?*anyopaque, start: i32, end: i32) ?*C.QAccessibleTextSelectionEvent {
        return C.QAccessibleTextSelectionEvent_new2(@ptrCast(iface), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextselectionevent.html#setSelection)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent, start: i32, end: i32 ```
    pub fn SetSelection(self: ?*anyopaque, start: i32, end: i32) void {
        C.QAccessibleTextSelectionEvent_SetSelection(@ptrCast(self), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextselectionevent.html#selectionStart)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn SelectionStart(self: ?*anyopaque) i32 {
        return C.QAccessibleTextSelectionEvent_SelectionStart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextselectionevent.html#selectionEnd)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn SelectionEnd(self: ?*anyopaque) i32 {
        return C.QAccessibleTextSelectionEvent_SelectionEnd(@ptrCast(self));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextCursorEvent_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextCursorEvent_CursorPosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextSelectionEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextSelectionEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTextSelectionEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextSelectionEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextSelectionEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextinsertevent.html
pub const qaccessibletextinsertevent = struct {
    /// New constructs a new QAccessibleTextInsertEvent object.
    ///
    /// ``` obj: ?*C.QObject, position: i32, text: []const u8 ```
    pub fn New(obj: ?*anyopaque, position: i32, text: []const u8) ?*C.QAccessibleTextInsertEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextInsertEvent_new(@ptrCast(obj), @intCast(position), text_str);
    }

    /// New2 constructs a new QAccessibleTextInsertEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, position: i32, text: []const u8 ```
    pub fn New2(iface: ?*anyopaque, position: i32, text: []const u8) ?*C.QAccessibleTextInsertEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextInsertEvent_new2(@ptrCast(iface), @intCast(position), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinsertevent.html#textInserted)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent, allocator: std.mem.Allocator ```
    pub fn TextInserted(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextInsertEvent_TextInserted(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextinsertevent.html#changePosition)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn ChangePosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextInsertEvent_ChangePosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextCursorEvent_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextCursorEvent_CursorPosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextInsertEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextInsertEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTextInsertEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextInsertEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextInsertEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextremoveevent.html
pub const qaccessibletextremoveevent = struct {
    /// New constructs a new QAccessibleTextRemoveEvent object.
    ///
    /// ``` obj: ?*C.QObject, position: i32, text: []const u8 ```
    pub fn New(obj: ?*anyopaque, position: i32, text: []const u8) ?*C.QAccessibleTextRemoveEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextRemoveEvent_new(@ptrCast(obj), @intCast(position), text_str);
    }

    /// New2 constructs a new QAccessibleTextRemoveEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, position: i32, text: []const u8 ```
    pub fn New2(iface: ?*anyopaque, position: i32, text: []const u8) ?*C.QAccessibleTextRemoveEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextRemoveEvent_new2(@ptrCast(iface), @intCast(position), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextremoveevent.html#textRemoved)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent, allocator: std.mem.Allocator ```
    pub fn TextRemoved(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextRemoveEvent_TextRemoved(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextremoveevent.html#changePosition)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn ChangePosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextRemoveEvent_ChangePosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextCursorEvent_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextCursorEvent_CursorPosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextRemoveEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextRemoveEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTextRemoveEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextRemoveEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextRemoveEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletextupdateevent.html
pub const qaccessibletextupdateevent = struct {
    /// New constructs a new QAccessibleTextUpdateEvent object.
    ///
    /// ``` obj: ?*C.QObject, position: i32, oldText: []const u8, text: []const u8 ```
    pub fn New(obj: ?*anyopaque, position: i32, oldText: []const u8, text: []const u8) ?*C.QAccessibleTextUpdateEvent {
        const oldText_str = C.struct_libqt_string{
            .len = oldText.len,
            .data = @constCast(oldText.ptr),
        };
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextUpdateEvent_new(@ptrCast(obj), @intCast(position), oldText_str, text_str);
    }

    /// New2 constructs a new QAccessibleTextUpdateEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, position: i32, oldText: []const u8, text: []const u8 ```
    pub fn New2(iface: ?*anyopaque, position: i32, oldText: []const u8, text: []const u8) ?*C.QAccessibleTextUpdateEvent {
        const oldText_str = C.struct_libqt_string{
            .len = oldText.len,
            .data = @constCast(oldText.ptr),
        };
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QAccessibleTextUpdateEvent_new2(@ptrCast(iface), @intCast(position), oldText_str, text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextupdateevent.html#textRemoved)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent, allocator: std.mem.Allocator ```
    pub fn TextRemoved(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextUpdateEvent_TextRemoved(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextupdateevent.html#textInserted)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent, allocator: std.mem.Allocator ```
    pub fn TextInserted(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAccessibleTextUpdateEvent_TextInserted(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextupdateevent.html#changePosition)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn ChangePosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextUpdateEvent_ChangePosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#setCursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent, position: i32 ```
    pub fn SetCursorPosition(self: ?*anyopaque, position: i32) void {
        C.QAccessibleTextCursorEvent_SetCursorPosition(@ptrCast(self), @intCast(position));
    }

    /// Inherited from QAccessibleTextCursorEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletextcursorevent.html#cursorPosition)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn CursorPosition(self: ?*anyopaque) i32 {
        return C.QAccessibleTextCursorEvent_CursorPosition(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextUpdateEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTextUpdateEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTextUpdateEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTextUpdateEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTextUpdateEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessiblevaluechangeevent.html
pub const qaccessiblevaluechangeevent = struct {
    /// New constructs a new QAccessibleValueChangeEvent object.
    ///
    /// ``` obj: ?*C.QObject, val: ?*C.QVariant ```
    pub fn New(obj: ?*anyopaque, val: ?*anyopaque) ?*C.QAccessibleValueChangeEvent {
        return C.QAccessibleValueChangeEvent_new(@ptrCast(obj), @ptrCast(val));
    }

    /// New2 constructs a new QAccessibleValueChangeEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, val: ?*C.QVariant ```
    pub fn New2(iface: ?*anyopaque, val: ?*anyopaque) ?*C.QAccessibleValueChangeEvent {
        return C.QAccessibleValueChangeEvent_new2(@ptrCast(iface), @ptrCast(val));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevaluechangeevent.html#setValue)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent, val: ?*C.QVariant ```
    pub fn SetValue(self: ?*anyopaque, val: ?*anyopaque) void {
        C.QAccessibleValueChangeEvent_SetValue(@ptrCast(self), @ptrCast(val));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessiblevaluechangeevent.html#value)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn Value(self: ?*anyopaque) ?*C.QVariant {
        return C.QAccessibleValueChangeEvent_Value(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleValueChangeEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleValueChangeEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleValueChangeEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleValueChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleValueChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html
pub const qaccessibletablemodelchangeevent = struct {
    /// New constructs a new QAccessibleTableModelChangeEvent object.
    ///
    /// ``` obj: ?*C.QObject, changeType: qaccessible_enums.ModelChangeType ```
    pub fn New(obj: ?*anyopaque, changeType: i64) ?*C.QAccessibleTableModelChangeEvent {
        return C.QAccessibleTableModelChangeEvent_new(@ptrCast(obj), @intCast(changeType));
    }

    /// New2 constructs a new QAccessibleTableModelChangeEvent object.
    ///
    /// ``` iface: ?*C.QAccessibleInterface, changeType: qaccessible_enums.ModelChangeType ```
    pub fn New2(iface: ?*anyopaque, changeType: i64) ?*C.QAccessibleTableModelChangeEvent {
        return C.QAccessibleTableModelChangeEvent_new2(@ptrCast(iface), @intCast(changeType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#setModelChangeType)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, changeType: qaccessible_enums.ModelChangeType ```
    pub fn SetModelChangeType(self: ?*anyopaque, changeType: i64) void {
        C.QAccessibleTableModelChangeEvent_SetModelChangeType(@ptrCast(self), @intCast(changeType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#modelChangeType)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn ModelChangeType(self: ?*anyopaque) i64 {
        return C.QAccessibleTableModelChangeEvent_ModelChangeType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#setFirstRow)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, row: i32 ```
    pub fn SetFirstRow(self: ?*anyopaque, row: i32) void {
        C.QAccessibleTableModelChangeEvent_SetFirstRow(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#setFirstColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, col: i32 ```
    pub fn SetFirstColumn(self: ?*anyopaque, col: i32) void {
        C.QAccessibleTableModelChangeEvent_SetFirstColumn(@ptrCast(self), @intCast(col));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#setLastRow)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, row: i32 ```
    pub fn SetLastRow(self: ?*anyopaque, row: i32) void {
        C.QAccessibleTableModelChangeEvent_SetLastRow(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#setLastColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, col: i32 ```
    pub fn SetLastColumn(self: ?*anyopaque, col: i32) void {
        C.QAccessibleTableModelChangeEvent_SetLastColumn(@ptrCast(self), @intCast(col));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#firstRow)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn FirstRow(self: ?*anyopaque) i32 {
        return C.QAccessibleTableModelChangeEvent_FirstRow(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#firstColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn FirstColumn(self: ?*anyopaque) i32 {
        return C.QAccessibleTableModelChangeEvent_FirstColumn(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#lastRow)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn LastRow(self: ?*anyopaque) i32 {
        return C.QAccessibleTableModelChangeEvent_LastRow(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibletablemodelchangeevent.html#lastColumn)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn LastColumn(self: ?*anyopaque) i32 {
        return C.QAccessibleTableModelChangeEvent_LastColumn(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#type)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QAccessibleEvent_Type(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#object)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn Object(self: ?*anyopaque) ?*C.QObject {
        return C.QAccessibleEvent_Object(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn UniqueId(self: ?*anyopaque) u32 {
        return C.QAccessibleEvent_UniqueId(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#setChild)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, chld: i32 ```
    pub fn SetChild(self: ?*anyopaque, chld: i32) void {
        C.QAccessibleEvent_SetChild(@ptrCast(self), @intCast(chld));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#child)
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn Child(self: ?*anyopaque) i32 {
        return C.QAccessibleEvent_Child(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qaccessibleevent.html#accessibleInterface)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn AccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTableModelChangeEvent_AccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn QBaseAccessibleInterface(self: ?*anyopaque) ?*C.QAccessibleInterface {
        return C.QAccessibleTableModelChangeEvent_QBaseAccessibleInterface(@ptrCast(self));
    }

    /// Inherited from QAccessibleEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent, slot: fn () callconv(.c) ?*C.QAccessibleInterface ```
    pub fn OnAccessibleInterface(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QAccessibleInterface) void {
        C.QAccessibleTableModelChangeEvent_OnAccessibleInterface(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAccessibleTableModelChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAccessibleTableModelChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaccessible.html#types
pub const enums = struct {
    pub const ModelChangeType = enum {
        pub const ModelReset: i32 = 0;
        pub const DataChanged: i32 = 1;
        pub const RowsInserted: i32 = 2;
        pub const ColumnsInserted: i32 = 3;
        pub const RowsRemoved: i32 = 4;
        pub const ColumnsRemoved: i32 = 5;
    };
};
