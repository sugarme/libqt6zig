const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qsslellipticcurve.html
pub const qsslellipticcurve = struct {
    /// New constructs a new QSslEllipticCurve object.
    ///
    /// ``` other: ?*C.QSslEllipticCurve ```
    pub fn New(other: ?*anyopaque) ?*C.QSslEllipticCurve {
        return C.QSslEllipticCurve_new(@ptrCast(other));
    }

    /// New2 constructs a new QSslEllipticCurve object and invalidates the source QSslEllipticCurve object.
    ///
    /// ``` other: ?*C.QSslEllipticCurve ```
    pub fn New2(other: ?*anyopaque) ?*C.QSslEllipticCurve {
        return C.QSslEllipticCurve_new2(@ptrCast(other));
    }

    /// New3 constructs a new QSslEllipticCurve object.
    ///
    ///
    pub fn New3() ?*C.QSslEllipticCurve {
        return C.QSslEllipticCurve_new3();
    }

    /// New4 constructs a new QSslEllipticCurve object.
    ///
    /// ``` param1: ?*C.QSslEllipticCurve ```
    pub fn New4(param1: ?*anyopaque) ?*C.QSslEllipticCurve {
        return C.QSslEllipticCurve_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QSslEllipticCurve, other: ?*QSslEllipticCurve ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslEllipticCurve_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QSslEllipticCurve, other: ?*QSslEllipticCurve ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSslEllipticCurve_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#fromShortName)
    ///
    /// ``` name: []const u8 ```
    pub fn FromShortName(name: []const u8) ?*C.QSslEllipticCurve {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QSslEllipticCurve_FromShortName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#fromLongName)
    ///
    /// ``` name: []const u8 ```
    pub fn FromLongName(name: []const u8) ?*C.QSslEllipticCurve {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QSslEllipticCurve_FromLongName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#shortName)
    ///
    /// ``` self: ?*C.QSslEllipticCurve, allocator: std.mem.Allocator ```
    pub fn ShortName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslEllipticCurve_ShortName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#longName)
    ///
    /// ``` self: ?*C.QSslEllipticCurve, allocator: std.mem.Allocator ```
    pub fn LongName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QSslEllipticCurve_LongName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#isValid)
    ///
    /// ``` self: ?*C.QSslEllipticCurve ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QSslEllipticCurve_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsslellipticcurve.html#isTlsNamedCurve)
    ///
    /// ``` self: ?*C.QSslEllipticCurve ```
    pub fn IsTlsNamedCurve(self: ?*anyopaque) bool {
        return C.QSslEllipticCurve_IsTlsNamedCurve(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSslEllipticCurve ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSslEllipticCurve_Delete(@ptrCast(self));
    }
};
