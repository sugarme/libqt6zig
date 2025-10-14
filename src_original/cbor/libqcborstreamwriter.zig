const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qcborcommon_enums = @import("libqcborcommon.zig").enums;

/// https://doc.qt.io/qt-6/qcborstreamwriter.html
pub const qcborstreamwriter = struct {
    /// New constructs a new QCborStreamWriter object.
    ///
    /// ``` device: QtC.QIODevice ```
    pub fn New(device: ?*anyopaque) QtC.QCborStreamWriter {
        return qtc.QCborStreamWriter_new(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#setDevice)
    ///
    /// ``` self: QtC.QCborStreamWriter, device: QtC.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        qtc.QCborStreamWriter_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#device)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn Device(self: ?*anyopaque) QtC.QIODevice {
        return qtc.QCborStreamWriter_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, u: u64 ```
    pub fn Append(self: ?*anyopaque, u: u64) void {
        qtc.QCborStreamWriter_Append(@ptrCast(self), @intCast(u));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, i: i64 ```
    pub fn Append2(self: ?*anyopaque, i: i64) void {
        qtc.QCborStreamWriter_Append2(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, n: qcborcommon_enums.QCborNegativeInteger ```
    pub fn Append3(self: ?*anyopaque, n: u64) void {
        qtc.QCborStreamWriter_Append3(@ptrCast(self), @intCast(n));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, ba: []u8 ```
    pub fn Append4(self: ?*anyopaque, ba: []u8) void {
        const ba_str = qtc.libqt_string{
            .len = ba.len,
            .data = ba.ptr,
        };
        qtc.QCborStreamWriter_Append4(@ptrCast(self), ba_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, tag: qcborcommon_enums.QCborTag ```
    pub fn Append7(self: ?*anyopaque, tag: u64) void {
        qtc.QCborStreamWriter_Append7(@ptrCast(self), @intCast(tag));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, tag: qcborcommon_enums.QCborKnownTags ```
    pub fn Append8(self: ?*anyopaque, tag: i32) void {
        qtc.QCborStreamWriter_Append8(@ptrCast(self), @intCast(tag));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, st: qcborcommon_enums.QCborSimpleType ```
    pub fn Append9(self: ?*anyopaque, st: u8) void {
        qtc.QCborStreamWriter_Append9(@ptrCast(self), @intCast(st));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, f: f32 ```
    pub fn Append12(self: ?*anyopaque, f: f32) void {
        qtc.QCborStreamWriter_Append12(@ptrCast(self), @floatCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, d: f64 ```
    pub fn Append13(self: ?*anyopaque, d: f64) void {
        qtc.QCborStreamWriter_Append13(@ptrCast(self), @floatCast(d));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendByteString)
    ///
    /// ``` self: QtC.QCborStreamWriter, data: []const u8, lenVal: i64 ```
    pub fn AppendByteString(self: ?*anyopaque, data: []const u8, lenVal: i64) void {
        const data_Cstring = data.ptr;
        qtc.QCborStreamWriter_AppendByteString(@ptrCast(self), data_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendTextString)
    ///
    /// ``` self: QtC.QCborStreamWriter, utf8: []const u8, lenVal: i64 ```
    pub fn AppendTextString(self: ?*anyopaque, utf8: []const u8, lenVal: i64) void {
        const utf8_Cstring = utf8.ptr;
        qtc.QCborStreamWriter_AppendTextString(@ptrCast(self), utf8_Cstring, @intCast(lenVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, b: bool ```
    pub fn Append14(self: ?*anyopaque, b: bool) void {
        qtc.QCborStreamWriter_Append14(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendNull)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn AppendNull(self: ?*anyopaque) void {
        qtc.QCborStreamWriter_AppendNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#appendUndefined)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn AppendUndefined(self: ?*anyopaque) void {
        qtc.QCborStreamWriter_AppendUndefined(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, i: i32 ```
    pub fn Append15(self: ?*anyopaque, i: i32) void {
        qtc.QCborStreamWriter_Append15(@ptrCast(self), @intCast(i));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, u: u32 ```
    pub fn Append16(self: ?*anyopaque, u: u32) void {
        qtc.QCborStreamWriter_Append16(@ptrCast(self), @intCast(u));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, str: []const u8 ```
    pub fn Append17(self: ?*anyopaque, str: []const u8) void {
        const str_Cstring = str.ptr;
        qtc.QCborStreamWriter_Append17(@ptrCast(self), str_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startArray)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn StartArray(self: ?*anyopaque) void {
        qtc.QCborStreamWriter_StartArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startArray)
    ///
    /// ``` self: QtC.QCborStreamWriter, count: u64 ```
    pub fn StartArray2(self: ?*anyopaque, count: u64) void {
        qtc.QCborStreamWriter_StartArray2(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#endArray)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn EndArray(self: ?*anyopaque) bool {
        return qtc.QCborStreamWriter_EndArray(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startMap)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn StartMap(self: ?*anyopaque) void {
        qtc.QCborStreamWriter_StartMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#startMap)
    ///
    /// ``` self: QtC.QCborStreamWriter, count: u64 ```
    pub fn StartMap2(self: ?*anyopaque, count: u64) void {
        qtc.QCborStreamWriter_StartMap2(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#endMap)
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn EndMap(self: ?*anyopaque) bool {
        return qtc.QCborStreamWriter_EndMap(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#append)
    ///
    /// ``` self: QtC.QCborStreamWriter, str: []const u8, size: i64 ```
    pub fn Append22(self: ?*anyopaque, str: []const u8, size: i64) void {
        const str_Cstring = str.ptr;
        qtc.QCborStreamWriter_Append22(@ptrCast(self), str_Cstring, @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcborstreamwriter.html#dtor.QCborStreamWriter)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QCborStreamWriter ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QCborStreamWriter_Delete(@ptrCast(self));
    }
};
