const C = @import("qt6c");
const qssl_enums = @import("libqssl.zig").enums;
const qsslcertificate_enums = @import("libqsslcertificate.zig").enums;
const qsslconfiguration_enums = enums;
const qsslsocket_enums = @import("libqsslsocket.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslconfiguration.html
pub const qsslconfiguration = struct {
    /// New constructs a new QSslConfiguration object.
    ///
    ///
    pub fn New() ?*C.QSslConfiguration {
        return C.QSslConfiguration_new();
    }

    /// New2 constructs a new QSslConfiguration object.
    ///
    /// ``` other: ?*C.QSslConfiguration ```
    pub fn New2(other: ?*anyopaque) ?*C.QSslConfiguration {
        return C.QSslConfiguration_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#operator=)
    ///
    /// ``` self: ?*C.QSslConfiguration, other: ?*C.QSslConfiguration ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslConfiguration_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#swap)
    ///
    /// ``` self: ?*C.QSslConfiguration, other: ?*C.QSslConfiguration ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslConfiguration_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#operator==)
    ///
    /// ``` self: ?*C.QSslConfiguration, other: ?*C.QSslConfiguration ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslConfiguration_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#operator!=)
    ///
    /// ``` self: ?*C.QSslConfiguration, other: ?*C.QSslConfiguration ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslConfiguration_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#isNull)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSslConfiguration_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#protocol)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn Protocol(self: ?*anyopaque) i64 {
        return C.QSslConfiguration_Protocol(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setProtocol)
    ///
    /// ``` self: ?*C.QSslConfiguration, protocol: qssl_enums.SslProtocol ```
    pub fn SetProtocol(self: ?*anyopaque, protocol: i64) void {
        C.QSslConfiguration_SetProtocol(@ptrCast(self), @intCast(protocol));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#peerVerifyMode)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn PeerVerifyMode(self: ?*anyopaque) i64 {
        return C.QSslConfiguration_PeerVerifyMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setPeerVerifyMode)
    ///
    /// ``` self: ?*C.QSslConfiguration, mode: qsslsocket_enums.PeerVerifyMode ```
    pub fn SetPeerVerifyMode(self: ?*anyopaque, mode: i64) void {
        C.QSslConfiguration_SetPeerVerifyMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#peerVerifyDepth)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn PeerVerifyDepth(self: ?*anyopaque) i32 {
        return C.QSslConfiguration_PeerVerifyDepth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setPeerVerifyDepth)
    ///
    /// ``` self: ?*C.QSslConfiguration, depth: i32 ```
    pub fn SetPeerVerifyDepth(self: ?*anyopaque, depth: i32) void {
        C.QSslConfiguration_SetPeerVerifyDepth(@ptrCast(self), @intCast(depth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#localCertificateChain)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn LocalCertificateChain(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_LocalCertificateChain(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setLocalCertificateChain)
    ///
    /// ``` self: ?*C.QSslConfiguration, localChain: []?*C.QSslCertificate ```
    pub fn SetLocalCertificateChain(self: ?*anyopaque, localChain: []?*C.QSslCertificate) void {
        const localChain_list = C.struct_libqt_list{
            .len = localChain.len,
            .data = @ptrCast(localChain.ptr),
        };
        C.QSslConfiguration_SetLocalCertificateChain(@ptrCast(self), localChain_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#localCertificate)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn LocalCertificate(self: ?*anyopaque) ?*C.QSslCertificate {
        return C.QSslConfiguration_LocalCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setLocalCertificate)
    ///
    /// ``` self: ?*C.QSslConfiguration, certificate: ?*C.QSslCertificate ```
    pub fn SetLocalCertificate(self: ?*anyopaque, certificate: ?*anyopaque) void {
        C.QSslConfiguration_SetLocalCertificate(@ptrCast(self), @ptrCast(certificate));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#peerCertificate)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn PeerCertificate(self: ?*anyopaque) ?*C.QSslCertificate {
        return C.QSslConfiguration_PeerCertificate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#peerCertificateChain)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn PeerCertificateChain(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_PeerCertificateChain(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#sessionCipher)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn SessionCipher(self: ?*anyopaque) ?*C.QSslCipher {
        return C.QSslConfiguration_SessionCipher(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#sessionProtocol)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn SessionProtocol(self: ?*anyopaque) i64 {
        return C.QSslConfiguration_SessionProtocol(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#privateKey)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn PrivateKey(self: ?*anyopaque) ?*C.QSslKey {
        return C.QSslConfiguration_PrivateKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setPrivateKey)
    ///
    /// ``` self: ?*C.QSslConfiguration, key: ?*C.QSslKey ```
    pub fn SetPrivateKey(self: ?*anyopaque, key: ?*anyopaque) void {
        C.QSslConfiguration_SetPrivateKey(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#ciphers)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn Ciphers(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCipher {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_Ciphers(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCipher, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCipher = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setCiphers)
    ///
    /// ``` self: ?*C.QSslConfiguration, ciphers: []?*C.QSslCipher ```
    pub fn SetCiphers(self: ?*anyopaque, ciphers: []?*C.QSslCipher) void {
        const ciphers_list = C.struct_libqt_list{
            .len = ciphers.len,
            .data = @ptrCast(ciphers.ptr),
        };
        C.QSslConfiguration_SetCiphers(@ptrCast(self), ciphers_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setCiphers)
    ///
    /// ``` self: ?*C.QSslConfiguration, ciphers: []const u8 ```
    pub fn SetCiphersWithCiphers(self: ?*anyopaque, ciphers: []const u8) void {
        const ciphers_str = C.struct_libqt_string{
            .len = ciphers.len,
            .data = @constCast(ciphers.ptr),
        };
        C.QSslConfiguration_SetCiphersWithCiphers(@ptrCast(self), ciphers_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#supportedCiphers)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedCiphers(allocator: std.mem.Allocator) []?*C.QSslCipher {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_SupportedCiphers();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCipher, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCipher = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#caCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn CaCertificates(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_CaCertificates(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setCaCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, certificates: []?*C.QSslCertificate ```
    pub fn SetCaCertificates(self: ?*anyopaque, certificates: []?*C.QSslCertificate) void {
        const certificates_list = C.struct_libqt_list{
            .len = certificates.len,
            .data = @ptrCast(certificates.ptr),
        };
        C.QSslConfiguration_SetCaCertificates(@ptrCast(self), certificates_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#addCaCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, path: []const u8 ```
    pub fn AddCaCertificates(self: ?*anyopaque, path: []const u8) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QSslConfiguration_AddCaCertificates(@ptrCast(self), path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#addCaCertificate)
    ///
    /// ``` self: ?*C.QSslConfiguration, certificate: ?*C.QSslCertificate ```
    pub fn AddCaCertificate(self: ?*anyopaque, certificate: ?*anyopaque) void {
        C.QSslConfiguration_AddCaCertificate(@ptrCast(self), @ptrCast(certificate));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#addCaCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, certificates: []?*C.QSslCertificate ```
    pub fn AddCaCertificatesWithCertificates(self: ?*anyopaque, certificates: []?*C.QSslCertificate) void {
        const certificates_list = C.struct_libqt_list{
            .len = certificates.len,
            .data = @ptrCast(certificates.ptr),
        };
        C.QSslConfiguration_AddCaCertificatesWithCertificates(@ptrCast(self), certificates_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#systemCaCertificates)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SystemCaCertificates(allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_SystemCaCertificates();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setSslOption)
    ///
    /// ``` self: ?*C.QSslConfiguration, option: qssl_enums.SslOption, on: bool ```
    pub fn SetSslOption(self: ?*anyopaque, option: i64, on: bool) void {
        C.QSslConfiguration_SetSslOption(@ptrCast(self), @intCast(option), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#testSslOption)
    ///
    /// ``` self: ?*C.QSslConfiguration, option: qssl_enums.SslOption ```
    pub fn TestSslOption(self: ?*anyopaque, option: i64) bool {
        return C.QSslConfiguration_TestSslOption(@ptrCast(self), @intCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#sessionTicket)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn SessionTicket(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslConfiguration_SessionTicket(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setSessionTicket)
    ///
    /// ``` self: ?*C.QSslConfiguration, sessionTicket: []u8 ```
    pub fn SetSessionTicket(self: ?*anyopaque, sessionTicket: []u8) void {
        const sessionTicket_str = C.struct_libqt_string{
            .len = sessionTicket.len,
            .data = @constCast(sessionTicket.ptr),
        };
        C.QSslConfiguration_SetSessionTicket(@ptrCast(self), sessionTicket_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#sessionTicketLifeTimeHint)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn SessionTicketLifeTimeHint(self: ?*anyopaque) i32 {
        return C.QSslConfiguration_SessionTicketLifeTimeHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#ephemeralServerKey)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn EphemeralServerKey(self: ?*anyopaque) ?*C.QSslKey {
        return C.QSslConfiguration_EphemeralServerKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#ellipticCurves)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn EllipticCurves(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslEllipticCurve {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_EllipticCurves(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslEllipticCurve, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslEllipticCurve = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setEllipticCurves)
    ///
    /// ``` self: ?*C.QSslConfiguration, curves: []?*C.QSslEllipticCurve ```
    pub fn SetEllipticCurves(self: ?*anyopaque, curves: []?*C.QSslEllipticCurve) void {
        const curves_list = C.struct_libqt_list{
            .len = curves.len,
            .data = @ptrCast(curves.ptr),
        };
        C.QSslConfiguration_SetEllipticCurves(@ptrCast(self), curves_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#supportedEllipticCurves)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedEllipticCurves(allocator: std.mem.Allocator) []?*C.QSslEllipticCurve {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_SupportedEllipticCurves();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslEllipticCurve, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslEllipticCurve = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#preSharedKeyIdentityHint)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn PreSharedKeyIdentityHint(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslConfiguration_PreSharedKeyIdentityHint(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setPreSharedKeyIdentityHint)
    ///
    /// ``` self: ?*C.QSslConfiguration, hint: []u8 ```
    pub fn SetPreSharedKeyIdentityHint(self: ?*anyopaque, hint: []u8) void {
        const hint_str = C.struct_libqt_string{
            .len = hint.len,
            .data = @constCast(hint.ptr),
        };
        C.QSslConfiguration_SetPreSharedKeyIdentityHint(@ptrCast(self), hint_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#diffieHellmanParameters)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn DiffieHellmanParameters(self: ?*anyopaque) ?*C.QSslDiffieHellmanParameters {
        return C.QSslConfiguration_DiffieHellmanParameters(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setDiffieHellmanParameters)
    ///
    /// ``` self: ?*C.QSslConfiguration, dhparams: ?*C.QSslDiffieHellmanParameters ```
    pub fn SetDiffieHellmanParameters(self: ?*anyopaque, dhparams: ?*anyopaque) void {
        C.QSslConfiguration_SetDiffieHellmanParameters(@ptrCast(self), @ptrCast(dhparams));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setBackendConfigurationOption)
    ///
    /// ``` self: ?*C.QSslConfiguration, name: []u8, value: ?*C.QVariant ```
    pub fn SetBackendConfigurationOption(self: ?*anyopaque, name: []u8, value: ?*anyopaque) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QSslConfiguration_SetBackendConfigurationOption(@ptrCast(self), name_str, @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setBackendConfiguration)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn SetBackendConfiguration(self: ?*anyopaque) void {
        C.QSslConfiguration_SetBackendConfiguration(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#defaultConfiguration)
    ///
    ///
    pub fn DefaultConfiguration() ?*C.QSslConfiguration {
        return C.QSslConfiguration_DefaultConfiguration();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setDefaultConfiguration)
    ///
    /// ``` configuration: ?*C.QSslConfiguration ```
    pub fn SetDefaultConfiguration(configuration: ?*anyopaque) void {
        C.QSslConfiguration_SetDefaultConfiguration(@ptrCast(configuration));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#dtlsCookieVerificationEnabled)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn DtlsCookieVerificationEnabled(self: ?*anyopaque) bool {
        return C.QSslConfiguration_DtlsCookieVerificationEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setDtlsCookieVerificationEnabled)
    ///
    /// ``` self: ?*C.QSslConfiguration, enable: bool ```
    pub fn SetDtlsCookieVerificationEnabled(self: ?*anyopaque, enable: bool) void {
        C.QSslConfiguration_SetDtlsCookieVerificationEnabled(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#defaultDtlsConfiguration)
    ///
    ///
    pub fn DefaultDtlsConfiguration() ?*C.QSslConfiguration {
        return C.QSslConfiguration_DefaultDtlsConfiguration();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setDefaultDtlsConfiguration)
    ///
    /// ``` configuration: ?*C.QSslConfiguration ```
    pub fn SetDefaultDtlsConfiguration(configuration: ?*anyopaque) void {
        C.QSslConfiguration_SetDefaultDtlsConfiguration(@ptrCast(configuration));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#handshakeMustInterruptOnError)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn HandshakeMustInterruptOnError(self: ?*anyopaque) bool {
        return C.QSslConfiguration_HandshakeMustInterruptOnError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setHandshakeMustInterruptOnError)
    ///
    /// ``` self: ?*C.QSslConfiguration, interrupt: bool ```
    pub fn SetHandshakeMustInterruptOnError(self: ?*anyopaque, interrupt: bool) void {
        C.QSslConfiguration_SetHandshakeMustInterruptOnError(@ptrCast(self), interrupt);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#missingCertificateIsFatal)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn MissingCertificateIsFatal(self: ?*anyopaque) bool {
        return C.QSslConfiguration_MissingCertificateIsFatal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setMissingCertificateIsFatal)
    ///
    /// ``` self: ?*C.QSslConfiguration, cannotRecover: bool ```
    pub fn SetMissingCertificateIsFatal(self: ?*anyopaque, cannotRecover: bool) void {
        C.QSslConfiguration_SetMissingCertificateIsFatal(@ptrCast(self), cannotRecover);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setOcspStaplingEnabled)
    ///
    /// ``` self: ?*C.QSslConfiguration, enable: bool ```
    pub fn SetOcspStaplingEnabled(self: ?*anyopaque, enable: bool) void {
        C.QSslConfiguration_SetOcspStaplingEnabled(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#ocspStaplingEnabled)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn OcspStaplingEnabled(self: ?*anyopaque) bool {
        return C.QSslConfiguration_OcspStaplingEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#setAllowedNextProtocols)
    ///
    /// ``` self: ?*C.QSslConfiguration, protocols: [][]u8, allocator: std.mem.Allocator ```
    pub fn SetAllowedNextProtocols(self: ?*anyopaque, protocols: [][]u8, allocator: std.mem.Allocator) void {
        var protocols_arr = allocator.alloc(C.struct_libqt_string, protocols.len) catch @panic("Memory allocation failed");
        defer allocator.free(protocols_arr);
        for (protocols, 0..protocols.len) |item, _i| {
            protocols_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const protocols_list = C.struct_libqt_list{
            .len = protocols.len,
            .data = protocols_arr.ptr,
        };
        C.QSslConfiguration_SetAllowedNextProtocols(@ptrCast(self), protocols_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#allowedNextProtocols)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn AllowedNextProtocols(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QSslConfiguration_AllowedNextProtocols(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#nextNegotiatedProtocol)
    ///
    /// ``` self: ?*C.QSslConfiguration, allocator: std.mem.Allocator ```
    pub fn NextNegotiatedProtocol(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslConfiguration_NextNegotiatedProtocol(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#nextProtocolNegotiationStatus)
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn NextProtocolNegotiationStatus(self: ?*anyopaque) i64 {
        return C.QSslConfiguration_NextProtocolNegotiationStatus(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#addCaCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, path: []const u8, format: qssl_enums.EncodingFormat ```
    pub fn AddCaCertificates2(self: ?*anyopaque, path: []const u8, format: i64) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QSslConfiguration_AddCaCertificates2(@ptrCast(self), path_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslconfiguration.html#addCaCertificates)
    ///
    /// ``` self: ?*C.QSslConfiguration, path: []const u8, format: qssl_enums.EncodingFormat, syntax: qsslcertificate_enums.PatternSyntax ```
    pub fn AddCaCertificates3(self: ?*anyopaque, path: []const u8, format: i64, syntax: i64) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QSslConfiguration_AddCaCertificates3(@ptrCast(self), path_str, @intCast(format), @intCast(syntax));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslConfiguration ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslConfiguration_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsslconfiguration.html#types
pub const enums = struct {
    pub const NextProtocolNegotiationStatus = enum {
        pub const NextProtocolNegotiationNone: i32 = 0;
        pub const NextProtocolNegotiationNegotiated: i32 = 1;
        pub const NextProtocolNegotiationUnsupported: i32 = 2;
    };
};
