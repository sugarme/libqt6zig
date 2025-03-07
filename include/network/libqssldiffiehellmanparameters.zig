const C = @import("qt6c");
const qssl_enums = @import("libqssl.zig").enums;
const qssldiffiehellmanparameters_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html
pub const qssldiffiehellmanparameters = struct {
    /// New constructs a new QSslDiffieHellmanParameters object.
    ///
    ///
    pub fn New() ?*C.QSslDiffieHellmanParameters {
        return C.QSslDiffieHellmanParameters_new();
    }

    /// New2 constructs a new QSslDiffieHellmanParameters object.
    ///
    /// ``` other: ?*C.QSslDiffieHellmanParameters ```
    pub fn New2(other: ?*anyopaque) ?*C.QSslDiffieHellmanParameters {
        return C.QSslDiffieHellmanParameters_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#defaultParameters)
    ///
    ///
    pub fn DefaultParameters() ?*C.QSslDiffieHellmanParameters {
        return C.QSslDiffieHellmanParameters_DefaultParameters();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#operator=)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters, other: ?*C.QSslDiffieHellmanParameters ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslDiffieHellmanParameters_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#swap)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters, other: ?*C.QSslDiffieHellmanParameters ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslDiffieHellmanParameters_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#fromEncoded)
    ///
    /// ``` encoded: []u8 ```
    pub fn FromEncoded(encoded: []u8) ?*C.QSslDiffieHellmanParameters {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };
        return C.QSslDiffieHellmanParameters_FromEncoded(encoded_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#fromEncoded)
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn FromEncodedWithDevice(device: ?*anyopaque) ?*C.QSslDiffieHellmanParameters {
        return C.QSslDiffieHellmanParameters_FromEncodedWithDevice(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#isEmpty)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QSslDiffieHellmanParameters_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#isValid)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QSslDiffieHellmanParameters_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#error)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QSslDiffieHellmanParameters_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#errorString)
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslDiffieHellmanParameters_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#fromEncoded)
    ///
    /// ``` encoded: []u8, format: qssl_enums.EncodingFormat ```
    pub fn FromEncoded2(encoded: []u8, format: i64) ?*C.QSslDiffieHellmanParameters {
        const encoded_str = C.struct_libqt_string{
            .len = encoded.len,
            .data = @constCast(encoded.ptr),
        };
        return C.QSslDiffieHellmanParameters_FromEncoded2(encoded_str, @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#fromEncoded)
    ///
    /// ``` device: ?*C.QIODevice, format: qssl_enums.EncodingFormat ```
    pub fn FromEncoded22(device: ?*anyopaque, format: i64) ?*C.QSslDiffieHellmanParameters {
        return C.QSslDiffieHellmanParameters_FromEncoded22(@ptrCast(device), @intCast(format));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslDiffieHellmanParameters ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslDiffieHellmanParameters_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qssldiffiehellmanparameters.html#types
pub const enums = struct {
    pub const Error = enum {
        pub const NoError: i32 = 0;
        pub const InvalidInputDataError: i32 = 1;
        pub const UnsafeParametersError: i32 = 2;
    };
};
