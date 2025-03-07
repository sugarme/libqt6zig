const C = @import("qt6c");
const qhostinfo_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qhostinfo.html
pub const qhostinfo = struct {
    /// New constructs a new QHostInfo object.
    ///
    ///
    pub fn New() ?*C.QHostInfo {
        return C.QHostInfo_new();
    }

    /// New2 constructs a new QHostInfo object.
    ///
    /// ``` d: ?*C.QHostInfo ```
    pub fn New2(d: ?*anyopaque) ?*C.QHostInfo {
        return C.QHostInfo_new2(@ptrCast(d));
    }

    /// New3 constructs a new QHostInfo object.
    ///
    /// ``` lookupId: i32 ```
    pub fn New3(lookupId: i32) ?*C.QHostInfo {
        return C.QHostInfo_new3(@intCast(lookupId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#operator=)
    ///
    /// ``` self: ?*C.QHostInfo, d: ?*C.QHostInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, d: ?*anyopaque) void {
        C.QHostInfo_OperatorAssign(@ptrCast(self), @ptrCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#swap)
    ///
    /// ``` self: ?*C.QHostInfo, other: ?*C.QHostInfo ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QHostInfo_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#hostName)
    ///
    /// ``` self: ?*C.QHostInfo, allocator: std.mem.Allocator ```
    pub fn HostName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHostInfo_HostName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#setHostName)
    ///
    /// ``` self: ?*C.QHostInfo, name: []const u8 ```
    pub fn SetHostName(self: ?*anyopaque, name: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QHostInfo_SetHostName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#addresses)
    ///
    /// ``` self: ?*C.QHostInfo, allocator: std.mem.Allocator ```
    pub fn Addresses(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QHostAddress {
        const _arr: C.struct_libqt_list = C.QHostInfo_Addresses(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QHostAddress, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QHostAddress = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#setAddresses)
    ///
    /// ``` self: ?*C.QHostInfo, addresses: []?*C.QHostAddress ```
    pub fn SetAddresses(self: ?*anyopaque, addresses: []?*C.QHostAddress) void {
        const addresses_list = C.struct_libqt_list{
            .len = addresses.len,
            .data = @ptrCast(addresses.ptr),
        };
        C.QHostInfo_SetAddresses(@ptrCast(self), addresses_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#error)
    ///
    /// ``` self: ?*C.QHostInfo ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QHostInfo_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#setError)
    ///
    /// ``` self: ?*C.QHostInfo, errorVal: qhostinfo_enums.HostInfoError ```
    pub fn SetError(self: ?*anyopaque, errorVal: i64) void {
        C.QHostInfo_SetError(@ptrCast(self), @intCast(errorVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#errorString)
    ///
    /// ``` self: ?*C.QHostInfo, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHostInfo_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#setErrorString)
    ///
    /// ``` self: ?*C.QHostInfo, errorString: []const u8 ```
    pub fn SetErrorString(self: ?*anyopaque, errorString: []const u8) void {
        const errorString_str = C.struct_libqt_string{
            .len = errorString.len,
            .data = @constCast(errorString.ptr),
        };
        C.QHostInfo_SetErrorString(@ptrCast(self), errorString_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#setLookupId)
    ///
    /// ``` self: ?*C.QHostInfo, id: i32 ```
    pub fn SetLookupId(self: ?*anyopaque, id: i32) void {
        C.QHostInfo_SetLookupId(@ptrCast(self), @intCast(id));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#lookupId)
    ///
    /// ``` self: ?*C.QHostInfo ```
    pub fn LookupId(self: ?*anyopaque) i32 {
        return C.QHostInfo_LookupId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#abortHostLookup)
    ///
    /// ``` lookupId: i32 ```
    pub fn AbortHostLookup(lookupId: i32) void {
        C.QHostInfo_AbortHostLookup(@intCast(lookupId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#fromName)
    ///
    /// ``` name: []const u8 ```
    pub fn FromName(name: []const u8) ?*C.QHostInfo {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QHostInfo_FromName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#localHostName)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn LocalHostName(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHostInfo_LocalHostName();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhostinfo.html#localDomainName)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn LocalDomainName(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QHostInfo_LocalDomainName();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHostInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHostInfo_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qhostinfo.html#types
pub const enums = struct {
    pub const HostInfoError = enum {
        pub const NoError: i32 = 0;
        pub const HostNotFound: i32 = 1;
        pub const UnknownError: i32 = 2;
    };
};
