const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qobjectdefs_enums = @import("libqobjectdefs.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstylehints.html
pub const qstylehints = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#metaObject)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn MetaObject(self: ?*anyopaque) QtC.QMetaObject {
        return qtc.QStyleHints_MetaObject(@ptrCast(self));
    }

    /// ``` self: QtC.QStyleHints, param1: []const u8 ```
    pub fn Metacast(self: ?*anyopaque, param1: []const u8) ?*anyopaque {
        const param1_Cstring = param1.ptr;
        return qtc.QStyleHints_Metacast(@ptrCast(self), param1_Cstring);
    }

    /// ``` self: QtC.QStyleHints, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn Metacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QStyleHints_Metacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(s: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const _str = qtc.QStyleHints_Tr(s_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qstylehints.Tr: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setMouseDoubleClickInterval)
    ///
    /// ``` self: QtC.QStyleHints, mouseDoubleClickInterval: i32 ```
    pub fn SetMouseDoubleClickInterval(self: ?*anyopaque, mouseDoubleClickInterval: i32) void {
        qtc.QStyleHints_SetMouseDoubleClickInterval(@ptrCast(self), @intCast(mouseDoubleClickInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseDoubleClickInterval)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn MouseDoubleClickInterval(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_MouseDoubleClickInterval(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseDoubleClickDistance)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn MouseDoubleClickDistance(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_MouseDoubleClickDistance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#touchDoubleTapDistance)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn TouchDoubleTapDistance(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_TouchDoubleTapDistance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setMousePressAndHoldInterval)
    ///
    /// ``` self: QtC.QStyleHints, mousePressAndHoldInterval: i32 ```
    pub fn SetMousePressAndHoldInterval(self: ?*anyopaque, mousePressAndHoldInterval: i32) void {
        qtc.QStyleHints_SetMousePressAndHoldInterval(@ptrCast(self), @intCast(mousePressAndHoldInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mousePressAndHoldInterval)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn MousePressAndHoldInterval(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_MousePressAndHoldInterval(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setStartDragDistance)
    ///
    /// ``` self: QtC.QStyleHints, startDragDistance: i32 ```
    pub fn SetStartDragDistance(self: ?*anyopaque, startDragDistance: i32) void {
        qtc.QStyleHints_SetStartDragDistance(@ptrCast(self), @intCast(startDragDistance));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragDistance)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn StartDragDistance(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_StartDragDistance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setStartDragTime)
    ///
    /// ``` self: QtC.QStyleHints, startDragTime: i32 ```
    pub fn SetStartDragTime(self: ?*anyopaque, startDragTime: i32) void {
        qtc.QStyleHints_SetStartDragTime(@ptrCast(self), @intCast(startDragTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragTime)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn StartDragTime(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_StartDragTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragVelocity)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn StartDragVelocity(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_StartDragVelocity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setKeyboardInputInterval)
    ///
    /// ``` self: QtC.QStyleHints, keyboardInputInterval: i32 ```
    pub fn SetKeyboardInputInterval(self: ?*anyopaque, keyboardInputInterval: i32) void {
        qtc.QStyleHints_SetKeyboardInputInterval(@ptrCast(self), @intCast(keyboardInputInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#keyboardInputInterval)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn KeyboardInputInterval(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_KeyboardInputInterval(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#keyboardAutoRepeatRate)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn KeyboardAutoRepeatRate(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_KeyboardAutoRepeatRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#keyboardAutoRepeatRateF)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn KeyboardAutoRepeatRateF(self: ?*anyopaque) f64 {
        return qtc.QStyleHints_KeyboardAutoRepeatRateF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setCursorFlashTime)
    ///
    /// ``` self: QtC.QStyleHints, cursorFlashTime: i32 ```
    pub fn SetCursorFlashTime(self: ?*anyopaque, cursorFlashTime: i32) void {
        qtc.QStyleHints_SetCursorFlashTime(@ptrCast(self), @intCast(cursorFlashTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#cursorFlashTime)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn CursorFlashTime(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_CursorFlashTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#showIsFullScreen)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn ShowIsFullScreen(self: ?*anyopaque) bool {
        return qtc.QStyleHints_ShowIsFullScreen(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#showIsMaximized)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn ShowIsMaximized(self: ?*anyopaque) bool {
        return qtc.QStyleHints_ShowIsMaximized(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#showShortcutsInContextMenus)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn ShowShortcutsInContextMenus(self: ?*anyopaque) bool {
        return qtc.QStyleHints_ShowShortcutsInContextMenus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setShowShortcutsInContextMenus)
    ///
    /// ``` self: QtC.QStyleHints, showShortcutsInContextMenus: bool ```
    pub fn SetShowShortcutsInContextMenus(self: ?*anyopaque, showShortcutsInContextMenus: bool) void {
        qtc.QStyleHints_SetShowShortcutsInContextMenus(@ptrCast(self), showShortcutsInContextMenus);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#contextMenuTrigger)
    ///
    /// ``` self: QtC.QStyleHints ```
    ///
    /// Returns: ``` qnamespace_enums.ContextMenuTrigger ```
    pub fn ContextMenuTrigger(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_ContextMenuTrigger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setContextMenuTrigger)
    ///
    /// ``` self: QtC.QStyleHints, contextMenuTrigger: qnamespace_enums.ContextMenuTrigger ```
    pub fn SetContextMenuTrigger(self: ?*anyopaque, contextMenuTrigger: i32) void {
        qtc.QStyleHints_SetContextMenuTrigger(@ptrCast(self), @intCast(contextMenuTrigger));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#passwordMaskDelay)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn PasswordMaskDelay(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_PasswordMaskDelay(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#passwordMaskCharacter)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn PasswordMaskCharacter(self: ?*anyopaque) QtC.QChar {
        return qtc.QStyleHints_PasswordMaskCharacter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#fontSmoothingGamma)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn FontSmoothingGamma(self: ?*anyopaque) f64 {
        return qtc.QStyleHints_FontSmoothingGamma(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#useRtlExtensions)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn UseRtlExtensions(self: ?*anyopaque) bool {
        return qtc.QStyleHints_UseRtlExtensions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setFocusOnTouchRelease)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn SetFocusOnTouchRelease(self: ?*anyopaque) bool {
        return qtc.QStyleHints_SetFocusOnTouchRelease(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#tabFocusBehavior)
    ///
    /// ``` self: QtC.QStyleHints ```
    ///
    /// Returns: ``` qnamespace_enums.TabFocusBehavior ```
    pub fn TabFocusBehavior(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_TabFocusBehavior(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setTabFocusBehavior)
    ///
    /// ``` self: QtC.QStyleHints, tabFocusBehavior: qnamespace_enums.TabFocusBehavior ```
    pub fn SetTabFocusBehavior(self: ?*anyopaque, tabFocusBehavior: i32) void {
        qtc.QStyleHints_SetTabFocusBehavior(@ptrCast(self), @intCast(tabFocusBehavior));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#singleClickActivation)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn SingleClickActivation(self: ?*anyopaque) bool {
        return qtc.QStyleHints_SingleClickActivation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#useHoverEffects)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn UseHoverEffects(self: ?*anyopaque) bool {
        return qtc.QStyleHints_UseHoverEffects(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setUseHoverEffects)
    ///
    /// ``` self: QtC.QStyleHints, useHoverEffects: bool ```
    pub fn SetUseHoverEffects(self: ?*anyopaque, useHoverEffects: bool) void {
        qtc.QStyleHints_SetUseHoverEffects(@ptrCast(self), useHoverEffects);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#wheelScrollLines)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn WheelScrollLines(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_WheelScrollLines(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setWheelScrollLines)
    ///
    /// ``` self: QtC.QStyleHints, scrollLines: i32 ```
    pub fn SetWheelScrollLines(self: ?*anyopaque, scrollLines: i32) void {
        qtc.QStyleHints_SetWheelScrollLines(@ptrCast(self), @intCast(scrollLines));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setMouseQuickSelectionThreshold)
    ///
    /// ``` self: QtC.QStyleHints, threshold: i32 ```
    pub fn SetMouseQuickSelectionThreshold(self: ?*anyopaque, threshold: i32) void {
        qtc.QStyleHints_SetMouseQuickSelectionThreshold(@ptrCast(self), @intCast(threshold));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseQuickSelectionThreshold)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn MouseQuickSelectionThreshold(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_MouseQuickSelectionThreshold(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#colorScheme)
    ///
    /// ``` self: QtC.QStyleHints ```
    ///
    /// Returns: ``` qnamespace_enums.ColorScheme ```
    pub fn ColorScheme(self: ?*anyopaque) i32 {
        return qtc.QStyleHints_ColorScheme(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#setColorScheme)
    ///
    /// ``` self: QtC.QStyleHints, scheme: qnamespace_enums.ColorScheme ```
    pub fn SetColorScheme(self: ?*anyopaque, scheme: i32) void {
        qtc.QStyleHints_SetColorScheme(@ptrCast(self), @intCast(scheme));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#unsetColorScheme)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn UnsetColorScheme(self: ?*anyopaque) void {
        qtc.QStyleHints_UnsetColorScheme(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#cursorFlashTimeChanged)
    ///
    /// ``` self: QtC.QStyleHints, cursorFlashTime: i32 ```
    pub fn CursorFlashTimeChanged(self: ?*anyopaque, cursorFlashTime: i32) void {
        qtc.QStyleHints_CursorFlashTimeChanged(@ptrCast(self), @intCast(cursorFlashTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#cursorFlashTimeChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, cursorFlashTime: i32) callconv(.c) void ```
    pub fn OnCursorFlashTimeChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_CursorFlashTimeChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#keyboardInputIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, keyboardInputInterval: i32 ```
    pub fn KeyboardInputIntervalChanged(self: ?*anyopaque, keyboardInputInterval: i32) void {
        qtc.QStyleHints_KeyboardInputIntervalChanged(@ptrCast(self), @intCast(keyboardInputInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#keyboardInputIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, keyboardInputInterval: i32) callconv(.c) void ```
    pub fn OnKeyboardInputIntervalChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_KeyboardInputIntervalChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseDoubleClickIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, mouseDoubleClickInterval: i32 ```
    pub fn MouseDoubleClickIntervalChanged(self: ?*anyopaque, mouseDoubleClickInterval: i32) void {
        qtc.QStyleHints_MouseDoubleClickIntervalChanged(@ptrCast(self), @intCast(mouseDoubleClickInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseDoubleClickIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, mouseDoubleClickInterval: i32) callconv(.c) void ```
    pub fn OnMouseDoubleClickIntervalChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_MouseDoubleClickIntervalChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mousePressAndHoldIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, mousePressAndHoldInterval: i32 ```
    pub fn MousePressAndHoldIntervalChanged(self: ?*anyopaque, mousePressAndHoldInterval: i32) void {
        qtc.QStyleHints_MousePressAndHoldIntervalChanged(@ptrCast(self), @intCast(mousePressAndHoldInterval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mousePressAndHoldIntervalChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, mousePressAndHoldInterval: i32) callconv(.c) void ```
    pub fn OnMousePressAndHoldIntervalChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_MousePressAndHoldIntervalChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragDistanceChanged)
    ///
    /// ``` self: QtC.QStyleHints, startDragDistance: i32 ```
    pub fn StartDragDistanceChanged(self: ?*anyopaque, startDragDistance: i32) void {
        qtc.QStyleHints_StartDragDistanceChanged(@ptrCast(self), @intCast(startDragDistance));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragDistanceChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, startDragDistance: i32) callconv(.c) void ```
    pub fn OnStartDragDistanceChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_StartDragDistanceChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragTimeChanged)
    ///
    /// ``` self: QtC.QStyleHints, startDragTime: i32 ```
    pub fn StartDragTimeChanged(self: ?*anyopaque, startDragTime: i32) void {
        qtc.QStyleHints_StartDragTimeChanged(@ptrCast(self), @intCast(startDragTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#startDragTimeChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, startDragTime: i32) callconv(.c) void ```
    pub fn OnStartDragTimeChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_StartDragTimeChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#tabFocusBehaviorChanged)
    ///
    /// ``` self: QtC.QStyleHints, tabFocusBehavior: qnamespace_enums.TabFocusBehavior ```
    pub fn TabFocusBehaviorChanged(self: ?*anyopaque, tabFocusBehavior: i32) void {
        qtc.QStyleHints_TabFocusBehaviorChanged(@ptrCast(self), @intCast(tabFocusBehavior));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#tabFocusBehaviorChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, tabFocusBehavior: qnamespace_enums.TabFocusBehavior) callconv(.c) void ```
    pub fn OnTabFocusBehaviorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_TabFocusBehaviorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#useHoverEffectsChanged)
    ///
    /// ``` self: QtC.QStyleHints, useHoverEffects: bool ```
    pub fn UseHoverEffectsChanged(self: ?*anyopaque, useHoverEffects: bool) void {
        qtc.QStyleHints_UseHoverEffectsChanged(@ptrCast(self), useHoverEffects);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#useHoverEffectsChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, useHoverEffects: bool) callconv(.c) void ```
    pub fn OnUseHoverEffectsChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QStyleHints_Connect_UseHoverEffectsChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#showShortcutsInContextMenusChanged)
    ///
    /// ``` self: QtC.QStyleHints, param1: bool ```
    pub fn ShowShortcutsInContextMenusChanged(self: ?*anyopaque, param1: bool) void {
        qtc.QStyleHints_ShowShortcutsInContextMenusChanged(@ptrCast(self), param1);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#showShortcutsInContextMenusChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, param1: bool) callconv(.c) void ```
    pub fn OnShowShortcutsInContextMenusChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QStyleHints_Connect_ShowShortcutsInContextMenusChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#contextMenuTriggerChanged)
    ///
    /// ``` self: QtC.QStyleHints, contextMenuTrigger: qnamespace_enums.ContextMenuTrigger ```
    pub fn ContextMenuTriggerChanged(self: ?*anyopaque, contextMenuTrigger: i32) void {
        qtc.QStyleHints_ContextMenuTriggerChanged(@ptrCast(self), @intCast(contextMenuTrigger));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#contextMenuTriggerChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, contextMenuTrigger: qnamespace_enums.ContextMenuTrigger) callconv(.c) void ```
    pub fn OnContextMenuTriggerChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_ContextMenuTriggerChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#wheelScrollLinesChanged)
    ///
    /// ``` self: QtC.QStyleHints, scrollLines: i32 ```
    pub fn WheelScrollLinesChanged(self: ?*anyopaque, scrollLines: i32) void {
        qtc.QStyleHints_WheelScrollLinesChanged(@ptrCast(self), @intCast(scrollLines));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#wheelScrollLinesChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, scrollLines: i32) callconv(.c) void ```
    pub fn OnWheelScrollLinesChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_WheelScrollLinesChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseQuickSelectionThresholdChanged)
    ///
    /// ``` self: QtC.QStyleHints, threshold: i32 ```
    pub fn MouseQuickSelectionThresholdChanged(self: ?*anyopaque, threshold: i32) void {
        qtc.QStyleHints_MouseQuickSelectionThresholdChanged(@ptrCast(self), @intCast(threshold));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#mouseQuickSelectionThresholdChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, threshold: i32) callconv(.c) void ```
    pub fn OnMouseQuickSelectionThresholdChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_MouseQuickSelectionThresholdChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#colorSchemeChanged)
    ///
    /// ``` self: QtC.QStyleHints, colorScheme: qnamespace_enums.ColorScheme ```
    pub fn ColorSchemeChanged(self: ?*anyopaque, colorScheme: i32) void {
        qtc.QStyleHints_ColorSchemeChanged(@ptrCast(self), @intCast(colorScheme));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#colorSchemeChanged)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, colorScheme: qnamespace_enums.ColorScheme) callconv(.c) void ```
    pub fn OnColorSchemeChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QStyleHints_Connect_ColorSchemeChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QStyleHints_Tr2(s_Cstring, c_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qstylehints.Tr2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QStyleHints_Tr3(s_Cstring, c_Cstring, @intCast(n));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qstylehints.Tr3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// ``` self: QtC.QStyleHints, event: QtC.QEvent ```
    pub fn Event(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QObject_Event(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// ``` self: QtC.QStyleHints, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn EventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QObject_EventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectName)
    ///
    /// ``` self: QtC.QStyleHints, allocator: std.mem.Allocator ```
    pub fn ObjectName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QObject_ObjectName(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qstylehints.ObjectName: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setObjectName)
    ///
    /// ``` self: QtC.QStyleHints, name: []const u8 ```
    pub fn SetObjectName(self: ?*anyopaque, name: []const u8) void {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };
        qtc.QObject_SetObjectName(@ptrCast(self), name_str);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWidgetType)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn IsWidgetType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWidgetType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWindowType)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn IsWindowType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWindowType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isQuickItemType)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn IsQuickItemType(self: ?*anyopaque) bool {
        return qtc.QObject_IsQuickItemType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#signalsBlocked)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn SignalsBlocked(self: ?*anyopaque) bool {
        return qtc.QObject_SignalsBlocked(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#blockSignals)
    ///
    /// ``` self: QtC.QStyleHints, b: bool ```
    pub fn BlockSignals(self: ?*anyopaque, b: bool) bool {
        return qtc.QObject_BlockSignals(@ptrCast(self), b);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#thread)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn Thread(self: ?*anyopaque) QtC.QThread {
        return qtc.QObject_Thread(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QStyleHints, thread: QtC.QThread ```
    pub fn MoveToThread(self: ?*anyopaque, thread: ?*anyopaque) bool {
        return qtc.QObject_MoveToThread(@ptrCast(self), @ptrCast(thread));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QStyleHints, interval: i32 ```
    pub fn StartTimer(self: ?*anyopaque, interval: i32) i32 {
        return qtc.QObject_StartTimer(@ptrCast(self), @intCast(interval));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QStyleHints, id: i32 ```
    pub fn KillTimer(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QStyleHints, id: qnamespace_enums.TimerId ```
    pub fn KillTimer2(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer2(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#children)
    ///
    /// ``` self: QtC.QStyleHints, allocator: std.mem.Allocator ```
    pub fn Children(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QObject {
        const _arr: qtc.libqt_list = qtc.QObject_Children(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QObject, _arr.len) catch @panic("qstylehints.Children: Memory allocation failed");
        const _data: [*]QtC.QObject = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setParent)
    ///
    /// ``` self: QtC.QStyleHints, parent: QtC.QObject ```
    pub fn SetParent(self: ?*anyopaque, parent: ?*anyopaque) void {
        qtc.QObject_SetParent(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#installEventFilter)
    ///
    /// ``` self: QtC.QStyleHints, filterObj: QtC.QObject ```
    pub fn InstallEventFilter(self: ?*anyopaque, filterObj: ?*anyopaque) void {
        qtc.QObject_InstallEventFilter(@ptrCast(self), @ptrCast(filterObj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#removeEventFilter)
    ///
    /// ``` self: QtC.QStyleHints, obj: QtC.QObject ```
    pub fn RemoveEventFilter(self: ?*anyopaque, obj: ?*anyopaque) void {
        qtc.QObject_RemoveEventFilter(@ptrCast(self), @ptrCast(obj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod ```
    pub fn Connect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.QStyleHints, sender: QtC.QObject, signal: []const u8, member: []const u8 ```
    pub fn Connect2(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect2(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, member: QtC.QMetaMethod ```
    pub fn Disconnect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, member: ?*anyopaque) bool {
        return qtc.QObject_Disconnect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(member));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` param1: QtC.QMetaObject__Connection ```
    pub fn Disconnect2(param1: ?*anyopaque) bool {
        return qtc.QObject_Disconnect2(@ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectTree)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn DumpObjectTree(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectTree(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectInfo)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn DumpObjectInfo(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectInfo(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setProperty)
    ///
    /// ``` self: QtC.QStyleHints, name: []const u8, value: QtC.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, name: []const u8, value: ?*anyopaque) bool {
        const name_Cstring = name.ptr;
        return qtc.QObject_SetProperty(@ptrCast(self), name_Cstring, @ptrCast(value));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#property)
    ///
    /// ``` self: QtC.QStyleHints, name: []const u8 ```
    pub fn Property(self: ?*anyopaque, name: []const u8) QtC.QVariant {
        const name_Cstring = name.ptr;
        return qtc.QObject_Property(@ptrCast(self), name_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dynamicPropertyNames)
    ///
    /// ``` self: QtC.QStyleHints, allocator: std.mem.Allocator ```
    pub fn DynamicPropertyNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: qtc.libqt_list = qtc.QObject_DynamicPropertyNames(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("qstylehints.DynamicPropertyNames: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qstylehints.DynamicPropertyNames: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn BindingStorage(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn BindingStorage2(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage2(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn Destroyed(self: ?*anyopaque) void {
        qtc.QObject_Destroyed(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints) callconv(.c) void ```
    pub fn OnDestroyed(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#parent)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn Parent(self: ?*anyopaque) QtC.QObject {
        return qtc.QObject_Parent(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#inherits)
    ///
    /// ``` self: QtC.QStyleHints, classname: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, classname: []const u8) bool {
        const classname_Cstring = classname.ptr;
        return qtc.QObject_Inherits(@ptrCast(self), classname_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#deleteLater)
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn DeleteLater(self: ?*anyopaque) void {
        qtc.QObject_DeleteLater(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QStyleHints, thread: QtC.QThread, param2: QtC.Disambiguated_t ```
    pub fn MoveToThread2(self: ?*anyopaque, thread: ?*anyopaque, param2: QtC.Disambiguated_t) bool {
        return qtc.QObject_MoveToThread2(@ptrCast(self), @ptrCast(thread), @ptrCast(param2));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QStyleHints, interval: i32, timerType: qnamespace_enums.TimerType ```
    pub fn StartTimer22(self: ?*anyopaque, interval: i32, timerType: i32) i32 {
        return qtc.QObject_StartTimer22(@ptrCast(self), @intCast(interval), @intCast(timerType));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect5(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque, typeVal: i32) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect5(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method), @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.QStyleHints, sender: QtC.QObject, signal: []const u8, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect4(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8, typeVal: i32) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect4(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring, @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QStyleHints, param1: QtC.QObject ```
    pub fn Destroyed1(self: ?*anyopaque, param1: ?*anyopaque) void {
        qtc.QObject_Destroyed1(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, param1: QtC.QObject) callconv(.c) void ```
    pub fn OnDestroyed1(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed1(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectNameChanged)
    ///
    /// Wrapper to allow calling private signal
    ///
    /// ``` self: QtC.QStyleHints, callback: *const fn (self: QtC.QStyleHints, objectName: [*:0]const u8) callconv(.c) void ```
    pub fn OnObjectNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QObject_Connect_ObjectNameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehints.html#dtor.QStyleHints)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QStyleHints ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QStyleHints_Delete(@ptrCast(self));
    }
};
