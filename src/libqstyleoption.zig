const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qstyleoption.html
pub const qstyleoption = struct {
    /// New constructs a new QStyleOption object.
    ///
    ///
    pub fn New() ?*C.QStyleOption {
        return C.QStyleOption_new();
    }

    /// New2 constructs a new QStyleOption object.
    ///
    /// ``` other: ?*C.QStyleOption ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOption {
        return C.QStyleOption_new2(@ptrCast(other));
    }

    /// New3 constructs a new QStyleOption object.
    ///
    /// ``` version: i32 ```
    pub fn New3(version: i32) ?*C.QStyleOption {
        return C.QStyleOption_new3(@intCast(version));
    }

    /// New4 constructs a new QStyleOption object.
    ///
    /// ``` version: i32, typeVal: i32 ```
    pub fn New4(version: i32, typeVal: i32) ?*C.QStyleOption {
        return C.QStyleOption_new4(@intCast(version), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOption, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOption, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOption ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOption_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionfocusrect.html
pub const qstyleoptionfocusrect = struct {
    /// New constructs a new QStyleOptionFocusRect object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionFocusRect {
        return C.QStyleOptionFocusRect_new();
    }

    /// New2 constructs a new QStyleOptionFocusRect object.
    ///
    /// ``` other: ?*C.QStyleOptionFocusRect ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionFocusRect {
        return C.QStyleOptionFocusRect_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionFocusRect, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionFocusRect, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionFocusRect ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionFocusRect_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionframe.html
pub const qstyleoptionframe = struct {
    /// New constructs a new QStyleOptionFrame object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionFrame {
        return C.QStyleOptionFrame_new();
    }

    /// New2 constructs a new QStyleOptionFrame object.
    ///
    /// ``` other: ?*C.QStyleOptionFrame ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionFrame {
        return C.QStyleOptionFrame_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionFrame, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionFrame, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionFrame ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionFrame_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontabwidgetframe.html
pub const qstyleoptiontabwidgetframe = struct {
    /// New constructs a new QStyleOptionTabWidgetFrame object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionTabWidgetFrame {
        return C.QStyleOptionTabWidgetFrame_new();
    }

    /// New2 constructs a new QStyleOptionTabWidgetFrame object.
    ///
    /// ``` other: ?*C.QStyleOptionTabWidgetFrame ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionTabWidgetFrame {
        return C.QStyleOptionTabWidgetFrame_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionTabWidgetFrame, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionTabWidgetFrame, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionTabWidgetFrame ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionTabWidgetFrame_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontabbarbase.html
pub const qstyleoptiontabbarbase = struct {
    /// New constructs a new QStyleOptionTabBarBase object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionTabBarBase {
        return C.QStyleOptionTabBarBase_new();
    }

    /// New2 constructs a new QStyleOptionTabBarBase object.
    ///
    /// ``` other: ?*C.QStyleOptionTabBarBase ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionTabBarBase {
        return C.QStyleOptionTabBarBase_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionTabBarBase, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionTabBarBase, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionTabBarBase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionTabBarBase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionheader.html
pub const qstyleoptionheader = struct {
    /// New constructs a new QStyleOptionHeader object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionHeader {
        return C.QStyleOptionHeader_new();
    }

    /// New2 constructs a new QStyleOptionHeader object.
    ///
    /// ``` other: ?*C.QStyleOptionHeader ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionHeader {
        return C.QStyleOptionHeader_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionHeader, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionHeader, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionHeader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionHeader_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionheaderv2.html
pub const qstyleoptionheaderv2 = struct {
    /// New constructs a new QStyleOptionHeaderV2 object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionHeaderV2 {
        return C.QStyleOptionHeaderV2_new();
    }

    /// New2 constructs a new QStyleOptionHeaderV2 object.
    ///
    /// ``` other: ?*C.QStyleOptionHeaderV2 ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionHeaderV2 {
        return C.QStyleOptionHeaderV2_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionHeaderV2, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionHeaderV2, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionHeaderV2 ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionHeaderV2_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionbutton.html
pub const qstyleoptionbutton = struct {
    /// New constructs a new QStyleOptionButton object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionButton {
        return C.QStyleOptionButton_new();
    }

    /// New2 constructs a new QStyleOptionButton object.
    ///
    /// ``` other: ?*C.QStyleOptionButton ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionButton {
        return C.QStyleOptionButton_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionButton, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionButton, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionButton ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionButton_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontab.html
pub const qstyleoptiontab = struct {
    /// New constructs a new QStyleOptionTab object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionTab {
        return C.QStyleOptionTab_new();
    }

    /// New2 constructs a new QStyleOptionTab object.
    ///
    /// ``` other: ?*C.QStyleOptionTab ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionTab {
        return C.QStyleOptionTab_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionTab, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionTab, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionTab ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionTab_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontoolbar.html
pub const qstyleoptiontoolbar = struct {
    /// New constructs a new QStyleOptionToolBar object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionToolBar {
        return C.QStyleOptionToolBar_new();
    }

    /// New2 constructs a new QStyleOptionToolBar object.
    ///
    /// ``` other: ?*C.QStyleOptionToolBar ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionToolBar {
        return C.QStyleOptionToolBar_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionToolBar, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionToolBar, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionToolBar ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionToolBar_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionprogressbar.html
pub const qstyleoptionprogressbar = struct {
    /// New constructs a new QStyleOptionProgressBar object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionProgressBar {
        return C.QStyleOptionProgressBar_new();
    }

    /// New2 constructs a new QStyleOptionProgressBar object.
    ///
    /// ``` other: ?*C.QStyleOptionProgressBar ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionProgressBar {
        return C.QStyleOptionProgressBar_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionProgressBar, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionProgressBar, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionProgressBar ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionProgressBar_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionmenuitem.html
pub const qstyleoptionmenuitem = struct {
    /// New constructs a new QStyleOptionMenuItem object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionMenuItem {
        return C.QStyleOptionMenuItem_new();
    }

    /// New2 constructs a new QStyleOptionMenuItem object.
    ///
    /// ``` other: ?*C.QStyleOptionMenuItem ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionMenuItem {
        return C.QStyleOptionMenuItem_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionMenuItem, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionMenuItem, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionMenuItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionMenuItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiondockwidget.html
pub const qstyleoptiondockwidget = struct {
    /// New constructs a new QStyleOptionDockWidget object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionDockWidget {
        return C.QStyleOptionDockWidget_new();
    }

    /// New2 constructs a new QStyleOptionDockWidget object.
    ///
    /// ``` other: ?*C.QStyleOptionDockWidget ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionDockWidget {
        return C.QStyleOptionDockWidget_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionDockWidget, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionDockWidget, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionDockWidget ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionDockWidget_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionviewitem.html
pub const qstyleoptionviewitem = struct {
    /// New constructs a new QStyleOptionViewItem object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionViewItem {
        return C.QStyleOptionViewItem_new();
    }

    /// New2 constructs a new QStyleOptionViewItem object.
    ///
    /// ``` other: ?*C.QStyleOptionViewItem ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionViewItem {
        return C.QStyleOptionViewItem_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionViewItem, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionViewItem, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionViewItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionViewItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontoolbox.html
pub const qstyleoptiontoolbox = struct {
    /// New constructs a new QStyleOptionToolBox object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionToolBox {
        return C.QStyleOptionToolBox_new();
    }

    /// New2 constructs a new QStyleOptionToolBox object.
    ///
    /// ``` other: ?*C.QStyleOptionToolBox ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionToolBox {
        return C.QStyleOptionToolBox_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionToolBox, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionToolBox, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionToolBox ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionToolBox_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionrubberband.html
pub const qstyleoptionrubberband = struct {
    /// New constructs a new QStyleOptionRubberBand object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionRubberBand {
        return C.QStyleOptionRubberBand_new();
    }

    /// New2 constructs a new QStyleOptionRubberBand object.
    ///
    /// ``` other: ?*C.QStyleOptionRubberBand ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionRubberBand {
        return C.QStyleOptionRubberBand_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionRubberBand, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionRubberBand, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionRubberBand ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionRubberBand_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptioncomplex.html
pub const qstyleoptioncomplex = struct {
    /// New constructs a new QStyleOptionComplex object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionComplex {
        return C.QStyleOptionComplex_new();
    }

    /// New2 constructs a new QStyleOptionComplex object.
    ///
    /// ``` other: ?*C.QStyleOptionComplex ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionComplex {
        return C.QStyleOptionComplex_new2(@ptrCast(other));
    }

    /// New3 constructs a new QStyleOptionComplex object.
    ///
    /// ``` version: i32 ```
    pub fn New3(version: i32) ?*C.QStyleOptionComplex {
        return C.QStyleOptionComplex_new3(@intCast(version));
    }

    /// New4 constructs a new QStyleOptionComplex object.
    ///
    /// ``` version: i32, typeVal: i32 ```
    pub fn New4(version: i32, typeVal: i32) ?*C.QStyleOptionComplex {
        return C.QStyleOptionComplex_new4(@intCast(version), @intCast(typeVal));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionComplex, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionComplex, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionComplex ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionComplex_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionslider.html
pub const qstyleoptionslider = struct {
    /// New constructs a new QStyleOptionSlider object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionSlider {
        return C.QStyleOptionSlider_new();
    }

    /// New2 constructs a new QStyleOptionSlider object.
    ///
    /// ``` other: ?*C.QStyleOptionSlider ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionSlider {
        return C.QStyleOptionSlider_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionSlider, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionSlider, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionSlider ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionSlider_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionspinbox.html
pub const qstyleoptionspinbox = struct {
    /// New constructs a new QStyleOptionSpinBox object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionSpinBox {
        return C.QStyleOptionSpinBox_new();
    }

    /// New2 constructs a new QStyleOptionSpinBox object.
    ///
    /// ``` other: ?*C.QStyleOptionSpinBox ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionSpinBox {
        return C.QStyleOptionSpinBox_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionSpinBox, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionSpinBox, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionSpinBox ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionSpinBox_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontoolbutton.html
pub const qstyleoptiontoolbutton = struct {
    /// New constructs a new QStyleOptionToolButton object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionToolButton {
        return C.QStyleOptionToolButton_new();
    }

    /// New2 constructs a new QStyleOptionToolButton object.
    ///
    /// ``` other: ?*C.QStyleOptionToolButton ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionToolButton {
        return C.QStyleOptionToolButton_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionToolButton, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionToolButton, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionToolButton ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionToolButton_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptioncombobox.html
pub const qstyleoptioncombobox = struct {
    /// New constructs a new QStyleOptionComboBox object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionComboBox {
        return C.QStyleOptionComboBox_new();
    }

    /// New2 constructs a new QStyleOptionComboBox object.
    ///
    /// ``` other: ?*C.QStyleOptionComboBox ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionComboBox {
        return C.QStyleOptionComboBox_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionComboBox, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionComboBox, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionComboBox ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionComboBox_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiontitlebar.html
pub const qstyleoptiontitlebar = struct {
    /// New constructs a new QStyleOptionTitleBar object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionTitleBar {
        return C.QStyleOptionTitleBar_new();
    }

    /// New2 constructs a new QStyleOptionTitleBar object.
    ///
    /// ``` other: ?*C.QStyleOptionTitleBar ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionTitleBar {
        return C.QStyleOptionTitleBar_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionTitleBar, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionTitleBar, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionTitleBar ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionTitleBar_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiongroupbox.html
pub const qstyleoptiongroupbox = struct {
    /// New constructs a new QStyleOptionGroupBox object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionGroupBox {
        return C.QStyleOptionGroupBox_new();
    }

    /// New2 constructs a new QStyleOptionGroupBox object.
    ///
    /// ``` other: ?*C.QStyleOptionGroupBox ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionGroupBox {
        return C.QStyleOptionGroupBox_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionGroupBox, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionGroupBox, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionGroupBox ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionGroupBox_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptionsizegrip.html
pub const qstyleoptionsizegrip = struct {
    /// New constructs a new QStyleOptionSizeGrip object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionSizeGrip {
        return C.QStyleOptionSizeGrip_new();
    }

    /// New2 constructs a new QStyleOptionSizeGrip object.
    ///
    /// ``` other: ?*C.QStyleOptionSizeGrip ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionSizeGrip {
        return C.QStyleOptionSizeGrip_new2(@ptrCast(other));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionSizeGrip, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionSizeGrip, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionSizeGrip ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionSizeGrip_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoptiongraphicsitem.html
pub const qstyleoptiongraphicsitem = struct {
    /// New constructs a new QStyleOptionGraphicsItem object.
    ///
    ///
    pub fn New() ?*C.QStyleOptionGraphicsItem {
        return C.QStyleOptionGraphicsItem_new();
    }

    /// New2 constructs a new QStyleOptionGraphicsItem object.
    ///
    /// ``` other: ?*C.QStyleOptionGraphicsItem ```
    pub fn New2(other: ?*anyopaque) ?*C.QStyleOptionGraphicsItem {
        return C.QStyleOptionGraphicsItem_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoptiongraphicsitem.html#levelOfDetailFromTransform)
    ///
    /// ``` worldTransform: ?*C.QTransform ```
    pub fn LevelOfDetailFromTransform(worldTransform: ?*anyopaque) f64 {
        return C.QStyleOptionGraphicsItem_LevelOfDetailFromTransform(@ptrCast(worldTransform));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#initFrom)
    ///
    /// ``` self: ?*C.QStyleOptionGraphicsItem, w: ?*C.QWidget ```
    pub fn InitFrom(self: ?*anyopaque, w: ?*anyopaque) void {
        C.QStyleOption_InitFrom(@ptrCast(self), @ptrCast(w));
    }

    /// Inherited from QStyleOption
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstyleoption.html#operator=)
    ///
    /// ``` self: ?*C.QStyleOptionGraphicsItem, other: ?*C.QStyleOption ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStyleOption_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleOptionGraphicsItem ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleOptionGraphicsItem_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstylehintreturn.html
pub const qstylehintreturn = struct {
    /// New constructs a new QStyleHintReturn object.
    ///
    ///
    pub fn New() ?*C.QStyleHintReturn {
        return C.QStyleHintReturn_new();
    }

    /// New2 constructs a new QStyleHintReturn object.
    ///
    /// ``` param1: ?*C.QStyleHintReturn ```
    pub fn New2(param1: ?*anyopaque) ?*C.QStyleHintReturn {
        return C.QStyleHintReturn_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QStyleHintReturn object.
    ///
    /// ``` version: i32 ```
    pub fn New3(version: i32) ?*C.QStyleHintReturn {
        return C.QStyleHintReturn_new3(@intCast(version));
    }

    /// New4 constructs a new QStyleHintReturn object.
    ///
    /// ``` version: i32, typeVal: i32 ```
    pub fn New4(version: i32, typeVal: i32) ?*C.QStyleHintReturn {
        return C.QStyleHintReturn_new4(@intCast(version), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehintreturn.html#operator=)
    ///
    /// ``` self: ?*C.QStyleHintReturn, param1: ?*C.QStyleHintReturn ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QStyleHintReturn_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleHintReturn ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleHintReturn_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstylehintreturnmask.html
pub const qstylehintreturnmask = struct {
    /// New constructs a new QStyleHintReturnMask object.
    ///
    ///
    pub fn New() ?*C.QStyleHintReturnMask {
        return C.QStyleHintReturnMask_new();
    }

    /// New2 constructs a new QStyleHintReturnMask object.
    ///
    /// ``` param1: ?*C.QStyleHintReturnMask ```
    pub fn New2(param1: ?*anyopaque) ?*C.QStyleHintReturnMask {
        return C.QStyleHintReturnMask_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehintreturnmask.html#operator=)
    ///
    /// ``` self: ?*C.QStyleHintReturnMask, param1: ?*C.QStyleHintReturnMask ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QStyleHintReturnMask_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleHintReturnMask ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleHintReturnMask_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstylehintreturnvariant.html
pub const qstylehintreturnvariant = struct {
    /// New constructs a new QStyleHintReturnVariant object.
    ///
    ///
    pub fn New() ?*C.QStyleHintReturnVariant {
        return C.QStyleHintReturnVariant_new();
    }

    /// New2 constructs a new QStyleHintReturnVariant object.
    ///
    /// ``` param1: ?*C.QStyleHintReturnVariant ```
    pub fn New2(param1: ?*anyopaque) ?*C.QStyleHintReturnVariant {
        return C.QStyleHintReturnVariant_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstylehintreturnvariant.html#operator=)
    ///
    /// ``` self: ?*C.QStyleHintReturnVariant, param1: ?*C.QStyleHintReturnVariant ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QStyleHintReturnVariant_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStyleHintReturnVariant ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStyleHintReturnVariant_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstyleoption.html#types
pub const enums = struct {
    pub const QStyleOption__OptionType = enum {
        pub const SO_Default: i32 = 0;
        pub const SO_FocusRect: i32 = 1;
        pub const SO_Button: i32 = 2;
        pub const SO_Tab: i32 = 3;
        pub const SO_MenuItem: i32 = 4;
        pub const SO_Frame: i32 = 5;
        pub const SO_ProgressBar: i32 = 6;
        pub const SO_ToolBox: i32 = 7;
        pub const SO_Header: i32 = 8;
        pub const SO_DockWidget: i32 = 9;
        pub const SO_ViewItem: i32 = 10;
        pub const SO_TabWidgetFrame: i32 = 11;
        pub const SO_TabBarBase: i32 = 12;
        pub const SO_RubberBand: i32 = 13;
        pub const SO_ToolBar: i32 = 14;
        pub const SO_GraphicsItem: i32 = 15;
        pub const SO_Complex: i32 = 983040;
        pub const SO_Slider: i32 = 983041;
        pub const SO_SpinBox: i32 = 983042;
        pub const SO_ToolButton: i32 = 983043;
        pub const SO_ComboBox: i32 = 983044;
        pub const SO_TitleBar: i32 = 983045;
        pub const SO_GroupBox: i32 = 983046;
        pub const SO_SizeGrip: i32 = 983047;
        pub const SO_CustomBase: i32 = 3840;
        pub const SO_ComplexCustomBase: i32 = 251658240;
    };

    pub const QStyleOption__StyleOptionType = enum {
        pub const Type: i32 = 0;
    };

    pub const QStyleOption__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionFocusRect__StyleOptionType = enum {
        pub const Type: i32 = 1;
    };

    pub const QStyleOptionFocusRect__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionFrame__StyleOptionType = enum {
        pub const Type: i32 = 5;
    };

    pub const QStyleOptionFrame__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionFrame__FrameFeature = enum {
        pub const None: i32 = 0;
        pub const Flat: i32 = 1;
        pub const Rounded: i32 = 2;
    };

    pub const QStyleOptionTabWidgetFrame__StyleOptionType = enum {
        pub const Type: i32 = 11;
    };

    pub const QStyleOptionTabWidgetFrame__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionTabBarBase__StyleOptionType = enum {
        pub const Type: i32 = 12;
    };

    pub const QStyleOptionTabBarBase__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionHeader__StyleOptionType = enum {
        pub const Type: i32 = 8;
    };

    pub const QStyleOptionHeader__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionHeader__SectionPosition = enum {
        pub const Beginning: i32 = 0;
        pub const Middle: i32 = 1;
        pub const End: i32 = 2;
        pub const OnlyOneSection: i32 = 3;
    };

    pub const QStyleOptionHeader__SelectedPosition = enum {
        pub const NotAdjacent: i32 = 0;
        pub const NextIsSelected: i32 = 1;
        pub const PreviousIsSelected: i32 = 2;
        pub const NextAndPreviousAreSelected: i32 = 3;
    };

    pub const QStyleOptionHeader__SortIndicator = enum {
        pub const None: i32 = 0;
        pub const SortUp: i32 = 1;
        pub const SortDown: i32 = 2;
    };

    pub const QStyleOptionHeaderV2__StyleOptionType = enum {
        pub const Type: i32 = 8;
    };

    pub const QStyleOptionHeaderV2__StyleOptionVersion = enum {
        pub const Version: i32 = 2;
    };

    pub const QStyleOptionButton__StyleOptionType = enum {
        pub const Type: i32 = 2;
    };

    pub const QStyleOptionButton__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionButton__ButtonFeature = enum {
        pub const None: i32 = 0;
        pub const Flat: i32 = 1;
        pub const HasMenu: i32 = 2;
        pub const DefaultButton: i32 = 4;
        pub const AutoDefaultButton: i32 = 8;
        pub const CommandLinkButton: i32 = 16;
    };

    pub const QStyleOptionTab__StyleOptionType = enum {
        pub const Type: i32 = 3;
    };

    pub const QStyleOptionTab__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionTab__TabPosition = enum {
        pub const Beginning: i32 = 0;
        pub const Middle: i32 = 1;
        pub const End: i32 = 2;
        pub const OnlyOneTab: i32 = 3;
    };

    pub const QStyleOptionTab__SelectedPosition = enum {
        pub const NotAdjacent: i32 = 0;
        pub const NextIsSelected: i32 = 1;
        pub const PreviousIsSelected: i32 = 2;
    };

    pub const QStyleOptionTab__CornerWidget = enum {
        pub const NoCornerWidgets: i32 = 0;
        pub const LeftCornerWidget: i32 = 1;
        pub const RightCornerWidget: i32 = 2;
    };

    pub const QStyleOptionTab__TabFeature = enum {
        pub const None: i32 = 0;
        pub const HasFrame: i32 = 1;
    };

    pub const QStyleOptionToolBar__StyleOptionType = enum {
        pub const Type: i32 = 14;
    };

    pub const QStyleOptionToolBar__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionToolBar__ToolBarPosition = enum {
        pub const Beginning: i32 = 0;
        pub const Middle: i32 = 1;
        pub const End: i32 = 2;
        pub const OnlyOne: i32 = 3;
    };

    pub const QStyleOptionToolBar__ToolBarFeature = enum {
        pub const None: i32 = 0;
        pub const Movable: i32 = 1;
    };

    pub const QStyleOptionProgressBar__StyleOptionType = enum {
        pub const Type: i32 = 6;
    };

    pub const QStyleOptionProgressBar__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionMenuItem__StyleOptionType = enum {
        pub const Type: i32 = 4;
    };

    pub const QStyleOptionMenuItem__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionMenuItem__MenuItemType = enum {
        pub const Normal: i32 = 0;
        pub const DefaultItem: i32 = 1;
        pub const Separator: i32 = 2;
        pub const SubMenu: i32 = 3;
        pub const Scroller: i32 = 4;
        pub const TearOff: i32 = 5;
        pub const Margin: i32 = 6;
        pub const EmptyArea: i32 = 7;
    };

    pub const QStyleOptionMenuItem__CheckType = enum {
        pub const NotCheckable: i32 = 0;
        pub const Exclusive: i32 = 1;
        pub const NonExclusive: i32 = 2;
    };

    pub const QStyleOptionDockWidget__StyleOptionType = enum {
        pub const Type: i32 = 9;
    };

    pub const QStyleOptionDockWidget__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionViewItem__StyleOptionType = enum {
        pub const Type: i32 = 10;
    };

    pub const QStyleOptionViewItem__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionViewItem__Position = enum {
        pub const Left: i32 = 0;
        pub const Right: i32 = 1;
        pub const Top: i32 = 2;
        pub const Bottom: i32 = 3;
    };

    pub const QStyleOptionViewItem__ViewItemFeature = enum {
        pub const None: i32 = 0;
        pub const WrapText: i32 = 1;
        pub const Alternate: i32 = 2;
        pub const HasCheckIndicator: i32 = 4;
        pub const HasDisplay: i32 = 8;
        pub const HasDecoration: i32 = 16;
    };

    pub const QStyleOptionViewItem__ViewItemPosition = enum {
        pub const Invalid: i32 = 0;
        pub const Beginning: i32 = 1;
        pub const Middle: i32 = 2;
        pub const End: i32 = 3;
        pub const OnlyOne: i32 = 4;
    };

    pub const QStyleOptionToolBox__StyleOptionType = enum {
        pub const Type: i32 = 7;
    };

    pub const QStyleOptionToolBox__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionToolBox__TabPosition = enum {
        pub const Beginning: i32 = 0;
        pub const Middle: i32 = 1;
        pub const End: i32 = 2;
        pub const OnlyOneTab: i32 = 3;
    };

    pub const QStyleOptionToolBox__SelectedPosition = enum {
        pub const NotAdjacent: i32 = 0;
        pub const NextIsSelected: i32 = 1;
        pub const PreviousIsSelected: i32 = 2;
    };

    pub const QStyleOptionRubberBand__StyleOptionType = enum {
        pub const Type: i32 = 13;
    };

    pub const QStyleOptionRubberBand__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionComplex__StyleOptionType = enum {
        pub const Type: i32 = 983040;
    };

    pub const QStyleOptionComplex__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionSlider__StyleOptionType = enum {
        pub const Type: i32 = 983041;
    };

    pub const QStyleOptionSlider__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionSpinBox__StyleOptionType = enum {
        pub const Type: i32 = 983042;
    };

    pub const QStyleOptionSpinBox__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionToolButton__StyleOptionType = enum {
        pub const Type: i32 = 983043;
    };

    pub const QStyleOptionToolButton__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionToolButton__ToolButtonFeature = enum {
        pub const None: i32 = 0;
        pub const Arrow: i32 = 1;
        pub const Menu: i32 = 4;
        pub const MenuButtonPopup: i32 = 4;
        pub const PopupDelay: i32 = 8;
        pub const HasMenu: i32 = 16;
    };

    pub const QStyleOptionComboBox__StyleOptionType = enum {
        pub const Type: i32 = 983044;
    };

    pub const QStyleOptionComboBox__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionTitleBar__StyleOptionType = enum {
        pub const Type: i32 = 983045;
    };

    pub const QStyleOptionTitleBar__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionGroupBox__StyleOptionType = enum {
        pub const Type: i32 = 983046;
    };

    pub const QStyleOptionGroupBox__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionSizeGrip__StyleOptionType = enum {
        pub const Type: i32 = 983047;
    };

    pub const QStyleOptionSizeGrip__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleOptionGraphicsItem__StyleOptionType = enum {
        pub const Type: i32 = 15;
    };

    pub const QStyleOptionGraphicsItem__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleHintReturn__HintReturnType = enum {
        pub const SH_Default: i32 = 61440;
        pub const SH_Mask: i32 = 61441;
        pub const SH_Variant: i32 = 61442;
    };

    pub const QStyleHintReturn__StyleOptionType = enum {
        pub const Type: i32 = 61440;
    };

    pub const QStyleHintReturn__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleHintReturnMask__StyleOptionType = enum {
        pub const Type: i32 = 61441;
    };

    pub const QStyleHintReturnMask__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };

    pub const QStyleHintReturnVariant__StyleOptionType = enum {
        pub const Type: i32 = 61442;
    };

    pub const QStyleHintReturnVariant__StyleOptionVersion = enum {
        pub const Version: i32 = 1;
    };
};
