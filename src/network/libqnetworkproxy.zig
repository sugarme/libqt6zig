const C = @import("qt6c");
const qnetworkproxy_enums = enums;
const qnetworkrequest_enums = @import("libqnetworkrequest.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qnetworkproxyquery.html
pub const qnetworkproxyquery = struct {
    /// New constructs a new QNetworkProxyQuery object.
    ///
    ///
    pub fn New() ?*C.QNetworkProxyQuery {
        return C.QNetworkProxyQuery_new();
    }

    /// New2 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` requestUrl: ?*C.QUrl ```
    pub fn New2(requestUrl: ?*anyopaque) ?*C.QNetworkProxyQuery {
        return C.QNetworkProxyQuery_new2(@ptrCast(requestUrl));
    }

    /// New3 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` hostname: []const u8, port: i32 ```
    pub fn New3(hostname: []const u8, port: i32) ?*C.QNetworkProxyQuery {
        const hostname_str = C.struct_libqt_string{
            .len = hostname.len,
            .data = @constCast(hostname.ptr),
        };

        return C.QNetworkProxyQuery_new3(hostname_str, @intCast(port));
    }

    /// New4 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` bindPort: u16 ```
    pub fn New4(bindPort: u16) ?*C.QNetworkProxyQuery {
        return C.QNetworkProxyQuery_new4(@intCast(bindPort));
    }

    /// New5 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` other: ?*C.QNetworkProxyQuery ```
    pub fn New5(other: ?*anyopaque) ?*C.QNetworkProxyQuery {
        return C.QNetworkProxyQuery_new5(@ptrCast(other));
    }

    /// New6 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` requestUrl: ?*C.QUrl, queryType: qnetworkproxy_enums.QueryType ```
    pub fn New6(requestUrl: ?*anyopaque, queryType: i64) ?*C.QNetworkProxyQuery {
        return C.QNetworkProxyQuery_new6(@ptrCast(requestUrl), @intCast(queryType));
    }

    /// New7 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` hostname: []const u8, port: i32, protocolTag: []const u8 ```
    pub fn New7(hostname: []const u8, port: i32, protocolTag: []const u8) ?*C.QNetworkProxyQuery {
        const hostname_str = C.struct_libqt_string{
            .len = hostname.len,
            .data = @constCast(hostname.ptr),
        };
        const protocolTag_str = C.struct_libqt_string{
            .len = protocolTag.len,
            .data = @constCast(protocolTag.ptr),
        };

        return C.QNetworkProxyQuery_new7(hostname_str, @intCast(port), protocolTag_str);
    }

    /// New8 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` hostname: []const u8, port: i32, protocolTag: []const u8, queryType: qnetworkproxy_enums.QueryType ```
    pub fn New8(hostname: []const u8, port: i32, protocolTag: []const u8, queryType: i64) ?*C.QNetworkProxyQuery {
        const hostname_str = C.struct_libqt_string{
            .len = hostname.len,
            .data = @constCast(hostname.ptr),
        };
        const protocolTag_str = C.struct_libqt_string{
            .len = protocolTag.len,
            .data = @constCast(protocolTag.ptr),
        };

        return C.QNetworkProxyQuery_new8(hostname_str, @intCast(port), protocolTag_str, @intCast(queryType));
    }

    /// New9 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` bindPort: u16, protocolTag: []const u8 ```
    pub fn New9(bindPort: u16, protocolTag: []const u8) ?*C.QNetworkProxyQuery {
        const protocolTag_str = C.struct_libqt_string{
            .len = protocolTag.len,
            .data = @constCast(protocolTag.ptr),
        };

        return C.QNetworkProxyQuery_new9(@intCast(bindPort), protocolTag_str);
    }

    /// New10 constructs a new QNetworkProxyQuery object.
    ///
    /// ``` bindPort: u16, protocolTag: []const u8, queryType: qnetworkproxy_enums.QueryType ```
    pub fn New10(bindPort: u16, protocolTag: []const u8, queryType: i64) ?*C.QNetworkProxyQuery {
        const protocolTag_str = C.struct_libqt_string{
            .len = protocolTag.len,
            .data = @constCast(protocolTag.ptr),
        };

        return C.QNetworkProxyQuery_new10(@intCast(bindPort), protocolTag_str, @intCast(queryType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, other: ?*C.QNetworkProxyQuery ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkProxyQuery_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#swap)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, other: ?*C.QNetworkProxyQuery ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkProxyQuery_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#operator==)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, other: ?*C.QNetworkProxyQuery ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkProxyQuery_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#operator!=)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, other: ?*C.QNetworkProxyQuery ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkProxyQuery_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#queryType)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery ```
    pub fn QueryType(self: ?*anyopaque) i64 {
        return C.QNetworkProxyQuery_QueryType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setQueryType)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, typeVal: qnetworkproxy_enums.QueryType ```
    pub fn SetQueryType(self: ?*anyopaque, typeVal: i64) void {
        C.QNetworkProxyQuery_SetQueryType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#peerPort)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery ```
    pub fn PeerPort(self: ?*anyopaque) i32 {
        return C.QNetworkProxyQuery_PeerPort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setPeerPort)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, port: i32 ```
    pub fn SetPeerPort(self: ?*anyopaque, port: i32) void {
        C.QNetworkProxyQuery_SetPeerPort(@ptrCast(self), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#peerHostName)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn PeerHostName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkProxyQuery_PeerHostName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setPeerHostName)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, hostname: []const u8 ```
    pub fn SetPeerHostName(self: ?*anyopaque, hostname: []const u8) void {
        const hostname_str = C.struct_libqt_string{
            .len = hostname.len,
            .data = @constCast(hostname.ptr),
        };
        C.QNetworkProxyQuery_SetPeerHostName(@ptrCast(self), hostname_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#localPort)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery ```
    pub fn LocalPort(self: ?*anyopaque) i32 {
        return C.QNetworkProxyQuery_LocalPort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setLocalPort)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, port: i32 ```
    pub fn SetLocalPort(self: ?*anyopaque, port: i32) void {
        C.QNetworkProxyQuery_SetLocalPort(@ptrCast(self), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#protocolTag)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn ProtocolTag(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkProxyQuery_ProtocolTag(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setProtocolTag)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, protocolTag: []const u8 ```
    pub fn SetProtocolTag(self: ?*anyopaque, protocolTag: []const u8) void {
        const protocolTag_str = C.struct_libqt_string{
            .len = protocolTag.len,
            .data = @constCast(protocolTag.ptr),
        };
        C.QNetworkProxyQuery_SetProtocolTag(@ptrCast(self), protocolTag_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#url)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QNetworkProxyQuery_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyquery.html#setUrl)
    ///
    /// ``` self: ?*C.QNetworkProxyQuery, url: ?*C.QUrl ```
    pub fn SetUrl(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QNetworkProxyQuery_SetUrl(@ptrCast(self), @ptrCast(url));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkProxyQuery ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkProxyQuery_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkproxy.html
pub const qnetworkproxy = struct {
    /// New constructs a new QNetworkProxy object.
    ///
    ///
    pub fn New() ?*C.QNetworkProxy {
        return C.QNetworkProxy_new();
    }

    /// New2 constructs a new QNetworkProxy object.
    ///
    /// ``` typeVal: qnetworkproxy_enums.ProxyType ```
    pub fn New2(typeVal: i64) ?*C.QNetworkProxy {
        return C.QNetworkProxy_new2(@intCast(typeVal));
    }

    /// New3 constructs a new QNetworkProxy object.
    ///
    /// ``` other: ?*C.QNetworkProxy ```
    pub fn New3(other: ?*anyopaque) ?*C.QNetworkProxy {
        return C.QNetworkProxy_new3(@ptrCast(other));
    }

    /// New4 constructs a new QNetworkProxy object.
    ///
    /// ``` typeVal: qnetworkproxy_enums.ProxyType, hostName: []const u8 ```
    pub fn New4(typeVal: i64, hostName: []const u8) ?*C.QNetworkProxy {
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };

        return C.QNetworkProxy_new4(@intCast(typeVal), hostName_str);
    }

    /// New5 constructs a new QNetworkProxy object.
    ///
    /// ``` typeVal: qnetworkproxy_enums.ProxyType, hostName: []const u8, port: u16 ```
    pub fn New5(typeVal: i64, hostName: []const u8, port: u16) ?*C.QNetworkProxy {
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };

        return C.QNetworkProxy_new5(@intCast(typeVal), hostName_str, @intCast(port));
    }

    /// New6 constructs a new QNetworkProxy object.
    ///
    /// ``` typeVal: qnetworkproxy_enums.ProxyType, hostName: []const u8, port: u16, user: []const u8 ```
    pub fn New6(typeVal: i64, hostName: []const u8, port: u16, user: []const u8) ?*C.QNetworkProxy {
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };
        const user_str = C.struct_libqt_string{
            .len = user.len,
            .data = @constCast(user.ptr),
        };

        return C.QNetworkProxy_new6(@intCast(typeVal), hostName_str, @intCast(port), user_str);
    }

    /// New7 constructs a new QNetworkProxy object.
    ///
    /// ``` typeVal: qnetworkproxy_enums.ProxyType, hostName: []const u8, port: u16, user: []const u8, password: []const u8 ```
    pub fn New7(typeVal: i64, hostName: []const u8, port: u16, user: []const u8, password: []const u8) ?*C.QNetworkProxy {
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };
        const user_str = C.struct_libqt_string{
            .len = user.len,
            .data = @constCast(user.ptr),
        };
        const password_str = C.struct_libqt_string{
            .len = password.len,
            .data = @constCast(password.ptr),
        };

        return C.QNetworkProxy_new7(@intCast(typeVal), hostName_str, @intCast(port), user_str, password_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkProxy, other: ?*C.QNetworkProxy ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkProxy_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#swap)
    ///
    /// ``` self: ?*C.QNetworkProxy, other: ?*C.QNetworkProxy ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkProxy_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#operator==)
    ///
    /// ``` self: ?*C.QNetworkProxy, other: ?*C.QNetworkProxy ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkProxy_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#operator!=)
    ///
    /// ``` self: ?*C.QNetworkProxy, other: ?*C.QNetworkProxy ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkProxy_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setType)
    ///
    /// ``` self: ?*C.QNetworkProxy, typeVal: qnetworkproxy_enums.ProxyType ```
    pub fn SetType(self: ?*anyopaque, typeVal: i64) void {
        C.QNetworkProxy_SetType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#type)
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QNetworkProxy_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setCapabilities)
    ///
    /// ``` self: ?*C.QNetworkProxy, capab: i32 ```
    pub fn SetCapabilities(self: ?*anyopaque, capab: i64) void {
        C.QNetworkProxy_SetCapabilities(@ptrCast(self), @intCast(capab));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#capabilities)
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn Capabilities(self: ?*anyopaque) i64 {
        return C.QNetworkProxy_Capabilities(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#isCachingProxy)
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn IsCachingProxy(self: ?*anyopaque) bool {
        return C.QNetworkProxy_IsCachingProxy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#isTransparentProxy)
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn IsTransparentProxy(self: ?*anyopaque) bool {
        return C.QNetworkProxy_IsTransparentProxy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setUser)
    ///
    /// ``` self: ?*C.QNetworkProxy, userName: []const u8 ```
    pub fn SetUser(self: ?*anyopaque, userName: []const u8) void {
        const userName_str = C.struct_libqt_string{
            .len = userName.len,
            .data = @constCast(userName.ptr),
        };
        C.QNetworkProxy_SetUser(@ptrCast(self), userName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#user)
    ///
    /// ``` self: ?*C.QNetworkProxy, allocator: std.mem.Allocator ```
    pub fn User(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkProxy_User(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setPassword)
    ///
    /// ``` self: ?*C.QNetworkProxy, password: []const u8 ```
    pub fn SetPassword(self: ?*anyopaque, password: []const u8) void {
        const password_str = C.struct_libqt_string{
            .len = password.len,
            .data = @constCast(password.ptr),
        };
        C.QNetworkProxy_SetPassword(@ptrCast(self), password_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#password)
    ///
    /// ``` self: ?*C.QNetworkProxy, allocator: std.mem.Allocator ```
    pub fn Password(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkProxy_Password(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setHostName)
    ///
    /// ``` self: ?*C.QNetworkProxy, hostName: []const u8 ```
    pub fn SetHostName(self: ?*anyopaque, hostName: []const u8) void {
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };
        C.QNetworkProxy_SetHostName(@ptrCast(self), hostName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#hostName)
    ///
    /// ``` self: ?*C.QNetworkProxy, allocator: std.mem.Allocator ```
    pub fn HostName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkProxy_HostName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setPort)
    ///
    /// ``` self: ?*C.QNetworkProxy, port: u16 ```
    pub fn SetPort(self: ?*anyopaque, port: u16) void {
        C.QNetworkProxy_SetPort(@ptrCast(self), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#port)
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn Port(self: ?*anyopaque) u16 {
        return C.QNetworkProxy_Port(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setApplicationProxy)
    ///
    /// ``` proxy: ?*C.QNetworkProxy ```
    pub fn SetApplicationProxy(proxy: ?*anyopaque) void {
        C.QNetworkProxy_SetApplicationProxy(@ptrCast(proxy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#applicationProxy)
    ///
    ///
    pub fn ApplicationProxy() ?*C.QNetworkProxy {
        return C.QNetworkProxy_ApplicationProxy();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#header)
    ///
    /// ``` self: ?*C.QNetworkProxy, header: qnetworkrequest_enums.KnownHeaders ```
    pub fn Header(self: ?*anyopaque, header: i64) ?*C.QVariant {
        return C.QNetworkProxy_Header(@ptrCast(self), @intCast(header));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setHeader)
    ///
    /// ``` self: ?*C.QNetworkProxy, header: qnetworkrequest_enums.KnownHeaders, value: ?*C.QVariant ```
    pub fn SetHeader(self: ?*anyopaque, header: i64, value: ?*anyopaque) void {
        C.QNetworkProxy_SetHeader(@ptrCast(self), @intCast(header), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#hasRawHeader)
    ///
    /// ``` self: ?*C.QNetworkProxy, headerName: []u8 ```
    pub fn HasRawHeader(self: ?*anyopaque, headerName: []u8) bool {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        return C.QNetworkProxy_HasRawHeader(@ptrCast(self), headerName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#rawHeaderList)
    ///
    /// ``` self: ?*C.QNetworkProxy, allocator: std.mem.Allocator ```
    pub fn RawHeaderList(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QNetworkProxy_RawHeaderList(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#rawHeader)
    ///
    /// ``` self: ?*C.QNetworkProxy, headerName: []u8, allocator: std.mem.Allocator ```
    pub fn RawHeader(self: ?*anyopaque, headerName: []u8, allocator: std.mem.Allocator) []u8 {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QNetworkProxy_RawHeader(@ptrCast(self), headerName_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxy.html#setRawHeader)
    ///
    /// ``` self: ?*C.QNetworkProxy, headerName: []u8, value: []u8 ```
    pub fn SetRawHeader(self: ?*anyopaque, headerName: []u8, value: []u8) void {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QNetworkProxy_SetRawHeader(@ptrCast(self), headerName_str, value_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkProxy ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkProxy_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkproxyfactory.html
pub const qnetworkproxyfactory = struct {
    /// New constructs a new QNetworkProxyFactory object.
    ///
    ///
    pub fn New() ?*C.QNetworkProxyFactory {
        return C.QNetworkProxyFactory_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#queryProxy)
    ///
    /// ``` self: ?*C.QNetworkProxyFactory, query: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn QueryProxy(self: ?*anyopaque, query: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QNetworkProxy {
        const _arr: C.struct_libqt_list = C.QNetworkProxyFactory_QueryProxy(@ptrCast(self), @ptrCast(query));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkProxy, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkProxy = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QNetworkProxyFactory, slot: fn (?*C.QNetworkProxyFactory, ?*C.QNetworkProxyQuery) callconv(.c) []?*C.QNetworkProxy ```
    pub fn OnQueryProxy(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) []?*C.QNetworkProxy) void {
        C.QNetworkProxyFactory_OnQueryProxy(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QNetworkProxyFactory, query: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn QBaseQueryProxy(self: ?*anyopaque, query: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QNetworkProxy {
        const _arr: C.struct_libqt_list = C.QNetworkProxyFactory_QBaseQueryProxy(@ptrCast(self), @ptrCast(query));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkProxy, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkProxy = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#usesSystemConfiguration)
    ///
    ///
    pub fn UsesSystemConfiguration() bool {
        return C.QNetworkProxyFactory_UsesSystemConfiguration();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#setUseSystemConfiguration)
    ///
    /// ``` enable: bool ```
    pub fn SetUseSystemConfiguration(enable: bool) void {
        C.QNetworkProxyFactory_SetUseSystemConfiguration(enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#setApplicationProxyFactory)
    ///
    /// ``` factory: ?*C.QNetworkProxyFactory ```
    pub fn SetApplicationProxyFactory(factory: ?*anyopaque) void {
        C.QNetworkProxyFactory_SetApplicationProxyFactory(@ptrCast(factory));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#proxyForQuery)
    ///
    /// ``` query: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn ProxyForQuery(query: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QNetworkProxy {
        const _arr: C.struct_libqt_list = C.QNetworkProxyFactory_ProxyForQuery(@ptrCast(query));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkProxy, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkProxy = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#systemProxyForQuery)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SystemProxyForQuery(allocator: std.mem.Allocator) []?*C.QNetworkProxy {
        const _arr: C.struct_libqt_list = C.QNetworkProxyFactory_SystemProxyForQuery();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkProxy, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkProxy = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkProxyFactory, param1: ?*C.QNetworkProxyFactory ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QNetworkProxyFactory_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkproxyfactory.html#systemProxyForQuery)
    ///
    /// ``` query: ?*C.QNetworkProxyQuery, allocator: std.mem.Allocator ```
    pub fn SystemProxyForQuery1(query: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QNetworkProxy {
        const _arr: C.struct_libqt_list = C.QNetworkProxyFactory_SystemProxyForQuery1(@ptrCast(query));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkProxy, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkProxy = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkProxyFactory ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkProxyFactory_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkproxy.html#types
pub const enums = struct {
    pub const QueryType = enum {
        pub const TcpSocket: i32 = 0;
        pub const UdpSocket: i32 = 1;
        pub const SctpSocket: i32 = 2;
        pub const TcpServer: i32 = 100;
        pub const UrlRequest: i32 = 101;
        pub const SctpServer: i32 = 102;
    };

    pub const ProxyType = enum {
        pub const DefaultProxy: i32 = 0;
        pub const Socks5Proxy: i32 = 1;
        pub const NoProxy: i32 = 2;
        pub const HttpProxy: i32 = 3;
        pub const HttpCachingProxy: i32 = 4;
        pub const FtpCachingProxy: i32 = 5;
    };

    pub const Capability = enum {
        pub const TunnelingCapability: i32 = 1;
        pub const ListeningCapability: i32 = 2;
        pub const UdpTunnelingCapability: i32 = 4;
        pub const CachingCapability: i32 = 8;
        pub const HostNameLookupCapability: i32 = 16;
        pub const SctpTunnelingCapability: i32 = 32;
        pub const SctpListeningCapability: i32 = 64;
    };
};
