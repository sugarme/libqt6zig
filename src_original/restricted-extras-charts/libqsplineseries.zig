const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qabstractseries_enums = @import("libqabstractseries.zig").enums;
const qnamespace_enums = @import("../libqnamespace.zig").enums;
const qobjectdefs_enums = @import("../libqobjectdefs.zig").enums;
const qxyseries_enums = @import("libqxyseries.zig").enums;
const std = @import("std");
pub const map_i32_mapi32qtcqvariant = std.AutoHashMapUnmanaged(i32, map_i32_qtcqvariant);
pub const map_i32_qtcqvariant = std.AutoHashMapUnmanaged(i32, QtC.QVariant);
pub const struct_f64_f64 = extern struct { first: f64, second: f64 };

/// https://doc.qt.io/qt-6/qsplineseries-qtcharts.html
pub const qsplineseries = struct {
    /// New constructs a new QSplineSeries object.
    ///
    ///
    pub fn New() QtC.QSplineSeries {
        return qtc.QSplineSeries_new();
    }

    /// New2 constructs a new QSplineSeries object.
    ///
    /// ``` parent: QtC.QObject ```
    pub fn New2(parent: ?*anyopaque) QtC.QSplineSeries {
        return qtc.QSplineSeries_new2(@ptrCast(parent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#metaObject)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn MetaObject(self: ?*anyopaque) QtC.QMetaObject {
        return qtc.QSplineSeries_MetaObject(@ptrCast(self));
    }

    /// ``` self: QtC.QSplineSeries, param1: []const u8 ```
    pub fn Metacast(self: ?*anyopaque, param1: []const u8) ?*anyopaque {
        const param1_Cstring = param1.ptr;
        return qtc.QSplineSeries_Metacast(@ptrCast(self), param1_Cstring);
    }

    /// ``` self: QtC.QSplineSeries, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn Metacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QSplineSeries_Metacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque) callconv(.c) i32 ```
    pub fn OnMetacall(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32, ?*anyopaque) callconv(.c) i32) void {
        qtc.QSplineSeries_OnMetacall(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Base class method implementation
    ///
    /// ``` self: QtC.QSplineSeries, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn QBaseMetacall(self: ?*anyopaque, param1: i32, param2: i32, param3: ?*anyopaque) i32 {
        return qtc.QSplineSeries_QBaseMetacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(s: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const _str = qtc.QSplineSeries_Tr(s_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.Tr: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsplineseries-qtcharts.html#type)
    ///
    /// ``` self: QtC.QSplineSeries ```
    ///
    /// Returns: ``` qabstractseries_enums.SeriesType ```
    pub fn Type(self: ?*anyopaque) i32 {
        return qtc.QSplineSeries_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsplineseries-qtcharts.html#type)
    ///
    /// Allows for overriding the related default method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn () callconv(.c) i32 ```
    pub fn OnType(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QSplineSeries_OnType(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsplineseries-qtcharts.html#type)
    ///
    /// Base class method implementation
    ///
    /// ``` self: QtC.QSplineSeries ```
    ///
    /// Returns: ``` qabstractseries_enums.SeriesType ```
    pub fn QBaseType(self: ?*anyopaque) i32 {
        return qtc.QSplineSeries_QBaseType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QSplineSeries_Tr2(s_Cstring, c_Cstring);
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.Tr2: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = s.ptr;
        const c_Cstring = c.ptr;
        const _str = qtc.QSplineSeries_Tr3(s_Cstring, c_Cstring, @intCast(n));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.Tr3: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#append)
    ///
    /// ``` self: QtC.QSplineSeries, x: f64, y: f64 ```
    pub fn Append(self: ?*anyopaque, x: f64, y: f64) void {
        qtc.QXYSeries_Append(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#append)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn Append2(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_Append2(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#append)
    ///
    /// ``` self: QtC.QSplineSeries, points: []QtC.QPointF ```
    pub fn Append3(self: ?*anyopaque, points: []QtC.QPointF) void {
        const points_list = qtc.libqt_list{
            .len = points.len,
            .data = @ptrCast(points.ptr),
        };
        qtc.QXYSeries_Append3(@ptrCast(self), points_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#replace)
    ///
    /// ``` self: QtC.QSplineSeries, oldX: f64, oldY: f64, newX: f64, newY: f64 ```
    pub fn Replace(self: ?*anyopaque, oldX: f64, oldY: f64, newX: f64, newY: f64) void {
        qtc.QXYSeries_Replace(@ptrCast(self), @floatCast(oldX), @floatCast(oldY), @floatCast(newX), @floatCast(newY));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#replace)
    ///
    /// ``` self: QtC.QSplineSeries, oldPoint: QtC.QPointF, newPoint: QtC.QPointF ```
    pub fn Replace2(self: ?*anyopaque, oldPoint: ?*anyopaque, newPoint: ?*anyopaque) void {
        qtc.QXYSeries_Replace2(@ptrCast(self), @ptrCast(oldPoint), @ptrCast(newPoint));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#replace)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, newX: f64, newY: f64 ```
    pub fn Replace3(self: ?*anyopaque, index: i32, newX: f64, newY: f64) void {
        qtc.QXYSeries_Replace3(@ptrCast(self), @intCast(index), @floatCast(newX), @floatCast(newY));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#replace)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, newPoint: QtC.QPointF ```
    pub fn Replace4(self: ?*anyopaque, index: i32, newPoint: ?*anyopaque) void {
        qtc.QXYSeries_Replace4(@ptrCast(self), @intCast(index), @ptrCast(newPoint));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#remove)
    ///
    /// ``` self: QtC.QSplineSeries, x: f64, y: f64 ```
    pub fn Remove(self: ?*anyopaque, x: f64, y: f64) void {
        qtc.QXYSeries_Remove(@ptrCast(self), @floatCast(x), @floatCast(y));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#remove)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn Remove2(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_Remove2(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#remove)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn Remove3(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_Remove3(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#removePoints)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, count: i32 ```
    pub fn RemovePoints(self: ?*anyopaque, index: i32, count: i32) void {
        qtc.QXYSeries_RemovePoints(@ptrCast(self), @intCast(index), @intCast(count));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#insert)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, point: QtC.QPointF ```
    pub fn Insert(self: ?*anyopaque, index: i32, point: ?*anyopaque) void {
        qtc.QXYSeries_Insert(@ptrCast(self), @intCast(index), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clear)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Clear(self: ?*anyopaque) void {
        qtc.QXYSeries_Clear(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#count)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Count(self: ?*anyopaque) i32 {
        return qtc.QXYSeries_Count(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#points)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn Points(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QPointF {
        const _arr: qtc.libqt_list = qtc.QXYSeries_Points(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QPointF, _arr.len) catch @panic("qsplineseries.Points: Memory allocation failed");
        const _data: [*]QtC.QPointF = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsVector)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn PointsVector(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QPointF {
        const _arr: qtc.libqt_list = qtc.QXYSeries_PointsVector(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QPointF, _arr.len) catch @panic("qsplineseries.PointsVector: Memory allocation failed");
        const _data: [*]QtC.QPointF = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#at)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn At(self: ?*anyopaque, index: i32) QtC.QPointF {
        return qtc.QXYSeries_At(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#operator-lt-lt)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, point: ?*anyopaque) QtC.QXYSeries {
        return qtc.QXYSeries_OperatorShiftLeft(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#operator-lt-lt)
    ///
    /// ``` self: QtC.QSplineSeries, points: []QtC.QPointF ```
    pub fn OperatorShiftLeft2(self: ?*anyopaque, points: []QtC.QPointF) QtC.QXYSeries {
        const points_list = qtc.libqt_list{
            .len = points.len,
            .data = @ptrCast(points.ptr),
        };
        return qtc.QXYSeries_OperatorShiftLeft2(@ptrCast(self), points_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pen)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Pen(self: ?*anyopaque) QtC.QPen {
        return qtc.QXYSeries_Pen(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#brush)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Brush(self: ?*anyopaque) QtC.QBrush {
        return qtc.QXYSeries_Brush(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setSelectedColor)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn SetSelectedColor(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_SetSelectedColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedColor)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SelectedColor(self: ?*anyopaque) QtC.QColor {
        return qtc.QXYSeries_SelectedColor(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointsVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetPointsVisible(self: ?*anyopaque) void {
        qtc.QXYSeries_SetPointsVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointsVisible(self: ?*anyopaque) bool {
        return qtc.QXYSeries_PointsVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsFormat)
    ///
    /// ``` self: QtC.QSplineSeries, format: []const u8 ```
    pub fn SetPointLabelsFormat(self: ?*anyopaque, format: []const u8) void {
        const format_str = qtc.libqt_string{
            .len = format.len,
            .data = format.ptr,
        };
        qtc.QXYSeries_SetPointLabelsFormat(@ptrCast(self), format_str);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFormat)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn PointLabelsFormat(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QXYSeries_PointLabelsFormat(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.PointLabelsFormat: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetPointLabelsVisible(self: ?*anyopaque) void {
        qtc.QXYSeries_SetPointLabelsVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointLabelsVisible(self: ?*anyopaque) bool {
        return qtc.QXYSeries_PointLabelsVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsFont)
    ///
    /// ``` self: QtC.QSplineSeries, font: QtC.QFont ```
    pub fn SetPointLabelsFont(self: ?*anyopaque, font: ?*anyopaque) void {
        qtc.QXYSeries_SetPointLabelsFont(@ptrCast(self), @ptrCast(font));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFont)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointLabelsFont(self: ?*anyopaque) QtC.QFont {
        return qtc.QXYSeries_PointLabelsFont(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsColor)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn SetPointLabelsColor(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_SetPointLabelsColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsColor)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointLabelsColor(self: ?*anyopaque) QtC.QColor {
        return qtc.QXYSeries_PointLabelsColor(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsClipping)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetPointLabelsClipping(self: ?*anyopaque) void {
        qtc.QXYSeries_SetPointLabelsClipping(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsClipping)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointLabelsClipping(self: ?*anyopaque) bool {
        return qtc.QXYSeries_PointLabelsClipping(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#replace)
    ///
    /// ``` self: QtC.QSplineSeries, points: []QtC.QPointF ```
    pub fn Replace5(self: ?*anyopaque, points: []QtC.QPointF) void {
        const points_list = qtc.libqt_list{
            .len = points.len,
            .data = @ptrCast(points.ptr),
        };
        qtc.QXYSeries_Replace5(@ptrCast(self), points_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#isPointSelected)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn IsPointSelected(self: ?*anyopaque, index: i32) bool {
        return qtc.QXYSeries_IsPointSelected(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectPoint)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn SelectPoint(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_SelectPoint(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#deselectPoint)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn DeselectPoint(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_DeselectPoint(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointSelected)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, selected: bool ```
    pub fn SetPointSelected(self: ?*anyopaque, index: i32, selected: bool) void {
        qtc.QXYSeries_SetPointSelected(@ptrCast(self), @intCast(index), selected);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectAllPoints)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SelectAllPoints(self: ?*anyopaque) void {
        qtc.QXYSeries_SelectAllPoints(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#deselectAllPoints)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn DeselectAllPoints(self: ?*anyopaque) void {
        qtc.QXYSeries_DeselectAllPoints(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectPoints)
    ///
    /// ``` self: QtC.QSplineSeries, indexes: []i32 ```
    pub fn SelectPoints(self: ?*anyopaque, indexes: []i32) void {
        const indexes_list = qtc.libqt_list{
            .len = indexes.len,
            .data = indexes.ptr,
        };
        qtc.QXYSeries_SelectPoints(@ptrCast(self), indexes_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#deselectPoints)
    ///
    /// ``` self: QtC.QSplineSeries, indexes: []i32 ```
    pub fn DeselectPoints(self: ?*anyopaque, indexes: []i32) void {
        const indexes_list = qtc.libqt_list{
            .len = indexes.len,
            .data = indexes.ptr,
        };
        qtc.QXYSeries_DeselectPoints(@ptrCast(self), indexes_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#toggleSelection)
    ///
    /// ``` self: QtC.QSplineSeries, indexes: []i32 ```
    pub fn ToggleSelection(self: ?*anyopaque, indexes: []i32) void {
        const indexes_list = qtc.libqt_list{
            .len = indexes.len,
            .data = indexes.ptr,
        };
        qtc.QXYSeries_ToggleSelection(@ptrCast(self), indexes_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedPoints)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn SelectedPoints(self: ?*anyopaque, allocator: std.mem.Allocator) []i32 {
        const _arr: qtc.libqt_list = qtc.QXYSeries_SelectedPoints(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(i32, _arr.len) catch @panic("qsplineseries.SelectedPoints: Memory allocation failed");
        const _data: [*]i32 = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setLightMarker)
    ///
    /// ``` self: QtC.QSplineSeries, lightMarker: QtC.QImage ```
    pub fn SetLightMarker(self: ?*anyopaque, lightMarker: ?*anyopaque) void {
        qtc.QXYSeries_SetLightMarker(@ptrCast(self), @ptrCast(lightMarker));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#lightMarker)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn LightMarker(self: ?*anyopaque) QtC.QImage {
        return qtc.QXYSeries_LightMarker(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setSelectedLightMarker)
    ///
    /// ``` self: QtC.QSplineSeries, selectedLightMarker: QtC.QImage ```
    pub fn SetSelectedLightMarker(self: ?*anyopaque, selectedLightMarker: ?*anyopaque) void {
        qtc.QXYSeries_SetSelectedLightMarker(@ptrCast(self), @ptrCast(selectedLightMarker));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedLightMarker)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SelectedLightMarker(self: ?*anyopaque) QtC.QImage {
        return qtc.QXYSeries_SelectedLightMarker(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setMarkerSize)
    ///
    /// ``` self: QtC.QSplineSeries, size: f64 ```
    pub fn SetMarkerSize(self: ?*anyopaque, size: f64) void {
        qtc.QXYSeries_SetMarkerSize(@ptrCast(self), @floatCast(size));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#markerSize)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn MarkerSize(self: ?*anyopaque) f64 {
        return qtc.QXYSeries_MarkerSize(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBestFitLineVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetBestFitLineVisible(self: ?*anyopaque) void {
        qtc.QXYSeries_SetBestFitLineVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn BestFitLineVisible(self: ?*anyopaque) bool {
        return qtc.QXYSeries_BestFitLineVisible(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineEquation)
    ///
    /// ``` self: QtC.QSplineSeries, ok: *bool ```
    pub fn BestFitLineEquation(self: ?*anyopaque, ok: *bool) struct_f64_f64 {
        const _pair: qtc.libqt_pair = qtc.QXYSeries_BestFitLineEquation(@ptrCast(self), @ptrCast(ok));
        return struct_f64_f64{
            .first = @as(*f64, @ptrCast(@alignCast(_pair.first))).*,
            .second = @as(*f64, @ptrCast(@alignCast(_pair.second))).*,
        };
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBestFitLinePen)
    ///
    /// ``` self: QtC.QSplineSeries, pen: QtC.QPen ```
    pub fn SetBestFitLinePen(self: ?*anyopaque, pen: ?*anyopaque) void {
        qtc.QXYSeries_SetBestFitLinePen(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLinePen)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn BestFitLinePen(self: ?*anyopaque) QtC.QPen {
        return qtc.QXYSeries_BestFitLinePen(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBestFitLineColor)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn SetBestFitLineColor(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_SetBestFitLineColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineColor)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn BestFitLineColor(self: ?*anyopaque) QtC.QColor {
        return qtc.QXYSeries_BestFitLineColor(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clearPointConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn ClearPointConfiguration(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_ClearPointConfiguration(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clearPointConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, key: qxyseries_enums.PointConfiguration ```
    pub fn ClearPointConfiguration2(self: ?*anyopaque, index: i32, key: i32) void {
        qtc.QXYSeries_ClearPointConfiguration2(@ptrCast(self), @intCast(index), @intCast(key));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clearPointsConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn ClearPointsConfiguration(self: ?*anyopaque) void {
        qtc.QXYSeries_ClearPointsConfiguration(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clearPointsConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, key: qxyseries_enums.PointConfiguration ```
    pub fn ClearPointsConfiguration2(self: ?*anyopaque, key: i32) void {
        qtc.QXYSeries_ClearPointsConfiguration2(@ptrCast(self), @intCast(key));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, configuration: map_i32_qtcqvariant, allocator: std.mem.Allocator ```
    pub fn SetPointConfiguration(self: ?*anyopaque, index: i32, configuration: map_i32_qtcqvariant, allocator: std.mem.Allocator) void {
        const configuration_keys = allocator.alloc(i32, configuration.count()) catch @panic("qsplineseries.SetPointConfiguration: Memory allocation failed");
        defer allocator.free(configuration_keys);
        const configuration_values = allocator.alloc(QtC.QVariant, configuration.count()) catch @panic("qsplineseries.SetPointConfiguration: Memory allocation failed");
        defer allocator.free(configuration_values);
        var i: usize = 0;
        var configuration_it = configuration.iterator();
        while (configuration_it.next()) |entry| {
            const key = entry.key_ptr.*;
            configuration_keys[i] = @intCast(key);
            configuration_values[i] = entry.value_ptr.*;
            i += 1;
        }
        const configuration_map = qtc.libqt_map{
            .len = configuration.count(),
            .keys = @ptrCast(configuration_keys.ptr),
            .values = @ptrCast(configuration_values.ptr),
        };
        qtc.QXYSeries_SetPointConfiguration(@ptrCast(self), @intCast(index), configuration_map);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, key: qxyseries_enums.PointConfiguration, value: QtC.QVariant ```
    pub fn SetPointConfiguration2(self: ?*anyopaque, index: i32, key: i32, value: ?*anyopaque) void {
        qtc.QXYSeries_SetPointConfiguration2(@ptrCast(self), @intCast(index), @intCast(key), @ptrCast(value));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointsConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, pointsConfiguration: map_i32_mapi32qtcqvariant, allocator: std.mem.Allocator ```
    pub fn SetPointsConfiguration(self: ?*anyopaque, pointsConfiguration: map_i32_mapi32qtcqvariant, allocator: std.mem.Allocator) void {
        const pointsConfiguration_keys = allocator.alloc(i32, pointsConfiguration.count()) catch @panic("qsplineseries.SetPointsConfiguration: Memory allocation failed");
        defer allocator.free(pointsConfiguration_keys);
        const pointsConfiguration_values = allocator.alloc(map_i32_qtcqvariant, pointsConfiguration.count()) catch @panic("qsplineseries.SetPointsConfiguration: Memory allocation failed");
        defer allocator.free(pointsConfiguration_values);
        var i: usize = 0;
        var pointsConfiguration_it = pointsConfiguration.iterator();
        while (pointsConfiguration_it.next()) |entry| {
            const key = entry.key_ptr.*;
            pointsConfiguration_keys[i] = @intCast(key);
            pointsConfiguration_values[i] = entry.value_ptr.*;
            i += 1;
        }
        const pointsConfiguration_map = qtc.libqt_map{
            .len = pointsConfiguration.count(),
            .keys = @ptrCast(pointsConfiguration_keys.ptr),
            .values = @ptrCast(pointsConfiguration_values.ptr),
        };
        qtc.QXYSeries_SetPointsConfiguration(@ptrCast(self), pointsConfiguration_map);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, allocator: std.mem.Allocator ```
    pub fn PointConfiguration(self: ?*anyopaque, index: i32, allocator: std.mem.Allocator) map_i32_qtcqvariant {
        const _map: qtc.libqt_map = qtc.QXYSeries_PointConfiguration(@ptrCast(self), @intCast(index));
        var _ret: map_i32_qtcqvariant = .empty;
        defer {
            qtc.libqt_free(_map.keys);
            qtc.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]QtC.QVariant = @ptrCast(@alignCast(_map.values));
        var i: usize = 0;
        while (i < _map.len) : (i += 1) {
            const _key = _keys[i];
            const _value = _values[i];
            _ret.put(allocator, _key, _value) catch @panic("qsplineseries.PointConfiguration: Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsConfiguration)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn PointsConfiguration(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_mapi32qtcqvariant {
        const _map: qtc.libqt_map = qtc.QXYSeries_PointsConfiguration(@ptrCast(self));
        var _ret: map_i32_mapi32qtcqvariant = .empty;
        defer {
            qtc.libqt_free(_map.keys);
            qtc.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]map_i32_qtcqvariant = @ptrCast(@alignCast(_map.values));
        var i: usize = 0;
        while (i < _map.len) : (i += 1) {
            const _key = _keys[i];
            const _value = _values[i];
            _ret.put(allocator, _key, _value) catch @panic("qsplineseries.PointsConfiguration: Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#sizeBy)
    ///
    /// ``` self: QtC.QSplineSeries, sourceData: []f64, minSize: f64, maxSize: f64 ```
    pub fn SizeBy(self: ?*anyopaque, sourceData: []f64, minSize: f64, maxSize: f64) void {
        const sourceData_list = qtc.libqt_list{
            .len = sourceData.len,
            .data = sourceData.ptr,
        };
        qtc.QXYSeries_SizeBy(@ptrCast(self), sourceData_list, @floatCast(minSize), @floatCast(maxSize));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#colorBy)
    ///
    /// ``` self: QtC.QSplineSeries, sourceData: []f64 ```
    pub fn ColorBy(self: ?*anyopaque, sourceData: []f64) void {
        const sourceData_list = qtc.libqt_list{
            .len = sourceData.len,
            .data = sourceData.ptr,
        };
        qtc.QXYSeries_ColorBy(@ptrCast(self), sourceData_list);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clicked)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn Clicked(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_Clicked(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#clicked)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, point: QtC.QPointF) callconv(.c) void ```
    pub fn OnClicked(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_Clicked(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#hovered)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF, state: bool ```
    pub fn Hovered(self: ?*anyopaque, point: ?*anyopaque, state: bool) void {
        qtc.QXYSeries_Hovered(@ptrCast(self), @ptrCast(point), state);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#hovered)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, point: QtC.QPointF, state: bool) callconv(.c) void ```
    pub fn OnHovered(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, bool) callconv(.c) void) void {
        qtc.QXYSeries_Connect_Hovered(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pressed)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn Pressed(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_Pressed(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pressed)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, point: QtC.QPointF) callconv(.c) void ```
    pub fn OnPressed(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_Pressed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#released)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn Released(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_Released(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#released)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, point: QtC.QPointF) callconv(.c) void ```
    pub fn OnReleased(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_Released(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#doubleClicked)
    ///
    /// ``` self: QtC.QSplineSeries, point: QtC.QPointF ```
    pub fn DoubleClicked(self: ?*anyopaque, point: ?*anyopaque) void {
        qtc.QXYSeries_DoubleClicked(@ptrCast(self), @ptrCast(point));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#doubleClicked)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, point: QtC.QPointF) callconv(.c) void ```
    pub fn OnDoubleClicked(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_DoubleClicked(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointReplaced)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn PointReplaced(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_PointReplaced(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointReplaced)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, index: i32) callconv(.c) void ```
    pub fn OnPointReplaced(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointReplaced(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointRemoved)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn PointRemoved(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_PointRemoved(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointRemoved)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, index: i32) callconv(.c) void ```
    pub fn OnPointRemoved(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointRemoved(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointAdded)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32 ```
    pub fn PointAdded(self: ?*anyopaque, index: i32) void {
        qtc.QXYSeries_PointAdded(@ptrCast(self), @intCast(index));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointAdded)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, index: i32) callconv(.c) void ```
    pub fn OnPointAdded(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointAdded(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#colorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn ColorChanged(self: ?*anyopaque, color: QtC.QColor) void {
        qtc.QXYSeries_ColorChanged(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#colorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, color: QtC.QColor) callconv(.c) void ```
    pub fn OnColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, QtC.QColor) callconv(.c) void) void {
        qtc.QXYSeries_Connect_ColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn SelectedColorChanged(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_SelectedColorChanged(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, color: QtC.QColor) callconv(.c) void ```
    pub fn OnSelectedColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_SelectedColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsReplaced)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn PointsReplaced(self: ?*anyopaque) void {
        qtc.QXYSeries_PointsReplaced(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsReplaced)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnPointsReplaced(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointsReplaced(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFormatChanged)
    ///
    /// ``` self: QtC.QSplineSeries, format: []const u8 ```
    pub fn PointLabelsFormatChanged(self: ?*anyopaque, format: []const u8) void {
        const format_str = qtc.libqt_string{
            .len = format.len,
            .data = format.ptr,
        };
        qtc.QXYSeries_PointLabelsFormatChanged(@ptrCast(self), format_str);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFormatChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, format: [*:0]const u8) callconv(.c) void ```
    pub fn OnPointLabelsFormatChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointLabelsFormatChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsVisibilityChanged)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn PointLabelsVisibilityChanged(self: ?*anyopaque, visible: bool) void {
        qtc.QXYSeries_PointLabelsVisibilityChanged(@ptrCast(self), visible);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsVisibilityChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, visible: bool) callconv(.c) void ```
    pub fn OnPointLabelsVisibilityChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointLabelsVisibilityChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFontChanged)
    ///
    /// ``` self: QtC.QSplineSeries, font: QtC.QFont ```
    pub fn PointLabelsFontChanged(self: ?*anyopaque, font: ?*anyopaque) void {
        qtc.QXYSeries_PointLabelsFontChanged(@ptrCast(self), @ptrCast(font));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsFontChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, font: QtC.QFont) callconv(.c) void ```
    pub fn OnPointLabelsFontChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointLabelsFontChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn PointLabelsColorChanged(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_PointLabelsColorChanged(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, color: QtC.QColor) callconv(.c) void ```
    pub fn OnPointLabelsColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointLabelsColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsClippingChanged)
    ///
    /// ``` self: QtC.QSplineSeries, clipping: bool ```
    pub fn PointLabelsClippingChanged(self: ?*anyopaque, clipping: bool) void {
        qtc.QXYSeries_PointLabelsClippingChanged(@ptrCast(self), clipping);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointLabelsClippingChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, clipping: bool) callconv(.c) void ```
    pub fn OnPointLabelsClippingChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointLabelsClippingChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsRemoved)
    ///
    /// ``` self: QtC.QSplineSeries, index: i32, count: i32 ```
    pub fn PointsRemoved(self: ?*anyopaque, index: i32, count: i32) void {
        qtc.QXYSeries_PointsRemoved(@ptrCast(self), @intCast(index), @intCast(count));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsRemoved)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, index: i32, count: i32) callconv(.c) void ```
    pub fn OnPointsRemoved(self: ?*anyopaque, callback: *const fn (?*anyopaque, i32, i32) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointsRemoved(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#penChanged)
    ///
    /// ``` self: QtC.QSplineSeries, pen: QtC.QPen ```
    pub fn PenChanged(self: ?*anyopaque, pen: ?*anyopaque) void {
        qtc.QXYSeries_PenChanged(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#penChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, pen: QtC.QPen) callconv(.c) void ```
    pub fn OnPenChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PenChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedPointsChanged)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SelectedPointsChanged(self: ?*anyopaque) void {
        qtc.QXYSeries_SelectedPointsChanged(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedPointsChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnSelectedPointsChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_SelectedPointsChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#lightMarkerChanged)
    ///
    /// ``` self: QtC.QSplineSeries, lightMarker: QtC.QImage ```
    pub fn LightMarkerChanged(self: ?*anyopaque, lightMarker: ?*anyopaque) void {
        qtc.QXYSeries_LightMarkerChanged(@ptrCast(self), @ptrCast(lightMarker));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#lightMarkerChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, lightMarker: QtC.QImage) callconv(.c) void ```
    pub fn OnLightMarkerChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_LightMarkerChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedLightMarkerChanged)
    ///
    /// ``` self: QtC.QSplineSeries, selectedLightMarker: QtC.QImage ```
    pub fn SelectedLightMarkerChanged(self: ?*anyopaque, selectedLightMarker: ?*anyopaque) void {
        qtc.QXYSeries_SelectedLightMarkerChanged(@ptrCast(self), @ptrCast(selectedLightMarker));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#selectedLightMarkerChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, selectedLightMarker: QtC.QImage) callconv(.c) void ```
    pub fn OnSelectedLightMarkerChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_SelectedLightMarkerChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineVisibilityChanged)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn BestFitLineVisibilityChanged(self: ?*anyopaque, visible: bool) void {
        qtc.QXYSeries_BestFitLineVisibilityChanged(@ptrCast(self), visible);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineVisibilityChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, visible: bool) callconv(.c) void ```
    pub fn OnBestFitLineVisibilityChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, bool) callconv(.c) void) void {
        qtc.QXYSeries_Connect_BestFitLineVisibilityChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLinePenChanged)
    ///
    /// ``` self: QtC.QSplineSeries, pen: QtC.QPen ```
    pub fn BestFitLinePenChanged(self: ?*anyopaque, pen: ?*anyopaque) void {
        qtc.QXYSeries_BestFitLinePenChanged(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLinePenChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, pen: QtC.QPen) callconv(.c) void ```
    pub fn OnBestFitLinePenChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_BestFitLinePenChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn BestFitLineColorChanged(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QXYSeries_BestFitLineColorChanged(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#bestFitLineColorChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, color: QtC.QColor) callconv(.c) void ```
    pub fn OnBestFitLineColorChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QXYSeries_Connect_BestFitLineColorChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsConfigurationChanged)
    ///
    /// ``` self: QtC.QSplineSeries, configuration: map_i32_mapi32qtcqvariant, allocator: std.mem.Allocator ```
    pub fn PointsConfigurationChanged(self: ?*anyopaque, configuration: map_i32_mapi32qtcqvariant, allocator: std.mem.Allocator) void {
        const configuration_keys = allocator.alloc(i32, configuration.count()) catch @panic("qsplineseries.PointsConfigurationChanged: Memory allocation failed");
        defer allocator.free(configuration_keys);
        const configuration_values = allocator.alloc(map_i32_qtcqvariant, configuration.count()) catch @panic("qsplineseries.PointsConfigurationChanged: Memory allocation failed");
        defer allocator.free(configuration_values);
        var i: usize = 0;
        var configuration_it = configuration.iterator();
        while (configuration_it.next()) |entry| {
            const key = entry.key_ptr.*;
            configuration_keys[i] = @intCast(key);
            configuration_values[i] = entry.value_ptr.*;
            i += 1;
        }
        const configuration_map = qtc.libqt_map{
            .len = configuration.count(),
            .keys = @ptrCast(configuration_keys.ptr),
            .values = @ptrCast(configuration_values.ptr),
        };
        qtc.QXYSeries_PointsConfigurationChanged(@ptrCast(self), configuration_map);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#pointsConfigurationChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, configuration: map_i32_mapi32qtcqvariant) callconv(.c) void ```
    pub fn OnPointsConfigurationChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, map_i32_mapi32qtcqvariant) callconv(.c) void) void {
        qtc.QXYSeries_Connect_PointsConfigurationChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#markerSizeChanged)
    ///
    /// ``` self: QtC.QSplineSeries, size: f64 ```
    pub fn MarkerSizeChanged(self: ?*anyopaque, size: f64) void {
        qtc.QXYSeries_MarkerSizeChanged(@ptrCast(self), @floatCast(size));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#markerSizeChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, size: f64) callconv(.c) void ```
    pub fn OnMarkerSizeChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, f64) callconv(.c) void) void {
        qtc.QXYSeries_Connect_MarkerSizeChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointsVisible)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn SetPointsVisible1(self: ?*anyopaque, visible: bool) void {
        qtc.QXYSeries_SetPointsVisible1(@ptrCast(self), visible);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsVisible)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn SetPointLabelsVisible1(self: ?*anyopaque, visible: bool) void {
        qtc.QXYSeries_SetPointLabelsVisible1(@ptrCast(self), visible);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPointLabelsClipping)
    ///
    /// ``` self: QtC.QSplineSeries, enabled: bool ```
    pub fn SetPointLabelsClipping1(self: ?*anyopaque, enabled: bool) void {
        qtc.QXYSeries_SetPointLabelsClipping1(@ptrCast(self), enabled);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBestFitLineVisible)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn SetBestFitLineVisible1(self: ?*anyopaque, visible: bool) void {
        qtc.QXYSeries_SetBestFitLineVisible1(@ptrCast(self), visible);
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#colorBy)
    ///
    /// ``` self: QtC.QSplineSeries, sourceData: []f64, gradient: QtC.QLinearGradient ```
    pub fn ColorBy2(self: ?*anyopaque, sourceData: []f64, gradient: ?*anyopaque) void {
        const sourceData_list = qtc.libqt_list{
            .len = sourceData.len,
            .data = sourceData.ptr,
        };
        qtc.QXYSeries_ColorBy2(@ptrCast(self), sourceData_list, @ptrCast(gradient));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setName)
    ///
    /// ``` self: QtC.QSplineSeries, name: []const u8 ```
    pub fn SetName(self: ?*anyopaque, name: []const u8) void {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };
        qtc.QAbstractSeries_SetName(@ptrCast(self), name_str);
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#name)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QAbstractSeries_Name(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.Name: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetVisible(self: ?*anyopaque) void {
        qtc.QAbstractSeries_SetVisible(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#isVisible)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn IsVisible(self: ?*anyopaque) bool {
        return qtc.QAbstractSeries_IsVisible(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#opacity)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Opacity(self: ?*anyopaque) f64 {
        return qtc.QAbstractSeries_Opacity(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setOpacity)
    ///
    /// ``` self: QtC.QSplineSeries, opacity: f64 ```
    pub fn SetOpacity(self: ?*anyopaque, opacity: f64) void {
        qtc.QAbstractSeries_SetOpacity(@ptrCast(self), @floatCast(opacity));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setUseOpenGL)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SetUseOpenGL(self: ?*anyopaque) void {
        qtc.QAbstractSeries_SetUseOpenGL(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#useOpenGL)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn UseOpenGL(self: ?*anyopaque) bool {
        return qtc.QAbstractSeries_UseOpenGL(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#chart)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Chart(self: ?*anyopaque) QtC.QChart {
        return qtc.QAbstractSeries_Chart(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#attachAxis)
    ///
    /// ``` self: QtC.QSplineSeries, axis: QtC.QAbstractAxis ```
    pub fn AttachAxis(self: ?*anyopaque, axis: ?*anyopaque) bool {
        return qtc.QAbstractSeries_AttachAxis(@ptrCast(self), @ptrCast(axis));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#detachAxis)
    ///
    /// ``` self: QtC.QSplineSeries, axis: QtC.QAbstractAxis ```
    pub fn DetachAxis(self: ?*anyopaque, axis: ?*anyopaque) bool {
        return qtc.QAbstractSeries_DetachAxis(@ptrCast(self), @ptrCast(axis));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#attachedAxes)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn AttachedAxes(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QAbstractAxis {
        const _arr: qtc.libqt_list = qtc.QAbstractSeries_AttachedAxes(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QAbstractAxis, _arr.len) catch @panic("qsplineseries.AttachedAxes: Memory allocation failed");
        const _data: [*]QtC.QAbstractAxis = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#show)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Show(self: ?*anyopaque) void {
        qtc.QAbstractSeries_Show(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#hide)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Hide(self: ?*anyopaque) void {
        qtc.QAbstractSeries_Hide(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#nameChanged)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn NameChanged(self: ?*anyopaque) void {
        qtc.QAbstractSeries_NameChanged(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#nameChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QAbstractSeries_Connect_NameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#visibleChanged)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn VisibleChanged(self: ?*anyopaque) void {
        qtc.QAbstractSeries_VisibleChanged(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#visibleChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnVisibleChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QAbstractSeries_Connect_VisibleChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#opacityChanged)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn OpacityChanged(self: ?*anyopaque) void {
        qtc.QAbstractSeries_OpacityChanged(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#opacityChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnOpacityChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QAbstractSeries_Connect_OpacityChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#useOpenGLChanged)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn UseOpenGLChanged(self: ?*anyopaque) void {
        qtc.QAbstractSeries_UseOpenGLChanged(@ptrCast(self));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#useOpenGLChanged)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnUseOpenGLChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QAbstractSeries_Connect_UseOpenGLChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setVisible)
    ///
    /// ``` self: QtC.QSplineSeries, visible: bool ```
    pub fn SetVisible1(self: ?*anyopaque, visible: bool) void {
        qtc.QAbstractSeries_SetVisible1(@ptrCast(self), visible);
    }

    /// Inherited from QAbstractSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qabstractseries.html#setUseOpenGL)
    ///
    /// ``` self: QtC.QSplineSeries, enable: bool ```
    pub fn SetUseOpenGL1(self: ?*anyopaque, enable: bool) void {
        qtc.QAbstractSeries_SetUseOpenGL1(@ptrCast(self), enable);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectName)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn ObjectName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QObject_ObjectName(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qsplineseries.ObjectName: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setObjectName)
    ///
    /// ``` self: QtC.QSplineSeries, name: []const u8 ```
    pub fn SetObjectName(self: ?*anyopaque, name: []const u8) void {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };
        qtc.QObject_SetObjectName(@ptrCast(self), name_str);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWidgetType)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn IsWidgetType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWidgetType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isWindowType)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn IsWindowType(self: ?*anyopaque) bool {
        return qtc.QObject_IsWindowType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isQuickItemType)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn IsQuickItemType(self: ?*anyopaque) bool {
        return qtc.QObject_IsQuickItemType(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#signalsBlocked)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SignalsBlocked(self: ?*anyopaque) bool {
        return qtc.QObject_SignalsBlocked(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#blockSignals)
    ///
    /// ``` self: QtC.QSplineSeries, b: bool ```
    pub fn BlockSignals(self: ?*anyopaque, b: bool) bool {
        return qtc.QObject_BlockSignals(@ptrCast(self), b);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#thread)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Thread(self: ?*anyopaque) QtC.QThread {
        return qtc.QObject_Thread(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QSplineSeries, thread: QtC.QThread ```
    pub fn MoveToThread(self: ?*anyopaque, thread: ?*anyopaque) bool {
        return qtc.QObject_MoveToThread(@ptrCast(self), @ptrCast(thread));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QSplineSeries, interval: i32 ```
    pub fn StartTimer(self: ?*anyopaque, interval: i32) i32 {
        return qtc.QObject_StartTimer(@ptrCast(self), @intCast(interval));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QSplineSeries, id: i32 ```
    pub fn KillTimer(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#killTimer)
    ///
    /// ``` self: QtC.QSplineSeries, id: qnamespace_enums.TimerId ```
    pub fn KillTimer2(self: ?*anyopaque, id: i32) void {
        qtc.QObject_KillTimer2(@ptrCast(self), @intCast(id));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#children)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn Children(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QObject {
        const _arr: qtc.libqt_list = qtc.QObject_Children(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QObject, _arr.len) catch @panic("qsplineseries.Children: Memory allocation failed");
        const _data: [*]QtC.QObject = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setParent)
    ///
    /// ``` self: QtC.QSplineSeries, parent: QtC.QObject ```
    pub fn SetParent(self: ?*anyopaque, parent: ?*anyopaque) void {
        qtc.QObject_SetParent(@ptrCast(self), @ptrCast(parent));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#installEventFilter)
    ///
    /// ``` self: QtC.QSplineSeries, filterObj: QtC.QObject ```
    pub fn InstallEventFilter(self: ?*anyopaque, filterObj: ?*anyopaque) void {
        qtc.QObject_InstallEventFilter(@ptrCast(self), @ptrCast(filterObj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#removeEventFilter)
    ///
    /// ``` self: QtC.QSplineSeries, obj: QtC.QObject ```
    pub fn RemoveEventFilter(self: ?*anyopaque, obj: ?*anyopaque) void {
        qtc.QObject_RemoveEventFilter(@ptrCast(self), @ptrCast(obj));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod ```
    pub fn Connect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.QSplineSeries, sender: QtC.QObject, signal: []const u8, member: []const u8 ```
    pub fn Connect2(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect2(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, member: QtC.QMetaMethod ```
    pub fn Disconnect(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, member: ?*anyopaque) bool {
        return qtc.QObject_Disconnect(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(member));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnect)
    ///
    /// ``` param1: QtC.QMetaObject__Connection ```
    pub fn Disconnect2(param1: ?*anyopaque) bool {
        return qtc.QObject_Disconnect2(@ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectTree)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn DumpObjectTree(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectTree(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dumpObjectInfo)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn DumpObjectInfo(self: ?*anyopaque) void {
        qtc.QObject_DumpObjectInfo(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#setProperty)
    ///
    /// ``` self: QtC.QSplineSeries, name: []const u8, value: QtC.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, name: []const u8, value: ?*anyopaque) bool {
        const name_Cstring = name.ptr;
        return qtc.QObject_SetProperty(@ptrCast(self), name_Cstring, @ptrCast(value));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#property)
    ///
    /// ``` self: QtC.QSplineSeries, name: []const u8 ```
    pub fn Property(self: ?*anyopaque, name: []const u8) QtC.QVariant {
        const name_Cstring = name.ptr;
        return qtc.QObject_Property(@ptrCast(self), name_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#dynamicPropertyNames)
    ///
    /// ``` self: QtC.QSplineSeries, allocator: std.mem.Allocator ```
    pub fn DynamicPropertyNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: qtc.libqt_list = qtc.QObject_DynamicPropertyNames(@ptrCast(self));
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("qsplineseries.DynamicPropertyNames: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qsplineseries.DynamicPropertyNames: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn BindingStorage(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#bindingStorage)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn BindingStorage2(self: ?*anyopaque) QtC.QBindingStorage {
        return qtc.QObject_BindingStorage2(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Destroyed(self: ?*anyopaque) void {
        qtc.QObject_Destroyed(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries) callconv(.c) void ```
    pub fn OnDestroyed(self: ?*anyopaque, callback: *const fn (?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#parent)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Parent(self: ?*anyopaque) QtC.QObject {
        return qtc.QObject_Parent(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#inherits)
    ///
    /// ``` self: QtC.QSplineSeries, classname: []const u8 ```
    pub fn Inherits(self: ?*anyopaque, classname: []const u8) bool {
        const classname_Cstring = classname.ptr;
        return qtc.QObject_Inherits(@ptrCast(self), classname_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#deleteLater)
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn DeleteLater(self: ?*anyopaque) void {
        qtc.QObject_DeleteLater(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#moveToThread)
    ///
    /// ``` self: QtC.QSplineSeries, thread: QtC.QThread, param2: QtC.Disambiguated_t ```
    pub fn MoveToThread2(self: ?*anyopaque, thread: ?*anyopaque, param2: QtC.Disambiguated_t) bool {
        return qtc.QObject_MoveToThread2(@ptrCast(self), @ptrCast(thread), @ptrCast(param2));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#startTimer)
    ///
    /// ``` self: QtC.QSplineSeries, interval: i32, timerType: qnamespace_enums.TimerType ```
    pub fn StartTimer22(self: ?*anyopaque, interval: i32, timerType: i32) i32 {
        return qtc.QObject_StartTimer22(@ptrCast(self), @intCast(interval), @intCast(timerType));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` sender: QtC.QObject, signal: QtC.QMetaMethod, receiver: QtC.QObject, method: QtC.QMetaMethod, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect5(sender: ?*anyopaque, signal: ?*anyopaque, receiver: ?*anyopaque, method: ?*anyopaque, typeVal: i32) QtC.QMetaObject__Connection {
        return qtc.QObject_Connect5(@ptrCast(sender), @ptrCast(signal), @ptrCast(receiver), @ptrCast(method), @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connect)
    ///
    /// ``` self: QtC.QSplineSeries, sender: QtC.QObject, signal: []const u8, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn Connect4(self: ?*anyopaque, sender: ?*anyopaque, signal: []const u8, member: []const u8, typeVal: i32) QtC.QMetaObject__Connection {
        const signal_Cstring = signal.ptr;
        const member_Cstring = member.ptr;
        return qtc.QObject_Connect4(@ptrCast(self), @ptrCast(sender), signal_Cstring, member_Cstring, @intCast(typeVal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QSplineSeries, param1: QtC.QObject ```
    pub fn Destroyed1(self: ?*anyopaque, param1: ?*anyopaque) void {
        qtc.QObject_Destroyed1(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#destroyed)
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, param1: QtC.QObject) callconv(.c) void ```
    pub fn OnDestroyed1(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QObject_Connect_Destroyed1(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPen)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, pen: QtC.QPen ```
    pub fn SetPen(self: ?*anyopaque, pen: ?*anyopaque) void {
        qtc.QSplineSeries_SetPen(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPen)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, pen: QtC.QPen ```
    pub fn QBaseSetPen(self: ?*anyopaque, pen: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseSetPen(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setPen)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, pen: QtC.QPen) callconv(.c) void ```
    pub fn OnSetPen(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnSetPen(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBrush)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, brush: QtC.QBrush ```
    pub fn SetBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        qtc.QSplineSeries_SetBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBrush)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, brush: QtC.QBrush ```
    pub fn QBaseSetBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseSetBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setBrush)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, brush: QtC.QBrush) callconv(.c) void ```
    pub fn OnSetBrush(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnSetBrush(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setColor)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn SetColor(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QSplineSeries_SetColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setColor)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, color: QtC.QColor ```
    pub fn QBaseSetColor(self: ?*anyopaque, color: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseSetColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#setColor)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, color: QtC.QColor) callconv(.c) void ```
    pub fn OnSetColor(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnSetColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#color)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Color(self: ?*anyopaque) QtC.QColor {
        return qtc.QSplineSeries_Color(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#color)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn QBaseColor(self: ?*anyopaque) QtC.QColor {
        return qtc.QSplineSeries_QBaseColor(@ptrCast(self));
    }

    /// Inherited from QXYSeries
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qxyseries.html#color)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn () callconv(.c) QtC.QColor ```
    pub fn OnColor(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QColor) void {
        qtc.QSplineSeries_OnColor(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QEvent ```
    pub fn Event(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QSplineSeries_Event(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QEvent ```
    pub fn QBaseEvent(self: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QSplineSeries_QBaseEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#event)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QSplineSeries_OnEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn EventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QSplineSeries_EventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, watched: QtC.QObject, event: QtC.QEvent ```
    pub fn QBaseEventFilter(self: ?*anyopaque, watched: ?*anyopaque, event: ?*anyopaque) bool {
        return qtc.QSplineSeries_QBaseEventFilter(@ptrCast(self), @ptrCast(watched), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#eventFilter)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, watched: QtC.QObject, event: QtC.QEvent) callconv(.c) bool ```
    pub fn OnEventFilter(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QSplineSeries_OnEventFilter(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QTimerEvent ```
    pub fn TimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_TimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QTimerEvent ```
    pub fn QBaseTimerEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseTimerEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#timerEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, event: QtC.QTimerEvent) callconv(.c) void ```
    pub fn OnTimerEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnTimerEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QChildEvent ```
    pub fn ChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_ChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QChildEvent ```
    pub fn QBaseChildEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseChildEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#childEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, event: QtC.QChildEvent) callconv(.c) void ```
    pub fn OnChildEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnChildEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QEvent ```
    pub fn CustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_CustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, event: QtC.QEvent ```
    pub fn QBaseCustomEvent(self: ?*anyopaque, event: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseCustomEvent(@ptrCast(self), @ptrCast(event));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#customEvent)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, event: QtC.QEvent) callconv(.c) void ```
    pub fn OnCustomEvent(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnCustomEvent(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn ConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QSplineSeries_ConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn QBaseConnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseConnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#connectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnConnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnConnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn DisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QSplineSeries_DisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn QBaseDisconnectNotify(self: ?*anyopaque, signal: ?*anyopaque) void {
        qtc.QSplineSeries_QBaseDisconnectNotify(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#disconnectNotify)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, signal: QtC.QMetaMethod) callconv(.c) void ```
    pub fn OnDisconnectNotify(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        qtc.QSplineSeries_OnDisconnectNotify(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn Sender(self: ?*anyopaque) QtC.QObject {
        return qtc.QSplineSeries_Sender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn QBaseSender(self: ?*anyopaque) QtC.QObject {
        return qtc.QSplineSeries_QBaseSender(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#sender)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn () callconv(.c) QtC.QObject ```
    pub fn OnSender(self: ?*anyopaque, callback: *const fn () callconv(.c) QtC.QObject) void {
        qtc.QSplineSeries_OnSender(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn SenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QSplineSeries_SenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn QBaseSenderSignalIndex(self: ?*anyopaque) i32 {
        return qtc.QSplineSeries_QBaseSenderSignalIndex(@ptrCast(self));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#senderSignalIndex)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn () callconv(.c) i32 ```
    pub fn OnSenderSignalIndex(self: ?*anyopaque, callback: *const fn () callconv(.c) i32) void {
        qtc.QSplineSeries_OnSenderSignalIndex(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: []const u8 ```
    pub fn Receivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QSplineSeries_Receivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: []const u8 ```
    pub fn QBaseReceivers(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = signal.ptr;
        return qtc.QSplineSeries_QBaseReceivers(@ptrCast(self), signal_Cstring);
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#receivers)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, signal: [*:0]const u8) callconv(.c) i32 ```
    pub fn OnReceivers(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) i32) void {
        qtc.QSplineSeries_OnReceivers(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn IsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QSplineSeries_IsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, signal: QtC.QMetaMethod ```
    pub fn QBaseIsSignalConnected(self: ?*anyopaque, signal: ?*anyopaque) bool {
        return qtc.QSplineSeries_QBaseIsSignalConnected(@ptrCast(self), @ptrCast(signal));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#isSignalConnected)
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, signal: QtC.QMetaMethod) callconv(.c) bool ```
    pub fn OnIsSignalConnected(self: ?*anyopaque, callback: *const fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        qtc.QSplineSeries_OnIsSignalConnected(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// Inherited from QObject
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#objectNameChanged)
    ///
    /// Wrapper to allow calling private signal
    ///
    /// ``` self: QtC.QSplineSeries, callback: *const fn (self: QtC.QSplineSeries, objectName: [*:0]const u8) callconv(.c) void ```
    pub fn OnObjectNameChanged(self: ?*anyopaque, callback: *const fn (?*anyopaque, [*:0]const u8) callconv(.c) void) void {
        qtc.QObject_Connect_ObjectNameChanged(@ptrCast(self), @intCast(@intFromPtr(callback)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsplineseries-qtcharts.html#dtor.QSplineSeries)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QSplineSeries ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QSplineSeries_Delete(@ptrCast(self));
    }
};
