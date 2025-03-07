const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qfloat16.html
pub const qfloat16 = struct {
    /// New constructs a new qfloat16 object.
    ///
    ///
    pub fn New() ?*C.qfloat16 {
        return C.qfloat16_new();
    }

    /// New2 constructs a new qfloat16 object.
    ///
    /// ``` param1: qnamespace_enums.Initialization ```
    pub fn New2(param1: i64) ?*C.qfloat16 {
        return C.qfloat16_new2(@intCast(param1));
    }

    /// New3 constructs a new qfloat16 object.
    ///
    /// ``` f: f32 ```
    pub fn New3(f: f32) ?*C.qfloat16 {
        return C.qfloat16_new3(@floatCast(f));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*qfloat16, other: ?*qfloat16 ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.qfloat16_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*qfloat16, other: ?*qfloat16 ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.qfloat16_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#operator float)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn ToFloat(self: ?*anyopaque) f32 {
        return C.qfloat16_ToFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#isInf)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn IsInf(self: ?*anyopaque) bool {
        return C.qfloat16_IsInf(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#isNaN)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn IsNaN(self: ?*anyopaque) bool {
        return C.qfloat16_IsNaN(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#isFinite)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn IsFinite(self: ?*anyopaque) bool {
        return C.qfloat16_IsFinite(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#fpClassify)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn FpClassify(self: ?*anyopaque) i32 {
        return C.qfloat16_FpClassify(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfloat16.html#isNormal)
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn IsNormal(self: ?*anyopaque) bool {
        return C.qfloat16_IsNormal(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.qfloat16 ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.qfloat16_Delete(@ptrCast(self));
    }
};
