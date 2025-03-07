const C = @import("qt6c");
const std = @import("std");
pub const map_constu8_cqvariant = std.StringHashMapUnmanaged(?*C.QVariant);
pub const struct_cqcborvalue_cqcborvalue = struct { first: ?*C.QCborValue, second: ?*C.QCborValue };
pub const struct_cqcborvalueconstref_cqcborvalueconstref = struct { first: ?*C.QCborValueConstRef, second: ?*C.QCborValueConstRef };
pub const struct_cqcborvalueconstref_cqcborvalueref = struct { first: ?*C.QCborValueConstRef, second: ?*C.QCborValueRef };

/// https://doc.qt.io/qt-6/qcbormap.html
pub const qcbormap = struct {
    /// New constructs a new QCborMap object.
    ///
    ///
    pub fn New() ?*C.QCborMap {
        return C.QCborMap_new();
    }

    /// New2 constructs a new QCborMap object.
    ///
    /// ``` other: ?*C.QCborMap ```
    pub fn New2(other: ?*anyopaque) ?*C.QCborMap {
        return C.QCborMap_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator=)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborMap_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#swap)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborMap_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#toCborValue)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn ToCborValue(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap_ToCborValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#size)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QCborMap_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#isEmpty)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QCborMap_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#clear)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QCborMap_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#keys)
    ///
    /// ``` self: ?*C.QCborMap, allocator: std.mem.Allocator ```
    pub fn Keys(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QCborValue {
        const _arr: C.struct_libqt_list = C.QCborMap_Keys(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QCborValue, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QCborValue = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#value)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Value(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborMap_Value(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#value)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Value2(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Value2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#value)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Value3(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap_Value3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborMap_OperatorSubscript(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn OperatorSubscript2(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_OperatorSubscript2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn OperatorSubscript3(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap_OperatorSubscript3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn OperatorSubscript4(self: ?*anyopaque, key: i64) ?*C.QCborValueRef {
        return C.QCborMap_OperatorSubscript4(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn OperatorSubscript6(self: ?*anyopaque, key: []const u8) ?*C.QCborValueRef {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_OperatorSubscript6(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn OperatorSubscript7(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborMap_OperatorSubscript7(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#take)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Take(self: ?*anyopaque, key: i64) ?*C.QCborValue {
        return C.QCborMap_Take(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#take)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Take2(self: ?*anyopaque, key: []const u8) ?*C.QCborValue {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Take2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#take)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Take3(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap_Take3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#remove)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Remove(self: ?*anyopaque, key: i64) void {
        C.QCborMap_Remove(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#remove)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Remove2(self: ?*anyopaque, key: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        C.QCborMap_Remove2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#remove)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Remove3(self: ?*anyopaque, key: ?*anyopaque) void {
        C.QCborMap_Remove3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#contains)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Contains(self: ?*anyopaque, key: i64) bool {
        return C.QCborMap_Contains(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#contains)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Contains2(self: ?*anyopaque, key: []const u8) bool {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Contains2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#contains)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Contains3(self: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QCborMap_Contains3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#compare)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn Compare(self: ?*anyopaque, other: ?*anyopaque) i32 {
        return C.QCborMap_Compare(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator==)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator!=)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#operator<)
    ///
    /// ``` self: ?*C.QCborMap, other: ?*C.QCborMap ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#begin)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Begin(self: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap_Begin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#constBegin)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn ConstBegin(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_ConstBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#begin)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Begin2(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_Begin2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#cbegin)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Cbegin(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_Cbegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#end)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn End(self: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap_End(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#constEnd)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn ConstEnd(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_ConstEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#end)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn End2(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_End2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#cend)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Cend(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_Cend(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#erase)
    ///
    /// ``` self: ?*C.QCborMap, it: ?*C.QCborMap__Iterator ```
    pub fn Erase(self: ?*anyopaque, it: ?*C.QCborMap__Iterator) ?*C.QCborMap__Iterator {
        return C.QCborMap_Erase(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#erase)
    ///
    /// ``` self: ?*C.QCborMap, it: ?*C.QCborMap__ConstIterator ```
    pub fn EraseWithIt(self: ?*anyopaque, it: ?*C.QCborMap__ConstIterator) ?*C.QCborMap__Iterator {
        return C.QCborMap_EraseWithIt(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#extract)
    ///
    /// ``` self: ?*C.QCborMap, it: ?*C.QCborMap__Iterator ```
    pub fn Extract(self: ?*anyopaque, it: ?*C.QCborMap__Iterator) ?*C.QCborValue {
        return C.QCborMap_Extract(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#extract)
    ///
    /// ``` self: ?*C.QCborMap, it: ?*C.QCborMap__ConstIterator ```
    pub fn ExtractWithIt(self: ?*anyopaque, it: ?*C.QCborMap__ConstIterator) ?*C.QCborValue {
        return C.QCborMap_ExtractWithIt(@ptrCast(self), @ptrCast(it));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#empty)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn Empty(self: ?*anyopaque) bool {
        return C.QCborMap_Empty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Find(self: ?*anyopaque, key: i64) ?*C.QCborMap__Iterator {
        return C.QCborMap_Find(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Find2(self: ?*anyopaque, key: []const u8) ?*C.QCborMap__Iterator {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Find2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Find3(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap_Find3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#constFind)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn ConstFind(self: ?*anyopaque, key: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_ConstFind(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#constFind)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn ConstFind2(self: ?*anyopaque, key: []const u8) ?*C.QCborMap__ConstIterator {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_ConstFind2(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#constFind)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn ConstFind3(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_ConstFind3(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: i64 ```
    pub fn Find4(self: ?*anyopaque, key: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_Find4(@ptrCast(self), @intCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8 ```
    pub fn Find6(self: ?*anyopaque, key: []const u8) ?*C.QCborMap__ConstIterator {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Find6(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#find)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue ```
    pub fn Find7(self: ?*anyopaque, key: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap_Find7(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#insert)
    ///
    /// ``` self: ?*C.QCborMap, key: i64, value_: ?*C.QCborValue ```
    pub fn Insert(self: ?*anyopaque, key: i64, value_: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap_Insert(@ptrCast(self), @intCast(key), @ptrCast(value_));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#insert)
    ///
    /// ``` self: ?*C.QCborMap, key: []const u8, value_: ?*C.QCborValue ```
    pub fn Insert3(self: ?*anyopaque, key: []const u8, value_: ?*anyopaque) ?*C.QCborMap__Iterator {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QCborMap_Insert3(@ptrCast(self), key_str, @ptrCast(value_));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#insert)
    ///
    /// ``` self: ?*C.QCborMap, key: ?*C.QCborValue, value_: ?*C.QCborValue ```
    pub fn Insert4(self: ?*anyopaque, key: ?*anyopaque, value_: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap_Insert4(@ptrCast(self), @ptrCast(key), @ptrCast(value_));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#insert)
    ///
    /// ``` self: ?*C.QCborMap, v: struct_cqcborvalue_cqcborvalue ```
    pub fn InsertWithQCborMapvalueType(self: ?*anyopaque, v: struct_cqcborvalue_cqcborvalue) ?*C.QCborMap__Iterator {
        const v_pair = C.struct_libqt_pair{
            .first = @ptrCast(v.first),
            .second = @ptrCast(v.second),
        };
        return C.QCborMap_InsertWithQCborMapvalueType(@ptrCast(self), v_pair);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#fromVariantMap)
    ///
    /// ``` mapVal: map_constu8_cqvariant, allocator: std.mem.Allocator ```
    pub fn FromVariantMap(mapVal: map_constu8_cqvariant, allocator: std.mem.Allocator) ?*C.QCborMap {
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
        return C.QCborMap_FromVariantMap(mapVal_map);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#fromVariantHash)
    ///
    /// ``` hash: map_constu8_cqvariant, allocator: std.mem.Allocator ```
    pub fn FromVariantHash(hash: map_constu8_cqvariant, allocator: std.mem.Allocator) ?*C.QCborMap {
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
        return C.QCborMap_FromVariantHash(hash_map);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#fromJsonObject)
    ///
    /// ``` o: ?*C.QJsonObject ```
    pub fn FromJsonObject(o: ?*anyopaque) ?*C.QCborMap {
        return C.QCborMap_FromJsonObject(@ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#toVariantMap)
    ///
    /// ``` self: ?*C.QCborMap, allocator: std.mem.Allocator ```
    pub fn ToVariantMap(self: ?*anyopaque, allocator: std.mem.Allocator) map_constu8_cqvariant {
        const _map: C.struct_libqt_map = C.QCborMap_ToVariantMap(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#toVariantHash)
    ///
    /// ``` self: ?*C.QCborMap, allocator: std.mem.Allocator ```
    pub fn ToVariantHash(self: ?*anyopaque, allocator: std.mem.Allocator) map_constu8_cqvariant {
        const _map: C.struct_libqt_map = C.QCborMap_ToVariantHash(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap.html#toJsonObject)
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn ToJsonObject(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QCborMap_ToJsonObject(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborMap ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborMap_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcbormap-iterator.html
pub const qcbormap__iterator = struct {
    /// New constructs a new QCborMap::Iterator object.
    ///
    /// ``` other: ?*C.QCborMap__Iterator ```
    pub fn New(other: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborMap::Iterator object.
    ///
    ///
    pub fn New2() ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_new2();
    }

    /// New3 constructs a new QCborMap::Iterator object.
    ///
    /// ``` param1: ?*C.QCborMap__Iterator ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborMap__Iterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator*)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) struct_cqcborvalueconstref_cqcborvalueref {
        const _pair: C.struct_libqt_pair = C.QCborMap__Iterator_OperatorMultiply(@ptrCast(self));
        return struct_cqcborvalueconstref_cqcborvalueref{ .first = @ptrCast(_pair.first), .second = @ptrCast(_pair.second) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) struct_cqcborvalueconstref_cqcborvalueref {
        const _pair: C.struct_libqt_pair = C.QCborMap__Iterator_OperatorSubscript(@ptrCast(self), @intCast(j));
        return struct_cqcborvalueconstref_cqcborvalueref{ .first = @ptrCast(_pair.first), .second = @ptrCast(_pair.second) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborMap__Iterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn OperatorMinusGreater2(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborMap__Iterator_OperatorMinusGreater2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#key)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn Key(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap__Iterator_Key(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#value)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn Value(self: ?*anyopaque) ?*C.QCborValueRef {
        return C.QCborMap__Iterator_Value(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, o: ?*C.QCborMap__Iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, o: ?*C.QCborMap__Iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, o: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorEqualWithQCborMapConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorEqualWithQCborMapConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, o: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorNotEqualWithQCborMapConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorNotEqualWithQCborMapConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorLesserWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorLesserWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorLesserOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorLesserOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorGreaterWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorGreaterWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorGreaterOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__Iterator_OperatorGreaterOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator+=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator-=)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator+)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QCborMap__Iterator {
        return C.QCborMap__Iterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__iterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborMap__Iterator, j: ?*C.QCborMap__Iterator ```
    pub fn OperatorMinusWithQCborMapIterator(self: ?*anyopaque, j: ?*C.QCborMap__Iterator) i64 {
        return C.QCborMap__Iterator_OperatorMinusWithQCborMapIterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborMap__Iterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborMap__Iterator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcbormap-constiterator.html
pub const qcbormap__constiterator = struct {
    /// New constructs a new QCborMap::ConstIterator object.
    ///
    /// ``` other: ?*C.QCborMap__ConstIterator ```
    pub fn New(other: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_new(@ptrCast(other));
    }

    /// New2 constructs a new QCborMap::ConstIterator object.
    ///
    ///
    pub fn New2() ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_new2();
    }

    /// New3 constructs a new QCborMap::ConstIterator object.
    ///
    /// ``` param1: ?*C.QCborMap__ConstIterator ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCborMap__ConstIterator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator*)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorMultiply(self: ?*anyopaque) struct_cqcborvalueconstref_cqcborvalueconstref {
        const _pair: C.struct_libqt_pair = C.QCborMap__ConstIterator_OperatorMultiply(@ptrCast(self));
        return struct_cqcborvalueconstref_cqcborvalueconstref{ .first = @ptrCast(_pair.first), .second = @ptrCast(_pair.second) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator[])
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: i64 ```
    pub fn OperatorSubscript(self: ?*anyopaque, j: i64) struct_cqcborvalueconstref_cqcborvalueconstref {
        const _pair: C.struct_libqt_pair = C.QCborMap__ConstIterator_OperatorSubscript(@ptrCast(self), @intCast(j));
        return struct_cqcborvalueconstref_cqcborvalueconstref{ .first = @ptrCast(_pair.first), .second = @ptrCast(_pair.second) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator->)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborMap__ConstIterator_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#key)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn Key(self: ?*anyopaque) ?*C.QCborValue {
        return C.QCborMap__ConstIterator_Key(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#value)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn Value(self: ?*anyopaque) ?*C.QCborValueConstRef {
        return C.QCborMap__ConstIterator_Value(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, o: ?*C.QCborMap__Iterator ```
    pub fn OperatorEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, o: ?*C.QCborMap__Iterator ```
    pub fn OperatorNotEqual(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorNotEqual(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorLesser(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorLesser(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorLesserOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorLesserOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorGreater(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorGreater(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__Iterator ```
    pub fn OperatorGreaterOrEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorGreaterOrEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator==)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, o: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorEqualWithQCborMapConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorEqualWithQCborMapConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator!=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, o: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorNotEqualWithQCborMapConstIterator(self: ?*anyopaque, o: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorNotEqualWithQCborMapConstIterator(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator<)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorLesserWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorLesserWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator<=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorLesserOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorLesserOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator>)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorGreaterWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorGreaterWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator>=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, other: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorGreaterOrEqualWithOther(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCborMap__ConstIterator_OperatorGreaterOrEqualWithOther(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorPlusPlus(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorPlusPlus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator++)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, param1: i32 ```
    pub fn OperatorPlusPlusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorPlusPlusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorMinusMinus(self: ?*anyopaque) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorMinusMinus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator--)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, param1: i32 ```
    pub fn OperatorMinusMinusWithInt(self: ?*anyopaque, param1: i32) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorMinusMinusWithInt(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator+=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: i64 ```
    pub fn OperatorPlusAssign(self: ?*anyopaque, j: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorPlusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator-=)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: i64 ```
    pub fn OperatorMinusAssign(self: ?*anyopaque, j: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorMinusAssign(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator+)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: i64 ```
    pub fn OperatorPlus(self: ?*anyopaque, j: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorPlus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: i64 ```
    pub fn OperatorMinus(self: ?*anyopaque, j: i64) ?*C.QCborMap__ConstIterator {
        return C.QCborMap__ConstIterator_OperatorMinus(@ptrCast(self), @intCast(j));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcbormap__constiterator.html#operator-)
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator, j: ?*C.QCborMap__ConstIterator ```
    pub fn OperatorMinusWithQCborMapConstIterator(self: ?*anyopaque, j: ?*C.QCborMap__ConstIterator) i64 {
        return C.QCborMap__ConstIterator_OperatorMinusWithQCborMapConstIterator(@ptrCast(self), @ptrCast(j));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborMap__ConstIterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborMap__ConstIterator_Delete(@ptrCast(self));
    }
};
