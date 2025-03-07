const C = @import("qt6c");
const qevent_enums = @import("libqevent.zig").enums;
const qgraphicssceneevent_enums = enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qgraphicssceneevent.html
pub const qgraphicssceneevent = struct {
    /// New constructs a new QGraphicsSceneEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New(typeVal: i64) ?*C.QGraphicsSceneEvent {
        return C.QGraphicsSceneEvent_new(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent, slot: fn (?*C.QGraphicsSceneEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html
pub const qgraphicsscenemouseevent = struct {
    /// New constructs a new QGraphicsSceneMouseEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneMouseEvent {
        return C.QGraphicsSceneMouseEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneMouseEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneMouseEvent {
        return C.QGraphicsSceneMouseEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#pos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPointF ```
    pub fn SetPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneMouseEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#buttonDownPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton ```
    pub fn ButtonDownPos(self: ?*anyopaque, button: i64) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_ButtonDownPos(@ptrCast(self), @intCast(button));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setButtonDownPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton, pos: ?*C.QPointF ```
    pub fn SetButtonDownPos(self: ?*anyopaque, button: i64, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetButtonDownPos(@ptrCast(self), @intCast(button), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#buttonDownScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton ```
    pub fn ButtonDownScenePos(self: ?*anyopaque, button: i64) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_ButtonDownScenePos(@ptrCast(self), @intCast(button));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setButtonDownScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton, pos: ?*C.QPointF ```
    pub fn SetButtonDownScenePos(self: ?*anyopaque, button: i64, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetButtonDownScenePos(@ptrCast(self), @intCast(button), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#buttonDownScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton ```
    pub fn ButtonDownScreenPos(self: ?*anyopaque, button: i64) ?*C.QPoint {
        return C.QGraphicsSceneMouseEvent_ButtonDownScreenPos(@ptrCast(self), @intCast(button));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setButtonDownScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton, pos: ?*C.QPoint ```
    pub fn SetButtonDownScreenPos(self: ?*anyopaque, button: i64, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetButtonDownScreenPos(@ptrCast(self), @intCast(button), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#lastPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn LastPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_LastPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setLastPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPointF ```
    pub fn SetLastPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetLastPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#lastScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn LastScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMouseEvent_LastScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setLastScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPointF ```
    pub fn SetLastScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetLastScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#lastScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn LastScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneMouseEvent_LastScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setLastScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, pos: ?*C.QPoint ```
    pub fn SetLastScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_SetLastScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#buttons)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneMouseEvent_Buttons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setButtons)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, buttons: i32 ```
    pub fn SetButtons(self: ?*anyopaque, buttons: i64) void {
        C.QGraphicsSceneMouseEvent_SetButtons(@ptrCast(self), @intCast(buttons));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#button)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Button(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneMouseEvent_Button(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setButton)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, button: qnamespace_enums.MouseButton ```
    pub fn SetButton(self: ?*anyopaque, button: i64) void {
        C.QGraphicsSceneMouseEvent_SetButton(@ptrCast(self), @intCast(button));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#modifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneMouseEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QGraphicsSceneMouseEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#source)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Source(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneMouseEvent_Source(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setSource)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, source: qnamespace_enums.MouseEventSource ```
    pub fn SetSource(self: ?*anyopaque, source: i64) void {
        C.QGraphicsSceneMouseEvent_SetSource(@ptrCast(self), @intCast(source));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#flags)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneMouseEvent_Flags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemouseevent.html#setFlags)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, flags: i32 ```
    pub fn SetFlags(self: ?*anyopaque, flags: i64) void {
        C.QGraphicsSceneMouseEvent_SetFlags(@ptrCast(self), @intCast(flags));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneMouseEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneMouseEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, slot: fn (?*C.QGraphicsSceneMouseEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneMouseEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneMouseEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneMouseEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneMouseEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneMouseEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneMouseEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html
pub const qgraphicsscenewheelevent = struct {
    /// New constructs a new QGraphicsSceneWheelEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneWheelEvent {
        return C.QGraphicsSceneWheelEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneWheelEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneWheelEvent {
        return C.QGraphicsSceneWheelEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#pos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneWheelEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, pos: ?*C.QPointF ```
    pub fn SetPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneWheelEvent_SetPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneWheelEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneWheelEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneWheelEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneWheelEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#buttons)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneWheelEvent_Buttons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setButtons)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, buttons: i32 ```
    pub fn SetButtons(self: ?*anyopaque, buttons: i64) void {
        C.QGraphicsSceneWheelEvent_SetButtons(@ptrCast(self), @intCast(buttons));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#modifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneWheelEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QGraphicsSceneWheelEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#delta)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Delta(self: ?*anyopaque) i32 {
        return C.QGraphicsSceneWheelEvent_Delta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setDelta)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, delta: i32 ```
    pub fn SetDelta(self: ?*anyopaque, delta: i32) void {
        C.QGraphicsSceneWheelEvent_SetDelta(@ptrCast(self), @intCast(delta));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#orientation)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Orientation(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneWheelEvent_Orientation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setOrientation)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, orientation: qnamespace_enums.Orientation ```
    pub fn SetOrientation(self: ?*anyopaque, orientation: i64) void {
        C.QGraphicsSceneWheelEvent_SetOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#phase)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Phase(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneWheelEvent_Phase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setPhase)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, scrollPhase: qnamespace_enums.ScrollPhase ```
    pub fn SetPhase(self: ?*anyopaque, scrollPhase: i64) void {
        C.QGraphicsSceneWheelEvent_SetPhase(@ptrCast(self), @intCast(scrollPhase));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#pixelDelta)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn PixelDelta(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneWheelEvent_PixelDelta(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setPixelDelta)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, delta: ?*C.QPoint ```
    pub fn SetPixelDelta(self: ?*anyopaque, delta: ?*C.QPoint) void {
        C.QGraphicsSceneWheelEvent_SetPixelDelta(@ptrCast(self), @ptrCast(delta));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#isInverted)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn IsInverted(self: ?*anyopaque) bool {
        return C.QGraphicsSceneWheelEvent_IsInverted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenewheelevent.html#setInverted)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, inverted: bool ```
    pub fn SetInverted(self: ?*anyopaque, inverted: bool) void {
        C.QGraphicsSceneWheelEvent_SetInverted(@ptrCast(self), inverted);
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneWheelEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneWheelEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, slot: fn (?*C.QGraphicsSceneWheelEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneWheelEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneWheelEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneWheelEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneWheelEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneWheelEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneWheelEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html
pub const qgraphicsscenecontextmenuevent = struct {
    /// New constructs a new QGraphicsSceneContextMenuEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneContextMenuEvent {
        return C.QGraphicsSceneContextMenuEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneContextMenuEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneContextMenuEvent {
        return C.QGraphicsSceneContextMenuEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#pos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneContextMenuEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#setPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, pos: ?*C.QPointF ```
    pub fn SetPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneContextMenuEvent_SetPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneContextMenuEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneContextMenuEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneContextMenuEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneContextMenuEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#modifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneContextMenuEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QGraphicsSceneContextMenuEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#reason)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Reason(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneContextMenuEvent_Reason(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenecontextmenuevent.html#setReason)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, reason: qgraphicssceneevent_enums.Reason ```
    pub fn SetReason(self: ?*anyopaque, reason: i64) void {
        C.QGraphicsSceneContextMenuEvent_SetReason(@ptrCast(self), @intCast(reason));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneContextMenuEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneContextMenuEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, slot: fn (?*C.QGraphicsSceneContextMenuEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneContextMenuEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneContextMenuEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneContextMenuEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneContextMenuEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneContextMenuEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneContextMenuEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html
pub const qgraphicsscenehoverevent = struct {
    /// New constructs a new QGraphicsSceneHoverEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneHoverEvent {
        return C.QGraphicsSceneHoverEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneHoverEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneHoverEvent {
        return C.QGraphicsSceneHoverEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#pos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneHoverEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPointF ```
    pub fn SetPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneHoverEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneHoverEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#lastPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn LastPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneHoverEvent_LastPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setLastPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPointF ```
    pub fn SetLastPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetLastPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#lastScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn LastScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneHoverEvent_LastScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setLastScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPointF ```
    pub fn SetLastScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetLastScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#lastScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn LastScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneHoverEvent_LastScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setLastScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, pos: ?*C.QPoint ```
    pub fn SetLastScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_SetLastScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#modifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneHoverEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehoverevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QGraphicsSceneHoverEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneHoverEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneHoverEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, slot: fn (?*C.QGraphicsSceneHoverEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneHoverEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneHoverEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneHoverEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneHoverEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneHoverEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneHoverEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenehelpevent.html
pub const qgraphicsscenehelpevent = struct {
    /// New constructs a new QGraphicsSceneHelpEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneHelpEvent {
        return C.QGraphicsSceneHelpEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneHelpEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneHelpEvent {
        return C.QGraphicsSceneHelpEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehelpevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneHelpEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehelpevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHelpEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehelpevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneHelpEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenehelpevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneHelpEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneHelpEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneHelpEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, slot: fn (?*C.QGraphicsSceneHelpEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneHelpEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneHelpEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneHelpEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneHelpEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneHelpEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneHelpEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html
pub const qgraphicsscenedragdropevent = struct {
    /// New constructs a new QGraphicsSceneDragDropEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneDragDropEvent {
        return C.QGraphicsSceneDragDropEvent_new();
    }

    /// New2 constructs a new QGraphicsSceneDragDropEvent object.
    ///
    /// ``` typeVal: qevent_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QGraphicsSceneDragDropEvent {
        return C.QGraphicsSceneDragDropEvent_new2(@intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#pos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneDragDropEvent_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, pos: ?*C.QPointF ```
    pub fn SetPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_SetPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#scenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneDragDropEvent_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setScenePos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, pos: ?*C.QPointF ```
    pub fn SetScenePos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_SetScenePos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#screenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPoint {
        return C.QGraphicsSceneDragDropEvent_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setScreenPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, pos: ?*C.QPoint ```
    pub fn SetScreenPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_SetScreenPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#buttons)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Buttons(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneDragDropEvent_Buttons(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setButtons)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, buttons: i32 ```
    pub fn SetButtons(self: ?*anyopaque, buttons: i64) void {
        C.QGraphicsSceneDragDropEvent_SetButtons(@ptrCast(self), @intCast(buttons));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#modifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Modifiers(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneDragDropEvent_Modifiers(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setModifiers)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, modifiers: i32 ```
    pub fn SetModifiers(self: ?*anyopaque, modifiers: i64) void {
        C.QGraphicsSceneDragDropEvent_SetModifiers(@ptrCast(self), @intCast(modifiers));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#possibleActions)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn PossibleActions(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneDragDropEvent_PossibleActions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setPossibleActions)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, actions: i32 ```
    pub fn SetPossibleActions(self: ?*anyopaque, actions: i64) void {
        C.QGraphicsSceneDragDropEvent_SetPossibleActions(@ptrCast(self), @intCast(actions));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#proposedAction)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn ProposedAction(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneDragDropEvent_ProposedAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setProposedAction)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, action: qnamespace_enums.DropAction ```
    pub fn SetProposedAction(self: ?*anyopaque, action: i64) void {
        C.QGraphicsSceneDragDropEvent_SetProposedAction(@ptrCast(self), @intCast(action));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#acceptProposedAction)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn AcceptProposedAction(self: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_AcceptProposedAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#dropAction)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn DropAction(self: ?*anyopaque) i64 {
        return C.QGraphicsSceneDragDropEvent_DropAction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setDropAction)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, action: qnamespace_enums.DropAction ```
    pub fn SetDropAction(self: ?*anyopaque, action: i64) void {
        C.QGraphicsSceneDragDropEvent_SetDropAction(@ptrCast(self), @intCast(action));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#source)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Source(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneDragDropEvent_Source(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setSource)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, source: ?*C.QWidget ```
    pub fn SetSource(self: ?*anyopaque, source: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_SetSource(@ptrCast(self), @ptrCast(source));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#mimeData)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn MimeData(self: ?*anyopaque) ?*C.QMimeData {
        return C.QGraphicsSceneDragDropEvent_MimeData(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenedragdropevent.html#setMimeData)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, data: ?*C.QMimeData ```
    pub fn SetMimeData(self: ?*anyopaque, data: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_SetMimeData(@ptrCast(self), @ptrCast(data));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneDragDropEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneDragDropEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, slot: fn (?*C.QGraphicsSceneDragDropEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneDragDropEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneDragDropEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneDragDropEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneDragDropEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneDragDropEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneDragDropEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicssceneresizeevent.html
pub const qgraphicssceneresizeevent = struct {
    /// New constructs a new QGraphicsSceneResizeEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneResizeEvent {
        return C.QGraphicsSceneResizeEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneresizeevent.html#oldSize)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn OldSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsSceneResizeEvent_OldSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneresizeevent.html#setOldSize)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, size: ?*C.QSizeF ```
    pub fn SetOldSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QGraphicsSceneResizeEvent_SetOldSize(@ptrCast(self), @ptrCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneresizeevent.html#newSize)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn NewSize(self: ?*anyopaque) ?*C.QSizeF {
        return C.QGraphicsSceneResizeEvent_NewSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneresizeevent.html#setNewSize)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, size: ?*C.QSizeF ```
    pub fn SetNewSize(self: ?*anyopaque, size: ?*anyopaque) void {
        C.QGraphicsSceneResizeEvent_SetNewSize(@ptrCast(self), @ptrCast(size));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneResizeEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneResizeEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, slot: fn (?*C.QGraphicsSceneResizeEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneResizeEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneResizeEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneResizeEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneResizeEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneResizeEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneResizeEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicsscenemoveevent.html
pub const qgraphicsscenemoveevent = struct {
    /// New constructs a new QGraphicsSceneMoveEvent object.
    ///
    ///
    pub fn New() ?*C.QGraphicsSceneMoveEvent {
        return C.QGraphicsSceneMoveEvent_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemoveevent.html#oldPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn OldPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMoveEvent_OldPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemoveevent.html#setOldPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, pos: ?*C.QPointF ```
    pub fn SetOldPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMoveEvent_SetOldPos(@ptrCast(self), @ptrCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemoveevent.html#newPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn NewPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QGraphicsSceneMoveEvent_NewPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicsscenemoveevent.html#setNewPos)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, pos: ?*C.QPointF ```
    pub fn SetNewPos(self: ?*anyopaque, pos: ?*anyopaque) void {
        C.QGraphicsSceneMoveEvent_SetNewPos(@ptrCast(self), @ptrCast(pos));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#widget)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Widget(self: ?*anyopaque) ?*C.QWidget {
        return C.QGraphicsSceneEvent_Widget(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setWidget)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, widget: ?*C.QWidget ```
    pub fn SetWidget(self: ?*anyopaque, widget: ?*anyopaque) void {
        C.QGraphicsSceneEvent_SetWidget(@ptrCast(self), @ptrCast(widget));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#timestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QGraphicsSceneEvent_Timestamp(@ptrCast(self));
    }

    /// Inherited from QGraphicsSceneEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgraphicssceneevent.html#setTimestamp)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, ts: u64 ```
    pub fn SetTimestamp(self: ?*anyopaque, ts: u64) void {
        C.QGraphicsSceneEvent_SetTimestamp(@ptrCast(self), @intCast(ts));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#type)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QEvent_Type(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#spontaneous)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Spontaneous(self: ?*anyopaque) bool {
        return C.QEvent_Spontaneous(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isAccepted)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEvent_IsAccepted(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#accept)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QEvent_Accept(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#ignore)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Ignore(self: ?*anyopaque) void {
        C.QEvent_Ignore(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isInputEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn IsInputEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsInputEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isPointerEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn IsPointerEvent(self: ?*anyopaque) bool {
        return C.QEvent_IsPointerEvent(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#isSinglePointEvent)
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
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
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, accepted: bool ```
    pub fn SetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneMoveEvent_SetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, accepted: bool ```
    pub fn QBaseSetAccepted(self: ?*anyopaque, accepted: bool) void {
        C.QGraphicsSceneMoveEvent_QBaseSetAccepted(@ptrCast(self), accepted);
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, slot: fn (?*C.QGraphicsSceneMoveEvent, bool) callconv(.c) void ```
    pub fn OnSetAccepted(self: ?*anyopaque, slot: fn (?*anyopaque, bool) callconv(.c) void) void {
        C.QGraphicsSceneMoveEvent_OnSetAccepted(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QEvent
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qevent.html#clone)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn Clone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneMoveEvent_Clone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn QBaseClone(self: ?*anyopaque) ?*C.QEvent {
        return C.QGraphicsSceneMoveEvent_QBaseClone(@ptrCast(self));
    }

    /// Inherited from QEvent
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent, slot: fn () callconv(.c) ?*C.QEvent ```
    pub fn OnClone(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QEvent) void {
        C.QGraphicsSceneMoveEvent_OnClone(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGraphicsSceneMoveEvent ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGraphicsSceneMoveEvent_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgraphicssceneevent.html#types
pub const enums = struct {
    pub const Reason = enum {
        pub const Mouse: i32 = 0;
        pub const Keyboard: i32 = 1;
        pub const Other: i32 = 2;
    };
};
