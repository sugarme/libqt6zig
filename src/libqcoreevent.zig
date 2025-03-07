const C = @import("qt6c");
const qevent_enums = @import("libqevent.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qevent.html
pub const qevent = struct {
    /// New constructs a new QEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New(typeVal: i64) ?*C.QEvent {
        return C.QEvent_new(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// ``` self: ?*C.QEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QEvent, slot: fn (?*C.QEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn IsSinglePointEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsSinglePointEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    ///
    pub fn RegisterEventType() i32 {
        return C.QEvent_RegisterEventType();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    /// ``` hint: i32 ```
    pub fn RegisterEventType1(hint: i32) i32 {
        return C.QEvent_RegisterEventType1(@intCast(hint));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtimerevent.html
pub const qtimerevent = struct {
    /// New constructs a new QTimerEvent object.
    ///
    /// ``` timerId: i32 ```
    pub fn New(timerId: i32) ?*C.QTimerEvent {
        return C.QTimerEvent_new(@intCast(timerId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimerevent.html#clone)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QTimerEvent {
        return C.QTimerEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTimerEvent, slot: fn () callconv(.c) ?*C.QTimerEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QTimerEvent) void {
        C.QTimerEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QTimerEvent {
        return C.QTimerEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimerevent.html#timerId)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn TimerId(self: ?*anyopaque) i32 {
        return C.QTimerEvent_TimerId(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn IsSinglePointEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsSinglePointEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    ///
    pub fn RegisterEventType() i32 {
        return C.QEvent_RegisterEventType();
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    /// ``` hint: i32 ```
    pub fn RegisterEventType1(hint: i32) i32 {
        return C.QEvent_RegisterEventType1(@intCast(hint));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTimerEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTimerEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTimerEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTimerEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTimerEvent, slot: fn (?*C.QTimerEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QTimerEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTimerEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTimerEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qchildevent.html
pub const qchildevent = struct {
    /// New constructs a new QChildEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, child: ?*C.QObject ```
    pub fn New(typeVal: i64, child: ?*anyopaque) ?*C.QChildEvent {
        return C.QChildEvent_new(@intCast(typeVal), @ptrCast(child));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qchildevent.html#clone)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QChildEvent {
        return C.QChildEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QChildEvent, slot: fn () callconv(.c) ?*C.QChildEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QChildEvent) void {
        C.QChildEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QChildEvent {
        return C.QChildEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qchildevent.html#child)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Child(self: ?*anyopaque) ?*C.QObject {
        return C.QChildEvent_Child(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qchildevent.html#added)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Added(self: ?*anyopaque) bool {
        return C.QChildEvent_Added(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qchildevent.html#polished)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Polished(self: ?*anyopaque) bool {
        return C.QChildEvent_Polished(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qchildevent.html#removed)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Removed(self: ?*anyopaque) bool {
        return C.QChildEvent_Removed(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn IsSinglePointEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsSinglePointEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    ///
    pub fn RegisterEventType() i32 {
        return C.QEvent_RegisterEventType();
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    /// ``` hint: i32 ```
    pub fn RegisterEventType1(hint: i32) i32 {
        return C.QEvent_RegisterEventType1(@intCast(hint));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QChildEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QChildEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QChildEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QChildEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QChildEvent, slot: fn (?*C.QChildEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QChildEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QChildEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QChildEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdynamicpropertychangeevent.html
pub const qdynamicpropertychangeevent = struct {
    /// New constructs a new QDynamicPropertyChangeEvent object.
    ///
    /// ``` name: []u8 ```
    pub fn New(name: []u8) ?*C.QDynamicPropertyChangeEvent {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };

        return C.QDynamicPropertyChangeEvent_new(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdynamicpropertychangeevent.html#clone)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QDynamicPropertyChangeEvent {
        return C.QDynamicPropertyChangeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent, slot: fn () callconv(.c) ?*C.QDynamicPropertyChangeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QDynamicPropertyChangeEvent) void {
        C.QDynamicPropertyChangeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QDynamicPropertyChangeEvent {
        return C.QDynamicPropertyChangeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdynamicpropertychangeevent.html#propertyName)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent, allocator: std.mem.Allocator ```
    pub fn PropertyName(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QDynamicPropertyChangeEvent_PropertyName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn IsSinglePointEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsSinglePointEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    ///
    pub fn RegisterEventType() i32 {
        return C.QEvent_RegisterEventType();
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#registerEventType)
    ///
    /// ``` hint: i32 ```
    pub fn RegisterEventType1(hint: i32) i32 {
        return C.QEvent_RegisterEventType1(@intCast(hint));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDynamicPropertyChangeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDynamicPropertyChangeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent, slot: fn (?*C.QDynamicPropertyChangeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QDynamicPropertyChangeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDynamicPropertyChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDynamicPropertyChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcoreevent.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const None: i32 = 0;
        pub const Timer: i32 = 1;
        pub const MouseButtonPress: i32 = 2;
        pub const MouseButtonRelease: i32 = 3;
        pub const MouseButtonDblClick: i32 = 4;
        pub const MouseMove: i32 = 5;
        pub const KeyPress: i32 = 6;
        pub const KeyRelease: i32 = 7;
        pub const FocusIn: i32 = 8;
        pub const FocusOut: i32 = 9;
        pub const FocusAboutToChange: i32 = 23;
        pub const Enter: i32 = 10;
        pub const Leave: i32 = 11;
        pub const Paint: i32 = 12;
        pub const Move: i32 = 13;
        pub const Resize: i32 = 14;
        pub const Create: i32 = 15;
        pub const Destroy: i32 = 16;
        pub const Show: i32 = 17;
        pub const Hide: i32 = 18;
        pub const Close: i32 = 19;
        pub const Quit: i32 = 20;
        pub const ParentChange: i32 = 21;
        pub const ParentAboutToChange: i32 = 131;
        pub const ThreadChange: i32 = 22;
        pub const WindowActivate: i32 = 24;
        pub const WindowDeactivate: i32 = 25;
        pub const ShowToParent: i32 = 26;
        pub const HideToParent: i32 = 27;
        pub const Wheel: i32 = 31;
        pub const WindowTitleChange: i32 = 33;
        pub const WindowIconChange: i32 = 34;
        pub const ApplicationWindowIconChange: i32 = 35;
        pub const ApplicationFontChange: i32 = 36;
        pub const ApplicationLayoutDirectionChange: i32 = 37;
        pub const ApplicationPaletteChange: i32 = 38;
        pub const PaletteChange: i32 = 39;
        pub const Clipboard: i32 = 40;
        pub const Speech: i32 = 42;
        pub const MetaCall: i32 = 43;
        pub const SockAct: i32 = 50;
        pub const WinEventAct: i32 = 132;
        pub const DeferredDelete: i32 = 52;
        pub const DragEnter: i32 = 60;
        pub const DragMove: i32 = 61;
        pub const DragLeave: i32 = 62;
        pub const Drop: i32 = 63;
        pub const DragResponse: i32 = 64;
        pub const ChildAdded: i32 = 68;
        pub const ChildPolished: i32 = 69;
        pub const ChildRemoved: i32 = 71;
        pub const ShowWindowRequest: i32 = 73;
        pub const PolishRequest: i32 = 74;
        pub const Polish: i32 = 75;
        pub const LayoutRequest: i32 = 76;
        pub const UpdateRequest: i32 = 77;
        pub const UpdateLater: i32 = 78;
        pub const EmbeddingControl: i32 = 79;
        pub const ActivateControl: i32 = 80;
        pub const DeactivateControl: i32 = 81;
        pub const ContextMenu: i32 = 82;
        pub const InputMethod: i32 = 83;
        pub const TabletMove: i32 = 87;
        pub const LocaleChange: i32 = 88;
        pub const LanguageChange: i32 = 89;
        pub const LayoutDirectionChange: i32 = 90;
        pub const Style: i32 = 91;
        pub const TabletPress: i32 = 92;
        pub const TabletRelease: i32 = 93;
        pub const OkRequest: i32 = 94;
        pub const HelpRequest: i32 = 95;
        pub const IconDrag: i32 = 96;
        pub const FontChange: i32 = 97;
        pub const EnabledChange: i32 = 98;
        pub const ActivationChange: i32 = 99;
        pub const StyleChange: i32 = 100;
        pub const IconTextChange: i32 = 101;
        pub const ModifiedChange: i32 = 102;
        pub const MouseTrackingChange: i32 = 109;
        pub const WindowBlocked: i32 = 103;
        pub const WindowUnblocked: i32 = 104;
        pub const WindowStateChange: i32 = 105;
        pub const ReadOnlyChange: i32 = 106;
        pub const ToolTip: i32 = 110;
        pub const WhatsThis: i32 = 111;
        pub const StatusTip: i32 = 112;
        pub const ActionChanged: i32 = 113;
        pub const ActionAdded: i32 = 114;
        pub const ActionRemoved: i32 = 115;
        pub const FileOpen: i32 = 116;
        pub const Shortcut: i32 = 117;
        pub const ShortcutOverride: i32 = 51;
        pub const WhatsThisClicked: i32 = 118;
        pub const ToolBarChange: i32 = 120;
        pub const ApplicationActivate: i32 = 121;
        pub const ApplicationActivated: i32 = 121;
        pub const ApplicationDeactivate: i32 = 122;
        pub const ApplicationDeactivated: i32 = 122;
        pub const QueryWhatsThis: i32 = 123;
        pub const EnterWhatsThisMode: i32 = 124;
        pub const LeaveWhatsThisMode: i32 = 125;
        pub const ZOrderChange: i32 = 126;
        pub const HoverEnter: i32 = 127;
        pub const HoverLeave: i32 = 128;
        pub const HoverMove: i32 = 129;
        pub const AcceptDropsChange: i32 = 152;
        pub const ZeroTimerEvent: i32 = 154;
        pub const GraphicsSceneMouseMove: i32 = 155;
        pub const GraphicsSceneMousePress: i32 = 156;
        pub const GraphicsSceneMouseRelease: i32 = 157;
        pub const GraphicsSceneMouseDoubleClick: i32 = 158;
        pub const GraphicsSceneContextMenu: i32 = 159;
        pub const GraphicsSceneHoverEnter: i32 = 160;
        pub const GraphicsSceneHoverMove: i32 = 161;
        pub const GraphicsSceneHoverLeave: i32 = 162;
        pub const GraphicsSceneHelp: i32 = 163;
        pub const GraphicsSceneDragEnter: i32 = 164;
        pub const GraphicsSceneDragMove: i32 = 165;
        pub const GraphicsSceneDragLeave: i32 = 166;
        pub const GraphicsSceneDrop: i32 = 167;
        pub const GraphicsSceneWheel: i32 = 168;
        pub const GraphicsSceneLeave: i32 = 220;
        pub const KeyboardLayoutChange: i32 = 169;
        pub const DynamicPropertyChange: i32 = 170;
        pub const TabletEnterProximity: i32 = 171;
        pub const TabletLeaveProximity: i32 = 172;
        pub const NonClientAreaMouseMove: i32 = 173;
        pub const NonClientAreaMouseButtonPress: i32 = 174;
        pub const NonClientAreaMouseButtonRelease: i32 = 175;
        pub const NonClientAreaMouseButtonDblClick: i32 = 176;
        pub const MacSizeChange: i32 = 177;
        pub const ContentsRectChange: i32 = 178;
        pub const MacGLWindowChange: i32 = 179;
        pub const FutureCallOut: i32 = 180;
        pub const GraphicsSceneResize: i32 = 181;
        pub const GraphicsSceneMove: i32 = 182;
        pub const CursorChange: i32 = 183;
        pub const ToolTipChange: i32 = 184;
        pub const NetworkReplyUpdated: i32 = 185;
        pub const GrabMouse: i32 = 186;
        pub const UngrabMouse: i32 = 187;
        pub const GrabKeyboard: i32 = 188;
        pub const UngrabKeyboard: i32 = 189;
        pub const StateMachineSignal: i32 = 192;
        pub const StateMachineWrapped: i32 = 193;
        pub const TouchBegin: i32 = 194;
        pub const TouchUpdate: i32 = 195;
        pub const TouchEnd: i32 = 196;
        pub const NativeGesture: i32 = 197;
        pub const RequestSoftwareInputPanel: i32 = 199;
        pub const CloseSoftwareInputPanel: i32 = 200;
        pub const WinIdChange: i32 = 203;
        pub const Gesture: i32 = 198;
        pub const GestureOverride: i32 = 202;
        pub const ScrollPrepare: i32 = 204;
        pub const Scroll: i32 = 205;
        pub const Expose: i32 = 206;
        pub const InputMethodQuery: i32 = 207;
        pub const OrientationChange: i32 = 208;
        pub const TouchCancel: i32 = 209;
        pub const ThemeChange: i32 = 210;
        pub const SockClose: i32 = 211;
        pub const PlatformPanel: i32 = 212;
        pub const StyleAnimationUpdate: i32 = 213;
        pub const ApplicationStateChange: i32 = 214;
        pub const WindowChangeInternal: i32 = 215;
        pub const ScreenChangeInternal: i32 = 216;
        pub const PlatformSurface: i32 = 217;
        pub const Pointer: i32 = 218;
        pub const TabletTrackingChange: i32 = 219;
        pub const WindowAboutToChangeInternal: i32 = 221;
        pub const User: i32 = 1000;
        pub const MaxUser: i32 = 65535;
    };
};
