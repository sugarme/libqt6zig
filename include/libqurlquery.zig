const C = @import("qt6c");
const std = @import("std");
pub const struct_constu8_constu8 = struct { first: []const u8, second: []const u8 };

/// https://doc.qt.io/qt-6/qurlquery.html
pub const qurlquery = struct {
    /// New constructs a new QUrlQuery object.
    ///
    ///
    pub fn New() ?*C.QUrlQuery {
        return C.QUrlQuery_new();
    }

    /// New2 constructs a new QUrlQuery object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New2(url: ?*anyopaque) ?*C.QUrlQuery {
        return C.QUrlQuery_new2(@ptrCast(url));
    }

    /// New3 constructs a new QUrlQuery object.
    ///
    /// ``` queryString: []const u8 ```
    pub fn New3(queryString: []const u8) ?*C.QUrlQuery {
        const queryString_str = C.struct_libqt_string{
            .len = queryString.len,
            .data = @constCast(queryString.ptr),
        };

        return C.QUrlQuery_new3(queryString_str);
    }

    /// New4 constructs a new QUrlQuery object.
    ///
    /// ``` other: ?*C.QUrlQuery ```
    pub fn New4(other: ?*anyopaque) ?*C.QUrlQuery {
        return C.QUrlQuery_new4(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#operator=)
    ///
    /// ``` self: ?*C.QUrlQuery, other: ?*C.QUrlQuery ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUrlQuery_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#operator==)
    ///
    /// ``` self: ?*C.QUrlQuery, other: ?*C.QUrlQuery ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QUrlQuery_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#operator!=)
    ///
    /// ``` self: ?*C.QUrlQuery, other: ?*C.QUrlQuery ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QUrlQuery_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#swap)
    ///
    /// ``` self: ?*C.QUrlQuery, other: ?*C.QUrlQuery ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUrlQuery_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#isEmpty)
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QUrlQuery_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#isDetached)
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QUrlQuery_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#clear)
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QUrlQuery_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#query)
    ///
    /// ``` self: ?*C.QUrlQuery, allocator: std.mem.Allocator ```
    pub fn Query(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrlQuery_Query(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#setQuery)
    ///
    /// ``` self: ?*C.QUrlQuery, queryString: []const u8 ```
    pub fn SetQuery(self: ?*anyopaque, queryString: []const u8) void {
        const queryString_str = C.struct_libqt_string{
            .len = queryString.len,
            .data = @constCast(queryString.ptr),
        };
        C.QUrlQuery_SetQuery(@ptrCast(self), queryString_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#toString)
    ///
    /// ``` self: ?*C.QUrlQuery, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrlQuery_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#setQueryDelimiters)
    ///
    /// ``` self: ?*C.QUrlQuery, valueDelimiter: ?*C.QChar, pairDelimiter: ?*C.QChar ```
    pub fn SetQueryDelimiters(self: ?*anyopaque, valueDelimiter: ?*C.QChar, pairDelimiter: ?*C.QChar) void {
        C.QUrlQuery_SetQueryDelimiters(@ptrCast(self), @ptrCast(valueDelimiter), @ptrCast(pairDelimiter));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryValueDelimiter)
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn QueryValueDelimiter(self: ?*anyopaque) ?*C.QChar {
        return C.QUrlQuery_QueryValueDelimiter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryPairDelimiter)
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn QueryPairDelimiter(self: ?*anyopaque) ?*C.QChar {
        return C.QUrlQuery_QueryPairDelimiter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#setQueryItems)
    ///
    /// ``` self: ?*C.QUrlQuery, query: []struct_constu8_constu8 ```
    pub fn SetQueryItems(self: ?*anyopaque, query: []struct_constu8_constu8) void {
        const query_list = C.struct_libqt_list{
            .len = query.len,
            .data = query.ptr,
        };
        C.QUrlQuery_SetQueryItems(@ptrCast(self), query_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryItems)
    ///
    /// ``` self: ?*C.QUrlQuery, allocator: std.mem.Allocator ```
    pub fn QueryItems(self: ?*anyopaque, allocator: std.mem.Allocator) []struct_constu8_constu8 {
        const _arr: C.struct_libqt_list = C.QUrlQuery_QueryItems(@ptrCast(self));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_pair[_i].first));
                C.libqt_free(_pair[_i].first);

                C.libqt_string_free(@ptrCast(&_pair[_i].second));
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_constu8_constu8, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_constu8_constu8 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#hasQueryItem)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8 ```
    pub fn HasQueryItem(self: ?*anyopaque, key: []const u8) bool {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QUrlQuery_HasQueryItem(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#addQueryItem)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8, value: []const u8 ```
    pub fn AddQueryItem(self: ?*anyopaque, key: []const u8, value: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QUrlQuery_AddQueryItem(@ptrCast(self), key_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#removeQueryItem)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8 ```
    pub fn RemoveQueryItem(self: ?*anyopaque, key: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        C.QUrlQuery_RemoveQueryItem(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryItemValue)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8, allocator: std.mem.Allocator ```
    pub fn QueryItemValue(self: ?*anyopaque, key: []const u8, allocator: std.mem.Allocator) []const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _str = C.QUrlQuery_QueryItemValue(@ptrCast(self), key_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#allQueryItemValues)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8, allocator: std.mem.Allocator ```
    pub fn AllQueryItemValues(self: ?*anyopaque, key: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _arr: C.struct_libqt_list = C.QUrlQuery_AllQueryItemValues(@ptrCast(self), key_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#removeAllQueryItems)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8 ```
    pub fn RemoveAllQueryItems(self: ?*anyopaque, key: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        C.QUrlQuery_RemoveAllQueryItems(@ptrCast(self), key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#query)
    ///
    /// ``` self: ?*C.QUrlQuery, encoding: u32, allocator: std.mem.Allocator ```
    pub fn Query1(self: ?*anyopaque, encoding: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrlQuery_Query1(@ptrCast(self), @intCast(encoding));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#toString)
    ///
    /// ``` self: ?*C.QUrlQuery, encoding: u32, allocator: std.mem.Allocator ```
    pub fn ToString1(self: ?*anyopaque, encoding: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrlQuery_ToString1(@ptrCast(self), @intCast(encoding));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryItems)
    ///
    /// ``` self: ?*C.QUrlQuery, encoding: u32, allocator: std.mem.Allocator ```
    pub fn QueryItems1(self: ?*anyopaque, encoding: i64, allocator: std.mem.Allocator) []struct_constu8_constu8 {
        const _arr: C.struct_libqt_list = C.QUrlQuery_QueryItems1(@ptrCast(self), @intCast(encoding));
        defer {
            const _pair: [*]C.struct_libqt_pair = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_pair[_i].first));
                C.libqt_free(_pair[_i].first);

                C.libqt_string_free(@ptrCast(&_pair[_i].second));
                C.libqt_free(_pair[_i].second);
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(struct_constu8_constu8, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]struct_constu8_constu8 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#queryItemValue)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8, encoding: u32, allocator: std.mem.Allocator ```
    pub fn QueryItemValue2(self: ?*anyopaque, key: []const u8, encoding: i64, allocator: std.mem.Allocator) []const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _str = C.QUrlQuery_QueryItemValue2(@ptrCast(self), key_str, @intCast(encoding));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurlquery.html#allQueryItemValues)
    ///
    /// ``` self: ?*C.QUrlQuery, key: []const u8, encoding: u32, allocator: std.mem.Allocator ```
    pub fn AllQueryItemValues2(self: ?*anyopaque, key: []const u8, encoding: i64, allocator: std.mem.Allocator) [][]const u8 {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        const _arr: C.struct_libqt_list = C.QUrlQuery_AllQueryItemValues2(@ptrCast(self), key_str, @intCast(encoding));
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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QUrlQuery ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QUrlQuery_Delete(@ptrCast(self));
    }
};
