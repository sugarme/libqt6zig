const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qstringconverter_base_enums = @import("libqstringconverter_base.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstringencoder.html
pub const qstringencoder = struct {
    /// New constructs a new QStringEncoder object.
    ///
    ///
    pub fn New() QtC.QStringEncoder {
        return qtc.QStringEncoder_new();
    }

    /// New2 constructs a new QStringEncoder object.
    ///
    /// ``` encoding: qstringconverter_base_enums.Encoding ```
    pub fn New2(encoding: i32) QtC.QStringEncoder {
        return qtc.QStringEncoder_new2(@intCast(encoding));
    }

    /// New3 constructs a new QStringEncoder object.
    ///
    /// ``` name: []const u8 ```
    pub fn New3(name: []const u8) QtC.QStringEncoder {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };

        return qtc.QStringEncoder_new3(name_str);
    }

    /// New4 constructs a new QStringEncoder object.
    ///
    /// ``` encoding: qstringconverter_base_enums.Encoding, flags: flag of qstringconverter_base_enums.Flag ```
    pub fn New4(encoding: i32, flags: i32) QtC.QStringEncoder {
        return qtc.QStringEncoder_new4(@intCast(encoding), @intCast(flags));
    }

    /// New5 constructs a new QStringEncoder object.
    ///
    /// ``` name: []const u8, flags: flag of qstringconverter_base_enums.Flag ```
    pub fn New5(name: []const u8, flags: i32) QtC.QStringEncoder {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };

        return qtc.QStringEncoder_new5(name_str, @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringencoder.html#requiredSpace)
    ///
    /// ``` self: QtC.QStringEncoder, inputLength: i64 ```
    pub fn RequiredSpace(self: ?*anyopaque, inputLength: i64) i64 {
        return qtc.QStringEncoder_RequiredSpace(@ptrCast(self), @intCast(inputLength));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#isValid)
    ///
    /// ``` self: QtC.QStringEncoder ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return qtc.QStringConverter_IsValid(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#resetState)
    ///
    /// ``` self: QtC.QStringEncoder ```
    pub fn ResetState(self: ?*anyopaque) void {
        qtc.QStringConverter_ResetState(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#hasError)
    ///
    /// ``` self: QtC.QStringEncoder ```
    pub fn HasError(self: ?*anyopaque) bool {
        return qtc.QStringConverter_HasError(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#name)
    ///
    /// ``` self: QtC.QStringEncoder ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QStringConverter_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#nameForEncoding)
    ///
    /// ``` e: qstringconverter_base_enums.Encoding ```
    pub fn NameForEncoding(e: i32) []const u8 {
        const _ret = qtc.QStringConverter_NameForEncoding(@intCast(e));
        return std.mem.span(_ret);
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#availableCodecs)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AvailableCodecs(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QStringConverter_AvailableCodecs();
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qstringencoder.AvailableCodecs: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qstringencoder.AvailableCodecs: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringencoder.html#dtor.QStringEncoder)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QStringEncoder ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QStringEncoder_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstringdecoder.html
pub const qstringdecoder = struct {
    /// New constructs a new QStringDecoder object.
    ///
    /// ``` encoding: qstringconverter_base_enums.Encoding ```
    pub fn New(encoding: i32) QtC.QStringDecoder {
        return qtc.QStringDecoder_new(@intCast(encoding));
    }

    /// New2 constructs a new QStringDecoder object.
    ///
    ///
    pub fn New2() QtC.QStringDecoder {
        return qtc.QStringDecoder_new2();
    }

    /// New3 constructs a new QStringDecoder object.
    ///
    /// ``` name: []const u8 ```
    pub fn New3(name: []const u8) QtC.QStringDecoder {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };

        return qtc.QStringDecoder_new3(name_str);
    }

    /// New4 constructs a new QStringDecoder object.
    ///
    /// ``` encoding: qstringconverter_base_enums.Encoding, flags: flag of qstringconverter_base_enums.Flag ```
    pub fn New4(encoding: i32, flags: i32) QtC.QStringDecoder {
        return qtc.QStringDecoder_new4(@intCast(encoding), @intCast(flags));
    }

    /// New5 constructs a new QStringDecoder object.
    ///
    /// ``` name: []const u8, f: flag of qstringconverter_base_enums.Flag ```
    pub fn New5(name: []const u8, f: i32) QtC.QStringDecoder {
        const name_str = qtc.libqt_string{
            .len = name.len,
            .data = name.ptr,
        };

        return qtc.QStringDecoder_new5(name_str, @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringdecoder.html#requiredSpace)
    ///
    /// ``` self: QtC.QStringDecoder, inputLength: i64 ```
    pub fn RequiredSpace(self: ?*anyopaque, inputLength: i64) i64 {
        return qtc.QStringDecoder_RequiredSpace(@ptrCast(self), @intCast(inputLength));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringdecoder.html#appendToBuffer)
    ///
    /// ``` self: QtC.QStringDecoder, out: QtC.QChar, ba: []const u8 ```
    pub fn AppendToBuffer(self: ?*anyopaque, out: ?*anyopaque, ba: []const u8) QtC.QChar {
        return qtc.QStringDecoder_AppendToBuffer(@ptrCast(self), @ptrCast(out), ba.ptr);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringdecoder.html#decoderForHtml)
    ///
    /// ``` data: []const u8 ```
    pub fn DecoderForHtml(data: []const u8) QtC.QStringDecoder {
        return qtc.QStringDecoder_DecoderForHtml(data.ptr);
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#isValid)
    ///
    /// ``` self: QtC.QStringDecoder ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return qtc.QStringConverter_IsValid(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#resetState)
    ///
    /// ``` self: QtC.QStringDecoder ```
    pub fn ResetState(self: ?*anyopaque) void {
        qtc.QStringConverter_ResetState(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#hasError)
    ///
    /// ``` self: QtC.QStringDecoder ```
    pub fn HasError(self: ?*anyopaque) bool {
        return qtc.QStringConverter_HasError(@ptrCast(self));
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#name)
    ///
    /// ``` self: QtC.QStringDecoder ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = qtc.QStringConverter_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#nameForEncoding)
    ///
    /// ``` e: qstringconverter_base_enums.Encoding ```
    pub fn NameForEncoding(e: i32) []const u8 {
        const _ret = qtc.QStringConverter_NameForEncoding(@intCast(e));
        return std.mem.span(_ret);
    }

    /// Inherited from QStringConverter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qstringconverter.html#availableCodecs)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AvailableCodecs(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: qtc.libqt_list = qtc.QStringConverter_AvailableCodecs();
        const _str: [*]qtc.libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |i| {
                qtc.libqt_string_free(@ptrCast(&_str[i]));
            }
            qtc.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("qstringdecoder.AvailableCodecs: Memory allocation failed");
        for (0.._arr.len) |i| {
            const _data = _str[i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("qstringdecoder.AvailableCodecs: Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringdecoder.html#dtor.QStringDecoder)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QStringDecoder ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QStringDecoder_Delete(@ptrCast(self));
    }
};
