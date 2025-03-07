const C = @import("qt6c");
const qsizepolicy_enums = @import("libqsizepolicy.zig").enums;

/// https://doc.qt.io/qt-6/qlayoutitem.html
pub const qlayoutitem = struct {
    /// New constructs a new QLayoutItem object.
    ///
    ///
    pub fn New() ?*C.QLayoutItem {
        return C.QLayoutItem_new();
    }

    /// New2 constructs a new QLayoutItem object.
    ///
    /// ``` param1: ?*C.QLayoutItem ```
    pub fn New2(param1: ?*anyopaque) ?*C.QLayoutItem {
        return C.QLayoutItem_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QLayoutItem object.
    ///
    /// ``` alignment: i32 ```
    pub fn New3(alignment: i64) ?*C.QLayoutItem {
        return C.QLayoutItem_new3(@intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#sizeHint)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn SizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_SizeHint(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnSizeHint(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QLayoutItem_OnSizeHint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseSizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_QBaseSizeHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#minimumSize)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn MinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_MinimumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMinimumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QLayoutItem_OnMinimumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseMinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_QBaseMinimumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#maximumSize)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn MaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_MaximumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMaximumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QLayoutItem_OnMaximumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseMaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QLayoutItem_QBaseMaximumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#expandingDirections)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn ExpandingDirections(self: ?*anyopaque) i64 {
        return C.QLayoutItem_ExpandingDirections(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) i64 ```
    pub fn OnExpandingDirections(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QLayoutItem_OnExpandingDirections(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseExpandingDirections(self: ?*anyopaque) i64 {
        return C.QLayoutItem_QBaseExpandingDirections(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#setGeometry)
    ///
    /// ``` self: ?*C.QLayoutItem, geometry: ?*C.QRect ```
    pub fn SetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QLayoutItem_SetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn (?*C.QLayoutItem, ?*C.QRect) callconv(.c) void ```
    pub fn OnSetGeometry(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QLayoutItem_OnSetGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem, geometry: ?*C.QRect ```
    pub fn QBaseSetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QLayoutItem_QBaseSetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#geometry)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn Geometry(self: ?*anyopaque) ?*C.QRect {
        return C.QLayoutItem_Geometry(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QRect ```
    pub fn OnGeometry(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QRect) void {
        C.QLayoutItem_OnGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseGeometry(self: ?*anyopaque) ?*C.QRect {
        return C.QLayoutItem_QBaseGeometry(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#isEmpty)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QLayoutItem_IsEmpty(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) bool ```
    pub fn OnIsEmpty(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QLayoutItem_OnIsEmpty(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseIsEmpty(self: ?*anyopaque) bool {
        return C.QLayoutItem_QBaseIsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#hasHeightForWidth)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn HasHeightForWidth(self: ?*anyopaque) bool {
        return C.QLayoutItem_HasHeightForWidth(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) bool ```
    pub fn OnHasHeightForWidth(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QLayoutItem_OnHasHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseHasHeightForWidth(self: ?*anyopaque) bool {
        return C.QLayoutItem_QBaseHasHeightForWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#heightForWidth)
    ///
    /// ``` self: ?*C.QLayoutItem, param1: i32 ```
    pub fn HeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QLayoutItem_HeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn (?*C.QLayoutItem, i32) callconv(.c) i32 ```
    pub fn OnHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QLayoutItem_OnHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem, param1: i32 ```
    pub fn QBaseHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QLayoutItem_QBaseHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#minimumHeightForWidth)
    ///
    /// ``` self: ?*C.QLayoutItem, param1: i32 ```
    pub fn MinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QLayoutItem_MinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn (?*C.QLayoutItem, i32) callconv(.c) i32 ```
    pub fn OnMinimumHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QLayoutItem_OnMinimumHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem, param1: i32 ```
    pub fn QBaseMinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QLayoutItem_QBaseMinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#invalidate)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QLayoutItem_Invalidate(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) void ```
    pub fn OnInvalidate(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QLayoutItem_OnInvalidate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseInvalidate(self: ?*anyopaque) void {
        C.QLayoutItem_QBaseInvalidate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#widget)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QLayoutItem_Widget(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QWidget ```
    pub fn OnWidget(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWidget) void {
        C.QLayoutItem_OnWidget(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseWidget(self: ?*anyopaque) ?*C.QWidget {
        return C.QLayoutItem_QBaseWidget(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#layout)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn Layout(self: ?*anyopaque) ?*C.QLayout {
        return C.QLayoutItem_Layout(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QLayout ```
    pub fn OnLayout(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QLayout) void {
        C.QLayoutItem_OnLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseLayout(self: ?*anyopaque) ?*C.QLayout {
        return C.QLayoutItem_QBaseLayout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#spacerItem)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn SpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QLayoutItem_SpacerItem(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) ?*C.QSpacerItem ```
    pub fn OnSpacerItem(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSpacerItem) void {
        C.QLayoutItem_OnSpacerItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseSpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QLayoutItem_QBaseSpacerItem(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#alignment)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QLayoutItem_Alignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#setAlignment)
    ///
    /// ``` self: ?*C.QLayoutItem, a: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, a: i64) void {
        C.QLayoutItem_SetAlignment(@ptrCast(self), @intCast(a));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#controlTypes)
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn ControlTypes(self: ?*anyopaque) i64 {
        return C.QLayoutItem_ControlTypes(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn () callconv(.c) i64 ```
    pub fn OnControlTypes(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QLayoutItem_OnControlTypes(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QBaseControlTypes(self: ?*anyopaque) i64 {
        return C.QLayoutItem_QBaseControlTypes(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#operator=)
    ///
    /// ``` self: ?*C.QLayoutItem, param1: ?*C.QLayoutItem ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QLayoutItem_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QLayoutItem, slot: fn (?*C.QLayoutItem, ?*C.QLayoutItem) callconv(.c) void ```
    pub fn OnOperatorAssign(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QLayoutItem_OnOperatorAssign(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QLayoutItem, param1: ?*C.QLayoutItem ```
    pub fn QBaseOperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QLayoutItem_QBaseOperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLayoutItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLayoutItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qspaceritem.html
pub const qspaceritem = struct {
    /// New constructs a new QSpacerItem object.
    ///
    /// ``` w: i32, h: i32 ```
    pub fn New(w: i32, h: i32) ?*C.QSpacerItem {
        return C.QSpacerItem_new(@intCast(w), @intCast(h));
    }

    /// New2 constructs a new QSpacerItem object.
    ///
    /// ``` param1: ?*C.QSpacerItem ```
    pub fn New2(param1: ?*anyopaque) ?*C.QSpacerItem {
        return C.QSpacerItem_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QSpacerItem object.
    ///
    /// ``` w: i32, h: i32, hData: qsizepolicy_enums.Policy ```
    pub fn New3(w: i32, h: i32, hData: i64) ?*C.QSpacerItem {
        return C.QSpacerItem_new3(@intCast(w), @intCast(h), @intCast(hData));
    }

    /// New4 constructs a new QSpacerItem object.
    ///
    /// ``` w: i32, h: i32, hData: qsizepolicy_enums.Policy, vData: qsizepolicy_enums.Policy ```
    pub fn New4(w: i32, h: i32, hData: i64, vData: i64) ?*C.QSpacerItem {
        return C.QSpacerItem_new4(@intCast(w), @intCast(h), @intCast(hData), @intCast(vData));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#changeSize)
    ///
    /// ``` self: ?*C.QSpacerItem, w: i32, h: i32 ```
    pub fn ChangeSize(self: ?*anyopaque, w: i32, h: i32) void {
        C.QSpacerItem_ChangeSize(@ptrCast(self), @intCast(w), @intCast(h));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#sizeHint)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn SizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_SizeHint(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnSizeHint(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QSpacerItem_OnSizeHint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseSizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_QBaseSizeHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#minimumSize)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn MinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_MinimumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMinimumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QSpacerItem_OnMinimumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseMinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_QBaseMinimumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#maximumSize)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn MaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_MaximumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMaximumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QSpacerItem_OnMaximumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseMaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QSpacerItem_QBaseMaximumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#expandingDirections)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn ExpandingDirections(self: ?*anyopaque) i64 {
        return C.QSpacerItem_ExpandingDirections(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) i64 ```
    pub fn OnExpandingDirections(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QSpacerItem_OnExpandingDirections(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseExpandingDirections(self: ?*anyopaque) i64 {
        return C.QSpacerItem_QBaseExpandingDirections(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#isEmpty)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QSpacerItem_IsEmpty(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) bool ```
    pub fn OnIsEmpty(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QSpacerItem_OnIsEmpty(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseIsEmpty(self: ?*anyopaque) bool {
        return C.QSpacerItem_QBaseIsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#setGeometry)
    ///
    /// ``` self: ?*C.QSpacerItem, geometry: ?*C.QRect ```
    pub fn SetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QSpacerItem_SetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn (?*C.QSpacerItem, ?*C.QRect) callconv(.c) void ```
    pub fn OnSetGeometry(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QSpacerItem_OnSetGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem, geometry: ?*C.QRect ```
    pub fn QBaseSetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QSpacerItem_QBaseSetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#geometry)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn Geometry(self: ?*anyopaque) ?*C.QRect {
        return C.QSpacerItem_Geometry(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QRect ```
    pub fn OnGeometry(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QRect) void {
        C.QSpacerItem_OnGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseGeometry(self: ?*anyopaque) ?*C.QRect {
        return C.QSpacerItem_QBaseGeometry(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#spacerItem)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn SpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QSpacerItem_SpacerItem(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QSpacerItem ```
    pub fn OnSpacerItem(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSpacerItem) void {
        C.QSpacerItem_OnSpacerItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseSpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QSpacerItem_QBaseSpacerItem(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#sizePolicy)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn SizePolicy(self: ?*anyopaque) ?*C.QSizePolicy {
        return C.QSpacerItem_SizePolicy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#changeSize)
    ///
    /// ``` self: ?*C.QSpacerItem, w: i32, h: i32, hData: qsizepolicy_enums.Policy ```
    pub fn ChangeSize3(self: ?*anyopaque, w: i32, h: i32, hData: i64) void {
        C.QSpacerItem_ChangeSize3(@ptrCast(self), @intCast(w), @intCast(h), @intCast(hData));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qspaceritem.html#changeSize)
    ///
    /// ``` self: ?*C.QSpacerItem, w: i32, h: i32, hData: qsizepolicy_enums.Policy, vData: qsizepolicy_enums.Policy ```
    pub fn ChangeSize4(self: ?*anyopaque, w: i32, h: i32, hData: i64, vData: i64) void {
        C.QSpacerItem_ChangeSize4(@ptrCast(self), @intCast(w), @intCast(h), @intCast(hData), @intCast(vData));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#alignment)
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QLayoutItem_Alignment(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#setAlignment)
    ///
    /// ``` self: ?*C.QSpacerItem, a: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, a: i64) void {
        C.QLayoutItem_SetAlignment(@ptrCast(self), @intCast(a));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#hasHeightForWidth)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn HasHeightForWidth(self: ?*anyopaque) bool {
        return C.QSpacerItem_HasHeightForWidth(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseHasHeightForWidth(self: ?*anyopaque) bool {
        return C.QSpacerItem_QBaseHasHeightForWidth(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) bool ```
    pub fn OnHasHeightForWidth(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QSpacerItem_OnHasHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#heightForWidth)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, param1: i32 ```
    pub fn HeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QSpacerItem_HeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, param1: i32 ```
    pub fn QBaseHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QSpacerItem_QBaseHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn (?*C.QSpacerItem, i32) callconv(.c) i32 ```
    pub fn OnHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QSpacerItem_OnHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#minimumHeightForWidth)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, param1: i32 ```
    pub fn MinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QSpacerItem_MinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, param1: i32 ```
    pub fn QBaseMinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QSpacerItem_QBaseMinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn (?*C.QSpacerItem, i32) callconv(.c) i32 ```
    pub fn OnMinimumHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QSpacerItem_OnMinimumHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#invalidate)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QSpacerItem_Invalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseInvalidate(self: ?*anyopaque) void {
        C.QSpacerItem_QBaseInvalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) void ```
    pub fn OnInvalidate(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QSpacerItem_OnInvalidate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#widget)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QSpacerItem_Widget(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseWidget(self: ?*anyopaque) ?*C.QWidget {
        return C.QSpacerItem_QBaseWidget(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QWidget ```
    pub fn OnWidget(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWidget) void {
        C.QSpacerItem_OnWidget(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#layout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn Layout(self: ?*anyopaque) ?*C.QLayout {
        return C.QSpacerItem_Layout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseLayout(self: ?*anyopaque) ?*C.QLayout {
        return C.QSpacerItem_QBaseLayout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) ?*C.QLayout ```
    pub fn OnLayout(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QLayout) void {
        C.QSpacerItem_OnLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#controlTypes)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn ControlTypes(self: ?*anyopaque) i64 {
        return C.QSpacerItem_ControlTypes(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QBaseControlTypes(self: ?*anyopaque) i64 {
        return C.QSpacerItem_QBaseControlTypes(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QSpacerItem, slot: fn () callconv(.c) i64 ```
    pub fn OnControlTypes(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QSpacerItem_OnControlTypes(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSpacerItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSpacerItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwidgetitem.html
pub const qwidgetitem = struct {
    /// New constructs a new QWidgetItem object.
    ///
    /// ``` w: ?*C.QWidget ```
    pub fn New(w: ?*anyopaque) ?*C.QWidgetItem {
        return C.QWidgetItem_new(@ptrCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#sizeHint)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn SizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_SizeHint(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnSizeHint(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItem_OnSizeHint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseSizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_QBaseSizeHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#minimumSize)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn MinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_MinimumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMinimumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItem_OnMinimumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseMinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_QBaseMinimumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#maximumSize)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn MaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_MaximumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMaximumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItem_OnMaximumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseMaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItem_QBaseMaximumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#expandingDirections)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn ExpandingDirections(self: ?*anyopaque) i64 {
        return C.QWidgetItem_ExpandingDirections(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) i64 ```
    pub fn OnExpandingDirections(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QWidgetItem_OnExpandingDirections(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseExpandingDirections(self: ?*anyopaque) i64 {
        return C.QWidgetItem_QBaseExpandingDirections(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#isEmpty)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QWidgetItem_IsEmpty(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) bool ```
    pub fn OnIsEmpty(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWidgetItem_OnIsEmpty(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseIsEmpty(self: ?*anyopaque) bool {
        return C.QWidgetItem_QBaseIsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#setGeometry)
    ///
    /// ``` self: ?*C.QWidgetItem, geometry: ?*C.QRect ```
    pub fn SetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QWidgetItem_SetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn (?*C.QWidgetItem, ?*C.QRect) callconv(.c) void ```
    pub fn OnSetGeometry(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QWidgetItem_OnSetGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem, geometry: ?*C.QRect ```
    pub fn QBaseSetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QWidgetItem_QBaseSetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#geometry)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn Geometry(self: ?*anyopaque) ?*C.QRect {
        return C.QWidgetItem_Geometry(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QRect ```
    pub fn OnGeometry(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QRect) void {
        C.QWidgetItem_OnGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseGeometry(self: ?*anyopaque) ?*C.QRect {
        return C.QWidgetItem_QBaseGeometry(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#widget)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QWidgetItem_Widget(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QWidget ```
    pub fn OnWidget(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWidget) void {
        C.QWidgetItem_OnWidget(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseWidget(self: ?*anyopaque) ?*C.QWidget {
        return C.QWidgetItem_QBaseWidget(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#hasHeightForWidth)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn HasHeightForWidth(self: ?*anyopaque) bool {
        return C.QWidgetItem_HasHeightForWidth(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) bool ```
    pub fn OnHasHeightForWidth(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWidgetItem_OnHasHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseHasHeightForWidth(self: ?*anyopaque) bool {
        return C.QWidgetItem_QBaseHasHeightForWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#heightForWidth)
    ///
    /// ``` self: ?*C.QWidgetItem, param1: i32 ```
    pub fn HeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItem_HeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn (?*C.QWidgetItem, i32) callconv(.c) i32 ```
    pub fn OnHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QWidgetItem_OnHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem, param1: i32 ```
    pub fn QBaseHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItem_QBaseHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#minimumHeightForWidth)
    ///
    /// ``` self: ?*C.QWidgetItem, param1: i32 ```
    pub fn MinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItem_MinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn (?*C.QWidgetItem, i32) callconv(.c) i32 ```
    pub fn OnMinimumHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QWidgetItem_OnMinimumHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem, param1: i32 ```
    pub fn QBaseMinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItem_QBaseMinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#controlTypes)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn ControlTypes(self: ?*anyopaque) i64 {
        return C.QWidgetItem_ControlTypes(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) i64 ```
    pub fn OnControlTypes(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QWidgetItem_OnControlTypes(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseControlTypes(self: ?*anyopaque) i64 {
        return C.QWidgetItem_QBaseControlTypes(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#alignment)
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QLayoutItem_Alignment(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#setAlignment)
    ///
    /// ``` self: ?*C.QWidgetItem, a: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, a: i64) void {
        C.QLayoutItem_SetAlignment(@ptrCast(self), @intCast(a));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#invalidate)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QWidgetItem_Invalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseInvalidate(self: ?*anyopaque) void {
        C.QWidgetItem_QBaseInvalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) void ```
    pub fn OnInvalidate(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QWidgetItem_OnInvalidate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#layout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn Layout(self: ?*anyopaque) ?*C.QLayout {
        return C.QWidgetItem_Layout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseLayout(self: ?*anyopaque) ?*C.QLayout {
        return C.QWidgetItem_QBaseLayout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QLayout ```
    pub fn OnLayout(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QLayout) void {
        C.QWidgetItem_OnLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#spacerItem)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn SpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QWidgetItem_SpacerItem(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QBaseSpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QWidgetItem_QBaseSpacerItem(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItem, slot: fn () callconv(.c) ?*C.QSpacerItem ```
    pub fn OnSpacerItem(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSpacerItem) void {
        C.QWidgetItem_OnSpacerItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWidgetItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWidgetItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwidgetitemv2.html
pub const qwidgetitemv2 = struct {
    /// New constructs a new QWidgetItemV2 object.
    ///
    /// ``` widget: ?*C.QWidget ```
    pub fn New(widget: ?*anyopaque) ?*C.QWidgetItemV2 {
        return C.QWidgetItemV2_new(@ptrCast(widget));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitemv2.html#sizeHint)
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn SizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_SizeHint(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnSizeHint(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItemV2_OnSizeHint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseSizeHint(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_QBaseSizeHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitemv2.html#minimumSize)
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn MinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_MinimumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMinimumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItemV2_OnMinimumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseMinimumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_QBaseMinimumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitemv2.html#maximumSize)
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn MaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_MaximumSize(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QSize ```
    pub fn OnMaximumSize(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSize) void {
        C.QWidgetItemV2_OnMaximumSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseMaximumSize(self: ?*anyopaque) ?*C.QSize {
        return C.QWidgetItemV2_QBaseMaximumSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitemv2.html#heightForWidth)
    ///
    /// ``` self: ?*C.QWidgetItemV2, width: i32 ```
    pub fn HeightForWidth(self: ?*anyopaque, width: i32) i32 {
        return C.QWidgetItemV2_HeightForWidth(@ptrCast(self), @intCast(width));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn (?*C.QWidgetItemV2, i32) callconv(.c) i32 ```
    pub fn OnHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QWidgetItemV2_OnHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWidgetItemV2, width: i32 ```
    pub fn QBaseHeightForWidth(self: ?*anyopaque, width: i32) i32 {
        return C.QWidgetItemV2_QBaseHeightForWidth(@ptrCast(self), @intCast(width));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#alignment)
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QLayoutItem_Alignment(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#setAlignment)
    ///
    /// ``` self: ?*C.QWidgetItemV2, a: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, a: i64) void {
        C.QLayoutItem_SetAlignment(@ptrCast(self), @intCast(a));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#expandingDirections)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn ExpandingDirections(self: ?*anyopaque) i64 {
        return C.QWidgetItemV2_ExpandingDirections(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseExpandingDirections(self: ?*anyopaque) i64 {
        return C.QWidgetItemV2_QBaseExpandingDirections(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) i64 ```
    pub fn OnExpandingDirections(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QWidgetItemV2_OnExpandingDirections(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#isEmpty)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QWidgetItemV2_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseIsEmpty(self: ?*anyopaque) bool {
        return C.QWidgetItemV2_QBaseIsEmpty(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) bool ```
    pub fn OnIsEmpty(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWidgetItemV2_OnIsEmpty(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#setGeometry)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, geometry: ?*C.QRect ```
    pub fn SetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QWidgetItemV2_SetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, geometry: ?*C.QRect ```
    pub fn QBaseSetGeometry(self: ?*anyopaque, geometry: ?*anyopaque) void {
        C.QWidgetItemV2_QBaseSetGeometry(@ptrCast(self), @ptrCast(geometry));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn (?*C.QWidgetItemV2, ?*C.QRect) callconv(.c) void ```
    pub fn OnSetGeometry(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QWidgetItemV2_OnSetGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#geometry)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn Geometry(self: ?*anyopaque) ?*C.QRect {
        return C.QWidgetItemV2_Geometry(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseGeometry(self: ?*anyopaque) ?*C.QRect {
        return C.QWidgetItemV2_QBaseGeometry(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QRect ```
    pub fn OnGeometry(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QRect) void {
        C.QWidgetItemV2_OnGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#widget)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QWidgetItemV2_Widget(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseWidget(self: ?*anyopaque) ?*C.QWidget {
        return C.QWidgetItemV2_QBaseWidget(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QWidget ```
    pub fn OnWidget(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWidget) void {
        C.QWidgetItemV2_OnWidget(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#hasHeightForWidth)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn HasHeightForWidth(self: ?*anyopaque) bool {
        return C.QWidgetItemV2_HasHeightForWidth(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseHasHeightForWidth(self: ?*anyopaque) bool {
        return C.QWidgetItemV2_QBaseHasHeightForWidth(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) bool ```
    pub fn OnHasHeightForWidth(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWidgetItemV2_OnHasHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#minimumHeightForWidth)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, param1: i32 ```
    pub fn MinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItemV2_MinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, param1: i32 ```
    pub fn QBaseMinimumHeightForWidth(self: ?*anyopaque, param1: i32) i32 {
        return C.QWidgetItemV2_QBaseMinimumHeightForWidth(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn (?*C.QWidgetItemV2, i32) callconv(.c) i32 ```
    pub fn OnMinimumHeightForWidth(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) i32) void {
        C.QWidgetItemV2_OnMinimumHeightForWidth(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QWidgetItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qwidgetitem.html#controlTypes)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn ControlTypes(self: ?*anyopaque) i64 {
        return C.QWidgetItemV2_ControlTypes(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseControlTypes(self: ?*anyopaque) i64 {
        return C.QWidgetItemV2_QBaseControlTypes(@ptrCast(self));
    }

    /// Inherited from QWidgetItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) i64 ```
    pub fn OnControlTypes(self: ?*anyopaque, slot: fn () callconv(.c) i64) void {
        C.QWidgetItemV2_OnControlTypes(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#invalidate)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QWidgetItemV2_Invalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseInvalidate(self: ?*anyopaque) void {
        C.QWidgetItemV2_QBaseInvalidate(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) void ```
    pub fn OnInvalidate(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QWidgetItemV2_OnInvalidate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#layout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn Layout(self: ?*anyopaque) ?*C.QLayout {
        return C.QWidgetItemV2_Layout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseLayout(self: ?*anyopaque) ?*C.QLayout {
        return C.QWidgetItemV2_QBaseLayout(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QLayout ```
    pub fn OnLayout(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QLayout) void {
        C.QWidgetItemV2_OnLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qlayoutitem.html#spacerItem)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn SpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QWidgetItemV2_SpacerItem(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QBaseSpacerItem(self: ?*anyopaque) ?*C.QSpacerItem {
        return C.QWidgetItemV2_QBaseSpacerItem(@ptrCast(self));
    }

    /// Inherited from QLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWidgetItemV2, slot: fn () callconv(.c) ?*C.QSpacerItem ```
    pub fn OnSpacerItem(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QSpacerItem) void {
        C.QWidgetItemV2_OnSpacerItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWidgetItemV2 ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWidgetItemV2_Delete(@ptrCast(self));
    }
};
