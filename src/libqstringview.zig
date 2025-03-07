const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstringview.html
pub const qstringview = struct {
    /// New constructs a new QStringView object.
    ///
    ///
    pub fn New() ?*C.QStringView {
        return C.QStringView_new();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QStringView, other: ?*QStringView ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStringView_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QStringView, other: ?*QStringView ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStringView_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toString)
    ///
    /// ``` self: ?*C.QStringView, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStringView_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#size)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QStringView_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#data)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Data(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Data(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#constData)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ConstData(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_ConstData(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#operator[])
    ///
    /// ``` self: ?*C.QStringView, n: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, n: i64) ?*C.QChar {
        return C.QStringView_OperatorSubscript(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLatin1)
    ///
    /// ``` self: ?*C.QStringView, allocator: std.mem.Allocator ```
    pub fn ToLatin1(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStringView_ToLatin1(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUtf8)
    ///
    /// ``` self: ?*C.QStringView, allocator: std.mem.Allocator ```
    pub fn ToUtf8(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStringView_ToUtf8(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLocal8Bit)
    ///
    /// ``` self: ?*C.QStringView, allocator: std.mem.Allocator ```
    pub fn ToLocal8Bit(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QStringView_ToLocal8Bit(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUcs4)
    ///
    /// ``` self: ?*C.QStringView, allocator: std.mem.Allocator ```
    pub fn ToUcs4(self: ?*anyopaque, allocator: std.mem.Allocator) []u32 {
        const _arr: C.struct_libqt_list = C.QStringView_ToUcs4(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(u32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]u32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#at)
    ///
    /// ``` self: ?*C.QStringView, n: i64 ```
    pub fn At(self: ?*anyopaque, n: i64) ?*C.QChar {
        return C.QStringView_At(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#truncate)
    ///
    /// ``` self: ?*C.QStringView, n: i64 ```
    pub fn Truncate(self: ?*anyopaque, n: i64) void {
        C.QStringView_Truncate(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#chop)
    ///
    /// ``` self: ?*C.QStringView, n: i64 ```
    pub fn Chop(self: ?*anyopaque, n: i64) void {
        C.QStringView_Chop(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#compare)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn CompareWithQChar(self: ?*anyopaque, c: ?*C.QChar) i32 {
        return C.QStringView_CompareWithQChar(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#compare)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn Compare2(self: ?*anyopaque, c: ?*C.QChar, cs: i64) i32 {
        return C.QStringView_Compare2(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#startsWith)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn StartsWithWithQChar(self: ?*anyopaque, c: ?*C.QChar) bool {
        return C.QStringView_StartsWithWithQChar(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#startsWith)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn StartsWith2(self: ?*anyopaque, c: ?*C.QChar, cs: i64) bool {
        return C.QStringView_StartsWith2(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#endsWith)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn EndsWithWithQChar(self: ?*anyopaque, c: ?*C.QChar) bool {
        return C.QStringView_EndsWithWithQChar(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#endsWith)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn EndsWith2(self: ?*anyopaque, c: ?*C.QChar, cs: i64) bool {
        return C.QStringView_EndsWith2(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn IndexOf(self: ?*anyopaque, c: ?*C.QChar) i64 {
        return C.QStringView_IndexOf(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#contains)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn Contains(self: ?*anyopaque, c: ?*C.QChar) bool {
        return C.QStringView_Contains(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#count)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn Count(self: ?*anyopaque, c: ?*C.QChar) i64 {
        return C.QStringView_Count(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar ```
    pub fn LastIndexOf(self: ?*anyopaque, c: ?*C.QChar) i64 {
        return C.QStringView_LastIndexOf(@ptrCast(self), @ptrCast(c));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, from: i64 ```
    pub fn LastIndexOf2(self: ?*anyopaque, c: ?*C.QChar, from: i64) i64 {
        return C.QStringView_LastIndexOf2(@ptrCast(self), @ptrCast(c), @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression ```
    pub fn IndexOfWithRe(self: ?*anyopaque, re: ?*anyopaque) i64 {
        return C.QStringView_IndexOfWithRe(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression, from: i64 ```
    pub fn LastIndexOf5(self: ?*anyopaque, re: ?*anyopaque, from: i64) i64 {
        return C.QStringView_LastIndexOf5(@ptrCast(self), @ptrCast(re), @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#contains)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression ```
    pub fn ContainsWithRe(self: ?*anyopaque, re: ?*anyopaque) bool {
        return C.QStringView_ContainsWithRe(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#count)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression ```
    pub fn CountWithRe(self: ?*anyopaque, re: ?*anyopaque) i64 {
        return C.QStringView_CountWithRe(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#isRightToLeft)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn IsRightToLeft(self: ?*anyopaque) bool {
        return C.QStringView_IsRightToLeft(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#isValidUtf16)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn IsValidUtf16(self: ?*anyopaque) bool {
        return C.QStringView_IsValidUtf16(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toShort)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToShort(self: ?*anyopaque) i16 {
        return C.QStringView_ToShort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUShort)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToUShort(self: ?*anyopaque) u16 {
        return C.QStringView_ToUShort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toInt)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToInt(self: ?*anyopaque) i32 {
        return C.QStringView_ToInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUInt)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToUInt(self: ?*anyopaque) u32 {
        return C.QStringView_ToUInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLong)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToLong(self: ?*anyopaque) i64 {
        return C.QStringView_ToLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULong)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToULong(self: ?*anyopaque) u64 {
        return C.QStringView_ToULong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLongLong)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToLongLong(self: ?*anyopaque) i64 {
        return C.QStringView_ToLongLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULongLong)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToULongLong(self: ?*anyopaque) u64 {
        return C.QStringView_ToULongLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toFloat)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToFloat(self: ?*anyopaque) f32 {
        return C.QStringView_ToFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toDouble)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QStringView_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#begin)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Begin(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#end)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn End(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#cbegin)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Cbegin(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#cend)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Cend(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#empty)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Empty(self: ?*anyopaque) bool {
        return C.QStringView_Empty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#front)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Front(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Front(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#back)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Back(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Back(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#constBegin)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ConstBegin(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_ConstBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#constEnd)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn ConstEnd(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_ConstEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#isNull)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QStringView_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#isEmpty)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QStringView_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#length)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Length(self: ?*anyopaque) i64 {
        return C.QStringView_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#first)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn First2(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_First2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#last)
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn Last2(self: ?*anyopaque) ?*C.QChar {
        return C.QStringView_Last2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, from: i64 ```
    pub fn IndexOf2(self: ?*anyopaque, c: ?*C.QChar, from: i64) i64 {
        return C.QStringView_IndexOf2(@ptrCast(self), @ptrCast(c), @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, from: i64, cs: qnamespace_enums.CaseSensitivity ```
    pub fn IndexOf3(self: ?*anyopaque, c: ?*C.QChar, from: i64, cs: i64) i64 {
        return C.QStringView_IndexOf3(@ptrCast(self), @ptrCast(c), @intCast(from), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#contains)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn Contains2(self: ?*anyopaque, c: ?*C.QChar, cs: i64) bool {
        return C.QStringView_Contains2(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#count)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn Count2(self: ?*anyopaque, c: ?*C.QChar, cs: i64) i64 {
        return C.QStringView_Count2(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, cs: qnamespace_enums.CaseSensitivity ```
    pub fn LastIndexOf22(self: ?*anyopaque, c: ?*C.QChar, cs: i64) i64 {
        return C.QStringView_LastIndexOf22(@ptrCast(self), @ptrCast(c), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, c: ?*C.QChar, from: i64, cs: qnamespace_enums.CaseSensitivity ```
    pub fn LastIndexOf32(self: ?*anyopaque, c: ?*C.QChar, from: i64, cs: i64) i64 {
        return C.QStringView_LastIndexOf32(@ptrCast(self), @ptrCast(c), @intCast(from), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression, from: i64 ```
    pub fn IndexOf24(self: ?*anyopaque, re: ?*anyopaque, from: i64) i64 {
        return C.QStringView_IndexOf24(@ptrCast(self), @ptrCast(re), @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#indexOf)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression, from: i64, rmatch: ?*C.QRegularExpressionMatch ```
    pub fn IndexOf34(self: ?*anyopaque, re: ?*anyopaque, from: i64, rmatch: ?*anyopaque) i64 {
        return C.QStringView_IndexOf34(@ptrCast(self), @ptrCast(re), @intCast(from), @ptrCast(rmatch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#lastIndexOf)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression, from: i64, rmatch: ?*C.QRegularExpressionMatch ```
    pub fn LastIndexOf35(self: ?*anyopaque, re: ?*anyopaque, from: i64, rmatch: ?*anyopaque) i64 {
        return C.QStringView_LastIndexOf35(@ptrCast(self), @ptrCast(re), @intCast(from), @ptrCast(rmatch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#contains)
    ///
    /// ``` self: ?*C.QStringView, re: ?*C.QRegularExpression, rmatch: ?*C.QRegularExpressionMatch ```
    pub fn Contains24(self: ?*anyopaque, re: ?*anyopaque, rmatch: ?*anyopaque) bool {
        return C.QStringView_Contains24(@ptrCast(self), @ptrCast(re), @ptrCast(rmatch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toShort)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToShort1(self: ?*anyopaque, ok: ?*anyopaque) i16 {
        return C.QStringView_ToShort1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toShort)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToShort2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) i16 {
        return C.QStringView_ToShort2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUShort)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToUShort1(self: ?*anyopaque, ok: ?*anyopaque) u16 {
        return C.QStringView_ToUShort1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUShort)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToUShort2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) u16 {
        return C.QStringView_ToUShort2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toInt)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToInt1(self: ?*anyopaque, ok: ?*anyopaque) i32 {
        return C.QStringView_ToInt1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toInt)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToInt2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) i32 {
        return C.QStringView_ToInt2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUInt)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToUInt1(self: ?*anyopaque, ok: ?*anyopaque) u32 {
        return C.QStringView_ToUInt1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toUInt)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToUInt2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) u32 {
        return C.QStringView_ToUInt2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToLong1(self: ?*anyopaque, ok: ?*anyopaque) i64 {
        return C.QStringView_ToLong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToLong2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) i64 {
        return C.QStringView_ToLong2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToULong1(self: ?*anyopaque, ok: ?*anyopaque) u64 {
        return C.QStringView_ToULong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToULong2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) u64 {
        return C.QStringView_ToULong2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLongLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToLongLong1(self: ?*anyopaque, ok: ?*anyopaque) i64 {
        return C.QStringView_ToLongLong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toLongLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToLongLong2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) i64 {
        return C.QStringView_ToLongLong2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULongLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToULongLong1(self: ?*anyopaque, ok: ?*anyopaque) u64 {
        return C.QStringView_ToULongLong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toULongLong)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool, base: i32 ```
    pub fn ToULongLong2(self: ?*anyopaque, ok: ?*anyopaque, base: i32) u64 {
        return C.QStringView_ToULongLong2(@ptrCast(self), @ptrCast(ok), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toFloat)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToFloat1(self: ?*anyopaque, ok: ?*anyopaque) f32 {
        return C.QStringView_ToFloat1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringview.html#toDouble)
    ///
    /// ``` self: ?*C.QStringView, ok: ?*bool ```
    pub fn ToDouble1(self: ?*anyopaque, ok: ?*anyopaque) f64 {
        return C.QStringView_ToDouble1(@ptrCast(self), @ptrCast(ok));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStringView ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStringView_Delete(@ptrCast(self));
    }
};
