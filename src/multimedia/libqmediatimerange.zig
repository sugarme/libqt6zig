const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qmediatimerange.html
pub const qmediatimerange = struct {
    /// New constructs a new QMediaTimeRange object.
    ///
    ///
    pub fn New() ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_new();
    }

    /// New2 constructs a new QMediaTimeRange object.
    ///
    /// ``` start: i64, end: i64 ```
    pub fn New2(start: i64, end: i64) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_new2(@intCast(start), @intCast(end));
    }

    /// New3 constructs a new QMediaTimeRange object.
    ///
    /// ``` param1: ?*C.QMediaTimeRange__Interval ```
    pub fn New3(param1: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_new3(@ptrCast(param1));
    }

    /// New4 constructs a new QMediaTimeRange object.
    ///
    /// ``` range: ?*C.QMediaTimeRange ```
    pub fn New4(range: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_new4(@ptrCast(range));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMediaTimeRange_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#swap)
    ///
    /// ``` self: ?*C.QMediaTimeRange, other: ?*C.QMediaTimeRange ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMediaTimeRange_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#detach)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QMediaTimeRange_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange__Interval ```
    pub fn OperatorAssignWithQMediaTimeRangeInterval(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#earliestTime)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn EarliestTime(self: ?*anyopaque) i64 {
        return C.QMediaTimeRange_EarliestTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#latestTime)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn LatestTime(self: ?*anyopaque) i64 {
        return C.QMediaTimeRange_LatestTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#intervals)
    ///
    /// ``` self: ?*C.QMediaTimeRange, allocator: std.mem.Allocator ```
    pub fn Intervals(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QMediaTimeRange__Interval {
        const _arr: C.struct_libqt_list = C.QMediaTimeRange_Intervals(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QMediaTimeRange__Interval, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QMediaTimeRange__Interval = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#isEmpty)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QMediaTimeRange_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#isContinuous)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn IsContinuous(self: ?*anyopaque) bool {
        return C.QMediaTimeRange_IsContinuous(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#contains)
    ///
    /// ``` self: ?*C.QMediaTimeRange, time: i64 ```
    pub fn Contains(self: ?*anyopaque, time: i64) bool {
        return C.QMediaTimeRange_Contains(@ptrCast(self), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#addInterval)
    ///
    /// ``` self: ?*C.QMediaTimeRange, start: i64, end: i64 ```
    pub fn AddInterval(self: ?*anyopaque, start: i64, end: i64) void {
        C.QMediaTimeRange_AddInterval(@ptrCast(self), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#addInterval)
    ///
    /// ``` self: ?*C.QMediaTimeRange, interval: ?*C.QMediaTimeRange__Interval ```
    pub fn AddIntervalWithInterval(self: ?*anyopaque, interval: ?*anyopaque) void {
        C.QMediaTimeRange_AddIntervalWithInterval(@ptrCast(self), @ptrCast(interval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#addTimeRange)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange ```
    pub fn AddTimeRange(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMediaTimeRange_AddTimeRange(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#removeInterval)
    ///
    /// ``` self: ?*C.QMediaTimeRange, start: i64, end: i64 ```
    pub fn RemoveInterval(self: ?*anyopaque, start: i64, end: i64) void {
        C.QMediaTimeRange_RemoveInterval(@ptrCast(self), @intCast(start), @intCast(end));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#removeInterval)
    ///
    /// ``` self: ?*C.QMediaTimeRange, interval: ?*C.QMediaTimeRange__Interval ```
    pub fn RemoveIntervalWithInterval(self: ?*anyopaque, interval: ?*anyopaque) void {
        C.QMediaTimeRange_RemoveIntervalWithInterval(@ptrCast(self), @ptrCast(interval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#removeTimeRange)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange ```
    pub fn RemoveTimeRange(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMediaTimeRange_RemoveTimeRange(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator+=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_OperatorPlusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator+=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange__Interval ```
    pub fn OperatorPlusAssignWithQMediaTimeRangeInterval(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator-=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_OperatorMinusAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#operator-=)
    ///
    /// ``` self: ?*C.QMediaTimeRange, param1: ?*C.QMediaTimeRange__Interval ```
    pub fn OperatorMinusAssignWithQMediaTimeRangeInterval(self: ?*anyopaque, param1: ?*anyopaque) ?*C.QMediaTimeRange {
        return C.QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange.html#clear)
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QMediaTimeRange_Clear(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMediaTimeRange ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMediaTimeRange_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmediatimerange-interval.html
pub const qmediatimerange__interval = struct {
    /// New constructs a new QMediaTimeRange::Interval object.
    ///
    /// ``` other: ?*C.QMediaTimeRange__Interval ```
    pub fn New(other: ?*anyopaque) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_new(@ptrCast(other));
    }

    /// New2 constructs a new QMediaTimeRange::Interval object and invalidates the source QMediaTimeRange::Interval object.
    ///
    /// ``` other: ?*C.QMediaTimeRange__Interval ```
    pub fn New2(other: ?*anyopaque) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMediaTimeRange::Interval object.
    ///
    ///
    pub fn New3() ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_new3();
    }

    /// New4 constructs a new QMediaTimeRange::Interval object.
    ///
    /// ``` start: i64, end: i64 ```
    pub fn New4(start: i64, end: i64) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_new4(@intCast(start), @intCast(end));
    }

    /// New5 constructs a new QMediaTimeRange::Interval object.
    ///
    /// ``` param1: ?*C.QMediaTimeRange__Interval ```
    pub fn New5(param1: ?*anyopaque) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_new5(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMediaTimeRange__Interval, other: ?*QMediaTimeRange__Interval ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMediaTimeRange__Interval_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMediaTimeRange__Interval, other: ?*QMediaTimeRange__Interval ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMediaTimeRange__Interval_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#start)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval ```
    pub fn Start(self: ?*anyopaque) i64 {
        return C.QMediaTimeRange__Interval_Start(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#end)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval ```
    pub fn End(self: ?*anyopaque) i64 {
        return C.QMediaTimeRange__Interval_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#contains)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval, time: i64 ```
    pub fn Contains(self: ?*anyopaque, time: i64) bool {
        return C.QMediaTimeRange__Interval_Contains(@ptrCast(self), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#isNormal)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval ```
    pub fn IsNormal(self: ?*anyopaque) bool {
        return C.QMediaTimeRange__Interval_IsNormal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#normalized)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval ```
    pub fn Normalized(self: ?*anyopaque) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_Normalized(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediatimerange__interval.html#translated)
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval, offset: i64 ```
    pub fn Translated(self: ?*anyopaque, offset: i64) ?*C.QMediaTimeRange__Interval {
        return C.QMediaTimeRange__Interval_Translated(@ptrCast(self), @intCast(offset));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMediaTimeRange__Interval ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMediaTimeRange__Interval_Delete(@ptrCast(self));
    }
};
