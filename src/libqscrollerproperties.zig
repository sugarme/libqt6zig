const C = @import("qt6c");
const qscrollerproperties_enums = enums;

/// https://doc.qt.io/qt-6/qscrollerproperties.html
pub const qscrollerproperties = struct {
    /// New constructs a new QScrollerProperties object.
    ///
    ///
    pub fn New() ?*C.QScrollerProperties {
        return C.QScrollerProperties_new();
    }

    /// New2 constructs a new QScrollerProperties object.
    ///
    /// ``` sp: ?*C.QScrollerProperties ```
    pub fn New2(sp: ?*anyopaque) ?*C.QScrollerProperties {
        return C.QScrollerProperties_new2(@ptrCast(sp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#operator=)
    ///
    /// ``` self: ?*C.QScrollerProperties, sp: ?*C.QScrollerProperties ```
    pub fn OperatorAssign(self: ?*anyopaque, sp: ?*anyopaque) void {
        C.QScrollerProperties_OperatorAssign(@ptrCast(self), @ptrCast(sp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#operator==)
    ///
    /// ``` self: ?*C.QScrollerProperties, sp: ?*C.QScrollerProperties ```
    pub fn OperatorEqual(self: ?*anyopaque, sp: ?*anyopaque) bool {
        return C.QScrollerProperties_OperatorEqual(@ptrCast(self), @ptrCast(sp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#operator!=)
    ///
    /// ``` self: ?*C.QScrollerProperties, sp: ?*C.QScrollerProperties ```
    pub fn OperatorNotEqual(self: ?*anyopaque, sp: ?*anyopaque) bool {
        return C.QScrollerProperties_OperatorNotEqual(@ptrCast(self), @ptrCast(sp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#setDefaultScrollerProperties)
    ///
    /// ``` sp: ?*C.QScrollerProperties ```
    pub fn SetDefaultScrollerProperties(sp: ?*anyopaque) void {
        C.QScrollerProperties_SetDefaultScrollerProperties(@ptrCast(sp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#unsetDefaultScrollerProperties)
    ///
    ///
    pub fn UnsetDefaultScrollerProperties() void {
        C.QScrollerProperties_UnsetDefaultScrollerProperties();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#scrollMetric)
    ///
    /// ``` self: ?*C.QScrollerProperties, metric: qscrollerproperties_enums.ScrollMetric ```
    pub fn ScrollMetric(self: ?*anyopaque, metric: i64) ?*C.QVariant {
        return C.QScrollerProperties_ScrollMetric(@ptrCast(self), @intCast(metric));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollerproperties.html#setScrollMetric)
    ///
    /// ``` self: ?*C.QScrollerProperties, metric: qscrollerproperties_enums.ScrollMetric, value: ?*C.QVariant ```
    pub fn SetScrollMetric(self: ?*anyopaque, metric: i64, value: ?*anyopaque) void {
        C.QScrollerProperties_SetScrollMetric(@ptrCast(self), @intCast(metric), @ptrCast(value));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QScrollerProperties ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QScrollerProperties_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qscrollerproperties.html#types
pub const enums = struct {
    pub const OvershootPolicy = enum {
        pub const OvershootWhenScrollable: i32 = 0;
        pub const OvershootAlwaysOff: i32 = 1;
        pub const OvershootAlwaysOn: i32 = 2;
    };

    pub const FrameRates = enum {
        pub const Standard: i32 = 0;
        pub const Fps60: i32 = 1;
        pub const Fps30: i32 = 2;
        pub const Fps20: i32 = 3;
    };

    pub const ScrollMetric = enum {
        pub const MousePressEventDelay: i32 = 0;
        pub const DragStartDistance: i32 = 1;
        pub const DragVelocitySmoothingFactor: i32 = 2;
        pub const AxisLockThreshold: i32 = 3;
        pub const ScrollingCurve: i32 = 4;
        pub const DecelerationFactor: i32 = 5;
        pub const MinimumVelocity: i32 = 6;
        pub const MaximumVelocity: i32 = 7;
        pub const MaximumClickThroughVelocity: i32 = 8;
        pub const AcceleratingFlickMaximumTime: i32 = 9;
        pub const AcceleratingFlickSpeedupFactor: i32 = 10;
        pub const SnapPositionRatio: i32 = 11;
        pub const SnapTime: i32 = 12;
        pub const OvershootDragResistanceFactor: i32 = 13;
        pub const OvershootDragDistanceFactor: i32 = 14;
        pub const OvershootScrollDistanceFactor: i32 = 15;
        pub const OvershootScrollTime: i32 = 16;
        pub const HorizontalOvershootPolicy: i32 = 17;
        pub const VerticalOvershootPolicy: i32 = 18;
        pub const FrameRate: i32 = 19;
        pub const ScrollMetricCount: i32 = 20;
    };
};
