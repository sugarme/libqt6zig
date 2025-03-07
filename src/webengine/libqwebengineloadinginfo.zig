const C = @import("qt6c");
const qwebengineloadinginfo_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebengineloadinginfo.html
pub const qwebengineloadinginfo = struct {
    /// New constructs a new QWebEngineLoadingInfo object.
    ///
    /// ``` other: ?*C.QWebEngineLoadingInfo ```
    pub fn New(other: ?*anyopaque) ?*C.QWebEngineLoadingInfo {
        return C.QWebEngineLoadingInfo_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo, other: ?*C.QWebEngineLoadingInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineLoadingInfo_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#url)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineLoadingInfo_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#isErrorPage)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn IsErrorPage(self: ?*anyopaque) bool {
        return C.QWebEngineLoadingInfo_IsErrorPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#status)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn Status(self: ?*anyopaque) i64 {
        return C.QWebEngineLoadingInfo_Status(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#errorString)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWebEngineLoadingInfo_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#errorDomain)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn ErrorDomain(self: ?*anyopaque) i64 {
        return C.QWebEngineLoadingInfo_ErrorDomain(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebengineloadinginfo.html#errorCode)
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn ErrorCode(self: ?*anyopaque) i32 {
        return C.QWebEngineLoadingInfo_ErrorCode(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineLoadingInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineLoadingInfo_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebengineloadinginfo.html#types
pub const enums = struct {
    pub const LoadStatus = enum {
        pub const LoadStartedStatus: i32 = 0;
        pub const LoadStoppedStatus: i32 = 1;
        pub const LoadSucceededStatus: i32 = 2;
        pub const LoadFailedStatus: i32 = 3;
    };

    pub const ErrorDomain = enum {
        pub const NoErrorDomain: i32 = 0;
        pub const InternalErrorDomain: i32 = 1;
        pub const ConnectionErrorDomain: i32 = 2;
        pub const CertificateErrorDomain: i32 = 3;
        pub const HttpErrorDomain: i32 = 4;
        pub const FtpErrorDomain: i32 = 5;
        pub const DnsErrorDomain: i32 = 6;
        pub const HttpStatusCodeDomain: i32 = 7;
    };
};
