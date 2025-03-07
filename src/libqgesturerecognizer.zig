const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qgesturerecognizer.html
pub const qgesturerecognizer = struct {
    /// New constructs a new QGestureRecognizer object.
    ///
    ///
    pub fn New() ?*C.QGestureRecognizer {
        return C.QGestureRecognizer_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#create)
    ///
    /// ``` self: ?*C.QGestureRecognizer, target: ?*C.QObject ```
    pub fn Create(self: ?*anyopaque, target: ?*anyopaque) ?*C.QGesture {
        return C.QGestureRecognizer_Create(@ptrCast(self), @ptrCast(target));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGestureRecognizer, slot: fn (?*C.QGestureRecognizer, ?*C.QObject) callconv(.c) ?*C.QGesture ```
    pub fn OnCreate(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QGesture) void {
        C.QGestureRecognizer_OnCreate(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGestureRecognizer, target: ?*C.QObject ```
    pub fn QBaseCreate(self: ?*anyopaque, target: ?*anyopaque) ?*C.QGesture {
        return C.QGestureRecognizer_QBaseCreate(@ptrCast(self), @ptrCast(target));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#recognize)
    ///
    /// ``` self: ?*C.QGestureRecognizer, state: ?*C.QGesture, watched: ?*C.QObject, event: ?*C.QEvent ```
    pub fn Recognize(self: ?*anyopaque, state: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) i64 {
        return C.QGestureRecognizer_Recognize(@ptrCast(self), @ptrCast(state), @ptrCast(watched), @ptrCast(event));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGestureRecognizer, slot: fn (?*C.QGestureRecognizer, ?*C.QGesture, ?*C.QObject, ?*C.QEvent) callconv(.c) i64 ```
    pub fn OnRecognize(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) i64) void {
        C.QGestureRecognizer_OnRecognize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGestureRecognizer, state: ?*C.QGesture, watched: ?*C.QObject, event: ?*C.QEvent ```
    pub fn QBaseRecognize(self: ?*anyopaque, state: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) i64 {
        return C.QGestureRecognizer_QBaseRecognize(@ptrCast(self), @ptrCast(state), @ptrCast(watched), @ptrCast(event));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#reset)
    ///
    /// ``` self: ?*C.QGestureRecognizer, state: ?*C.QGesture ```
    pub fn Reset(self: ?*anyopaque, state: ?*anyopaque) void {
        C.QGestureRecognizer_Reset(@ptrCast(self), @ptrCast(state));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QGestureRecognizer, slot: fn (?*C.QGestureRecognizer, ?*C.QGesture) callconv(.c) void ```
    pub fn OnReset(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QGestureRecognizer_OnReset(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QGestureRecognizer, state: ?*C.QGesture ```
    pub fn QBaseReset(self: ?*anyopaque, state: ?*anyopaque) void {
        C.QGestureRecognizer_QBaseReset(@ptrCast(self), @ptrCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#registerRecognizer)
    ///
    /// ``` recognizer: ?*C.QGestureRecognizer ```
    pub fn RegisterRecognizer(recognizer: ?*anyopaque) i64 {
        return C.QGestureRecognizer_RegisterRecognizer(@ptrCast(recognizer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#unregisterRecognizer)
    ///
    /// ``` typeVal: qnamespace_enums.GestureType ```
    pub fn UnregisterRecognizer(typeVal: i64) void {
        C.QGestureRecognizer_UnregisterRecognizer(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgesturerecognizer.html#operator=)
    ///
    /// ``` self: ?*C.QGestureRecognizer, param1: ?*C.QGestureRecognizer ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QGestureRecognizer_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGestureRecognizer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGestureRecognizer_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgesturerecognizer.html#types
pub const enums = struct {
    pub const ResultFlag = enum {
        pub const Ignore: i32 = 1;
        pub const MayBeGesture: i32 = 2;
        pub const TriggerGesture: i32 = 4;
        pub const FinishGesture: i32 = 8;
        pub const CancelGesture: i32 = 16;
        pub const ResultState_Mask: i32 = 255;
        pub const ConsumeEventHint: i32 = 256;
        pub const ResultHint_Mask: i32 = 65280;
    };
};
