const C = @import("qt6c");
const qcryptographichash_enums = @import("../libqcryptographichash.zig").enums;
const qssl_enums = @import("libqssl.zig").enums;
const qsslcertificate_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslcertificate.html
pub const qsslcertificate = struct {
    /// New constructs a new QSslCertificate object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New(device: ?*anyopaque) ?*C.QSslCertificate {
        return C.QSslCertificate_new(@ptrCast(device));
    }

    /// New2 constructs a new QSslCertificate object.
    ///
    ///
    pub fn New2() ?*C.QSslCertificate {
        return C.QSslCertificate_new2();
    }

    /// New3 constructs a new QSslCertificate object.
    ///
    /// ``` other: ?*C.QSslCertificate ```
    pub fn New3(other: ?*anyopaque) ?*C.QSslCertificate {
        return C.QSslCertificate_new3(@ptrCast(other));
    }

    /// New4 constructs a new QSslCertificate object.
    ///
    /// ``` device: ?*C.QIODevice, format: qssl_enums.EncodingFormat ```
    pub fn New4(device: ?*anyopaque, format: i64) ?*C.QSslCertificate {
        return C.QSslCertificate_new4(@ptrCast(device), @intCast(format));
    }

    /// New5 constructs a new QSslCertificate object.
    ///
    /// ``` data: []u8 ```
    pub fn New5(data: []u8) ?*C.QSslCertificate {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QSslCertificate_new5(data_str);
    }

    /// New6 constructs a new QSslCertificate object.
    ///
    /// ``` data: []u8, format: qssl_enums.EncodingFormat ```
    pub fn New6(data: []u8, format: i64) ?*C.QSslCertificate {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QSslCertificate_new6(data_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#operator=)
    ///
    /// ``` self: ?*C.QSslCertificate, other: ?*C.QSslCertificate ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCertificate_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#swap)
    ///
    /// ``` self: ?*C.QSslCertificate, other: ?*C.QSslCertificate ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslCertificate_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#operator==)
    ///
    /// ``` self: ?*C.QSslCertificate, other: ?*C.QSslCertificate ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslCertificate_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#operator!=)
    ///
    /// ``` self: ?*C.QSslCertificate, other: ?*C.QSslCertificate ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QSslCertificate_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#isNull)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QSslCertificate_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#isBlacklisted)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn IsBlacklisted(self: ?*anyopaque) bool {
        return C.QSslCertificate_IsBlacklisted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#isSelfSigned)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn IsSelfSigned(self: ?*anyopaque) bool {
        return C.QSslCertificate_IsSelfSigned(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#clear)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QSslCertificate_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#version)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn Version(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_Version(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#serialNumber)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn SerialNumber(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_SerialNumber(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#digest)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn Digest(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_Digest(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#issuerInfo)
    ///
    /// ``` self: ?*C.QSslCertificate, info: qsslcertificate_enums.SubjectInfo, allocator: std.mem.Allocator ```
    pub fn IssuerInfo(self: ?*anyopaque, info: i64, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QSslCertificate_IssuerInfo(@ptrCast(self), @intCast(info));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#issuerInfo)
    ///
    /// ``` self: ?*C.QSslCertificate, attribute: []u8, allocator: std.mem.Allocator ```
    pub fn IssuerInfoWithAttribute(self: ?*anyopaque, attribute: []u8, allocator: std.mem.Allocator) [][]const u8 {
        const attribute_str = C.struct_libqt_string{
            .len = attribute.len,
            .data = @constCast(attribute.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_IssuerInfoWithAttribute(@ptrCast(self), attribute_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#subjectInfo)
    ///
    /// ``` self: ?*C.QSslCertificate, info: qsslcertificate_enums.SubjectInfo, allocator: std.mem.Allocator ```
    pub fn SubjectInfo(self: ?*anyopaque, info: i64, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QSslCertificate_SubjectInfo(@ptrCast(self), @intCast(info));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#subjectInfo)
    ///
    /// ``` self: ?*C.QSslCertificate, attribute: []u8, allocator: std.mem.Allocator ```
    pub fn SubjectInfoWithAttribute(self: ?*anyopaque, attribute: []u8, allocator: std.mem.Allocator) [][]const u8 {
        const attribute_str = C.struct_libqt_string{
            .len = attribute.len,
            .data = @constCast(attribute.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_SubjectInfoWithAttribute(@ptrCast(self), attribute_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#issuerDisplayName)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn IssuerDisplayName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCertificate_IssuerDisplayName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#subjectDisplayName)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn SubjectDisplayName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCertificate_SubjectDisplayName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#subjectInfoAttributes)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn SubjectInfoAttributes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QSslCertificate_SubjectInfoAttributes(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#issuerInfoAttributes)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn IssuerInfoAttributes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QSslCertificate_IssuerInfoAttributes(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#effectiveDate)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn EffectiveDate(self: ?*anyopaque) ?*C.QDateTime {
        return C.QSslCertificate_EffectiveDate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#expiryDate)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn ExpiryDate(self: ?*anyopaque) ?*C.QDateTime {
        return C.QSslCertificate_ExpiryDate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#publicKey)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn PublicKey(self: ?*anyopaque) ?*C.QSslKey {
        return C.QSslCertificate_PublicKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#extensions)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn Extensions(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificateExtension {
        const _arr: C.struct_libqt_list = C.QSslCertificate_Extensions(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificateExtension, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificateExtension = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#toPem)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn ToPem(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_ToPem(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#toDer)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn ToDer(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_ToDer(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#toText)
    ///
    /// ``` self: ?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn ToText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslCertificate_ToText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromPath)
    ///
    /// ``` path: []const u8, allocator: std.mem.Allocator ```
    pub fn FromPath(path: []const u8, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromPath(path_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromDevice)
    ///
    /// ``` device: ?*C.QIODevice, allocator: std.mem.Allocator ```
    pub fn FromDevice(device: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromDevice(@ptrCast(device));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromData)
    ///
    /// ``` data: []u8, allocator: std.mem.Allocator ```
    pub fn FromData(data: []u8, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromData(data_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#verify)
    ///
    /// ``` certificateChain: []?*C.QSslCertificate, allocator: std.mem.Allocator ```
    pub fn Verify(certificateChain: []?*C.QSslCertificate, allocator: std.mem.Allocator) []?*C.QSslError {
        const certificateChain_list = C.struct_libqt_list{
            .len = certificateChain.len,
            .data = @ptrCast(certificateChain.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_Verify(certificateChain_list);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslError, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslError = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#importPkcs12)
    ///
    /// ``` device: ?*C.QIODevice, key: ?*C.QSslKey, cert: ?*C.QSslCertificate ```
    pub fn ImportPkcs12(device: ?*anyopaque, key: ?*anyopaque, cert: ?*anyopaque) bool {
        return C.QSslCertificate_ImportPkcs12(@ptrCast(device), @ptrCast(key), @ptrCast(cert));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#handle)
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn Handle(self: ?*anyopaque) ?*anyopaque {
        return C.QSslCertificate_Handle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#digest)
    ///
    /// ``` self: ?*C.QSslCertificate, algorithm: qcryptographichash_enums.Algorithm, allocator: std.mem.Allocator ```
    pub fn Digest1(self: ?*anyopaque, algorithm: i64, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QSslCertificate_Digest1(@ptrCast(self), @intCast(algorithm));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromPath)
    ///
    /// ``` path: []const u8, format: qssl_enums.EncodingFormat, allocator: std.mem.Allocator ```
    pub fn FromPath2(path: []const u8, format: i64, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromPath2(path_str, @intCast(format));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromPath)
    ///
    /// ``` path: []const u8, format: qssl_enums.EncodingFormat, syntax: qsslcertificate_enums.PatternSyntax, allocator: std.mem.Allocator ```
    pub fn FromPath3(path: []const u8, format: i64, syntax: i64, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromPath3(path_str, @intCast(format), @intCast(syntax));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromDevice)
    ///
    /// ``` device: ?*C.QIODevice, format: qssl_enums.EncodingFormat, allocator: std.mem.Allocator ```
    pub fn FromDevice2(device: ?*anyopaque, format: i64, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromDevice2(@ptrCast(device), @intCast(format));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#fromData)
    ///
    /// ``` data: []u8, format: qssl_enums.EncodingFormat, allocator: std.mem.Allocator ```
    pub fn FromData2(data: []u8, format: i64, allocator: std.mem.Allocator) []?*C.QSslCertificate {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_FromData2(data_str, @intCast(format));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslCertificate, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslCertificate = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#verify)
    ///
    /// ``` certificateChain: []?*C.QSslCertificate, hostName: []const u8, allocator: std.mem.Allocator ```
    pub fn Verify2(certificateChain: []?*C.QSslCertificate, hostName: []const u8, allocator: std.mem.Allocator) []?*C.QSslError {
        const certificateChain_list = C.struct_libqt_list{
            .len = certificateChain.len,
            .data = @ptrCast(certificateChain.ptr),
        };
        const hostName_str = C.struct_libqt_string{
            .len = hostName.len,
            .data = @constCast(hostName.ptr),
        };
        const _arr: C.struct_libqt_list = C.QSslCertificate_Verify2(certificateChain_list, hostName_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QSslError, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSslError = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#importPkcs12)
    ///
    /// ``` device: ?*C.QIODevice, key: ?*C.QSslKey, cert: ?*C.QSslCertificate, caCertificates: []?*C.QSslCertificate ```
    pub fn ImportPkcs124(device: ?*anyopaque, key: ?*anyopaque, cert: ?*anyopaque, caCertificates: []?*C.QSslCertificate) bool {
        const caCertificates_list = C.struct_libqt_list{
            .len = caCertificates.len,
            .data = @ptrCast(caCertificates.ptr),
        };
        return C.QSslCertificate_ImportPkcs124(@ptrCast(device), @ptrCast(key), @ptrCast(cert), caCertificates_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslcertificate.html#importPkcs12)
    ///
    /// ``` device: ?*C.QIODevice, key: ?*C.QSslKey, cert: ?*C.QSslCertificate, caCertificates: []?*C.QSslCertificate, passPhrase: []u8 ```
    pub fn ImportPkcs125(device: ?*anyopaque, key: ?*anyopaque, cert: ?*anyopaque, caCertificates: []?*C.QSslCertificate, passPhrase: []u8) bool {
        const caCertificates_list = C.struct_libqt_list{
            .len = caCertificates.len,
            .data = @ptrCast(caCertificates.ptr),
        };
        const passPhrase_str = C.struct_libqt_string{
            .len = passPhrase.len,
            .data = @constCast(passPhrase.ptr),
        };
        return C.QSslCertificate_ImportPkcs125(@ptrCast(device), @ptrCast(key), @ptrCast(cert), caCertificates_list, passPhrase_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslCertificate ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslCertificate_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsslcertificate.html#types
pub const enums = struct {
    pub const SubjectInfo = enum {
        pub const Organization: i32 = 0;
        pub const CommonName: i32 = 1;
        pub const LocalityName: i32 = 2;
        pub const OrganizationalUnitName: i32 = 3;
        pub const CountryName: i32 = 4;
        pub const StateOrProvinceName: i32 = 5;
        pub const DistinguishedNameQualifier: i32 = 6;
        pub const SerialNumber: i32 = 7;
        pub const EmailAddress: i32 = 8;
    };

    pub const PatternSyntax = enum {
        pub const RegularExpression: i32 = 0;
        pub const Wildcard: i32 = 1;
        pub const FixedString: i32 = 2;
    };
};
