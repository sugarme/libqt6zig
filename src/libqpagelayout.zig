const C = @import("qt6c");
const qpagelayout_enums = enums;

/// https://doc.qt.io/qt-6/qpagelayout.html
pub const qpagelayout = struct {
    /// New constructs a new QPageLayout object.
    ///
    ///
    pub fn New() ?*C.QPageLayout {
        return C.QPageLayout_new();
    }

    /// New2 constructs a new QPageLayout object.
    ///
    /// ``` pageSize: ?*C.QPageSize, orientation: qpagelayout_enums.Orientation, margins: ?*C.QMarginsF ```
    pub fn New2(pageSize: ?*anyopaque, orientation: i64, margins: ?*anyopaque) ?*C.QPageLayout {
        return C.QPageLayout_new2(@ptrCast(pageSize), @intCast(orientation), @ptrCast(margins));
    }

    /// New3 constructs a new QPageLayout object.
    ///
    /// ``` other: ?*C.QPageLayout ```
    pub fn New3(other: ?*anyopaque) ?*C.QPageLayout {
        return C.QPageLayout_new3(@ptrCast(other));
    }

    /// New4 constructs a new QPageLayout object.
    ///
    /// ``` pageSize: ?*C.QPageSize, orientation: qpagelayout_enums.Orientation, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit ```
    pub fn New4(pageSize: ?*anyopaque, orientation: i64, margins: ?*anyopaque, units: i64) ?*C.QPageLayout {
        return C.QPageLayout_new4(@ptrCast(pageSize), @intCast(orientation), @ptrCast(margins), @intCast(units));
    }

    /// New5 constructs a new QPageLayout object.
    ///
    /// ``` pageSize: ?*C.QPageSize, orientation: qpagelayout_enums.Orientation, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit, minMargins: ?*C.QMarginsF ```
    pub fn New5(pageSize: ?*anyopaque, orientation: i64, margins: ?*anyopaque, units: i64, minMargins: ?*anyopaque) ?*C.QPageLayout {
        return C.QPageLayout_new5(@ptrCast(pageSize), @intCast(orientation), @ptrCast(margins), @intCast(units), @ptrCast(minMargins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#operator=)
    ///
    /// ``` self: ?*C.QPageLayout, other: ?*C.QPageLayout ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageLayout_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#swap)
    ///
    /// ``` self: ?*C.QPageLayout, other: ?*C.QPageLayout ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageLayout_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#isEquivalentTo)
    ///
    /// ``` self: ?*C.QPageLayout, other: ?*C.QPageLayout ```
    pub fn IsEquivalentTo(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QPageLayout_IsEquivalentTo(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#isValid)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QPageLayout_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setMode)
    ///
    /// ``` self: ?*C.QPageLayout, mode: qpagelayout_enums.Mode ```
    pub fn SetMode(self: ?*anyopaque, mode: i64) void {
        C.QPageLayout_SetMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#mode)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn Mode(self: ?*anyopaque) i64 {
        return C.QPageLayout_Mode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setPageSize)
    ///
    /// ``` self: ?*C.QPageLayout, pageSize: ?*C.QPageSize ```
    pub fn SetPageSize(self: ?*anyopaque, pageSize: ?*anyopaque) void {
        C.QPageLayout_SetPageSize(@ptrCast(self), @ptrCast(pageSize));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#pageSize)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn PageSize(self: ?*anyopaque) ?*C.QPageSize {
        return C.QPageLayout_PageSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setOrientation)
    ///
    /// ``` self: ?*C.QPageLayout, orientation: qpagelayout_enums.Orientation ```
    pub fn SetOrientation(self: ?*anyopaque, orientation: i64) void {
        C.QPageLayout_SetOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#orientation)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn Orientation(self: ?*anyopaque) i64 {
        return C.QPageLayout_Orientation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setUnits)
    ///
    /// ``` self: ?*C.QPageLayout, units: qpagelayout_enums.Unit ```
    pub fn SetUnits(self: ?*anyopaque, units: i64) void {
        C.QPageLayout_SetUnits(@ptrCast(self), @intCast(units));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#units)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn Units(self: ?*anyopaque) i64 {
        return C.QPageLayout_Units(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setMargins)
    ///
    /// ``` self: ?*C.QPageLayout, margins: ?*C.QMarginsF ```
    pub fn SetMargins(self: ?*anyopaque, margins: ?*anyopaque) bool {
        return C.QPageLayout_SetMargins(@ptrCast(self), @ptrCast(margins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setLeftMargin)
    ///
    /// ``` self: ?*C.QPageLayout, leftMargin: f64 ```
    pub fn SetLeftMargin(self: ?*anyopaque, leftMargin: f64) bool {
        return C.QPageLayout_SetLeftMargin(@ptrCast(self), @floatCast(leftMargin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setRightMargin)
    ///
    /// ``` self: ?*C.QPageLayout, rightMargin: f64 ```
    pub fn SetRightMargin(self: ?*anyopaque, rightMargin: f64) bool {
        return C.QPageLayout_SetRightMargin(@ptrCast(self), @floatCast(rightMargin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setTopMargin)
    ///
    /// ``` self: ?*C.QPageLayout, topMargin: f64 ```
    pub fn SetTopMargin(self: ?*anyopaque, topMargin: f64) bool {
        return C.QPageLayout_SetTopMargin(@ptrCast(self), @floatCast(topMargin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setBottomMargin)
    ///
    /// ``` self: ?*C.QPageLayout, bottomMargin: f64 ```
    pub fn SetBottomMargin(self: ?*anyopaque, bottomMargin: f64) bool {
        return C.QPageLayout_SetBottomMargin(@ptrCast(self), @floatCast(bottomMargin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#margins)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn Margins(self: ?*anyopaque) ?*C.QMarginsF {
        return C.QPageLayout_Margins(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#margins)
    ///
    /// ``` self: ?*C.QPageLayout, units: qpagelayout_enums.Unit ```
    pub fn MarginsWithUnits(self: ?*anyopaque, units: i64) ?*C.QMarginsF {
        return C.QPageLayout_MarginsWithUnits(@ptrCast(self), @intCast(units));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#marginsPoints)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn MarginsPoints(self: ?*anyopaque) ?*C.QMargins {
        return C.QPageLayout_MarginsPoints(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#marginsPixels)
    ///
    /// ``` self: ?*C.QPageLayout, resolution: i32 ```
    pub fn MarginsPixels(self: ?*anyopaque, resolution: i32) ?*C.QMargins {
        return C.QPageLayout_MarginsPixels(@ptrCast(self), @intCast(resolution));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setMinimumMargins)
    ///
    /// ``` self: ?*C.QPageLayout, minMargins: ?*C.QMarginsF ```
    pub fn SetMinimumMargins(self: ?*anyopaque, minMargins: ?*anyopaque) void {
        C.QPageLayout_SetMinimumMargins(@ptrCast(self), @ptrCast(minMargins));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#minimumMargins)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn MinimumMargins(self: ?*anyopaque) ?*C.QMarginsF {
        return C.QPageLayout_MinimumMargins(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#maximumMargins)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn MaximumMargins(self: ?*anyopaque) ?*C.QMarginsF {
        return C.QPageLayout_MaximumMargins(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#fullRect)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn FullRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QPageLayout_FullRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#fullRect)
    ///
    /// ``` self: ?*C.QPageLayout, units: qpagelayout_enums.Unit ```
    pub fn FullRectWithUnits(self: ?*anyopaque, units: i64) ?*C.QRectF {
        return C.QPageLayout_FullRectWithUnits(@ptrCast(self), @intCast(units));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#fullRectPoints)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn FullRectPoints(self: ?*anyopaque) ?*C.QRect {
        return C.QPageLayout_FullRectPoints(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#fullRectPixels)
    ///
    /// ``` self: ?*C.QPageLayout, resolution: i32 ```
    pub fn FullRectPixels(self: ?*anyopaque, resolution: i32) ?*C.QRect {
        return C.QPageLayout_FullRectPixels(@ptrCast(self), @intCast(resolution));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#paintRect)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn PaintRect(self: ?*anyopaque) ?*C.QRectF {
        return C.QPageLayout_PaintRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#paintRect)
    ///
    /// ``` self: ?*C.QPageLayout, units: qpagelayout_enums.Unit ```
    pub fn PaintRectWithUnits(self: ?*anyopaque, units: i64) ?*C.QRectF {
        return C.QPageLayout_PaintRectWithUnits(@ptrCast(self), @intCast(units));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#paintRectPoints)
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn PaintRectPoints(self: ?*anyopaque) ?*C.QRect {
        return C.QPageLayout_PaintRectPoints(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#paintRectPixels)
    ///
    /// ``` self: ?*C.QPageLayout, resolution: i32 ```
    pub fn PaintRectPixels(self: ?*anyopaque, resolution: i32) ?*C.QRect {
        return C.QPageLayout_PaintRectPixels(@ptrCast(self), @intCast(resolution));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpagelayout.html#setPageSize)
    ///
    /// ``` self: ?*C.QPageLayout, pageSize: ?*C.QPageSize, minMargins: ?*C.QMarginsF ```
    pub fn SetPageSize2(self: ?*anyopaque, pageSize: ?*anyopaque, minMargins: ?*anyopaque) void {
        C.QPageLayout_SetPageSize2(@ptrCast(self), @ptrCast(pageSize), @ptrCast(minMargins));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPageLayout ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPageLayout_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpagelayout.html#types
pub const enums = struct {
    pub const Unit = enum {
        pub const Millimeter: i32 = 0;
        pub const Point: i32 = 1;
        pub const Inch: i32 = 2;
        pub const Pica: i32 = 3;
        pub const Didot: i32 = 4;
        pub const Cicero: i32 = 5;
    };

    pub const Orientation = enum {
        pub const Portrait: i32 = 0;
        pub const Landscape: i32 = 1;
    };

    pub const Mode = enum {
        pub const StandardMode: i32 = 0;
        pub const FullPageMode: i32 = 1;
    };
};
