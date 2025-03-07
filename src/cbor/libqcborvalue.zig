const C = @import("qt6c");
const qcborvalue_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcborparsererror.html
pub const qcborparsererror = struct {
    /// New constructs a new QCborParserError object.
    ///
    /// ``` other: ?*C.QCborParserError ```
    pub fn New(other: ?*anyopaque) ?*C.QCborParserError {
        return C.QCborParserError_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborParserError object and invalidates the source QCborParserError object.
    ///
    /// ``` other: ?*C.QCborParserError ```
    pub fn New2(other: ?*anyopaque) ?*C.QCborParserError {
        return C.QCborParserError_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QCborParserError, other: ?*QCborParserError ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborParserError_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QCborParserError, other: ?*QCborParserError ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborParserError_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborparsererror.html#errorString)
    ///
    /// ``` self: ?*C.QCborParserError, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborParserError_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborParserError ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborParserError_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborvalue.html
pub const qcborvalue = struct {
    /// New constructs a new QCborValue object.
    ///
    ///
    pub fn New() ?*C.QCborValue {
        return C.QCborValue_new();
    }

    /// New2 constructs a new QCborValue object.
    ///
    /// ``` t_: qcborvalue_enums.Type ```
    pub fn New2(t_: i64) ?*C.QCborValue {
        return C.QCborValue_new2(@intCast(t_));
    }

    /// New3 constructs a new QCborValue object.
    ///
    /// ``` b_: bool ```
    pub fn New3(b_: bool) ?*C.QCborValue {
        return C.QCborValue_new3(b_);
    }

    /// New4 constructs a new QCborValue object.
    ///
    /// ``` i: i32 ```
    pub fn New4(i: i32) ?*C.QCborValue {
        return C.QCborValue_new4(@intCast(i));
    }

    /// New5 constructs a new QCborValue object.
    ///
    /// ``` u: u32 ```
    pub fn New5(u: u32) ?*C.QCborValue {
        return C.QCborValue_new5(@intCast(u));
    }

    /// New6 constructs a new QCborValue object.
    ///
    /// ``` i: i64 ```
    pub fn New6(i: i64) ?*C.QCborValue {
        return C.QCborValue_new6(@intCast(i));
    }

    /// New7 constructs a new QCborValue object.
    ///
    /// ``` v: f64 ```
    pub fn New7(v: f64) ?*C.QCborValue {
        return C.QCborValue_new7(@floatCast(v));
    }

    /// New8 constructs a new QCborValue object.
    ///
    /// ``` st: qcborvalue_enums.QCborSimpleType ```
    pub fn New8(st: i64) ?*C.QCborValue {
        return C.QCborValue_new8(@intCast(st));
    }

    /// New9 constructs a new QCborValue object.
    ///
    /// ``` ba: []u8 ```
    pub fn New9(ba: []u8) ?*C.QCborValue {
        const ba_str = C.struct_libqt_string{
            .len = ba.len,
            .data = @constCast(ba.ptr),
        };

        return C.QCborValue_new9(ba_str);
    }

    /// New10 constructs a new QCborValue object.
    ///
    /// ``` s: []const u8 ```
    pub fn New10(s: []const u8) ?*C.QCborValue {
        const s_str = C.struct_libqt_string{
            .len = s.len,
            .data = @constCast(s.ptr),
        };

        return C.QCborValue_new10(s_str);
    }

    /// New11 constructs a new QCborValue object.
    ///
    /// ``` s: []const u8 ```
    pub fn New11(s: []const u8) ?*C.QCborValue {
        const s_Cstring = @constCast(s.ptr);

        return C.QCborValue_new11(s_Cstring);
    }

    /// New12 constructs a new QCborValue object.
    ///
    /// ``` a: ?*C.QCborArray ```
    pub fn New12(a: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new12(@ptrCast(a));
    }

    /// New13 constructs a new QCborValue object.
    ///
    /// ``` m: ?*C.QCborMap ```
    pub fn New13(m: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new13(@ptrCast(m));
    }

    /// New14 constructs a new QCborValue object.
    ///
    /// ``` tag: qcborvalue_enums.QCborTag ```
    pub fn New14(tag: i64) ?*C.QCborValue {
        return C.QCborValue_new14(@intCast(tag));
    }

    /// New15 constructs a new QCborValue object.
    ///
    /// ``` t_: qcborvalue_enums.QCborKnownTags ```
    pub fn New15(t_: i64) ?*C.QCborValue {
        return C.QCborValue_new15(@intCast(t_));
    }

    /// New16 constructs a new QCborValue object.
    ///
    /// ``` dt: ?*C.QDateTime ```
    pub fn New16(dt: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new16(@ptrCast(dt));
    }

    /// New17 constructs a new QCborValue object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New17(url: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new17(@ptrCast(url));
    }

    /// New18 constructs a new QCborValue object.
    ///
    /// ``` rx: ?*C.QRegularExpression ```
    pub fn New18(rx: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new18(@ptrCast(rx));
    }

    /// New19 constructs a new QCborValue object.
    ///
    /// ``` uuid: ?*C.QUuid ```
    pub fn New19(uuid: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new19(@ptrCast(uuid));
    }

    /// New20 constructs a new QCborValue object.
    ///
    /// ``` other: ?*C.QCborValue ```
    pub fn New20(other: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new20(@ptrCast(other));
    }

    /// New21 constructs a new QCborValue object.
    ///
    /// ``` tag: qcborvalue_enums.QCborTag, taggedValue: ?*C.QCborValue ```
    pub fn New21(tag: i64, taggedValue: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new21(@intCast(tag), @ptrCast(taggedValue));
    }

    /// New22 constructs a new QCborValue object.
    ///
    /// ``` t_: qcborvalue_enums.QCborKnownTags, tv: ?*C.QCborValue ```
    pub fn New22(t_: i64, tv: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_new22(@intCast(t_), @ptrCast(tv));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator=)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborValue_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#swap)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborValue_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#type)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QCborValue_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isInteger)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsInteger(self: ?*anyopaque) bool {
        return C.QCborValue_IsInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isByteArray)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsByteArray(self: ?*anyopaque) bool {
        return C.QCborValue_IsByteArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isString)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QCborValue_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isArray)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QCborValue_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isMap)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsMap(self: ?*anyopaque) bool {
        return C.QCborValue_IsMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isTag)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsTag(self: ?*anyopaque) bool {
        return C.QCborValue_IsTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isFalse)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsFalse(self: ?*anyopaque) bool {
        return C.QCborValue_IsFalse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isTrue)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsTrue(self: ?*anyopaque) bool {
        return C.QCborValue_IsTrue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isBool)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QCborValue_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isNull)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCborValue_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isUndefined)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QCborValue_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isDouble)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QCborValue_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isDateTime)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsDateTime(self: ?*anyopaque) bool {
        return C.QCborValue_IsDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isUrl)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsUrl(self: ?*anyopaque) bool {
        return C.QCborValue_IsUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isRegularExpression)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsRegularExpression(self: ?*anyopaque) bool {
        return C.QCborValue_IsRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isUuid)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsUuid(self: ?*anyopaque) bool {
        return C.QCborValue_IsUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isInvalid)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsInvalid(self: ?*anyopaque) bool {
        return C.QCborValue_IsInvalid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isContainer)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsContainer(self: ?*anyopaque) bool {
        return C.QCborValue_IsContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn IsSimpleType(self: ?*anyopaque) bool {
        return C.QCborValue_IsSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValue, st: qcborvalue_enums.QCborSimpleType ```
    pub fn IsSimpleTypeWithSt(self: ?*anyopaque, st: i64) bool {
        return C.QCborValue_IsSimpleTypeWithSt(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToSimpleType(self: ?*anyopaque) i64 {
        return C.QCborValue_ToSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QCborValue_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toBool)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QCborValue_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QCborValue_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#tag)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn Tag(self: ?*anyopaque) i64 {
        return C.QCborValue_Tag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn TaggedValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_TaggedValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValue, allocator: std.mem.Allocator ```
    pub fn ToByteArray(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValue_ToByteArray(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toString)
    ///
    /// ``` self: ?*C.QCborValue, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValue_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToDateTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValue_ToDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QCborValue_ToUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToRegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValue_ToRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToUuid(self: ?*anyopaque) ?*C.QUuid {
        return C.QCborValue_ToUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toArray)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValue_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toArray)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QCborArray ```
    pub fn ToArrayWithDefaultValue(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValue_ToArrayWithDefaultValue(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toMap)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToMap(self: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValue_ToMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toMap)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QCborMap ```
    pub fn ToMapWithDefaultValue(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValue_ToMapWithDefaultValue(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator[])
    ///
    /// ``` self: ?*C.QCborValue, key: []const u8 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborValue_OperatorSubscript(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator[])
    ///
    /// ``` self: ?*C.QCborValue, key: i64 ```
    pub fn OperatorSubscript2(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborValue_OperatorSubscript2(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator[])
    ///
    /// ``` self: ?*C.QCborValue, key: i64 ```
    pub fn OperatorSubscript3(self: ?*anyopaque, key: i64) ?*C.QCborValueRef {
        return C.QCborValue_OperatorSubscript3(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator[])
    ///
    /// ``` self: ?*C.QCborValue, key: []const u8 ```
    pub fn OperatorSubscript5(self: ?*anyopaque, key: []const u8) ?*C.QCborValueRef {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborValue_OperatorSubscript5(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#compare)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return C.QCborValue_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator==)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValue_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator!=)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValue_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#operator<)
    ///
    /// ``` self: ?*C.QCborValue, other: ?*C.QCborValue ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValue_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromVariant)
    ///
    /// ``` variant: ?*C.QVariant ```
    pub fn FromVariant(variant: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_FromVariant(@ptrCast(variant));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toVariant)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QCborValue_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromJsonValue)
    ///
    /// ``` v: ?*C.QJsonValue ```
    pub fn FromJsonValue(v: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_FromJsonValue(@ptrCast(v));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toJsonValue)
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn ToJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QCborValue_ToJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` reader: ?*C.QCborStreamReader ```
    pub fn FromCbor(reader: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_FromCbor(@ptrCast(reader));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` ba: []u8 ```
    pub fn FromCborWithBa(ba: []u8) ?*C.QCborValue {
        const ba_str = C.struct_libqt_string{
            .len = ba.len,
            .data = @constCast(ba.ptr),
        };
        return C.QCborValue_FromCborWithBa(ba_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` data: []const u8, lenVal: i64 ```
    pub fn FromCbor2(data: []const u8, lenVal: i64) ?*C.QCborValue {
        const data_Cstring = @constCast(data.ptr);
        return C.QCborValue_FromCbor2(data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` data: ?*u8, lenVal: i64 ```
    pub fn FromCbor3(data: ?*anyopaque, lenVal: i64) ?*C.QCborValue {
        return C.QCborValue_FromCbor3(@intCast(data), @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValue, allocator: std.mem.Allocator ```
    pub fn ToCbor(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValue_ToCbor(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValue, writer: ?*C.QCborStreamWriter ```
    pub fn ToCborWithWriter(self: ?*anyopaque, writer: ?*anyopaque) void {
        C.QCborValue_ToCborWithWriter(@ptrCast(self), @ptrCast(writer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValue, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValue_ToDiagnosticNotation(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: qcborvalue_enums.QCborSimpleType ```
    pub fn ToSimpleType1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValue_ToSimpleType1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValue_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toBool)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QCborValue_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QCborValue_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#tag)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: qcborvalue_enums.QCborTag ```
    pub fn Tag1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValue_Tag1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QCborValue ```
    pub fn TaggedValue1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_TaggedValue1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: []u8, allocator: std.mem.Allocator ```
    pub fn ToByteArray1(self: ?*anyopaque, defaultValue: []u8, allocator: std.mem.Allocator) []u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QCborValue_ToByteArray1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toString)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QCborValue_ToString1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QDateTime ```
    pub fn ToDateTime1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValue_ToDateTime1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QUrl ```
    pub fn ToUrl1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUrl {
        return C.QCborValue_ToUrl1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QRegularExpression ```
    pub fn ToRegularExpression1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValue_ToRegularExpression1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValue, defaultValue: ?*C.QUuid ```
    pub fn ToUuid1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUuid {
        return C.QCborValue_ToUuid1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` ba: []u8, errorVal: ?*C.QCborParserError ```
    pub fn FromCbor22(ba: []u8, errorVal: ?*anyopaque) ?*C.QCborValue {
        const ba_str = C.struct_libqt_string{
            .len = ba.len,
            .data = @constCast(ba.ptr),
        };
        return C.QCborValue_FromCbor22(ba_str, @ptrCast(errorVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` data: []const u8, lenVal: i64, errorVal: ?*C.QCborParserError ```
    pub fn FromCbor32(data: []const u8, lenVal: i64, errorVal: ?*anyopaque) ?*C.QCborValue {
        const data_Cstring = @constCast(data.ptr);
        return C.QCborValue_FromCbor32(data_Cstring, @intCast(lenVal), @ptrCast(errorVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#fromCbor)
    ///
    /// ``` data: ?*u8, lenVal: i64, errorVal: ?*C.QCborParserError ```
    pub fn FromCbor33(data: ?*anyopaque, lenVal: i64, errorVal: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValue_FromCbor33(@intCast(data), @intCast(lenVal), @ptrCast(errorVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValue, opt: i32, allocator: std.mem.Allocator ```
    pub fn ToCbor1(self: ?*anyopaque, opt: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValue_ToCbor1(@ptrCast(self), @intCast(opt));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValue, writer: ?*C.QCborStreamWriter, opt: i32 ```
    pub fn ToCbor2(self: ?*anyopaque, writer: ?*anyopaque, opt: i64) void {
        C.QCborValue_ToCbor2(@ptrCast(self), @ptrCast(writer), @intCast(opt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalue.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValue, opts: i32, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation1(self: ?*anyopaque, opts: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValue_ToDiagnosticNotation1(@ptrCast(self), @intCast(opts));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborValue ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborValue_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborvalueconstref.html
pub const qcborvalueconstref = struct {
    /// New constructs a new QCborValueConstRef object.
    ///
    /// ``` other: ?*C.QCborValueConstRef ```
    pub fn New(other: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborValueConstRef_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborValueConstRef object.
    ///
    /// ``` param1: ?*C.QCborValueConstRef ```
    pub fn New2(param1: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborValueConstRef_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator QCborValue)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToQCborValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueConstRef_ToQCborValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#type)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QCborValueConstRef_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isInteger)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsInteger(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isByteArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsByteArray(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsByteArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isString)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isMap)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsMap(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isTag)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsTag(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isFalse)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsFalse(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsFalse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isTrue)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsTrue(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsTrue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isBool)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isNull)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isUndefined)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isDouble)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isDateTime)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsDateTime(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isUrl)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsUrl(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsRegularExpression(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isUuid)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsUuid(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isInvalid)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsInvalid(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsInvalid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isContainer)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsContainer(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn IsSimpleType(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_IsSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValueConstRef, st: qcborvalue_enums.QCborSimpleType ```
    pub fn IsSimpleTypeWithSt(self: ?*anyopaque, st: i64) bool {
        return C.QCborValueConstRef_IsSimpleTypeWithSt(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToSimpleType(self: ?*anyopaque) i64 {
        return C.QCborValueConstRef_ToSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#tag)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn Tag(self: ?*anyopaque) i64 {
        return C.QCborValueConstRef_Tag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn TaggedValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueConstRef_TaggedValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QCborValueConstRef_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toBool)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QCborValueConstRef_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QCborValueConstRef_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef, allocator: std.mem.Allocator ```
    pub fn ToByteArray(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueConstRef_ToByteArray(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toString)
    ///
    /// ``` self: ?*C.QCborValueConstRef, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueConstRef_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToDateTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValueConstRef_ToDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QCborValueConstRef_ToUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToRegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValueConstRef_ToRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToUuid(self: ?*anyopaque) ?*C.QUuid {
        return C.QCborValueConstRef_ToUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValueConstRef_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef, a: ?*C.QCborArray ```
    pub fn ToArrayWithQCborArray(self: ?*anyopaque, a: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValueConstRef_ToArrayWithQCborArray(@ptrCast(self), @ptrCast(a));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toMap)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToMap(self: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValueConstRef_ToMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toMap)
    ///
    /// ``` self: ?*C.QCborValueConstRef, m: ?*C.QCborMap ```
    pub fn ToMapWithQCborMap(self: ?*anyopaque, m: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValueConstRef_ToMapWithQCborMap(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueConstRef, key: []const u8 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborValueConstRef_OperatorSubscript(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueConstRef, key: i64 ```
    pub fn OperatorSubscript2(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborValueConstRef_OperatorSubscript2(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#compare)
    ///
    /// ``` self: ?*C.QCborValueConstRef, other: ?*C.QCborValue ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return C.QCborValueConstRef_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator==)
    ///
    /// ``` self: ?*C.QCborValueConstRef, other: ?*C.QCborValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueConstRef_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator!=)
    ///
    /// ``` self: ?*C.QCborValueConstRef, other: ?*C.QCborValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueConstRef_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#operator<)
    ///
    /// ``` self: ?*C.QCborValueConstRef, other: ?*C.QCborValue ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueConstRef_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toVariant)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QCborValueConstRef_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toJsonValue)
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn ToJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QCborValueConstRef_ToJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueConstRef, allocator: std.mem.Allocator ```
    pub fn ToCbor(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueConstRef_ToCbor(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueConstRef, writer: ?*C.QCborStreamWriter ```
    pub fn ToCborWithWriter(self: ?*anyopaque, writer: ?*anyopaque) void {
        C.QCborValueConstRef_ToCborWithWriter(@ptrCast(self), @ptrCast(writer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValueConstRef, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueConstRef_ToDiagnosticNotation(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: qcborvalue_enums.QCborSimpleType ```
    pub fn ToSimpleType1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueConstRef_ToSimpleType1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#tag)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: qcborvalue_enums.QCborTag ```
    pub fn Tag1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueConstRef_Tag1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: ?*C.QCborValue ```
    pub fn TaggedValue1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueConstRef_TaggedValue1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueConstRef_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toBool)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QCborValueConstRef_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QCborValueConstRef_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: []u8, allocator: std.mem.Allocator ```
    pub fn ToByteArray1(self: ?*anyopaque, defaultValue: []u8, allocator: std.mem.Allocator) []u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QCborValueConstRef_ToByteArray1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toString)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QCborValueConstRef_ToString1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: ?*C.QDateTime ```
    pub fn ToDateTime1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValueConstRef_ToDateTime1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: ?*C.QUrl ```
    pub fn ToUrl1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUrl {
        return C.QCborValueConstRef_ToUrl1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: ?*C.QRegularExpression ```
    pub fn ToRegularExpression1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValueConstRef_ToRegularExpression1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValueConstRef, defaultValue: ?*C.QUuid ```
    pub fn ToUuid1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUuid {
        return C.QCborValueConstRef_ToUuid1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueConstRef, opt: i32, allocator: std.mem.Allocator ```
    pub fn ToCbor1(self: ?*anyopaque, opt: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueConstRef_ToCbor1(@ptrCast(self), @intCast(opt));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueConstRef, writer: ?*C.QCborStreamWriter, opt: i32 ```
    pub fn ToCbor2(self: ?*anyopaque, writer: ?*anyopaque, opt: i64) void {
        C.QCborValueConstRef_ToCbor2(@ptrCast(self), @ptrCast(writer), @intCast(opt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueconstref.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValueConstRef, opt: i32, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation1(self: ?*anyopaque, opt: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueConstRef_ToDiagnosticNotation1(@ptrCast(self), @intCast(opt));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborValueConstRef ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborValueConstRef_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborvalueref.html
pub const qcborvalueref = struct {
    /// New constructs a new QCborValueRef object.
    ///
    /// ``` other: ?*C.QCborValueRef ```
    pub fn New(other: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborValueRef_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborValueRef object and invalidates the source QCborValueRef object.
    ///
    /// ``` other: ?*C.QCborValueRef ```
    pub fn New2(other: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborValueRef_new2(@ptrCast(other));
    }

    /// New3 constructs a new QCborValueRef object.
    ///
    /// ``` param1: ?*C.QCborValueRef ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborValueRef_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator=)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValue ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborValueRef_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator=)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValueRef ```
    pub fn OperatorAssignWithOther(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborValueRef_OperatorAssignWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueRef, key: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: i64) ?*C.QCborValueRef {
        return C.QCborValueRef_OperatorSubscript(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueRef, key: []const u8 ```
    pub fn OperatorSubscript2(self: ?*anyopaque, key: []const u8) ?*C.QCborValueRef {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborValueRef_OperatorSubscript2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator QCborValue)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToQCborValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueRef_ToQCborValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#type)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QCborValueRef_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isInteger)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsInteger(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isByteArray)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsByteArray(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsByteArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isString)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isArray)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isMap)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsMap(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isTag)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsTag(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsTag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isFalse)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsFalse(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsFalse(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isTrue)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsTrue(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsTrue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isBool)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isNull)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isUndefined)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isDouble)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isDateTime)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsDateTime(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isUrl)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsUrl(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsRegularExpression(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isUuid)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsUuid(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isInvalid)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsInvalid(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsInvalid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isContainer)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsContainer(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsContainer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn IsSimpleType(self: ?*anyopaque) bool {
        return C.QCborValueRef_IsSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#isSimpleType)
    ///
    /// ``` self: ?*C.QCborValueRef, st: qcborvalue_enums.QCborSimpleType ```
    pub fn IsSimpleTypeWithSt(self: ?*anyopaque, st: i64) bool {
        return C.QCborValueRef_IsSimpleTypeWithSt(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToSimpleType(self: ?*anyopaque) i64 {
        return C.QCborValueRef_ToSimpleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#tag)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn Tag(self: ?*anyopaque) i64 {
        return C.QCborValueRef_Tag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn TaggedValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueRef_TaggedValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QCborValueRef_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toBool)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QCborValueRef_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QCborValueRef_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValueRef, allocator: std.mem.Allocator ```
    pub fn ToByteArray(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueRef_ToByteArray(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toString)
    ///
    /// ``` self: ?*C.QCborValueRef, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueRef_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToDateTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValueRef_ToDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QCborValueRef_ToUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToRegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValueRef_ToRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToUuid(self: ?*anyopaque) ?*C.QUuid {
        return C.QCborValueRef_ToUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toArray)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValueRef_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toArray)
    ///
    /// ``` self: ?*C.QCborValueRef, a: ?*C.QCborArray ```
    pub fn ToArrayWithQCborArray(self: ?*anyopaque, a: ?*anyopaque) ?*C.QCborArray {
        return C.QCborValueRef_ToArrayWithQCborArray(@ptrCast(self), @ptrCast(a));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toMap)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToMap(self: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValueRef_ToMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toMap)
    ///
    /// ``` self: ?*C.QCborValueRef, m: ?*C.QCborMap ```
    pub fn ToMapWithQCborMap(self: ?*anyopaque, m: ?*anyopaque) ?*C.QCborMap {
        return C.QCborValueRef_ToMapWithQCborMap(@ptrCast(self), @ptrCast(m));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueRef, key: []const u8 ```
    pub fn OperatorSubscript3(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborValueRef_OperatorSubscript3(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator[])
    ///
    /// ``` self: ?*C.QCborValueRef, key: i64 ```
    pub fn OperatorSubscript5(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborValueRef_OperatorSubscript5(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#compare)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValue ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return C.QCborValueRef_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator==)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueRef_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator!=)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueRef_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#operator<)
    ///
    /// ``` self: ?*C.QCborValueRef, other: ?*C.QCborValue ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborValueRef_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toVariant)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QCborValueRef_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toJsonValue)
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn ToJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QCborValueRef_ToJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueRef, allocator: std.mem.Allocator ```
    pub fn ToCbor(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueRef_ToCbor(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueRef, writer: ?*C.QCborStreamWriter ```
    pub fn ToCborWithWriter(self: ?*anyopaque, writer: ?*anyopaque) void {
        C.QCborValueRef_ToCborWithWriter(@ptrCast(self), @ptrCast(writer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValueRef, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueRef_ToDiagnosticNotation(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toSimpleType)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: qcborvalue_enums.QCborSimpleType ```
    pub fn ToSimpleType1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueRef_ToSimpleType1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#tag)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: qcborvalue_enums.QCborTag ```
    pub fn Tag1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueRef_Tag1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#taggedValue)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: ?*C.QCborValue ```
    pub fn TaggedValue1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QCborValue {
        return C.QCborValueRef_TaggedValue1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toInteger)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QCborValueRef_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toBool)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QCborValueRef_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDouble)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QCborValueRef_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toByteArray)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: []u8, allocator: std.mem.Allocator ```
    pub fn ToByteArray1(self: ?*anyopaque, defaultValue: []u8, allocator: std.mem.Allocator) []u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QCborValueRef_ToByteArray1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toString)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QCborValueRef_ToString1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDateTime)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: ?*C.QDateTime ```
    pub fn ToDateTime1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QDateTime {
        return C.QCborValueRef_ToDateTime1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toUrl)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: ?*C.QUrl ```
    pub fn ToUrl1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUrl {
        return C.QCborValueRef_ToUrl1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: ?*C.QRegularExpression ```
    pub fn ToRegularExpression1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QRegularExpression {
        return C.QCborValueRef_ToRegularExpression1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toUuid)
    ///
    /// ``` self: ?*C.QCborValueRef, defaultValue: ?*C.QUuid ```
    pub fn ToUuid1(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QUuid {
        return C.QCborValueRef_ToUuid1(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueRef, opt: i32, allocator: std.mem.Allocator ```
    pub fn ToCbor1(self: ?*anyopaque, opt: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCborValueRef_ToCbor1(@ptrCast(self), @intCast(opt));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toCbor)
    ///
    /// ``` self: ?*C.QCborValueRef, writer: ?*C.QCborStreamWriter, opt: i32 ```
    pub fn ToCbor2(self: ?*anyopaque, writer: ?*anyopaque, opt: i64) void {
        C.QCborValueRef_ToCbor2(@ptrCast(self), @ptrCast(writer), @intCast(opt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborvalueref.html#toDiagnosticNotation)
    ///
    /// ``` self: ?*C.QCborValueRef, opt: i32, allocator: std.mem.Allocator ```
    pub fn ToDiagnosticNotation1(self: ?*anyopaque, opt: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCborValueRef_ToDiagnosticNotation1(@ptrCast(self), @intCast(opt));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborValueRef ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborValueRef_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcborvalue.html#types
pub const enums = struct {
    pub const EncodingOption = enum {
        pub const SortKeysInMaps: i32 = 1;
        pub const UseFloat: i32 = 2;
        pub const UseFloat16: i32 = 6;
        pub const UseIntegers: i32 = 8;
        pub const NoTransformation: i32 = 0;
    };

    pub const DiagnosticNotationOption = enum {
        pub const Compact: i32 = 0;
        pub const LineWrapped: i32 = 1;
        pub const ExtendedFormat: i32 = 2;
    };

    pub const Type = enum {
        pub const Integer: i32 = 0;
        pub const ByteArray: i32 = 64;
        pub const String: i32 = 96;
        pub const Array: i32 = 128;
        pub const Map: i32 = 160;
        pub const Tag: i32 = 192;
        pub const SimpleType: i32 = 256;
        pub const False: i32 = 276;
        pub const True: i32 = 277;
        pub const Null: i32 = 278;
        pub const Undefined: i32 = 279;
        pub const Double: i32 = 514;
        pub const DateTime: i32 = 65536;
        pub const Url: i32 = 65568;
        pub const RegularExpression: i32 = 65571;
        pub const Uuid: i32 = 65573;
        pub const Invalid: i32 = -1;
    };
};
