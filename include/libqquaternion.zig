const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qquaternion.html
pub const qquaternion = struct {
    /// New constructs a new QQuaternion object.
    ///
    /// ``` other: ?*C.QQuaternion ```
    pub fn New(other: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_new(@ptrCast(other));
    }

    /// New2 constructs a new QQuaternion object and invalidates the source QQuaternion object.
    ///
    /// ``` other: ?*C.QQuaternion ```
    pub fn New2(other: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_new2(@ptrCast(other));
    }

    /// New3 constructs a new QQuaternion object.
    ///
    ///
    pub fn New3() ?*C.QQuaternion {
        return C.QQuaternion_new3();
    }

    /// New4 constructs a new QQuaternion object.
    ///
    /// ``` param1: qnamespace_enums.Initialization ```
    pub fn New4(param1: i64) ?*C.QQuaternion {
        return C.QQuaternion_new4(@intCast(param1));
    }

    /// New5 constructs a new QQuaternion object.
    ///
    /// ``` scalar: f32, xpos: f32, ypos: f32, zpos: f32 ```
    pub fn New5(scalar: f32, xpos: f32, ypos: f32, zpos: f32) ?*C.QQuaternion {
        return C.QQuaternion_new5(@floatCast(scalar), @floatCast(xpos), @floatCast(ypos), @floatCast(zpos));
    }

    /// New6 constructs a new QQuaternion object.
    ///
    /// ``` scalar: f32, vector: ?*C.QVector3D ```
    pub fn New6(scalar: f32, vector: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_new6(@floatCast(scalar), @ptrCast(vector));
    }

    /// New7 constructs a new QQuaternion object.
    ///
    /// ``` vector: ?*C.QVector4D ```
    pub fn New7(vector: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_new7(@ptrCast(vector));
    }

    /// New8 constructs a new QQuaternion object.
    ///
    /// ``` param1: ?*C.QQuaternion ```
    pub fn New8(param1: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_new8(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QQuaternion, other: ?*QQuaternion ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QQuaternion_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QQuaternion, other: ?*QQuaternion ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QQuaternion_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#isNull)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QQuaternion_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#isIdentity)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn IsIdentity(self: ?*anyopaque) bool {
        return C.QQuaternion_IsIdentity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#vector)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Vector(self: ?*anyopaque) ?*C.QVector3D {
        return C.QQuaternion_Vector(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setVector)
    ///
    /// ``` self: ?*C.QQuaternion, vector: ?*C.QVector3D ```
    pub fn SetVector(self: ?*anyopaque, vector: ?*anyopaque) void {
        C.QQuaternion_SetVector(@ptrCast(self), @ptrCast(vector));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setVector)
    ///
    /// ``` self: ?*C.QQuaternion, x: f32, y: f32, z: f32 ```
    pub fn SetVector2(self: ?*anyopaque, x: f32, y: f32, z: f32) void {
        C.QQuaternion_SetVector2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(z));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#x)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn X(self: ?*anyopaque) f32 {
        return C.QQuaternion_X(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#y)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Y(self: ?*anyopaque) f32 {
        return C.QQuaternion_Y(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#z)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Z(self: ?*anyopaque) f32 {
        return C.QQuaternion_Z(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#scalar)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Scalar(self: ?*anyopaque) f32 {
        return C.QQuaternion_Scalar(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setX)
    ///
    /// ``` self: ?*C.QQuaternion, x: f32 ```
    pub fn SetX(self: ?*anyopaque, x: f32) void {
        C.QQuaternion_SetX(@ptrCast(self), @floatCast(x));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setY)
    ///
    /// ``` self: ?*C.QQuaternion, y: f32 ```
    pub fn SetY(self: ?*anyopaque, y: f32) void {
        C.QQuaternion_SetY(@ptrCast(self), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setZ)
    ///
    /// ``` self: ?*C.QQuaternion, z: f32 ```
    pub fn SetZ(self: ?*anyopaque, z: f32) void {
        C.QQuaternion_SetZ(@ptrCast(self), @floatCast(z));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#setScalar)
    ///
    /// ``` self: ?*C.QQuaternion, scalar: f32 ```
    pub fn SetScalar(self: ?*anyopaque, scalar: f32) void {
        C.QQuaternion_SetScalar(@ptrCast(self), @floatCast(scalar));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#dotProduct)
    ///
    /// ``` q1: ?*C.QQuaternion, q2: ?*C.QQuaternion ```
    pub fn DotProduct(q1: ?*anyopaque, q2: ?*anyopaque) f32 {
        return C.QQuaternion_DotProduct(@ptrCast(q1), @ptrCast(q2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#length)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Length(self: ?*anyopaque) f32 {
        return C.QQuaternion_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#lengthSquared)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn LengthSquared(self: ?*anyopaque) f32 {
        return C.QQuaternion_LengthSquared(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#normalized)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Normalized(self: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_Normalized(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#normalize)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Normalize(self: ?*anyopaque) void {
        C.QQuaternion_Normalize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#inverted)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Inverted(self: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_Inverted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#conjugated)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn Conjugated(self: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_Conjugated(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#rotatedVector)
    ///
    /// ``` self: ?*C.QQuaternion, vector: ?*C.QVector3D ```
    pub fn RotatedVector(self: ?*anyopaque, vector: ?*anyopaque) ?*C.QVector3D {
        return C.QQuaternion_RotatedVector(@ptrCast(self), @ptrCast(vector));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator+=)
    ///
    /// ``` self: ?*C.QQuaternion, quaternion: ?*C.QQuaternion ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, quaternion: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_OperatorPlusAssign(@ptrCast(self), @ptrCast(quaternion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator-=)
    ///
    /// ``` self: ?*C.QQuaternion, quaternion: ?*C.QQuaternion ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, quaternion: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_OperatorMinusAssign(@ptrCast(self), @ptrCast(quaternion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator*=)
    ///
    /// ``` self: ?*C.QQuaternion, factor: f32 ```
    pub fn OperatorMultiplyAssign(self: ?*anyopaque, factor: f32) ?*C.QQuaternion {
        return C.QQuaternion_OperatorMultiplyAssign(@ptrCast(self), @floatCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator*=)
    ///
    /// ``` self: ?*C.QQuaternion, quaternion: ?*C.QQuaternion ```
    pub fn OperatorMultiplyAssignWithQuaternion(self: ?*anyopaque, quaternion: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_OperatorMultiplyAssignWithQuaternion(@ptrCast(self), @ptrCast(quaternion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator/=)
    ///
    /// ``` self: ?*C.QQuaternion, divisor: f32 ```
    pub fn OperatorDivideAssign(self: ?*anyopaque, divisor: f32) ?*C.QQuaternion {
        return C.QQuaternion_OperatorDivideAssign(@ptrCast(self), @floatCast(divisor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#toVector4D)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn ToVector4D(self: ?*anyopaque) ?*C.QVector4D {
        return C.QQuaternion_ToVector4D(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#operator QVariant)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QQuaternion_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#getAxisAndAngle)
    ///
    /// ``` self: ?*C.QQuaternion, axis: ?*C.QVector3D, angle: ?*f32 ```
    pub fn GetAxisAndAngle(self: ?*anyopaque, axis: ?*anyopaque, angle: ?*anyopaque) void {
        C.QQuaternion_GetAxisAndAngle(@ptrCast(self), @ptrCast(axis), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromAxisAndAngle)
    ///
    /// ``` axis: ?*C.QVector3D, angle: f32 ```
    pub fn FromAxisAndAngle(axis: ?*anyopaque, angle: f32) ?*C.QQuaternion {
        return C.QQuaternion_FromAxisAndAngle(@ptrCast(axis), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#getAxisAndAngle)
    ///
    /// ``` self: ?*C.QQuaternion, x: ?*f32, y: ?*f32, z: ?*f32, angle: ?*f32 ```
    pub fn GetAxisAndAngle2(self: ?*anyopaque, x: ?*anyopaque, y: ?*anyopaque, z: ?*anyopaque, angle: ?*anyopaque) void {
        C.QQuaternion_GetAxisAndAngle2(@ptrCast(self), @floatCast(x), @floatCast(y), @floatCast(z), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromAxisAndAngle)
    ///
    /// ``` x: f32, y: f32, z: f32, angle: f32 ```
    pub fn FromAxisAndAngle2(x: f32, y: f32, z: f32, angle: f32) ?*C.QQuaternion {
        return C.QQuaternion_FromAxisAndAngle2(@floatCast(x), @floatCast(y), @floatCast(z), @floatCast(angle));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#toEulerAngles)
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn ToEulerAngles(self: ?*anyopaque) ?*C.QVector3D {
        return C.QQuaternion_ToEulerAngles(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromEulerAngles)
    ///
    /// ``` eulerAngles: ?*C.QVector3D ```
    pub fn FromEulerAngles(eulerAngles: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_FromEulerAngles(@ptrCast(eulerAngles));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#getEulerAngles)
    ///
    /// ``` self: ?*C.QQuaternion, pitch: ?*f32, yaw: ?*f32, roll: ?*f32 ```
    pub fn GetEulerAngles(self: ?*anyopaque, pitch: ?*anyopaque, yaw: ?*anyopaque, roll: ?*anyopaque) void {
        C.QQuaternion_GetEulerAngles(@ptrCast(self), @floatCast(pitch), @floatCast(yaw), @floatCast(roll));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromEulerAngles)
    ///
    /// ``` pitch: f32, yaw: f32, roll: f32 ```
    pub fn FromEulerAngles2(pitch: f32, yaw: f32, roll: f32) ?*C.QQuaternion {
        return C.QQuaternion_FromEulerAngles2(@floatCast(pitch), @floatCast(yaw), @floatCast(roll));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#getAxes)
    ///
    /// ``` self: ?*C.QQuaternion, xAxis: ?*C.QVector3D, yAxis: ?*C.QVector3D, zAxis: ?*C.QVector3D ```
    pub fn GetAxes(self: ?*anyopaque, xAxis: ?*anyopaque, yAxis: ?*anyopaque, zAxis: ?*anyopaque) void {
        C.QQuaternion_GetAxes(@ptrCast(self), @ptrCast(xAxis), @ptrCast(yAxis), @ptrCast(zAxis));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromAxes)
    ///
    /// ``` xAxis: ?*C.QVector3D, yAxis: ?*C.QVector3D, zAxis: ?*C.QVector3D ```
    pub fn FromAxes(xAxis: ?*anyopaque, yAxis: ?*anyopaque, zAxis: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_FromAxes(@ptrCast(xAxis), @ptrCast(yAxis), @ptrCast(zAxis));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#fromDirection)
    ///
    /// ``` direction: ?*C.QVector3D, up: ?*C.QVector3D ```
    pub fn FromDirection(direction: ?*anyopaque, up: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_FromDirection(@ptrCast(direction), @ptrCast(up));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#rotationTo)
    ///
    /// ``` from: ?*C.QVector3D, to: ?*C.QVector3D ```
    pub fn RotationTo(from: ?*anyopaque, to: ?*anyopaque) ?*C.QQuaternion {
        return C.QQuaternion_RotationTo(@ptrCast(from), @ptrCast(to));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#slerp)
    ///
    /// ``` q1: ?*C.QQuaternion, q2: ?*C.QQuaternion, t: f32 ```
    pub fn Slerp(q1: ?*anyopaque, q2: ?*anyopaque, t: f32) ?*C.QQuaternion {
        return C.QQuaternion_Slerp(@ptrCast(q1), @ptrCast(q2), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qquaternion.html#nlerp)
    ///
    /// ``` q1: ?*C.QQuaternion, q2: ?*C.QQuaternion, t: f32 ```
    pub fn Nlerp(q1: ?*anyopaque, q2: ?*anyopaque, t: f32) ?*C.QQuaternion {
        return C.QQuaternion_Nlerp(@ptrCast(q1), @ptrCast(q2), @floatCast(t));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QQuaternion ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QQuaternion_Delete(@ptrCast(self));
    }
};
