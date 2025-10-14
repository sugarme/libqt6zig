const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qwebenginecertificateerror_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebenginecertificateerror.html
pub const qwebenginecertificateerror = struct {
    /// New constructs a new QWebEngineCertificateError object.
    ///
    /// ``` other: QtC.QWebEngineCertificateError ```
    pub fn New(other: ?*anyopaque) QtC.QWebEngineCertificateError {
        return qtc.QWebEngineCertificateError_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#operator-eq)
    ///
    /// ``` self: QtC.QWebEngineCertificateError, other: QtC.QWebEngineCertificateError ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QWebEngineCertificateError_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#type)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    ///
    /// Returns: ``` qwebenginecertificateerror_enums.Type ```
    pub fn Type(self: ?*anyopaque) i32 {
        return qtc.QWebEngineCertificateError_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#url)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn Url(self: ?*anyopaque) QtC.QUrl {
        return qtc.QWebEngineCertificateError_Url(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#isOverridable)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn IsOverridable(self: ?*anyopaque) bool {
        return qtc.QWebEngineCertificateError_IsOverridable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#description)
    ///
    /// ``` self: QtC.QWebEngineCertificateError, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QWebEngineCertificateError_Description(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qwebenginecertificateerror.Description: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#isMainFrame)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn IsMainFrame(self: ?*anyopaque) bool {
        return qtc.QWebEngineCertificateError_IsMainFrame(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#defer)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn Defer(self: ?*anyopaque) void {
        qtc.QWebEngineCertificateError_Defer(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#rejectCertificate)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn RejectCertificate(self: ?*anyopaque) void {
        qtc.QWebEngineCertificateError_RejectCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#acceptCertificate)
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn AcceptCertificate(self: ?*anyopaque) void {
        qtc.QWebEngineCertificateError_AcceptCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#certificateChain)
    ///
    /// ``` self: QtC.QWebEngineCertificateError, allocator: std.mem.Allocator ```
    pub fn CertificateChain(self: ?*anyopaque, allocator: std.mem.Allocator) []QtC.QSslCertificate {
        const _arr: qtc.libqt_list = qtc.QWebEngineCertificateError_CertificateChain(@ptrCast(self));
        defer qtc.libqt_free(_arr.data);
        const _ret = allocator.alloc(QtC.QSslCertificate, _arr.len) catch @panic("qwebenginecertificateerror.CertificateChain: Memory allocation failed");
        const _data: [*]QtC.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        @memcpy(_ret, _data[0.._arr.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginecertificateerror.html#dtor.QWebEngineCertificateError)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QWebEngineCertificateError ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QWebEngineCertificateError_Delete(@ptrCast(self));
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
