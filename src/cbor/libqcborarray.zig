const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qcborarray.html
pub const qcborarray = struct {
    /// New constructs a new QCborArray object.
    ///
    ///
    pub fn New() ?*C.QCborArray {
        return C.QCborArray_new();
    }

    /// New2 constructs a new QCborArray object.
    ///
    /// ``` other: ?*C.QCborArray ```
    pub fn New2(other: ?*anyopaque) ?*C.QCborArray {
        return C.QCborArray_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator=)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborArray_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#swap)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborArray_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#toCborValue)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn ToCborValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborArray_ToCborValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#size)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QCborArray_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#isEmpty)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QCborArray_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#clear)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QCborArray_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#at)
    ///
    /// ``` self: ?*C.QCborArray, i: i64 ```
    pub fn At(self: ?*anyopaque, i: i64) ?*C.QCborValue {
        return C.QCborArray_At(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#first)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn First(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborArray_First(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#last)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Last(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborArray_Last(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator[])
    ///
    /// ``` self: ?*C.QCborArray, i: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, i: i64) ?*C.QCborValue {
        return C.QCborArray_OperatorSubscript(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#first)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn First2(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborArray_First2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#last)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Last2(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborArray_Last2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator[])
    ///
    /// ``` self: ?*C.QCborArray, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QCborValueRef {
        return C.QCborArray_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: ?*C.QCborArray, i: i64, value: ?*C.QCborValue ```
    pub fn Insert(self: ?*anyopaque, i: i64, value: ?*anyopaque) void {
        C.QCborArray_Insert(@ptrCast(self), @intCast(i), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#prepend)
    ///
    /// ``` self: ?*C.QCborArray, value: ?*C.QCborValue ```
    pub fn Prepend(self: ?*anyopaque, value: ?*anyopaque) void {
        C.QCborArray_Prepend(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#append)
    ///
    /// ``` self: ?*C.QCborArray, value: ?*C.QCborValue ```
    pub fn Append(self: ?*anyopaque, value: ?*anyopaque) void {
        C.QCborArray_Append(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#extract)
    ///
    /// ``` self: ?*C.QCborArray, it: ?*C.QCborArray__ConstIterator ```
    pub fn Extract(self: ?*anyopaque, it: ?*C.QCborArray__ConstIterator) ?*C.QCborValue {
        return C.QCborArray_Extract(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#extract)
    ///
    /// ``` self: ?*C.QCborArray, it: ?*C.QCborArray__Iterator ```
    pub fn ExtractWithIt(self: ?*anyopaque, it: ?*C.QCborArray__Iterator) ?*C.QCborValue {
        return C.QCborArray_ExtractWithIt(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeAt)
    ///
    /// ``` self: ?*C.QCborArray, i: i64 ```
    pub fn RemoveAt(self: ?*anyopaque, i: i64) void {
        C.QCborArray_RemoveAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeAt)
    ///
    /// ``` self: ?*C.QCborArray, i: i64 ```
    pub fn TakeAt(self: ?*anyopaque, i: i64) ?*C.QCborValue {
        return C.QCborArray_TakeAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeFirst)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn RemoveFirst(self: ?*anyopaque) void {
        C.QCborArray_RemoveFirst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#removeLast)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn RemoveLast(self: ?*anyopaque) void {
        C.QCborArray_RemoveLast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeFirst)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn TakeFirst(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborArray_TakeFirst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#takeLast)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn TakeLast(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborArray_TakeLast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#contains)
    ///
    /// ``` self: ?*C.QCborArray, value: ?*C.QCborValue ```
    pub fn Contains(self: ?*anyopaque, value: ?*anyopaque) bool {
        return C.QCborArray_Contains(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#compare)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return C.QCborArray_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator==)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator!=)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator<)
    ///
    /// ``` self: ?*C.QCborArray, other: ?*C.QCborArray ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#begin)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Begin(self: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#constBegin)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn ConstBegin(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_ConstBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#begin)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Begin2(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_Begin2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#cbegin)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Cbegin(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#end)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn End(self: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#constEnd)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn ConstEnd(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_ConstEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#end)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn End2(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_End2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#cend)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Cend(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: ?*C.QCborArray, before: ?*C.QCborArray__Iterator, value: ?*C.QCborValue ```
    pub fn Insert2(self: ?*anyopaque, before: ?*C.QCborArray__Iterator, value: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray_Insert2(@ptrCast(self), @ptrCast(before), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#insert)
    ///
    /// ``` self: ?*C.QCborArray, before: ?*C.QCborArray__ConstIterator, value: ?*C.QCborValue ```
    pub fn Insert3(self: ?*anyopaque, before: ?*C.QCborArray__ConstIterator, value: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray_Insert3(@ptrCast(self), @ptrCast(before), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#erase)
    ///
    /// ``` self: ?*C.QCborArray, it: ?*C.QCborArray__Iterator ```
    pub fn Erase(self: ?*anyopaque, it: ?*C.QCborArray__Iterator) ?*C.QCborArray__Iterator {
        return C.QCborArray_Erase(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#erase)
    ///
    /// ``` self: ?*C.QCborArray, it: ?*C.QCborArray__ConstIterator ```
    pub fn EraseWithIt(self: ?*anyopaque, it: ?*C.QCborArray__ConstIterator) ?*C.QCborArray__Iterator {
        return C.QCborArray_EraseWithIt(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#push_back)
    ///
    /// ``` self: ?*C.QCborArray, t: ?*C.QCborValue ```
    pub fn PushBack(self: ?*anyopaque, t: ?*anyopaque) void {
        C.QCborArray_PushBack(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#push_front)
    ///
    /// ``` self: ?*C.QCborArray, t: ?*C.QCborValue ```
    pub fn PushFront(self: ?*anyopaque, t: ?*anyopaque) void {
        C.QCborArray_PushFront(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#pop_front)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn PopFront(self: ?*anyopaque) void {
        C.QCborArray_PopFront(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#pop_back)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn PopBack(self: ?*anyopaque) void {
        C.QCborArray_PopBack(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#empty)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn Empty(self: ?*anyopaque) bool {
        return C.QCborArray_Empty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator+)
    ///
    /// ``` self: ?*C.QCborArray, v: ?*C.QCborValue ```
    pub fn OperatorPlus(self: ?*anyopaque, v: ?*anyopaque) ?*C.QCborArray {
        return C.QCborArray_OperatorPlus(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator+=)
    ///
    /// ``` self: ?*C.QCborArray, v: ?*C.QCborValue ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, v: ?*anyopaque) ?*C.QCborArray {
        return C.QCborArray_OperatorPlusAssign(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#operator<<)
    ///
    /// ``` self: ?*C.QCborArray, v: ?*C.QCborValue ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, v: ?*anyopaque) ?*C.QCborArray {
        return C.QCborArray_OperatorShiftLeft(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#fromStringList)
    ///
    /// ``` list: [][]const u8, allocator: std.mem.Allocator ```
    pub fn FromStringList(list: [][]const u8, allocator: std.mem.Allocator) ?*C.QCborArray {
        var list_arr = allocator.alloc(C.struct_libqt_string, list.len) catch @panic("Memory allocation failed");
        defer allocator.free(list_arr);
        for (list, 0..list.len) |item, _i| {
            list_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const list_list = C.struct_libqt_list{
            .len = list.len,
            .data = list_arr.ptr,
        };
        return C.QCborArray_FromStringList(list_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#fromJsonArray)
    ///
    /// ``` array: ?*C.QJsonArray ```
    pub fn FromJsonArray(array: ?*anyopaque) ?*C.QCborArray {
        return C.QCborArray_FromJsonArray(@ptrCast(array));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray.html#toJsonArray)
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn ToJsonArray(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QCborArray_ToJsonArray(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborArray ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborArray_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborarray-iterator.html
pub const qcborarray__iterator = struct {
    /// New constructs a new QCborArray::Iterator object.
    ///
    /// ``` other: ?*C.QCborArray__Iterator ```
    pub fn New(other: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborArray::Iterator object.
    ///
    ///
    pub fn New2() ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_new2();
    }

    /// New3 constructs a new QCborArray::Iterator object.
    ///
    /// ``` param1: ?*C.QCborArray__Iterator ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborArray__Iterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator*)
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborArray__Iterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborArray__Iterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn OperatorMinusGreater2(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborArray__Iterator_OperatorMinusGreater2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator[])
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) ?*C.QCborValueRef {
        return C.QCborArray__Iterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, o: ?*C.QCborArray__Iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, o: ?*C.QCborArray__Iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, o: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorEqualWithQCborArrayConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorEqualWithQCborArrayConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, o: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorNotEqualWithQCborArrayConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorNotEqualWithQCborArrayConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorLesserWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorLesserWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorLesserOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorLesserOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorGreaterWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorGreaterWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorGreaterOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__Iterator_OperatorGreaterOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator+=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator-=)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator+)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QCborArray__Iterator {
        return C.QCborArray__Iterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborArray__Iterator, j: ?*C.QCborArray__Iterator ```
    pub fn OperatorMinusWithQCborArrayIterator(self: ?*anyopaque, j: ?*C.QCborArray__Iterator) i64 {
        return C.QCborArray__Iterator_OperatorMinusWithQCborArrayIterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborArray__Iterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborArray__Iterator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborarray-constiterator.html
pub const qcborarray__constiterator = struct {
    /// New constructs a new QCborArray::ConstIterator object.
    ///
    /// ``` other: ?*C.QCborArray__ConstIterator ```
    pub fn New(other: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborArray::ConstIterator object.
    ///
    ///
    pub fn New2() ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_new2();
    }

    /// New3 constructs a new QCborArray::ConstIterator object.
    ///
    /// ``` param1: ?*C.QCborArray__ConstIterator ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborArray__ConstIterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator*)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborArray__ConstIterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborArray__ConstIterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator[])
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) ?*C.QCborValueConstRef {
        return C.QCborArray__ConstIterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, o: ?*C.QCborArray__Iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, o: ?*C.QCborArray__Iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__Iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, o: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorEqualWithQCborArrayConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorEqualWithQCborArrayConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, o: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorNotEqualWithQCborArrayConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorNotEqualWithQCborArrayConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorLesserWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorLesserWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorLesserOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorLesserOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorGreaterWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorGreaterWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, other: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorGreaterOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborArray__ConstIterator_OperatorGreaterOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator+=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator-=)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator+)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QCborArray__ConstIterator {
        return C.QCborArray__ConstIterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborarray__constiterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator, j: ?*C.QCborArray__ConstIterator ```
    pub fn OperatorMinusWithQCborArrayConstIterator(self: ?*anyopaque, j: ?*C.QCborArray__ConstIterator) i64 {
        return C.QCborArray__ConstIterator_OperatorMinusWithQCborArrayConstIterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborArray__ConstIterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborArray__ConstIterator_Delete(@ptrCast(self));
    }
};
