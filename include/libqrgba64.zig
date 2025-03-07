const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qrgba64.html
pub const qrgba64 = struct {
    /// New constructs a new QRgba64 object.
    ///
    ///
    pub fn New() ?*C.QRgba64 {
        return C.QRgba64_new();
    }

    /// New2 constructs a new QRgba64 object.
    ///
    /// ``` param1: ?*C.QRgba64 ```
    pub fn New2(param1: ?*anyopaque) ?*C.QRgba64 {
        return C.QRgba64_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#fromRgba64)
    ///
    /// ``` c: u64 ```
    pub fn FromRgba64(c: u64) ?*C.QRgba64 {
        return C.QRgba64_FromRgba64(@intCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#fromRgba64)
    ///
    /// ``` red: u16, green: u16, blue: u16, alpha: u16 ```
    pub fn FromRgba642(red: u16, green: u16, blue: u16, alpha: u16) ?*C.QRgba64 {
        return C.QRgba64_FromRgba642(@intCast(red), @intCast(green), @intCast(blue), @intCast(alpha));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#fromRgba)
    ///
    /// ``` red: u8, green: u8, blue: u8, alpha: u8 ```
    pub fn FromRgba(red: u8, green: u8, blue: u8, alpha: u8) ?*C.QRgba64 {
        return C.QRgba64_FromRgba(@intCast(red), @intCast(green), @intCast(blue), @intCast(alpha));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#fromArgb32)
    ///
    /// ``` rgb: u32 ```
    pub fn FromArgb32(rgb: u32) ?*C.QRgba64 {
        return C.QRgba64_FromArgb32(@intCast(rgb));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#isOpaque)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn IsOpaque(self: ?*anyopaque) bool {
        return C.QRgba64_IsOpaque(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#isTransparent)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn IsTransparent(self: ?*anyopaque) bool {
        return C.QRgba64_IsTransparent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#red)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Red(self: ?*anyopaque) u16 {
        return C.QRgba64_Red(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#green)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Green(self: ?*anyopaque) u16 {
        return C.QRgba64_Green(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#blue)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Blue(self: ?*anyopaque) u16 {
        return C.QRgba64_Blue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#alpha)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Alpha(self: ?*anyopaque) u16 {
        return C.QRgba64_Alpha(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#setRed)
    ///
    /// ``` self: ?*C.QRgba64, _red: u16 ```
    pub fn SetRed(self: ?*anyopaque, _red: u16) void {
        C.QRgba64_SetRed(@ptrCast(self), @intCast(_red));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#setGreen)
    ///
    /// ``` self: ?*C.QRgba64, _green: u16 ```
    pub fn SetGreen(self: ?*anyopaque, _green: u16) void {
        C.QRgba64_SetGreen(@ptrCast(self), @intCast(_green));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#setBlue)
    ///
    /// ``` self: ?*C.QRgba64, _blue: u16 ```
    pub fn SetBlue(self: ?*anyopaque, _blue: u16) void {
        C.QRgba64_SetBlue(@ptrCast(self), @intCast(_blue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#setAlpha)
    ///
    /// ``` self: ?*C.QRgba64, _alpha: u16 ```
    pub fn SetAlpha(self: ?*anyopaque, _alpha: u16) void {
        C.QRgba64_SetAlpha(@ptrCast(self), @intCast(_alpha));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#red8)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Red8(self: ?*anyopaque) u8 {
        return C.QRgba64_Red8(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#green8)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Green8(self: ?*anyopaque) u8 {
        return C.QRgba64_Green8(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#blue8)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Blue8(self: ?*anyopaque) u8 {
        return C.QRgba64_Blue8(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#alpha8)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Alpha8(self: ?*anyopaque) u8 {
        return C.QRgba64_Alpha8(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#toArgb32)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn ToArgb32(self: ?*anyopaque) u32 {
        return C.QRgba64_ToArgb32(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#toRgb16)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn ToRgb16(self: ?*anyopaque) u16 {
        return C.QRgba64_ToRgb16(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#premultiplied)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Premultiplied(self: ?*anyopaque) ?*C.QRgba64 {
        return C.QRgba64_Premultiplied(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#unpremultiplied)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn Unpremultiplied(self: ?*anyopaque) ?*C.QRgba64 {
        return C.QRgba64_Unpremultiplied(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#operator unsigned long long)
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn ToUnsignedLongLong(self: ?*anyopaque) u64 {
        return C.QRgba64_ToUnsignedLongLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrgba64.html#operator=)
    ///
    /// ``` self: ?*C.QRgba64, _rgba: u64 ```
    pub fn OperatorAssign(self: ?*anyopaque, _rgba: u64) void {
        C.QRgba64_OperatorAssign(@ptrCast(self), @intCast(_rgba));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRgba64 ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRgba64_Delete(@ptrCast(self));
    }
};
