const C = @import("qt6c");
const qdatastream_enums = enums;

/// https://doc.qt.io/qt-6/qdatastream.html
pub const qdatastream = struct {
    /// New constructs a new QDataStream object.
    ///
    ///
    pub fn New() ?*C.QDataStream {
        return C.QDataStream_new();
    }

    /// New2 constructs a new QDataStream object.
    ///
    /// ``` param1: ?*C.QIODevice ```
    pub fn New2(param1: ?*anyopaque) ?*C.QDataStream {
        return C.QDataStream_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QDataStream object.
    ///
    /// ``` param1: []u8 ```
    pub fn New3(param1: []u8) ?*C.QDataStream {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };

        return C.QDataStream_new3(param1_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#device)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QDataStream_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#setDevice)
    ///
    /// ``` self: ?*C.QDataStream, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QDataStream_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#atEnd)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn AtEnd(self: ?*anyopaque) bool {
        return C.QDataStream_AtEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#status)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn Status(self: ?*anyopaque) i64 {
        return C.QDataStream_Status(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#setStatus)
    ///
    /// ``` self: ?*C.QDataStream, status: qdatastream_enums.Status ```
    pub fn SetStatus(self: ?*anyopaque, status: i64) void {
        C.QDataStream_SetStatus(@ptrCast(self), @intCast(status));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#resetStatus)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn ResetStatus(self: ?*anyopaque) void {
        C.QDataStream_ResetStatus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#floatingPointPrecision)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn FloatingPointPrecision(self: ?*anyopaque) i64 {
        return C.QDataStream_FloatingPointPrecision(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#setFloatingPointPrecision)
    ///
    /// ``` self: ?*C.QDataStream, precision: qdatastream_enums.FloatingPointPrecision ```
    pub fn SetFloatingPointPrecision(self: ?*anyopaque, precision: i64) void {
        C.QDataStream_SetFloatingPointPrecision(@ptrCast(self), @intCast(precision));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#byteOrder)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn ByteOrder(self: ?*anyopaque) i64 {
        return C.QDataStream_ByteOrder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#setByteOrder)
    ///
    /// ``` self: ?*C.QDataStream, byteOrder: qdatastream_enums.ByteOrder ```
    pub fn SetByteOrder(self: ?*anyopaque, byteOrder: i64) void {
        C.QDataStream_SetByteOrder(@ptrCast(self), @intCast(byteOrder));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#version)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn Version(self: ?*anyopaque) i32 {
        return C.QDataStream_Version(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#setVersion)
    ///
    /// ``` self: ?*C.QDataStream, version: i32 ```
    pub fn SetVersion(self: ?*anyopaque, version: i32) void {
        C.QDataStream_SetVersion(@ptrCast(self), @intCast(version));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*i8 ```
    pub fn OperatorShiftRight(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRight(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*i8 ```
    pub fn OperatorShiftRightWithQint8(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQint8(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*u8 ```
    pub fn OperatorShiftRightWithQuint8(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQuint8(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*i16 ```
    pub fn OperatorShiftRightWithQint16(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQint16(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*u16 ```
    pub fn OperatorShiftRightWithQuint16(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQuint16(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*i32 ```
    pub fn OperatorShiftRightWithQint32(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQint32(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*u32 ```
    pub fn OperatorShiftRightWithQuint32(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQuint32(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*i64 ```
    pub fn OperatorShiftRightWithQint64(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQint64(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*u64 ```
    pub fn OperatorShiftRightWithQuint64(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithQuint64(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, i: ?*bool ```
    pub fn OperatorShiftRightWithBool(self: ?*anyopaque, i: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithBool(@ptrCast(self), @ptrCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, f: ?*f32 ```
    pub fn OperatorShiftRightWithFloat(self: ?*anyopaque, f: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithFloat(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, f: ?*f64 ```
    pub fn OperatorShiftRightWithDouble(self: ?*anyopaque, f: ?*anyopaque) void {
        C.QDataStream_OperatorShiftRightWithDouble(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator>>)
    ///
    /// ``` self: ?*C.QDataStream, str: []const u8 ```
    pub fn OperatorShiftRightWithStr(self: ?*anyopaque, str: []const u8) void {
        const str_Cstring = @constCast(str.ptr);
        C.QDataStream_OperatorShiftRightWithStr(@ptrCast(self), str_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: i8 ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, i: i8) void {
        C.QDataStream_OperatorShiftLeft(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: i8 ```
    pub fn OperatorShiftLeftWithQint8(self: ?*anyopaque, i: i8) void {
        C.QDataStream_OperatorShiftLeftWithQint8(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: u8 ```
    pub fn OperatorShiftLeftWithQuint8(self: ?*anyopaque, i: u8) void {
        C.QDataStream_OperatorShiftLeftWithQuint8(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: i16 ```
    pub fn OperatorShiftLeftWithQint16(self: ?*anyopaque, i: i16) void {
        C.QDataStream_OperatorShiftLeftWithQint16(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: u16 ```
    pub fn OperatorShiftLeftWithQuint16(self: ?*anyopaque, i: u16) void {
        C.QDataStream_OperatorShiftLeftWithQuint16(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: i32 ```
    pub fn OperatorShiftLeftWithQint32(self: ?*anyopaque, i: i32) void {
        C.QDataStream_OperatorShiftLeftWithQint32(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: u32 ```
    pub fn OperatorShiftLeftWithQuint32(self: ?*anyopaque, i: u32) void {
        C.QDataStream_OperatorShiftLeftWithQuint32(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: i64 ```
    pub fn OperatorShiftLeftWithQint64(self: ?*anyopaque, i: i64) void {
        C.QDataStream_OperatorShiftLeftWithQint64(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: u64 ```
    pub fn OperatorShiftLeftWithQuint64(self: ?*anyopaque, i: u64) void {
        C.QDataStream_OperatorShiftLeftWithQuint64(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, i: bool ```
    pub fn OperatorShiftLeftWithBool(self: ?*anyopaque, i: bool) void {
        C.QDataStream_OperatorShiftLeftWithBool(@ptrCast(self), i);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, f: f32 ```
    pub fn OperatorShiftLeftWithFloat(self: ?*anyopaque, f: f32) void {
        C.QDataStream_OperatorShiftLeftWithFloat(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, f: f64 ```
    pub fn OperatorShiftLeftWithDouble(self: ?*anyopaque, f: f64) void {
        C.QDataStream_OperatorShiftLeftWithDouble(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#operator<<)
    ///
    /// ``` self: ?*C.QDataStream, str: []const u8 ```
    pub fn OperatorShiftLeftWithStr(self: ?*anyopaque, str: []const u8) void {
        const str_Cstring = @constCast(str.ptr);
        C.QDataStream_OperatorShiftLeftWithStr(@ptrCast(self), str_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#readBytes)
    ///
    /// ``` self: ?*C.QDataStream, param1: []const u8, lenVal: ?*u32 ```
    pub fn ReadBytes(self: ?*anyopaque, param1: []const u8, lenVal: ?*anyopaque) ?*C.QDataStream {
        const param1_Cstring = @constCast(param1.ptr);
        return C.QDataStream_ReadBytes(@ptrCast(self), param1_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#readRawData)
    ///
    /// ``` self: ?*C.QDataStream, param1: []const u8, lenVal: i32 ```
    pub fn ReadRawData(self: ?*anyopaque, param1: []const u8, lenVal: i32) i32 {
        const param1_Cstring = @constCast(param1.ptr);
        return C.QDataStream_ReadRawData(@ptrCast(self), param1_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#writeBytes)
    ///
    /// ``` self: ?*C.QDataStream, param1: []const u8, lenVal: u32 ```
    pub fn WriteBytes(self: ?*anyopaque, param1: []const u8, lenVal: u32) void {
        const param1_Cstring = @constCast(param1.ptr);
        C.QDataStream_WriteBytes(@ptrCast(self), param1_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#writeRawData)
    ///
    /// ``` self: ?*C.QDataStream, param1: []const u8, lenVal: i32 ```
    pub fn WriteRawData(self: ?*anyopaque, param1: []const u8, lenVal: i32) i32 {
        const param1_Cstring = @constCast(param1.ptr);
        return C.QDataStream_WriteRawData(@ptrCast(self), param1_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#skipRawData)
    ///
    /// ``` self: ?*C.QDataStream, lenVal: i32 ```
    pub fn SkipRawData(self: ?*anyopaque, lenVal: i32) i32 {
        return C.QDataStream_SkipRawData(@ptrCast(self), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#startTransaction)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn StartTransaction(self: ?*anyopaque) void {
        C.QDataStream_StartTransaction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#commitTransaction)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn CommitTransaction(self: ?*anyopaque) bool {
        return C.QDataStream_CommitTransaction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#rollbackTransaction)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn RollbackTransaction(self: ?*anyopaque) void {
        C.QDataStream_RollbackTransaction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#abortTransaction)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn AbortTransaction(self: ?*anyopaque) void {
        C.QDataStream_AbortTransaction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdatastream.html#isDeviceTransactionStarted)
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn IsDeviceTransactionStarted(self: ?*anyopaque) bool {
        return C.QDataStream_IsDeviceTransactionStarted(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDataStream ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDataStream_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdatastream.html#types
pub const enums = struct {
    pub const Version = enum {
        pub const Qt_1_0: i32 = 1;
        pub const Qt_2_0: i32 = 2;
        pub const Qt_2_1: i32 = 3;
        pub const Qt_3_0: i32 = 4;
        pub const Qt_3_1: i32 = 5;
        pub const Qt_3_3: i32 = 6;
        pub const Qt_4_0: i32 = 7;
        pub const Qt_4_1: i32 = 7;
        pub const Qt_4_2: i32 = 8;
        pub const Qt_4_3: i32 = 9;
        pub const Qt_4_4: i32 = 10;
        pub const Qt_4_5: i32 = 11;
        pub const Qt_4_6: i32 = 12;
        pub const Qt_4_7: i32 = 12;
        pub const Qt_4_8: i32 = 12;
        pub const Qt_4_9: i32 = 12;
        pub const Qt_5_0: i32 = 13;
        pub const Qt_5_1: i32 = 14;
        pub const Qt_5_2: i32 = 15;
        pub const Qt_5_3: i32 = 15;
        pub const Qt_5_4: i32 = 16;
        pub const Qt_5_5: i32 = 16;
        pub const Qt_5_6: i32 = 17;
        pub const Qt_5_7: i32 = 17;
        pub const Qt_5_8: i32 = 17;
        pub const Qt_5_9: i32 = 17;
        pub const Qt_5_10: i32 = 17;
        pub const Qt_5_11: i32 = 17;
        pub const Qt_5_12: i32 = 18;
        pub const Qt_5_13: i32 = 19;
        pub const Qt_5_14: i32 = 19;
        pub const Qt_5_15: i32 = 19;
        pub const Qt_6_0: i32 = 20;
        pub const Qt_6_1: i32 = 20;
        pub const Qt_6_2: i32 = 20;
        pub const Qt_6_3: i32 = 20;
        pub const Qt_6_4: i32 = 20;
        pub const Qt_DefaultCompiledVersion: i32 = 20;
    };

    pub const ByteOrder = enum {
        pub const BigEndian: i32 = 0;
        pub const LittleEndian: i32 = 1;
    };

    pub const Status = enum {
        pub const Ok: i32 = 0;
        pub const ReadPastEnd: i32 = 1;
        pub const ReadCorruptData: i32 = 2;
        pub const WriteFailed: i32 = 3;
    };

    pub const FloatingPointPrecision = enum {
        pub const SinglePrecision: i32 = 0;
        pub const DoublePrecision: i32 = 1;
    };
};
