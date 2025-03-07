const C = @import("qt6c");
const qcborcommon_enums = @import("libqcborcommon.zig").enums;

/// https://doc.qt.io/qt-6/qcborstreamwriter.html
pub const qcborstreamwriter = struct {
    /// New constructs a new QCborStreamWriter object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New(device: ?*anyopaque) ?*C.QCborStreamWriter {
        return C.QCborStreamWriter_new(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#setDevice)
    ///
    /// ``` self: ?*C.QCborStreamWriter, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QCborStreamWriter_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#device)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QCborStreamWriter_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, u: u64 ```
    pub fn Append(self: ?*anyopaque, u: u64) void {
        C.QCborStreamWriter_Append(@ptrCast(self), @intCast(u));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, i: i64 ```
    pub fn AppendWithQint64(self: ?*anyopaque, i: i64) void {
        C.QCborStreamWriter_AppendWithQint64(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, n: qcborstreamwriter_enums.QCborNegativeInteger ```
    pub fn AppendWithQCborNegativeInteger(self: ?*anyopaque, n: i64) void {
        C.QCborStreamWriter_AppendWithQCborNegativeInteger(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, ba: []u8 ```
    pub fn AppendWithBa(self: ?*anyopaque, ba: []u8) void {
        const ba_str = C.struct_libqt_string{
            .len = ba.len,
            .data = @constCast(ba.ptr),
        };
        C.QCborStreamWriter_AppendWithBa(@ptrCast(self), ba_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, tag: qcborstreamwriter_enums.QCborTag ```
    pub fn AppendWithTag(self: ?*anyopaque, tag: i64) void {
        C.QCborStreamWriter_AppendWithTag(@ptrCast(self), @intCast(tag));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, tag: qcborstreamwriter_enums.QCborKnownTags ```
    pub fn Append3(self: ?*anyopaque, tag: i64) void {
        C.QCborStreamWriter_Append3(@ptrCast(self), @intCast(tag));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, st: qcborstreamwriter_enums.QCborSimpleType ```
    pub fn AppendWithSt(self: ?*anyopaque, st: i64) void {
        C.QCborStreamWriter_AppendWithSt(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, f: f32 ```
    pub fn AppendWithFloat(self: ?*anyopaque, f: f32) void {
        C.QCborStreamWriter_AppendWithFloat(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, d: f64 ```
    pub fn AppendWithDouble(self: ?*anyopaque, d: f64) void {
        C.QCborStreamWriter_AppendWithDouble(@ptrCast(self), @floatCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendByteString)
    ///
    /// ``` self: ?*C.QCborStreamWriter, data: []const u8, lenVal: i64 ```
    pub fn AppendByteString(self: ?*anyopaque, data: []const u8, lenVal: i64) void {
        const data_Cstring = @constCast(data.ptr);
        C.QCborStreamWriter_AppendByteString(@ptrCast(self), data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendTextString)
    ///
    /// ``` self: ?*C.QCborStreamWriter, utf8: []const u8, lenVal: i64 ```
    pub fn AppendTextString(self: ?*anyopaque, utf8: []const u8, lenVal: i64) void {
        const utf8_Cstring = @constCast(utf8.ptr);
        C.QCborStreamWriter_AppendTextString(@ptrCast(self), utf8_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, b: bool ```
    pub fn AppendWithBool(self: ?*anyopaque, b: bool) void {
        C.QCborStreamWriter_AppendWithBool(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendNull)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn AppendNull(self: ?*anyopaque) void {
        C.QCborStreamWriter_AppendNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendUndefined)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn AppendUndefined(self: ?*anyopaque) void {
        C.QCborStreamWriter_AppendUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, i: i32 ```
    pub fn AppendWithInt(self: ?*anyopaque, i: i32) void {
        C.QCborStreamWriter_AppendWithInt(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, u: u32 ```
    pub fn AppendWithUint(self: ?*anyopaque, u: u32) void {
        C.QCborStreamWriter_AppendWithUint(@ptrCast(self), @intCast(u));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, str: []const u8 ```
    pub fn Append4(self: ?*anyopaque, str: []const u8) void {
        const str_Cstring = @constCast(str.ptr);
        C.QCborStreamWriter_Append4(@ptrCast(self), str_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startArray)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn StartArray(self: ?*anyopaque) void {
        C.QCborStreamWriter_StartArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startArray)
    ///
    /// ``` self: ?*C.QCborStreamWriter, count: u64 ```
    pub fn StartArrayWithCount(self: ?*anyopaque, count: u64) void {
        C.QCborStreamWriter_StartArrayWithCount(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#endArray)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn EndArray(self: ?*anyopaque) bool {
        return C.QCborStreamWriter_EndArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startMap)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn StartMap(self: ?*anyopaque) void {
        C.QCborStreamWriter_StartMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startMap)
    ///
    /// ``` self: ?*C.QCborStreamWriter, count: u64 ```
    pub fn StartMapWithCount(self: ?*anyopaque, count: u64) void {
        C.QCborStreamWriter_StartMapWithCount(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#endMap)
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn EndMap(self: ?*anyopaque) bool {
        return C.QCborStreamWriter_EndMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: ?*C.QCborStreamWriter, str: []const u8, size: i64 ```
    pub fn Append22(self: ?*anyopaque, str: []const u8, size: i64) void {
        const str_Cstring = @constCast(str.ptr);
        C.QCborStreamWriter_Append22(@ptrCast(self), str_Cstring, @intCast(size));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCborStreamWriter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCborStreamWriter_Delete(@ptrCast(self));
    }
};
