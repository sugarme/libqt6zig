const C = @import("qt6c");
const qwebenginecertificateerror_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebenginecertificateerror.html
pub const qwebenginecertificateerror = struct {
    /// New constructs a new QWebEngineCertificateError object.
    ///
    /// ``` other: ?*C.QWebEngineCertificateError ```
    pub fn New(other: ?*anyopaque) ?*C.QWebEngineCertificateError {
        return C.QWebEngineCertificateError_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError, other: ?*C.QWebEngineCertificateError ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineCertificateError_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#type)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QWebEngineCertificateError_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#url)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn Url(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineCertificateError_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#isOverridable)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn IsOverridable(self: ?*anyopaque) bool {
        return C.QWebEngineCertificateError_IsOverridable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#description)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWebEngineCertificateError_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#defer)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn Defer(self: ?*anyopaque) void {
        C.QWebEngineCertificateError_Defer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#rejectCertificate)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn RejectCertificate(self: ?*anyopaque) void {
        C.QWebEngineCertificateError_RejectCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#acceptCertificate)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn AcceptCertificate(self: ?*anyopaque) void {
        C.QWebEngineCertificateError_AcceptCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#certificateChain)
    ///
    /// ``` self: ?*C.QWebEngineCertificateError, allocator: std.mem.Allocator ```
    pub fn CertificateChain(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QWebEngineCertificateError_CertificateChain(@ptrCast(self));
        defer {
            const _obj: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                if (_obj[_i]) |obj| {
                    C.libqt_free(obj);
                }
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineCertificateError ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineCertificateError_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebenginecertificateerror.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const SslPinnedKeyNotInCertificateChain: i32 = -150;
        pub const CertificateCommonNameInvalid: i32 = -200;
        pub const CertificateDateInvalid: i32 = -201;
        pub const CertificateAuthorityInvalid: i32 = -202;
        pub const CertificateContainsErrors: i32 = -203;
        pub const CertificateNoRevocationMechanism: i32 = -204;
        pub const CertificateUnableToCheckRevocation: i32 = -205;
        pub const CertificateRevoked: i32 = -206;
        pub const CertificateInvalid: i32 = -207;
        pub const CertificateWeakSignatureAlgorithm: i32 = -208;
        pub const CertificateNonUniqueName: i32 = -210;
        pub const CertificateWeakKey: i32 = -211;
        pub const CertificateNameConstraintViolation: i32 = -212;
        pub const CertificateValidityTooLong: i32 = -213;
        pub const CertificateTransparencyRequired: i32 = -214;
        pub const CertificateSymantecLegacy: i32 = -215;
        pub const CertificateKnownInterceptionBlocked: i32 = -217;
        pub const SslObsoleteVersion: i32 = -218;
    };
};
