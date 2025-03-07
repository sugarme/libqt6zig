const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qcolortransform.html
pub const qcolortransform = struct {
    /// New constructs a new QColorTransform object.
    ///
    ///
    pub fn New() ?*C.QColorTransform {
        return C.QColorTransform_new();
    }

    /// New2 constructs a new QColorTransform object.
    ///
    /// ``` colorTransform: ?*C.QColorTransform ```
    pub fn New2(colorTransform: ?*anyopaque) ?*C.QColorTransform {
        return C.QColorTransform_new2(@ptrCast(colorTransform));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#operator=)
    ///
    /// ``` self: ?*C.QColorTransform, other: ?*C.QColorTransform ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QColorTransform_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#swap)
    ///
    /// ``` self: ?*C.QColorTransform, other: ?*C.QColorTransform ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QColorTransform_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#isIdentity)
    ///
    /// ``` self: ?*C.QColorTransform ```
    pub fn IsIdentity(self: ?*anyopaque) bool {
        return C.QColorTransform_IsIdentity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#map)
    ///
    /// ``` self: ?*C.QColorTransform, argb: u32 ```
    pub fn Map(self: ?*anyopaque, argb: u32) u32 {
        return C.QColorTransform_Map(@ptrCast(self), @intCast(argb));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#map)
    ///
    /// ``` self: ?*C.QColorTransform, rgba64: ?*C.QRgba64 ```
    pub fn MapWithRgba64(self: ?*anyopaque, rgba64: ?*C.QRgba64) ?*C.QRgba64 {
        return C.QColorTransform_MapWithRgba64(@ptrCast(self), @ptrCast(rgba64));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolortransform.html#map)
    ///
    /// ``` self: ?*C.QColorTransform, color: ?*C.QColor ```
    pub fn MapWithColor(self: ?*anyopaque, color: ?*anyopaque) ?*C.QColor {
        return C.QColorTransform_MapWithColor(@ptrCast(self), @ptrCast(color));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QColorTransform ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QColorTransform_Delete(@ptrCast(self));
    }
};
