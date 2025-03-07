const C = @import("qt6c");
const qtextstream_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextstream.html
pub const qtextstream = struct {
    /// New constructs a new QTextStream object.
    ///
    ///
    pub fn New() ?*C.QTextStream {
        return C.QTextStream_new();
    }

    /// New2 constructs a new QTextStream object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New2(device: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_new2(@ptrCast(device));
    }

    /// New3 constructs a new QTextStream object.
    ///
    /// ``` array: []u8 ```
    pub fn New3(array: []u8) ?*C.QTextStream {
        const array_str = C.struct_libqt_string{
            .len = array.len,
            .data = @constCast(array.ptr),
        };

        return C.QTextStream_new3(array_str);
    }

    /// New4 constructs a new QTextStream object.
    ///
    /// ``` array: []u8, openMode: i32 ```
    pub fn New4(array: []u8, openMode: i64) ?*C.QTextStream {
        const array_str = C.struct_libqt_string{
            .len = array.len,
            .data = @constCast(array.ptr),
        };

        return C.QTextStream_new4(array_str, @intCast(openMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setEncoding)
    ///
    /// ``` self: ?*C.QTextStream, encoding: qstringconverter_enums.Encoding ```
    pub fn SetEncoding(self: ?*anyopaque, encoding: i64) void {
        C.QTextStream_SetEncoding(@ptrCast(self), @intCast(encoding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#encoding)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Encoding(self: ?*anyopaque) i64 {
        return C.QTextStream_Encoding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setAutoDetectUnicode)
    ///
    /// ``` self: ?*C.QTextStream, enabled: bool ```
    pub fn SetAutoDetectUnicode(self: ?*anyopaque, enabled: bool) void {
        C.QTextStream_SetAutoDetectUnicode(@ptrCast(self), enabled);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#autoDetectUnicode)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn AutoDetectUnicode(self: ?*anyopaque) bool {
        return C.QTextStream_AutoDetectUnicode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setGenerateByteOrderMark)
    ///
    /// ``` self: ?*C.QTextStream, generate: bool ```
    pub fn SetGenerateByteOrderMark(self: ?*anyopaque, generate: bool) void {
        C.QTextStream_SetGenerateByteOrderMark(@ptrCast(self), generate);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#generateByteOrderMark)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn GenerateByteOrderMark(self: ?*anyopaque) bool {
        return C.QTextStream_GenerateByteOrderMark(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setLocale)
    ///
    /// ``` self: ?*C.QTextStream, locale: ?*C.QLocale ```
    pub fn SetLocale(self: ?*anyopaque, locale: ?*anyopaque) void {
        C.QTextStream_SetLocale(@ptrCast(self), @ptrCast(locale));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#locale)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Locale(self: ?*anyopaque) ?*C.QLocale {
        return C.QTextStream_Locale(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setDevice)
    ///
    /// ``` self: ?*C.QTextStream, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QTextStream_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#device)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QTextStream_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#string)
    ///
    /// ``` self: ?*C.QTextStream, allocator: std.mem.Allocator ```
    pub fn String(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextStream_String(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#status)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Status(self: ?*anyopaque) i64 {
        return C.QTextStream_Status(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setStatus)
    ///
    /// ``` self: ?*C.QTextStream, status: qtextstream_enums.Status ```
    pub fn SetStatus(self: ?*anyopaque, status: i64) void {
        C.QTextStream_SetStatus(@ptrCast(self), @intCast(status));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#resetStatus)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn ResetStatus(self: ?*anyopaque) void {
        C.QTextStream_ResetStatus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#atEnd)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn AtEnd(self: ?*anyopaque) bool {
        return C.QTextStream_AtEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#reset)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Reset(self: ?*anyopaque) void {
        C.QTextStream_Reset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#flush)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Flush(self: ?*anyopaque) void {
        C.QTextStream_Flush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#seek)
    ///
    /// ``` self: ?*C.QTextStream, pos: i64 ```
    pub fn Seek(self: ?*anyopaque, pos: i64) bool {
        return C.QTextStream_Seek(@ptrCast(self), @intCast(pos));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#pos)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn Pos(self: ?*anyopaque) i64 {
        return C.QTextStream_Pos(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#skipWhiteSpace)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn SkipWhiteSpace(self: ?*anyopaque) void {
        C.QTextStream_SkipWhiteSpace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#readLine)
    ///
    /// ``` self: ?*C.QTextStream, allocator: std.mem.Allocator ```
    pub fn ReadLine(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextStream_ReadLine(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#readAll)
    ///
    /// ``` self: ?*C.QTextStream, allocator: std.mem.Allocator ```
    pub fn ReadAll(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextStream_ReadAll(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#read)
    ///
    /// ``` self: ?*C.QTextStream, maxlen: i64, allocator: std.mem.Allocator ```
    pub fn Read(self: ?*anyopaque, maxlen: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextStream_Read(@ptrCast(self), @intCast(maxlen));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setFieldAlignment)
    ///
    /// ``` self: ?*C.QTextStream, alignment: qtextstream_enums.FieldAlignment ```
    pub fn SetFieldAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextStream_SetFieldAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#fieldAlignment)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn FieldAlignment(self: ?*anyopaque) i64 {
        return C.QTextStream_FieldAlignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setPadChar)
    ///
    /// ``` self: ?*C.QTextStream, ch: ?*C.QChar ```
    pub fn SetPadChar(self: ?*anyopaque, ch: ?*C.QChar) void {
        C.QTextStream_SetPadChar(@ptrCast(self), @ptrCast(ch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#padChar)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn PadChar(self: ?*anyopaque) ?*C.QChar {
        return C.QTextStream_PadChar(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setFieldWidth)
    ///
    /// ``` self: ?*C.QTextStream, width: i32 ```
    pub fn SetFieldWidth(self: ?*anyopaque, width: i32) void {
        C.QTextStream_SetFieldWidth(@ptrCast(self), @intCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#fieldWidth)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn FieldWidth(self: ?*anyopaque) i32 {
        return C.QTextStream_FieldWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setNumberFlags)
    ///
    /// ``` self: ?*C.QTextStream, flags: i32 ```
    pub fn SetNumberFlags(self: ?*anyopaque, flags: i64) void {
        C.QTextStream_SetNumberFlags(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#numberFlags)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn NumberFlags(self: ?*anyopaque) i64 {
        return C.QTextStream_NumberFlags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setIntegerBase)
    ///
    /// ``` self: ?*C.QTextStream, base: i32 ```
    pub fn SetIntegerBase(self: ?*anyopaque, base: i32) void {
        C.QTextStream_SetIntegerBase(@ptrCast(self), @intCast(base));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#integerBase)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn IntegerBase(self: ?*anyopaque) i32 {
        return C.QTextStream_IntegerBase(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setRealNumberNotation)
    ///
    /// ``` self: ?*C.QTextStream, notation: qtextstream_enums.RealNumberNotation ```
    pub fn SetRealNumberNotation(self: ?*anyopaque, notation: i64) void {
        C.QTextStream_SetRealNumberNotation(@ptrCast(self), @intCast(notation));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#realNumberNotation)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn RealNumberNotation(self: ?*anyopaque) i64 {
        return C.QTextStream_RealNumberNotation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#setRealNumberPrecision)
    ///
    /// ``` self: ?*C.QTextStream, precision: i32 ```
    pub fn SetRealNumberPrecision(self: ?*anyopaque, precision: i32) void {
        C.QTextStream_SetRealNumberPrecision(@ptrCast(self), @intCast(precision));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#realNumberPrecision)
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn RealNumberPrecision(self: ?*anyopaque) i32 {
        return C.QTextStream_RealNumberPrecision(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, ch: ?*C.QChar ```
    pub fn OperatorShiftRight(self: ?*anyopaque, ch: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRight(@ptrCast(self), @ptrCast(ch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, ch: ?*i8 ```
    pub fn OperatorShiftRightWithCh(self: ?*anyopaque, ch: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithCh(@ptrCast(self), @intCast(ch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*i16 ```
    pub fn OperatorShiftRightWithShort(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithShort(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*u16 ```
    pub fn OperatorShiftRightWithUnsignedshort(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithUnsignedshort(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*i32 ```
    pub fn OperatorShiftRightWithInt(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithInt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*u32 ```
    pub fn OperatorShiftRightWithUnsignedint(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithUnsignedint(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*i64 ```
    pub fn OperatorShiftRightWithLong(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithLong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*u64 ```
    pub fn OperatorShiftRightWithUnsignedlong(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithUnsignedlong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*i64 ```
    pub fn OperatorShiftRightWithQlonglong(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithQlonglong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, i: ?*u64 ```
    pub fn OperatorShiftRightWithQulonglong(self: ?*anyopaque, i: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithQulonglong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, f: ?*f32 ```
    pub fn OperatorShiftRightWithFloat(self: ?*anyopaque, f: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithFloat(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, f: ?*f64 ```
    pub fn OperatorShiftRightWithDouble(self: ?*anyopaque, f: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftRightWithDouble(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, s: []const u8 ```
    pub fn OperatorShiftRightWithQString(self: ?*anyopaque, s: []const u8) ?*C.QTextStream {
        const s_str = C.struct_libqt_string{
            .len = s.len,
            .data = @constCast(s.ptr),
        };
        return C.QTextStream_OperatorShiftRightWithQString(@ptrCast(self), s_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, array: []u8 ```
    pub fn OperatorShiftRightWithArray(self: ?*anyopaque, array: []u8) ?*C.QTextStream {
        const array_str = C.struct_libqt_string{
            .len = array.len,
            .data = @constCast(array.ptr),
        };
        return C.QTextStream_OperatorShiftRightWithArray(@ptrCast(self), array_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator>>)
    ///
    /// ``` self: ?*C.QTextStream, c: []const u8 ```
    pub fn OperatorShiftRightWithChar(self: ?*anyopaque, c: []const u8) ?*C.QTextStream {
        const c_Cstring = @constCast(c.ptr);
        return C.QTextStream_OperatorShiftRightWithChar(@ptrCast(self), c_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, ch: ?*C.QChar ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, ch: ?*C.QChar) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeft(@ptrCast(self), @ptrCast(ch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, ch: i8 ```
    pub fn OperatorShiftLeftWithCh(self: ?*anyopaque, ch: i8) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithCh(@ptrCast(self), @intCast(ch));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: i16 ```
    pub fn OperatorShiftLeftWithShort(self: ?*anyopaque, i: i16) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithShort(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: u16 ```
    pub fn OperatorShiftLeftWithUnsignedshort(self: ?*anyopaque, i: u16) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithUnsignedshort(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: i32 ```
    pub fn OperatorShiftLeftWithInt(self: ?*anyopaque, i: i32) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithInt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: u32 ```
    pub fn OperatorShiftLeftWithUnsignedint(self: ?*anyopaque, i: u32) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithUnsignedint(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: i64 ```
    pub fn OperatorShiftLeftWithLong(self: ?*anyopaque, i: i64) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithLong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: u64 ```
    pub fn OperatorShiftLeftWithUnsignedlong(self: ?*anyopaque, i: u64) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithUnsignedlong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: i64 ```
    pub fn OperatorShiftLeftWithQlonglong(self: ?*anyopaque, i: i64) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithQlonglong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, i: u64 ```
    pub fn OperatorShiftLeftWithQulonglong(self: ?*anyopaque, i: u64) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithQulonglong(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, f: f32 ```
    pub fn OperatorShiftLeftWithFloat(self: ?*anyopaque, f: f32) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithFloat(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, f: f64 ```
    pub fn OperatorShiftLeftWithDouble(self: ?*anyopaque, f: f64) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithDouble(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, s: []const u8 ```
    pub fn OperatorShiftLeftWithQString(self: ?*anyopaque, s: []const u8) ?*C.QTextStream {
        const s_str = C.struct_libqt_string{
            .len = s.len,
            .data = @constCast(s.ptr),
        };
        return C.QTextStream_OperatorShiftLeftWithQString(@ptrCast(self), s_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, array: []u8 ```
    pub fn OperatorShiftLeftWithArray(self: ?*anyopaque, array: []u8) ?*C.QTextStream {
        const array_str = C.struct_libqt_string{
            .len = array.len,
            .data = @constCast(array.ptr),
        };
        return C.QTextStream_OperatorShiftLeftWithArray(@ptrCast(self), array_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, c: []const u8 ```
    pub fn OperatorShiftLeftWithChar(self: ?*anyopaque, c: []const u8) ?*C.QTextStream {
        const c_Cstring = @constCast(c.ptr);
        return C.QTextStream_OperatorShiftLeftWithChar(@ptrCast(self), c_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#operator<<)
    ///
    /// ``` self: ?*C.QTextStream, ptr: ?*anyopaque ```
    pub fn OperatorShiftLeftWithPtr(self: ?*anyopaque, ptr: ?*anyopaque) ?*C.QTextStream {
        return C.QTextStream_OperatorShiftLeftWithPtr(@ptrCast(self), ptr);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextstream.html#readLine)
    ///
    /// ``` self: ?*C.QTextStream, maxlen: i64, allocator: std.mem.Allocator ```
    pub fn ReadLine1(self: ?*anyopaque, maxlen: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextStream_ReadLine1(@ptrCast(self), @intCast(maxlen));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextStream ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextStream_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextstream.html#types
pub const enums = struct {
    pub const RealNumberNotation = enum {
        pub const SmartNotation: i32 = 0;
        pub const FixedNotation: i32 = 1;
        pub const ScientificNotation: i32 = 2;
    };

    pub const FieldAlignment = enum {
        pub const AlignLeft: i32 = 0;
        pub const AlignRight: i32 = 1;
        pub const AlignCenter: i32 = 2;
        pub const AlignAccountingStyle: i32 = 3;
    };

    pub const Status = enum {
        pub const Ok: i32 = 0;
        pub const ReadPastEnd: i32 = 1;
        pub const ReadCorruptData: i32 = 2;
        pub const WriteFailed: i32 = 3;
    };

    pub const NumberFlag = enum {
        pub const ShowBase: i32 = 1;
        pub const ForcePoint: i32 = 2;
        pub const ForceSign: i32 = 4;
        pub const UppercaseBase: i32 = 8;
        pub const UppercaseDigits: i32 = 16;
    };
};
