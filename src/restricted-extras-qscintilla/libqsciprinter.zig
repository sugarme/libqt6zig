const C = @import("qt6c");
const qpagedpaintdevice_enums = @import("../libqpagedpaintdevice.zig").enums;
const qpagelayout_enums = @import("../libqpagelayout.zig").enums;
const qpaintdevice_enums = @import("../libqpaintdevice.zig").enums;
const qprinter_enums = @import("../printsupport/libqprinter.zig").enums;
const qsciscintilla_enums = @import("libqsciscintilla.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qsciprinter.html
pub const qsciprinter = struct {
    /// New constructs a new QsciPrinter object.
    ///
    ///
    pub fn New() ?*C.QsciPrinter {
        return C.QsciPrinter_new();
    }

    /// New2 constructs a new QsciPrinter object.
    ///
    /// ``` mode: qprinter_enums.PrinterMode ```
    pub fn New2(mode: i64) ?*C.QsciPrinter {
        return C.QsciPrinter_new2(@intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#formatPage)
    ///
    /// ``` self: ?*C.QsciPrinter, painter: ?*C.QPainter, drawing: bool, area: ?*C.QRect, pagenr: i32 ```
    pub fn FormatPage(self: ?*anyopaque, painter: ?*anyopaque, drawing: bool, area: ?*anyopaque, pagenr: i32) void {
        C.QsciPrinter_FormatPage(@ptrCast(self), @ptrCast(painter), drawing, @ptrCast(area), @intCast(pagenr));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPainter, bool, ?*C.QRect, i32) callconv(.c) void ```
    pub fn OnFormatPage(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, bool, ?*anyopaque, i32) callconv(.c) void) void {
        C.QsciPrinter_OnFormatPage(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QsciPrinter, painter: ?*C.QPainter, drawing: bool, area: ?*C.QRect, pagenr: i32 ```
    pub fn QBaseFormatPage(self: ?*anyopaque, painter: ?*anyopaque, drawing: bool, area: ?*anyopaque, pagenr: i32) void {
        C.QsciPrinter_QBaseFormatPage(@ptrCast(self), @ptrCast(painter), drawing, @ptrCast(area), @intCast(pagenr));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#magnification)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Magnification(self: ?*anyopaque) i32 {
        return C.QsciPrinter_Magnification(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#setMagnification)
    ///
    /// ``` self: ?*C.QsciPrinter, magnification: i32 ```
    pub fn SetMagnification(self: ?*anyopaque, magnification: i32) void {
        C.QsciPrinter_SetMagnification(@ptrCast(self), @intCast(magnification));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, i32) callconv(.c) void ```
    pub fn OnSetMagnification(self: ?*anyopaque, slot: fn (?*anyopaque, i32) callconv(.c) void) void {
        C.QsciPrinter_OnSetMagnification(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QsciPrinter, magnification: i32 ```
    pub fn QBaseSetMagnification(self: ?*anyopaque, magnification: i32) void {
        C.QsciPrinter_QBaseSetMagnification(@ptrCast(self), @intCast(magnification));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#printRange)
    ///
    /// ``` self: ?*C.QsciPrinter, qsb: ?*C.QsciScintillaBase, painter: ?*C.QPainter, from: i32, to: i32 ```
    pub fn PrintRange(self: ?*anyopaque, qsb: ?*anyopaque, painter: ?*anyopaque, from: i32, to: i32) i32 {
        return C.QsciPrinter_PrintRange(@ptrCast(self), @ptrCast(qsb), @ptrCast(painter), @intCast(from), @intCast(to));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QsciScintillaBase, ?*C.QPainter, i32, i32) callconv(.c) i32 ```
    pub fn OnPrintRange(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque, i32, i32) callconv(.c) i32) void {
        C.QsciPrinter_OnPrintRange(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QsciPrinter, qsb: ?*C.QsciScintillaBase, painter: ?*C.QPainter, from: i32, to: i32 ```
    pub fn QBasePrintRange(self: ?*anyopaque, qsb: ?*anyopaque, painter: ?*anyopaque, from: i32, to: i32) i32 {
        return C.QsciPrinter_QBasePrintRange(@ptrCast(self), @ptrCast(qsb), @ptrCast(painter), @intCast(from), @intCast(to));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#printRange)
    ///
    /// ``` self: ?*C.QsciPrinter, qsb: ?*C.QsciScintillaBase, from: i32, to: i32 ```
    pub fn PrintRange2(self: ?*anyopaque, qsb: ?*anyopaque, from: i32, to: i32) i32 {
        return C.QsciPrinter_PrintRange2(@ptrCast(self), @ptrCast(qsb), @intCast(from), @intCast(to));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QsciScintillaBase, i32, i32) callconv(.c) i32 ```
    pub fn OnPrintRange2(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i32, i32) callconv(.c) i32) void {
        C.QsciPrinter_OnPrintRange2(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QsciPrinter, qsb: ?*C.QsciScintillaBase, from: i32, to: i32 ```
    pub fn QBasePrintRange2(self: ?*anyopaque, qsb: ?*anyopaque, from: i32, to: i32) i32 {
        return C.QsciPrinter_QBasePrintRange2(@ptrCast(self), @ptrCast(qsb), @intCast(from), @intCast(to));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#wrapMode)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn WrapMode(self: ?*anyopaque) i64 {
        return C.QsciPrinter_WrapMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsciprinter.html#setWrapMode)
    ///
    /// ``` self: ?*C.QsciPrinter, wmode: qsciscintilla_enums.WrapMode ```
    pub fn SetWrapMode(self: ?*anyopaque, wmode: i64) void {
        C.QsciPrinter_SetWrapMode(@ptrCast(self), @intCast(wmode));
    }

    /// Allows for overriding the related default method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, qsciscintilla_enums.WrapMode) callconv(.c) void ```
    pub fn OnSetWrapMode(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) void) void {
        C.QsciPrinter_OnSetWrapMode(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Base class method implementation
    ///
    /// ``` self: ?*C.QsciPrinter, wmode: qsciscintilla_enums.WrapMode ```
    pub fn QBaseSetWrapMode(self: ?*anyopaque, wmode: i64) void {
        C.QsciPrinter_QBaseSetWrapMode(@ptrCast(self), @intCast(wmode));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setOutputFormat)
    ///
    /// ``` self: ?*C.QsciPrinter, format: qprinter_enums.OutputFormat ```
    pub fn SetOutputFormat(self: ?*anyopaque, format: i64) void {
        C.QPrinter_SetOutputFormat(@ptrCast(self), @intCast(format));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#outputFormat)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn OutputFormat(self: ?*anyopaque) i64 {
        return C.QPrinter_OutputFormat(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPdfVersion)
    ///
    /// ``` self: ?*C.QsciPrinter, version: qpagedpaintdevice_enums.PdfVersion ```
    pub fn SetPdfVersion(self: ?*anyopaque, version: i64) void {
        C.QPrinter_SetPdfVersion(@ptrCast(self), @intCast(version));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pdfVersion)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PdfVersion(self: ?*anyopaque) i64 {
        return C.QPrinter_PdfVersion(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrinterName)
    ///
    /// ``` self: ?*C.QsciPrinter, printerName: []const u8 ```
    pub fn SetPrinterName(self: ?*anyopaque, printerName: []const u8) void {
        const printerName_str = C.struct_libqt_string{
            .len = printerName.len,
            .data = @constCast(printerName.ptr),
        };
        C.QPrinter_SetPrinterName(@ptrCast(self), printerName_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerName)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn PrinterName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrinterName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#isValid)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QPrinter_IsValid(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setOutputFileName)
    ///
    /// ``` self: ?*C.QsciPrinter, outputFileName: []const u8 ```
    pub fn SetOutputFileName(self: ?*anyopaque, outputFileName: []const u8) void {
        const outputFileName_str = C.struct_libqt_string{
            .len = outputFileName.len,
            .data = @constCast(outputFileName.ptr),
        };
        C.QPrinter_SetOutputFileName(@ptrCast(self), outputFileName_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#outputFileName)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn OutputFileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_OutputFileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrintProgram)
    ///
    /// ``` self: ?*C.QsciPrinter, printProgram: []const u8 ```
    pub fn SetPrintProgram(self: ?*anyopaque, printProgram: []const u8) void {
        const printProgram_str = C.struct_libqt_string{
            .len = printProgram.len,
            .data = @constCast(printProgram.ptr),
        };
        C.QPrinter_SetPrintProgram(@ptrCast(self), printProgram_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printProgram)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn PrintProgram(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrintProgram(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setDocName)
    ///
    /// ``` self: ?*C.QsciPrinter, docName: []const u8 ```
    pub fn SetDocName(self: ?*anyopaque, docName: []const u8) void {
        const docName_str = C.struct_libqt_string{
            .len = docName.len,
            .data = @constCast(docName.ptr),
        };
        C.QPrinter_SetDocName(@ptrCast(self), docName_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#docName)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn DocName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_DocName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCreator)
    ///
    /// ``` self: ?*C.QsciPrinter, creator: []const u8 ```
    pub fn SetCreator(self: ?*anyopaque, creator: []const u8) void {
        const creator_str = C.struct_libqt_string{
            .len = creator.len,
            .data = @constCast(creator.ptr),
        };
        C.QPrinter_SetCreator(@ptrCast(self), creator_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#creator)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn Creator(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_Creator(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPageOrder)
    ///
    /// ``` self: ?*C.QsciPrinter, pageOrder: qprinter_enums.PageOrder ```
    pub fn SetPageOrder(self: ?*anyopaque, pageOrder: i64) void {
        C.QPrinter_SetPageOrder(@ptrCast(self), @intCast(pageOrder));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pageOrder)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PageOrder(self: ?*anyopaque) i64 {
        return C.QPrinter_PageOrder(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setResolution)
    ///
    /// ``` self: ?*C.QsciPrinter, resolution: i32 ```
    pub fn SetResolution(self: ?*anyopaque, resolution: i32) void {
        C.QPrinter_SetResolution(@ptrCast(self), @intCast(resolution));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#resolution)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Resolution(self: ?*anyopaque) i32 {
        return C.QPrinter_Resolution(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setColorMode)
    ///
    /// ``` self: ?*C.QsciPrinter, colorMode: qprinter_enums.ColorMode ```
    pub fn SetColorMode(self: ?*anyopaque, colorMode: i64) void {
        C.QPrinter_SetColorMode(@ptrCast(self), @intCast(colorMode));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#colorMode)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn ColorMode(self: ?*anyopaque) i64 {
        return C.QPrinter_ColorMode(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCollateCopies)
    ///
    /// ``` self: ?*C.QsciPrinter, collate: bool ```
    pub fn SetCollateCopies(self: ?*anyopaque, collate: bool) void {
        C.QPrinter_SetCollateCopies(@ptrCast(self), collate);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#collateCopies)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn CollateCopies(self: ?*anyopaque) bool {
        return C.QPrinter_CollateCopies(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFullPage)
    ///
    /// ``` self: ?*C.QsciPrinter, fullPage: bool ```
    pub fn SetFullPage(self: ?*anyopaque, fullPage: bool) void {
        C.QPrinter_SetFullPage(@ptrCast(self), fullPage);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fullPage)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn FullPage(self: ?*anyopaque) bool {
        return C.QPrinter_FullPage(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setCopyCount)
    ///
    /// ``` self: ?*C.QsciPrinter, copyCount: i32 ```
    pub fn SetCopyCount(self: ?*anyopaque, copyCount: i32) void {
        C.QPrinter_SetCopyCount(@ptrCast(self), @intCast(copyCount));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#copyCount)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn CopyCount(self: ?*anyopaque) i32 {
        return C.QPrinter_CopyCount(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#supportsMultipleCopies)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn SupportsMultipleCopies(self: ?*anyopaque) bool {
        return C.QPrinter_SupportsMultipleCopies(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPaperSource)
    ///
    /// ``` self: ?*C.QsciPrinter, paperSource: qprinter_enums.PaperSource ```
    pub fn SetPaperSource(self: ?*anyopaque, paperSource: i64) void {
        C.QPrinter_SetPaperSource(@ptrCast(self), @intCast(paperSource));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paperSource)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PaperSource(self: ?*anyopaque) i64 {
        return C.QPrinter_PaperSource(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setDuplex)
    ///
    /// ``` self: ?*C.QsciPrinter, duplex: qprinter_enums.DuplexMode ```
    pub fn SetDuplex(self: ?*anyopaque, duplex: i64) void {
        C.QPrinter_SetDuplex(@ptrCast(self), @intCast(duplex));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#duplex)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Duplex(self: ?*anyopaque) i64 {
        return C.QPrinter_Duplex(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#supportedResolutions)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
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

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFontEmbeddingEnabled)
    ///
    /// ``` self: ?*C.QsciPrinter, enable: bool ```
    pub fn SetFontEmbeddingEnabled(self: ?*anyopaque, enable: bool) void {
        C.QPrinter_SetFontEmbeddingEnabled(@ptrCast(self), enable);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fontEmbeddingEnabled)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn FontEmbeddingEnabled(self: ?*anyopaque) bool {
        return C.QPrinter_FontEmbeddingEnabled(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paperRect)
    ///
    /// ``` self: ?*C.QsciPrinter, param1: qprinter_enums.Unit ```
    pub fn PaperRect(self: ?*anyopaque, param1: i64) ?*C.QRectF {
        return C.QPrinter_PaperRect(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#pageRect)
    ///
    /// ``` self: ?*C.QsciPrinter, param1: qprinter_enums.Unit ```
    pub fn PageRect(self: ?*anyopaque, param1: i64) ?*C.QRectF {
        return C.QPrinter_PageRect(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerSelectionOption)
    ///
    /// ``` self: ?*C.QsciPrinter, allocator: std.mem.Allocator ```
    pub fn PrinterSelectionOption(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPrinter_PrinterSelectionOption(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrinterSelectionOption)
    ///
    /// ``` self: ?*C.QsciPrinter, printerSelectionOption: []const u8 ```
    pub fn SetPrinterSelectionOption(self: ?*anyopaque, printerSelectionOption: []const u8) void {
        const printerSelectionOption_str = C.struct_libqt_string{
            .len = printerSelectionOption.len,
            .data = @constCast(printerSelectionOption.ptr),
        };
        C.QPrinter_SetPrinterSelectionOption(@ptrCast(self), printerSelectionOption_str);
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#abort)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Abort(self: ?*anyopaque) bool {
        return C.QPrinter_Abort(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printerState)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PrinterState(self: ?*anyopaque) i64 {
        return C.QPrinter_PrinterState(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#printEngine)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PrintEngine(self: ?*anyopaque) ?*C.QPrintEngine {
        return C.QPrinter_PrintEngine(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setFromTo)
    ///
    /// ``` self: ?*C.QsciPrinter, fromPage: i32, toPage: i32 ```
    pub fn SetFromTo(self: ?*anyopaque, fromPage: i32, toPage: i32) void {
        C.QPrinter_SetFromTo(@ptrCast(self), @intCast(fromPage), @intCast(toPage));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#fromPage)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn FromPage(self: ?*anyopaque) i32 {
        return C.QPrinter_FromPage(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#toPage)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn ToPage(self: ?*anyopaque) i32 {
        return C.QPrinter_ToPage(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setPrintRange)
    ///
    /// ``` self: ?*C.QsciPrinter, range: qprinter_enums.PrintRange ```
    pub fn SetPrintRange(self: ?*anyopaque, range: i64) void {
        C.QPrinter_SetPrintRange(@ptrCast(self), @intCast(range));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#pageLayout)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PageLayout(self: ?*anyopaque) ?*C.QPageLayout {
        return C.QPagedPaintDevice_PageLayout(@ptrCast(self));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#pageRanges)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PageRanges(self: ?*anyopaque) ?*C.QPageRanges {
        return C.QPagedPaintDevice_PageRanges(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#paintingActive)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PaintingActive(self: ?*anyopaque) bool {
        return C.QPaintDevice_PaintingActive(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#width)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Width(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Width(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#height)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn Height(self: ?*anyopaque) i32 {
        return C.QPaintDevice_Height(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#widthMM)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn WidthMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_WidthMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#heightMM)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn HeightMM(self: ?*anyopaque) i32 {
        return C.QPaintDevice_HeightMM(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiX)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn LogicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#logicalDpiY)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn LogicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_LogicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiX)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PhysicalDpiX(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiX(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#physicalDpiY)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PhysicalDpiY(self: ?*anyopaque) i32 {
        return C.QPaintDevice_PhysicalDpiY(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatio)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn DevicePixelRatio(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatio(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#devicePixelRatioF)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn DevicePixelRatioF(self: ?*anyopaque) f64 {
        return C.QPaintDevice_DevicePixelRatioF(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#colorCount)
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn ColorCount(self: ?*anyopaque) i32 {
        return C.QPaintDevice_ColorCount(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#depth)
    ///
    /// ``` self: ?*C.QsciPrinter ```
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

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#devType)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn DevType(self: ?*anyopaque) i32 {
        return C.QsciPrinter_DevType(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn QBaseDevType(self: ?*anyopaque) i32 {
        return C.QsciPrinter_QBaseDevType(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn () callconv(.c) i32 ```
    pub fn OnDevType(self: ?*anyopaque, slot: fn () callconv(.c) i32) void {
        C.QsciPrinter_OnDevType(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#newPage)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn NewPage(self: ?*anyopaque) bool {
        return C.QsciPrinter_NewPage(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn QBaseNewPage(self: ?*anyopaque) bool {
        return C.QsciPrinter_QBaseNewPage(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn () callconv(.c) bool ```
    pub fn OnNewPage(self: ?*anyopaque, slot: fn () callconv(.c) bool) void {
        C.QsciPrinter_OnNewPage(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#paintEngine)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn PaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QsciPrinter_PaintEngine(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn QBasePaintEngine(self: ?*anyopaque) ?*C.QPaintEngine {
        return C.QsciPrinter_QBasePaintEngine(@ptrCast(self));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn () callconv(.c) ?*C.QPaintEngine ```
    pub fn OnPaintEngine(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPaintEngine) void {
        C.QsciPrinter_OnPaintEngine(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#metric)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn Metric(self: ?*anyopaque, param1: i64) i32 {
        return C.QsciPrinter_Metric(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, param1: qpaintdevice_enums.PaintDeviceMetric ```
    pub fn QBaseMetric(self: ?*anyopaque, param1: i64) i32 {
        return C.QsciPrinter_QBaseMetric(@ptrCast(self), @intCast(param1));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, qpaintdevice_enums.PaintDeviceMetric) callconv(.c) i32 ```
    pub fn OnMetric(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) i32) void {
        C.QsciPrinter_OnMetric(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageLayout)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, pageLayout: ?*C.QPageLayout ```
    pub fn SetPageLayout(self: ?*anyopaque, pageLayout: ?*anyopaque) bool {
        return C.QsciPrinter_SetPageLayout(@ptrCast(self), @ptrCast(pageLayout));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, pageLayout: ?*C.QPageLayout ```
    pub fn QBaseSetPageLayout(self: ?*anyopaque, pageLayout: ?*anyopaque) bool {
        return C.QsciPrinter_QBaseSetPageLayout(@ptrCast(self), @ptrCast(pageLayout));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPageLayout) callconv(.c) bool ```
    pub fn OnSetPageLayout(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QsciPrinter_OnSetPageLayout(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageSize)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, pageSize: ?*C.QPageSize ```
    pub fn SetPageSize(self: ?*anyopaque, pageSize: ?*anyopaque) bool {
        return C.QsciPrinter_SetPageSize(@ptrCast(self), @ptrCast(pageSize));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, pageSize: ?*C.QPageSize ```
    pub fn QBaseSetPageSize(self: ?*anyopaque, pageSize: ?*anyopaque) bool {
        return C.QsciPrinter_QBaseSetPageSize(@ptrCast(self), @ptrCast(pageSize));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPageSize) callconv(.c) bool ```
    pub fn OnSetPageSize(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) bool) void {
        C.QsciPrinter_OnSetPageSize(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageOrientation)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, orientation: qpagelayout_enums.Orientation ```
    pub fn SetPageOrientation(self: ?*anyopaque, orientation: i64) bool {
        return C.QsciPrinter_SetPageOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, orientation: qpagelayout_enums.Orientation ```
    pub fn QBaseSetPageOrientation(self: ?*anyopaque, orientation: i64) bool {
        return C.QsciPrinter_QBaseSetPageOrientation(@ptrCast(self), @intCast(orientation));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, qpagelayout_enums.Orientation) callconv(.c) bool ```
    pub fn OnSetPageOrientation(self: ?*anyopaque, slot: fn (?*anyopaque, i64) callconv(.c) bool) void {
        C.QsciPrinter_OnSetPageOrientation(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageMargins)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit ```
    pub fn SetPageMargins(self: ?*anyopaque, margins: ?*anyopaque, units: i64) bool {
        return C.QsciPrinter_SetPageMargins(@ptrCast(self), @ptrCast(margins), @intCast(units));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, margins: ?*C.QMarginsF, units: qpagelayout_enums.Unit ```
    pub fn QBaseSetPageMargins(self: ?*anyopaque, margins: ?*anyopaque, units: i64) bool {
        return C.QsciPrinter_QBaseSetPageMargins(@ptrCast(self), @ptrCast(margins), @intCast(units));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QMarginsF, qpagelayout_enums.Unit) callconv(.c) bool ```
    pub fn OnSetPageMargins(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, i64) callconv(.c) bool) void {
        C.QsciPrinter_OnSetPageMargins(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpagedpaintdevice.html#setPageRanges)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, ranges: ?*C.QPageRanges ```
    pub fn SetPageRanges(self: ?*anyopaque, ranges: ?*anyopaque) void {
        C.QsciPrinter_SetPageRanges(@ptrCast(self), @ptrCast(ranges));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, ranges: ?*C.QPageRanges ```
    pub fn QBaseSetPageRanges(self: ?*anyopaque, ranges: ?*anyopaque) void {
        C.QsciPrinter_QBaseSetPageRanges(@ptrCast(self), @ptrCast(ranges));
    }

    /// Inherited from QPagedPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPageRanges) callconv(.c) void ```
    pub fn OnSetPageRanges(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QsciPrinter_OnSetPageRanges(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#initPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, painter: ?*C.QPainter ```
    pub fn InitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QsciPrinter_InitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, painter: ?*C.QPainter ```
    pub fn QBaseInitPainter(self: ?*anyopaque, painter: ?*anyopaque) void {
        C.QsciPrinter_QBaseInitPainter(@ptrCast(self), @ptrCast(painter));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPainter) callconv(.c) void ```
    pub fn OnInitPainter(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QsciPrinter_OnInitPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#redirected)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, offset: ?*C.QPoint ```
    pub fn Redirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QsciPrinter_Redirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, offset: ?*C.QPoint ```
    pub fn QBaseRedirected(self: ?*anyopaque, offset: ?*anyopaque) ?*C.QPaintDevice {
        return C.QsciPrinter_QBaseRedirected(@ptrCast(self), @ptrCast(offset));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPoint) callconv(.c) ?*C.QPaintDevice ```
    pub fn OnRedirected(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque) callconv(.c) ?*C.QPaintDevice) void {
        C.QsciPrinter_OnRedirected(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPaintDevice
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qpaintdevice.html#sharedPainter)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn SharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QsciPrinter_SharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn QBaseSharedPainter(self: ?*anyopaque) ?*C.QPainter {
        return C.QsciPrinter_QBaseSharedPainter(@ptrCast(self));
    }

    /// Inherited from QPaintDevice
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn () callconv(.c) ?*C.QPainter ```
    pub fn OnSharedPainter(self: ?*anyopaque, slot: fn () callconv(.c) ?*C.QPainter) void {
        C.QsciPrinter_OnSharedPainter(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Inherited from QPrinter
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qprinter.html#setEngines)
    ///
    /// Wrapper to allow calling virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, printEngine: ?*C.QPrintEngine, paintEngine: ?*C.QPaintEngine ```
    pub fn SetEngines(self: ?*anyopaque, printEngine: ?*anyopaque, paintEngine: ?*anyopaque) void {
        C.QsciPrinter_SetEngines(@ptrCast(self), @ptrCast(printEngine), @ptrCast(paintEngine));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow calling base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, printEngine: ?*C.QPrintEngine, paintEngine: ?*C.QPaintEngine ```
    pub fn QBaseSetEngines(self: ?*anyopaque, printEngine: ?*anyopaque, paintEngine: ?*anyopaque) void {
        C.QsciPrinter_QBaseSetEngines(@ptrCast(self), @ptrCast(printEngine), @ptrCast(paintEngine));
    }

    /// Inherited from QPrinter
    ///
    /// Wrapper to allow overriding base class virtual or protected method
    ///
    /// ``` self: ?*C.QsciPrinter, slot: fn (?*C.QsciPrinter, ?*C.QPrintEngine, ?*C.QPaintEngine) callconv(.c) void ```
    pub fn OnSetEngines(self: ?*anyopaque, slot: fn (?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) void) void {
        C.QsciPrinter_OnSetEngines(@ptrCast(self), @as(isize, @bitCast(@intFromPtr(&slot))));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QsciPrinter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QsciPrinter_Delete(@ptrCast(self));
    }
};
