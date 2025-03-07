const C = @import("qt6c");
const qbrush_enums = enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");
pub const struct_f64_cqcolor = struct { first: f64, second: ?*C.QColor };

/// https://doc.qt.io/qt-6/qbrush.html
pub const qbrush = struct {
    /// New constructs a new QBrush object.
    ///
    ///
    pub fn New() ?*C.QBrush {
        return C.QBrush_new();
    }

    /// New2 constructs a new QBrush object.
    ///
    /// ``` bs: qnamespace_enums.BrushStyle ```
    pub fn New2(bs: i64) ?*C.QBrush {
        return C.QBrush_new2(@intCast(bs));
    }

    /// New3 constructs a new QBrush object.
    ///
    /// ``` color: ?*C.QColor ```
    pub fn New3(color: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new3(@ptrCast(color));
    }

    /// New4 constructs a new QBrush object.
    ///
    /// ``` color: qnamespace_enums.GlobalColor ```
    pub fn New4(color: i64) ?*C.QBrush {
        return C.QBrush_new4(@intCast(color));
    }

    /// New5 constructs a new QBrush object.
    ///
    /// ``` color: ?*C.QColor, pixmap: ?*C.QPixmap ```
    pub fn New5(color: ?*anyopaque, pixmap: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new5(@ptrCast(color), @ptrCast(pixmap));
    }

    /// New6 constructs a new QBrush object.
    ///
    /// ``` color: qnamespace_enums.GlobalColor, pixmap: ?*C.QPixmap ```
    pub fn New6(color: i64, pixmap: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new6(@intCast(color), @ptrCast(pixmap));
    }

    /// New7 constructs a new QBrush object.
    ///
    /// ``` pixmap: ?*C.QPixmap ```
    pub fn New7(pixmap: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new7(@ptrCast(pixmap));
    }

    /// New8 constructs a new QBrush object.
    ///
    /// ``` image: ?*C.QImage ```
    pub fn New8(image: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new8(@ptrCast(image));
    }

    /// New9 constructs a new QBrush object.
    ///
    /// ``` brush: ?*C.QBrush ```
    pub fn New9(brush: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new9(@ptrCast(brush));
    }

    /// New10 constructs a new QBrush object.
    ///
    /// ``` gradient: ?*C.QGradient ```
    pub fn New10(gradient: ?*anyopaque) ?*C.QBrush {
        return C.QBrush_new10(@ptrCast(gradient));
    }

    /// New11 constructs a new QBrush object.
    ///
    /// ``` color: ?*C.QColor, bs: qnamespace_enums.BrushStyle ```
    pub fn New11(color: ?*anyopaque, bs: i64) ?*C.QBrush {
        return C.QBrush_new11(@ptrCast(color), @intCast(bs));
    }

    /// New12 constructs a new QBrush object.
    ///
    /// ``` color: qnamespace_enums.GlobalColor, bs: qnamespace_enums.BrushStyle ```
    pub fn New12(color: i64, bs: i64) ?*C.QBrush {
        return C.QBrush_new12(@intCast(color), @intCast(bs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#operator=)
    ///
    /// ``` self: ?*C.QBrush, brush: ?*C.QBrush ```
    pub fn OperatorAssign(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QBrush_OperatorAssign(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#swap)
    ///
    /// ``` self: ?*C.QBrush, other: ?*C.QBrush ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBrush_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#operator QVariant)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QBrush_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#style)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn Style(self: ?*anyopaque) i64 {
        return C.QBrush_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setStyle)
    ///
    /// ``` self: ?*C.QBrush, style: qnamespace_enums.BrushStyle ```
    pub fn SetStyle(self: ?*anyopaque, style: i64) void {
        C.QBrush_SetStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#transform)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn Transform(self: ?*anyopaque) ?*C.QTransform {
        return C.QBrush_Transform(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setTransform)
    ///
    /// ``` self: ?*C.QBrush, transform: ?*C.QTransform ```
    pub fn SetTransform(self: ?*anyopaque, transform: ?*anyopaque) void {
        C.QBrush_SetTransform(@ptrCast(self), @ptrCast(transform));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#texture)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn Texture(self: ?*anyopaque) ?*C.QPixmap {
        return C.QBrush_Texture(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setTexture)
    ///
    /// ``` self: ?*C.QBrush, pixmap: ?*C.QPixmap ```
    pub fn SetTexture(self: ?*anyopaque, pixmap: ?*anyopaque) void {
        C.QBrush_SetTexture(@ptrCast(self), @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#textureImage)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn TextureImage(self: ?*anyopaque) ?*C.QImage {
        return C.QBrush_TextureImage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setTextureImage)
    ///
    /// ``` self: ?*C.QBrush, image: ?*C.QImage ```
    pub fn SetTextureImage(self: ?*anyopaque, image: ?*anyopaque) void {
        C.QBrush_SetTextureImage(@ptrCast(self), @ptrCast(image));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#color)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn Color(self: ?*anyopaque) ?*C.QColor {
        return C.QBrush_Color(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setColor)
    ///
    /// ``` self: ?*C.QBrush, color: ?*C.QColor ```
    pub fn SetColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QBrush_SetColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#setColor)
    ///
    /// ``` self: ?*C.QBrush, color: qnamespace_enums.GlobalColor ```
    pub fn SetColorWithColor(self: ?*anyopaque, color: i64) void {
        C.QBrush_SetColorWithColor(@ptrCast(self), @intCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#gradient)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn Gradient(self: ?*anyopaque) ?*C.QGradient {
        return C.QBrush_Gradient(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#isOpaque)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn IsOpaque(self: ?*anyopaque) bool {
        return C.QBrush_IsOpaque(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#operator==)
    ///
    /// ``` self: ?*C.QBrush, b: ?*C.QBrush ```
    pub fn OperatorEqual(self: ?*anyopaque, b: ?*anyopaque) bool {
        return C.QBrush_OperatorEqual(@ptrCast(self), @ptrCast(b));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#operator!=)
    ///
    /// ``` self: ?*C.QBrush, b: ?*C.QBrush ```
    pub fn OperatorNotEqual(self: ?*anyopaque, b: ?*anyopaque) bool {
        return C.QBrush_OperatorNotEqual(@ptrCast(self), @ptrCast(b));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrush.html#isDetached)
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QBrush_IsDetached(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBrush ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBrush_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qbrushdata.html
pub const qbrushdata = struct {
    /// New constructs a new QBrushData object.
    ///
    /// ``` param1: ?*C.QBrushData ```
    pub fn New(param1: ?*anyopaque) ?*C.QBrushData {
        return C.QBrushData_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbrushdata.html#operator=)
    ///
    /// ``` self: ?*C.QBrushData, param1: ?*C.QBrushData ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBrushData_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBrushData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBrushData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgradient.html
pub const qgradient = struct {
    /// New constructs a new QGradient object.
    ///
    ///
    pub fn New() ?*C.QGradient {
        return C.QGradient_new();
    }

    /// New2 constructs a new QGradient object.
    ///
    /// ``` param1: qbrush_enums.Preset ```
    pub fn New2(param1: i64) ?*C.QGradient {
        return C.QGradient_new2(@intCast(param1));
    }

    /// New3 constructs a new QGradient object.
    ///
    /// ``` param1: ?*C.QGradient ```
    pub fn New3(param1: ?*anyopaque) ?*C.QGradient {
        return C.QGradient_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#type)
    ///
    /// ``` self: ?*C.QGradient ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QGradient_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setSpread)
    ///
    /// ``` self: ?*C.QGradient, spread: qbrush_enums.Spread ```
    pub fn SetSpread(self: ?*anyopaque, spread: i64) void {
        C.QGradient_SetSpread(@ptrCast(self), @intCast(spread));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#spread)
    ///
    /// ``` self: ?*C.QGradient ```
    pub fn Spread(self: ?*anyopaque) i64 {
        return C.QGradient_Spread(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setColorAt)
    ///
    /// ``` self: ?*C.QGradient, pos: f64, color: ?*C.QColor ```
    pub fn SetColorAt(self: ?*anyopaque, pos: f64, color: ?*anyopaque) void {
        C.QGradient_SetColorAt(@ptrCast(self), @floatCast(pos), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#stops)
    ///
    /// ``` self: ?*C.QGradient, allocator: std.mem.Allocator ```
    pub fn Stops(self: ?*anyopaque, allocator: std.mem.Allocator) []struct_f64_cqcolor {
        const _arr: C.struct_libqt_list = C.QGradient_Stops(@ptrCast(self));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_f64_cqcolor, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_f64_cqcolor = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#coordinateMode)
    ///
    /// ``` self: ?*C.QGradient ```
    pub fn CoordinateMode(self: ?*anyopaque) i64 {
        return C.QGradient_CoordinateMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setCoordinateMode)
    ///
    /// ``` self: ?*C.QGradient, mode: qbrush_enums.CoordinateMode ```
    pub fn SetCoordinateMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetCoordinateMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#interpolationMode)
    ///
    /// ``` self: ?*C.QGradient ```
    pub fn InterpolationMode(self: ?*anyopaque) i64 {
        return C.QGradient_InterpolationMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setInterpolationMode)
    ///
    /// ``` self: ?*C.QGradient, mode: qbrush_enums.InterpolationMode ```
    pub fn SetInterpolationMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetInterpolationMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator==)
    ///
    /// ``` self: ?*C.QGradient, gradient: ?*C.QGradient ```
    pub fn OperatorEqual(self: ?*anyopaque, gradient: ?*anyopaque) bool {
        return C.QGradient_OperatorEqual(@ptrCast(self), @ptrCast(gradient));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator!=)
    ///
    /// ``` self: ?*C.QGradient, other: ?*C.QGradient ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGradient_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGradient ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGradient_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qlineargradient.html
pub const qlineargradient = struct {
    /// New constructs a new QLinearGradient object.
    ///
    ///
    pub fn New() ?*C.QLinearGradient {
        return C.QLinearGradient_new();
    }

    /// New2 constructs a new QLinearGradient object.
    ///
    /// ``` start: ?*C.QPointF, finalStop: ?*C.QPointF ```
    pub fn New2(start: ?*anyopaque, finalStop: ?*anyopaque) ?*C.QLinearGradient {
        return C.QLinearGradient_new2(@ptrCast(start), @ptrCast(finalStop));
    }

    /// New3 constructs a new QLinearGradient object.
    ///
    /// ``` xStart: f64, yStart: f64, xFinalStop: f64, yFinalStop: f64 ```
    pub fn New3(xStart: f64, yStart: f64, xFinalStop: f64, yFinalStop: f64) ?*C.QLinearGradient {
        return C.QLinearGradient_new3(@floatCast(xStart), @floatCast(yStart), @floatCast(xFinalStop), @floatCast(yFinalStop));
    }

    /// New4 constructs a new QLinearGradient object.
    ///
    /// ``` param1: ?*C.QLinearGradient ```
    pub fn New4(param1: ?*anyopaque) ?*C.QLinearGradient {
        return C.QLinearGradient_new4(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#start)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn Start(self: ?*anyopaque) ?*C.QPointF {
        return C.QLinearGradient_Start(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#setStart)
    ///
    /// ``` self: ?*C.QLinearGradient, start: ?*C.QPointF ```
    pub fn SetStart(self: ?*anyopaque, start: ?*anyopaque) void {
        C.QLinearGradient_SetStart(@ptrCast(self), @ptrCast(start));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#setStart)
    ///
    /// ``` self: ?*C.QLinearGradient, x: f64, y: f64 ```
    pub fn SetStart2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QLinearGradient_SetStart2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#finalStop)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn FinalStop(self: ?*anyopaque) ?*C.QPointF {
        return C.QLinearGradient_FinalStop(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#setFinalStop)
    ///
    /// ``` self: ?*C.QLinearGradient, stop: ?*C.QPointF ```
    pub fn SetFinalStop(self: ?*anyopaque, stop: ?*anyopaque) void {
        C.QLinearGradient_SetFinalStop(@ptrCast(self), @ptrCast(stop));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlineargradient.html#setFinalStop)
    ///
    /// ``` self: ?*C.QLinearGradient, x: f64, y: f64 ```
    pub fn SetFinalStop2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QLinearGradient_SetFinalStop2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#type)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QGradient_Type(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setSpread)
    ///
    /// ``` self: ?*C.QLinearGradient, spread: qbrush_enums.Spread ```
    pub fn SetSpread(self: ?*anyopaque, spread: i64) void {
        C.QGradient_SetSpread(@ptrCast(self), @intCast(spread));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#spread)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn Spread(self: ?*anyopaque) i64 {
        return C.QGradient_Spread(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setColorAt)
    ///
    /// ``` self: ?*C.QLinearGradient, pos: f64, color: ?*C.QColor ```
    pub fn SetColorAt(self: ?*anyopaque, pos: f64, color: ?*anyopaque) void {
        C.QGradient_SetColorAt(@ptrCast(self), @floatCast(pos), @ptrCast(color));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#stops)
    ///
    /// ``` self: ?*C.QLinearGradient, allocator: std.mem.Allocator ```
    pub fn Stops(self: ?*anyopaque, allocator: std.mem.Allocator) []struct_f64_cqcolor {
        const _arr: C.struct_libqt_list = C.QGradient_Stops(@ptrCast(self));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_f64_cqcolor, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_f64_cqcolor = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#coordinateMode)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn CoordinateMode(self: ?*anyopaque) i64 {
        return C.QGradient_CoordinateMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setCoordinateMode)
    ///
    /// ``` self: ?*C.QLinearGradient, mode: qbrush_enums.CoordinateMode ```
    pub fn SetCoordinateMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetCoordinateMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#interpolationMode)
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn InterpolationMode(self: ?*anyopaque) i64 {
        return C.QGradient_InterpolationMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setInterpolationMode)
    ///
    /// ``` self: ?*C.QLinearGradient, mode: qbrush_enums.InterpolationMode ```
    pub fn SetInterpolationMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetInterpolationMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator==)
    ///
    /// ``` self: ?*C.QLinearGradient, gradient: ?*C.QGradient ```
    pub fn OperatorEqual(self: ?*anyopaque, gradient: ?*anyopaque) bool {
        return C.QGradient_OperatorEqual(@ptrCast(self), @ptrCast(gradient));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator!=)
    ///
    /// ``` self: ?*C.QLinearGradient, other: ?*C.QGradient ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGradient_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLinearGradient ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLinearGradient_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qradialgradient.html
pub const qradialgradient = struct {
    /// New constructs a new QRadialGradient object.
    ///
    ///
    pub fn New() ?*C.QRadialGradient {
        return C.QRadialGradient_new();
    }

    /// New2 constructs a new QRadialGradient object.
    ///
    /// ``` center: ?*C.QPointF, radius: f64, focalPoint: ?*C.QPointF ```
    pub fn New2(center: ?*anyopaque, radius: f64, focalPoint: ?*anyopaque) ?*C.QRadialGradient {
        return C.QRadialGradient_new2(@ptrCast(center), @floatCast(radius), @ptrCast(focalPoint));
    }

    /// New3 constructs a new QRadialGradient object.
    ///
    /// ``` cx: f64, cy: f64, radius: f64, fx: f64, fy: f64 ```
    pub fn New3(cx: f64, cy: f64, radius: f64, fx: f64, fy: f64) ?*C.QRadialGradient {
        return C.QRadialGradient_new3(@floatCast(cx), @floatCast(cy), @floatCast(radius), @floatCast(fx), @floatCast(fy));
    }

    /// New4 constructs a new QRadialGradient object.
    ///
    /// ``` center: ?*C.QPointF, radius: f64 ```
    pub fn New4(center: ?*anyopaque, radius: f64) ?*C.QRadialGradient {
        return C.QRadialGradient_new4(@ptrCast(center), @floatCast(radius));
    }

    /// New5 constructs a new QRadialGradient object.
    ///
    /// ``` cx: f64, cy: f64, radius: f64 ```
    pub fn New5(cx: f64, cy: f64, radius: f64) ?*C.QRadialGradient {
        return C.QRadialGradient_new5(@floatCast(cx), @floatCast(cy), @floatCast(radius));
    }

    /// New6 constructs a new QRadialGradient object.
    ///
    /// ``` center: ?*C.QPointF, centerRadius: f64, focalPoint: ?*C.QPointF, focalRadius: f64 ```
    pub fn New6(center: ?*anyopaque, centerRadius: f64, focalPoint: ?*anyopaque, focalRadius: f64) ?*C.QRadialGradient {
        return C.QRadialGradient_new6(@ptrCast(center), @floatCast(centerRadius), @ptrCast(focalPoint), @floatCast(focalRadius));
    }

    /// New7 constructs a new QRadialGradient object.
    ///
    /// ``` cx: f64, cy: f64, centerRadius: f64, fx: f64, fy: f64, focalRadius: f64 ```
    pub fn New7(cx: f64, cy: f64, centerRadius: f64, fx: f64, fy: f64, focalRadius: f64) ?*C.QRadialGradient {
        return C.QRadialGradient_new7(@floatCast(cx), @floatCast(cy), @floatCast(centerRadius), @floatCast(fx), @floatCast(fy), @floatCast(focalRadius));
    }

    /// New8 constructs a new QRadialGradient object.
    ///
    /// ``` param1: ?*C.QRadialGradient ```
    pub fn New8(param1: ?*anyopaque) ?*C.QRadialGradient {
        return C.QRadialGradient_new8(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#center)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn Center(self: ?*anyopaque) ?*C.QPointF {
        return C.QRadialGradient_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setCenter)
    ///
    /// ``` self: ?*C.QRadialGradient, center: ?*C.QPointF ```
    pub fn SetCenter(self: ?*anyopaque, center: ?*anyopaque) void {
        C.QRadialGradient_SetCenter(@ptrCast(self), @ptrCast(center));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setCenter)
    ///
    /// ``` self: ?*C.QRadialGradient, x: f64, y: f64 ```
    pub fn SetCenter2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QRadialGradient_SetCenter2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#focalPoint)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn FocalPoint(self: ?*anyopaque) ?*C.QPointF {
        return C.QRadialGradient_FocalPoint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setFocalPoint)
    ///
    /// ``` self: ?*C.QRadialGradient, focalPoint: ?*C.QPointF ```
    pub fn SetFocalPoint(self: ?*anyopaque, focalPoint: ?*anyopaque) void {
        C.QRadialGradient_SetFocalPoint(@ptrCast(self), @ptrCast(focalPoint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setFocalPoint)
    ///
    /// ``` self: ?*C.QRadialGradient, x: f64, y: f64 ```
    pub fn SetFocalPoint2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QRadialGradient_SetFocalPoint2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#radius)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn Radius(self: ?*anyopaque) f64 {
        return C.QRadialGradient_Radius(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setRadius)
    ///
    /// ``` self: ?*C.QRadialGradient, radius: f64 ```
    pub fn SetRadius(self: ?*anyopaque, radius: f64) void {
        C.QRadialGradient_SetRadius(@ptrCast(self), @floatCast(radius));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#centerRadius)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn CenterRadius(self: ?*anyopaque) f64 {
        return C.QRadialGradient_CenterRadius(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setCenterRadius)
    ///
    /// ``` self: ?*C.QRadialGradient, radius: f64 ```
    pub fn SetCenterRadius(self: ?*anyopaque, radius: f64) void {
        C.QRadialGradient_SetCenterRadius(@ptrCast(self), @floatCast(radius));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#focalRadius)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn FocalRadius(self: ?*anyopaque) f64 {
        return C.QRadialGradient_FocalRadius(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qradialgradient.html#setFocalRadius)
    ///
    /// ``` self: ?*C.QRadialGradient, radius: f64 ```
    pub fn SetFocalRadius(self: ?*anyopaque, radius: f64) void {
        C.QRadialGradient_SetFocalRadius(@ptrCast(self), @floatCast(radius));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#type)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QGradient_Type(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setSpread)
    ///
    /// ``` self: ?*C.QRadialGradient, spread: qbrush_enums.Spread ```
    pub fn SetSpread(self: ?*anyopaque, spread: i64) void {
        C.QGradient_SetSpread(@ptrCast(self), @intCast(spread));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#spread)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn Spread(self: ?*anyopaque) i64 {
        return C.QGradient_Spread(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setColorAt)
    ///
    /// ``` self: ?*C.QRadialGradient, pos: f64, color: ?*C.QColor ```
    pub fn SetColorAt(self: ?*anyopaque, pos: f64, color: ?*anyopaque) void {
        C.QGradient_SetColorAt(@ptrCast(self), @floatCast(pos), @ptrCast(color));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#stops)
    ///
    /// ``` self: ?*C.QRadialGradient, allocator: std.mem.Allocator ```
    pub fn Stops(self: ?*anyopaque, allocator: std.mem.Allocator) []struct_f64_cqcolor {
        const _arr: C.struct_libqt_list = C.QGradient_Stops(@ptrCast(self));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_f64_cqcolor, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_f64_cqcolor = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#coordinateMode)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn CoordinateMode(self: ?*anyopaque) i64 {
        return C.QGradient_CoordinateMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setCoordinateMode)
    ///
    /// ``` self: ?*C.QRadialGradient, mode: qbrush_enums.CoordinateMode ```
    pub fn SetCoordinateMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetCoordinateMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#interpolationMode)
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn InterpolationMode(self: ?*anyopaque) i64 {
        return C.QGradient_InterpolationMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setInterpolationMode)
    ///
    /// ``` self: ?*C.QRadialGradient, mode: qbrush_enums.InterpolationMode ```
    pub fn SetInterpolationMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetInterpolationMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator==)
    ///
    /// ``` self: ?*C.QRadialGradient, gradient: ?*C.QGradient ```
    pub fn OperatorEqual(self: ?*anyopaque, gradient: ?*anyopaque) bool {
        return C.QGradient_OperatorEqual(@ptrCast(self), @ptrCast(gradient));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator!=)
    ///
    /// ``` self: ?*C.QRadialGradient, other: ?*C.QGradient ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGradient_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRadialGradient ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRadialGradient_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qconicalgradient.html
pub const qconicalgradient = struct {
    /// New constructs a new QConicalGradient object.
    ///
    ///
    pub fn New() ?*C.QConicalGradient {
        return C.QConicalGradient_new();
    }

    /// New2 constructs a new QConicalGradient object.
    ///
    /// ``` center: ?*C.QPointF, startAngle: f64 ```
    pub fn New2(center: ?*anyopaque, startAngle: f64) ?*C.QConicalGradient {
        return C.QConicalGradient_new2(@ptrCast(center), @floatCast(startAngle));
    }

    /// New3 constructs a new QConicalGradient object.
    ///
    /// ``` cx: f64, cy: f64, startAngle: f64 ```
    pub fn New3(cx: f64, cy: f64, startAngle: f64) ?*C.QConicalGradient {
        return C.QConicalGradient_new3(@floatCast(cx), @floatCast(cy), @floatCast(startAngle));
    }

    /// New4 constructs a new QConicalGradient object.
    ///
    /// ``` param1: ?*C.QConicalGradient ```
    pub fn New4(param1: ?*anyopaque) ?*C.QConicalGradient {
        return C.QConicalGradient_new4(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qconicalgradient.html#center)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn Center(self: ?*anyopaque) ?*C.QPointF {
        return C.QConicalGradient_Center(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qconicalgradient.html#setCenter)
    ///
    /// ``` self: ?*C.QConicalGradient, center: ?*C.QPointF ```
    pub fn SetCenter(self: ?*anyopaque, center: ?*anyopaque) void {
        C.QConicalGradient_SetCenter(@ptrCast(self), @ptrCast(center));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qconicalgradient.html#setCenter)
    ///
    /// ``` self: ?*C.QConicalGradient, x: f64, y: f64 ```
    pub fn SetCenter2(self: ?*anyopaque, x: f64, y: f64) void {
        C.QConicalGradient_SetCenter2(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qconicalgradient.html#angle)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn Angle(self: ?*anyopaque) f64 {
        return C.QConicalGradient_Angle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qconicalgradient.html#setAngle)
    ///
    /// ``` self: ?*C.QConicalGradient, angle: f64 ```
    pub fn SetAngle(self: ?*anyopaque, angle: f64) void {
        C.QConicalGradient_SetAngle(@ptrCast(self), @floatCast(angle));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#type)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QGradient_Type(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setSpread)
    ///
    /// ``` self: ?*C.QConicalGradient, spread: qbrush_enums.Spread ```
    pub fn SetSpread(self: ?*anyopaque, spread: i64) void {
        C.QGradient_SetSpread(@ptrCast(self), @intCast(spread));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#spread)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn Spread(self: ?*anyopaque) i64 {
        return C.QGradient_Spread(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setColorAt)
    ///
    /// ``` self: ?*C.QConicalGradient, pos: f64, color: ?*C.QColor ```
    pub fn SetColorAt(self: ?*anyopaque, pos: f64, color: ?*anyopaque) void {
        C.QGradient_SetColorAt(@ptrCast(self), @floatCast(pos), @ptrCast(color));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#stops)
    ///
    /// ``` self: ?*C.QConicalGradient, allocator: std.mem.Allocator ```
    pub fn Stops(self: ?*anyopaque, allocator: std.mem.Allocator) []struct_f64_cqcolor {
        const _arr: C.struct_libqt_list = C.QGradient_Stops(@ptrCast(self));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_free(_pair[_i].first);
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_f64_cqcolor, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_f64_cqcolor = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#coordinateMode)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn CoordinateMode(self: ?*anyopaque) i64 {
        return C.QGradient_CoordinateMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setCoordinateMode)
    ///
    /// ``` self: ?*C.QConicalGradient, mode: qbrush_enums.CoordinateMode ```
    pub fn SetCoordinateMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetCoordinateMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#interpolationMode)
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn InterpolationMode(self: ?*anyopaque) i64 {
        return C.QGradient_InterpolationMode(@ptrCast(self));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#setInterpolationMode)
    ///
    /// ``` self: ?*C.QConicalGradient, mode: qbrush_enums.InterpolationMode ```
    pub fn SetInterpolationMode(self: ?*anyopaque, mode: i64) void {
        C.QGradient_SetInterpolationMode(@ptrCast(self), @intCast(mode));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator==)
    ///
    /// ``` self: ?*C.QConicalGradient, gradient: ?*C.QGradient ```
    pub fn OperatorEqual(self: ?*anyopaque, gradient: ?*anyopaque) bool {
        return C.QGradient_OperatorEqual(@ptrCast(self), @ptrCast(gradient));
    }

    /// Inherited from QGradient
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgradient.html#operator!=)
    ///
    /// ``` self: ?*C.QConicalGradient, other: ?*C.QGradient ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QGradient_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QConicalGradient ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QConicalGradient_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgradient-qgradientdata.html
pub const qgradient__qgradientdata = struct {
    /// New constructs a new QGradient::QGradientData object.
    ///
    /// ``` param1: ?*C.QGradient__QGradientData ```
    pub fn New(param1: ?*anyopaque) ?*C.QGradient__QGradientData {
        return C.QGradient__QGradientData_new(@ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGradient__QGradientData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGradient__QGradientData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qbrush.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const LinearGradient: i32 = 0;
        pub const RadialGradient: i32 = 1;
        pub const ConicalGradient: i32 = 2;
        pub const NoGradient: i32 = 3;
    };

    pub const Spread = enum {
        pub const PadSpread: i32 = 0;
        pub const ReflectSpread: i32 = 1;
        pub const RepeatSpread: i32 = 2;
    };

    pub const CoordinateMode = enum {
        pub const LogicalMode: i32 = 0;
        pub const StretchToDeviceMode: i32 = 1;
        pub const ObjectBoundingMode: i32 = 2;
        pub const ObjectMode: i32 = 3;
    };

    pub const InterpolationMode = enum {
        pub const ColorInterpolation: i32 = 0;
        pub const ComponentInterpolation: i32 = 1;
    };

    pub const Preset = enum {
        pub const WarmFlame: i32 = 1;
        pub const NightFade: i32 = 2;
        pub const SpringWarmth: i32 = 3;
        pub const JuicyPeach: i32 = 4;
        pub const YoungPassion: i32 = 5;
        pub const LadyLips: i32 = 6;
        pub const SunnyMorning: i32 = 7;
        pub const RainyAshville: i32 = 8;
        pub const FrozenDreams: i32 = 9;
        pub const WinterNeva: i32 = 10;
        pub const DustyGrass: i32 = 11;
        pub const TemptingAzure: i32 = 12;
        pub const HeavyRain: i32 = 13;
        pub const AmyCrisp: i32 = 14;
        pub const MeanFruit: i32 = 15;
        pub const DeepBlue: i32 = 16;
        pub const RipeMalinka: i32 = 17;
        pub const CloudyKnoxville: i32 = 18;
        pub const MalibuBeach: i32 = 19;
        pub const NewLife: i32 = 20;
        pub const TrueSunset: i32 = 21;
        pub const MorpheusDen: i32 = 22;
        pub const RareWind: i32 = 23;
        pub const NearMoon: i32 = 24;
        pub const WildApple: i32 = 25;
        pub const SaintPetersburg: i32 = 26;
        pub const PlumPlate: i32 = 28;
        pub const EverlastingSky: i32 = 29;
        pub const HappyFisher: i32 = 30;
        pub const Blessing: i32 = 31;
        pub const SharpeyeEagle: i32 = 32;
        pub const LadogaBottom: i32 = 33;
        pub const LemonGate: i32 = 34;
        pub const ItmeoBranding: i32 = 35;
        pub const ZeusMiracle: i32 = 36;
        pub const OldHat: i32 = 37;
        pub const StarWine: i32 = 38;
        pub const HappyAcid: i32 = 41;
        pub const AwesomePine: i32 = 42;
        pub const NewYork: i32 = 43;
        pub const ShyRainbow: i32 = 44;
        pub const MixedHopes: i32 = 46;
        pub const FlyHigh: i32 = 47;
        pub const StrongBliss: i32 = 48;
        pub const FreshMilk: i32 = 49;
        pub const SnowAgain: i32 = 50;
        pub const FebruaryInk: i32 = 51;
        pub const KindSteel: i32 = 52;
        pub const SoftGrass: i32 = 53;
        pub const GrownEarly: i32 = 54;
        pub const SharpBlues: i32 = 55;
        pub const ShadyWater: i32 = 56;
        pub const DirtyBeauty: i32 = 57;
        pub const GreatWhale: i32 = 58;
        pub const TeenNotebook: i32 = 59;
        pub const PoliteRumors: i32 = 60;
        pub const SweetPeriod: i32 = 61;
        pub const WideMatrix: i32 = 62;
        pub const SoftCherish: i32 = 63;
        pub const RedSalvation: i32 = 64;
        pub const BurningSpring: i32 = 65;
        pub const NightParty: i32 = 66;
        pub const SkyGlider: i32 = 67;
        pub const HeavenPeach: i32 = 68;
        pub const PurpleDivision: i32 = 69;
        pub const AquaSplash: i32 = 70;
        pub const SpikyNaga: i32 = 72;
        pub const LoveKiss: i32 = 73;
        pub const CleanMirror: i32 = 75;
        pub const PremiumDark: i32 = 76;
        pub const ColdEvening: i32 = 77;
        pub const CochitiLake: i32 = 78;
        pub const SummerGames: i32 = 79;
        pub const PassionateBed: i32 = 80;
        pub const MountainRock: i32 = 81;
        pub const DesertHump: i32 = 82;
        pub const JungleDay: i32 = 83;
        pub const PhoenixStart: i32 = 84;
        pub const OctoberSilence: i32 = 85;
        pub const FarawayRiver: i32 = 86;
        pub const AlchemistLab: i32 = 87;
        pub const OverSun: i32 = 88;
        pub const PremiumWhite: i32 = 89;
        pub const MarsParty: i32 = 90;
        pub const EternalConstance: i32 = 91;
        pub const JapanBlush: i32 = 92;
        pub const SmilingRain: i32 = 93;
        pub const CloudyApple: i32 = 94;
        pub const BigMango: i32 = 95;
        pub const HealthyWater: i32 = 96;
        pub const AmourAmour: i32 = 97;
        pub const RiskyConcrete: i32 = 98;
        pub const StrongStick: i32 = 99;
        pub const ViciousStance: i32 = 100;
        pub const PaloAlto: i32 = 101;
        pub const HappyMemories: i32 = 102;
        pub const MidnightBloom: i32 = 103;
        pub const Crystalline: i32 = 104;
        pub const PartyBliss: i32 = 106;
        pub const ConfidentCloud: i32 = 107;
        pub const LeCocktail: i32 = 108;
        pub const RiverCity: i32 = 109;
        pub const FrozenBerry: i32 = 110;
        pub const ChildCare: i32 = 112;
        pub const FlyingLemon: i32 = 113;
        pub const NewRetrowave: i32 = 114;
        pub const HiddenJaguar: i32 = 115;
        pub const AboveTheSky: i32 = 116;
        pub const Nega: i32 = 117;
        pub const DenseWater: i32 = 118;
        pub const Seashore: i32 = 120;
        pub const MarbleWall: i32 = 121;
        pub const CheerfulCaramel: i32 = 122;
        pub const NightSky: i32 = 123;
        pub const MagicLake: i32 = 124;
        pub const YoungGrass: i32 = 125;
        pub const ColorfulPeach: i32 = 126;
        pub const GentleCare: i32 = 127;
        pub const PlumBath: i32 = 128;
        pub const HappyUnicorn: i32 = 129;
        pub const AfricanField: i32 = 131;
        pub const SolidStone: i32 = 132;
        pub const OrangeJuice: i32 = 133;
        pub const GlassWater: i32 = 134;
        pub const NorthMiracle: i32 = 136;
        pub const FruitBlend: i32 = 137;
        pub const MillenniumPine: i32 = 138;
        pub const HighFlight: i32 = 139;
        pub const MoleHall: i32 = 140;
        pub const SpaceShift: i32 = 142;
        pub const ForestInei: i32 = 143;
        pub const RoyalGarden: i32 = 144;
        pub const RichMetal: i32 = 145;
        pub const JuicyCake: i32 = 146;
        pub const SmartIndigo: i32 = 147;
        pub const SandStrike: i32 = 148;
        pub const NorseBeauty: i32 = 149;
        pub const AquaGuidance: i32 = 150;
        pub const SunVeggie: i32 = 151;
        pub const SeaLord: i32 = 152;
        pub const BlackSea: i32 = 153;
        pub const GrassShampoo: i32 = 154;
        pub const LandingAircraft: i32 = 155;
        pub const WitchDance: i32 = 156;
        pub const SleeplessNight: i32 = 157;
        pub const AngelCare: i32 = 158;
        pub const CrystalRiver: i32 = 159;
        pub const SoftLipstick: i32 = 160;
        pub const SaltMountain: i32 = 161;
        pub const PerfectWhite: i32 = 162;
        pub const FreshOasis: i32 = 163;
        pub const StrictNovember: i32 = 164;
        pub const MorningSalad: i32 = 165;
        pub const DeepRelief: i32 = 166;
        pub const SeaStrike: i32 = 167;
        pub const NightCall: i32 = 168;
        pub const SupremeSky: i32 = 169;
        pub const LightBlue: i32 = 170;
        pub const MindCrawl: i32 = 171;
        pub const LilyMeadow: i32 = 172;
        pub const SugarLollipop: i32 = 173;
        pub const SweetDessert: i32 = 174;
        pub const MagicRay: i32 = 175;
        pub const TeenParty: i32 = 176;
        pub const FrozenHeat: i32 = 177;
        pub const GagarinView: i32 = 178;
        pub const FabledSunset: i32 = 179;
        pub const PerfectBlue: i32 = 180;
        pub const NumPresets: i32 = 181;
    };
};
