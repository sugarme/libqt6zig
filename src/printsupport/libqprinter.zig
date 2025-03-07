const C = @import("qt6c");
const qpagedpaintdevice_enums = @import("../libqpagedpaintdevice.zig").enums;
const qpagelayout_enums = @import("../libqpagelayout.zig").enums;
const qpaintdevice_enums = @import("../libqpaintdevice.zig").enums;
const qprinter_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qprinter.html
pub const qprinter = struct {
    /// New constructs a new QPrinter object.
    ///
    ///
    pub fn New() ?*C.QPrinter {
        return C.QPrinter_new();
    }

    /// New2 constructs a new QPrinter object.
    ///
    /// ``` printer: ?*C.QPrinterInfo ```
    pub fn New2(printer: ?*anyopaque) ?*C.QPrinter {
        return C.QPrinter_new2(@ptrCast(printer));
    }

    /// New3 constructs a new QPrinter object.
    ///
    /// ``` mode: qprinter_enums.PrinterMode ```
    pub fn New3(mode: i64) ?*C.QPrinter {
        return C.QPrinter_new3(@intCast(mode));
    }

    /// New4 constructs a new QPrinter object.
    ///
    /// ``` printer: ?*C.QPrinterInfo, mode: qprinter_enums.PrinterMode ```
    pub fn New4(printer: ?*anyopaque, mode: i64) ?*C.QPrinter {
        return C.QPrinter_new4(@ptrCast(printer), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#devType)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QPrinter_DevType(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QPrinter_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QPrinter_QBaseDevType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setOutputFormat)
    ///
    /// ``` self: ?*C.QPrinter, format: qprinter_enums.OutputFormat ```
    pub fn SetOutputFormat(self: ?*anyopaque, format: i64) void {
        C.QPrinter_SetOutputFormat(@ptrCast(self), @intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#outputFormat)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn OutputFormat(self: ?*anyopaque) i64 {
        return C.QPrinter_OutputFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPdfVersion)
    ///
    /// ``` self: ?*C.QPrinter, version: qpagedpaintdevice_enums.PdfVersion ```
    pub fn SetPdfVersion(self: ?*anyopaque, version: i64) void {
        C.QPrinter_SetPdfVersion(@ptrCast(self), @intCast(version));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pdfVersion)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PdfVersion(self: ?*anyopaque) i64 {
        return C.QPrinter_PdfVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrinterName)
    ///
    /// ``` self: ?*C.QPrinter, printerName: []const u8 ```
    pub fn SetPrinterName(self: ?*anyopaque, printerName: []const u8) void {
        const printerName_str = C.struct_libqt_string{
            .len = printerName.len,
            .data = @constCast(printerName.ptr),
        };
        C.QPrinter_SetPrinterName(@ptrCast(self), printerName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerName)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn PrinterName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrinterName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#isValid)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QPrinter_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setOutputFileName)
    ///
    /// ``` self: ?*C.QPrinter, outputFileName: []const u8 ```
    pub fn SetOutputFileName(self: ?*anyopaque, outputFileName: []const u8) void {
        const outputFileName_str = C.struct_libqt_string{
            .len = outputFileName.len,
            .data = @constCast(outputFileName.ptr),
        };
        C.QPrinter_SetOutputFileName(@ptrCast(self), outputFileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#outputFileName)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn OutputFileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_OutputFileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrintProgram)
    ///
    /// ``` self: ?*C.QPrinter, printProgram: []const u8 ```
    pub fn SetPrintProgram(self: ?*anyopaque, printProgram: []const u8) void {
        const printProgram_str = C.struct_libqt_string{
            .len = printProgram.len,
            .data = @constCast(printProgram.ptr),
        };
        C.QPrinter_SetPrintProgram(@ptrCast(self), printProgram_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printProgram)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn PrintProgram(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrintProgram(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setDocName)
    ///
    /// ``` self: ?*C.QPrinter, docName: []const u8 ```
    pub fn SetDocName(self: ?*anyopaque, docName: []const u8) void {
        const docName_str = C.struct_libqt_string{
            .len = docName.len,
            .data = @constCast(docName.ptr),
        };
        C.QPrinter_SetDocName(@ptrCast(self), docName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#docName)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn DocName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_DocName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCreator)
    ///
    /// ``` self: ?*C.QPrinter, creator: []const u8 ```
    pub fn SetCreator(self: ?*anyopaque, creator: []const u8) void {
        const creator_str = C.struct_libqt_string{
            .len = creator.len,
            .data = @constCast(creator.ptr),
        };
        C.QPrinter_SetCreator(@ptrCast(self), creator_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#creator)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn Creator(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_Creator(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPageOrder)
    ///
    /// ``` self: ?*C.QPrinter, pageOrder: qprinter_enums.PageOrder ```
    pub fn SetPageOrder(self: ?*anyopaque, pageOrder: i64) void {
        C.QPrinter_SetPageOrder(@ptrCast(self), @intCast(pageOrder));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pageOrder)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PageOrder(self: ?*anyopaque) i64 {
        return C.QPrinter_PageOrder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setResolution)
    ///
    /// ``` self: ?*C.QPrinter, resolution: i32 ```
    pub fn SetResolution(self: ?*anyopaque, resolution: i32) void {
        C.QPrinter_SetResolution(@ptrCast(self), @intCast(resolution));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#resolution)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Resolution(self: ?*anyopaque) i32 {
        return C.QPrinter_Resolution(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setColorMode)
    ///
    /// ``` self: ?*C.QPrinter, colorMode: qprinter_enums.ColorMode ```
    pub fn SetColorMode(self: ?*anyopaque, colorMode: i64) void {
        C.QPrinter_SetColorMode(@ptrCast(self), @intCast(colorMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#colorMode)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn ColorMode(self: ?*anyopaque) i64 {
        return C.QPrinter_ColorMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCollateCopies)
    ///
    /// ``` self: ?*C.QPrinter, collate: bool ```
    pub fn SetCollateCopies(self: ?*anyopaque, collate: bool) void {
        C.QPrinter_SetCollateCopies(@ptrCast(self), collate);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#collateCopies)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn CollateCopies(self: ?*anyopaque) bool {
        return C.QPrinter_CollateCopies(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFullPage)
    ///
    /// ``` self: ?*C.QPrinter, fullPage: bool ```
    pub fn SetFullPage(self: ?*anyopaque, fullPage: bool) void {
        C.QPrinter_SetFullPage(@ptrCast(self), fullPage);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fullPage)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn FullPage(self: ?*anyopaque) bool {
        return C.QPrinter_FullPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCopyCount)
    ///
    /// ``` self: ?*C.QPrinter, copyCount: i32 ```
    pub fn SetCopyCount(self: ?*anyopaque, copyCount: i32) void {
        C.QPrinter_SetCopyCount(@ptrCast(self), @intCast(copyCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#copyCount)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn CopyCount(self: ?*anyopaque) i32 {
        return C.QPrinter_CopyCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#supportsMultipleCopies)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn SupportsMultipleCopies(self: ?*anyopaque) bool {
        return C.QPrinter_SupportsMultipleCopies(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPaperSource)
    ///
    /// ``` self: ?*C.QPrinter, paperSource: qprinter_enums.PaperSource ```
    pub fn SetPaperSource(self: ?*anyopaque, paperSource: i64) void {
        C.QPrinter_SetPaperSource(@ptrCast(self), @intCast(paperSource));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paperSource)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PaperSource(self: ?*anyopaque) i64 {
        return C.QPrinter_PaperSource(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setDuplex)
    ///
    /// ``` self: ?*C.QPrinter, duplex: qprinter_enums.DuplexMode ```
    pub fn SetDuplex(self: ?*anyopaque, duplex: i64) void {
        C.QPrinter_SetDuplex(@ptrCast(self), @intCast(duplex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#duplex)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Duplex(self: ?*anyopaque) i64 {
        return C.QPrinter_Duplex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#supportedResolutions)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn SupportedResolutions(self: ?*anyopaque, allocator: std.mem.Allocator) []i32 {
        const _arr: C.struct_libqt_list = C.QPrinter_SupportedResolutions(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(i32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]i32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFontEmbeddingEnabled)
    ///
    /// ``` self: ?*C.QPrinter, enable: bool ```
    pub fn SetFontEmbeddingEnabled(self: ?*anyopaque, enable: bool) void {
        C.QPrinter_SetFontEmbeddingEnabled(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fontEmbeddingEnabled)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn FontEmbeddingEnabled(self: ?*anyopaque) bool {
        return C.QPrinter_FontEmbeddingEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paperRect)
    ///
    /// ``` self: ?*C.QPrinter, param1: qprinter_enums.Unit ```
    pub fn PaperRect(self: ?*anyopaque, param1: i64) ?*C.QRectF {
        return C.QPrinter_PaperRect(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pageRect)
    ///
    /// ``` self: ?*C.QPrinter, param1: qprinter_enums.Unit ```
    pub fn PageRect(self: ?*anyopaque, param1: i64) ?*C.QRectF {
        return C.QPrinter_PageRect(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerSelectionOption)
    ///
    /// ``` self: ?*C.QPrinter, allocator: std.mem.Allocator ```
    pub fn PrinterSelectionOption(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrinterSelectionOption(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrinterSelectionOption)
    ///
    /// ``` self: ?*C.QPrinter, printerSelectionOption: []const u8 ```
    pub fn SetPrinterSelectionOption(self: ?*anyopaque, printerSelectionOption: []const u8) void {
        const printerSelectionOption_str = C.struct_libqt_string{
            .len = printerSelectionOption.len,
            .data = @constCast(printerSelectionOption.ptr),
        };
        C.QPrinter_SetPrinterSelectionOption(@ptrCast(self), printerSelectionOption_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#newPage)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn NewPage(self: ?*anyopaque) bool {
        return C.QPrinter_NewPage(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn () callconv(.c) bool ```
    pub fn OnNewPage(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QPrinter_OnNewPage(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn QBaseNewPage(self: ?*anyopaque) bool {
        return C.QPrinter_QBaseNewPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#abort)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Abort(self: ?*anyopaque) bool {
        return C.QPrinter_Abort(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerState)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PrinterState(self: ?*anyopaque) i64 {
        return C.QPrinter_PrinterState(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paintEngine)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPrinter_PaintEngine(@ptrCast(self));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QPrinter_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QPrinter_QBasePaintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printEngine)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PrintEngine(self: ?*anyopaque) ?*C.QPrintEngine {
        return C.QPrinter_PrintEngine(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFromTo)
    ///
    /// ``` self: ?*C.QPrinter, fromPage: i32, toPage: i32 ```
    pub fn SetFromTo(self: ?*anyopaque, fromPage: i32, toPage: i32) void {
        C.QPrinter_SetFromTo(@ptrCast(self), @intCast(fromPage), @intCast(toPage));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fromPage)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn FromPage(self: ?*anyopaque) i32 {
        return C.QPrinter_FromPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#toPage)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn ToPage(self: ?*anyopaque) i32 {
        return C.QPrinter_ToPage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrintRange)
    ///
    /// ``` self: ?*C.QPrinter, range: qprinter_enums.PrintRange ```
    pub fn SetPrintRange(self: ?*anyopaque, range: i64) void {
        C.QPrinter_SetPrintRange(@ptrCast(self), @intCast(range));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printRange)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PrintRange(self: ?*anyopaque) i64 {
        return C.QPrinter_PrintRange(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#metric)
    ///
    /// ``` self: ?*C.QPrinter, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, param1: i64) i32 {
        return C.QPrinter_Metric(@ptrCast(self), @intCast(param1));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QPrinter_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPrinter, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, param1: i64) i32 {
        return C.QPrinter_QBaseMetric(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setEngines)
    ///
    /// ``` self: ?*C.QPrinter, printEngine: ?*C.QPrintEngine, paintEngine: ?*C.QPaintEngine ```
    pub fn SetEngines(self: ?*anyopaque, printEngine: ?*anyopaque, paintEngine: ?*anyopaque) void {
        C.QPrinter_SetEngines(@ptrCast(self), @ptrCast(printEngine), @ptrCast(paintEngine));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPrintEngine, ?*C.QPaintEngine) callconv(.c) void ```
    pub fn OnSetEngines(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPrinter_OnSetEngines(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QPrinter, printEngine: ?*C.QPrintEngine, paintEngine: ?*C.QPaintEngine ```
    pub fn QBaseSetEngines(self: ?*anyopaque, printEngine: ?*anyopaque, paintEngine: ?*anyopaque) void {
        C.QPrinter_QBaseSetEngines(@ptrCast(self), @ptrCast(printEngine), @ptrCast(paintEngine));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#pageLayout)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PageLayout(self: ?*anyopaque) ?*C.QPageLayout {
        return C.QPagedPaintDevice_PageLayout(@ptrCast(self));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#pageRanges)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PageRanges(self: ?*anyopaque) ?*C.QPageRanges {
        return C.QPagedPaintDevice_PageRanges(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#width)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Width(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#height)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Height(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatio(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QPaintDevice_ColorCount(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#depth)
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Depth(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioFScale)
    ///
    ///
    pub fn DevicePixelRatioFScale() f64 {
        return C.QPaintDevice_DevicePixelRatioFScale();
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageLayout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, pageLayout: ?*C.QPageLayout ```
    pub fn SetPageLayout(self: ?*anyopaque, pageLayout: ?*anyopaque) bool {
        return C.QPrinter_SetPageLayout(@ptrCast(self), @ptrCast(pageLayout));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, pageLayout: ?*C.QPageLayout ```
    pub fn QBaseSetPageLayout(self: ?*anyopaque, pageLayout: ?*anyopaque) bool {
        return C.QPrinter_QBaseSetPageLayout(@ptrCast(self), @ptrCast(pageLayout));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPageLayout) callconv(.c) bool ```
    pub fn OnSetPageLayout(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QPrinter_OnSetPageLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageSize)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, pageSize: ?*C.QPageSize ```
    pub fn SetPageSize(self: ?*anyopaque, pageSize: ?*anyopaque) bool {
        return C.QPrinter_SetPageSize(@ptrCast(self), @ptrCast(pageSize));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, pageSize: ?*C.QPageSize ```
    pub fn QBaseSetPageSize(self: ?*anyopaque, pageSize: ?*anyopaque) bool {
        return C.QPrinter_QBaseSetPageSize(@ptrCast(self), @ptrCast(pageSize));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPageSize) callconv(.c) bool ```
    pub fn OnSetPageSize(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QPrinter_OnSetPageSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageOrientation)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, orientation: qpagelayout_enums.Orientation ```
    pub fn SetPageOrientation(self: ?*anyopaque, orientation: i64) bool {
        return C.QPrinter_SetPageOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, orientation: qpagelayout_enums.Orientation ```
    pub fn QBaseSetPageOrientation(self: ?*anyopaque, orientation: i64) bool {
        return C.QPrinter_QBaseSetPageOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, qpagelayout_enums.Orientation) callconv(.c) bool ```
    pub fn OnSetPageOrientation(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) bool) void {
        C.QPrinter_OnSetPageOrientation(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageMargins)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit ```
    pub fn SetPageMargins(self: ?*anyopaque, margins: ?*anyopaque, units: i64) bool {
        return C.QPrinter_SetPageMargins(@ptrCast(self), @ptrCast(margins), @intCast(units));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit ```
    pub fn QBaseSetPageMargins(self: ?*anyopaque, margins: ?*anyopaque, units: i64) bool {
        return C.QPrinter_QBaseSetPageMargins(@ptrCast(self), @ptrCast(margins), @intCast(units));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QMarginsF, qpagelayout_enums.Unit) callconv(.c) bool ```
    pub fn OnSetPageMargins(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64) callconv(.c) bool) void {
        C.QPrinter_OnSetPageMargins(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageRanges)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, ranges: ?*C.QPageRanges ```
    pub fn SetPageRanges(self: ?*anyopaque, ranges: ?*anyopaque) void {
        C.QPrinter_SetPageRanges(@ptrCast(self), @ptrCast(ranges));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, ranges: ?*C.QPageRanges ```
    pub fn QBaseSetPageRanges(self: ?*anyopaque, ranges: ?*anyopaque) void {
        C.QPrinter_QBaseSetPageRanges(@ptrCast(self), @ptrCast(ranges));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPageRanges) callconv(.c) void ```
    pub fn OnSetPageRanges(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPrinter_OnSetPageRanges(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPrinter_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QPrinter_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QPrinter_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPrinter_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QPrinter_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn (?*C.QPrinter, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QPrinter_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPrinter_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QPrinter_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QPrinter, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QPrinter_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPrinter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPrinter_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qprinter.html#types
pub const enums = struct {
    pub const PrinterMode = enum {
        pub const ScreenResolution: i32 = 0;
        pub const PrinterResolution: i32 = 1;
        pub const HighResolution: i32 = 2;
    };

    pub const PageOrder = enum {
        pub const FirstPageFirst: i32 = 0;
        pub const LastPageFirst: i32 = 1;
    };

    pub const ColorMode = enum {
        pub const GrayScale: i32 = 0;
        pub const Color: i32 = 1;
    };

    pub const PaperSource = enum {
        pub const OnlyOne: i32 = 0;
        pub const Lower: i32 = 1;
        pub const Middle: i32 = 2;
        pub const Manual: i32 = 3;
        pub const Envelope: i32 = 4;
        pub const EnvelopeManual: i32 = 5;
        pub const Auto: i32 = 6;
        pub const Tractor: i32 = 7;
        pub const SmallFormat: i32 = 8;
        pub const LargeFormat: i32 = 9;
        pub const LargeCapacity: i32 = 10;
        pub const Cassette: i32 = 11;
        pub const FormSource: i32 = 12;
        pub const MaxPageSource: i32 = 13;
        pub const CustomSource: i32 = 14;
        pub const LastPaperSource: i32 = 14;
        pub const Upper: i32 = 0;
    };

    pub const PrinterState = enum {
        pub const Idle: i32 = 0;
        pub const Active: i32 = 1;
        pub const Aborted: i32 = 2;
        pub const Error: i32 = 3;
    };

    pub const OutputFormat = enum {
        pub const NativeFormat: i32 = 0;
        pub const PdfFormat: i32 = 1;
    };

    pub const PrintRange = enum {
        pub const AllPages: i32 = 0;
        pub const Selection: i32 = 1;
        pub const PageRange: i32 = 2;
        pub const CurrentPage: i32 = 3;
    };

    pub const Unit = enum {
        pub const Millimeter: i32 = 0;
        pub const Point: i32 = 1;
        pub const Inch: i32 = 2;
        pub const Pica: i32 = 3;
        pub const Didot: i32 = 4;
        pub const Cicero: i32 = 5;
        pub const DevicePixel: i32 = 6;
    };

    pub const DuplexMode = enum {
        pub const DuplexNone: i32 = 0;
        pub const DuplexAuto: i32 = 1;
        pub const DuplexLongSide: i32 = 2;
        pub const DuplexShortSide: i32 = 3;
    };
};
