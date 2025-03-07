const C = @import("qt6c");
const qprinter_enums = @import("libqprinter.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qprinterinfo.html
pub const qprinterinfo = struct {
    /// New constructs a new QPrinterInfo object.
    ///
    ///
    pub fn New() ?*C.QPrinterInfo {
        return C.QPrinterInfo_new();
    }

    /// New2 constructs a new QPrinterInfo object.
    ///
    /// ``` other: ?*C.QPrinterInfo ```
    pub fn New2(other: ?*anyopaque) ?*C.QPrinterInfo {
        return C.QPrinterInfo_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPrinterInfo object.
    ///
    /// ``` printer: ?*C.QPrinter ```
    pub fn New3(printer: ?*anyopaque) ?*C.QPrinterInfo {
        return C.QPrinterInfo_new3(@ptrCast(printer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#operator=)
    ///
    /// ``` self: ?*C.QPrinterInfo, other: ?*C.QPrinterInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPrinterInfo_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#printerName)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn PrinterName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinterInfo_PrinterName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#description)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinterInfo_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#location)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn Location(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinterInfo_Location(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#makeAndModel)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn MakeAndModel(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinterInfo_MakeAndModel(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#isNull)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QPrinterInfo_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#isDefault)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn IsDefault(self: ?*anyopaque) bool {
        return C.QPrinterInfo_IsDefault(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#isRemote)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn IsRemote(self: ?*anyopaque) bool {
        return C.QPrinterInfo_IsRemote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#state)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn State(self: ?*anyopaque) i64 {
        return C.QPrinterInfo_State(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#supportedPageSizes)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn SupportedPageSizes(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QPageSize {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_SupportedPageSizes(@ptrCast(self));
        defer {
            const _obj: [*]?*C.QPageSize = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                if (_obj[_i]) |obj| {
                    C.libqt_free(obj);
                }
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(?*C.QPageSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPageSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#defaultPageSize)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn DefaultPageSize(self: ?*anyopaque) ?*C.QPageSize {
        return C.QPrinterInfo_DefaultPageSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#supportsCustomPageSizes)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn SupportsCustomPageSizes(self: ?*anyopaque) bool {
        return C.QPrinterInfo_SupportsCustomPageSizes(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#minimumPhysicalPageSize)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn MinimumPhysicalPageSize(self: ?*anyopaque) ?*C.QPageSize {
        return C.QPrinterInfo_MinimumPhysicalPageSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#maximumPhysicalPageSize)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn MaximumPhysicalPageSize(self: ?*anyopaque) ?*C.QPageSize {
        return C.QPrinterInfo_MaximumPhysicalPageSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#supportedResolutions)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn SupportedResolutions(self: ?*anyopaque, allocator: std.mem.Allocator) []i32 {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_SupportedResolutions(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#defaultDuplexMode)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn DefaultDuplexMode(self: ?*anyopaque) i64 {
        return C.QPrinterInfo_DefaultDuplexMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#supportedDuplexModes)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn SupportedDuplexModes(self: ?*anyopaque, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_SupportedDuplexModes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qprinter_enums.DuplexMode, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qprinter_enums.DuplexMode = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#defaultColorMode)
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn DefaultColorMode(self: ?*anyopaque) i64 {
        return C.QPrinterInfo_DefaultColorMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#supportedColorModes)
    ///
    /// ``` self: ?*C.QPrinterInfo, allocator: std.mem.Allocator ```
    pub fn SupportedColorModes(self: ?*anyopaque, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_SupportedColorModes(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qprinter_enums.ColorMode, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qprinter_enums.ColorMode = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#availablePrinterNames)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AvailablePrinterNames(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_AvailablePrinterNames();
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#availablePrinters)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AvailablePrinters(allocator: std.mem.Allocator) []?*C.QPrinterInfo {
        const _arr: C.struct_libqt_list = C.QPrinterInfo_AvailablePrinters();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPrinterInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPrinterInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#defaultPrinterName)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn DefaultPrinterName(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinterInfo_DefaultPrinterName();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#defaultPrinter)
    ///
    ///
    pub fn DefaultPrinter() ?*C.QPrinterInfo {
        return C.QPrinterInfo_DefaultPrinter();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinterinfo.html#printerInfo)
    ///
    /// ``` printerName: []const u8 ```
    pub fn PrinterInfo(printerName: []const u8) ?*C.QPrinterInfo {
        const printerName_str = C.struct_libqt_string{
            .len = printerName.len,
            .data = @constCast(printerName.ptr),
        };
        return C.QPrinterInfo_PrinterInfo(printerName_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPrinterInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPrinterInfo_Delete(@ptrCast(self));
    }
};
