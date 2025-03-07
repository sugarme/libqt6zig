const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qbitarray.html
pub const qbitarray = struct {
    /// New constructs a new QBitArray object.
    ///
    ///
    pub fn New() ?*C.QBitArray {
        return C.QBitArray_new();
    }

    /// New2 constructs a new QBitArray object.
    ///
    /// ``` size: i64 ```
    pub fn New2(size: i64) ?*C.QBitArray {
        return C.QBitArray_new2(@intCast(size));
    }

    /// New3 constructs a new QBitArray object.
    ///
    /// ``` other: ?*C.QBitArray ```
    pub fn New3(other: ?*anyopaque) ?*C.QBitArray {
        return C.QBitArray_new3(@ptrCast(other));
    }

    /// New4 constructs a new QBitArray object.
    ///
    /// ``` size: i64, val: bool ```
    pub fn New4(size: i64, val: bool) ?*C.QBitArray {
        return C.QBitArray_new4(@intCast(size), val);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator=)
    ///
    /// ``` self: ?*C.QBitArray, other: ?*C.QBitArray ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBitArray_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#swap)
    ///
    /// ``` self: ?*C.QBitArray, other: ?*C.QBitArray ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QBitArray_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#size)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QBitArray_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#count)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn Count(self: ?*anyopaque) i64 {
        return C.QBitArray_Count(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#count)
    ///
    /// ``` self: ?*C.QBitArray, on: bool ```
    pub fn CountWithOn(self: ?*anyopaque, on: bool) i64 {
        return C.QBitArray_CountWithOn(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#isEmpty)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QBitArray_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#isNull)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QBitArray_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#resize)
    ///
    /// ``` self: ?*C.QBitArray, size: i64 ```
    pub fn Resize(self: ?*anyopaque, size: i64) void {
        C.QBitArray_Resize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#detach)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QBitArray_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#isDetached)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QBitArray_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#clear)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QBitArray_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#testBit)
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn TestBit(self: ?*anyopaque, i: i64) bool {
        return C.QBitArray_TestBit(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#setBit)
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn SetBit(self: ?*anyopaque, i: i64) void {
        C.QBitArray_SetBit(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#setBit)
    ///
    /// ``` self: ?*C.QBitArray, i: i64, val: bool ```
    pub fn SetBit2(self: ?*anyopaque, i: i64, val: bool) void {
        C.QBitArray_SetBit2(@ptrCast(self), @intCast(i), val);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#clearBit)
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn ClearBit(self: ?*anyopaque, i: i64) void {
        C.QBitArray_ClearBit(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#toggleBit)
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn ToggleBit(self: ?*anyopaque, i: i64) bool {
        return C.QBitArray_ToggleBit(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#at)
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn At(self: ?*anyopaque, i: i64) bool {
        return C.QBitArray_At(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator[])
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, i: i64) ?*C.QBitRef {
        return C.QBitArray_OperatorSubscript(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator[])
    ///
    /// ``` self: ?*C.QBitArray, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) bool {
        return C.QBitArray_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator&=)
    ///
    /// ``` self: ?*C.QBitArray, param1: ?*C.QBitArray ```
    pub fn OperatorBitwiseAndAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBitArray_OperatorBitwiseAndAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator|=)
    ///
    /// ``` self: ?*C.QBitArray, param1: ?*C.QBitArray ```
    pub fn OperatorBitwiseOrAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBitArray_OperatorBitwiseOrAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator^=)
    ///
    /// ``` self: ?*C.QBitArray, param1: ?*C.QBitArray ```
    pub fn OperatorBitwiseNotAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QBitArray_OperatorBitwiseNotAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator==)
    ///
    /// ``` self: ?*C.QBitArray, other: ?*C.QBitArray ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QBitArray_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#operator!=)
    ///
    /// ``` self: ?*C.QBitArray, other: ?*C.QBitArray ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QBitArray_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#fill)
    ///
    /// ``` self: ?*C.QBitArray, val: bool ```
    pub fn Fill(self: ?*anyopaque, val: bool) bool {
        return C.QBitArray_Fill(@ptrCast(self), val);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#fill)
    ///
    /// ``` self: ?*C.QBitArray, val: bool, first: i64, last: i64 ```
    pub fn Fill2(self: ?*anyopaque, val: bool, first: i64, last: i64) void {
        C.QBitArray_Fill2(@ptrCast(self), val, @intCast(first), @intCast(last));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#truncate)
    ///
    /// ``` self: ?*C.QBitArray, pos: i64 ```
    pub fn Truncate(self: ?*anyopaque, pos: i64) void {
        C.QBitArray_Truncate(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#bits)
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn Bits(self: ?*anyopaque) []const u8 {
        const _ret = C.QBitArray_Bits(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#fromBits)
    ///
    /// ``` data: []const u8, lenVal: i64 ```
    pub fn FromBits(data: []const u8, lenVal: i64) ?*C.QBitArray {
        const data_Cstring = @constCast(data.ptr);
        return C.QBitArray_FromBits(data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#toUInt32)
    ///
    /// ``` self: ?*C.QBitArray, endianness: qsysinfo_enums.Endian ```
    pub fn ToUInt32(self: ?*anyopaque, endianness: i64) u32 {
        return C.QBitArray_ToUInt32(@ptrCast(self), @intCast(endianness));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#fill)
    ///
    /// ``` self: ?*C.QBitArray, val: bool, size: i64 ```
    pub fn Fill22(self: ?*anyopaque, val: bool, size: i64) bool {
        return C.QBitArray_Fill22(@ptrCast(self), val, @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitarray.html#toUInt32)
    ///
    /// ``` self: ?*C.QBitArray, endianness: qsysinfo_enums.Endian, ok: ?*bool ```
    pub fn ToUInt322(self: ?*anyopaque, endianness: i64, ok: ?*anyopaque) u32 {
        return C.QBitArray_ToUInt322(@ptrCast(self), @intCast(endianness), @ptrCast(ok));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBitArray ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBitArray_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qbitref.html
pub const qbitref = struct {
    /// New constructs a new QBitRef object.
    ///
    /// ``` other: ?*C.QBitRef ```
    pub fn New(other: ?*anyopaque) ?*C.QBitRef {
        return C.QBitRef_new(@ptrCast(other));
    }

    /// New2 constructs a new QBitRef object.
    ///
    /// ``` param1: ?*C.QBitRef ```
    pub fn New2(param1: ?*anyopaque) ?*C.QBitRef {
        return C.QBitRef_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitref.html#operator bool)
    ///
    /// ``` self: ?*C.QBitRef ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QBitRef_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitref.html#operator!)
    ///
    /// ``` self: ?*C.QBitRef ```
    pub fn OperatorNot(self: ?*anyopaque) bool {
        return C.QBitRef_OperatorNot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitref.html#operator=)
    ///
    /// ``` self: ?*C.QBitRef, val: ?*C.QBitRef ```
    pub fn OperatorAssign(self: ?*anyopaque, val: ?*anyopaque) void {
        C.QBitRef_OperatorAssign(@ptrCast(self), @ptrCast(val));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qbitref.html#operator=)
    ///
    /// ``` self: ?*C.QBitRef, val: bool ```
    pub fn OperatorAssignWithVal(self: ?*anyopaque, val: bool) void {
        C.QBitRef_OperatorAssignWithVal(@ptrCast(self), val);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QBitRef ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QBitRef_Delete(@ptrCast(self));
    }
};
