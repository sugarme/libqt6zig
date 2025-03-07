const C = @import("qt6c");
const qvariant_enums = enums;
const std = @import("std");
pub const map_constu8_cqvariant = std.StringHashMapUnmanaged(?*C.QVariant);

/// https://doc.qt.io/qt-6/qvariant.html
pub const qvariant = struct {
    /// New constructs a new QVariant object.
    ///
    ///
    pub fn New() ?*C.QVariant {
        return C.QVariant_new();
    }

    /// New2 constructs a new QVariant object.
    ///
    /// ``` typeVal: ?*C.QMetaType ```
    pub fn New2(typeVal: ?*C.QMetaType) ?*C.QVariant {
        return C.QVariant_new2(@ptrCast(typeVal));
    }

    /// New3 constructs a new QVariant object.
    ///
    /// ``` other: ?*C.QVariant ```
    pub fn New3(other: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new3(@ptrCast(other));
    }

    /// New4 constructs a new QVariant object.
    ///
    /// ``` i: i32 ```
    pub fn New4(i: i32) ?*C.QVariant {
        return C.QVariant_new4(@intCast(i));
    }

    /// New5 constructs a new QVariant object.
    ///
    /// ``` ui: u32 ```
    pub fn New5(ui: u32) ?*C.QVariant {
        return C.QVariant_new5(@intCast(ui));
    }

    /// New6 constructs a new QVariant object.
    ///
    /// ``` ll: i64 ```
    pub fn New6(ll: i64) ?*C.QVariant {
        return C.QVariant_new6(@intCast(ll));
    }

    /// New7 constructs a new QVariant object.
    ///
    /// ``` ull: u64 ```
    pub fn New7(ull: u64) ?*C.QVariant {
        return C.QVariant_new7(@intCast(ull));
    }

    /// New8 constructs a new QVariant object.
    ///
    /// ``` b: bool ```
    pub fn New8(b: bool) ?*C.QVariant {
        return C.QVariant_new8(b);
    }

    /// New9 constructs a new QVariant object.
    ///
    /// ``` d: f64 ```
    pub fn New9(d: f64) ?*C.QVariant {
        return C.QVariant_new9(@floatCast(d));
    }

    /// New10 constructs a new QVariant object.
    ///
    /// ``` f: f32 ```
    pub fn New10(f: f32) ?*C.QVariant {
        return C.QVariant_new10(@floatCast(f));
    }

    /// New11 constructs a new QVariant object.
    ///
    /// ``` str: []const u8 ```
    pub fn New11(str: []const u8) ?*C.QVariant {
        const str_Cstring = @constCast(str.ptr);

        return C.QVariant_new11(str_Cstring);
    }

    /// New12 constructs a new QVariant object.
    ///
    /// ``` bytearray: []u8 ```
    pub fn New12(bytearray: []u8) ?*C.QVariant {
        const bytearray_str = C.struct_libqt_string{
            .len = bytearray.len,
            .data = @constCast(bytearray.ptr),
        };

        return C.QVariant_new12(bytearray_str);
    }

    /// New13 constructs a new QVariant object.
    ///
    /// ``` bitarray: ?*C.QBitArray ```
    pub fn New13(bitarray: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new13(@ptrCast(bitarray));
    }

    /// New14 constructs a new QVariant object.
    ///
    /// ``` stringVal: []const u8 ```
    pub fn New14(stringVal: []const u8) ?*C.QVariant {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };

        return C.QVariant_new14(stringVal_str);
    }

    /// New15 constructs a new QVariant object.
    ///
    /// ``` stringlist: [][]const u8, allocator: std.mem.Allocator ```
    pub fn New15(stringlist: [][]const u8, allocator: std.mem.Allocator) ?*C.QVariant {
        var stringlist_arr = allocator.alloc(C.struct_libqt_string, stringlist.len) catch @panic("Memory allocation failed");
        defer allocator.free(stringlist_arr);
        for (stringlist, 0..stringlist.len) |item, _i| {
            stringlist_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const stringlist_list = C.struct_libqt_list{
            .len = stringlist.len,
            .data = stringlist_arr.ptr,
        };

        return C.QVariant_new15(stringlist_list);
    }

    /// New16 constructs a new QVariant object.
    ///
    /// ``` qchar: ?*C.QChar ```
    pub fn New16(qchar: ?*C.QChar) ?*C.QVariant {
        return C.QVariant_new16(@ptrCast(qchar));
    }

    /// New17 constructs a new QVariant object.
    ///
    /// ``` date: ?*C.QDate ```
    pub fn New17(date: ?*C.QDate) ?*C.QVariant {
        return C.QVariant_new17(@ptrCast(date));
    }

    /// New18 constructs a new QVariant object.
    ///
    /// ``` time: ?*C.QTime ```
    pub fn New18(time: ?*C.QTime) ?*C.QVariant {
        return C.QVariant_new18(@ptrCast(time));
    }

    /// New19 constructs a new QVariant object.
    ///
    /// ``` datetime: ?*C.QDateTime ```
    pub fn New19(datetime: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new19(@ptrCast(datetime));
    }

    /// New20 constructs a new QVariant object.
    ///
    /// ``` mapVal: map_constu8_cqvariant, allocator: std.mem.Allocator ```
    pub fn New20(mapVal: map_constu8_cqvariant, allocator: std.mem.Allocator) ?*C.QVariant {
        const mapVal_keys = allocator.alloc(C.struct_libqt_string, mapVal.count()) catch @panic("Memory allocation failed");
        defer allocator.free(mapVal_keys);
        const mapVal_values = allocator.alloc(?*C.QVariant, mapVal.count()) catch @panic("Memory allocation failed");
        defer allocator.free(mapVal_values);
        var _i: usize = 0;
        var mapVal_it = mapVal.iterator();
        while (mapVal_it.next()) |entry| {
            const key = entry.key_ptr.*;
            mapVal_keys[_i] = C.struct_libqt_string{
                .len = key.len,
                .data = @ptrCast(@constCast(key.ptr)),
            };
            mapVal_values[_i] = entry.value_ptr.*;
            _i += 1;
        }
        const mapVal_map = C.struct_libqt_map{
            .len = mapVal.count(),
            .keys = @ptrCast(mapVal_keys.ptr),
            .values = @ptrCast(mapVal_values.ptr),
        };

        return C.QVariant_new20(mapVal_map);
    }

    /// New21 constructs a new QVariant object.
    ///
    /// ``` hash: map_constu8_cqvariant, allocator: std.mem.Allocator ```
    pub fn New21(hash: map_constu8_cqvariant, allocator: std.mem.Allocator) ?*C.QVariant {
        const hash_keys = allocator.alloc(C.struct_libqt_string, hash.count()) catch @panic("Memory allocation failed");
        defer allocator.free(hash_keys);
        const hash_values = allocator.alloc(?*C.QVariant, hash.count()) catch @panic("Memory allocation failed");
        defer allocator.free(hash_values);
        var _i: usize = 0;
        var hash_it = hash.iterator();
        while (hash_it.next()) |entry| {
            const key = entry.key_ptr.*;
            hash_keys[_i] = C.struct_libqt_string{
                .len = key.len,
                .data = @ptrCast(@constCast(key.ptr)),
            };
            hash_values[_i] = entry.value_ptr.*;
            _i += 1;
        }
        const hash_map = C.struct_libqt_map{
            .len = hash.count(),
            .keys = @ptrCast(hash_keys.ptr),
            .values = @ptrCast(hash_values.ptr),
        };

        return C.QVariant_new21(hash_map);
    }

    /// New22 constructs a new QVariant object.
    ///
    /// ``` size: ?*C.QSize ```
    pub fn New22(size: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new22(@ptrCast(size));
    }

    /// New23 constructs a new QVariant object.
    ///
    /// ``` size: ?*C.QSizeF ```
    pub fn New23(size: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new23(@ptrCast(size));
    }

    /// New24 constructs a new QVariant object.
    ///
    /// ``` pt: ?*C.QPoint ```
    pub fn New24(pt: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new24(@ptrCast(pt));
    }

    /// New25 constructs a new QVariant object.
    ///
    /// ``` pt: ?*C.QPointF ```
    pub fn New25(pt: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new25(@ptrCast(pt));
    }

    /// New26 constructs a new QVariant object.
    ///
    /// ``` line: ?*C.QLine ```
    pub fn New26(line: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new26(@ptrCast(line));
    }

    /// New27 constructs a new QVariant object.
    ///
    /// ``` line: ?*C.QLineF ```
    pub fn New27(line: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new27(@ptrCast(line));
    }

    /// New28 constructs a new QVariant object.
    ///
    /// ``` rect: ?*C.QRect ```
    pub fn New28(rect: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new28(@ptrCast(rect));
    }

    /// New29 constructs a new QVariant object.
    ///
    /// ``` rect: ?*C.QRectF ```
    pub fn New29(rect: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new29(@ptrCast(rect));
    }

    /// New30 constructs a new QVariant object.
    ///
    /// ``` locale: ?*C.QLocale ```
    pub fn New30(locale: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new30(@ptrCast(locale));
    }

    /// New31 constructs a new QVariant object.
    ///
    /// ``` re: ?*C.QRegularExpression ```
    pub fn New31(re: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new31(@ptrCast(re));
    }

    /// New32 constructs a new QVariant object.
    ///
    /// ``` easing: ?*C.QEasingCurve ```
    pub fn New32(easing: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new32(@ptrCast(easing));
    }

    /// New33 constructs a new QVariant object.
    ///
    /// ``` uuid: ?*C.QUuid ```
    pub fn New33(uuid: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new33(@ptrCast(uuid));
    }

    /// New34 constructs a new QVariant object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New34(url: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new34(@ptrCast(url));
    }

    /// New35 constructs a new QVariant object.
    ///
    /// ``` jsonValue: ?*C.QJsonValue ```
    pub fn New35(jsonValue: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new35(@ptrCast(jsonValue));
    }

    /// New36 constructs a new QVariant object.
    ///
    /// ``` jsonObject: ?*C.QJsonObject ```
    pub fn New36(jsonObject: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new36(@ptrCast(jsonObject));
    }

    /// New37 constructs a new QVariant object.
    ///
    /// ``` jsonArray: ?*C.QJsonArray ```
    pub fn New37(jsonArray: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new37(@ptrCast(jsonArray));
    }

    /// New38 constructs a new QVariant object.
    ///
    /// ``` jsonDocument: ?*C.QJsonDocument ```
    pub fn New38(jsonDocument: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new38(@ptrCast(jsonDocument));
    }

    /// New39 constructs a new QVariant object.
    ///
    /// ``` modelIndex: ?*C.QModelIndex ```
    pub fn New39(modelIndex: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new39(@ptrCast(modelIndex));
    }

    /// New40 constructs a new QVariant object.
    ///
    /// ``` modelIndex: ?*C.QPersistentModelIndex ```
    pub fn New40(modelIndex: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new40(@ptrCast(modelIndex));
    }

    /// New41 constructs a new QVariant object.
    ///
    /// ``` typeVal: qvariant_enums.Type ```
    pub fn New41(typeVal: i64) ?*C.QVariant {
        return C.QVariant_new41(@intCast(typeVal));
    }

    /// New42 constructs a new QVariant object.
    ///
    /// ``` typeVal: ?*C.QMetaType, copyVal: ?*anyopaque ```
    pub fn New42(typeVal: ?*C.QMetaType, copyVal: ?*anyopaque) ?*C.QVariant {
        return C.QVariant_new42(@ptrCast(typeVal), copyVal);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#operator=)
    ///
    /// ``` self: ?*C.QVariant, other: ?*C.QVariant ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVariant_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#swap)
    ///
    /// ``` self: ?*C.QVariant, other: ?*C.QVariant ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QVariant_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#userType)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn UserType(self: ?*anyopaque) i32 {
        return C.QVariant_UserType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#typeId)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn TypeId(self: ?*anyopaque) i32 {
        return C.QVariant_TypeId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#typeName)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn TypeName(self: ?*anyopaque) []const u8 {
        const _ret = C.QVariant_TypeName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#metaType)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn MetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QVariant_MetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#canConvert)
    ///
    /// ``` self: ?*C.QVariant, targetType: ?*C.QMetaType ```
    pub fn CanConvert(self: ?*anyopaque, targetType: ?*C.QMetaType) bool {
        return C.QVariant_CanConvert(@ptrCast(self), @ptrCast(targetType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#convert)
    ///
    /// ``` self: ?*C.QVariant, typeVal: ?*C.QMetaType ```
    pub fn Convert(self: ?*anyopaque, typeVal: ?*C.QMetaType) bool {
        return C.QVariant_Convert(@ptrCast(self), @ptrCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#canView)
    ///
    /// ``` self: ?*C.QVariant, targetType: ?*C.QMetaType ```
    pub fn CanView(self: ?*anyopaque, targetType: ?*C.QMetaType) bool {
        return C.QVariant_CanView(@ptrCast(self), @ptrCast(targetType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#canConvert)
    ///
    /// ``` self: ?*C.QVariant, targetTypeId: i32 ```
    pub fn CanConvertWithTargetTypeId(self: ?*anyopaque, targetTypeId: i32) bool {
        return C.QVariant_CanConvertWithTargetTypeId(@ptrCast(self), @intCast(targetTypeId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#convert)
    ///
    /// ``` self: ?*C.QVariant, targetTypeId: i32 ```
    pub fn ConvertWithTargetTypeId(self: ?*anyopaque, targetTypeId: i32) bool {
        return C.QVariant_ConvertWithTargetTypeId(@ptrCast(self), @intCast(targetTypeId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#isValid)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QVariant_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#isNull)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QVariant_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#clear)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QVariant_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#detach)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QVariant_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#isDetached)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QVariant_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toInt)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToInt(self: ?*anyopaque) i32 {
        return C.QVariant_ToInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toUInt)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToUInt(self: ?*anyopaque) u32 {
        return C.QVariant_ToUInt(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toLongLong)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToLongLong(self: ?*anyopaque) i64 {
        return C.QVariant_ToLongLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toULongLong)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToULongLong(self: ?*anyopaque) u64 {
        return C.QVariant_ToULongLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toBool)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToBool(self: ?*anyopaque) bool {
        return C.QVariant_ToBool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toDouble)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToDouble(self: ?*anyopaque) f64 {
        return C.QVariant_ToDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toFloat)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToFloat(self: ?*anyopaque) f32 {
        return C.QVariant_ToFloat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toReal)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToReal(self: ?*anyopaque) f64 {
        return C.QVariant_ToReal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toByteArray)
    ///
    /// ``` self: ?*C.QVariant, allocator: std.mem.Allocator ```
    pub fn ToByteArray(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QVariant_ToByteArray(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toBitArray)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToBitArray(self: ?*anyopaque) ?*C.QBitArray {
        return C.QVariant_ToBitArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toString)
    ///
    /// ``` self: ?*C.QVariant, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QVariant_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toStringList)
    ///
    /// ``` self: ?*C.QVariant, allocator: std.mem.Allocator ```
    pub fn ToStringList(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QVariant_ToStringList(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toChar)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToChar(self: ?*anyopaque) ?*C.QChar {
        return C.QVariant_ToChar(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toDate)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToDate(self: ?*anyopaque) ?*C.QDate {
        return C.QVariant_ToDate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toTime)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToTime(self: ?*anyopaque) ?*C.QTime {
        return C.QVariant_ToTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toDateTime)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToDateTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QVariant_ToDateTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toMap)
    ///
    /// ``` self: ?*C.QVariant, allocator: std.mem.Allocator ```
    pub fn ToMap(self: ?*anyopaque, allocator: std.mem.Allocator) map_constu8_cqvariant {
        const _map: C.struct_libqt_map = C.QVariant_ToMap(@ptrCast(self));
        var _ret: map_constu8_cqvariant = .empty;
        defer {
            const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
            for (0.._map.len) |_i| {
                C.libqt_free(_keys[_i].data);
            }
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _entry_slice = std.mem.span(_key.data);
            const _value = _values[_i];
            _ret.put(allocator, _entry_slice, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toHash)
    ///
    /// ``` self: ?*C.QVariant, allocator: std.mem.Allocator ```
    pub fn ToHash(self: ?*anyopaque, allocator: std.mem.Allocator) map_constu8_cqvariant {
        const _map: C.struct_libqt_map = C.QVariant_ToHash(@ptrCast(self));
        var _ret: map_constu8_cqvariant = .empty;
        defer {
            const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
            for (0.._map.len) |_i| {
                C.libqt_free(_keys[_i].data);
            }
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]C.struct_libqt_string = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _entry_slice = std.mem.span(_key.data);
            const _value = _values[_i];
            _ret.put(allocator, _entry_slice, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toPoint)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToPoint(self: ?*anyopaque) ?*C.QPoint {
        return C.QVariant_ToPoint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toPointF)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToPointF(self: ?*anyopaque) ?*C.QPointF {
        return C.QVariant_ToPointF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toRect)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToRect(self: ?*anyopaque) ?*C.QRect {
        return C.QVariant_ToRect(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toSize)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToSize(self: ?*anyopaque) ?*C.QSize {
        return C.QVariant_ToSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toSizeF)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToSizeF(self: ?*anyopaque) ?*C.QSizeF {
        return C.QVariant_ToSizeF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toLine)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToLine(self: ?*anyopaque) ?*C.QLine {
        return C.QVariant_ToLine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toLineF)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToLineF(self: ?*anyopaque) ?*C.QLineF {
        return C.QVariant_ToLineF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toRectF)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToRectF(self: ?*anyopaque) ?*C.QRectF {
        return C.QVariant_ToRectF(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toLocale)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToLocale(self: ?*anyopaque) ?*C.QLocale {
        return C.QVariant_ToLocale(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toRegularExpression)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToRegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QVariant_ToRegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toEasingCurve)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToEasingCurve(self: ?*anyopaque) ?*C.QEasingCurve {
        return C.QVariant_ToEasingCurve(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toUuid)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToUuid(self: ?*anyopaque) ?*C.QUuid {
        return C.QVariant_ToUuid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toUrl)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QVariant_ToUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toJsonValue)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToJsonValue(self: ?*anyopaque) ?*C.QJsonValue {
        return C.QVariant_ToJsonValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toJsonObject)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToJsonObject(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QVariant_ToJsonObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toJsonArray)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToJsonArray(self: ?*anyopaque) ?*C.QJsonArray {
        return C.QVariant_ToJsonArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toJsonDocument)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToJsonDocument(self: ?*anyopaque) ?*C.QJsonDocument {
        return C.QVariant_ToJsonDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toModelIndex)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToModelIndex(self: ?*anyopaque) ?*C.QModelIndex {
        return C.QVariant_ToModelIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toPersistentModelIndex)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ToPersistentModelIndex(self: ?*anyopaque) ?*C.QPersistentModelIndex {
        return C.QVariant_ToPersistentModelIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#load)
    ///
    /// ``` self: ?*C.QVariant, ds: ?*C.QDataStream ```
    pub fn Load(self: ?*anyopaque, ds: ?*anyopaque) void {
        C.QVariant_Load(@ptrCast(self), @ptrCast(ds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#save)
    ///
    /// ``` self: ?*C.QVariant, ds: ?*C.QDataStream ```
    pub fn Save(self: ?*anyopaque, ds: ?*anyopaque) void {
        C.QVariant_Save(@ptrCast(self), @ptrCast(ds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#type)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QVariant_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#typeToName)
    ///
    /// ``` typeId: i32 ```
    pub fn TypeToName(typeId: i32) []const u8 {
        const _ret = C.QVariant_TypeToName(@intCast(typeId));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#nameToType)
    ///
    /// ``` name: []const u8 ```
    pub fn NameToType(name: []const u8) i64 {
        const name_Cstring = @constCast(name.ptr);
        return C.QVariant_NameToType(name_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#data)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn Data(self: ?*anyopaque) ?*anyopaque {
        return C.QVariant_Data(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#constData)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn ConstData(self: ?*anyopaque) ?*anyopaque {
        return C.QVariant_ConstData(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#data)
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn Data2(self: ?*anyopaque) ?*anyopaque {
        return C.QVariant_Data2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#setValue)
    ///
    /// ``` self: ?*C.QVariant, avalue: ?*C.QVariant ```
    pub fn SetValue(self: ?*anyopaque, avalue: ?*anyopaque) void {
        C.QVariant_SetValue(@ptrCast(self), @ptrCast(avalue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#compare)
    ///
    /// ``` lhs: ?*C.QVariant, rhs: ?*C.QVariant ```
    pub fn Compare(lhs: ?*anyopaque, rhs: ?*anyopaque) ?*C.QPartialOrdering {
        return C.QVariant_Compare(@ptrCast(lhs), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toInt)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToInt1(self: ?*anyopaque, ok: ?*anyopaque) i32 {
        return C.QVariant_ToInt1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toUInt)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToUInt1(self: ?*anyopaque, ok: ?*anyopaque) u32 {
        return C.QVariant_ToUInt1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toLongLong)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToLongLong1(self: ?*anyopaque, ok: ?*anyopaque) i64 {
        return C.QVariant_ToLongLong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toULongLong)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToULongLong1(self: ?*anyopaque, ok: ?*anyopaque) u64 {
        return C.QVariant_ToULongLong1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toDouble)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToDouble1(self: ?*anyopaque, ok: ?*anyopaque) f64 {
        return C.QVariant_ToDouble1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toFloat)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToFloat1(self: ?*anyopaque, ok: ?*anyopaque) f32 {
        return C.QVariant_ToFloat1(@ptrCast(self), @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariant.html#toReal)
    ///
    /// ``` self: ?*C.QVariant, ok: ?*bool ```
    pub fn ToReal1(self: ?*anyopaque, ok: ?*anyopaque) f64 {
        return C.QVariant_ToReal1(@ptrCast(self), @ptrCast(ok));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QVariant ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QVariant_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qvariantconstpointer.html
pub const qvariantconstpointer = struct {
    /// New constructs a new QVariantConstPointer object.
    ///
    /// ``` variant: ?*C.QVariant ```
    pub fn New(variant: ?*C.QVariant) ?*C.QVariantConstPointer {
        return C.QVariantConstPointer_new(@ptrCast(variant));
    }

    /// New2 constructs a new QVariantConstPointer object.
    ///
    /// ``` param1: ?*C.QVariantConstPointer ```
    pub fn New2(param1: ?*anyopaque) ?*C.QVariantConstPointer {
        return C.QVariantConstPointer_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariantconstpointer.html#operator*)
    ///
    /// ``` self: ?*C.QVariantConstPointer ```
    pub fn OperatorMultiply(self: ?*anyopaque) ?*C.QVariant {
        return C.QVariantConstPointer_OperatorMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariantconstpointer.html#operator->)
    ///
    /// ``` self: ?*C.QVariantConstPointer ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QVariant {
        return C.QVariantConstPointer_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qvariantconstpointer.html#operator=)
    ///
    /// ``` self: ?*C.QVariantConstPointer, param1: ?*C.QVariantConstPointer ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QVariantConstPointer_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QVariantConstPointer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QVariantConstPointer_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qvariant.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const Invalid: i32 = 0;
        pub const Bool: i32 = 1;
        pub const Int: i32 = 2;
        pub const UInt: i32 = 3;
        pub const LongLong: i32 = 4;
        pub const ULongLong: i32 = 5;
        pub const Double: i32 = 6;
        pub const Char: i32 = 7;
        pub const Map: i32 = 8;
        pub const List: i32 = 9;
        pub const String: i32 = 10;
        pub const StringList: i32 = 11;
        pub const ByteArray: i32 = 12;
        pub const BitArray: i32 = 13;
        pub const Date: i32 = 14;
        pub const Time: i32 = 15;
        pub const DateTime: i32 = 16;
        pub const Url: i32 = 17;
        pub const Locale: i32 = 18;
        pub const Rect: i32 = 19;
        pub const RectF: i32 = 20;
        pub const Size: i32 = 21;
        pub const SizeF: i32 = 22;
        pub const Line: i32 = 23;
        pub const LineF: i32 = 24;
        pub const Point: i32 = 25;
        pub const PointF: i32 = 26;
        pub const RegularExpression: i32 = 44;
        pub const Hash: i32 = 28;
        pub const EasingCurve: i32 = 29;
        pub const Uuid: i32 = 30;
        pub const ModelIndex: i32 = 42;
        pub const PersistentModelIndex: i32 = 50;
        pub const LastCoreType: i32 = 58;
        pub const Font: i32 = 4096;
        pub const Pixmap: i32 = 4097;
        pub const Brush: i32 = 4098;
        pub const Color: i32 = 4099;
        pub const Palette: i32 = 4100;
        pub const Image: i32 = 4102;
        pub const Polygon: i32 = 4103;
        pub const Region: i32 = 4104;
        pub const Bitmap: i32 = 4105;
        pub const Cursor: i32 = 4106;
        pub const KeySequence: i32 = 4107;
        pub const Pen: i32 = 4108;
        pub const TextLength: i32 = 4109;
        pub const TextFormat: i32 = 4110;
        pub const Transform: i32 = 4112;
        pub const Matrix4x4: i32 = 4113;
        pub const Vector2D: i32 = 4114;
        pub const Vector3D: i32 = 4115;
        pub const Vector4D: i32 = 4116;
        pub const Quaternion: i32 = 4117;
        pub const PolygonF: i32 = 4118;
        pub const Icon: i32 = 4101;
        pub const LastGuiType: i32 = 4119;
        pub const SizePolicy: i32 = 8192;
        pub const UserType: i32 = 65536;
        pub const LastType: i64 = 4294967295;
    };
};
