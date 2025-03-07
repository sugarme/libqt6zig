const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpalette_enums = enums;

/// https://doc.qt.io/qt-6/qpalette.html
pub const qpalette = struct {
    /// New constructs a new QPalette object.
    ///
    ///
    pub fn New() ?*C.QPalette {
        return C.QPalette_new();
    }

    /// New2 constructs a new QPalette object.
    ///
    /// ``` button: ?*C.QColor ```
    pub fn New2(button: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_new2(@ptrCast(button));
    }

    /// New3 constructs a new QPalette object.
    ///
    /// ``` button: qnamespace_enums.GlobalColor ```
    pub fn New3(button: i64) ?*C.QPalette {
        return C.QPalette_new3(@intCast(button));
    }

    /// New4 constructs a new QPalette object.
    ///
    /// ``` button: ?*C.QColor, window: ?*C.QColor ```
    pub fn New4(button: ?*anyopaque, window: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_new4(@ptrCast(button), @ptrCast(window));
    }

    /// New5 constructs a new QPalette object.
    ///
    /// ``` windowText: ?*C.QBrush, button: ?*C.QBrush, light: ?*C.QBrush, dark: ?*C.QBrush, mid: ?*C.QBrush, text: ?*C.QBrush, bright_text: ?*C.QBrush, base: ?*C.QBrush, window: ?*C.QBrush ```
    pub fn New5(windowText: ?*anyopaque, button: ?*anyopaque, light: ?*anyopaque, dark: ?*anyopaque, mid: ?*anyopaque, text: ?*anyopaque, bright_text: ?*anyopaque, base: ?*anyopaque, window: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_new5(@ptrCast(windowText), @ptrCast(button), @ptrCast(light), @ptrCast(dark), @ptrCast(mid), @ptrCast(text), @ptrCast(bright_text), @ptrCast(base), @ptrCast(window));
    }

    /// New6 constructs a new QPalette object.
    ///
    /// ``` windowText: ?*C.QColor, window: ?*C.QColor, light: ?*C.QColor, dark: ?*C.QColor, mid: ?*C.QColor, text: ?*C.QColor, base: ?*C.QColor ```
    pub fn New6(windowText: ?*anyopaque, window: ?*anyopaque, light: ?*anyopaque, dark: ?*anyopaque, mid: ?*anyopaque, text: ?*anyopaque, base: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_new6(@ptrCast(windowText), @ptrCast(window), @ptrCast(light), @ptrCast(dark), @ptrCast(mid), @ptrCast(text), @ptrCast(base));
    }

    /// New7 constructs a new QPalette object.
    ///
    /// ``` palette: ?*C.QPalette ```
    pub fn New7(palette: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_new7(@ptrCast(palette));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#operator=)
    ///
    /// ``` self: ?*C.QPalette, palette: ?*C.QPalette ```
    pub fn OperatorAssign(self: ?*anyopaque, palette: ?*anyopaque) void {
        C.QPalette_OperatorAssign(@ptrCast(self), @ptrCast(palette));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#swap)
    ///
    /// ``` self: ?*C.QPalette, other: ?*C.QPalette ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPalette_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#operator QVariant)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QPalette_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#currentColorGroup)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn CurrentColorGroup(self: ?*anyopaque) i64 {
        return C.QPalette_CurrentColorGroup(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setCurrentColorGroup)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup ```
    pub fn SetCurrentColorGroup(self: ?*anyopaque, cg: i64) void {
        C.QPalette_SetCurrentColorGroup(@ptrCast(self), @intCast(cg));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#color)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup, cr: qpalette_enums.ColorRole ```
    pub fn Color(self: ?*anyopaque, cg: i64, cr: i64) ?*C.QColor {
        return C.QPalette_Color(@ptrCast(self), @intCast(cg), @intCast(cr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#brush)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup, cr: qpalette_enums.ColorRole ```
    pub fn Brush(self: ?*anyopaque, cg: i64, cr: i64) ?*C.QBrush {
        return C.QPalette_Brush(@ptrCast(self), @intCast(cg), @intCast(cr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setColor)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup, cr: qpalette_enums.ColorRole, color: ?*C.QColor ```
    pub fn SetColor(self: ?*anyopaque, cg: i64, cr: i64, color: ?*anyopaque) void {
        C.QPalette_SetColor(@ptrCast(self), @intCast(cg), @intCast(cr), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setColor)
    ///
    /// ``` self: ?*C.QPalette, cr: qpalette_enums.ColorRole, color: ?*C.QColor ```
    pub fn SetColor2(self: ?*anyopaque, cr: i64, color: ?*anyopaque) void {
        C.QPalette_SetColor2(@ptrCast(self), @intCast(cr), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setBrush)
    ///
    /// ``` self: ?*C.QPalette, cr: qpalette_enums.ColorRole, brush: ?*C.QBrush ```
    pub fn SetBrush(self: ?*anyopaque, cr: i64, brush: ?*anyopaque) void {
        C.QPalette_SetBrush(@ptrCast(self), @intCast(cr), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#isBrushSet)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup, cr: qpalette_enums.ColorRole ```
    pub fn IsBrushSet(self: ?*anyopaque, cg: i64, cr: i64) bool {
        return C.QPalette_IsBrushSet(@ptrCast(self), @intCast(cg), @intCast(cr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setBrush)
    ///
    /// ``` self: ?*C.QPalette, cg: qpalette_enums.ColorGroup, cr: qpalette_enums.ColorRole, brush: ?*C.QBrush ```
    pub fn SetBrush2(self: ?*anyopaque, cg: i64, cr: i64, brush: ?*anyopaque) void {
        C.QPalette_SetBrush2(@ptrCast(self), @intCast(cg), @intCast(cr), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setColorGroup)
    ///
    /// ``` self: ?*C.QPalette, cr: qpalette_enums.ColorGroup, windowText: ?*C.QBrush, button: ?*C.QBrush, light: ?*C.QBrush, dark: ?*C.QBrush, mid: ?*C.QBrush, text: ?*C.QBrush, bright_text: ?*C.QBrush, base: ?*C.QBrush, window: ?*C.QBrush ```
    pub fn SetColorGroup(self: ?*anyopaque, cr: i64, windowText: ?*anyopaque, button: ?*anyopaque, light: ?*anyopaque, dark: ?*anyopaque, mid: ?*anyopaque, text: ?*anyopaque, bright_text: ?*anyopaque, base: ?*anyopaque, window: ?*anyopaque) void {
        C.QPalette_SetColorGroup(@ptrCast(self), @intCast(cr), @ptrCast(windowText), @ptrCast(button), @ptrCast(light), @ptrCast(dark), @ptrCast(mid), @ptrCast(text), @ptrCast(bright_text), @ptrCast(base), @ptrCast(window));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#isEqual)
    ///
    /// ``` self: ?*C.QPalette, cr1: qpalette_enums.ColorGroup, cr2: qpalette_enums.ColorGroup ```
    pub fn IsEqual(self: ?*anyopaque, cr1: i64, cr2: i64) bool {
        return C.QPalette_IsEqual(@ptrCast(self), @intCast(cr1), @intCast(cr2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#color)
    ///
    /// ``` self: ?*C.QPalette, cr: qpalette_enums.ColorRole ```
    pub fn ColorWithCr(self: ?*anyopaque, cr: i64) ?*C.QColor {
        return C.QPalette_ColorWithCr(@ptrCast(self), @intCast(cr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#brush)
    ///
    /// ``` self: ?*C.QPalette, cr: qpalette_enums.ColorRole ```
    pub fn BrushWithCr(self: ?*anyopaque, cr: i64) ?*C.QBrush {
        return C.QPalette_BrushWithCr(@ptrCast(self), @intCast(cr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#windowText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn WindowText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_WindowText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#button)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Button(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Button(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#light)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Light(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Light(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#dark)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Dark(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Dark(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#mid)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Mid(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Mid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#text)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Text(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Text(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#base)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Base(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Base(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#alternateBase)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn AlternateBase(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_AlternateBase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#toolTipBase)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn ToolTipBase(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_ToolTipBase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#toolTipText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn ToolTipText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_ToolTipText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#window)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Window(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Window(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#midlight)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Midlight(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Midlight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#brightText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn BrightText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_BrightText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#buttonText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn ButtonText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_ButtonText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#shadow)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Shadow(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Shadow(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#highlight)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Highlight(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Highlight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#highlightedText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn HighlightedText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_HighlightedText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#link)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn Link(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_Link(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#linkVisited)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn LinkVisited(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_LinkVisited(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#placeholderText)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn PlaceholderText(self: ?*anyopaque) ?*C.QBrush {
        return C.QPalette_PlaceholderText(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#operator==)
    ///
    /// ``` self: ?*C.QPalette, p: ?*C.QPalette ```
    pub fn OperatorEqual(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPalette_OperatorEqual(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#operator!=)
    ///
    /// ``` self: ?*C.QPalette, p: ?*C.QPalette ```
    pub fn OperatorNotEqual(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPalette_OperatorNotEqual(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#isCopyOf)
    ///
    /// ``` self: ?*C.QPalette, p: ?*C.QPalette ```
    pub fn IsCopyOf(self: ?*anyopaque, p: ?*anyopaque) bool {
        return C.QPalette_IsCopyOf(@ptrCast(self), @ptrCast(p));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#cacheKey)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn CacheKey(self: ?*anyopaque) i64 {
        return C.QPalette_CacheKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#resolve)
    ///
    /// ``` self: ?*C.QPalette, other: ?*C.QPalette ```
    pub fn Resolve(self: ?*anyopaque, other: ?*anyopaque) ?*C.QPalette {
        return C.QPalette_Resolve(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#resolveMask)
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn ResolveMask(self: ?*anyopaque) u64 {
        return C.QPalette_ResolveMask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpalette.html#setResolveMask)
    ///
    /// ``` self: ?*C.QPalette, mask: u64 ```
    pub fn SetResolveMask(self: ?*anyopaque, mask: u64) void {
        C.QPalette_SetResolveMask(@ptrCast(self), @intCast(mask));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPalette ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPalette_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpalette.html#types
pub const enums = struct {
    pub const ColorGroup = enum {
        pub const Active: i32 = 0;
        pub const Disabled: i32 = 1;
        pub const Inactive: i32 = 2;
        pub const NColorGroups: i32 = 3;
        pub const Current: i32 = 4;
        pub const All: i32 = 5;
        pub const Normal: i32 = 0;
    };

    pub const ColorRole = enum {
        pub const WindowText: i32 = 0;
        pub const Button: i32 = 1;
        pub const Light: i32 = 2;
        pub const Midlight: i32 = 3;
        pub const Dark: i32 = 4;
        pub const Mid: i32 = 5;
        pub const Text: i32 = 6;
        pub const BrightText: i32 = 7;
        pub const ButtonText: i32 = 8;
        pub const Base: i32 = 9;
        pub const Window: i32 = 10;
        pub const Shadow: i32 = 11;
        pub const Highlight: i32 = 12;
        pub const HighlightedText: i32 = 13;
        pub const Link: i32 = 14;
        pub const LinkVisited: i32 = 15;
        pub const AlternateBase: i32 = 16;
        pub const NoRole: i32 = 17;
        pub const ToolTipBase: i32 = 18;
        pub const ToolTipText: i32 = 19;
        pub const PlaceholderText: i32 = 20;
        pub const NColorRoles: i32 = 21;
    };
};
