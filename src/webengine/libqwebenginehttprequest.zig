const C = @import("qt6c");
const qwebenginehttprequest_enums = enums;
const std = @import("std");
pub const map_constu8_constu8 = std.StringHashMapUnmanaged([]const u8);

/// https://doc.qt.io/qt-6/qwebenginehttprequest.html
pub const qwebenginehttprequest = struct {
    /// New constructs a new QWebEngineHttpRequest object.
    ///
    ///
    pub fn New() ?*C.QWebEngineHttpRequest {
        return C.QWebEngineHttpRequest_new();
    }

    /// New2 constructs a new QWebEngineHttpRequest object.
    ///
    /// ``` other: ?*C.QWebEngineHttpRequest ```
    pub fn New2(other: ?*anyopaque) ?*C.QWebEngineHttpRequest {
        return C.QWebEngineHttpRequest_new2(@ptrCast(other));
    }

    /// New3 constructs a new QWebEngineHttpRequest object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New3(url: ?*anyopaque) ?*C.QWebEngineHttpRequest {
        return C.QWebEngineHttpRequest_new3(@ptrCast(url));
    }

    /// New4 constructs a new QWebEngineHttpRequest object.
    ///
    /// ``` url: ?*C.QUrl, method: ?*qwebenginehttprequest_enums.Method ```
    pub fn New4(url: ?*anyopaque, method: ?*anyopaque) ?*C.QWebEngineHttpRequest {
        return C.QWebEngineHttpRequest_new4(@ptrCast(url), @intCast(method));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, other: ?*C.QWebEngineHttpRequest ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineHttpRequest_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#postRequest)
    ///
    /// ``` url: ?*C.QUrl, postData: map_constu8_constu8, allocator: std.mem.Allocator ```
    pub fn PostRequest(url: ?*anyopaque, postData: map_constu8_constu8, allocator: std.mem.Allocator) ?*C.QWebEngineHttpRequest {
        const postData_keys = allocator.alloc(C.struct_libqt_string, postData.count()) catch @panic("Memory allocation failed");
        defer allocator.free(postData_keys);
        const postData_values = allocator.alloc([]const u8, postData.count()) catch @panic("Memory allocation failed");
        defer allocator.free(postData_values);
        var _i: usize = 0;
        var postData_it = postData.iterator();
        while (postData_it.next()) |entry| {
            const key = entry.key_ptr.*;
            postData_keys[_i] = C.struct_libqt_string{
                .len = key.len,
                .data = @ptrCast(@constCast(key.ptr)),
            };
            postData_values[_i] = entry.value_ptr.*;
            _i += 1;
        }
        const postData_map = C.struct_libqt_map{
            .len = postData.count(),
            .keys = @ptrCast(postData_keys.ptr),
            .values = @ptrCast(postData_values.ptr),
        };
        return C.QWebEngineHttpRequest_PostRequest(@ptrCast(url), postData_map);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#swap)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, other: ?*C.QWebEngineHttpRequest ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineHttpRequest_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#operator==)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, other: ?*C.QWebEngineHttpRequest ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QWebEngineHttpRequest_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#operator!=)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, other: ?*C.QWebEngineHttpRequest ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QWebEngineHttpRequest_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#method)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest ```
    pub fn Method(self: ?*anyopaque) i64 {
        return C.QWebEngineHttpRequest_Method(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#setMethod)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, method: qwebenginehttprequest_enums.Method ```
    pub fn SetMethod(self: ?*anyopaque, method: i64) void {
        C.QWebEngineHttpRequest_SetMethod(@ptrCast(self), @intCast(method));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#url)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineHttpRequest_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#setUrl)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, url: ?*C.QUrl ```
    pub fn SetUrl(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QWebEngineHttpRequest_SetUrl(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#postData)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, allocator: std.mem.Allocator ```
    pub fn PostData(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QWebEngineHttpRequest_PostData(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#setPostData)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, postData: []u8 ```
    pub fn SetPostData(self: ?*anyopaque, postData: []u8) void {
        const postData_str = C.struct_libqt_string{
            .len = postData.len,
            .data = @constCast(postData.ptr),
        };
        C.QWebEngineHttpRequest_SetPostData(@ptrCast(self), postData_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#hasHeader)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, headerName: []u8 ```
    pub fn HasHeader(self: ?*anyopaque, headerName: []u8) bool {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        return C.QWebEngineHttpRequest_HasHeader(@ptrCast(self), headerName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#headers)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, allocator: std.mem.Allocator ```
    pub fn Headers(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QWebEngineHttpRequest_Headers(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#header)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, headerName: []u8, allocator: std.mem.Allocator ```
    pub fn Header(self: ?*anyopaque, headerName: []u8, allocator: std.mem.Allocator) []u8 {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QWebEngineHttpRequest_Header(@ptrCast(self), headerName_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#setHeader)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, headerName: []u8, value: []u8 ```
    pub fn SetHeader(self: ?*anyopaque, headerName: []u8, value: []u8) void {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QWebEngineHttpRequest_SetHeader(@ptrCast(self), headerName_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginehttprequest.html#unsetHeader)
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest, headerName: []u8 ```
    pub fn UnsetHeader(self: ?*anyopaque, headerName: []u8) void {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        C.QWebEngineHttpRequest_UnsetHeader(@ptrCast(self), headerName_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineHttpRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineHttpRequest_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebenginehttprequest.html#types
pub const enums = struct {
    pub const Method = enum {
        pub const Get: i32 = 0;
        pub const Post: i32 = 1;
    };
};
