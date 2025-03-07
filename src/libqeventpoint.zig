const C = @import("qt6c");
const qeventpoint_enums = enums;

/// https://doc.qt.io/qt-6/qeventpoint.html
pub const qeventpoint = struct {
    /// New constructs a new QEventPoint object.
    ///
    ///
    pub fn New() ?*C.QEventPoint {
        return C.QEventPoint_new();
    }

    /// New2 constructs a new QEventPoint object.
    ///
    /// ``` pointId: i32, state: qeventpoint_enums.State, scenePosition: ?*C.QPointF, globalPosition: ?*C.QPointF ```
    pub fn New2(pointId: i32, state: i64, scenePosition: ?*anyopaque, globalPosition: ?*anyopaque) ?*C.QEventPoint {
        return C.QEventPoint_new2(@intCast(pointId), @intCast(state), @ptrCast(scenePosition), @ptrCast(globalPosition));
    }

    /// New3 constructs a new QEventPoint object.
    ///
    /// ``` other: ?*C.QEventPoint ```
    pub fn New3(other: ?*anyopaque) ?*C.QEventPoint {
        return C.QEventPoint_new3(@ptrCast(other));
    }

    /// New4 constructs a new QEventPoint object.
    ///
    /// ``` id: i32 ```
    pub fn New4(id: i32) ?*C.QEventPoint {
        return C.QEventPoint_new4(@intCast(id));
    }

    /// New5 constructs a new QEventPoint object.
    ///
    /// ``` id: i32, device: ?*C.QPointingDevice ```
    pub fn New5(id: i32, device: ?*anyopaque) ?*C.QEventPoint {
        return C.QEventPoint_new5(@intCast(id), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#operator=)
    ///
    /// ``` self: ?*C.QEventPoint, other: ?*C.QEventPoint ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QEventPoint_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#operator==)
    ///
    /// ``` self: ?*C.QEventPoint, other: ?*C.QEventPoint ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QEventPoint_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#operator!=)
    ///
    /// ``` self: ?*C.QEventPoint, other: ?*C.QEventPoint ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QEventPoint_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#swap)
    ///
    /// ``` self: ?*C.QEventPoint, other: ?*C.QEventPoint ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QEventPoint_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#position)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Position(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#pressPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn PressPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_PressPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#grabPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn GrabPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_GrabPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_LastPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#scenePosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn ScenePosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_ScenePosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#scenePressPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn ScenePressPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_ScenePressPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#sceneGrabPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn SceneGrabPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_SceneGrabPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#sceneLastPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn SceneLastPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_SceneLastPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#globalPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn GlobalPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_GlobalPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#globalPressPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn GlobalPressPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_GlobalPressPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#globalGrabPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn GlobalGrabPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_GlobalGrabPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#globalLastPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn GlobalLastPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_GlobalLastPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#normalizedPosition)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn NormalizedPosition(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_NormalizedPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#pos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Pos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#startPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn StartPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_StartPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#scenePos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn ScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_ScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#startScenePos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn StartScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_StartScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#screenPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn ScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_ScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#startScreenPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn StartScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_StartScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#startNormalizedPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn StartNormalizedPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_StartNormalizedPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#normalizedPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn NormalizedPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_NormalizedPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_LastPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastScenePos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastScenePos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_LastScenePos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastScreenPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastScreenPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_LastScreenPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastNormalizedPos)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastNormalizedPos(self: ?*anyopaque) ?*C.QPointF {
        return C.QEventPoint_LastNormalizedPos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#velocity)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Velocity(self: ?*anyopaque) ?*C.QVector2D {
        return C.QEventPoint_Velocity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#state)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn State(self: ?*anyopaque) i64 {
        return C.QEventPoint_State(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#device)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Device(self: ?*anyopaque) ?*C.QPointingDevice {
        return C.QEventPoint_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#id)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Id(self: ?*anyopaque) i32 {
        return C.QEventPoint_Id(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#uniqueId)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn UniqueId(self: ?*anyopaque) ?*C.QPointingDeviceUniqueId {
        return C.QEventPoint_UniqueId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#timestamp)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Timestamp(self: ?*anyopaque) u64 {
        return C.QEventPoint_Timestamp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#lastTimestamp)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn LastTimestamp(self: ?*anyopaque) u64 {
        return C.QEventPoint_LastTimestamp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#pressTimestamp)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn PressTimestamp(self: ?*anyopaque) u64 {
        return C.QEventPoint_PressTimestamp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#timeHeld)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn TimeHeld(self: ?*anyopaque) f64 {
        return C.QEventPoint_TimeHeld(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#pressure)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Pressure(self: ?*anyopaque) f64 {
        return C.QEventPoint_Pressure(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#rotation)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn Rotation(self: ?*anyopaque) f64 {
        return C.QEventPoint_Rotation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#ellipseDiameters)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn EllipseDiameters(self: ?*anyopaque) ?*C.QSizeF {
        return C.QEventPoint_EllipseDiameters(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#isAccepted)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn IsAccepted(self: ?*anyopaque) bool {
        return C.QEventPoint_IsAccepted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#setAccepted)
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn SetAccepted(self: ?*anyopaque) void {
        C.QEventPoint_SetAccepted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qeventpoint.html#setAccepted)
    ///
    /// ``` self: ?*C.QEventPoint, accepted: bool ```
    pub fn SetAccepted1(self: ?*anyopaque, accepted: bool) void {
        C.QEventPoint_SetAccepted1(@ptrCast(self), accepted);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QEventPoint ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QEventPoint_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qeventpoint.html#types
pub const enums = struct {
    pub const State = enum {
        pub const Unknown: u8 = 0;
        pub const Stationary: u8 = 4;
        pub const Pressed: u8 = 1;
        pub const Updated: u8 = 2;
        pub const Released: u8 = 8;
    };
};
