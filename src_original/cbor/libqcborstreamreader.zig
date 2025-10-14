const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qcborcommon_enums = @import("libqcborcommon.zig").enums;
const qcborstreamreader_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcborstreamreader.html
pub const qcborstreamreader = struct {
    /// New constructs a new QCborStreamReader object.
    ///
    ///
    pub fn New() QtC.QCborStreamReader {
        return qtc.QCborStreamReader_new();
    }

    /// New2 constructs a new QCborStreamReader object.
    ///
    /// ``` data: []const u8, lenVal: i64 ```
    pub fn New2(data: []const u8, lenVal: i64) QtC.QCborStreamReader {
        const data_Cstring = data.ptr;

        return qtc.QCborStreamReader_new2(data_Cstring, @intCast(lenVal));
    }

    /// New3 constructs a new QCborStreamReader object.
    ///
    /// ``` data: *const u8, lenVal: i64 ```
    pub fn New3(data: *const u8, lenVal: i64) QtC.QCborStreamReader {
        return qtc.QCborStreamReader_new3(@ptrCast(data), @intCast(lenVal));
    }

    /// New4 constructs a new QCborStreamReader object.
    ///
    /// ``` data: []u8 ```
    pub fn New4(data: []u8) QtC.QCborStreamReader {
        const data_str = qtc.libqt_string{
            .len = data.len,
            .data = data.ptr,
        };

        return qtc.QCborStreamReader_new4(data_str);
    }

    /// New5 constructs a new QCborStreamReader object.
    ///
    /// ``` device: QtC.QIODevice ```
    pub fn New5(device: ?*anyopaque) QtC.QCborStreamReader {
        return qtc.QCborStreamReader_new5(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#setDevice)
    ///
    /// ``` self: QtC.QCborStreamReader, device: QtC.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        qtc.QCborStreamReader_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#device)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Device(self: ?*anyopaque) QtC.QIODevice {
        return qtc.QCborStreamReader_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: QtC.QCborStreamReader, data: []u8 ```
    pub fn AddData(self: ?*anyopaque, data: []u8) void {
        const data_str = qtc.libqt_string{
            .len = data.len,
            .data = data.ptr,
        };
        qtc.QCborStreamReader_AddData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: QtC.QCborStreamReader, data: []const u8, lenVal: i64 ```
    pub fn AddData2(self: ?*anyopaque, data: []const u8, lenVal: i64) void {
        const data_Cstring = data.ptr;
        qtc.QCborStreamReader_AddData2(@ptrCast(self), data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: QtC.QCborStreamReader, data: *const u8, lenVal: i64 ```
    pub fn AddData3(self: ?*anyopaque, data: *const u8, lenVal: i64) void {
        qtc.QCborStreamReader_AddData3(@ptrCast(self), @ptrCast(data), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#reparse)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Reparse(self: ?*anyopaque) void {
        qtc.QCborStreamReader_Reparse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#clear)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Clear(self: ?*anyopaque) void {
        qtc.QCborStreamReader_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#reset)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Reset(self: ?*anyopaque) void {
        qtc.QCborStreamReader_Reset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#lastError)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn LastError(self: ?*anyopaque) QtC.QCborError {
        return qtc.QCborStreamReader_LastError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#currentOffset)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn CurrentOffset(self: ?*anyopaque) i64 {
        return qtc.QCborStreamReader_CurrentOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isValid)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#containerDepth)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ContainerDepth(self: ?*anyopaque) i32 {
        return qtc.QCborStreamReader_ContainerDepth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#parentContainerType)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    ///
    /// Returns: ``` qcborstreamreader_enums.Type ```
    pub fn ParentContainerType(self: ?*anyopaque) u8 {
        return qtc.QCborStreamReader_ParentContainerType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#hasNext)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn HasNext(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_HasNext(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#next)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Next(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_Next(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#type)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    ///
    /// Returns: ``` qcborstreamreader_enums.Type ```
    pub fn Type(self: ?*anyopaque) u8 {
        return qtc.QCborStreamReader_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isUnsignedInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsUnsignedInteger(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsUnsignedInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isNegativeInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsNegativeInteger(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsNegativeInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsInteger(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isByteArray)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsByteArray(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsByteArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isString)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsString(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isArray)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isMap)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsMap(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isTag)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsTag(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isSimpleType)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsSimpleType(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFloat16)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsFloat16(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsFloat16(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFloat)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsFloat(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isDouble)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isInvalid)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsInvalid(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsInvalid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isSimpleType)
    ///
    /// ``` self: QtC.QCborStreamReader, st: qcborcommon_enums.QCborSimpleType ```
    pub fn IsSimpleType2(self: ?*anyopaque, st: u8) bool {
        return qtc.QCborStreamReader_IsSimpleType2(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFalse)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsFalse(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsFalse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isTrue)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsTrue(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsTrue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isBool)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isNull)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isUndefined)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isLengthKnown)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsLengthKnown(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsLengthKnown(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#length)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn Length(self: ?*anyopaque) u64 {
        return qtc.QCborStreamReader_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isContainer)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn IsContainer(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_IsContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#enterContainer)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn EnterContainer(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_EnterContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#leaveContainer)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn LeaveContainer(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_LeaveContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAndAppendToString)
    ///
    /// ``` self: QtC.QCborStreamReader, dst: []const u8 ```
    pub fn ReadAndAppendToString(self: ?*anyopaque, dst: []const u8) bool {
        const dst_str = qtc.libqt_string{
            .len = dst.len,
            .data = dst.ptr,
        };
        return qtc.QCborStreamReader_ReadAndAppendToString(@ptrCast(self), dst_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAndAppendToUtf8String)
    ///
    /// ``` self: QtC.QCborStreamReader, dst: []u8 ```
    pub fn ReadAndAppendToUtf8String(self: ?*anyopaque, dst: []u8) bool {
        const dst_str = qtc.libqt_string{
            .len = dst.len,
            .data = dst.ptr,
        };
        return qtc.QCborStreamReader_ReadAndAppendToUtf8String(@ptrCast(self), dst_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAndAppendToByteArray)
    ///
    /// ``` self: QtC.QCborStreamReader, dst: []u8 ```
    pub fn ReadAndAppendToByteArray(self: ?*anyopaque, dst: []u8) bool {
        const dst_str = qtc.libqt_string{
            .len = dst.len,
            .data = dst.ptr,
        };
        return qtc.QCborStreamReader_ReadAndAppendToByteArray(@ptrCast(self), dst_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#currentStringChunkSize)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn CurrentStringChunkSize(self: ?*anyopaque) i64 {
        return qtc.QCborStreamReader_CurrentStringChunkSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toBool)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return qtc.QCborStreamReader_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toTag)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    ///
    /// Returns: ``` qcborcommon_enums.QCborTag ```
    pub fn ToTag(self: ?*anyopaque) u64 {
        return qtc.QCborStreamReader_ToTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toUnsignedInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ToUnsignedInteger(self: ?*anyopaque) u64 {
        return qtc.QCborStreamReader_ToUnsignedInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toNegativeInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    ///
    /// Returns: ``` qcborcommon_enums.QCborNegativeInteger ```
    pub fn ToNegativeInteger(self: ?*anyopaque) u64 {
        return qtc.QCborStreamReader_ToNegativeInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toSimpleType)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    ///
    /// Returns: ``` qcborcommon_enums.QCborSimpleType ```
    pub fn ToSimpleType(self: ?*anyopaque) u8 {
        return qtc.QCborStreamReader_ToSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toFloat)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ToFloat(self: ?*anyopaque) f32 {
        return qtc.QCborStreamReader_ToFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toDouble)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return qtc.QCborStreamReader_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toInteger)
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return qtc.QCborStreamReader_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAllString)
    ///
    /// ``` self: QtC.QCborStreamReader, allocator: std.mem.Allocator ```
    pub fn ReadAllString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QCborStreamReader_ReadAllString(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qcborstreamreader.ReadAllString: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAllUtf8String)
    ///
    /// ``` self: QtC.QCborStreamReader, allocator: std.mem.Allocator ```
    pub fn ReadAllUtf8String(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: qtc.libqt_string = qtc.QCborStreamReader_ReadAllUtf8String(@ptrCast(self));
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qcborstreamreader.ReadAllUtf8String: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#readAllByteArray)
    ///
    /// ``` self: QtC.QCborStreamReader, allocator: std.mem.Allocator ```
    pub fn ReadAllByteArray(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: qtc.libqt_string = qtc.QCborStreamReader_ReadAllByteArray(@ptrCast(self));
        defer qtc.libqt_string_free(&_bytearray);
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("qcborstreamreader.ReadAllByteArray: Memory allocation failed");
        @memcpy(_ret, _bytearray.data[0.._bytearray.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#next)
    ///
    /// ``` self: QtC.QCborStreamReader, maxRecursion: i32 ```
    pub fn Next1(self: ?*anyopaque, maxRecursion: i32) bool {
        return qtc.QCborStreamReader_Next1(@ptrCast(self), @intCast(maxRecursion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#dtor.QCborStreamReader)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QCborStreamReader ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QCborStreamReader_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborstreamreader.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const UnsignedInteger: u8 = 0;
        pub const NegativeInteger: u8 = 32;
        pub const ByteString: u8 = 64;
        pub const ByteArray: u8 = 64;
        pub const TextString: u8 = 96;
        pub const String: u8 = 96;
        pub const Array: u8 = 128;
        pub const Map: u8 = 160;
        pub const Tag: u8 = 192;
        pub const SimpleType: u8 = 224;
        pub const HalfFloat: u8 = 249;
        pub const Float16: u8 = 249;
        pub const Float: u8 = 250;
        pub const Double: u8 = 251;
        pub const Invalid: u8 = 255;
    };

    pub const StringResultCode = enum {
        pub const EndOfString: i32 = 0;
        pub const Ok: i32 = 1;
        pub const Error: i32 = -1;
    };
};
