const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextdocumentwriter.html
pub const qtextdocumentwriter = struct {
    /// New constructs a new QTextDocumentWriter object.
    ///
    ///
    pub fn New() ?*C.QTextDocumentWriter {
        return C.QTextDocumentWriter_new();
    }

    /// New2 constructs a new QTextDocumentWriter object.
    ///
    /// ``` device: ?*C.QIODevice, format: []u8 ```
    pub fn New2(device: ?*anyopaque, format: []u8) ?*C.QTextDocumentWriter {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QTextDocumentWriter_new2(@ptrCast(device), format_str);
    }

    /// New3 constructs a new QTextDocumentWriter object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New3(fileName: []const u8) ?*C.QTextDocumentWriter {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QTextDocumentWriter_new3(fileName_str);
    }

    /// New4 constructs a new QTextDocumentWriter object.
    ///
    /// ``` fileName: []const u8, format: []u8 ```
    pub fn New4(fileName: []const u8, format: []u8) ?*C.QTextDocumentWriter {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };

        return C.QTextDocumentWriter_new4(fileName_str, format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#setFormat)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, format: []u8 ```
    pub fn SetFormat(self: ?*anyopaque, format: []u8) void {
        const format_str = C.struct_libqt_string{
            .len = format.len,
            .data = @constCast(format.ptr),
        };
        C.QTextDocumentWriter_SetFormat(@ptrCast(self), format_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#format)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, allocator: std.mem.Allocator ```
    pub fn Format(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QTextDocumentWriter_Format(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#setDevice)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QTextDocumentWriter_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#device)
    ///
    /// ``` self: ?*C.QTextDocumentWriter ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QTextDocumentWriter_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#setFileName)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, fileName: []const u8 ```
    pub fn SetFileName(self: ?*anyopaque, fileName: []const u8) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QTextDocumentWriter_SetFileName(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#fileName)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentWriter_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#write)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, document: ?*C.QTextDocument ```
    pub fn Write(self: ?*anyopaque, document: ?*anyopaque) bool {
        return C.QTextDocumentWriter_Write(@ptrCast(self), @ptrCast(document));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#write)
    ///
    /// ``` self: ?*C.QTextDocumentWriter, fragment: ?*C.QTextDocumentFragment ```
    pub fn WriteWithFragment(self: ?*anyopaque, fragment: ?*anyopaque) bool {
        return C.QTextDocumentWriter_WriteWithFragment(@ptrCast(self), @ptrCast(fragment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentwriter.html#supportedDocumentFormats)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SupportedDocumentFormats(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QTextDocumentWriter_SupportedDocumentFormats();
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

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextDocumentWriter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextDocumentWriter_Delete(@ptrCast(self));
    }
};
