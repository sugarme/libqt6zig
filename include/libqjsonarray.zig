const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qjsonarray.html
pub const qjsonarray = struct {
    /// New constructs a new QJsonArray object.
    ///
    ///
    pub fn New() ?*C.QJsonArray {
        return C.QJsonArray_new();
    }

    /// New2 constructs a new QJsonArray object.
    ///
    /// ``` other: ?*C.QJsonArray ```
    pub fn New2(other: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonArray_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator=)
    ///
    /// ``` self: ?*C.QJsonArray, other: ?*C.QJsonArray ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonArray_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#fromStringList)
    ///
    /// ``` list: [][]const u8, allocator: std.mem.Allocator ```
    pub fn FromStringList(list: [][]const u8, allocator: std.mem.Allocator) ?*C.QJsonArray {
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
        return C.QJsonArray_FromStringList(list_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#size)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QJsonArray_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#count)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Count(self: ?*anyopaque) i64 {
        return C.QJsonArray_Count(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#isEmpty)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QJsonArray_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#at)
    ///
    /// ``` self: ?*C.QJsonArray, i: i64 ```
    pub fn At(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonArray_At(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#first)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn First(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonArray_First(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#last)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Last(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonArray_Last(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#prepend)
    ///
    /// ``` self: ?*C.QJsonArray, value: ?*C.QJsonValue ```
    pub fn Prepend(self: ?*anyopaque, value: ?*anyopaque) void {
        C.QJsonArray_Prepend(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#append)
    ///
    /// ``` self: ?*C.QJsonArray, value: ?*C.QJsonValue ```
    pub fn Append(self: ?*anyopaque, value: ?*anyopaque) void {
        C.QJsonArray_Append(@ptrCast(self), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#removeAt)
    ///
    /// ``` self: ?*C.QJsonArray, i: i64 ```
    pub fn RemoveAt(self: ?*anyopaque, i: i64) void {
        C.QJsonArray_RemoveAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#takeAt)
    ///
    /// ``` self: ?*C.QJsonArray, i: i64 ```
    pub fn TakeAt(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonArray_TakeAt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#removeFirst)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn RemoveFirst(self: ?*anyopaque) void {
        C.QJsonArray_RemoveFirst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#removeLast)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn RemoveLast(self: ?*anyopaque) void {
        C.QJsonArray_RemoveLast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#insert)
    ///
    /// ``` self: ?*C.QJsonArray, i: i64, value: ?*C.QJsonValue ```
    pub fn Insert(self: ?*anyopaque, i: i64, value: ?*anyopaque) void {
        C.QJsonArray_Insert(@ptrCast(self), @intCast(i), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#replace)
    ///
    /// ``` self: ?*C.QJsonArray, i: i64, value: ?*C.QJsonValue ```
    pub fn Replace(self: ?*anyopaque, i: i64, value: ?*anyopaque) void {
        C.QJsonArray_Replace(@ptrCast(self), @intCast(i), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#contains)
    ///
    /// ``` self: ?*C.QJsonArray, element: ?*C.QJsonValue ```
    pub fn Contains(self: ?*anyopaque, element: ?*anyopaque) bool {
        return C.QJsonArray_Contains(@ptrCast(self), @ptrCast(element));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator[])
    ///
    /// ``` self: ?*C.QJsonArray, i: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, i: i64) ?*C.QJsonValueRef {
        return C.QJsonArray_OperatorSubscript(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator[])
    ///
    /// ``` self: ?*C.QJsonArray, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonArray_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator==)
    ///
    /// ``` self: ?*C.QJsonArray, other: ?*C.QJsonArray ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonArray, other: ?*C.QJsonArray ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#swap)
    ///
    /// ``` self: ?*C.QJsonArray, other: ?*C.QJsonArray ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonArray_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#begin)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Begin(self: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#begin)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Begin2(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_Begin2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#constBegin)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn ConstBegin(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_ConstBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#cbegin)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Cbegin(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#end)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn End(self: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#end)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn End2(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_End2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#constEnd)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn ConstEnd(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_ConstEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#cend)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Cend(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#insert)
    ///
    /// ``` self: ?*C.QJsonArray, before: ?*C.QJsonArray__iterator, value: ?*C.QJsonValue ```
    pub fn Insert2(self: ?*anyopaque, before: ?*C.QJsonArray__iterator, value: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray_Insert2(@ptrCast(self), @ptrCast(before), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#erase)
    ///
    /// ``` self: ?*C.QJsonArray, it: ?*C.QJsonArray__iterator ```
    pub fn Erase(self: ?*anyopaque, it: ?*C.QJsonArray__iterator) ?*C.QJsonArray__iterator {
        return C.QJsonArray_Erase(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator+)
    ///
    /// ``` self: ?*C.QJsonArray, v: ?*C.QJsonValue ```
    pub fn OperatorPlus(self: ?*anyopaque, v: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonArray_OperatorPlus(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator+=)
    ///
    /// ``` self: ?*C.QJsonArray, v: ?*C.QJsonValue ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, v: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonArray_OperatorPlusAssign(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#operator<<)
    ///
    /// ``` self: ?*C.QJsonArray, v: ?*C.QJsonValue ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, v: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonArray_OperatorShiftLeft(@ptrCast(self), @ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#push_back)
    ///
    /// ``` self: ?*C.QJsonArray, t: ?*C.QJsonValue ```
    pub fn PushBack(self: ?*anyopaque, t: ?*anyopaque) void {
        C.QJsonArray_PushBack(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#push_front)
    ///
    /// ``` self: ?*C.QJsonArray, t: ?*C.QJsonValue ```
    pub fn PushFront(self: ?*anyopaque, t: ?*anyopaque) void {
        C.QJsonArray_PushFront(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#pop_front)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn PopFront(self: ?*anyopaque) void {
        C.QJsonArray_PopFront(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#pop_back)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn PopBack(self: ?*anyopaque) void {
        C.QJsonArray_PopBack(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray.html#empty)
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn Empty(self: ?*anyopaque) bool {
        return C.QJsonArray_Empty(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonArray ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonArray_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsonarray-iterator.html
pub const qjsonarray__iterator = struct {
    /// New constructs a new QJsonArray::iterator object.
    ///
    /// ``` other: ?*C.QJsonArray__iterator ```
    pub fn New(other: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QJsonArray::iterator object.
    ///
    ///
    pub fn New2() ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_new2();
    }

    /// New3 constructs a new QJsonArray::iterator object.
    ///
    /// ``` array: ?*C.QJsonArray, index: i64 ```
    pub fn New3(array: ?*anyopaque, index: i64) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_new3(@ptrCast(array), @intCast(index));
    }

    /// New4 constructs a new QJsonArray::iterator object.
    ///
    /// ``` other: ?*C.QJsonArray__iterator ```
    pub fn New4(other: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_new4(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__iterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonArray__iterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator*)
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) ?*C.QJsonValueRef {
        return C.QJsonArray__iterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QJsonValueConstRef {
        return C.QJsonArray__iterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn OperatorMinusGreater2(self: ?*anyopaque) ?*C.QJsonValueRef {
        return C.QJsonArray__iterator_OperatorMinusGreater2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator[])
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) ?*C.QJsonValueRef {
        return C.QJsonArray__iterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, o: ?*C.QJsonArray__iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, o: ?*C.QJsonArray__iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, o: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorEqualWithQJsonArrayconstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorEqualWithQJsonArrayconstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, o: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorNotEqualWithQJsonArrayconstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorNotEqualWithQJsonArrayconstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorLesserWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorLesserWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorLesserOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorLesserOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorGreaterWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorGreaterWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorGreaterOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__iterator_OperatorGreaterOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator+=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator-=)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator+)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QJsonArray__iterator {
        return C.QJsonArray__iterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QJsonArray__iterator, j: ?*C.QJsonArray__iterator ```
    pub fn OperatorMinusWithQJsonArrayiterator(self: ?*anyopaque, j: ?*C.QJsonArray__iterator) i64 {
        return C.QJsonArray__iterator_OperatorMinusWithQJsonArrayiterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonArray__iterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonArray__iterator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsonarray-const_iterator.html
pub const qjsonarray__const_iterator = struct {
    /// New constructs a new QJsonArray::const_iterator object.
    ///
    /// ``` other: ?*C.QJsonArray__const_iterator ```
    pub fn New(other: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QJsonArray::const_iterator object.
    ///
    ///
    pub fn New2() ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_new2();
    }

    /// New3 constructs a new QJsonArray::const_iterator object.
    ///
    /// ``` array: ?*C.QJsonArray, index: i64 ```
    pub fn New3(array: ?*anyopaque, index: i64) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_new3(@ptrCast(array), @intCast(index));
    }

    /// New4 constructs a new QJsonArray::const_iterator object.
    ///
    /// ``` o: ?*C.QJsonArray__iterator ```
    pub fn New4(o: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_new4(@ptrCast(o));
    }

    /// New5 constructs a new QJsonArray::const_iterator object.
    ///
    /// ``` other: ?*C.QJsonArray__const_iterator ```
    pub fn New5(other: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_new5(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonArray__const_iterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator*)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) ?*C.QJsonValueConstRef {
        return C.QJsonArray__const_iterator_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator->)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QJsonValueConstRef {
        return C.QJsonArray__const_iterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator[])
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) ?*C.QJsonValueConstRef {
        return C.QJsonArray__const_iterator_OperatorSubscript(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator==)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, o: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, o: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator<)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator>)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, other: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonArray__const_iterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator++)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator++)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator--)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator--)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator+=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator-=)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator+)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator-)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QJsonArray__const_iterator {
        return C.QJsonArray__const_iterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonarray__const_iterator.html#operator-)
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator, j: ?*C.QJsonArray__const_iterator ```
    pub fn OperatorMinusWithQJsonArrayconstIterator(self: ?*anyopaque, j: ?*C.QJsonArray__const_iterator) i64 {
        return C.QJsonArray__const_iterator_OperatorMinusWithQJsonArrayconstIterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonArray__const_iterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonArray__const_iterator_Delete(@ptrCast(self));
    }
};
