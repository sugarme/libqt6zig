const C = @import("qt6c");
const qnetworkrequest_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qnetworkrequest.html
pub const qnetworkrequest = struct {
    /// New constructs a new QNetworkRequest object.
    ///
    ///
    pub fn New() ?*C.QNetworkRequest {
        return C.QNetworkRequest_new();
    }

    /// New2 constructs a new QNetworkRequest object.
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn New2(url: ?*anyopaque) ?*C.QNetworkRequest {
        return C.QNetworkRequest_new2(@ptrCast(url));
    }

    /// New3 constructs a new QNetworkRequest object.
    ///
    /// ``` other: ?*C.QNetworkRequest ```
    pub fn New3(other: ?*anyopaque) ?*C.QNetworkRequest {
        return C.QNetworkRequest_new3(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkRequest, other: ?*C.QNetworkRequest ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkRequest_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#swap)
    ///
    /// ``` self: ?*C.QNetworkRequest, other: ?*C.QNetworkRequest ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkRequest_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#operator==)
    ///
    /// ``` self: ?*C.QNetworkRequest, other: ?*C.QNetworkRequest ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkRequest_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#operator!=)
    ///
    /// ``` self: ?*C.QNetworkRequest, other: ?*C.QNetworkRequest ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkRequest_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#url)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QNetworkRequest_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setUrl)
    ///
    /// ``` self: ?*C.QNetworkRequest, url: ?*C.QUrl ```
    pub fn SetUrl(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QNetworkRequest_SetUrl(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#header)
    ///
    /// ``` self: ?*C.QNetworkRequest, header: qnetworkrequest_enums.KnownHeaders ```
    pub fn Header(self: ?*anyopaque, header: i64) ?*C.QVariant {
        return C.QNetworkRequest_Header(@ptrCast(self), @intCast(header));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setHeader)
    ///
    /// ``` self: ?*C.QNetworkRequest, header: qnetworkrequest_enums.KnownHeaders, value: ?*C.QVariant ```
    pub fn SetHeader(self: ?*anyopaque, header: i64, value: ?*anyopaque) void {
        C.QNetworkRequest_SetHeader(@ptrCast(self), @intCast(header), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#hasRawHeader)
    ///
    /// ``` self: ?*C.QNetworkRequest, headerName: []u8 ```
    pub fn HasRawHeader(self: ?*anyopaque, headerName: []u8) bool {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        return C.QNetworkRequest_HasRawHeader(@ptrCast(self), headerName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#rawHeaderList)
    ///
    /// ``` self: ?*C.QNetworkRequest, allocator: std.mem.Allocator ```
    pub fn RawHeaderList(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QNetworkRequest_RawHeaderList(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#rawHeader)
    ///
    /// ``` self: ?*C.QNetworkRequest, headerName: []u8, allocator: std.mem.Allocator ```
    pub fn RawHeader(self: ?*anyopaque, headerName: []u8, allocator: std.mem.Allocator) []u8 {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QNetworkRequest_RawHeader(@ptrCast(self), headerName_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setRawHeader)
    ///
    /// ``` self: ?*C.QNetworkRequest, headerName: []u8, value: []u8 ```
    pub fn SetRawHeader(self: ?*anyopaque, headerName: []u8, value: []u8) void {
        const headerName_str = C.struct_libqt_string{
            .len = headerName.len,
            .data = @constCast(headerName.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QNetworkRequest_SetRawHeader(@ptrCast(self), headerName_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#attribute)
    ///
    /// ``` self: ?*C.QNetworkRequest, code: qnetworkrequest_enums.Attribute ```
    pub fn Attribute(self: ?*anyopaque, code: i64) ?*C.QVariant {
        return C.QNetworkRequest_Attribute(@ptrCast(self), @intCast(code));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setAttribute)
    ///
    /// ``` self: ?*C.QNetworkRequest, code: qnetworkrequest_enums.Attribute, value: ?*C.QVariant ```
    pub fn SetAttribute(self: ?*anyopaque, code: i64, value: ?*anyopaque) void {
        C.QNetworkRequest_SetAttribute(@ptrCast(self), @intCast(code), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#sslConfiguration)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn SslConfiguration(self: ?*anyopaque) ?*C.QSslConfiguration {
        return C.QNetworkRequest_SslConfiguration(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setSslConfiguration)
    ///
    /// ``` self: ?*C.QNetworkRequest, configuration: ?*C.QSslConfiguration ```
    pub fn SetSslConfiguration(self: ?*anyopaque, configuration: ?*anyopaque) void {
        C.QNetworkRequest_SetSslConfiguration(@ptrCast(self), @ptrCast(configuration));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setOriginatingObject)
    ///
    /// ``` self: ?*C.QNetworkRequest, object: ?*C.QObject ```
    pub fn SetOriginatingObject(self: ?*anyopaque, object: ?*anyopaque) void {
        C.QNetworkRequest_SetOriginatingObject(@ptrCast(self), @ptrCast(object));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#originatingObject)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn OriginatingObject(self: ?*anyopaque) ?*C.QObject {
        return C.QNetworkRequest_OriginatingObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#priority)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn Priority(self: ?*anyopaque) i64 {
        return C.QNetworkRequest_Priority(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setPriority)
    ///
    /// ``` self: ?*C.QNetworkRequest, priority: qnetworkrequest_enums.Priority ```
    pub fn SetPriority(self: ?*anyopaque, priority: i64) void {
        C.QNetworkRequest_SetPriority(@ptrCast(self), @intCast(priority));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#maximumRedirectsAllowed)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn MaximumRedirectsAllowed(self: ?*anyopaque) i32 {
        return C.QNetworkRequest_MaximumRedirectsAllowed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setMaximumRedirectsAllowed)
    ///
    /// ``` self: ?*C.QNetworkRequest, maximumRedirectsAllowed: i32 ```
    pub fn SetMaximumRedirectsAllowed(self: ?*anyopaque, maximumRedirectsAllowed: i32) void {
        C.QNetworkRequest_SetMaximumRedirectsAllowed(@ptrCast(self), @intCast(maximumRedirectsAllowed));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#peerVerifyName)
    ///
    /// ``` self: ?*C.QNetworkRequest, allocator: std.mem.Allocator ```
    pub fn PeerVerifyName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkRequest_PeerVerifyName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setPeerVerifyName)
    ///
    /// ``` self: ?*C.QNetworkRequest, peerName: []const u8 ```
    pub fn SetPeerVerifyName(self: ?*anyopaque, peerName: []const u8) void {
        const peerName_str = C.struct_libqt_string{
            .len = peerName.len,
            .data = @constCast(peerName.ptr),
        };
        C.QNetworkRequest_SetPeerVerifyName(@ptrCast(self), peerName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#http2Configuration)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn Http2Configuration(self: ?*anyopaque) ?*C.QHttp2Configuration {
        return C.QNetworkRequest_Http2Configuration(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setHttp2Configuration)
    ///
    /// ``` self: ?*C.QNetworkRequest, configuration: ?*C.QHttp2Configuration ```
    pub fn SetHttp2Configuration(self: ?*anyopaque, configuration: ?*anyopaque) void {
        C.QNetworkRequest_SetHttp2Configuration(@ptrCast(self), @ptrCast(configuration));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#decompressedSafetyCheckThreshold)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn DecompressedSafetyCheckThreshold(self: ?*anyopaque) i64 {
        return C.QNetworkRequest_DecompressedSafetyCheckThreshold(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setDecompressedSafetyCheckThreshold)
    ///
    /// ``` self: ?*C.QNetworkRequest, threshold: i64 ```
    pub fn SetDecompressedSafetyCheckThreshold(self: ?*anyopaque, threshold: i64) void {
        C.QNetworkRequest_SetDecompressedSafetyCheckThreshold(@ptrCast(self), @intCast(threshold));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#transferTimeout)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn TransferTimeout(self: ?*anyopaque) i32 {
        return C.QNetworkRequest_TransferTimeout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setTransferTimeout)
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn SetTransferTimeout(self: ?*anyopaque) void {
        C.QNetworkRequest_SetTransferTimeout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#attribute)
    ///
    /// ``` self: ?*C.QNetworkRequest, code: qnetworkrequest_enums.Attribute, defaultValue: ?*C.QVariant ```
    pub fn Attribute2(self: ?*anyopaque, code: i64, defaultValue: ?*anyopaque) ?*C.QVariant {
        return C.QNetworkRequest_Attribute2(@ptrCast(self), @intCast(code), @ptrCast(defaultValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkrequest.html#setTransferTimeout)
    ///
    /// ``` self: ?*C.QNetworkRequest, timeout: i32 ```
    pub fn SetTransferTimeout1(self: ?*anyopaque, timeout: i32) void {
        C.QNetworkRequest_SetTransferTimeout1(@ptrCast(self), @intCast(timeout));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkRequest_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkrequest.html#types
pub const enums = struct {
    pub const KnownHeaders = enum {
        pub const ContentTypeHeader: i32 = 0;
        pub const ContentLengthHeader: i32 = 1;
        pub const LocationHeader: i32 = 2;
        pub const LastModifiedHeader: i32 = 3;
        pub const CookieHeader: i32 = 4;
        pub const SetCookieHeader: i32 = 5;
        pub const ContentDispositionHeader: i32 = 6;
        pub const UserAgentHeader: i32 = 7;
        pub const ServerHeader: i32 = 8;
        pub const IfModifiedSinceHeader: i32 = 9;
        pub const ETagHeader: i32 = 10;
        pub const IfMatchHeader: i32 = 11;
        pub const IfNoneMatchHeader: i32 = 12;
    };

    pub const Attribute = enum {
        pub const HttpStatusCodeAttribute: i32 = 0;
        pub const HttpReasonPhraseAttribute: i32 = 1;
        pub const RedirectionTargetAttribute: i32 = 2;
        pub const ConnectionEncryptedAttribute: i32 = 3;
        pub const CacheLoadControlAttribute: i32 = 4;
        pub const CacheSaveControlAttribute: i32 = 5;
        pub const SourceIsFromCacheAttribute: i32 = 6;
        pub const DoNotBufferUploadDataAttribute: i32 = 7;
        pub const HttpPipeliningAllowedAttribute: i32 = 8;
        pub const HttpPipeliningWasUsedAttribute: i32 = 9;
        pub const CustomVerbAttribute: i32 = 10;
        pub const CookieLoadControlAttribute: i32 = 11;
        pub const AuthenticationReuseAttribute: i32 = 12;
        pub const CookieSaveControlAttribute: i32 = 13;
        pub const MaximumDownloadBufferSizeAttribute: i32 = 14;
        pub const DownloadBufferAttribute: i32 = 15;
        pub const SynchronousRequestAttribute: i32 = 16;
        pub const BackgroundRequestAttribute: i32 = 17;
        pub const EmitAllUploadProgressSignalsAttribute: i32 = 18;
        pub const Http2AllowedAttribute: i32 = 19;
        pub const Http2WasUsedAttribute: i32 = 20;
        pub const OriginalContentLengthAttribute: i32 = 21;
        pub const RedirectPolicyAttribute: i32 = 22;
        pub const Http2DirectAttribute: i32 = 23;
        pub const ResourceTypeAttribute: i32 = 24;
        pub const AutoDeleteReplyOnFinishAttribute: i32 = 25;
        pub const ConnectionCacheExpiryTimeoutSecondsAttribute: i32 = 26;
        pub const Http2CleartextAllowedAttribute: i32 = 27;
        pub const User: i32 = 1000;
        pub const UserMax: i32 = 32767;
    };

    pub const CacheLoadControl = enum {
        pub const AlwaysNetwork: i32 = 0;
        pub const PreferNetwork: i32 = 1;
        pub const PreferCache: i32 = 2;
        pub const AlwaysCache: i32 = 3;
    };

    pub const LoadControl = enum {
        pub const Automatic: i32 = 0;
        pub const Manual: i32 = 1;
    };

    pub const Priority = enum {
        pub const HighPriority: i32 = 1;
        pub const NormalPriority: i32 = 3;
        pub const LowPriority: i32 = 5;
    };

    pub const RedirectPolicy = enum {
        pub const ManualRedirectPolicy: i32 = 0;
        pub const NoLessSafeRedirectPolicy: i32 = 1;
        pub const SameOriginRedirectPolicy: i32 = 2;
        pub const UserVerifiedRedirectPolicy: i32 = 3;
    };

    pub const TransferTimeoutConstant = enum {
        pub const DefaultTransferTimeoutConstant: i32 = 30000;
    };
};
