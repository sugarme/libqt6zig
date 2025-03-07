const C = @import("qt6c");
const qeasingcurve_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qeasingcurve.html
pub const qeasingcurve = struct {
    /// New constructs a new QEasingCurve object.
    ///
    ///
    pub fn New() ?*C.QEasingCurve {
        return C.QEasingCurve_new();
    }

    /// New2 constructs a new QEasingCurve object.
    ///
    /// ``` other: ?*C.QEasingCurve ```
    pub fn New2(other: ?*anyopaque) ?*C.QEasingCurve {
        return C.QEasingCurve_new2(@ptrCast(other));
    }

    /// New3 constructs a new QEasingCurve object.
    ///
    /// ``` typeVal: qeasingcurve_enums.Type ```
    pub fn New3(typeVal: i64) ?*C.QEasingCurve {
        return C.QEasingCurve_new3(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#operator=)
    ///
    /// ``` self: ?*C.QEasingCurve, other: ?*C.QEasingCurve ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QEasingCurve_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#swap)
    ///
    /// ``` self: ?*C.QEasingCurve, other: ?*C.QEasingCurve ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QEasingCurve_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#operator==)
    ///
    /// ``` self: ?*C.QEasingCurve, other: ?*C.QEasingCurve ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QEasingCurve_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#operator!=)
    ///
    /// ``` self: ?*C.QEasingCurve, other: ?*C.QEasingCurve ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QEasingCurve_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#amplitude)
    ///
    /// ``` self: ?*C.QEasingCurve ```
    pub fn Amplitude(self: ?*anyopaque) f64 {
        return C.QEasingCurve_Amplitude(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#setAmplitude)
    ///
    /// ``` self: ?*C.QEasingCurve, amplitude: f64 ```
    pub fn SetAmplitude(self: ?*anyopaque, amplitude: f64) void {
        C.QEasingCurve_SetAmplitude(@ptrCast(self), @floatCast(amplitude));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#period)
    ///
    /// ``` self: ?*C.QEasingCurve ```
    pub fn Period(self: ?*anyopaque) f64 {
        return C.QEasingCurve_Period(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#setPeriod)
    ///
    /// ``` self: ?*C.QEasingCurve, period: f64 ```
    pub fn SetPeriod(self: ?*anyopaque, period: f64) void {
        C.QEasingCurve_SetPeriod(@ptrCast(self), @floatCast(period));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#overshoot)
    ///
    /// ``` self: ?*C.QEasingCurve ```
    pub fn Overshoot(self: ?*anyopaque) f64 {
        return C.QEasingCurve_Overshoot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#setOvershoot)
    ///
    /// ``` self: ?*C.QEasingCurve, overshoot: f64 ```
    pub fn SetOvershoot(self: ?*anyopaque, overshoot: f64) void {
        C.QEasingCurve_SetOvershoot(@ptrCast(self), @floatCast(overshoot));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#addCubicBezierSegment)
    ///
    /// ``` self: ?*C.QEasingCurve, c1: ?*C.QPointF, c2: ?*C.QPointF, endPoint: ?*C.QPointF ```
    pub fn AddCubicBezierSegment(self: ?*anyopaque, c1: ?*anyopaque, c2: ?*anyopaque, endPoint: ?*anyopaque) void {
        C.QEasingCurve_AddCubicBezierSegment(@ptrCast(self), @ptrCast(c1), @ptrCast(c2), @ptrCast(endPoint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#addTCBSegment)
    ///
    /// ``` self: ?*C.QEasingCurve, nextPoint: ?*C.QPointF, t: f64, c: f64, b: f64 ```
    pub fn AddTCBSegment(self: ?*anyopaque, nextPoint: ?*anyopaque, t: f64, c: f64, b: f64) void {
        C.QEasingCurve_AddTCBSegment(@ptrCast(self), @ptrCast(nextPoint), @floatCast(t), @floatCast(c), @floatCast(b));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#toCubicSpline)
    ///
    /// ``` self: ?*C.QEasingCurve, allocator: std.mem.Allocator ```
    pub fn ToCubicSpline(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QPointF {
        const _arr: C.struct_libqt_list = C.QEasingCurve_ToCubicSpline(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPointF, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPointF = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#type)
    ///
    /// ``` self: ?*C.QEasingCurve ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEasingCurve_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#setType)
    ///
    /// ``` self: ?*C.QEasingCurve, typeVal: qeasingcurve_enums.Type ```
    pub fn SetType(self: ?*anyopaque, typeVal: i64) void {
        C.QEasingCurve_SetType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeasingcurve.html#valueForProgress)
    ///
    /// ``` self: ?*C.QEasingCurve, progress: f64 ```
    pub fn ValueForProgress(self: ?*anyopaque, progress: f64) f64 {
        return C.QEasingCurve_ValueForProgress(@ptrCast(self), @floatCast(progress));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QEasingCurve ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QEasingCurve_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qeasingcurve.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const Linear: i32 = 0;
        pub const InQuad: i32 = 1;
        pub const OutQuad: i32 = 2;
        pub const InOutQuad: i32 = 3;
        pub const OutInQuad: i32 = 4;
        pub const InCubic: i32 = 5;
        pub const OutCubic: i32 = 6;
        pub const InOutCubic: i32 = 7;
        pub const OutInCubic: i32 = 8;
        pub const InQuart: i32 = 9;
        pub const OutQuart: i32 = 10;
        pub const InOutQuart: i32 = 11;
        pub const OutInQuart: i32 = 12;
        pub const InQuint: i32 = 13;
        pub const OutQuint: i32 = 14;
        pub const InOutQuint: i32 = 15;
        pub const OutInQuint: i32 = 16;
        pub const InSine: i32 = 17;
        pub const OutSine: i32 = 18;
        pub const InOutSine: i32 = 19;
        pub const OutInSine: i32 = 20;
        pub const InExpo: i32 = 21;
        pub const OutExpo: i32 = 22;
        pub const InOutExpo: i32 = 23;
        pub const OutInExpo: i32 = 24;
        pub const InCirc: i32 = 25;
        pub const OutCirc: i32 = 26;
        pub const InOutCirc: i32 = 27;
        pub const OutInCirc: i32 = 28;
        pub const InElastic: i32 = 29;
        pub const OutElastic: i32 = 30;
        pub const InOutElastic: i32 = 31;
        pub const OutInElastic: i32 = 32;
        pub const InBack: i32 = 33;
        pub const OutBack: i32 = 34;
        pub const InOutBack: i32 = 35;
        pub const OutInBack: i32 = 36;
        pub const InBounce: i32 = 37;
        pub const OutBounce: i32 = 38;
        pub const InOutBounce: i32 = 39;
        pub const OutInBounce: i32 = 40;
        pub const InCurve: i32 = 41;
        pub const OutCurve: i32 = 42;
        pub const SineCurve: i32 = 43;
        pub const CosineCurve: i32 = 44;
        pub const BezierSpline: i32 = 45;
        pub const TCBSpline: i32 = 46;
        pub const Custom: i32 = 47;
        pub const NCurveTypes: i32 = 48;
    };
};
