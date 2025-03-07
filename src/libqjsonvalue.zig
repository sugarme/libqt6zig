const C = @import("qt6c");
const qjsonvalue_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qjsonvalue.html
pub const qjsonvalue = struct {
    /// New constructs a new QJsonValue object.
    ///
    ///
    pub fn New() ?*C.QJsonValue {
        return C.QJsonValue_new();
    }

    /// New2 constructs a new QJsonValue object.
    ///
    /// ``` b: bool ```
    pub fn New2(b: bool) ?*C.QJsonValue {
        return C.QJsonValue_new2(b);
    }

    /// New3 constructs a new QJsonValue object.
    ///
    /// ``` n: f64 ```
    pub fn New3(n: f64) ?*C.QJsonValue {
        return C.QJsonValue_new3(@floatCast(n));
    }

    /// New4 constructs a new QJsonValue object.
    ///
    /// ``` n: i32 ```
    pub fn New4(n: i32) ?*C.QJsonValue {
        return C.QJsonValue_new4(@intCast(n));
    }

    /// New5 constructs a new QJsonValue object.
    ///
    /// ``` v: i64 ```
    pub fn New5(v: i64) ?*C.QJsonValue {
        return C.QJsonValue_new5(@intCast(v));
    }

    /// New6 constructs a new QJsonValue object.
    ///
    /// ``` s: []const u8 ```
    pub fn New6(s: []const u8) ?*C.QJsonValue {
        const s_str = C.struct_libqt_string{
            .len = s.len,
            .data = @constCast(s.ptr),
        };

        return C.QJsonValue_new6(s_str);
    }

    /// New7 constructs a new QJsonValue object.
    ///
    /// ``` s: []const u8 ```
    pub fn New7(s: []const u8) ?*C.QJsonValue {
        const s_Cstring = @constCast(s.ptr);

        return C.QJsonValue_new7(s_Cstring);
    }

    /// New8 constructs a new QJsonValue object.
    ///
    /// ``` a: ?*C.QJsonArray ```
    pub fn New8(a: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValue_new8(@ptrCast(a));
    }

    /// New9 constructs a new QJsonValue object.
    ///
    /// ``` o: ?*C.QJsonObject ```
    pub fn New9(o: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValue_new9(@ptrCast(o));
    }

    /// New10 constructs a new QJsonValue object.
    ///
    /// ``` other: ?*C.QJsonValue ```
    pub fn New10(other: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValue_new10(@ptrCast(other));
    }

    /// New11 constructs a new QJsonValue object.
    ///
    /// ``` param1: qjsonvalue_enums.Type ```
    pub fn New11(param1: i64) ?*C.QJsonValue {
        return C.QJsonValue_new11(@intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#operator=)
    ///
    /// ``` self: ?*C.QJsonValue, other: ?*C.QJsonValue ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonValue_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#swap)
    ///
    /// ``` self: ?*C.QJsonValue, other: ?*C.QJsonValue ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonValue_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#fromVariant)
    ///
    /// ``` variant: ?*C.QVariant ```
    pub fn FromVariant(variant: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValue_FromVariant(@ptrCast(variant));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toVariant)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QJsonValue_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#type)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QJsonValue_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isNull)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QJsonValue_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isBool)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QJsonValue_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isDouble)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QJsonValue_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isString)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QJsonValue_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isArray)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QJsonValue_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isObject)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsObject(self: ?*anyopaque) bool {
        return C.QJsonValue_IsObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#isUndefined)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QJsonValue_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QJsonValue_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToInt(self: ?*anyopaque) i32 {
        return C.QJsonValue_ToInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QJsonValue_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QJsonValue_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toString)
    ///
    /// ``` self: ?*C.QJsonValue, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QJsonValue_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toString)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToStringWithDefaultValue(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QJsonValue_ToStringWithDefaultValue(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toArray)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonValue_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toArray)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: ?*C.QJsonArray ```
    pub fn ToArrayWithDefaultValue(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonValue_ToArrayWithDefaultValue(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toObject)
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn ToObject(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QJsonValue_ToObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toObject)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: ?*C.QJsonObject ```
    pub fn ToObjectWithDefaultValue(self: ?*anyopaque, defaultValue: ?*anyopaque) ?*C.QJsonObject {
        return C.QJsonValue_ToObjectWithDefaultValue(@ptrCast(self), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#operator[])
    ///
    /// ``` self: ?*C.QJsonValue, key: []const u8 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: []const u8) ?*C.QJsonValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QJsonValue_OperatorSubscript(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#operator[])
    ///
    /// ``` self: ?*C.QJsonValue, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonValue_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#operator==)
    ///
    /// ``` self: ?*C.QJsonValue, other: ?*C.QJsonValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValue_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonValue, other: ?*C.QJsonValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValue_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QJsonValue_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: i32 ```
    pub fn ToInt1(self: ?*anyopaque, defaultValue: i32) i32 {
        return C.QJsonValue_ToInt1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QJsonValue_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalue.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValue, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QJsonValue_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonValue ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonValue_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsonvalueconstref.html
pub const qjsonvalueconstref = struct {
    /// New constructs a new QJsonValueConstRef object.
    ///
    /// ``` other: ?*C.QJsonValueConstRef ```
    pub fn New(other: ?*anyopaque) ?*C.QJsonValueConstRef {
        return C.QJsonValueConstRef_new(@ptrCast(other));
    }

    /// New2 constructs a new QJsonValueConstRef object.
    ///
    /// ``` param1: ?*C.QJsonValueConstRef ```
    pub fn New2(param1: ?*anyopaque) ?*C.QJsonValueConstRef {
        return C.QJsonValueConstRef_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#operator QJsonValue)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToQJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValueConstRef_ToQJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toVariant)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QJsonValueConstRef_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#type)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QJsonValueConstRef_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isNull)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isBool)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isDouble)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isString)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isArray)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isObject)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsObject(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#isUndefined)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QJsonValueConstRef_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToInt(self: ?*anyopaque) i32 {
        return C.QJsonValueConstRef_ToInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QJsonValueConstRef_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QJsonValueConstRef_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toString)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QJsonValueConstRef_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toArray)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonValueConstRef_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toObject)
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn ToObject(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QJsonValueConstRef_ToObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#operator[])
    ///
    /// ``` self: ?*C.QJsonValueConstRef, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonValueConstRef_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#operator==)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, other: ?*C.QJsonValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValueConstRef_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, other: ?*C.QJsonValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValueConstRef_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QJsonValueConstRef_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, defaultValue: i32 ```
    pub fn ToInt1(self: ?*anyopaque, defaultValue: i32) i32 {
        return C.QJsonValueConstRef_ToInt1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QJsonValueConstRef_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QJsonValueConstRef_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueconstref.html#toString)
    ///
    /// ``` self: ?*C.QJsonValueConstRef, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QJsonValueConstRef_ToString1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonValueConstRef ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonValueConstRef_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsonvalueref.html
pub const qjsonvalueref = struct {
    /// New constructs a new QJsonValueRef object.
    ///
    /// ``` other: ?*C.QJsonValueRef ```
    pub fn New(other: ?*anyopaque) ?*C.QJsonValueRef {
        return C.QJsonValueRef_new(@ptrCast(other));
    }

    /// New2 constructs a new QJsonValueRef object.
    ///
    /// ``` param1: ?*C.QJsonValueRef ```
    pub fn New2(param1: ?*anyopaque) ?*C.QJsonValueRef {
        return C.QJsonValueRef_new2(@ptrCast(param1));
    }

    /// New3 constructs a new QJsonValueRef object.
    ///
    /// ``` array: ?*C.QJsonArray, idx: i64 ```
    pub fn New3(array: ?*anyopaque, idx: i64) ?*C.QJsonValueRef {
        return C.QJsonValueRef_new3(@ptrCast(array), @intCast(idx));
    }

    /// New4 constructs a new QJsonValueRef object.
    ///
    /// ``` object: ?*C.QJsonObject, idx: i64 ```
    pub fn New4(object: ?*anyopaque, idx: i64) ?*C.QJsonValueRef {
        return C.QJsonValueRef_new4(@ptrCast(object), @intCast(idx));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator=)
    ///
    /// ``` self: ?*C.QJsonValueRef, val: ?*C.QJsonValue ```
    pub fn OperatorAssign(self: ?*anyopaque, val: ?*anyopaque) void {
        C.QJsonValueRef_OperatorAssign(@ptrCast(self), @ptrCast(val));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator=)
    ///
    /// ``` self: ?*C.QJsonValueRef, val: ?*C.QJsonValueRef ```
    pub fn OperatorAssignWithVal(self: ?*anyopaque, val: ?*anyopaque) void {
        C.QJsonValueRef_OperatorAssignWithVal(@ptrCast(self), @ptrCast(val));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator QJsonValue)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToQJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QJsonValueRef_ToQJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toVariant)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QJsonValueRef_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#type)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QJsonValueRef_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isNull)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isBool)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsBool(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isDouble)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsDouble(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isString)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsString(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsString(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isArray)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isObject)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsObject(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#isUndefined)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn IsUndefined(self: ?*anyopaque) bool {
        return C.QJsonValueRef_IsUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QJsonValueRef_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToInt(self: ?*anyopaque) i32 {
        return C.QJsonValueRef_ToInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToInteger(self: ?*anyopaque) i64 {
        return C.QJsonValueRef_ToInteger(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QJsonValueRef_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toString)
    ///
    /// ``` self: ?*C.QJsonValueRef, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QJsonValueRef_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toArray)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToArray(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonValueRef_ToArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toObject)
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn ToObject(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QJsonValueRef_ToObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator[])
    ///
    /// ``` self: ?*C.QJsonValueRef, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonValueRef_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator==)
    ///
    /// ``` self: ?*C.QJsonValueRef, other: ?*C.QJsonValue ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValueRef_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonValueRef, other: ?*C.QJsonValue ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonValueRef_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toBool)
    ///
    /// ``` self: ?*C.QJsonValueRef, defaultValue: bool ```
    pub fn ToBool1(self: ?*anyopaque, defaultValue: bool) bool {
        return C.QJsonValueRef_ToBool1(@ptrCast(self), defaultValue);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toInt)
    ///
    /// ``` self: ?*C.QJsonValueRef, defaultValue: i32 ```
    pub fn ToInt1(self: ?*anyopaque, defaultValue: i32) i32 {
        return C.QJsonValueRef_ToInt1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toInteger)
    ///
    /// ``` self: ?*C.QJsonValueRef, defaultValue: i64 ```
    pub fn ToInteger1(self: ?*anyopaque, defaultValue: i64) i64 {
        return C.QJsonValueRef_ToInteger1(@ptrCast(self), @intCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toDouble)
    ///
    /// ``` self: ?*C.QJsonValueRef, defaultValue: f64 ```
    pub fn ToDouble1(self: ?*anyopaque, defaultValue: f64) f64 {
        return C.QJsonValueRef_ToDouble1(@ptrCast(self), @floatCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonvalueref.html#toString)
    ///
    /// ``` self: ?*C.QJsonValueRef, defaultValue: []const u8, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, defaultValue: []const u8, allocator: std.mem.Allocator) []const u8 {
        const defaultValue_str = C.struct_libqt_string{
            .len = defaultValue.len,
            .data = @constCast(defaultValue.ptr),
        };
        const _str = C.QJsonValueRef_ToString1(@ptrCast(self), defaultValue_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonValueRef ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonValueRef_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsonvalue.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const Null: i32 = 0;
        pub const Bool: i32 = 1;
        pub const Double: i32 = 2;
        pub const String: i32 = 3;
        pub const Array: i32 = 4;
        pub const Object: i32 = 5;
        pub const Undefined: i32 = 128;
    };
};
