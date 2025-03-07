const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qsizepolicy_enums = @import("libqsizepolicy.zig").enums;

/// https://doc.qt.io/qt-6/qgraphicsgridlayout.html
pub const qgraphicsgridlayout = struct {
    /// New constructs a new QGraphicsGridLayout object.
    ///
    ///
    pub fn New() ?*C.QGraphicsGridLayout {
        return C.QGraphicsGridLayout_new();
    }

    /// New2 constructs a new QGraphicsGridLayout object.
    ///
    /// ``` parent: ?*C.QGraphicsLayoutItem ```
    pub fn New2(parent: ?*anyopaque) ?*C.QGraphicsGridLayout {
        return C.QGraphicsGridLayout_new2(@ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#addItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem, row: i32, column: i32, rowSpan: i32, columnSpan: i32 ```
    pub fn AddItem(self: ?*anyopaque, item: ?*anyopaque, row: i32, column: i32, rowSpan: i32, columnSpan: i32) void {
        C.QGraphicsGridLayout_AddItem(@ptrCast(self), @ptrCast(item), @intCast(row), @intCast(column), @intCast(rowSpan), @intCast(columnSpan));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#addItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem, row: i32, column: i32 ```
    pub fn AddItem2(self: ?*anyopaque, item: ?*anyopaque, row: i32, column: i32) void {
        C.QGraphicsGridLayout_AddItem2(@ptrCast(self), @ptrCast(item), @intCast(row), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setHorizontalSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, spacing: f64 ```
    pub fn SetHorizontalSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QGraphicsGridLayout_SetHorizontalSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#horizontalSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn HorizontalSpacing(self: ?*anyopaque) f64 {
        return C.QGraphicsGridLayout_HorizontalSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setVerticalSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, spacing: f64 ```
    pub fn SetVerticalSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QGraphicsGridLayout_SetVerticalSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#verticalSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn VerticalSpacing(self: ?*anyopaque) f64 {
        return C.QGraphicsGridLayout_VerticalSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, spacing: f64 ```
    pub fn SetSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QGraphicsGridLayout_SetSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, spacing: f64 ```
    pub fn SetRowSpacing(self: ?*anyopaque, row: i32, spacing: f64) void {
        C.QGraphicsGridLayout_SetRowSpacing(@ptrCast(self), @intCast(row), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowSpacing(self: ?*anyopaque, row: i32) f64 {
        return C.QGraphicsGridLayout_RowSpacing(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, spacing: f64 ```
    pub fn SetColumnSpacing(self: ?*anyopaque, column: i32, spacing: f64) void {
        C.QGraphicsGridLayout_SetColumnSpacing(@ptrCast(self), @intCast(column), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnSpacing)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnSpacing(self: ?*anyopaque, column: i32) f64 {
        return C.QGraphicsGridLayout_ColumnSpacing(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowStretchFactor)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, stretch: i32 ```
    pub fn SetRowStretchFactor(self: ?*anyopaque, row: i32, stretch: i32) void {
        C.QGraphicsGridLayout_SetRowStretchFactor(@ptrCast(self), @intCast(row), @intCast(stretch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowStretchFactor)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowStretchFactor(self: ?*anyopaque, row: i32) i32 {
        return C.QGraphicsGridLayout_RowStretchFactor(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnStretchFactor)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, stretch: i32 ```
    pub fn SetColumnStretchFactor(self: ?*anyopaque, column: i32, stretch: i32) void {
        C.QGraphicsGridLayout_SetColumnStretchFactor(@ptrCast(self), @intCast(column), @intCast(stretch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnStretchFactor)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnStretchFactor(self: ?*anyopaque, column: i32) i32 {
        return C.QGraphicsGridLayout_ColumnStretchFactor(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowMinimumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, height: f64 ```
    pub fn SetRowMinimumHeight(self: ?*anyopaque, row: i32, height: f64) void {
        C.QGraphicsGridLayout_SetRowMinimumHeight(@ptrCast(self), @intCast(row), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowMinimumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowMinimumHeight(self: ?*anyopaque, row: i32) f64 {
        return C.QGraphicsGridLayout_RowMinimumHeight(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowPreferredHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, height: f64 ```
    pub fn SetRowPreferredHeight(self: ?*anyopaque, row: i32, height: f64) void {
        C.QGraphicsGridLayout_SetRowPreferredHeight(@ptrCast(self), @intCast(row), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowPreferredHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowPreferredHeight(self: ?*anyopaque, row: i32) f64 {
        return C.QGraphicsGridLayout_RowPreferredHeight(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowMaximumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, height: f64 ```
    pub fn SetRowMaximumHeight(self: ?*anyopaque, row: i32, height: f64) void {
        C.QGraphicsGridLayout_SetRowMaximumHeight(@ptrCast(self), @intCast(row), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowMaximumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowMaximumHeight(self: ?*anyopaque, row: i32) f64 {
        return C.QGraphicsGridLayout_RowMaximumHeight(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowFixedHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, height: f64 ```
    pub fn SetRowFixedHeight(self: ?*anyopaque, row: i32, height: f64) void {
        C.QGraphicsGridLayout_SetRowFixedHeight(@ptrCast(self), @intCast(row), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnMinimumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, width: f64 ```
    pub fn SetColumnMinimumWidth(self: ?*anyopaque, column: i32, width: f64) void {
        C.QGraphicsGridLayout_SetColumnMinimumWidth(@ptrCast(self), @intCast(column), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnMinimumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnMinimumWidth(self: ?*anyopaque, column: i32) f64 {
        return C.QGraphicsGridLayout_ColumnMinimumWidth(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnPreferredWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, width: f64 ```
    pub fn SetColumnPreferredWidth(self: ?*anyopaque, column: i32, width: f64) void {
        C.QGraphicsGridLayout_SetColumnPreferredWidth(@ptrCast(self), @intCast(column), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnPreferredWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnPreferredWidth(self: ?*anyopaque, column: i32) f64 {
        return C.QGraphicsGridLayout_ColumnPreferredWidth(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnMaximumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, width: f64 ```
    pub fn SetColumnMaximumWidth(self: ?*anyopaque, column: i32, width: f64) void {
        C.QGraphicsGridLayout_SetColumnMaximumWidth(@ptrCast(self), @intCast(column), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnMaximumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnMaximumWidth(self: ?*anyopaque, column: i32) f64 {
        return C.QGraphicsGridLayout_ColumnMaximumWidth(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnFixedWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, width: f64 ```
    pub fn SetColumnFixedWidth(self: ?*anyopaque, column: i32, width: f64) void {
        C.QGraphicsGridLayout_SetColumnFixedWidth(@ptrCast(self), @intCast(column), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setRowAlignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, alignment: i32 ```
    pub fn SetRowAlignment(self: ?*anyopaque, row: i32, alignment: i64) void {
        C.QGraphicsGridLayout_SetRowAlignment(@ptrCast(self), @intCast(row), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowAlignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32 ```
    pub fn RowAlignment(self: ?*anyopaque, row: i32) i64 {
        return C.QGraphicsGridLayout_RowAlignment(@ptrCast(self), @intCast(row));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setColumnAlignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32, alignment: i32 ```
    pub fn SetColumnAlignment(self: ?*anyopaque, column: i32, alignment: i64) void {
        C.QGraphicsGridLayout_SetColumnAlignment(@ptrCast(self), @intCast(column), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnAlignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, column: i32 ```
    pub fn ColumnAlignment(self: ?*anyopaque, column: i32) i64 {
        return C.QGraphicsGridLayout_ColumnAlignment(@ptrCast(self), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setAlignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem, alignment: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, item: ?*anyopaque, alignment: i64) void {
        C.QGraphicsGridLayout_SetAlignment(@ptrCast(self), @ptrCast(item), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#alignment)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem ```
    pub fn Alignment(self: ?*anyopaque, item: ?*anyopaque) i64 {
        return C.QGraphicsGridLayout_Alignment(@ptrCast(self), @ptrCast(item));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#rowCount)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn RowCount(self: ?*anyopaque) i32 {
        return C.QGraphicsGridLayout_RowCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#columnCount)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn ColumnCount(self: ?*anyopaque) i32 {
        return C.QGraphicsGridLayout_ColumnCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#itemAt)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, row: i32, column: i32 ```
    pub fn ItemAt(self: ?*anyopaque, row: i32, column: i32) ?*C.QGraphicsLayoutItem {
        return C.QGraphicsGridLayout_ItemAt(@ptrCast(self), @intCast(row), @intCast(column));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#count)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn Count(self: ?*anyopaque) i32 {
        return C.QGraphicsGridLayout_Count(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn () callconv(.c) i32 ```
    pub fn OnCount(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QGraphicsGridLayout_OnCount(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn QBaseCount(self: ?*anyopaque) i32 {
        return C.QGraphicsGridLayout_QBaseCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#itemAt)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, index: i32 ```
    pub fn ItemAtWithIndex(self: ?*anyopaque, index: i32) ?*C.QGraphicsLayoutItem {
        return C.QGraphicsGridLayout_ItemAtWithIndex(@ptrCast(self), @intCast(index));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, i32) callconv(.c) ?*C.QGraphicsLayoutItem ```
    pub fn OnItemAtWithIndex(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) ?*C.QGraphicsLayoutItem) void {
        C.QGraphicsGridLayout_OnItemAtWithIndex(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, index: i32 ```
    pub fn QBaseItemAtWithIndex(self: ?*anyopaque, index: i32) ?*C.QGraphicsLayoutItem {
        return C.QGraphicsGridLayout_QBaseItemAtWithIndex(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#removeAt)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, index: i32 ```
    pub fn RemoveAt(self: ?*anyopaque, index: i32) void {
        C.QGraphicsGridLayout_RemoveAt(@ptrCast(self), @intCast(index));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, i32) callconv(.c) void ```
    pub fn OnRemoveAt(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnRemoveAt(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, index: i32 ```
    pub fn QBaseRemoveAt(self: ?*anyopaque, index: i32) void {
        C.QGraphicsGridLayout_QBaseRemoveAt(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#removeItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem ```
    pub fn RemoveItem(self: ?*anyopaque, item: ?*anyopaque) void {
        C.QGraphicsGridLayout_RemoveItem(@ptrCast(self), @ptrCast(item));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#invalidate)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn Invalidate(self: ?*anyopaque) void {
        C.QGraphicsGridLayout_Invalidate(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn () callconv(.c) void ```
    pub fn OnInvalidate(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QGraphicsGridLayout_OnInvalidate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn QBaseInvalidate(self: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseInvalidate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#setGeometry)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, rect: ?*C.QRectF ```
    pub fn SetGeometry(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QGraphicsGridLayout_SetGeometry(@ptrCast(self), @ptrCast(rect));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, ?*C.QRectF) callconv(.c) void ```
    pub fn OnSetGeometry(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnSetGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, rect: ?*C.QRectF ```
    pub fn QBaseSetGeometry(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseSetGeometry(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#sizeHint)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, which: qnamespace_enums.SizeHint, constraint: ?*C.QSizeF ```
    pub fn SizeHint(self: ?*anyopaque, which: i64, constraint: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsGridLayout_SizeHint(@ptrCast(self), @intCast(which), @ptrCast(constraint));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, qnamespace_enums.SizeHint, ?*C.QSizeF) callconv(.c) ?*C.QSizeF ```
    pub fn OnSizeHint(self: ?*anyopaque, slot: fn (?*anyopaque, i64, ?*anyopaque) callconv(.c) ?*C.QSizeF) void {
        C.QGraphicsGridLayout_OnSizeHint(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, which: qnamespace_enums.SizeHint, constraint: ?*C.QSizeF ```
    pub fn QBaseSizeHint(self: ?*anyopaque, which: i64, constraint: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsGridLayout_QBaseSizeHint(@ptrCast(self), @intCast(which), @ptrCast(constraint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#addItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem, row: i32, column: i32, rowSpan: i32, columnSpan: i32, alignment: i32 ```
    pub fn AddItem6(self: ?*anyopaque, item: ?*anyopaque, row: i32, column: i32, rowSpan: i32, columnSpan: i32, alignment: i64) void {
        C.QGraphicsGridLayout_AddItem6(@ptrCast(self), @ptrCast(item), @intCast(row), @intCast(column), @intCast(rowSpan), @intCast(columnSpan), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsgridlayout.html#addItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsLayoutItem, row: i32, column: i32, alignment: i32 ```
    pub fn AddItem4(self: ?*anyopaque, item: ?*anyopaque, row: i32, column: i32, alignment: i64) void {
        C.QGraphicsGridLayout_AddItem4(@ptrCast(self), @ptrCast(item), @intCast(row), @intCast(column), @intCast(alignment));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#setContentsMargins)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, left: f64, top: f64, right: f64, bottom: f64 ```
    pub fn SetContentsMargins(self: ?*anyopaque, left: f64, top: f64, right: f64, bottom: f64) void {
        C.QGraphicsLayout_SetContentsMargins(@ptrCast(self), @floatCast(left), @floatCast(top), @floatCast(right), @floatCast(bottom));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#activate)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn Activate(self: ?*anyopaque) void {
        C.QGraphicsLayout_Activate(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#isActivated)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn IsActivated(self: ?*anyopaque) bool {
        return C.QGraphicsLayout_IsActivated(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#setInstantInvalidatePropagation)
    ///
    /// ``` enable: bool ```
    pub fn SetInstantInvalidatePropagation(enable: bool) void {
        C.QGraphicsLayout_SetInstantInvalidatePropagation(enable);
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#instantInvalidatePropagation)
    ///
    ///
    pub fn InstantInvalidatePropagation() bool {
        return C.QGraphicsLayout_InstantInvalidatePropagation();
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setSizePolicy)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, policy: ?*C.QSizePolicy ```
    pub fn SetSizePolicy(self: ?*anyopaque, policy: ?*anyopaque) void {
        C.QGraphicsLayoutItem_SetSizePolicy(@ptrCast(self), @ptrCast(policy));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setSizePolicy)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, hPolicy: qsizepolicy_enums.Policy, vPolicy: qsizepolicy_enums.Policy ```
    pub fn SetSizePolicy2(self: ?*anyopaque, hPolicy: i64, vPolicy: i64) void {
        C.QGraphicsLayoutItem_SetSizePolicy2(@ptrCast(self), @intCast(hPolicy), @intCast(vPolicy));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#sizePolicy)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn SizePolicy(self: ?*anyopaque) ?*C.QSizePolicy {
        return C.QGraphicsLayoutItem_SizePolicy(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMinimumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, size: ?*C.QSizeF ```
    pub fn SetMinimumSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QGraphicsLayoutItem_SetMinimumSize(@ptrCast(self), @ptrCast(size));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMinimumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, w: f64, h: f64 ```
    pub fn SetMinimumSize2(self: ?*anyopaque, w: f64, h: f64) void {
        C.QGraphicsLayoutItem_SetMinimumSize2(@ptrCast(self), @floatCast(w), @floatCast(h));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#minimumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MinimumSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsLayoutItem_MinimumSize(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMinimumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, width: f64 ```
    pub fn SetMinimumWidth(self: ?*anyopaque, width: f64) void {
        C.QGraphicsLayoutItem_SetMinimumWidth(@ptrCast(self), @floatCast(width));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#minimumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MinimumWidth(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_MinimumWidth(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMinimumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, height: f64 ```
    pub fn SetMinimumHeight(self: ?*anyopaque, height: f64) void {
        C.QGraphicsLayoutItem_SetMinimumHeight(@ptrCast(self), @floatCast(height));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#minimumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MinimumHeight(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_MinimumHeight(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setPreferredSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, size: ?*C.QSizeF ```
    pub fn SetPreferredSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QGraphicsLayoutItem_SetPreferredSize(@ptrCast(self), @ptrCast(size));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setPreferredSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, w: f64, h: f64 ```
    pub fn SetPreferredSize2(self: ?*anyopaque, w: f64, h: f64) void {
        C.QGraphicsLayoutItem_SetPreferredSize2(@ptrCast(self), @floatCast(w), @floatCast(h));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#preferredSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn PreferredSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsLayoutItem_PreferredSize(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setPreferredWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, width: f64 ```
    pub fn SetPreferredWidth(self: ?*anyopaque, width: f64) void {
        C.QGraphicsLayoutItem_SetPreferredWidth(@ptrCast(self), @floatCast(width));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#preferredWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn PreferredWidth(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_PreferredWidth(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setPreferredHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, height: f64 ```
    pub fn SetPreferredHeight(self: ?*anyopaque, height: f64) void {
        C.QGraphicsLayoutItem_SetPreferredHeight(@ptrCast(self), @floatCast(height));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#preferredHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn PreferredHeight(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_PreferredHeight(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMaximumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, size: ?*C.QSizeF ```
    pub fn SetMaximumSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QGraphicsLayoutItem_SetMaximumSize(@ptrCast(self), @ptrCast(size));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMaximumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, w: f64, h: f64 ```
    pub fn SetMaximumSize2(self: ?*anyopaque, w: f64, h: f64) void {
        C.QGraphicsLayoutItem_SetMaximumSize2(@ptrCast(self), @floatCast(w), @floatCast(h));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#maximumSize)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MaximumSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsLayoutItem_MaximumSize(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMaximumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, width: f64 ```
    pub fn SetMaximumWidth(self: ?*anyopaque, width: f64) void {
        C.QGraphicsLayoutItem_SetMaximumWidth(@ptrCast(self), @floatCast(width));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#maximumWidth)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MaximumWidth(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_MaximumWidth(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setMaximumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, height: f64 ```
    pub fn SetMaximumHeight(self: ?*anyopaque, height: f64) void {
        C.QGraphicsLayoutItem_SetMaximumHeight(@ptrCast(self), @floatCast(height));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#maximumHeight)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn MaximumHeight(self: ?*anyopaque) f64 {
        return C.QGraphicsLayoutItem_MaximumHeight(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#geometry)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn Geometry(self: ?*anyopaque) ?*C.QRectF {
        return C.QGraphicsLayoutItem_Geometry(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#contentsRect)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn ContentsRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QGraphicsLayoutItem_ContentsRect(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#effectiveSizeHint)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, which: qnamespace_enums.SizeHint ```
    pub fn EffectiveSizeHint(self: ?*anyopaque, which: i64) ?*C.QSizeF {
        return C.QGraphicsLayoutItem_EffectiveSizeHint(@ptrCast(self), @intCast(which));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#parentLayoutItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn ParentLayoutItem(self: ?*anyopaque) ?*C.QGraphicsLayoutItem {
        return C.QGraphicsLayoutItem_ParentLayoutItem(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setParentLayoutItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, parent: ?*C.QGraphicsLayoutItem ```
    pub fn SetParentLayoutItem(self: ?*anyopaque, parent: ?*anyopaque) void {
        C.QGraphicsLayoutItem_SetParentLayoutItem(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#isLayout)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn IsLayout(self: ?*anyopaque) bool {
        return C.QGraphicsLayoutItem_IsLayout(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#graphicsItem)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn GraphicsItem(self: ?*anyopaque) ?*C.QGraphicsItem {
        return C.QGraphicsLayoutItem_GraphicsItem(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#ownedByLayout)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn OwnedByLayout(self: ?*anyopaque) bool {
        return C.QGraphicsLayoutItem_OwnedByLayout(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setSizePolicy)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, hPolicy: qsizepolicy_enums.Policy, vPolicy: qsizepolicy_enums.Policy, controlType: qsizepolicy_enums.ControlType ```
    pub fn SetSizePolicy3(self: ?*anyopaque, hPolicy: i64, vPolicy: i64, controlType: i64) void {
        C.QGraphicsLayoutItem_SetSizePolicy3(@ptrCast(self), @intCast(hPolicy), @intCast(vPolicy), @intCast(controlType));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#effectiveSizeHint)
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, which: qnamespace_enums.SizeHint, constraint: ?*C.QSizeF ```
    pub fn EffectiveSizeHint2(self: ?*anyopaque, which: i64, constraint: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsLayoutItem_EffectiveSizeHint2(@ptrCast(self), @intCast(which), @ptrCast(constraint));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#getContentsMargins)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, left: ?*f64, top: ?*f64, right: ?*f64, bottom: ?*f64 ```
    pub fn GetContentsMargins(self: ?*anyopaque, left: ?*anyopaque, top: ?*anyopaque, right: ?*anyopaque, bottom: ?*anyopaque) void {
        C.QGraphicsGridLayout_GetContentsMargins(@ptrCast(self), @floatCast(left), @floatCast(top), @floatCast(right), @floatCast(bottom));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, left: ?*f64, top: ?*f64, right: ?*f64, bottom: ?*f64 ```
    pub fn QBaseGetContentsMargins(self: ?*anyopaque, left: ?*anyopaque, top: ?*anyopaque, right: ?*anyopaque, bottom: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseGetContentsMargins(@ptrCast(self), @floatCast(left), @floatCast(top), @floatCast(right), @floatCast(bottom));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, ?*f64, ?*f64, ?*f64, ?*f64) callconv(.c) void ```
    pub fn OnGetContentsMargins(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnGetContentsMargins(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#updateGeometry)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn UpdateGeometry(self: ?*anyopaque) void {
        C.QGraphicsGridLayout_UpdateGeometry(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn QBaseUpdateGeometry(self: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseUpdateGeometry(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn () callconv(.c) void ```
    pub fn OnUpdateGeometry(self: ?*anyopaque, slot: fn () callconv(.c) void) void {
        C.QGraphicsGridLayout_OnUpdateGeometry(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#widgetEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, e: ?*C.QEvent ```
    pub fn WidgetEvent(self: ?*anyopaque, e: ?*anyopaque) void {
        C.QGraphicsGridLayout_WidgetEvent(@ptrCast(self), @ptrCast(e));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, e: ?*C.QEvent ```
    pub fn QBaseWidgetEvent(self: ?*anyopaque, e: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseWidgetEvent(@ptrCast(self), @ptrCast(e));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, ?*C.QEvent) callconv(.c) void ```
    pub fn OnWidgetEvent(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnWidgetEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#isEmpty)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QGraphicsGridLayout_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn QBaseIsEmpty(self: ?*anyopaque) bool {
        return C.QGraphicsGridLayout_QBaseIsEmpty(@ptrCast(self));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn () callconv(.c) bool ```
    pub fn OnIsEmpty(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QGraphicsGridLayout_OnIsEmpty(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayout.html#addChildLayoutItem)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, layoutItem: ?*C.QGraphicsLayoutItem ```
    pub fn AddChildLayoutItem(self: ?*anyopaque, layoutItem: ?*anyopaque) void {
        C.QGraphicsGridLayout_AddChildLayoutItem(@ptrCast(self), @ptrCast(layoutItem));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, layoutItem: ?*C.QGraphicsLayoutItem ```
    pub fn QBaseAddChildLayoutItem(self: ?*anyopaque, layoutItem: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseAddChildLayoutItem(@ptrCast(self), @ptrCast(layoutItem));
    }

    /// Inherited from QGraphicsLayout
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, ?*C.QGraphicsLayoutItem) callconv(.c) void ```
    pub fn OnAddChildLayoutItem(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnAddChildLayoutItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setGraphicsItem)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsItem ```
    pub fn SetGraphicsItem(self: ?*anyopaque, item: ?*anyopaque) void {
        C.QGraphicsGridLayout_SetGraphicsItem(@ptrCast(self), @ptrCast(item));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, item: ?*C.QGraphicsItem ```
    pub fn QBaseSetGraphicsItem(self: ?*anyopaque, item: ?*anyopaque) void {
        C.QGraphicsGridLayout_QBaseSetGraphicsItem(@ptrCast(self), @ptrCast(item));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, ?*C.QGraphicsItem) callconv(.c) void ```
    pub fn OnSetGraphicsItem(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnSetGraphicsItem(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicslayoutitem.html#setOwnedByLayout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, ownedByLayout: bool ```
    pub fn SetOwnedByLayout(self: ?*anyopaque, ownedByLayout: bool) void {
        C.QGraphicsGridLayout_SetOwnedByLayout(@ptrCast(self), ownedByLayout);
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, ownedByLayout: bool ```
    pub fn QBaseSetOwnedByLayout(self: ?*anyopaque, ownedByLayout: bool) void {
        C.QGraphicsGridLayout_QBaseSetOwnedByLayout(@ptrCast(self), ownedByLayout);
    }

    /// Inherited from QGraphicsLayoutItem
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsGridLayout, slot: fn (?*C.QGraphicsGridLayout, bool) callconv(.c) void ```
    pub fn OnSetOwnedByLayout(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsGridLayout_OnSetOwnedByLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsGridLayout ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsGridLayout_Delete(@ptrCast(self));
    }
};
