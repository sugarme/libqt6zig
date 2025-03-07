const C = @import("qt6c");
const qocspresponse_enums = enums;

/// https://doc.qt.io/qt-6/qocspresponse.html
pub const qocspresponse = struct {
    /// New constructs a new QOcspResponse object.
    ///
    ///
    pub fn New() ?*C.QOcspResponse {
        return C.QOcspResponse_new();
    }

    /// New2 constructs a new QOcspResponse object.
    ///
    /// ``` other: ?*C.QOcspResponse ```
    pub fn New2(other: ?*anyopaque) ?*C.QOcspResponse {
        return C.QOcspResponse_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#operator=)
    ///
    /// ``` self: ?*C.QOcspResponse, other: ?*C.QOcspResponse ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QOcspResponse_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#certificateStatus)
    ///
    /// ``` self: ?*C.QOcspResponse ```
    pub fn CertificateStatus(self: ?*anyopaque) i64 {
        return C.QOcspResponse_CertificateStatus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#revocationReason)
    ///
    /// ``` self: ?*C.QOcspResponse ```
    pub fn RevocationReason(self: ?*anyopaque) i64 {
        return C.QOcspResponse_RevocationReason(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#responder)
    ///
    /// ``` self: ?*C.QOcspResponse ```
    pub fn Responder(self: ?*anyopaque) ?*C.QSslCertificate {
        return C.QOcspResponse_Responder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#subject)
    ///
    /// ``` self: ?*C.QOcspResponse ```
    pub fn Subject(self: ?*anyopaque) ?*C.QSslCertificate {
        return C.QOcspResponse_Subject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qocspresponse.html#swap)
    ///
    /// ``` self: ?*C.QOcspResponse, other: ?*C.QOcspResponse ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QOcspResponse_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QOcspResponse ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QOcspResponse_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qocspresponse.html#types
pub const enums = struct {
    pub const QOcspCertificateStatus = enum {
        pub const Good: i32 = 0;
        pub const Revoked: i32 = 1;
        pub const Unknown: i32 = 2;
    };

    pub const QOcspRevocationReason = enum {
        pub const None: i32 = -1;
        pub const Unspecified: i32 = 0;
        pub const KeyCompromise: i32 = 1;
        pub const CACompromise: i32 = 2;
        pub const AffiliationChanged: i32 = 3;
        pub const Superseded: i32 = 4;
        pub const CessationOfOperation: i32 = 5;
        pub const CertificateHold: i32 = 6;
        pub const RemoveFromCRL: i32 = 7;
    };
};
