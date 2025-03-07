const C = @import("qt6c");
const qwebengineurlrequestinfo_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html
pub const qwebengineurlrequestinfo = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#resourceType)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn ResourceType(self: ?*anyopaque) i64 {
        return C.QWebEngineUrlRequestInfo_ResourceType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#navigationType)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn NavigationType(self: ?*anyopaque) i64 {
        return C.QWebEngineUrlRequestInfo_NavigationType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#requestUrl)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn RequestUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineUrlRequestInfo_RequestUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#firstPartyUrl)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn FirstPartyUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineUrlRequestInfo_FirstPartyUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#initiator)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn Initiator(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineUrlRequestInfo_Initiator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#requestMethod)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo, allocator: std.mem.Allocator ```
    pub fn RequestMethod(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QWebEngineUrlRequestInfo_RequestMethod(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#changed)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo ```
    pub fn Changed(self: ?*anyopaque) bool {
        return C.QWebEngineUrlRequestInfo_Changed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#block)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo, shouldBlock: bool ```
    pub fn Block(self: ?*anyopaque, shouldBlock: bool) void {
        C.QWebEngineUrlRequestInfo_Block(@ptrCast(self), shouldBlock);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#redirect)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo, url: ?*C.QUrl ```
    pub fn Redirect(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QWebEngineUrlRequestInfo_Redirect(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#setHttpHeader)
    ///
    /// ``` self: ?*C.QWebEngineUrlRequestInfo, name: []u8, value: []u8 ```
    pub fn SetHttpHeader(self: ?*anyopaque, name: []u8, value: []u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QWebEngineUrlRequestInfo_SetHttpHeader(@ptrCast(self), name_str, value_str);
    }
};

/// https://doc.qt.io/qt-6/qwebengineurlrequestinfo.html#types
pub const enums = struct {
    pub const ResourceType = enum {
        pub const ResourceTypeMainFrame: i32 = 0;
        pub const ResourceTypeSubFrame: i32 = 1;
        pub const ResourceTypeStylesheet: i32 = 2;
        pub const ResourceTypeScript: i32 = 3;
        pub const ResourceTypeImage: i32 = 4;
        pub const ResourceTypeFontResource: i32 = 5;
        pub const ResourceTypeSubResource: i32 = 6;
        pub const ResourceTypeObject: i32 = 7;
        pub const ResourceTypeMedia: i32 = 8;
        pub const ResourceTypeWorker: i32 = 9;
        pub const ResourceTypeSharedWorker: i32 = 10;
        pub const ResourceTypePrefetch: i32 = 11;
        pub const ResourceTypeFavicon: i32 = 12;
        pub const ResourceTypeXhr: i32 = 13;
        pub const ResourceTypePing: i32 = 14;
        pub const ResourceTypeServiceWorker: i32 = 15;
        pub const ResourceTypeCspReport: i32 = 16;
        pub const ResourceTypePluginResource: i32 = 17;
        pub const ResourceTypeNavigationPreloadMainFrame: i32 = 19;
        pub const ResourceTypeNavigationPreloadSubFrame: i32 = 20;
        pub const ResourceTypeLast: i32 = 20;
        pub const ResourceTypeWebSocket: i32 = 254;
        pub const ResourceTypeUnknown: i32 = 255;
    };

    pub const NavigationType = enum {
        pub const NavigationTypeLink: i32 = 0;
        pub const NavigationTypeTyped: i32 = 1;
        pub const NavigationTypeFormSubmitted: i32 = 2;
        pub const NavigationTypeBackForward: i32 = 3;
        pub const NavigationTypeReload: i32 = 4;
        pub const NavigationTypeOther: i32 = 5;
        pub const NavigationTypeRedirect: i32 = 6;
    };
};
