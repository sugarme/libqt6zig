const C = @import("qt6c");
const qfont_enums = @import("libqfont.zig").enums;
const qfontdatabase_enums = @import("libqfontdatabase.zig").enums;
const qrawfont_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qrawfont.html
pub const qrawfont = struct {
    /// New constructs a new QRawFont object.
    ///
    ///
    pub fn New() ?*C.QRawFont {
        return C.QRawFont_new();
    }

    /// New2 constructs a new QRawFont object.
    ///
    /// ``` fileName: []const u8, pixelSize: f64 ```
    pub fn New2(fileName: []const u8, pixelSize: f64) ?*C.QRawFont {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QRawFont_new2(fileName_str, @floatCast(pixelSize));
    }

    /// New3 constructs a new QRawFont object.
    ///
    /// ``` fontData: []u8, pixelSize: f64 ```
    pub fn New3(fontData: []u8, pixelSize: f64) ?*C.QRawFont {
        const fontData_str = C.struct_libqt_string{
            .len = fontData.len,
            .data = @constCast(fontData.ptr),
        };

        return C.QRawFont_new3(fontData_str, @floatCast(pixelSize));
    }

    /// New4 constructs a new QRawFont object.
    ///
    /// ``` other: ?*C.QRawFont ```
    pub fn New4(other: ?*anyopaque) ?*C.QRawFont {
        return C.QRawFont_new4(@ptrCast(other));
    }

    /// New5 constructs a new QRawFont object.
    ///
    /// ``` fileName: []const u8, pixelSize: f64, hintingPreference: qfont_enums.HintingPreference ```
    pub fn New5(fileName: []const u8, pixelSize: f64, hintingPreference: i64) ?*C.QRawFont {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QRawFont_new5(fileName_str, @floatCast(pixelSize), @intCast(hintingPreference));
    }

    /// New6 constructs a new QRawFont object.
    ///
    /// ``` fontData: []u8, pixelSize: f64, hintingPreference: qfont_enums.HintingPreference ```
    pub fn New6(fontData: []u8, pixelSize: f64, hintingPreference: i64) ?*C.QRawFont {
        const fontData_str = C.struct_libqt_string{
            .len = fontData.len,
            .data = @constCast(fontData.ptr),
        };

        return C.QRawFont_new6(fontData_str, @floatCast(pixelSize), @intCast(hintingPreference));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#operator=)
    ///
    /// ``` self: ?*C.QRawFont, other: ?*C.QRawFont ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRawFont_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#swap)
    ///
    /// ``` self: ?*C.QRawFont, other: ?*C.QRawFont ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRawFont_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#isValid)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRawFont_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#operator==)
    ///
    /// ``` self: ?*C.QRawFont, other: ?*C.QRawFont ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QRawFont_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#operator!=)
    ///
    /// ``` self: ?*C.QRawFont, other: ?*C.QRawFont ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QRawFont_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#familyName)
    ///
    /// ``` self: ?*C.QRawFont, allocator: std.mem.Allocator ```
    pub fn FamilyName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRawFont_FamilyName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#styleName)
    ///
    /// ``` self: ?*C.QRawFont, allocator: std.mem.Allocator ```
    pub fn StyleName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRawFont_StyleName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#style)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn Style(self: ?*anyopaque) i64 {
        return C.QRawFont_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#weight)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn Weight(self: ?*anyopaque) i32 {
        return C.QRawFont_Weight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#glyphIndexesForString)
    ///
    /// ``` self: ?*C.QRawFont, text: []const u8, allocator: std.mem.Allocator ```
    pub fn GlyphIndexesForString(self: ?*anyopaque, text: []const u8, allocator: std.mem.Allocator) []u32 {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        const _arr: C.struct_libqt_list = C.QRawFont_GlyphIndexesForString(@ptrCast(self), text_str);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(u32, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]u32 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#advancesForGlyphIndexes)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndexes: []u32, allocator: std.mem.Allocator ```
    pub fn AdvancesForGlyphIndexes(self: ?*anyopaque, glyphIndexes: []u32, allocator: std.mem.Allocator) []?*C.QPointF {
        const glyphIndexes_list = C.struct_libqt_list{
            .len = glyphIndexes.len,
            .data = glyphIndexes.ptr,
        };
        const _arr: C.struct_libqt_list = C.QRawFont_AdvancesForGlyphIndexes(@ptrCast(self), glyphIndexes_list);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPointF, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPointF = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#advancesForGlyphIndexes)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndexes: []u32, layoutFlags: i32, allocator: std.mem.Allocator ```
    pub fn AdvancesForGlyphIndexes2(self: ?*anyopaque, glyphIndexes: []u32, layoutFlags: i64, allocator: std.mem.Allocator) []?*C.QPointF {
        const glyphIndexes_list = C.struct_libqt_list{
            .len = glyphIndexes.len,
            .data = glyphIndexes.ptr,
        };
        const _arr: C.struct_libqt_list = C.QRawFont_AdvancesForGlyphIndexes2(@ptrCast(self), glyphIndexes_list, @intCast(layoutFlags));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QPointF, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QPointF = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#glyphIndexesForChars)
    ///
    /// ``` self: ?*C.QRawFont, chars: ?*C.QChar, numChars: i32, glyphIndexes: ?*u32, numGlyphs: ?*i32 ```
    pub fn GlyphIndexesForChars(self: ?*anyopaque, chars: ?*anyopaque, numChars: i32, glyphIndexes: ?*anyopaque, numGlyphs: ?*anyopaque) bool {
        return C.QRawFont_GlyphIndexesForChars(@ptrCast(self), @ptrCast(chars), @intCast(numChars), @intCast(glyphIndexes), @intCast(numGlyphs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#advancesForGlyphIndexes)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndexes: ?*u32, advances: ?*C.QPointF, numGlyphs: i32 ```
    pub fn AdvancesForGlyphIndexes3(self: ?*anyopaque, glyphIndexes: ?*anyopaque, advances: ?*anyopaque, numGlyphs: i32) bool {
        return C.QRawFont_AdvancesForGlyphIndexes3(@ptrCast(self), @intCast(glyphIndexes), @ptrCast(advances), @intCast(numGlyphs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#advancesForGlyphIndexes)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndexes: ?*u32, advances: ?*C.QPointF, numGlyphs: i32, layoutFlags: i32 ```
    pub fn AdvancesForGlyphIndexes4(self: ?*anyopaque, glyphIndexes: ?*anyopaque, advances: ?*anyopaque, numGlyphs: i32, layoutFlags: i64) bool {
        return C.QRawFont_AdvancesForGlyphIndexes4(@ptrCast(self), @intCast(glyphIndexes), @ptrCast(advances), @intCast(numGlyphs), @intCast(layoutFlags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#alphaMapForGlyph)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndex: u32 ```
    pub fn AlphaMapForGlyph(self: ?*anyopaque, glyphIndex: u32) ?*C.QImage {
        return C.QRawFont_AlphaMapForGlyph(@ptrCast(self), @intCast(glyphIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#pathForGlyph)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndex: u32 ```
    pub fn PathForGlyph(self: ?*anyopaque, glyphIndex: u32) ?*C.QPainterPath {
        return C.QRawFont_PathForGlyph(@ptrCast(self), @intCast(glyphIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#boundingRect)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndex: u32 ```
    pub fn BoundingRect(self: ?*anyopaque, glyphIndex: u32) ?*C.QRectF {
        return C.QRawFont_BoundingRect(@ptrCast(self), @intCast(glyphIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#setPixelSize)
    ///
    /// ``` self: ?*C.QRawFont, pixelSize: f64 ```
    pub fn SetPixelSize(self: ?*anyopaque, pixelSize: f64) void {
        C.QRawFont_SetPixelSize(@ptrCast(self), @floatCast(pixelSize));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#pixelSize)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn PixelSize(self: ?*anyopaque) f64 {
        return C.QRawFont_PixelSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#hintingPreference)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn HintingPreference(self: ?*anyopaque) i64 {
        return C.QRawFont_HintingPreference(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#ascent)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn Ascent(self: ?*anyopaque) f64 {
        return C.QRawFont_Ascent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#capHeight)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn CapHeight(self: ?*anyopaque) f64 {
        return C.QRawFont_CapHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#descent)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn Descent(self: ?*anyopaque) f64 {
        return C.QRawFont_Descent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#leading)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn Leading(self: ?*anyopaque) f64 {
        return C.QRawFont_Leading(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#xHeight)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn XHeight(self: ?*anyopaque) f64 {
        return C.QRawFont_XHeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#averageCharWidth)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn AverageCharWidth(self: ?*anyopaque) f64 {
        return C.QRawFont_AverageCharWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#maxCharWidth)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn MaxCharWidth(self: ?*anyopaque) f64 {
        return C.QRawFont_MaxCharWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#lineThickness)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn LineThickness(self: ?*anyopaque) f64 {
        return C.QRawFont_LineThickness(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#underlinePosition)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn UnderlinePosition(self: ?*anyopaque) f64 {
        return C.QRawFont_UnderlinePosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#unitsPerEm)
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn UnitsPerEm(self: ?*anyopaque) f64 {
        return C.QRawFont_UnitsPerEm(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#loadFromFile)
    ///
    /// ``` self: ?*C.QRawFont, fileName: []const u8, pixelSize: f64, hintingPreference: qfont_enums.HintingPreference ```
    pub fn LoadFromFile(self: ?*anyopaque, fileName: []const u8, pixelSize: f64, hintingPreference: i64) void {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        C.QRawFont_LoadFromFile(@ptrCast(self), fileName_str, @floatCast(pixelSize), @intCast(hintingPreference));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#loadFromData)
    ///
    /// ``` self: ?*C.QRawFont, fontData: []u8, pixelSize: f64, hintingPreference: qfont_enums.HintingPreference ```
    pub fn LoadFromData(self: ?*anyopaque, fontData: []u8, pixelSize: f64, hintingPreference: i64) void {
        const fontData_str = C.struct_libqt_string{
            .len = fontData.len,
            .data = @constCast(fontData.ptr),
        };
        C.QRawFont_LoadFromData(@ptrCast(self), fontData_str, @floatCast(pixelSize), @intCast(hintingPreference));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#supportsCharacter)
    ///
    /// ``` self: ?*C.QRawFont, ucs4: u32 ```
    pub fn SupportsCharacter(self: ?*anyopaque, ucs4: u32) bool {
        return C.QRawFont_SupportsCharacter(@ptrCast(self), @intCast(ucs4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#supportsCharacter)
    ///
    /// ``` self: ?*C.QRawFont, character: ?*C.QChar ```
    pub fn SupportsCharacterWithCharacter(self: ?*anyopaque, character: ?*C.QChar) bool {
        return C.QRawFont_SupportsCharacterWithCharacter(@ptrCast(self), @ptrCast(character));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#supportedWritingSystems)
    ///
    /// ``` self: ?*C.QRawFont, allocator: std.mem.Allocator ```
    pub fn SupportedWritingSystems(self: ?*anyopaque, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QRawFont_SupportedWritingSystems(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qfontdatabase_enums.WritingSystem, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qfontdatabase_enums.WritingSystem = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#fontTable)
    ///
    /// ``` self: ?*C.QRawFont, tagName: []const u8, allocator: std.mem.Allocator ```
    pub fn FontTable(self: ?*anyopaque, tagName: []const u8, allocator: std.mem.Allocator) []u8 {
        const tagName_Cstring = @constCast(tagName.ptr);
        const _bytearray: C.struct_libqt_string = C.QRawFont_FontTable(@ptrCast(self), tagName_Cstring);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#fromFont)
    ///
    /// ``` font: ?*C.QFont ```
    pub fn FromFont(font: ?*anyopaque) ?*C.QRawFont {
        return C.QRawFont_FromFont(@ptrCast(font));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#alphaMapForGlyph)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndex: u32, antialiasingType: qrawfont_enums.AntialiasingType ```
    pub fn AlphaMapForGlyph2(self: ?*anyopaque, glyphIndex: u32, antialiasingType: i64) ?*C.QImage {
        return C.QRawFont_AlphaMapForGlyph2(@ptrCast(self), @intCast(glyphIndex), @intCast(antialiasingType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#alphaMapForGlyph)
    ///
    /// ``` self: ?*C.QRawFont, glyphIndex: u32, antialiasingType: qrawfont_enums.AntialiasingType, transform: ?*C.QTransform ```
    pub fn AlphaMapForGlyph3(self: ?*anyopaque, glyphIndex: u32, antialiasingType: i64, transform: ?*anyopaque) ?*C.QImage {
        return C.QRawFont_AlphaMapForGlyph3(@ptrCast(self), @intCast(glyphIndex), @intCast(antialiasingType), @ptrCast(transform));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrawfont.html#fromFont)
    ///
    /// ``` font: ?*C.QFont, writingSystem: qfontdatabase_enums.WritingSystem ```
    pub fn FromFont2(font: ?*anyopaque, writingSystem: i64) ?*C.QRawFont {
        return C.QRawFont_FromFont2(@ptrCast(font), @intCast(writingSystem));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRawFont ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRawFont_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qrawfont.html#types
pub const enums = struct {
    pub const AntialiasingType = enum {
        pub const PixelAntialiasing: i32 = 0;
        pub const SubPixelAntialiasing: i32 = 1;
    };

    pub const LayoutFlag = enum {
        pub const SeparateAdvances: i32 = 0;
        pub const KernedAdvances: i32 = 1;
        pub const UseDesignMetrics: i32 = 2;
    };
};
