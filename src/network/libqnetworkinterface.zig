const C = @import("qt6c");
const qnetworkinterface_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qnetworkaddressentry.html
pub const qnetworkaddressentry = struct {
    /// New constructs a new QNetworkAddressEntry object.
    ///
    ///
    pub fn New() ?*C.QNetworkAddressEntry {
        return C.QNetworkAddressEntry_new();
    }

    /// New2 constructs a new QNetworkAddressEntry object.
    ///
    /// ``` other: ?*C.QNetworkAddressEntry ```
    pub fn New2(other: ?*anyopaque) ?*C.QNetworkAddressEntry {
        return C.QNetworkAddressEntry_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, other: ?*C.QNetworkAddressEntry ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkAddressEntry_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#swap)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, other: ?*C.QNetworkAddressEntry ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkAddressEntry_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#operator==)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, other: ?*C.QNetworkAddressEntry ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkAddressEntry_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#operator!=)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, other: ?*C.QNetworkAddressEntry ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QNetworkAddressEntry_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#dnsEligibility)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn DnsEligibility(self: ?*anyopaque) i64 {
        return C.QNetworkAddressEntry_DnsEligibility(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setDnsEligibility)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, status: qnetworkinterface_enums.DnsEligibilityStatus ```
    pub fn SetDnsEligibility(self: ?*anyopaque, status: i64) void {
        C.QNetworkAddressEntry_SetDnsEligibility(@ptrCast(self), @intCast(status));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#ip)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn Ip(self: ?*anyopaque) ?*C.QHostAddress {
        return C.QNetworkAddressEntry_Ip(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setIp)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, newIp: ?*C.QHostAddress ```
    pub fn SetIp(self: ?*anyopaque, newIp: ?*anyopaque) void {
        C.QNetworkAddressEntry_SetIp(@ptrCast(self), @ptrCast(newIp));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#netmask)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn Netmask(self: ?*anyopaque) ?*C.QHostAddress {
        return C.QNetworkAddressEntry_Netmask(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setNetmask)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, newNetmask: ?*C.QHostAddress ```
    pub fn SetNetmask(self: ?*anyopaque, newNetmask: ?*anyopaque) void {
        C.QNetworkAddressEntry_SetNetmask(@ptrCast(self), @ptrCast(newNetmask));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#prefixLength)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn PrefixLength(self: ?*anyopaque) i32 {
        return C.QNetworkAddressEntry_PrefixLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setPrefixLength)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, length: i32 ```
    pub fn SetPrefixLength(self: ?*anyopaque, length: i32) void {
        C.QNetworkAddressEntry_SetPrefixLength(@ptrCast(self), @intCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#broadcast)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn Broadcast(self: ?*anyopaque) ?*C.QHostAddress {
        return C.QNetworkAddressEntry_Broadcast(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setBroadcast)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, newBroadcast: ?*C.QHostAddress ```
    pub fn SetBroadcast(self: ?*anyopaque, newBroadcast: ?*anyopaque) void {
        C.QNetworkAddressEntry_SetBroadcast(@ptrCast(self), @ptrCast(newBroadcast));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#isLifetimeKnown)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn IsLifetimeKnown(self: ?*anyopaque) bool {
        return C.QNetworkAddressEntry_IsLifetimeKnown(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#preferredLifetime)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn PreferredLifetime(self: ?*anyopaque) ?*C.QDeadlineTimer {
        return C.QNetworkAddressEntry_PreferredLifetime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#validityLifetime)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn ValidityLifetime(self: ?*anyopaque) ?*C.QDeadlineTimer {
        return C.QNetworkAddressEntry_ValidityLifetime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#setAddressLifetime)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry, preferred: C.QDeadlineTimer, validity: C.QDeadlineTimer ```
    pub fn SetAddressLifetime(self: ?*anyopaque, preferred: C.QDeadlineTimer, validity: C.QDeadlineTimer) void {
        C.QNetworkAddressEntry_SetAddressLifetime(@ptrCast(self), @ptrCast(preferred), @ptrCast(validity));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#clearAddressLifetime)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn ClearAddressLifetime(self: ?*anyopaque) void {
        C.QNetworkAddressEntry_ClearAddressLifetime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#isPermanent)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn IsPermanent(self: ?*anyopaque) bool {
        return C.QNetworkAddressEntry_IsPermanent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkaddressentry.html#isTemporary)
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn IsTemporary(self: ?*anyopaque) bool {
        return C.QNetworkAddressEntry_IsTemporary(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkAddressEntry ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkAddressEntry_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkinterface.html
pub const qnetworkinterface = struct {
    /// New constructs a new QNetworkInterface object.
    ///
    ///
    pub fn New() ?*C.QNetworkInterface {
        return C.QNetworkInterface_new();
    }

    /// New2 constructs a new QNetworkInterface object.
    ///
    /// ``` other: ?*C.QNetworkInterface ```
    pub fn New2(other: ?*anyopaque) ?*C.QNetworkInterface {
        return C.QNetworkInterface_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkInterface, other: ?*C.QNetworkInterface ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkInterface_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#swap)
    ///
    /// ``` self: ?*C.QNetworkInterface, other: ?*C.QNetworkInterface ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkInterface_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#isValid)
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QNetworkInterface_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#index)
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn Index(self: ?*anyopaque) i32 {
        return C.QNetworkInterface_Index(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#maximumTransmissionUnit)
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn MaximumTransmissionUnit(self: ?*anyopaque) i32 {
        return C.QNetworkInterface_MaximumTransmissionUnit(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#name)
    ///
    /// ``` self: ?*C.QNetworkInterface, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkInterface_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#humanReadableName)
    ///
    /// ``` self: ?*C.QNetworkInterface, allocator: std.mem.Allocator ```
    pub fn HumanReadableName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkInterface_HumanReadableName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#flags)
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QNetworkInterface_Flags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#type)
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QNetworkInterface_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#hardwareAddress)
    ///
    /// ``` self: ?*C.QNetworkInterface, allocator: std.mem.Allocator ```
    pub fn HardwareAddress(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkInterface_HardwareAddress(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#addressEntries)
    ///
    /// ``` self: ?*C.QNetworkInterface, allocator: std.mem.Allocator ```
    pub fn AddressEntries(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QNetworkAddressEntry {
        const _arr: C.struct_libqt_list = C.QNetworkInterface_AddressEntries(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkAddressEntry, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkAddressEntry = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#interfaceIndexFromName)
    ///
    /// ``` name: []const u8 ```
    pub fn InterfaceIndexFromName(name: []const u8) i32 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QNetworkInterface_InterfaceIndexFromName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#interfaceFromName)
    ///
    /// ``` name: []const u8 ```
    pub fn InterfaceFromName(name: []const u8) ?*C.QNetworkInterface {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QNetworkInterface_InterfaceFromName(name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#interfaceFromIndex)
    ///
    /// ``` index: i32 ```
    pub fn InterfaceFromIndex(index: i32) ?*C.QNetworkInterface {
        return C.QNetworkInterface_InterfaceFromIndex(@intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#interfaceNameFromIndex)
    ///
    /// ``` index: i32, allocator: std.mem.Allocator ```
    pub fn InterfaceNameFromIndex(index: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QNetworkInterface_InterfaceNameFromIndex(@intCast(index));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#allInterfaces)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AllInterfaces(allocator: std.mem.Allocator) []?*C.QNetworkInterface {
        const _arr: C.struct_libqt_list = C.QNetworkInterface_AllInterfaces();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QNetworkInterface, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QNetworkInterface = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkinterface.html#allAddresses)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AllAddresses(allocator: std.mem.Allocator) []?*C.QHostAddress {
        const _arr: C.struct_libqt_list = C.QNetworkInterface_AllAddresses();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QHostAddress, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QHostAddress = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkInterface ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkInterface_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnetworkinterface.html#types
pub const enums = struct {
    pub const DnsEligibilityStatus = enum {
        pub const DnsEligibilityUnknown: i8 = -1;
        pub const DnsIneligible: i8 = 0;
        pub const DnsEligible: i8 = 1;
    };

    pub const InterfaceFlag = enum {
        pub const IsUp: i32 = 1;
        pub const IsRunning: i32 = 2;
        pub const CanBroadcast: i32 = 4;
        pub const IsLoopBack: i32 = 8;
        pub const IsPointToPoint: i32 = 16;
        pub const CanMulticast: i32 = 32;
    };

    pub const InterfaceType = enum {
        pub const Loopback: i32 = 1;
        pub const Virtual: i32 = 2;
        pub const Ethernet: i32 = 3;
        pub const Slip: i32 = 4;
        pub const CanBus: i32 = 5;
        pub const Ppp: i32 = 6;
        pub const Fddi: i32 = 7;
        pub const Wifi: i32 = 8;
        pub const Ieee80211: i32 = 8;
        pub const Phonet: i32 = 9;
        pub const Ieee802154: i32 = 10;
        pub const SixLoWPAN: i32 = 11;
        pub const Ieee80216: i32 = 12;
        pub const Ieee1394: i32 = 13;
        pub const Unknown: i32 = 0;
    };
};
