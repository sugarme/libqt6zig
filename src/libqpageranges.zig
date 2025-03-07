const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qpageranges.html
pub const qpageranges = struct {
    /// New constructs a new QPageRanges object.
    ///
    ///
    pub fn New() ?*C.QPageRanges {
        return C.QPageRanges_new();
    }

    /// New2 constructs a new QPageRanges object.
    ///
    /// ``` other: ?*C.QPageRanges ```
    pub fn New2(other: ?*anyopaque) ?*C.QPageRanges {
        return C.QPageRanges_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#operator=)
    ///
    /// ``` self: ?*C.QPageRanges, other: ?*C.QPageRanges ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageRanges_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#swap)
    ///
    /// ``` self: ?*C.QPageRanges, other: ?*C.QPageRanges ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageRanges_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#addPage)
    ///
    /// ``` self: ?*C.QPageRanges, pageNumber: i32 ```
    pub fn AddPage(self: ?*anyopaque, pageNumber: i32) void {
        C.QPageRanges_AddPage(@ptrCast(self), @intCast(pageNumber));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#addRange)
    ///
    /// ``` self: ?*C.QPageRanges, from: i32, to: i32 ```
    pub fn AddRange(self: ?*anyopaque, from: i32, to: i32) void {
        C.QPageRanges_AddRange(@ptrCast(self), @intCast(from), @intCast(to));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#toRangeList)
    ///
    /// ``` self: ?*C.QPageRanges, allocator: std.mem.Allocator ```
    pub fn ToRangeList(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QPageRanges__Range {
        const _arr: C.struct_libqt_list = C.QPageRanges_ToRangeList(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPageRanges__Range, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPageRanges__Range = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#clear)
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QPageRanges_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#toString)
    ///
    /// ``` self: ?*C.QPageRanges, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPageRanges_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#fromString)
    ///
    /// ``` ranges: []const u8 ```
    pub fn FromString(ranges: []const u8) ?*C.QPageRanges {
        const ranges_str = C.struct_libqt_string{
            .len = ranges.len,
            .data = @constCast(ranges.ptr),
        };
        return C.QPageRanges_FromString(ranges_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#contains)
    ///
    /// ``` self: ?*C.QPageRanges, pageNumber: i32 ```
    pub fn Contains(self: ?*anyopaque, pageNumber: i32) bool {
        return C.QPageRanges_Contains(@ptrCast(self), @intCast(pageNumber));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#isEmpty)
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QPageRanges_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#firstPage)
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn FirstPage(self: ?*anyopaque) i32 {
        return C.QPageRanges_FirstPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#lastPage)
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn LastPage(self: ?*anyopaque) i32 {
        return C.QPageRanges_LastPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges.html#detach)
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QPageRanges_Detach(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPageRanges ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPageRanges_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpageranges-range.html
pub const qpageranges__range = struct {
    /// New constructs a new QPageRanges::Range object.
    ///
    /// ``` other: ?*C.QPageRanges__Range ```
    pub fn New(other: ?*anyopaque) ?*C.QPageRanges__Range {
        return C.QPageRanges__Range_new(@ptrCast(other));
    }

    /// New2 constructs a new QPageRanges::Range object and invalidates the source QPageRanges::Range object.
    ///
    /// ``` other: ?*C.QPageRanges__Range ```
    pub fn New2(other: ?*anyopaque) ?*C.QPageRanges__Range {
        return C.QPageRanges__Range_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPageRanges::Range object.
    ///
    ///
    pub fn New3() ?*C.QPageRanges__Range {
        return C.QPageRanges__Range_new3();
    }

    /// New4 constructs a new QPageRanges::Range object.
    ///
    /// ``` param1: ?*C.QPageRanges__Range ```
    pub fn New4(param1: ?*anyopaque) ?*C.QPageRanges__Range {
        return C.QPageRanges__Range_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPageRanges__Range, other: ?*QPageRanges__Range ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageRanges__Range_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPageRanges__Range, other: ?*QPageRanges__Range ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPageRanges__Range_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpageranges__range.html#contains)
    ///
    /// ``` self: ?*C.QPageRanges__Range, pageNumber: i32 ```
    pub fn Contains(self: ?*anyopaque, pageNumber: i32) bool {
        return C.QPageRanges__Range_Contains(@ptrCast(self), @intCast(pageNumber));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPageRanges__Range ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPageRanges__Range_Delete(@ptrCast(self));
    }
};
