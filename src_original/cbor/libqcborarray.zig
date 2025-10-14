const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qcborarray.html
pub const qcborarray = struct {
    /// New constructs a new QCborArray object.
    ///
    ///
    pub fn New() QtC.QCborArray {
        return qtc.QCborArray_new();
    }

    /// New2 constructs a new QCborArray object.
    ///
    /// ``` other: QtC.QCborArray ```
    pub fn New2(other: ?*anyopaque) QtC.QCborArray {
        return qtc.QCborArray_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-eq)
    ///
    /// ``` self: QtC.QCborArray, other: QtC.QCborArray ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QCborArray_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#swap)
    ///
    /// ``` self: QtC.QCborArray, other: QtC.QCborArray ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QCborArray_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#toCborValue)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn ToCborValue(self: ?*anyopaque) QtC.QCborValue {
        return qtc.QCborArray_ToCborValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#size)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Size(self: ?*anyopaque) i64 {
        return qtc.QCborArray_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#isEmpty)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return qtc.QCborArray_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#clear)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Clear(self: ?*anyopaque) void {
        qtc.QCborArray_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#at)
    ///
    /// ``` self: QtC.QCborArray, i: i64 ```
    pub fn At(self: ?*anyopaque, i: i64) QtC.QCborValue {
        return qtc.QCborArray_At(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#first)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn First(self: ?*anyopaque) QtC.QCborValue {
        return qtc.QCborArray_First(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#last)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Last(self: ?*anyopaque) QtC.QCborValue {
        return qtc.QCborArray_Last(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-5b-5d)
    ///
    /// ``` self: QtC.QCborArray, i: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, i: i64) QtC.QCborValue {
        return qtc.QCborArray_OperatorSubscript(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#first)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn First2(self: ?*anyopaque) QtC.QCborValueRef {
        return qtc.QCborArray_First2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#last)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Last2(self: ?*anyopaque) QtC.QCborValueRef {
        return qtc.QCborArray_Last2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-5b-5d)
    ///
    /// ``` self: QtC.QCborArray, i: i64 ```
    pub fn OperatorSubscript2(self: ?*anyopaque, i: i64) QtC.QCborValueRef {
        return qtc.QCborArray_OperatorSubscript2(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: QtC.QCborArray, i: i64, value: QtC.QCborValue ```
    pub fn Insert(self: ?*anyopaque, i: i64, value: ?*anyopaque) void {
        qtc.QCborArray_Insert(@ptrCast(self), @intCast(i), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#prepend)
    ///
    /// ``` self: QtC.QCborArray, value: QtC.QCborValue ```
    pub fn Prepend(self: ?*anyopaque, value: ?*anyopaque) void {
        qtc.QCborArray_Prepend(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#append)
    ///
    /// ``` self: QtC.QCborArray, value: QtC.QCborValue ```
    pub fn Append(self: ?*anyopaque, value: ?*anyopaque) void {
        qtc.QCborArray_Append(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#extract)
    ///
    /// ``` self: QtC.QCborArray, it: QtC.QCborArray__ConstIterator ```
    pub fn Extract(self: ?*anyopaque, it: QtC.QCborArray__ConstIterator) QtC.QCborValue {
        return qtc.QCborArray_Extract(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#extract)
    ///
    /// ``` self: QtC.QCborArray, it: QtC.QCborArray__Iterator ```
    pub fn Extract2(self: ?*anyopaque, it: QtC.QCborArray__Iterator) QtC.QCborValue {
        return qtc.QCborArray_Extract2(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeAt)
    ///
    /// ``` self: QtC.QCborArray, i: i64 ```
    pub fn RemoveAt(self: ?*anyopaque, i: i64) void {
        qtc.QCborArray_RemoveAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeAt)
    ///
    /// ``` self: QtC.QCborArray, i: i64 ```
    pub fn TakeAt(self: ?*anyopaque, i: i64) QtC.QCborValue {
        return qtc.QCborArray_TakeAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeFirst)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn RemoveFirst(self: ?*anyopaque) void {
        qtc.QCborArray_RemoveFirst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeLast)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn RemoveLast(self: ?*anyopaque) void {
        qtc.QCborArray_RemoveLast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeFirst)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn TakeFirst(self: ?*anyopaque) QtC.QCborValue {
        return qtc.QCborArray_TakeFirst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeLast)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn TakeLast(self: ?*anyopaque) QtC.QCborValue {
        return qtc.QCborArray_TakeLast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#contains)
    ///
    /// ``` self: QtC.QCborArray, value: QtC.QCborValue ```
    pub fn Contains(self: ?*anyopaque, value: ?*anyopaque) bool {
        return qtc.QCborArray_Contains(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#compare)
    ///
    /// ``` self: QtC.QCborArray, other: QtC.QCborArray ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return qtc.QCborArray_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#begin)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Begin(self: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#constBegin)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn ConstBegin(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_ConstBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#begin)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Begin2(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_Begin2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#cbegin)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Cbegin(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#end)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn End(self: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#constEnd)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn ConstEnd(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_ConstEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#end)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn End2(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_End2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#cend)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Cend(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: QtC.QCborArray, before: QtC.QCborArray__Iterator, value: QtC.QCborValue ```
    pub fn Insert2(self: ?*anyopaque, before: QtC.QCborArray__Iterator, value: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray_Insert2(@ptrCast(self), @ptrCast(before), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: QtC.QCborArray, before: QtC.QCborArray__ConstIterator, value: QtC.QCborValue ```
    pub fn Insert3(self: ?*anyopaque, before: QtC.QCborArray__ConstIterator, value: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray_Insert3(@ptrCast(self), @ptrCast(before), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#erase)
    ///
    /// ``` self: QtC.QCborArray, it: QtC.QCborArray__Iterator ```
    pub fn Erase(self: ?*anyopaque, it: QtC.QCborArray__Iterator) QtC.QCborArray__Iterator {
        return qtc.QCborArray_Erase(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#erase)
    ///
    /// ``` self: QtC.QCborArray, it: QtC.QCborArray__ConstIterator ```
    pub fn Erase2(self: ?*anyopaque, it: QtC.QCborArray__ConstIterator) QtC.QCborArray__Iterator {
        return qtc.QCborArray_Erase2(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#push_back)
    ///
    /// ``` self: QtC.QCborArray, t: QtC.QCborValue ```
    pub fn PushBack(self: ?*anyopaque, t: ?*anyopaque) void {
        qtc.QCborArray_PushBack(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#push_front)
    ///
    /// ``` self: QtC.QCborArray, t: QtC.QCborValue ```
    pub fn PushFront(self: ?*anyopaque, t: ?*anyopaque) void {
        qtc.QCborArray_PushFront(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#pop_front)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn PopFront(self: ?*anyopaque) void {
        qtc.QCborArray_PopFront(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#pop_back)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn PopBack(self: ?*anyopaque) void {
        qtc.QCborArray_PopBack(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#empty)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn Empty(self: ?*anyopaque) bool {
        return qtc.QCborArray_Empty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-2b)
    ///
    /// ``` self: QtC.QCborArray, v: QtC.QCborValue ```
    pub fn OperatorPlus(self: ?*anyopaque, v: ?*anyopaque) QtC.QCborArray {
        return qtc.QCborArray_OperatorPlus(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-2b-eq)
    ///
    /// ``` self: QtC.QCborArray, v: QtC.QCborValue ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, v: ?*anyopaque) QtC.QCborArray {
        return qtc.QCborArray_OperatorPlusAssign(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator-lt-lt)
    ///
    /// ``` self: QtC.QCborArray, v: QtC.QCborValue ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, v: ?*anyopaque) QtC.QCborArray {
        return qtc.QCborArray_OperatorShiftLeft(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#fromStringList)
    ///
    /// ``` list: [][]const u8, allocator: std.mem.Allocator ```
    pub fn FromStringList(list: [][]const u8, allocator: std.mem.Allocator) QtC.QCborArray {
        var list_arr = allocator.alloc(qtc.libqt_string, list.len) catch @panic("qcborarray.FromStringList: Memory allocation failed");
        defer allocator.free(list_arr);
        for (list, 0..list.len) |item, i| {
            list_arr[i] = .{
                .len = item.len,
                .data = item.ptr,
            };
        }
        const list_list = qtc.libqt_list{
            .len = list.len,
            .data = list_arr.ptr,
        };
        return qtc.QCborArray_FromStringList(list_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#fromVariantList)
    ///
    /// ``` list: []QtC.QVariant ```
    pub fn FromVariantList(list: []QtC.QVariant) QtC.QCborArray {
        const list_list = qtc.libqt_list{
            .len = list.len,
            .data = @ptrCast(list.ptr),
        };
        return qtc.QCborArray_FromVariantList(list_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#fromJsonArray)
    ///
    /// ``` array: QtC.QJsonArray ```
    pub fn FromJsonArray(array: ?*anyopaque) QtC.QCborArray {
        return qtc.QCborArray_FromJsonArray(@ptrCast(array));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#toVariantList)
    ///
    /// ``` self: QtC.QCborArray, allocator: std.mem.Allocator ```
    pub fn ToVariantList(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QVariant {
        const _arr: qtc.libqt_list = qtc.QCborArray_ToVariantList(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QVariant, _arr.len) catch @panic("qcborarray.ToVariantList: Memory allocation failed");
        const _data: [*]QtC.QVariant = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#toJsonArray)
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn ToJsonArray(self: ?*anyopaque) QtC.QJsonArray {
        return qtc.QCborArray_ToJsonArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#dtor.QCborArray)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QCborArray ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QCborArray_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborarray-iterator.html
pub const qcborarray__iterator = struct {
    /// New constructs a new QCborArray::Iterator object.
    ///
    /// ``` other: QtC.QCborArray__Iterator ```
    pub fn New(other: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborArray::Iterator object.
    ///
    ///
    pub fn New2() QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_new2();
    }

    /// New3 constructs a new QCborArray::Iterator object.
    ///
    /// ``` param1: QtC.QCborArray__Iterator ```
    pub fn New3(param1: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-eq)
    ///
    /// ``` self: QtC.QCborArray__Iterator, other: QtC.QCborArray__Iterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QCborArray__Iterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-2a)
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) QtC.QCborValueRef {
        return qtc.QCborArray__Iterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator--gt)
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) QtC.QCborValueRef {
        return qtc.QCborArray__Iterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator--gt)
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn OperatorMinusGreater2(self: ?*anyopaque) QtC.QCborValueConstRef {
        return qtc.QCborArray__Iterator_OperatorMinusGreater2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-5b-5d)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) QtC.QCborValueRef {
        return qtc.QCborArray__Iterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-2b-2b)
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-2b-2b)
    ///
    /// ``` self: QtC.QCborArray__Iterator, param1: i32 ```
    pub fn OperatorPlusPlus2(self: ?*anyopaque, param1: i32) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorPlusPlus2(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator--)
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator--)
    ///
    /// ``` self: QtC.QCborArray__Iterator, param1: i32 ```
    pub fn OperatorMinusMinus2(self: ?*anyopaque, param1: i32) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorMinusMinus2(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-2b-eq)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator--eq)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-2b)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) QtC.QCborArray__Iterator {
        return qtc.QCborArray__Iterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-iterator.html#operator-)
    ///
    /// ``` self: QtC.QCborArray__Iterator, j: QtC.QCborArray__Iterator ```
    pub fn OperatorMinus2(self: ?*anyopaque, j: QtC.QCborArray__Iterator) i64 {
        return qtc.QCborArray__Iterator_OperatorMinus2(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QCborArray__Iterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QCborArray__Iterator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborarray-constiterator.html
pub const qcborarray__constiterator = struct {
    /// New constructs a new QCborArray::ConstIterator object.
    ///
    /// ``` other: QtC.QCborArray__ConstIterator ```
    pub fn New(other: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborArray::ConstIterator object.
    ///
    ///
    pub fn New2() QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_new2();
    }

    /// New3 constructs a new QCborArray::ConstIterator object.
    ///
    /// ``` param1: QtC.QCborArray__ConstIterator ```
    pub fn New3(param1: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-eq)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, other: QtC.QCborArray__ConstIterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QCborArray__ConstIterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-2a)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) QtC.QCborValueConstRef {
        return qtc.QCborArray__ConstIterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator--gt)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) QtC.QCborValueConstRef {
        return qtc.QCborArray__ConstIterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-5b-5d)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) QtC.QCborValueConstRef {
        return qtc.QCborArray__ConstIterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-2b-2b)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-2b-2b)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, param1: i32 ```
    pub fn OperatorPlusPlus2(self: ?*anyopaque, param1: i32) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorPlusPlus2(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator--)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator--)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, param1: i32 ```
    pub fn OperatorMinusMinus2(self: ?*anyopaque, param1: i32) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorMinusMinus2(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-2b-eq)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator--eq)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-2b)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) QtC.QCborArray__ConstIterator {
        return qtc.QCborArray__ConstIterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray-constiterator.html#operator-)
    ///
    /// ``` self: QtC.QCborArray__ConstIterator, j: QtC.QCborArray__ConstIterator ```
    pub fn OperatorMinus2(self: ?*anyopaque, j: QtC.QCborArray__ConstIterator) i64 {
        return qtc.QCborArray__ConstIterator_OperatorMinus2(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QCborArray__ConstIterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QCborArray__ConstIterator_Delete(@ptrCast(self));
    }
};
