const C = @import("qt6c");
const qevent_enums = enums;
const qinputdevice_enums = @import("libqinputdevice.zig").enums;
const qkeysequence_enums = @import("libqkeysequence.zig").enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qpointingdevice_enums = @import("libqpointingdevice.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qinputevent.html
pub const qinputevent = struct {
    /// New constructs a new QInputEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, m_dev: ?*C.QInputDevice ```
    pub fn New(typeVal: i64, m_dev: ?*anyopaque) ?*C.QInputEvent {
        return C.QInputEvent_new(@intCast(typeVal), @ptrCast(m_dev));
    }

    /// New2 constructs a new QInputEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, m_dev: ?*C.QInputDevice, modifiers: i32 ```
    pub fn New2(typeVal: i64, m_dev: ?*anyopaque, modifiers: i64) ?*C.QInputEvent {
        return C.QInputEvent_new2(@intCast(typeVal), @ptrCast(m_dev), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#clone)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QInputEvent {
        return C.QInputEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QInputEvent, slot: fn () callconv(.c) ?*C.QInputEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QInputEvent) void {
        C.QInputEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QInputEvent {
        return C.QInputEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QInputEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QInputEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QInputEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QInputEvent, slot: fn (?*C.QInputEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QInputEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QInputEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QInputEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QInputEvent ```
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
    /// ``` self: ?*C.QInputEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputEvent, slot: fn (?*C.QInputEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QInputEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QInputEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QInputEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpointerevent.html
pub const qpointerevent = struct {
    /// New constructs a new QPointerEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, dev: ?*C.QPointingDevice ```
    pub fn New(typeVal: i64, dev: ?*anyopaque) ?*C.QPointerEvent {
        return C.QPointerEvent_new(@intCast(typeVal), @ptrCast(dev));
    }

    /// New2 constructs a new QPointerEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, dev: ?*C.QPointingDevice, modifiers: i32 ```
    pub fn New2(typeVal: i64, dev: ?*anyopaque, modifiers: i64) ?*C.QPointerEvent {
        return C.QPointerEvent_new2(@intCast(typeVal), @ptrCast(dev), @intCast(modifiers));
    }

    /// New3 constructs a new QPointerEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, dev: ?*C.QPointingDevice, modifiers: i32, points: []?*C.QEventPoint ```
    pub fn New3(typeVal: i64, dev: ?*anyopaque, modifiers: i64, points: []?*C.QEventPoint) ?*C.QPointerEvent {
        const points_list = C.struct_libqt_list{
            .len = points.len,
            .data = @ptrCast(points.ptr),
        };

        return C.QPointerEvent_new3(@intCast(typeVal), @ptrCast(dev), @intCast(modifiers), points_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clone)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QPointerEvent {
        return C.QPointerEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn () callconv(.c) ?*C.QPointerEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPointerEvent) void {
        C.QPointerEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QPointerEvent {
        return C.QPointerEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QPointerEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QPointerEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn (?*C.QPointerEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QPointerEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QPointerEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QPointerEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QPointerEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QPointerEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#isBeginEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QPointerEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#isUpdateEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QPointerEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#isEndEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_IsEndEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QPointerEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QPointerEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// ``` self: ?*C.QPointerEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPointerEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPointerEvent, slot: fn (?*C.QPointerEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QPointerEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPointerEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPointerEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QPointerEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QPointerEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QPointerEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QPointerEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QPointerEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QPointerEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QPointerEvent ```
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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPointerEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPointerEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsinglepointevent.html
pub const qsinglepointevent = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QSinglePointEvent_IsBeginEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isUpdateEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QSinglePointEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QSinglePointEvent_IsEndEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QSinglePointEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QPointerEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QSinglePointEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QSinglePointEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QSinglePointEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// ``` self: ?*C.QSinglePointEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPointerEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QSinglePointEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QSinglePointEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QSinglePointEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSinglePointEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSinglePointEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qenterevent.html
pub const qenterevent = struct {
    /// New constructs a new QEnterEvent object.
    ///
    /// ``` localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF ```
    pub fn New(localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque) ?*C.QEnterEvent {
        return C.QEnterEvent_new(@ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos));
    }

    /// New2 constructs a new QEnterEvent object.
    ///
    /// ``` localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, device: ?*C.QPointingDevice ```
    pub fn New2(localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, device: ?*anyopaque) ?*C.QEnterEvent {
        return C.QEnterEvent_new2(@ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#clone)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEnterEvent {
        return C.QEnterEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn () callconv(.c) ?*C.QEnterEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEnterEvent) void {
        C.QEnterEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEnterEvent {
        return C.QEnterEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#pos)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QEnterEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#globalPos)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QEnterEvent_GlobalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#x)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QEnterEvent_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#y)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QEnterEvent_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#globalX)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn GlobalX(self: ?*anyopaque) i32 {
        return C.QEnterEvent_GlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#globalY)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn GlobalY(self: ?*anyopaque) i32 {
        return C.QEnterEvent_GlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#localPos)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn LocalPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEnterEvent_LocalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#windowPos)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn WindowPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEnterEvent_WindowPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qenterevent.html#screenPos)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEnterEvent_ScreenPos(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QEnterEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QEnterEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QEnterEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QEnterEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QEnterEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QEnterEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QEnterEvent ```
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

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QEnterEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isUpdateEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QEnterEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_IsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QEnterEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QEnterEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QEnterEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QEnterEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn (?*C.QEnterEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QEnterEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QEnterEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QEnterEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QEnterEvent, slot: fn (?*C.QEnterEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QEnterEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QEnterEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QEnterEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmouseevent.html
pub const qmouseevent = struct {
    /// New constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32 ```
    pub fn New(typeVal: i64, localPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64) ?*C.QMouseEvent {
        return C.QMouseEvent_new(@intCast(typeVal), @ptrCast(localPos), @intCast(button), @intCast(buttons), @intCast(modifiers));
    }

    /// New2 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32 ```
    pub fn New2(typeVal: i64, localPos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64) ?*C.QMouseEvent {
        return C.QMouseEvent_new2(@intCast(typeVal), @ptrCast(localPos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers));
    }

    /// New3 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32 ```
    pub fn New3(typeVal: i64, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64) ?*C.QMouseEvent {
        return C.QMouseEvent_new3(@intCast(typeVal), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers));
    }

    /// New4 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32, source: qnamespace_enums.MouseEventSource ```
    pub fn New4(typeVal: i64, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64, source: i64) ?*C.QMouseEvent {
        return C.QMouseEvent_new4(@intCast(typeVal), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers), @intCast(source));
    }

    /// New5 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32, device: ?*C.QPointingDevice ```
    pub fn New5(typeVal: i64, localPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64, device: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_new5(@intCast(typeVal), @ptrCast(localPos), @intCast(button), @intCast(buttons), @intCast(modifiers), @ptrCast(device));
    }

    /// New6 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32, device: ?*C.QPointingDevice ```
    pub fn New6(typeVal: i64, localPos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64, device: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_new6(@intCast(typeVal), @ptrCast(localPos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers), @ptrCast(device));
    }

    /// New7 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32, device: ?*C.QPointingDevice ```
    pub fn New7(typeVal: i64, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64, device: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_new7(@intCast(typeVal), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers), @ptrCast(device));
    }

    /// New8 constructs a new QMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, button: qnamespace_enums.MouseButton, buttons: i32, modifiers: i32, source: qnamespace_enums.MouseEventSource, device: ?*C.QPointingDevice ```
    pub fn New8(typeVal: i64, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, button: i64, buttons: i64, modifiers: i64, source: i64, device: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_new8(@intCast(typeVal), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @intCast(button), @intCast(buttons), @intCast(modifiers), @intCast(source), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#clone)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn () callconv(.c) ?*C.QMouseEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QMouseEvent) void {
        C.QMouseEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QMouseEvent {
        return C.QMouseEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#pos)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QMouseEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#globalPos)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QMouseEvent_GlobalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#x)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QMouseEvent_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#y)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QMouseEvent_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#globalX)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn GlobalX(self: ?*anyopaque) i32 {
        return C.QMouseEvent_GlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#globalY)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn GlobalY(self: ?*anyopaque) i32 {
        return C.QMouseEvent_GlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#localPos)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn LocalPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QMouseEvent_LocalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#windowPos)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn WindowPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QMouseEvent_WindowPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#screenPos)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QMouseEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#source)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Source(self: ?*anyopaque) i64 {
        return C.QMouseEvent_Source(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmouseevent.html#flags)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QMouseEvent_Flags(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QMouseEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QMouseEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QMouseEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QMouseEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QMouseEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QMouseEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QMouseEvent ```
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

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QMouseEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isUpdateEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QMouseEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_IsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QMouseEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QMouseEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QMouseEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QMouseEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn (?*C.QMouseEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QMouseEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QMouseEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QMouseEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMouseEvent, slot: fn (?*C.QMouseEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QMouseEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMouseEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMouseEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qhoverevent.html
pub const qhoverevent = struct {
    /// New constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, oldPos: ?*C.QPointF ```
    pub fn New(typeVal: i64, scenePos: ?*anyopaque, globalPos: ?*anyopaque, oldPos: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_new(@intCast(typeVal), @ptrCast(scenePos), @ptrCast(globalPos), @ptrCast(oldPos));
    }

    /// New2 constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, pos: ?*C.QPointF, oldPos: ?*C.QPointF ```
    pub fn New2(typeVal: i64, pos: ?*anyopaque, oldPos: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_new2(@intCast(typeVal), @ptrCast(pos), @ptrCast(oldPos));
    }

    /// New3 constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, oldPos: ?*C.QPointF, modifiers: i32 ```
    pub fn New3(typeVal: i64, scenePos: ?*anyopaque, globalPos: ?*anyopaque, oldPos: ?*anyopaque, modifiers: i64) ?*C.QHoverEvent {
        return C.QHoverEvent_new3(@intCast(typeVal), @ptrCast(scenePos), @ptrCast(globalPos), @ptrCast(oldPos), @intCast(modifiers));
    }

    /// New4 constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, oldPos: ?*C.QPointF, modifiers: i32, device: ?*C.QPointingDevice ```
    pub fn New4(typeVal: i64, scenePos: ?*anyopaque, globalPos: ?*anyopaque, oldPos: ?*anyopaque, modifiers: i64, device: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_new4(@intCast(typeVal), @ptrCast(scenePos), @ptrCast(globalPos), @ptrCast(oldPos), @intCast(modifiers), @ptrCast(device));
    }

    /// New5 constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, pos: ?*C.QPointF, oldPos: ?*C.QPointF, modifiers: i32 ```
    pub fn New5(typeVal: i64, pos: ?*anyopaque, oldPos: ?*anyopaque, modifiers: i64) ?*C.QHoverEvent {
        return C.QHoverEvent_new5(@intCast(typeVal), @ptrCast(pos), @ptrCast(oldPos), @intCast(modifiers));
    }

    /// New6 constructs a new QHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, pos: ?*C.QPointF, oldPos: ?*C.QPointF, modifiers: i32, device: ?*C.QPointingDevice ```
    pub fn New6(typeVal: i64, pos: ?*anyopaque, oldPos: ?*anyopaque, modifiers: i64, device: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_new6(@intCast(typeVal), @ptrCast(pos), @ptrCast(oldPos), @intCast(modifiers), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#clone)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn () callconv(.c) ?*C.QHoverEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QHoverEvent) void {
        C.QHoverEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QHoverEvent {
        return C.QHoverEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#pos)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QHoverEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#posF)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn PosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QHoverEvent_PosF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#isUpdateEvent)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QHoverEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#oldPos)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn OldPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QHoverEvent_OldPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhoverevent.html#oldPosF)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn OldPosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QHoverEvent_OldPosF(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QHoverEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QHoverEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QHoverEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QHoverEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QHoverEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QHoverEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QHoverEvent ```
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

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QHoverEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_IsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QHoverEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QHoverEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QHoverEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QHoverEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn (?*C.QHoverEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QHoverEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHoverEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHoverEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHoverEvent, slot: fn (?*C.QHoverEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QHoverEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHoverEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHoverEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwheelevent.html
pub const qwheelevent = struct {
    /// New constructs a new QWheelEvent object.
    ///
    /// ``` pos: ?*C.QPointF, globalPos: ?*C.QPointF, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i32, modifiers: i32, phase: qnamespace_enums.ScrollPhase, inverted: bool ```
    pub fn New(pos: ?*anyopaque, globalPos: ?*anyopaque, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i64, modifiers: i64, phase: i64, inverted: bool) ?*C.QWheelEvent {
        return C.QWheelEvent_new(@ptrCast(pos), @ptrCast(globalPos), @ptrCast(pixelDelta), @ptrCast(angleDelta), @intCast(buttons), @intCast(modifiers), @intCast(phase), inverted);
    }

    /// New2 constructs a new QWheelEvent object.
    ///
    /// ``` pos: ?*C.QPointF, globalPos: ?*C.QPointF, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i32, modifiers: i32, phase: qnamespace_enums.ScrollPhase, inverted: bool, source: qnamespace_enums.MouseEventSource ```
    pub fn New2(pos: ?*anyopaque, globalPos: ?*anyopaque, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i64, modifiers: i64, phase: i64, inverted: bool, source: i64) ?*C.QWheelEvent {
        return C.QWheelEvent_new2(@ptrCast(pos), @ptrCast(globalPos), @ptrCast(pixelDelta), @ptrCast(angleDelta), @intCast(buttons), @intCast(modifiers), @intCast(phase), inverted, @intCast(source));
    }

    /// New3 constructs a new QWheelEvent object.
    ///
    /// ``` pos: ?*C.QPointF, globalPos: ?*C.QPointF, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i32, modifiers: i32, phase: qnamespace_enums.ScrollPhase, inverted: bool, source: qnamespace_enums.MouseEventSource, device: ?*C.QPointingDevice ```
    pub fn New3(pos: ?*anyopaque, globalPos: ?*anyopaque, pixelDelta: ?*C.QPoint, angleDelta: ?*C.QPoint, buttons: i64, modifiers: i64, phase: i64, inverted: bool, source: i64, device: ?*anyopaque) ?*C.QWheelEvent {
        return C.QWheelEvent_new3(@ptrCast(pos), @ptrCast(globalPos), @ptrCast(pixelDelta), @ptrCast(angleDelta), @intCast(buttons), @intCast(modifiers), @intCast(phase), inverted, @intCast(source), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#clone)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QWheelEvent {
        return C.QWheelEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn () callconv(.c) ?*C.QWheelEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWheelEvent) void {
        C.QWheelEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QWheelEvent {
        return C.QWheelEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#pixelDelta)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn PixelDelta(self: ?*anyopaque) ?*C.QPoint {
        return C.QWheelEvent_PixelDelta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#angleDelta)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn AngleDelta(self: ?*anyopaque) ?*C.QPoint {
        return C.QWheelEvent_AngleDelta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#phase)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Phase(self: ?*anyopaque) i64 {
        return C.QWheelEvent_Phase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#inverted)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Inverted(self: ?*anyopaque) bool {
        return C.QWheelEvent_Inverted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#isInverted)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsInverted(self: ?*anyopaque) bool {
        return C.QWheelEvent_IsInverted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#hasPixelDelta)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn HasPixelDelta(self: ?*anyopaque) bool {
        return C.QWheelEvent_HasPixelDelta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#isBeginEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWheelEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#isUpdateEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWheelEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#isEndEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_IsEndEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QWheelEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QWheelEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwheelevent.html#source)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Source(self: ?*anyopaque) i64 {
        return C.QWheelEvent_Source(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QWheelEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QWheelEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QWheelEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QWheelEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QWheelEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QWheelEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QWheelEvent ```
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

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QWheelEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QWheelEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn (?*C.QWheelEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QWheelEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWheelEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWheelEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWheelEvent, slot: fn (?*C.QWheelEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QWheelEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWheelEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWheelEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtabletevent.html
pub const qtabletevent = struct {
    /// New constructs a new QTabletEvent object.
    ///
    /// ``` t: qevent_enums.Type, device: ?*C.QPointingDevice, pos: ?*C.QPointF, globalPos: ?*C.QPointF, pressure: f64, xTilt: f32, yTilt: f32, tangentialPressure: f32, rotation: f64, z: f32, keyState: i32, button: qnamespace_enums.MouseButton, buttons: i32 ```
    pub fn New(t: i64, device: ?*anyopaque, pos: ?*anyopaque, globalPos: ?*anyopaque, pressure: f64, xTilt: f32, yTilt: f32, tangentialPressure: f32, rotation: f64, z: f32, keyState: i64, button: i64, buttons: i64) ?*C.QTabletEvent {
        return C.QTabletEvent_new(@intCast(t), @ptrCast(device), @ptrCast(pos), @ptrCast(globalPos), @floatCast(pressure), @floatCast(xTilt), @floatCast(yTilt), @floatCast(tangentialPressure), @floatCast(rotation), @floatCast(z), @intCast(keyState), @intCast(button), @intCast(buttons));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#clone)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QTabletEvent {
        return C.QTabletEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn () callconv(.c) ?*C.QTabletEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QTabletEvent) void {
        C.QTabletEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QTabletEvent {
        return C.QTabletEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#pos)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QTabletEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#globalPos)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QTabletEvent_GlobalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#posF)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn PosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QTabletEvent_PosF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#globalPosF)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn GlobalPosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QTabletEvent_GlobalPosF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#x)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QTabletEvent_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#y)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QTabletEvent_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#globalX)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn GlobalX(self: ?*anyopaque) i32 {
        return C.QTabletEvent_GlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#globalY)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn GlobalY(self: ?*anyopaque) i32 {
        return C.QTabletEvent_GlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#hiResGlobalX)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn HiResGlobalX(self: ?*anyopaque) f64 {
        return C.QTabletEvent_HiResGlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#hiResGlobalY)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn HiResGlobalY(self: ?*anyopaque) f64 {
        return C.QTabletEvent_HiResGlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#uniqueId)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn UniqueId(self: ?*anyopaque) i64 {
        return C.QTabletEvent_UniqueId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#pressure)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Pressure(self: ?*anyopaque) f64 {
        return C.QTabletEvent_Pressure(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#rotation)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Rotation(self: ?*anyopaque) f64 {
        return C.QTabletEvent_Rotation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#z)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Z(self: ?*anyopaque) f64 {
        return C.QTabletEvent_Z(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#tangentialPressure)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn TangentialPressure(self: ?*anyopaque) f64 {
        return C.QTabletEvent_TangentialPressure(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#xTilt)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn XTilt(self: ?*anyopaque) f64 {
        return C.QTabletEvent_XTilt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtabletevent.html#yTilt)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn YTilt(self: ?*anyopaque) f64 {
        return C.QTabletEvent_YTilt(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QTabletEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QTabletEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QTabletEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QTabletEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QTabletEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QTabletEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QTabletEvent ```
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

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTabletEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isUpdateEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTabletEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_IsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QTabletEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTabletEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QTabletEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QTabletEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn (?*C.QTabletEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QTabletEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTabletEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTabletEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTabletEvent, slot: fn (?*C.QTabletEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QTabletEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTabletEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTabletEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnativegestureevent.html
pub const qnativegestureevent = struct {
    /// New constructs a new QNativeGestureEvent object.
    ///
    /// ``` typeVal: qnamespace_enums.NativeGestureType, dev: ?*C.QPointingDevice, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, value: f64, sequenceId: u64, intArgument: u64 ```
    pub fn New(typeVal: i64, dev: ?*anyopaque, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, value: f64, sequenceId: u64, intArgument: u64) ?*C.QNativeGestureEvent {
        return C.QNativeGestureEvent_new(@intCast(typeVal), @ptrCast(dev), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @floatCast(value), @intCast(sequenceId), @intCast(intArgument));
    }

    /// New2 constructs a new QNativeGestureEvent object.
    ///
    /// ``` typeVal: qnamespace_enums.NativeGestureType, dev: ?*C.QPointingDevice, fingerCount: i32, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, value: f64, delta: ?*C.QPointF ```
    pub fn New2(typeVal: i64, dev: ?*anyopaque, fingerCount: i32, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, value: f64, delta: ?*anyopaque) ?*C.QNativeGestureEvent {
        return C.QNativeGestureEvent_new2(@intCast(typeVal), @ptrCast(dev), @intCast(fingerCount), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @floatCast(value), @ptrCast(delta));
    }

    /// New3 constructs a new QNativeGestureEvent object.
    ///
    /// ``` typeVal: qnamespace_enums.NativeGestureType, dev: ?*C.QPointingDevice, fingerCount: i32, localPos: ?*C.QPointF, scenePos: ?*C.QPointF, globalPos: ?*C.QPointF, value: f64, delta: ?*C.QPointF, sequenceId: u64 ```
    pub fn New3(typeVal: i64, dev: ?*anyopaque, fingerCount: i32, localPos: ?*anyopaque, scenePos: ?*anyopaque, globalPos: ?*anyopaque, value: f64, delta: ?*anyopaque, sequenceId: u64) ?*C.QNativeGestureEvent {
        return C.QNativeGestureEvent_new3(@intCast(typeVal), @ptrCast(dev), @intCast(fingerCount), @ptrCast(localPos), @ptrCast(scenePos), @ptrCast(globalPos), @floatCast(value), @ptrCast(delta), @intCast(sequenceId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#clone)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QNativeGestureEvent {
        return C.QNativeGestureEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn () callconv(.c) ?*C.QNativeGestureEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QNativeGestureEvent) void {
        C.QNativeGestureEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QNativeGestureEvent {
        return C.QNativeGestureEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#gestureType)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn GestureType(self: ?*anyopaque) i64 {
        return C.QNativeGestureEvent_GestureType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#fingerCount)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn FingerCount(self: ?*anyopaque) i32 {
        return C.QNativeGestureEvent_FingerCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#value)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Value(self: ?*anyopaque) f64 {
        return C.QNativeGestureEvent_Value(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#delta)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Delta(self: ?*anyopaque) ?*C.QPointF {
        return C.QNativeGestureEvent_Delta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#pos)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QNativeGestureEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#globalPos)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QNativeGestureEvent_GlobalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#localPos)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn LocalPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QNativeGestureEvent_LocalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#windowPos)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn WindowPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QNativeGestureEvent_WindowPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnativegestureevent.html#screenPos)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QNativeGestureEvent_ScreenPos(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#button)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Button(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#buttons)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QSinglePointEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#position)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_Position(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#scenePosition)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_ScenePosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#globalPosition)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QSinglePointEvent_GlobalPosition(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#exclusivePointGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn ExclusivePointGrabber(self: ?*anyopaque) ?*C.QObject {
        return C.QSinglePointEvent_ExclusivePointGrabber(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#setExclusivePointGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusivePointGrabber(self: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QSinglePointEvent_SetExclusivePointGrabber(@ptrCast(self), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QNativeGestureEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
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

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isBeginEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QNativeGestureEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isUpdateEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QNativeGestureEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qsinglepointevent.html#isEndEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_IsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QNativeGestureEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QSinglePointEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QNativeGestureEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QNativeGestureEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QNativeGestureEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn (?*C.QNativeGestureEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QNativeGestureEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QNativeGestureEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QNativeGestureEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QNativeGestureEvent, slot: fn (?*C.QNativeGestureEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QNativeGestureEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNativeGestureEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNativeGestureEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qkeyevent.html
pub const qkeyevent = struct {
    /// New constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32 ```
    pub fn New(typeVal: i64, key: i32, modifiers: i64) ?*C.QKeyEvent {
        return C.QKeyEvent_new(@intCast(typeVal), @intCast(key), @intCast(modifiers));
    }

    /// New2 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32 ```
    pub fn New2(typeVal: i64, key: i32, modifiers: i64, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32) ?*C.QKeyEvent {
        return C.QKeyEvent_new2(@intCast(typeVal), @intCast(key), @intCast(modifiers), @intCast(nativeScanCode), @intCast(nativeVirtualKey), @intCast(nativeModifiers));
    }

    /// New3 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, text: []const u8 ```
    pub fn New3(typeVal: i64, key: i32, modifiers: i64, text: []const u8) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new3(@intCast(typeVal), @intCast(key), @intCast(modifiers), text_str);
    }

    /// New4 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, text: []const u8, autorep: bool ```
    pub fn New4(typeVal: i64, key: i32, modifiers: i64, text: []const u8, autorep: bool) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new4(@intCast(typeVal), @intCast(key), @intCast(modifiers), text_str, autorep);
    }

    /// New5 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, text: []const u8, autorep: bool, count: u16 ```
    pub fn New5(typeVal: i64, key: i32, modifiers: i64, text: []const u8, autorep: bool, count: u16) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new5(@intCast(typeVal), @intCast(key), @intCast(modifiers), text_str, autorep, @intCast(count));
    }

    /// New6 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8 ```
    pub fn New6(typeVal: i64, key: i32, modifiers: i64, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new6(@intCast(typeVal), @intCast(key), @intCast(modifiers), @intCast(nativeScanCode), @intCast(nativeVirtualKey), @intCast(nativeModifiers), text_str);
    }

    /// New7 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool ```
    pub fn New7(typeVal: i64, key: i32, modifiers: i64, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new7(@intCast(typeVal), @intCast(key), @intCast(modifiers), @intCast(nativeScanCode), @intCast(nativeVirtualKey), @intCast(nativeModifiers), text_str, autorep);
    }

    /// New8 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool, count: u16 ```
    pub fn New8(typeVal: i64, key: i32, modifiers: i64, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool, count: u16) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new8(@intCast(typeVal), @intCast(key), @intCast(modifiers), @intCast(nativeScanCode), @intCast(nativeVirtualKey), @intCast(nativeModifiers), text_str, autorep, @intCast(count));
    }

    /// New9 constructs a new QKeyEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, key: i32, modifiers: i32, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool, count: u16, device: ?*C.QInputDevice ```
    pub fn New9(typeVal: i64, key: i32, modifiers: i64, nativeScanCode: u32, nativeVirtualKey: u32, nativeModifiers: u32, text: []const u8, autorep: bool, count: u16, device: ?*anyopaque) ?*C.QKeyEvent {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QKeyEvent_new9(@intCast(typeVal), @intCast(key), @intCast(modifiers), @intCast(nativeScanCode), @intCast(nativeVirtualKey), @intCast(nativeModifiers), text_str, autorep, @intCast(count), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#clone)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QKeyEvent {
        return C.QKeyEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QKeyEvent, slot: fn () callconv(.c) ?*C.QKeyEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QKeyEvent) void {
        C.QKeyEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QKeyEvent {
        return C.QKeyEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#key)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Key(self: ?*anyopaque) i32 {
        return C.QKeyEvent_Key(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#matches)
    ///
    /// ``` self: ?*C.QKeyEvent, key: qkeysequence_enums.StandardKey ```
    pub fn Matches(self: ?*anyopaque, key: i64) bool {
        return C.QKeyEvent_Matches(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#modifiers)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QKeyEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#keyCombination)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn KeyCombination(self: ?*anyopaque) ?*C.QKeyCombination {
        return C.QKeyEvent_KeyCombination(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#text)
    ///
    /// ``` self: ?*C.QKeyEvent, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QKeyEvent_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#isAutoRepeat)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn IsAutoRepeat(self: ?*anyopaque) bool {
        return C.QKeyEvent_IsAutoRepeat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#count)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Count(self: ?*anyopaque) i32 {
        return C.QKeyEvent_Count(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#nativeScanCode)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn NativeScanCode(self: ?*anyopaque) u32 {
        return C.QKeyEvent_NativeScanCode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#nativeVirtualKey)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn NativeVirtualKey(self: ?*anyopaque) u32 {
        return C.QKeyEvent_NativeVirtualKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qkeyevent.html#nativeModifiers)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn NativeModifiers(self: ?*anyopaque) u32 {
        return C.QKeyEvent_NativeModifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QKeyEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QKeyEvent ```
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

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QKeyEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QInputEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QKeyEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QInputEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, slot: fn (?*C.QKeyEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QKeyEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QKeyEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QKeyEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QKeyEvent, slot: fn (?*C.QKeyEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QKeyEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QKeyEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QKeyEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qfocusevent.html
pub const qfocusevent = struct {
    /// New constructs a new QFocusEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New(typeVal: i64) ?*C.QFocusEvent {
        return C.QFocusEvent_new(@intCast(typeVal));
    }

    /// New2 constructs a new QFocusEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, reason: qnamespace_enums.FocusReason ```
    pub fn New2(typeVal: i64, reason: i64) ?*C.QFocusEvent {
        return C.QFocusEvent_new2(@intCast(typeVal), @intCast(reason));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfocusevent.html#clone)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QFocusEvent {
        return C.QFocusEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QFocusEvent, slot: fn () callconv(.c) ?*C.QFocusEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QFocusEvent) void {
        C.QFocusEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QFocusEvent {
        return C.QFocusEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfocusevent.html#gotFocus)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn GotFocus(self: ?*anyopaque) bool {
        return C.QFocusEvent_GotFocus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfocusevent.html#lostFocus)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn LostFocus(self: ?*anyopaque) bool {
        return C.QFocusEvent_LostFocus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfocusevent.html#reason)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Reason(self: ?*anyopaque) i64 {
        return C.QFocusEvent_Reason(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QFocusEvent ```
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
    /// ``` self: ?*C.QFocusEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QFocusEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QFocusEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QFocusEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QFocusEvent, slot: fn (?*C.QFocusEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QFocusEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFocusEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFocusEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpaintevent.html
pub const qpaintevent = struct {
    /// New constructs a new QPaintEvent object.
    ///
    /// ``` paintRegion: ?*C.QRegion ```
    pub fn New(paintRegion: ?*anyopaque) ?*C.QPaintEvent {
        return C.QPaintEvent_new(@ptrCast(paintRegion));
    }

    /// New2 constructs a new QPaintEvent object.
    ///
    /// ``` paintRect: ?*C.QRect ```
    pub fn New2(paintRect: ?*anyopaque) ?*C.QPaintEvent {
        return C.QPaintEvent_new2(@ptrCast(paintRect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintevent.html#clone)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QPaintEvent {
        return C.QPaintEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPaintEvent, slot: fn () callconv(.c) ?*C.QPaintEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEvent) void {
        C.QPaintEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QPaintEvent {
        return C.QPaintEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintevent.html#rect)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Rect(self: ?*anyopaque) ?*C.QRect {
        return C.QPaintEvent_Rect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintevent.html#region)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Region(self: ?*anyopaque) ?*C.QRegion {
        return C.QPaintEvent_Region(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QPaintEvent ```
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
    /// ``` self: ?*C.QPaintEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPaintEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPaintEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPaintEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPaintEvent, slot: fn (?*C.QPaintEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QPaintEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPaintEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPaintEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmoveevent.html
pub const qmoveevent = struct {
    /// New constructs a new QMoveEvent object.
    ///
    /// ``` pos: ?*C.QPoint, oldPos: ?*C.QPoint ```
    pub fn New(pos: ?*anyopaque, oldPos: ?*anyopaque) ?*C.QMoveEvent {
        return C.QMoveEvent_new(@ptrCast(pos), @ptrCast(oldPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmoveevent.html#clone)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QMoveEvent {
        return C.QMoveEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QMoveEvent, slot: fn () callconv(.c) ?*C.QMoveEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QMoveEvent) void {
        C.QMoveEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QMoveEvent {
        return C.QMoveEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmoveevent.html#pos)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QMoveEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmoveevent.html#oldPos)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn OldPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QMoveEvent_OldPos(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QMoveEvent ```
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
    /// ``` self: ?*C.QMoveEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QMoveEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QMoveEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QMoveEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QMoveEvent, slot: fn (?*C.QMoveEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QMoveEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMoveEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMoveEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qexposeevent.html
pub const qexposeevent = struct {
    /// New constructs a new QExposeEvent object.
    ///
    /// ``` m_region: ?*C.QRegion ```
    pub fn New(m_region: ?*anyopaque) ?*C.QExposeEvent {
        return C.QExposeEvent_new(@ptrCast(m_region));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qexposeevent.html#clone)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QExposeEvent {
        return C.QExposeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QExposeEvent, slot: fn () callconv(.c) ?*C.QExposeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QExposeEvent) void {
        C.QExposeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QExposeEvent {
        return C.QExposeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qexposeevent.html#region)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Region(self: ?*anyopaque) ?*C.QRegion {
        return C.QExposeEvent_Region(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QExposeEvent ```
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
    /// ``` self: ?*C.QExposeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QExposeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QExposeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QExposeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QExposeEvent, slot: fn (?*C.QExposeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QExposeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QExposeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QExposeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qplatformsurfaceevent.html
pub const qplatformsurfaceevent = struct {
    /// New constructs a new QPlatformSurfaceEvent object.
    ///
    /// ``` surfaceEventType: qevent_enums.SurfaceEventType ```
    pub fn New(surfaceEventType: i64) ?*C.QPlatformSurfaceEvent {
        return C.QPlatformSurfaceEvent_new(@intCast(surfaceEventType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qplatformsurfaceevent.html#clone)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QPlatformSurfaceEvent {
        return C.QPlatformSurfaceEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent, slot: fn () callconv(.c) ?*C.QPlatformSurfaceEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPlatformSurfaceEvent) void {
        C.QPlatformSurfaceEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QPlatformSurfaceEvent {
        return C.QPlatformSurfaceEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qplatformsurfaceevent.html#surfaceEventType)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn SurfaceEventType(self: ?*anyopaque) i64 {
        return C.QPlatformSurfaceEvent_SurfaceEventType(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
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
    /// ``` self: ?*C.QPlatformSurfaceEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPlatformSurfaceEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QPlatformSurfaceEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent, slot: fn (?*C.QPlatformSurfaceEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QPlatformSurfaceEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPlatformSurfaceEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPlatformSurfaceEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qresizeevent.html
pub const qresizeevent = struct {
    /// New constructs a new QResizeEvent object.
    ///
    /// ``` size: ?*C.QSize, oldSize: ?*C.QSize ```
    pub fn New(size: ?*anyopaque, oldSize: ?*anyopaque) ?*C.QResizeEvent {
        return C.QResizeEvent_new(@ptrCast(size), @ptrCast(oldSize));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresizeevent.html#clone)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QResizeEvent {
        return C.QResizeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QResizeEvent, slot: fn () callconv(.c) ?*C.QResizeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QResizeEvent) void {
        C.QResizeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QResizeEvent {
        return C.QResizeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresizeevent.html#size)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Size(self: ?*anyopaque) ?*C.QSize {
        return C.QResizeEvent_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qresizeevent.html#oldSize)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn OldSize(self: ?*anyopaque) ?*C.QSize {
        return C.QResizeEvent_OldSize(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QResizeEvent ```
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
    /// ``` self: ?*C.QResizeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QResizeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QResizeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QResizeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QResizeEvent, slot: fn (?*C.QResizeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QResizeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QResizeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QResizeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcloseevent.html
pub const qcloseevent = struct {
    /// New constructs a new QCloseEvent object.
    ///
    ///
    pub fn New() ?*C.QCloseEvent {
        return C.QCloseEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcloseevent.html#clone)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QCloseEvent {
        return C.QCloseEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QCloseEvent, slot: fn () callconv(.c) ?*C.QCloseEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QCloseEvent) void {
        C.QCloseEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QCloseEvent {
        return C.QCloseEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QCloseEvent ```
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
    /// ``` self: ?*C.QCloseEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QCloseEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QCloseEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QCloseEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QCloseEvent, slot: fn (?*C.QCloseEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QCloseEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCloseEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCloseEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qicondragevent.html
pub const qicondragevent = struct {
    /// New constructs a new QIconDragEvent object.
    ///
    ///
    pub fn New() ?*C.QIconDragEvent {
        return C.QIconDragEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qicondragevent.html#clone)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QIconDragEvent {
        return C.QIconDragEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QIconDragEvent, slot: fn () callconv(.c) ?*C.QIconDragEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QIconDragEvent) void {
        C.QIconDragEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QIconDragEvent {
        return C.QIconDragEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QIconDragEvent ```
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
    /// ``` self: ?*C.QIconDragEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QIconDragEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QIconDragEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QIconDragEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QIconDragEvent, slot: fn (?*C.QIconDragEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QIconDragEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QIconDragEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QIconDragEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qshowevent.html
pub const qshowevent = struct {
    /// New constructs a new QShowEvent object.
    ///
    ///
    pub fn New() ?*C.QShowEvent {
        return C.QShowEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qshowevent.html#clone)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QShowEvent {
        return C.QShowEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QShowEvent, slot: fn () callconv(.c) ?*C.QShowEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QShowEvent) void {
        C.QShowEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QShowEvent {
        return C.QShowEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QShowEvent ```
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
    /// ``` self: ?*C.QShowEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QShowEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QShowEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QShowEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QShowEvent, slot: fn (?*C.QShowEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QShowEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QShowEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QShowEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qhideevent.html
pub const qhideevent = struct {
    /// New constructs a new QHideEvent object.
    ///
    ///
    pub fn New() ?*C.QHideEvent {
        return C.QHideEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhideevent.html#clone)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QHideEvent {
        return C.QHideEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QHideEvent, slot: fn () callconv(.c) ?*C.QHideEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QHideEvent) void {
        C.QHideEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QHideEvent {
        return C.QHideEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QHideEvent ```
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
    /// ``` self: ?*C.QHideEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHideEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHideEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHideEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHideEvent, slot: fn (?*C.QHideEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QHideEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHideEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHideEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcontextmenuevent.html
pub const qcontextmenuevent = struct {
    /// New constructs a new QContextMenuEvent object.
    ///
    /// ``` reason: qevent_enums.Reason, pos: ?*C.QPoint, globalPos: ?*C.QPoint ```
    pub fn New(reason: i64, pos: ?*anyopaque, globalPos: ?*anyopaque) ?*C.QContextMenuEvent {
        return C.QContextMenuEvent_new(@intCast(reason), @ptrCast(pos), @ptrCast(globalPos));
    }

    /// New2 constructs a new QContextMenuEvent object.
    ///
    /// ``` reason: qevent_enums.Reason, pos: ?*C.QPoint ```
    pub fn New2(reason: i64, pos: ?*anyopaque) ?*C.QContextMenuEvent {
        return C.QContextMenuEvent_new2(@intCast(reason), @ptrCast(pos));
    }

    /// New3 constructs a new QContextMenuEvent object.
    ///
    /// ``` reason: qevent_enums.Reason, pos: ?*C.QPoint, globalPos: ?*C.QPoint, modifiers: i32 ```
    pub fn New3(reason: i64, pos: ?*anyopaque, globalPos: ?*anyopaque, modifiers: i64) ?*C.QContextMenuEvent {
        return C.QContextMenuEvent_new3(@intCast(reason), @ptrCast(pos), @ptrCast(globalPos), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#clone)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QContextMenuEvent {
        return C.QContextMenuEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QContextMenuEvent, slot: fn () callconv(.c) ?*C.QContextMenuEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QContextMenuEvent) void {
        C.QContextMenuEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QContextMenuEvent {
        return C.QContextMenuEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#x)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QContextMenuEvent_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#y)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QContextMenuEvent_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#globalX)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn GlobalX(self: ?*anyopaque) i32 {
        return C.QContextMenuEvent_GlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#globalY)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn GlobalY(self: ?*anyopaque) i32 {
        return C.QContextMenuEvent_GlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#pos)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QContextMenuEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#globalPos)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QContextMenuEvent_GlobalPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcontextmenuevent.html#reason)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Reason(self: ?*anyopaque) i64 {
        return C.QContextMenuEvent_Reason(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QContextMenuEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
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

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QContextMenuEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QInputEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QContextMenuEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QInputEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, slot: fn (?*C.QContextMenuEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QContextMenuEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QContextMenuEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QContextMenuEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QContextMenuEvent, slot: fn (?*C.QContextMenuEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QContextMenuEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QContextMenuEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QContextMenuEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qinputmethodevent.html
pub const qinputmethodevent = struct {
    /// New constructs a new QInputMethodEvent object.
    ///
    ///
    pub fn New() ?*C.QInputMethodEvent {
        return C.QInputMethodEvent_new();
    }

    /// New2 constructs a new QInputMethodEvent object.
    ///
    /// ``` preeditText: []const u8, attributes: []?*C.QInputMethodEvent__Attribute ```
    pub fn New2(preeditText: []const u8, attributes: []?*C.QInputMethodEvent__Attribute) ?*C.QInputMethodEvent {
        const preeditText_str = C.struct_libqt_string{
            .len = preeditText.len,
            .data = @constCast(preeditText.ptr),
        };
        const attributes_list = C.struct_libqt_list{
            .len = attributes.len,
            .data = @ptrCast(attributes.ptr),
        };

        return C.QInputMethodEvent_new2(preeditText_str, attributes_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#clone)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QInputMethodEvent {
        return C.QInputMethodEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QInputMethodEvent, slot: fn () callconv(.c) ?*C.QInputMethodEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QInputMethodEvent) void {
        C.QInputMethodEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QInputMethodEvent {
        return C.QInputMethodEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#setCommitString)
    ///
    /// ``` self: ?*C.QInputMethodEvent, commitString: []const u8 ```
    pub fn SetCommitString(self: ?*anyopaque, commitString: []const u8) void {
        const commitString_str = C.struct_libqt_string{
            .len = commitString.len,
            .data = @constCast(commitString.ptr),
        };
        C.QInputMethodEvent_SetCommitString(@ptrCast(self), commitString_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#attributes)
    ///
    /// ``` self: ?*C.QInputMethodEvent, allocator: std.mem.Allocator ```
    pub fn Attributes(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QInputMethodEvent__Attribute {
        const _arr: C.struct_libqt_list = C.QInputMethodEvent_Attributes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QInputMethodEvent__Attribute, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QInputMethodEvent__Attribute = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#preeditString)
    ///
    /// ``` self: ?*C.QInputMethodEvent, allocator: std.mem.Allocator ```
    pub fn PreeditString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QInputMethodEvent_PreeditString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#commitString)
    ///
    /// ``` self: ?*C.QInputMethodEvent, allocator: std.mem.Allocator ```
    pub fn CommitString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QInputMethodEvent_CommitString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#replacementStart)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn ReplacementStart(self: ?*anyopaque) i32 {
        return C.QInputMethodEvent_ReplacementStart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#replacementLength)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn ReplacementLength(self: ?*anyopaque) i32 {
        return C.QInputMethodEvent_ReplacementLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#setCommitString)
    ///
    /// ``` self: ?*C.QInputMethodEvent, commitString: []const u8, replaceFrom: i32 ```
    pub fn SetCommitString2(self: ?*anyopaque, commitString: []const u8, replaceFrom: i32) void {
        const commitString_str = C.struct_libqt_string{
            .len = commitString.len,
            .data = @constCast(commitString.ptr),
        };
        C.QInputMethodEvent_SetCommitString2(@ptrCast(self), commitString_str, @intCast(replaceFrom));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent.html#setCommitString)
    ///
    /// ``` self: ?*C.QInputMethodEvent, commitString: []const u8, replaceFrom: i32, replaceLength: i32 ```
    pub fn SetCommitString3(self: ?*anyopaque, commitString: []const u8, replaceFrom: i32, replaceLength: i32) void {
        const commitString_str = C.struct_libqt_string{
            .len = commitString.len,
            .data = @constCast(commitString.ptr),
        };
        C.QInputMethodEvent_SetCommitString3(@ptrCast(self), commitString_str, @intCast(replaceFrom), @intCast(replaceLength));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
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
    /// ``` self: ?*C.QInputMethodEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputMethodEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputMethodEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputMethodEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputMethodEvent, slot: fn (?*C.QInputMethodEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QInputMethodEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QInputMethodEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QInputMethodEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qinputmethodqueryevent.html
pub const qinputmethodqueryevent = struct {
    /// New constructs a new QInputMethodQueryEvent object.
    ///
    /// ``` queries: i32 ```
    pub fn New(queries: i64) ?*C.QInputMethodQueryEvent {
        return C.QInputMethodQueryEvent_new(@intCast(queries));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodqueryevent.html#clone)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QInputMethodQueryEvent {
        return C.QInputMethodQueryEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent, slot: fn () callconv(.c) ?*C.QInputMethodQueryEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QInputMethodQueryEvent) void {
        C.QInputMethodQueryEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QInputMethodQueryEvent {
        return C.QInputMethodQueryEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodqueryevent.html#queries)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Queries(self: ?*anyopaque) i64 {
        return C.QInputMethodQueryEvent_Queries(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodqueryevent.html#setValue)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent, query: qnamespace_enums.InputMethodQuery, value: ?*C.QVariant ```
    pub fn SetValue(self: ?*anyopaque, query: i64, value: ?*anyopaque) void {
        C.QInputMethodQueryEvent_SetValue(@ptrCast(self), @intCast(query), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodqueryevent.html#value)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent, query: qnamespace_enums.InputMethodQuery ```
    pub fn Value(self: ?*anyopaque, query: i64) ?*C.QVariant {
        return C.QInputMethodQueryEvent_Value(@ptrCast(self), @intCast(query));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
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
    /// ``` self: ?*C.QInputMethodQueryEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputMethodQueryEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QInputMethodQueryEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent, slot: fn (?*C.QInputMethodQueryEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QInputMethodQueryEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QInputMethodQueryEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QInputMethodQueryEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdropevent.html
pub const qdropevent = struct {
    /// New constructs a new QDropEvent object.
    ///
    /// ``` pos: ?*C.QPointF, actions: i32, data: ?*C.QMimeData, buttons: i32, modifiers: i32 ```
    pub fn New(pos: ?*anyopaque, actions: i64, data: ?*anyopaque, buttons: i64, modifiers: i64) ?*C.QDropEvent {
        return C.QDropEvent_new(@ptrCast(pos), @intCast(actions), @ptrCast(data), @intCast(buttons), @intCast(modifiers));
    }

    /// New2 constructs a new QDropEvent object.
    ///
    /// ``` pos: ?*C.QPointF, actions: i32, data: ?*C.QMimeData, buttons: i32, modifiers: i32, typeVal: qevent_enums.Type ```
    pub fn New2(pos: ?*anyopaque, actions: i64, data: ?*anyopaque, buttons: i64, modifiers: i64, typeVal: i64) ?*C.QDropEvent {
        return C.QDropEvent_new2(@ptrCast(pos), @intCast(actions), @ptrCast(data), @intCast(buttons), @intCast(modifiers), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#clone)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QDropEvent {
        return C.QDropEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QDropEvent, slot: fn () callconv(.c) ?*C.QDropEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QDropEvent) void {
        C.QDropEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QDropEvent {
        return C.QDropEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#pos)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QDropEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#posF)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn PosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_PosF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mouseButtons)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn MouseButtons(self: ?*anyopaque) i64 {
        return C.QDropEvent_MouseButtons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#keyboardModifiers)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn KeyboardModifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_KeyboardModifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#position)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#buttons)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QDropEvent_Buttons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#modifiers)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#possibleActions)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn PossibleActions(self: ?*anyopaque) i64 {
        return C.QDropEvent_PossibleActions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#proposedAction)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn ProposedAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_ProposedAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#acceptProposedAction)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn AcceptProposedAction(self: ?*anyopaque) void {
        C.QDropEvent_AcceptProposedAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#dropAction)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn DropAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_DropAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#setDropAction)
    ///
    /// ``` self: ?*C.QDropEvent, action: qnamespace_enums.DropAction ```
    pub fn SetDropAction(self: ?*anyopaque, action: i64) void {
        C.QDropEvent_SetDropAction(@ptrCast(self), @intCast(action));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#source)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Source(self: ?*anyopaque) ?*C.QObject {
        return C.QDropEvent_Source(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mimeData)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn MimeData(self: ?*anyopaque) ?*C.QMimeData {
        return C.QDropEvent_MimeData(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QDropEvent ```
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
    /// ``` self: ?*C.QDropEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDropEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QDropEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDropEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QDropEvent, slot: fn (?*C.QDropEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QDropEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDropEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDropEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdragmoveevent.html
pub const qdragmoveevent = struct {
    /// New constructs a new QDragMoveEvent object.
    ///
    /// ``` pos: ?*C.QPoint, actions: i32, data: ?*C.QMimeData, buttons: i32, modifiers: i32 ```
    pub fn New(pos: ?*anyopaque, actions: i64, data: ?*anyopaque, buttons: i64, modifiers: i64) ?*C.QDragMoveEvent {
        return C.QDragMoveEvent_new(@ptrCast(pos), @intCast(actions), @ptrCast(data), @intCast(buttons), @intCast(modifiers));
    }

    /// New2 constructs a new QDragMoveEvent object.
    ///
    /// ``` pos: ?*C.QPoint, actions: i32, data: ?*C.QMimeData, buttons: i32, modifiers: i32, typeVal: qevent_enums.Type ```
    pub fn New2(pos: ?*anyopaque, actions: i64, data: ?*anyopaque, buttons: i64, modifiers: i64, typeVal: i64) ?*C.QDragMoveEvent {
        return C.QDragMoveEvent_new2(@ptrCast(pos), @intCast(actions), @ptrCast(data), @intCast(buttons), @intCast(modifiers), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#clone)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QDragMoveEvent {
        return C.QDragMoveEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QDragMoveEvent, slot: fn () callconv(.c) ?*C.QDragMoveEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QDragMoveEvent) void {
        C.QDragMoveEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QDragMoveEvent {
        return C.QDragMoveEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#answerRect)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn AnswerRect(self: ?*anyopaque) ?*C.QRect {
        return C.QDragMoveEvent_AnswerRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#accept)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QDragMoveEvent_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#ignore)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QDragMoveEvent_Ignore(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#accept)
    ///
    /// ``` self: ?*C.QDragMoveEvent, r: ?*C.QRect ```
    pub fn AcceptWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QDragMoveEvent_AcceptWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#ignore)
    ///
    /// ``` self: ?*C.QDragMoveEvent, r: ?*C.QRect ```
    pub fn IgnoreWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QDragMoveEvent_IgnoreWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#pos)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QDropEvent_Pos(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#posF)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn PosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_PosF(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mouseButtons)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn MouseButtons(self: ?*anyopaque) i64 {
        return C.QDropEvent_MouseButtons(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#keyboardModifiers)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn KeyboardModifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_KeyboardModifiers(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#position)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_Position(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#buttons)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QDropEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#modifiers)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#possibleActions)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn PossibleActions(self: ?*anyopaque) i64 {
        return C.QDropEvent_PossibleActions(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#proposedAction)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn ProposedAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_ProposedAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#acceptProposedAction)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn AcceptProposedAction(self: ?*anyopaque) void {
        C.QDropEvent_AcceptProposedAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#dropAction)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn DropAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_DropAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#setDropAction)
    ///
    /// ``` self: ?*C.QDragMoveEvent, action: qnamespace_enums.DropAction ```
    pub fn SetDropAction(self: ?*anyopaque, action: i64) void {
        C.QDropEvent_SetDropAction(@ptrCast(self), @intCast(action));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#source)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Source(self: ?*anyopaque) ?*C.QObject {
        return C.QDropEvent_Source(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mimeData)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn MimeData(self: ?*anyopaque) ?*C.QMimeData {
        return C.QDropEvent_MimeData(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
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
    /// ``` self: ?*C.QDragMoveEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragMoveEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragMoveEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragMoveEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragMoveEvent, slot: fn (?*C.QDragMoveEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QDragMoveEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDragMoveEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDragMoveEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdragenterevent.html
pub const qdragenterevent = struct {
    /// New constructs a new QDragEnterEvent object.
    ///
    /// ``` pos: ?*C.QPoint, actions: i32, data: ?*C.QMimeData, buttons: i32, modifiers: i32 ```
    pub fn New(pos: ?*anyopaque, actions: i64, data: ?*anyopaque, buttons: i64, modifiers: i64) ?*C.QDragEnterEvent {
        return C.QDragEnterEvent_new(@ptrCast(pos), @intCast(actions), @ptrCast(data), @intCast(buttons), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragenterevent.html#clone)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QDragEnterEvent {
        return C.QDragEnterEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QDragEnterEvent, slot: fn () callconv(.c) ?*C.QDragEnterEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QDragEnterEvent) void {
        C.QDragEnterEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QDragEnterEvent {
        return C.QDragEnterEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QDragMoveEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#answerRect)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn AnswerRect(self: ?*anyopaque) ?*C.QRect {
        return C.QDragMoveEvent_AnswerRect(@ptrCast(self));
    }

    /// Inherited from QDragMoveEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#accept)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QDragMoveEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QDragMoveEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#ignore)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QDragMoveEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QDragMoveEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#accept)
    ///
    /// ``` self: ?*C.QDragEnterEvent, r: ?*C.QRect ```
    pub fn AcceptWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QDragMoveEvent_AcceptWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// Inherited from QDragMoveEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdragmoveevent.html#ignore)
    ///
    /// ``` self: ?*C.QDragEnterEvent, r: ?*C.QRect ```
    pub fn IgnoreWithQRect(self: ?*anyopaque, r: ?*anyopaque) void {
        C.QDragMoveEvent_IgnoreWithQRect(@ptrCast(self), @ptrCast(r));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#pos)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QDropEvent_Pos(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#posF)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn PosF(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_PosF(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mouseButtons)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn MouseButtons(self: ?*anyopaque) i64 {
        return C.QDropEvent_MouseButtons(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#keyboardModifiers)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn KeyboardModifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_KeyboardModifiers(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#position)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QDropEvent_Position(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#buttons)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QDropEvent_Buttons(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#modifiers)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QDropEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#possibleActions)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn PossibleActions(self: ?*anyopaque) i64 {
        return C.QDropEvent_PossibleActions(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#proposedAction)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn ProposedAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_ProposedAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#acceptProposedAction)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn AcceptProposedAction(self: ?*anyopaque) void {
        C.QDropEvent_AcceptProposedAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#dropAction)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn DropAction(self: ?*anyopaque) i64 {
        return C.QDropEvent_DropAction(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#setDropAction)
    ///
    /// ``` self: ?*C.QDragEnterEvent, action: qnamespace_enums.DropAction ```
    pub fn SetDropAction(self: ?*anyopaque, action: i64) void {
        C.QDropEvent_SetDropAction(@ptrCast(self), @intCast(action));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#source)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Source(self: ?*anyopaque) ?*C.QObject {
        return C.QDropEvent_Source(@ptrCast(self));
    }

    /// Inherited from QDropEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qdropevent.html#mimeData)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn MimeData(self: ?*anyopaque) ?*C.QMimeData {
        return C.QDropEvent_MimeData(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
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
    /// ``` self: ?*C.QDragEnterEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragEnterEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragEnterEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragEnterEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragEnterEvent, slot: fn (?*C.QDragEnterEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QDragEnterEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDragEnterEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDragEnterEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdragleaveevent.html
pub const qdragleaveevent = struct {
    /// New constructs a new QDragLeaveEvent object.
    ///
    ///
    pub fn New() ?*C.QDragLeaveEvent {
        return C.QDragLeaveEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdragleaveevent.html#clone)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QDragLeaveEvent {
        return C.QDragLeaveEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QDragLeaveEvent, slot: fn () callconv(.c) ?*C.QDragLeaveEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QDragLeaveEvent) void {
        C.QDragLeaveEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QDragLeaveEvent {
        return C.QDragLeaveEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
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
    /// ``` self: ?*C.QDragLeaveEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragLeaveEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragLeaveEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QDragLeaveEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QDragLeaveEvent, slot: fn (?*C.QDragLeaveEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QDragLeaveEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDragLeaveEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDragLeaveEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qhelpevent.html
pub const qhelpevent = struct {
    /// New constructs a new QHelpEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type, pos: ?*C.QPoint, globalPos: ?*C.QPoint ```
    pub fn New(typeVal: i64, pos: ?*anyopaque, globalPos: ?*anyopaque) ?*C.QHelpEvent {
        return C.QHelpEvent_new(@intCast(typeVal), @ptrCast(pos), @ptrCast(globalPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#clone)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QHelpEvent {
        return C.QHelpEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QHelpEvent, slot: fn () callconv(.c) ?*C.QHelpEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QHelpEvent) void {
        C.QHelpEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QHelpEvent {
        return C.QHelpEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#x)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn X(self: ?*anyopaque) i32 {
        return C.QHelpEvent_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#y)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Y(self: ?*anyopaque) i32 {
        return C.QHelpEvent_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#globalX)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn GlobalX(self: ?*anyopaque) i32 {
        return C.QHelpEvent_GlobalX(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#globalY)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn GlobalY(self: ?*anyopaque) i32 {
        return C.QHelpEvent_GlobalY(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#pos)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPoint {
        return C.QHelpEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhelpevent.html#globalPos)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn GlobalPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QHelpEvent_GlobalPos(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QHelpEvent ```
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
    /// ``` self: ?*C.QHelpEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHelpEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QHelpEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QHelpEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QHelpEvent, slot: fn (?*C.QHelpEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QHelpEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHelpEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHelpEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstatustipevent.html
pub const qstatustipevent = struct {
    /// New constructs a new QStatusTipEvent object.
    ///
    /// ``` tip: []const u8 ```
    pub fn New(tip: []const u8) ?*C.QStatusTipEvent {
        const tip_str = C.struct_libqt_string{
            .len = tip.len,
            .data = @constCast(tip.ptr),
        };

        return C.QStatusTipEvent_new(tip_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatustipevent.html#clone)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QStatusTipEvent {
        return C.QStatusTipEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QStatusTipEvent, slot: fn () callconv(.c) ?*C.QStatusTipEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QStatusTipEvent) void {
        C.QStatusTipEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QStatusTipEvent {
        return C.QStatusTipEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatustipevent.html#tip)
    ///
    /// ``` self: ?*C.QStatusTipEvent, allocator: std.mem.Allocator ```
    pub fn Tip(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStatusTipEvent_Tip(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
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
    /// ``` self: ?*C.QStatusTipEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QStatusTipEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QStatusTipEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QStatusTipEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QStatusTipEvent, slot: fn (?*C.QStatusTipEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QStatusTipEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStatusTipEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStatusTipEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwhatsthisclickedevent.html
pub const qwhatsthisclickedevent = struct {
    /// New constructs a new QWhatsThisClickedEvent object.
    ///
    /// ``` href: []const u8 ```
    pub fn New(href: []const u8) ?*C.QWhatsThisClickedEvent {
        const href_str = C.struct_libqt_string{
            .len = href.len,
            .data = @constCast(href.ptr),
        };

        return C.QWhatsThisClickedEvent_new(href_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthisclickedevent.html#clone)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QWhatsThisClickedEvent {
        return C.QWhatsThisClickedEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent, slot: fn () callconv(.c) ?*C.QWhatsThisClickedEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWhatsThisClickedEvent) void {
        C.QWhatsThisClickedEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QWhatsThisClickedEvent {
        return C.QWhatsThisClickedEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthisclickedevent.html#href)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent, allocator: std.mem.Allocator ```
    pub fn Href(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWhatsThisClickedEvent_Href(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
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
    /// ``` self: ?*C.QWhatsThisClickedEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWhatsThisClickedEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWhatsThisClickedEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent, slot: fn (?*C.QWhatsThisClickedEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QWhatsThisClickedEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWhatsThisClickedEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWhatsThisClickedEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qactionevent.html
pub const qactionevent = struct {
    /// New constructs a new QActionEvent object.
    ///
    /// ``` typeVal: i32, action: ?*C.QAction ```
    pub fn New(typeVal: i32, action: ?*anyopaque) ?*C.QActionEvent {
        return C.QActionEvent_new(@intCast(typeVal), @ptrCast(action));
    }

    /// New2 constructs a new QActionEvent object.
    ///
    /// ``` typeVal: i32, action: ?*C.QAction, before: ?*C.QAction ```
    pub fn New2(typeVal: i32, action: ?*anyopaque, before: ?*anyopaque) ?*C.QActionEvent {
        return C.QActionEvent_new2(@intCast(typeVal), @ptrCast(action), @ptrCast(before));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qactionevent.html#clone)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QActionEvent {
        return C.QActionEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QActionEvent, slot: fn () callconv(.c) ?*C.QActionEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QActionEvent) void {
        C.QActionEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QActionEvent {
        return C.QActionEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qactionevent.html#action)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Action(self: ?*anyopaque) ?*C.QAction {
        return C.QActionEvent_Action(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qactionevent.html#before)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Before(self: ?*anyopaque) ?*C.QAction {
        return C.QActionEvent_Before(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QActionEvent ```
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
    /// ``` self: ?*C.QActionEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QActionEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QActionEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QActionEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QActionEvent, slot: fn (?*C.QActionEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QActionEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QActionEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QActionEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qfileopenevent.html
pub const qfileopenevent = struct {
    /// New constructs a new QFileOpenEvent object.
    ///
    /// ``` file: []const u8 ```
    pub fn New(file: []const u8) ?*C.QFileOpenEvent {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };

        return C.QFileOpenEvent_new(file_str);
    }

    /// New2 constructs a new QFileOpenEvent object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New2(url: ?*anyopaque) ?*C.QFileOpenEvent {
        return C.QFileOpenEvent_new2(@ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileopenevent.html#clone)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QFileOpenEvent {
        return C.QFileOpenEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QFileOpenEvent, slot: fn () callconv(.c) ?*C.QFileOpenEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QFileOpenEvent) void {
        C.QFileOpenEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QFileOpenEvent {
        return C.QFileOpenEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileopenevent.html#file)
    ///
    /// ``` self: ?*C.QFileOpenEvent, allocator: std.mem.Allocator ```
    pub fn File(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileOpenEvent_File(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileopenevent.html#url)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QFileOpenEvent_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileopenevent.html#openFile)
    ///
    /// ``` self: ?*C.QFileOpenEvent, file: ?*C.QFile, flags: i32 ```
    pub fn OpenFile(self: ?*anyopaque, file: ?*anyopaque, flags: i64) bool {
        return C.QFileOpenEvent_OpenFile(@ptrCast(self), @ptrCast(file), @intCast(flags));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
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
    /// ``` self: ?*C.QFileOpenEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QFileOpenEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileOpenEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QFileOpenEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QFileOpenEvent, slot: fn (?*C.QFileOpenEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QFileOpenEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFileOpenEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFileOpenEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtoolbarchangeevent.html
pub const qtoolbarchangeevent = struct {
    /// New constructs a new QToolBarChangeEvent object.
    ///
    /// ``` t: bool ```
    pub fn New(t: bool) ?*C.QToolBarChangeEvent {
        return C.QToolBarChangeEvent_new(t);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtoolbarchangeevent.html#clone)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QToolBarChangeEvent {
        return C.QToolBarChangeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QToolBarChangeEvent, slot: fn () callconv(.c) ?*C.QToolBarChangeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QToolBarChangeEvent) void {
        C.QToolBarChangeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QToolBarChangeEvent {
        return C.QToolBarChangeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtoolbarchangeevent.html#toggle)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Toggle(self: ?*anyopaque) bool {
        return C.QToolBarChangeEvent_Toggle(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
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
    /// ``` self: ?*C.QToolBarChangeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QToolBarChangeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QToolBarChangeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QToolBarChangeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QToolBarChangeEvent, slot: fn (?*C.QToolBarChangeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QToolBarChangeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QToolBarChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QToolBarChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qshortcutevent.html
pub const qshortcutevent = struct {
    /// New constructs a new QShortcutEvent object.
    ///
    /// ``` key: ?*C.QKeySequence, id: i32 ```
    pub fn New(key: ?*anyopaque, id: i32) ?*C.QShortcutEvent {
        return C.QShortcutEvent_new(@ptrCast(key), @intCast(id));
    }

    /// New2 constructs a new QShortcutEvent object.
    ///
    /// ``` key: ?*C.QKeySequence, id: i32, ambiguous: bool ```
    pub fn New2(key: ?*anyopaque, id: i32, ambiguous: bool) ?*C.QShortcutEvent {
        return C.QShortcutEvent_new2(@ptrCast(key), @intCast(id), ambiguous);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qshortcutevent.html#clone)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QShortcutEvent {
        return C.QShortcutEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QShortcutEvent, slot: fn () callconv(.c) ?*C.QShortcutEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QShortcutEvent) void {
        C.QShortcutEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QShortcutEvent {
        return C.QShortcutEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qshortcutevent.html#key)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Key(self: ?*anyopaque) ?*C.QKeySequence {
        return C.QShortcutEvent_Key(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qshortcutevent.html#shortcutId)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn ShortcutId(self: ?*anyopaque) i32 {
        return C.QShortcutEvent_ShortcutId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qshortcutevent.html#isAmbiguous)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn IsAmbiguous(self: ?*anyopaque) bool {
        return C.QShortcutEvent_IsAmbiguous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QShortcutEvent ```
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
    /// ``` self: ?*C.QShortcutEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QShortcutEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QShortcutEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QShortcutEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QShortcutEvent, slot: fn (?*C.QShortcutEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QShortcutEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QShortcutEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QShortcutEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwindowstatechangeevent.html
pub const qwindowstatechangeevent = struct {
    /// New constructs a new QWindowStateChangeEvent object.
    ///
    /// ``` oldState: i32 ```
    pub fn New(oldState: i64) ?*C.QWindowStateChangeEvent {
        return C.QWindowStateChangeEvent_new(@intCast(oldState));
    }

    /// New2 constructs a new QWindowStateChangeEvent object.
    ///
    /// ``` oldState: i32, isOverride: bool ```
    pub fn New2(oldState: i64, isOverride: bool) ?*C.QWindowStateChangeEvent {
        return C.QWindowStateChangeEvent_new2(@intCast(oldState), isOverride);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwindowstatechangeevent.html#clone)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QWindowStateChangeEvent {
        return C.QWindowStateChangeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent, slot: fn () callconv(.c) ?*C.QWindowStateChangeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QWindowStateChangeEvent) void {
        C.QWindowStateChangeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QWindowStateChangeEvent {
        return C.QWindowStateChangeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwindowstatechangeevent.html#oldState)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn OldState(self: ?*anyopaque) i64 {
        return C.QWindowStateChangeEvent_OldState(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwindowstatechangeevent.html#isOverride)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn IsOverride(self: ?*anyopaque) bool {
        return C.QWindowStateChangeEvent_IsOverride(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
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
    /// ``` self: ?*C.QWindowStateChangeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWindowStateChangeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QWindowStateChangeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent, slot: fn (?*C.QWindowStateChangeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QWindowStateChangeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWindowStateChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWindowStateChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtouchevent.html
pub const qtouchevent = struct {
    /// New constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type ```
    pub fn New(eventType: i64) ?*C.QTouchEvent {
        return C.QTouchEvent_new(@intCast(eventType));
    }

    /// New2 constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type, device: ?*C.QPointingDevice, modifiers: i32, touchPointStates: u8 ```
    pub fn New2(eventType: i64, device: ?*anyopaque, modifiers: i64, touchPointStates: i64) ?*C.QTouchEvent {
        return C.QTouchEvent_new2(@intCast(eventType), @ptrCast(device), @intCast(modifiers), @intCast(touchPointStates));
    }

    /// New3 constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type, device: ?*C.QPointingDevice ```
    pub fn New3(eventType: i64, device: ?*anyopaque) ?*C.QTouchEvent {
        return C.QTouchEvent_new3(@intCast(eventType), @ptrCast(device));
    }

    /// New4 constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type, device: ?*C.QPointingDevice, modifiers: i32 ```
    pub fn New4(eventType: i64, device: ?*anyopaque, modifiers: i64) ?*C.QTouchEvent {
        return C.QTouchEvent_new4(@intCast(eventType), @ptrCast(device), @intCast(modifiers));
    }

    /// New5 constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type, device: ?*C.QPointingDevice, modifiers: i32, touchPoints: []?*C.QEventPoint ```
    pub fn New5(eventType: i64, device: ?*anyopaque, modifiers: i64, touchPoints: []?*C.QEventPoint) ?*C.QTouchEvent {
        const touchPoints_list = C.struct_libqt_list{
            .len = touchPoints.len,
            .data = @ptrCast(touchPoints.ptr),
        };

        return C.QTouchEvent_new5(@intCast(eventType), @ptrCast(device), @intCast(modifiers), touchPoints_list);
    }

    /// New6 constructs a new QTouchEvent object.
    ///
    /// ``` eventType: qevent_enums.Type, device: ?*C.QPointingDevice, modifiers: i32, touchPointStates: u8, touchPoints: []?*C.QEventPoint ```
    pub fn New6(eventType: i64, device: ?*anyopaque, modifiers: i64, touchPointStates: i64, touchPoints: []?*C.QEventPoint) ?*C.QTouchEvent {
        const touchPoints_list = C.struct_libqt_list{
            .len = touchPoints.len,
            .data = @ptrCast(touchPoints.ptr),
        };

        return C.QTouchEvent_new6(@intCast(eventType), @ptrCast(device), @intCast(modifiers), @intCast(touchPointStates), touchPoints_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#clone)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QTouchEvent {
        return C.QTouchEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn () callconv(.c) ?*C.QTouchEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QTouchEvent) void {
        C.QTouchEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QTouchEvent {
        return C.QTouchEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#target)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Target(self: ?*anyopaque) ?*C.QObject {
        return C.QTouchEvent_Target(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#touchPointStates)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn TouchPointStates(self: ?*anyopaque) i64 {
        return C.QTouchEvent_TouchPointStates(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#touchPoints)
    ///
    /// ``` self: ?*C.QTouchEvent, allocator: std.mem.Allocator ```
    pub fn TouchPoints(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QTouchEvent_TouchPoints(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#isBeginEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsBeginEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_IsBeginEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsBeginEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTouchEvent_OnIsBeginEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn QBaseIsBeginEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_QBaseIsBeginEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#isUpdateEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsUpdateEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_IsUpdateEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsUpdateEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTouchEvent_OnIsUpdateEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn QBaseIsUpdateEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_QBaseIsUpdateEvent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtouchevent.html#isEndEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsEndEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_IsEndEvent(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn () callconv(.c) bool ```
    pub fn OnIsEndEvent(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QTouchEvent_OnIsEndEvent(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn QBaseIsEndEvent(self: ?*anyopaque) bool {
        return C.QTouchEvent_QBaseIsEndEvent(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointingDevice)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn PointingDevice(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QPointerEvent_PointingDevice(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointerType)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn PointerType(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointerType(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointCount)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn PointCount(self: ?*anyopaque) i64 {
        return C.QPointerEvent_PointCount(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#point)
    ///
    /// ``` self: ?*C.QTouchEvent, i: i64 ```
    pub fn Point(self: ?*anyopaque, i: i64) ?*C.QEventPoint {
        return C.QPointerEvent_Point(@ptrCast(self), @intCast(i));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#points)
    ///
    /// ``` self: ?*C.QTouchEvent, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QEventPoint {
        const _arr: C.struct_libqt_list = C.QPointerEvent_Points(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QEventPoint, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QEventPoint = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#pointById)
    ///
    /// ``` self: ?*C.QTouchEvent, id: i32 ```
    pub fn PointById(self: ?*anyopaque, id: i32) ?*C.QEventPoint {
        return C.QPointerEvent_PointById(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsGrabbed)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn AllPointsGrabbed(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsGrabbed(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#allPointsAccepted)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn AllPointsAccepted(self: ?*anyopaque) bool {
        return C.QPointerEvent_AllPointsAccepted(@ptrCast(self));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#exclusiveGrabber)
    ///
    /// ``` self: ?*C.QTouchEvent, point: ?*C.QEventPoint ```
    pub fn ExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque) ?*C.QObject {
        return C.QPointerEvent_ExclusiveGrabber(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setExclusiveGrabber)
    ///
    /// ``` self: ?*C.QTouchEvent, point: ?*C.QEventPoint, exclusiveGrabber: ?*C.QObject ```
    pub fn SetExclusiveGrabber(self: ?*anyopaque, point: ?*anyopaque, exclusiveGrabber: ?*anyopaque) void {
        C.QPointerEvent_SetExclusiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(exclusiveGrabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#clearPassiveGrabbers)
    ///
    /// ``` self: ?*C.QTouchEvent, point: ?*C.QEventPoint ```
    pub fn ClearPassiveGrabbers(self: ?*anyopaque, point: ?*anyopaque) void {
        C.QPointerEvent_ClearPassiveGrabbers(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#addPassiveGrabber)
    ///
    /// ``` self: ?*C.QTouchEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn AddPassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_AddPassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#removePassiveGrabber)
    ///
    /// ``` self: ?*C.QTouchEvent, point: ?*C.QEventPoint, grabber: ?*C.QObject ```
    pub fn RemovePassiveGrabber(self: ?*anyopaque, point: ?*anyopaque, grabber: ?*anyopaque) bool {
        return C.QPointerEvent_RemovePassiveGrabber(@ptrCast(self), @ptrCast(point), @ptrCast(grabber));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#device)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Device(self: ?*anyopaque) ?*C.QInputDevice {
        return C.QInputEvent_Device(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#deviceType)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn DeviceType(self: ?*anyopaque) i64 {
        return C.QInputEvent_DeviceType(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#modifiers)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QInputEvent_Modifiers(@ptrCast(self));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QTouchEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QInputEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QInputEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qinputevent.html#timestamp)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QInputEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QTouchEvent ```
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

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setTimestamp)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, timestamp: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QTouchEvent_SetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, timestamp: u64 ```
    pub fn QBaseSetTimestamp(self: ?*anyopaque, timestamp: u64) void {
        C.QTouchEvent_QBaseSetTimestamp(@ptrCast(self), @intCast(timestamp));
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn (?*C.QTouchEvent, u64) callconv(.c) void ```
    pub fn OnSetTimestamp(self: ?*anyopaque, slot: fn (?*anyopaque, u64) callconv(.c) void) void {
        C.QTouchEvent_OnSetTimestamp(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPointerEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpointerevent.html#setAccepted)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTouchEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QTouchEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QPointerEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QTouchEvent, slot: fn (?*C.QTouchEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QTouchEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTouchEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTouchEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qscrollprepareevent.html
pub const qscrollprepareevent = struct {
    /// New constructs a new QScrollPrepareEvent object.
    ///
    /// ``` startPos: ?*C.QPointF ```
    pub fn New(startPos: ?*anyopaque) ?*C.QScrollPrepareEvent {
        return C.QScrollPrepareEvent_new(@ptrCast(startPos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#clone)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QScrollPrepareEvent {
        return C.QScrollPrepareEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, slot: fn () callconv(.c) ?*C.QScrollPrepareEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QScrollPrepareEvent) void {
        C.QScrollPrepareEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QScrollPrepareEvent {
        return C.QScrollPrepareEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#startPos)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn StartPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QScrollPrepareEvent_StartPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#viewportSize)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn ViewportSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QScrollPrepareEvent_ViewportSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#contentPosRange)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn ContentPosRange(self: ?*anyopaque) ?*C.QRectF {
        return C.QScrollPrepareEvent_ContentPosRange(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#contentPos)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn ContentPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QScrollPrepareEvent_ContentPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#setViewportSize)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, size: ?*C.QSizeF ```
    pub fn SetViewportSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QScrollPrepareEvent_SetViewportSize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#setContentPosRange)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, rect: ?*C.QRectF ```
    pub fn SetContentPosRange(self: ?*anyopaque, rect: ?*anyopaque) void {
        C.QScrollPrepareEvent_SetContentPosRange(@ptrCast(self), @ptrCast(rect));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollprepareevent.html#setContentPos)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, pos: ?*C.QPointF ```
    pub fn SetContentPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QScrollPrepareEvent_SetContentPos(@ptrCast(self), @ptrCast(pos));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
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
    /// ``` self: ?*C.QScrollPrepareEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScrollPrepareEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScrollPrepareEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QScrollPrepareEvent, slot: fn (?*C.QScrollPrepareEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QScrollPrepareEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QScrollPrepareEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QScrollPrepareEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qscrollevent.html
pub const qscrollevent = struct {
    /// New constructs a new QScrollEvent object.
    ///
    /// ``` contentPos: ?*C.QPointF, overshoot: ?*C.QPointF, scrollState: qevent_enums.ScrollState ```
    pub fn New(contentPos: ?*anyopaque, overshoot: ?*anyopaque, scrollState: i64) ?*C.QScrollEvent {
        return C.QScrollEvent_new(@ptrCast(contentPos), @ptrCast(overshoot), @intCast(scrollState));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollevent.html#clone)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QScrollEvent {
        return C.QScrollEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QScrollEvent, slot: fn () callconv(.c) ?*C.QScrollEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QScrollEvent) void {
        C.QScrollEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QScrollEvent {
        return C.QScrollEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollevent.html#contentPos)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn ContentPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QScrollEvent_ContentPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollevent.html#overshootDistance)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn OvershootDistance(self: ?*anyopaque) ?*C.QPointF {
        return C.QScrollEvent_OvershootDistance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscrollevent.html#scrollState)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn ScrollState(self: ?*anyopaque) i64 {
        return C.QScrollEvent_ScrollState(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QScrollEvent ```
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
    /// ``` self: ?*C.QScrollEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScrollEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QScrollEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScrollEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QScrollEvent, slot: fn (?*C.QScrollEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QScrollEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QScrollEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QScrollEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qscreenorientationchangeevent.html
pub const qscreenorientationchangeevent = struct {
    /// New constructs a new QScreenOrientationChangeEvent object.
    ///
    /// ``` screen: ?*C.QScreen, orientation: qnamespace_enums.ScreenOrientation ```
    pub fn New(screen: ?*anyopaque, orientation: i64) ?*C.QScreenOrientationChangeEvent {
        return C.QScreenOrientationChangeEvent_new(@ptrCast(screen), @intCast(orientation));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscreenorientationchangeevent.html#clone)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QScreenOrientationChangeEvent {
        return C.QScreenOrientationChangeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent, slot: fn () callconv(.c) ?*C.QScreenOrientationChangeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QScreenOrientationChangeEvent) void {
        C.QScreenOrientationChangeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QScreenOrientationChangeEvent {
        return C.QScreenOrientationChangeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscreenorientationchangeevent.html#screen)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Screen(self: ?*anyopaque) ?*C.QScreen {
        return C.QScreenOrientationChangeEvent_Screen(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscreenorientationchangeevent.html#orientation)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Orientation(self: ?*anyopaque) i64 {
        return C.QScreenOrientationChangeEvent_Orientation(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
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
    /// ``` self: ?*C.QScreenOrientationChangeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScreenOrientationChangeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QScreenOrientationChangeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent, slot: fn (?*C.QScreenOrientationChangeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QScreenOrientationChangeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QScreenOrientationChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QScreenOrientationChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qapplicationstatechangeevent.html
pub const qapplicationstatechangeevent = struct {
    /// New constructs a new QApplicationStateChangeEvent object.
    ///
    /// ``` state: qnamespace_enums.ApplicationState ```
    pub fn New(state: i64) ?*C.QApplicationStateChangeEvent {
        return C.QApplicationStateChangeEvent_new(@intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qapplicationstatechangeevent.html#clone)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QApplicationStateChangeEvent {
        return C.QApplicationStateChangeEvent_Clone(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent, slot: fn () callconv(.c) ?*C.QApplicationStateChangeEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QApplicationStateChangeEvent) void {
        C.QApplicationStateChangeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QApplicationStateChangeEvent {
        return C.QApplicationStateChangeEvent_QBaseClone(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qapplicationstatechangeevent.html#applicationState)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn ApplicationState(self: ?*anyopaque) i64 {
        return C.QApplicationStateChangeEvent_ApplicationState(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
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
    /// ``` self: ?*C.QApplicationStateChangeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QApplicationStateChangeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QApplicationStateChangeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent, slot: fn (?*C.QApplicationStateChangeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QApplicationStateChangeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QApplicationStateChangeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QApplicationStateChangeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qinputmethodevent-attribute.html
pub const qinputmethodevent__attribute = struct {
    /// New constructs a new QInputMethodEvent::Attribute object.
    ///
    /// ``` typ: qevent_enums.AttributeType, s: i32, l: i32, val: ?*C.QVariant ```
    pub fn New(typ: i64, s: i32, l: i32, val: ?*C.QVariant) ?*C.QInputMethodEvent__Attribute {
        return C.QInputMethodEvent__Attribute_new(@intCast(typ), @intCast(s), @intCast(l), @ptrCast(val));
    }

    /// New2 constructs a new QInputMethodEvent::Attribute object.
    ///
    /// ``` typ: qevent_enums.AttributeType, s: i32, l: i32 ```
    pub fn New2(typ: i64, s: i32, l: i32) ?*C.QInputMethodEvent__Attribute {
        return C.QInputMethodEvent__Attribute_new2(@intCast(typ), @intCast(s), @intCast(l));
    }

    /// New3 constructs a new QInputMethodEvent::Attribute object.
    ///
    /// ``` param1: ?*C.QInputMethodEvent__Attribute ```
    pub fn New3(param1: ?*anyopaque) ?*C.QInputMethodEvent__Attribute {
        return C.QInputMethodEvent__Attribute_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qinputmethodevent__attribute.html#operator=)
    ///
    /// ``` self: ?*C.QInputMethodEvent__Attribute, param1: ?*C.QInputMethodEvent__Attribute ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QInputMethodEvent__Attribute_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QInputMethodEvent__Attribute ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QInputMethodEvent__Attribute_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qevent.html#types
pub const enums = struct {
    pub const QWheelEvent = enum {
        pub const DefaultDeltasPerStep: i32 = 120;
    };

    pub const SurfaceEventType = enum {
        pub const SurfaceCreated: i32 = 0;
        pub const SurfaceAboutToBeDestroyed: i32 = 1;
    };

    pub const Reason = enum {
        pub const Mouse: i32 = 0;
        pub const Keyboard: i32 = 1;
        pub const Other: i32 = 2;
    };

    pub const AttributeType = enum {
        pub const TextFormat: i32 = 0;
        pub const Cursor: i32 = 1;
        pub const Language: i32 = 2;
        pub const Ruby: i32 = 3;
        pub const Selection: i32 = 4;
    };

    pub const ScrollState = enum {
        pub const ScrollStarted: i32 = 0;
        pub const ScrollUpdated: i32 = 1;
        pub const ScrollFinished: i32 = 2;
    };
};
