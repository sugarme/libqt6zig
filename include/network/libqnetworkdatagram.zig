const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qnetworkdatagram.html
pub const qnetworkdatagram = struct {
    /// New constructs a new QNetworkDatagram object.
    ///
    ///
    pub fn New() ?*C.QNetworkDatagram {
        return C.QNetworkDatagram_new();
    }

    /// New2 constructs a new QNetworkDatagram object.
    ///
    /// ``` data: []u8 ```
    pub fn New2(data: []u8) ?*C.QNetworkDatagram {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QNetworkDatagram_new2(data_str);
    }

    /// New3 constructs a new QNetworkDatagram object.
    ///
    /// ``` other: ?*C.QNetworkDatagram ```
    pub fn New3(other: ?*anyopaque) ?*C.QNetworkDatagram {
        return C.QNetworkDatagram_new3(@ptrCast(other));
    }

    /// New4 constructs a new QNetworkDatagram object.
    ///
    /// ``` data: []u8, destinationAddress: ?*C.QHostAddress ```
    pub fn New4(data: []u8, destinationAddress: ?*anyopaque) ?*C.QNetworkDatagram {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QNetworkDatagram_new4(data_str, @ptrCast(destinationAddress));
    }

    /// New5 constructs a new QNetworkDatagram object.
    ///
    /// ``` data: []u8, destinationAddress: ?*C.QHostAddress, port: u16 ```
    pub fn New5(data: []u8, destinationAddress: ?*anyopaque, port: u16) ?*C.QNetworkDatagram {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QNetworkDatagram_new5(data_str, @ptrCast(destinationAddress), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#operator=)
    ///
    /// ``` self: ?*C.QNetworkDatagram, other: ?*C.QNetworkDatagram ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkDatagram_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#swap)
    ///
    /// ``` self: ?*C.QNetworkDatagram, other: ?*C.QNetworkDatagram ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNetworkDatagram_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#clear)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QNetworkDatagram_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#isValid)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QNetworkDatagram_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#isNull)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QNetworkDatagram_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#interfaceIndex)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn InterfaceIndex(self: ?*anyopaque) u32 {
        return C.QNetworkDatagram_InterfaceIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setInterfaceIndex)
    ///
    /// ``` self: ?*C.QNetworkDatagram, index: u32 ```
    pub fn SetInterfaceIndex(self: ?*anyopaque, index: u32) void {
        C.QNetworkDatagram_SetInterfaceIndex(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#senderAddress)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn SenderAddress(self: ?*anyopaque) ?*C.QHostAddress {
        return C.QNetworkDatagram_SenderAddress(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#destinationAddress)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn DestinationAddress(self: ?*anyopaque) ?*C.QHostAddress {
        return C.QNetworkDatagram_DestinationAddress(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#senderPort)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn SenderPort(self: ?*anyopaque) i32 {
        return C.QNetworkDatagram_SenderPort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#destinationPort)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn DestinationPort(self: ?*anyopaque) i32 {
        return C.QNetworkDatagram_DestinationPort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setSender)
    ///
    /// ``` self: ?*C.QNetworkDatagram, address: ?*C.QHostAddress ```
    pub fn SetSender(self: ?*anyopaque, address: ?*anyopaque) void {
        C.QNetworkDatagram_SetSender(@ptrCast(self), @ptrCast(address));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setDestination)
    ///
    /// ``` self: ?*C.QNetworkDatagram, address: ?*C.QHostAddress, port: u16 ```
    pub fn SetDestination(self: ?*anyopaque, address: ?*anyopaque, port: u16) void {
        C.QNetworkDatagram_SetDestination(@ptrCast(self), @ptrCast(address), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#hopLimit)
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn HopLimit(self: ?*anyopaque) i32 {
        return C.QNetworkDatagram_HopLimit(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setHopLimit)
    ///
    /// ``` self: ?*C.QNetworkDatagram, count: i32 ```
    pub fn SetHopLimit(self: ?*anyopaque, count: i32) void {
        C.QNetworkDatagram_SetHopLimit(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#data)
    ///
    /// ``` self: ?*C.QNetworkDatagram, allocator: std.mem.Allocator ```
    pub fn Data(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QNetworkDatagram_Data(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setData)
    ///
    /// ``` self: ?*C.QNetworkDatagram, data: []u8 ```
    pub fn SetData(self: ?*anyopaque, data: []u8) void {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QNetworkDatagram_SetData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#makeReply)
    ///
    /// ``` self: ?*C.QNetworkDatagram, payload: []u8 ```
    pub fn MakeReply(self: ?*anyopaque, payload: []u8) ?*C.QNetworkDatagram {
        const payload_str = C.struct_libqt_string{
            .len = payload.len,
            .data = @constCast(payload.ptr),
        };
        return C.QNetworkDatagram_MakeReply(@ptrCast(self), payload_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnetworkdatagram.html#setSender)
    ///
    /// ``` self: ?*C.QNetworkDatagram, address: ?*C.QHostAddress, port: u16 ```
    pub fn SetSender2(self: ?*anyopaque, address: ?*anyopaque, port: u16) void {
        C.QNetworkDatagram_SetSender2(@ptrCast(self), @ptrCast(address), @intCast(port));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNetworkDatagram ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNetworkDatagram_Delete(@ptrCast(self));
    }
};
