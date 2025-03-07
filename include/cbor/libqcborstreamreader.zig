const C = @import("qt6c");
const qcborstreamreader_enums = enums;

/// https://doc.qt.io/qt-6/qcborstreamreader.html
pub const qcborstreamreader = struct {
    /// New constructs a new QCborStreamReader object.
    ///
    ///
    pub fn New() ?*C.QCborStreamReader {
        return C.QCborStreamReader_new();
    }

    /// New2 constructs a new QCborStreamReader object.
    ///
    /// ``` data: []const u8, lenVal: i64 ```
    pub fn New2(data: []const u8, lenVal: i64) ?*C.QCborStreamReader {
        const data_Cstring = @constCast(data.ptr);

        return C.QCborStreamReader_new2(data_Cstring, @intCast(lenVal));
    }

    /// New3 constructs a new QCborStreamReader object.
    ///
    /// ``` data: ?*u8, lenVal: i64 ```
    pub fn New3(data: ?*anyopaque, lenVal: i64) ?*C.QCborStreamReader {
        return C.QCborStreamReader_new3(@intCast(data), @intCast(lenVal));
    }

    /// New4 constructs a new QCborStreamReader object.
    ///
    /// ``` data: []u8 ```
    pub fn New4(data: []u8) ?*C.QCborStreamReader {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QCborStreamReader_new4(data_str);
    }

    /// New5 constructs a new QCborStreamReader object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New5(device: ?*anyopaque) ?*C.QCborStreamReader {
        return C.QCborStreamReader_new5(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#setDevice)
    ///
    /// ``` self: ?*C.QCborStreamReader, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QCborStreamReader_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#device)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QCborStreamReader_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QCborStreamReader, data: []u8 ```
    pub fn AddData(self: ?*anyopaque, data: []u8) void {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QCborStreamReader_AddData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QCborStreamReader, data: []const u8, lenVal: i64 ```
    pub fn AddData2(self: ?*anyopaque, data: []const u8, lenVal: i64) void {
        const data_Cstring = @constCast(data.ptr);
        C.QCborStreamReader_AddData2(@ptrCast(self), data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QCborStreamReader, data: ?*u8, lenVal: i64 ```
    pub fn AddData3(self: ?*anyopaque, data: ?*anyopaque, lenVal: i64) void {
        C.QCborStreamReader_AddData3(@ptrCast(self), @intCast(data), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#reparse)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Reparse(self: ?*anyopaque) void {
        C.QCborStreamReader_Reparse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#clear)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QCborStreamReader_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#reset)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Reset(self: ?*anyopaque) void {
        C.QCborStreamReader_Reset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#lastError)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn LastError(self: ?*anyopaque) ?*C.QCborError {
        return C.QCborStreamReader_LastError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#currentOffset)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn CurrentOffset(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_CurrentOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isValid)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#containerDepth)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ContainerDepth(self: ?*anyopaque) i32 {
        return C.QCborStreamReader_ContainerDepth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#parentContainerType)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ParentContainerType(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_ParentContainerType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#hasNext)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn HasNext(self: ?*anyopaque) bool {
        return C.QCborStreamReader_HasNext(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#next)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Next(self: ?*anyopaque) bool {
        return C.QCborStreamReader_Next(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#type)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isUnsignedInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsUnsignedInteger(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsUnsignedInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isNegativeInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsNegativeInteger(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsNegativeInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsInteger(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isByteArray)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsByteArray(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsByteArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isString)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isArray)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isMap)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsMap(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isTag)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsTag(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsSimpleType(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFloat16)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsFloat16(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsFloat16(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFloat)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsFloat(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isDouble)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isInvalid)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsInvalid(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsInvalid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborStreamReader, st: qcborstreamreader_enums.QCborSimpleType ```
    pub fn IsSimpleTypeWithSt(self: ?*anyopaque, st: i64) bool {
        return C.QCborStreamReader_IsSimpleTypeWithSt(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isFalse)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsFalse(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsFalse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isTrue)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsTrue(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsTrue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isBool)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isNull)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isUndefined)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isLengthKnown)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsLengthKnown(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsLengthKnown(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#length)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn Length(self: ?*anyopaque) u64 {
        return C.QCborStreamReader_Length(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#isContainer)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn IsContainer(self: ?*anyopaque) bool {
        return C.QCborStreamReader_IsContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#enterContainer)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn EnterContainer(self: ?*anyopaque) bool {
        return C.QCborStreamReader_EnterContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#leaveContainer)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn LeaveContainer(self: ?*anyopaque) bool {
        return C.QCborStreamReader_LeaveContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#currentStringChunkSize)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn CurrentStringChunkSize(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_CurrentStringChunkSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toBool)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QCborStreamReader_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toTag)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToTag(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_ToTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toUnsignedInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToUnsignedInteger(self: ?*anyopaque) u64 {
        return C.QCborStreamReader_ToUnsignedInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toNegativeInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToNegativeInteger(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_ToNegativeInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToSimpleType(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_ToSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toFloat)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToFloat(self: ?*anyopaque) f32 {
        return C.QCborStreamReader_ToFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toDouble)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QCborStreamReader_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#toInteger)
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QCborStreamReader_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamreader.html#next)
    ///
    /// ``` self: ?*C.QCborStreamReader, maxRecursion: i32 ```
    pub fn Next1(self: ?*anyopaque, maxRecursion: i32) bool {
        return C.QCborStreamReader_Next1(@ptrCast(self), @intCast(maxRecursion));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborStreamReader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborStreamReader_Delete(@ptrCast(self));
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
