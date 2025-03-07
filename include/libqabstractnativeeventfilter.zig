const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qabstractnativeeventfilter.html
pub const qabstractnativeeventfilter = struct {
    /// New constructs a new QAbstractNativeEventFilter object.
    ///
    ///
    pub fn New() ?*C.QAbstractNativeEventFilter {
        return C.QAbstractNativeEventFilter_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractnativeeventfilter.html#nativeEventFilter)
    ///
    /// ``` self: ?*C.QAbstractNativeEventFilter, eventType: []u8, message: ?*anyopaque, result: ?*isize ```
    pub fn NativeEventFilter(self: ?*anyopaque, eventType: []u8, message: ?*anyopaque, result: ?*anyopaque) bool {
        const eventType_str = C.struct_libqt_string{
            .len = eventType.len,
            .data = @constCast(eventType.ptr),
        };
        return C.QAbstractNativeEventFilter_NativeEventFilter(@ptrCast(self), eventType_str, message, @intCast(result));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QAbstractNativeEventFilter, slot: fn (?*C.QAbstractNativeEventFilter, []u8, ?*anyopaque, ?*isize) callconv(.c) bool ```
    pub fn OnNativeEventFilter(self: ?*anyopaque, slot: fn (?*anyopaque, []u8, ?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QAbstractNativeEventFilter_OnNativeEventFilter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QAbstractNativeEventFilter, eventType: []u8, message: ?*anyopaque, result: ?*isize ```
    pub fn QBaseNativeEventFilter(self: ?*anyopaque, eventType: []u8, message: ?*anyopaque, result: ?*anyopaque) bool {
        const eventType_str = C.struct_libqt_string{
            .len = eventType.len,
            .data = @constCast(eventType.ptr),
        };
        return C.QAbstractNativeEventFilter_QBaseNativeEventFilter(@ptrCast(self), eventType_str, message, @intCast(result));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAbstractNativeEventFilter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAbstractNativeEventFilter_Delete(@ptrCast(self));
    }
};
