const C = @import("qt6c");
const qjsondocument_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qjsonparseerror.html
pub const qjsonparseerror = struct {
    /// New constructs a new QJsonParseError object.
    ///
    /// ``` other: ?*C.QJsonParseError ```
    pub fn New(other: ?*anyopaque) ?*C.QJsonParseError {
        return C.QJsonParseError_new(@ptrCast(other));
    }

    /// New2 constructs a new QJsonParseError object and invalidates the source QJsonParseError object.
    ///
    /// ``` other: ?*C.QJsonParseError ```
    pub fn New2(other: ?*anyopaque) ?*C.QJsonParseError {
        return C.QJsonParseError_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QJsonParseError, other: ?*QJsonParseError ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonParseError_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QJsonParseError, other: ?*QJsonParseError ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonParseError_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsonparseerror.html#errorString)
    ///
    /// ``` self: ?*C.QJsonParseError, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QJsonParseError_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonParseError ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonParseError_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsondocument.html
pub const qjsondocument = struct {
    /// New constructs a new QJsonDocument object.
    ///
    ///
    pub fn New() ?*C.QJsonDocument {
        return C.QJsonDocument_new();
    }

    /// New2 constructs a new QJsonDocument object.
    ///
    /// ``` object: ?*C.QJsonObject ```
    pub fn New2(object: ?*anyopaque) ?*C.QJsonDocument {
        return C.QJsonDocument_new2(@ptrCast(object));
    }

    /// New3 constructs a new QJsonDocument object.
    ///
    /// ``` array: ?*C.QJsonArray ```
    pub fn New3(array: ?*anyopaque) ?*C.QJsonDocument {
        return C.QJsonDocument_new3(@ptrCast(array));
    }

    /// New4 constructs a new QJsonDocument object.
    ///
    /// ``` other: ?*C.QJsonDocument ```
    pub fn New4(other: ?*anyopaque) ?*C.QJsonDocument {
        return C.QJsonDocument_new4(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#operator=)
    ///
    /// ``` self: ?*C.QJsonDocument, other: ?*C.QJsonDocument ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonDocument_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#swap)
    ///
    /// ``` self: ?*C.QJsonDocument, other: ?*C.QJsonDocument ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QJsonDocument_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#fromVariant)
    ///
    /// ``` variant: ?*C.QVariant ```
    pub fn FromVariant(variant: ?*anyopaque) ?*C.QJsonDocument {
        return C.QJsonDocument_FromVariant(@ptrCast(variant));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#toVariant)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn ToVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QJsonDocument_ToVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#fromJson)
    ///
    /// ``` json: []u8 ```
    pub fn FromJson(json: []u8) ?*C.QJsonDocument {
        const json_str = C.struct_libqt_string{
            .len = json.len,
            .data = @constCast(json.ptr),
        };
        return C.QJsonDocument_FromJson(json_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#toJson)
    ///
    /// ``` self: ?*C.QJsonDocument, allocator: std.mem.Allocator ```
    pub fn ToJson(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QJsonDocument_ToJson(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#isEmpty)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QJsonDocument_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#isArray)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn IsArray(self: ?*anyopaque) bool {
        return C.QJsonDocument_IsArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#isObject)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn IsObject(self: ?*anyopaque) bool {
        return C.QJsonDocument_IsObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#object)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn Object(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QJsonDocument_Object(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#array)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn Array(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QJsonDocument_Array(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#setObject)
    ///
    /// ``` self: ?*C.QJsonDocument, object: ?*C.QJsonObject ```
    pub fn SetObject(self: ?*anyopaque, object: ?*anyopaque) void {
        C.QJsonDocument_SetObject(@ptrCast(self), @ptrCast(object));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#setArray)
    ///
    /// ``` self: ?*C.QJsonDocument, array: ?*C.QJsonArray ```
    pub fn SetArray(self: ?*anyopaque, array: ?*anyopaque) void {
        C.QJsonDocument_SetArray(@ptrCast(self), @ptrCast(array));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#operator[])
    ///
    /// ``` self: ?*C.QJsonDocument, key: []const u8 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: []const u8) ?*C.QJsonValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QJsonDocument_OperatorSubscript(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#operator[])
    ///
    /// ``` self: ?*C.QJsonDocument, i: i64 ```
    pub fn OperatorSubscriptWithQsizetype(self: ?*anyopaque, i: i64) ?*C.QJsonValue {
        return C.QJsonDocument_OperatorSubscriptWithQsizetype(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#operator==)
    ///
    /// ``` self: ?*C.QJsonDocument, other: ?*C.QJsonDocument ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonDocument_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#operator!=)
    ///
    /// ``` self: ?*C.QJsonDocument, other: ?*C.QJsonDocument ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QJsonDocument_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#isNull)
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QJsonDocument_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#fromJson)
    ///
    /// ``` json: []u8, errorVal: ?*C.QJsonParseError ```
    pub fn FromJson2(json: []u8, errorVal: ?*anyopaque) ?*C.QJsonDocument {
        const json_str = C.struct_libqt_string{
            .len = json.len,
            .data = @constCast(json.ptr),
        };
        return C.QJsonDocument_FromJson2(json_str, @ptrCast(errorVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qjsondocument.html#toJson)
    ///
    /// ``` self: ?*C.QJsonDocument, format: qjsondocument_enums.JsonFormat, allocator: std.mem.Allocator ```
    pub fn ToJson1(self: ?*anyopaque, format: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QJsonDocument_ToJson1(@ptrCast(self), @intCast(format));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QJsonDocument ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QJsonDocument_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qjsondocument.html#types
pub const enums = struct {
    pub const ParseError = enum {
        pub const NoError: i32 = 0;
        pub const UnterminatedObject: i32 = 1;
        pub const MissingNameSeparator: i32 = 2;
        pub const UnterminatedArray: i32 = 3;
        pub const MissingValueSeparator: i32 = 4;
        pub const IllegalValue: i32 = 5;
        pub const TerminationByNumber: i32 = 6;
        pub const IllegalNumber: i32 = 7;
        pub const IllegalEscapeSequence: i32 = 8;
        pub const IllegalUTF8String: i32 = 9;
        pub const UnterminatedString: i32 = 10;
        pub const MissingObject: i32 = 11;
        pub const DeepNesting: i32 = 12;
        pub const DocumentTooLarge: i32 = 13;
        pub const GarbageAtEnd: i32 = 14;
    };

    pub const JsonFormat = enum {
        pub const Indented: i32 = 0;
        pub const Compact: i32 = 1;
    };
};
