const C = @import("qt6c");
const qfont_enums = @import("libqfont.zig").enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qtextformat_enums = enums;
const std = @import("std");
pub const map_i32_cqvariant = std.AutoHashMapUnmanaged(i32, ?*C.QVariant);

/// https://doc.qt.io/qt-6/qtextlength.html
pub const qtextlength = struct {
    /// New constructs a new QTextLength object.
    ///
    /// ``` other: ?*C.QTextLength ```
    pub fn New(other: ?*anyopaque) ?*C.QTextLength {
        return C.QTextLength_new(@ptrCast(other));
    }

    /// New2 constructs a new QTextLength object and invalidates the source QTextLength object.
    ///
    /// ``` other: ?*C.QTextLength ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextLength {
        return C.QTextLength_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTextLength object.
    ///
    ///
    pub fn New3() ?*C.QTextLength {
        return C.QTextLength_new3();
    }

    /// New4 constructs a new QTextLength object.
    ///
    /// ``` typeVal: qtextformat_enums.Type, value: f64 ```
    pub fn New4(typeVal: i64, value: f64) ?*C.QTextLength {
        return C.QTextLength_new4(@intCast(typeVal), @floatCast(value));
    }

    /// New5 constructs a new QTextLength object.
    ///
    /// ``` param1: ?*C.QTextLength ```
    pub fn New5(param1: ?*anyopaque) ?*C.QTextLength {
        return C.QTextLength_new5(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTextLength, other: ?*QTextLength ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextLength_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTextLength, other: ?*QTextLength ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextLength_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#type)
    ///
    /// ``` self: ?*C.QTextLength ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QTextLength_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#value)
    ///
    /// ``` self: ?*C.QTextLength, maximumLength: f64 ```
    pub fn Value(self: ?*anyopaque, maximumLength: f64) f64 {
        return C.QTextLength_Value(@ptrCast(self), @floatCast(maximumLength));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#rawValue)
    ///
    /// ``` self: ?*C.QTextLength ```
    pub fn RawValue(self: ?*anyopaque) f64 {
        return C.QTextLength_RawValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#operator==)
    ///
    /// ``` self: ?*C.QTextLength, other: ?*C.QTextLength ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QTextLength_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#operator!=)
    ///
    /// ``` self: ?*C.QTextLength, other: ?*C.QTextLength ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QTextLength_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlength.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextLength ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextLength_ToQVariant(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextLength ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextLength_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextformat.html
pub const qtextformat = struct {
    /// New constructs a new QTextFormat object.
    ///
    ///
    pub fn New() ?*C.QTextFormat {
        return C.QTextFormat_new();
    }

    /// New2 constructs a new QTextFormat object.
    ///
    /// ``` typeVal: i32 ```
    pub fn New2(typeVal: i32) ?*C.QTextFormat {
        return C.QTextFormat_new2(@intCast(typeVal));
    }

    /// New3 constructs a new QTextFormat object.
    ///
    /// ``` rhs: ?*C.QTextFormat ```
    pub fn New3(rhs: ?*anyopaque) ?*C.QTextFormat {
        return C.QTextFormat_new3(@ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextcharformat.html
pub const qtextcharformat = struct {
    /// New constructs a new QTextCharFormat object.
    ///
    ///
    pub fn New() ?*C.QTextCharFormat {
        return C.QTextCharFormat_new();
    }

    /// New2 constructs a new QTextCharFormat object.
    ///
    /// ``` param1: ?*C.QTextCharFormat ```
    pub fn New2(param1: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextCharFormat_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextCharFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextCharFormat, font: ?*C.QFont ```
    pub fn SetFont(self: ?*anyopaque, font: ?*anyopaque) void {
        C.QTextCharFormat_SetFont(@ptrCast(self), @ptrCast(font));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#font)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QTextCharFormat_Font(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamily)
    ///
    /// ``` self: ?*C.QTextCharFormat, family: []const u8 ```
    pub fn SetFontFamily(self: ?*anyopaque, family: []const u8) void {
        const family_str = C.struct_libqt_string{
            .len = family.len,
            .data = @constCast(family.ptr),
        };
        C.QTextCharFormat_SetFontFamily(@ptrCast(self), family_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamily)
    ///
    /// ``` self: ?*C.QTextCharFormat, allocator: std.mem.Allocator ```
    pub fn FontFamily(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_FontFamily(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamilies)
    ///
    /// ``` self: ?*C.QTextCharFormat, families: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetFontFamilies(self: ?*anyopaque, families: [][]const u8, allocator: std.mem.Allocator) void {
        var families_arr = allocator.alloc(C.struct_libqt_string, families.len) catch @panic("Memory allocation failed");
        defer allocator.free(families_arr);
        for (families, 0..families.len) |item, _i| {
            families_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const families_list = C.struct_libqt_list{
            .len = families.len,
            .data = families_arr.ptr,
        };
        C.QTextCharFormat_SetFontFamilies(@ptrCast(self), families_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamilies)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontFamilies(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontFamilies(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleName)
    ///
    /// ``` self: ?*C.QTextCharFormat, styleName: []const u8 ```
    pub fn SetFontStyleName(self: ?*anyopaque, styleName: []const u8) void {
        const styleName_str = C.struct_libqt_string{
            .len = styleName.len,
            .data = @constCast(styleName.ptr),
        };
        C.QTextCharFormat_SetFontStyleName(@ptrCast(self), styleName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleName)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontStyleName(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontStyleName(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontPointSize)
    ///
    /// ``` self: ?*C.QTextCharFormat, size: f64 ```
    pub fn SetFontPointSize(self: ?*anyopaque, size: f64) void {
        C.QTextCharFormat_SetFontPointSize(@ptrCast(self), @floatCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontPointSize)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontPointSize(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontPointSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWeight)
    ///
    /// ``` self: ?*C.QTextCharFormat, weight: i32 ```
    pub fn SetFontWeight(self: ?*anyopaque, weight: i32) void {
        C.QTextCharFormat_SetFontWeight(@ptrCast(self), @intCast(weight));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWeight)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontWeight(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontWeight(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontItalic)
    ///
    /// ``` self: ?*C.QTextCharFormat, italic: bool ```
    pub fn SetFontItalic(self: ?*anyopaque, italic: bool) void {
        C.QTextCharFormat_SetFontItalic(@ptrCast(self), italic);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontItalic)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontItalic(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontItalic(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontCapitalization)
    ///
    /// ``` self: ?*C.QTextCharFormat, capitalization: qfont_enums.Capitalization ```
    pub fn SetFontCapitalization(self: ?*anyopaque, capitalization: i64) void {
        C.QTextCharFormat_SetFontCapitalization(@ptrCast(self), @intCast(capitalization));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontCapitalization)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontCapitalization(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontCapitalization(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextCharFormat, letterSpacingType: qfont_enums.SpacingType ```
    pub fn SetFontLetterSpacingType(self: ?*anyopaque, letterSpacingType: i64) void {
        C.QTextCharFormat_SetFontLetterSpacingType(@ptrCast(self), @intCast(letterSpacingType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontLetterSpacingType(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontLetterSpacingType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextCharFormat, spacing: f64 ```
    pub fn SetFontLetterSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontLetterSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontLetterSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontLetterSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWordSpacing)
    ///
    /// ``` self: ?*C.QTextCharFormat, spacing: f64 ```
    pub fn SetFontWordSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontWordSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWordSpacing)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontWordSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontWordSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontUnderline)
    ///
    /// ``` self: ?*C.QTextCharFormat, underline: bool ```
    pub fn SetFontUnderline(self: ?*anyopaque, underline: bool) void {
        C.QTextCharFormat_SetFontUnderline(@ptrCast(self), underline);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontUnderline)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontUnderline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontUnderline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontOverline)
    ///
    /// ``` self: ?*C.QTextCharFormat, overline: bool ```
    pub fn SetFontOverline(self: ?*anyopaque, overline: bool) void {
        C.QTextCharFormat_SetFontOverline(@ptrCast(self), overline);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontOverline)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontOverline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontOverline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStrikeOut)
    ///
    /// ``` self: ?*C.QTextCharFormat, strikeOut: bool ```
    pub fn SetFontStrikeOut(self: ?*anyopaque, strikeOut: bool) void {
        C.QTextCharFormat_SetFontStrikeOut(@ptrCast(self), strikeOut);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStrikeOut)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontStrikeOut(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontStrikeOut(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineColor)
    ///
    /// ``` self: ?*C.QTextCharFormat, color: ?*C.QColor ```
    pub fn SetUnderlineColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QTextCharFormat_SetUnderlineColor(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineColor)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn UnderlineColor(self: ?*anyopaque) ?*C.QColor {
        return C.QTextCharFormat_UnderlineColor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFixedPitch)
    ///
    /// ``` self: ?*C.QTextCharFormat, fixedPitch: bool ```
    pub fn SetFontFixedPitch(self: ?*anyopaque, fixedPitch: bool) void {
        C.QTextCharFormat_SetFontFixedPitch(@ptrCast(self), fixedPitch);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFixedPitch)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontFixedPitch(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontFixedPitch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStretch)
    ///
    /// ``` self: ?*C.QTextCharFormat, factor: i32 ```
    pub fn SetFontStretch(self: ?*anyopaque, factor: i32) void {
        C.QTextCharFormat_SetFontStretch(@ptrCast(self), @intCast(factor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStretch)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontStretch(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontStretch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextCharFormat, hint: qfont_enums.StyleHint ```
    pub fn SetFontStyleHint(self: ?*anyopaque, hint: i64) void {
        C.QTextCharFormat_SetFontStyleHint(@ptrCast(self), @intCast(hint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextCharFormat, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleStrategy(self: ?*anyopaque, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleStrategy(@ptrCast(self), @intCast(strategy));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleHint)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontStyleHint(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontStyleStrategy(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleStrategy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontHintingPreference)
    ///
    /// ``` self: ?*C.QTextCharFormat, hintingPreference: qfont_enums.HintingPreference ```
    pub fn SetFontHintingPreference(self: ?*anyopaque, hintingPreference: i64) void {
        C.QTextCharFormat_SetFontHintingPreference(@ptrCast(self), @intCast(hintingPreference));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontHintingPreference)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontHintingPreference(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontHintingPreference(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontKerning)
    ///
    /// ``` self: ?*C.QTextCharFormat, enable: bool ```
    pub fn SetFontKerning(self: ?*anyopaque, enable: bool) void {
        C.QTextCharFormat_SetFontKerning(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontKerning)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn FontKerning(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontKerning(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineStyle)
    ///
    /// ``` self: ?*C.QTextCharFormat, style: qtextformat_enums.UnderlineStyle ```
    pub fn SetUnderlineStyle(self: ?*anyopaque, style: i64) void {
        C.QTextCharFormat_SetUnderlineStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineStyle)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn UnderlineStyle(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_UnderlineStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setVerticalAlignment)
    ///
    /// ``` self: ?*C.QTextCharFormat, alignment: qtextformat_enums.VerticalAlignment ```
    pub fn SetVerticalAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextCharFormat_SetVerticalAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#verticalAlignment)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn VerticalAlignment(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_VerticalAlignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTextOutline)
    ///
    /// ``` self: ?*C.QTextCharFormat, pen: ?*C.QPen ```
    pub fn SetTextOutline(self: ?*anyopaque, pen: ?*anyopaque) void {
        C.QTextCharFormat_SetTextOutline(@ptrCast(self), @ptrCast(pen));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#textOutline)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn TextOutline(self: ?*anyopaque) ?*C.QPen {
        return C.QTextCharFormat_TextOutline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setToolTip)
    ///
    /// ``` self: ?*C.QTextCharFormat, tip: []const u8 ```
    pub fn SetToolTip(self: ?*anyopaque, tip: []const u8) void {
        const tip_str = C.struct_libqt_string{
            .len = tip.len,
            .data = @constCast(tip.ptr),
        };
        C.QTextCharFormat_SetToolTip(@ptrCast(self), tip_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#toolTip)
    ///
    /// ``` self: ?*C.QTextCharFormat, allocator: std.mem.Allocator ```
    pub fn ToolTip(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_ToolTip(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSuperScriptBaseline)
    ///
    /// ``` self: ?*C.QTextCharFormat, baseline: f64 ```
    pub fn SetSuperScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSuperScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#superScriptBaseline)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn SuperScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SuperScriptBaseline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSubScriptBaseline)
    ///
    /// ``` self: ?*C.QTextCharFormat, baseline: f64 ```
    pub fn SetSubScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSubScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#subScriptBaseline)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn SubScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SubScriptBaseline(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setBaselineOffset)
    ///
    /// ``` self: ?*C.QTextCharFormat, baseline: f64 ```
    pub fn SetBaselineOffset(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetBaselineOffset(@ptrCast(self), @floatCast(baseline));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#baselineOffset)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn BaselineOffset(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_BaselineOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchor)
    ///
    /// ``` self: ?*C.QTextCharFormat, anchor: bool ```
    pub fn SetAnchor(self: ?*anyopaque, anchor: bool) void {
        C.QTextCharFormat_SetAnchor(@ptrCast(self), anchor);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#isAnchor)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsAnchor(self: ?*anyopaque) bool {
        return C.QTextCharFormat_IsAnchor(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorHref)
    ///
    /// ``` self: ?*C.QTextCharFormat, value: []const u8 ```
    pub fn SetAnchorHref(self: ?*anyopaque, value: []const u8) void {
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QTextCharFormat_SetAnchorHref(@ptrCast(self), value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorHref)
    ///
    /// ``` self: ?*C.QTextCharFormat, allocator: std.mem.Allocator ```
    pub fn AnchorHref(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_AnchorHref(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorNames)
    ///
    /// ``` self: ?*C.QTextCharFormat, names: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetAnchorNames(self: ?*anyopaque, names: [][]const u8, allocator: std.mem.Allocator) void {
        var names_arr = allocator.alloc(C.struct_libqt_string, names.len) catch @panic("Memory allocation failed");
        defer allocator.free(names_arr);
        for (names, 0..names.len) |item, _i| {
            names_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const names_list = C.struct_libqt_list{
            .len = names.len,
            .data = names_arr.ptr,
        };
        C.QTextCharFormat_SetAnchorNames(@ptrCast(self), names_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorNames)
    ///
    /// ``` self: ?*C.QTextCharFormat, allocator: std.mem.Allocator ```
    pub fn AnchorNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QTextCharFormat_AnchorNames(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextCharFormat, tableCellRowSpan: i32 ```
    pub fn SetTableCellRowSpan(self: ?*anyopaque, tableCellRowSpan: i32) void {
        C.QTextCharFormat_SetTableCellRowSpan(@ptrCast(self), @intCast(tableCellRowSpan));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn TableCellRowSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellRowSpan(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextCharFormat, tableCellColumnSpan: i32 ```
    pub fn SetTableCellColumnSpan(self: ?*anyopaque, tableCellColumnSpan: i32) void {
        C.QTextCharFormat_SetTableCellColumnSpan(@ptrCast(self), @intCast(tableCellColumnSpan));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn TableCellColumnSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellColumnSpan(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextCharFormat, font: ?*C.QFont, behavior: qtextformat_enums.FontPropertiesInheritanceBehavior ```
    pub fn SetFont2(self: ?*anyopaque, font: ?*anyopaque, behavior: i64) void {
        C.QTextCharFormat_SetFont2(@ptrCast(self), @ptrCast(font), @intCast(behavior));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextCharFormat, hint: qfont_enums.StyleHint, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleHint2(self: ?*anyopaque, hint: i64, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleHint2(@ptrCast(self), @intCast(hint), @intCast(strategy));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextCharFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextCharFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextCharFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextCharFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextCharFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextCharFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextCharFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextCharFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextCharFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextCharFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextCharFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextCharFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextCharFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextCharFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextblockformat.html
pub const qtextblockformat = struct {
    /// New constructs a new QTextBlockFormat object.
    ///
    ///
    pub fn New() ?*C.QTextBlockFormat {
        return C.QTextBlockFormat_new();
    }

    /// New2 constructs a new QTextBlockFormat object.
    ///
    /// ``` param1: ?*C.QTextBlockFormat ```
    pub fn New2(param1: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextBlockFormat_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextBlockFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setAlignment)
    ///
    /// ``` self: ?*C.QTextBlockFormat, alignment: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextBlockFormat_SetAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#alignment)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QTextBlockFormat_Alignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setTopMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat, margin: f64 ```
    pub fn SetTopMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextBlockFormat_SetTopMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#topMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn TopMargin(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_TopMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setBottomMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat, margin: f64 ```
    pub fn SetBottomMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextBlockFormat_SetBottomMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#bottomMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn BottomMargin(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_BottomMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setLeftMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat, margin: f64 ```
    pub fn SetLeftMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextBlockFormat_SetLeftMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#leftMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn LeftMargin(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_LeftMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setRightMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat, margin: f64 ```
    pub fn SetRightMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextBlockFormat_SetRightMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#rightMargin)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn RightMargin(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_RightMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setTextIndent)
    ///
    /// ``` self: ?*C.QTextBlockFormat, aindent: f64 ```
    pub fn SetTextIndent(self: ?*anyopaque, aindent: f64) void {
        C.QTextBlockFormat_SetTextIndent(@ptrCast(self), @floatCast(aindent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#textIndent)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn TextIndent(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_TextIndent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setIndent)
    ///
    /// ``` self: ?*C.QTextBlockFormat, indent: i32 ```
    pub fn SetIndent(self: ?*anyopaque, indent: i32) void {
        C.QTextBlockFormat_SetIndent(@ptrCast(self), @intCast(indent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#indent)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Indent(self: ?*anyopaque) i32 {
        return C.QTextBlockFormat_Indent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setHeadingLevel)
    ///
    /// ``` self: ?*C.QTextBlockFormat, alevel: i32 ```
    pub fn SetHeadingLevel(self: ?*anyopaque, alevel: i32) void {
        C.QTextBlockFormat_SetHeadingLevel(@ptrCast(self), @intCast(alevel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#headingLevel)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn HeadingLevel(self: ?*anyopaque) i32 {
        return C.QTextBlockFormat_HeadingLevel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setLineHeight)
    ///
    /// ``` self: ?*C.QTextBlockFormat, height: f64, heightType: i32 ```
    pub fn SetLineHeight(self: ?*anyopaque, height: f64, heightType: i32) void {
        C.QTextBlockFormat_SetLineHeight(@ptrCast(self), @floatCast(height), @intCast(heightType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#lineHeight)
    ///
    /// ``` self: ?*C.QTextBlockFormat, scriptLineHeight: f64, scaling: f64 ```
    pub fn LineHeight(self: ?*anyopaque, scriptLineHeight: f64, scaling: f64) f64 {
        return C.QTextBlockFormat_LineHeight(@ptrCast(self), @floatCast(scriptLineHeight), @floatCast(scaling));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#lineHeight)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn LineHeight2(self: ?*anyopaque) f64 {
        return C.QTextBlockFormat_LineHeight2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#lineHeightType)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn LineHeightType(self: ?*anyopaque) i32 {
        return C.QTextBlockFormat_LineHeightType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setNonBreakableLines)
    ///
    /// ``` self: ?*C.QTextBlockFormat, b: bool ```
    pub fn SetNonBreakableLines(self: ?*anyopaque, b: bool) void {
        C.QTextBlockFormat_SetNonBreakableLines(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#nonBreakableLines)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn NonBreakableLines(self: ?*anyopaque) bool {
        return C.QTextBlockFormat_NonBreakableLines(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setPageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextBlockFormat, flags: i32 ```
    pub fn SetPageBreakPolicy(self: ?*anyopaque, flags: i64) void {
        C.QTextBlockFormat_SetPageBreakPolicy(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#pageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn PageBreakPolicy(self: ?*anyopaque) i64 {
        return C.QTextBlockFormat_PageBreakPolicy(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setTabPositions)
    ///
    /// ``` self: ?*C.QTextBlockFormat, tabs: []?*C.QTextOption__Tab ```
    pub fn SetTabPositions(self: ?*anyopaque, tabs: []?*C.QTextOption__Tab) void {
        const tabs_list = C.struct_libqt_list{
            .len = tabs.len,
            .data = @ptrCast(tabs.ptr),
        };
        C.QTextBlockFormat_SetTabPositions(@ptrCast(self), tabs_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#tabPositions)
    ///
    /// ``` self: ?*C.QTextBlockFormat, allocator: std.mem.Allocator ```
    pub fn TabPositions(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QTextOption__Tab {
        const _arr: C.struct_libqt_list = C.QTextBlockFormat_TabPositions(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextOption__Tab, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextOption__Tab = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#setMarker)
    ///
    /// ``` self: ?*C.QTextBlockFormat, marker: qtextformat_enums.MarkerType ```
    pub fn SetMarker(self: ?*anyopaque, marker: i64) void {
        C.QTextBlockFormat_SetMarker(@ptrCast(self), @intCast(marker));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextblockformat.html#marker)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Marker(self: ?*anyopaque) i64 {
        return C.QTextBlockFormat_Marker(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextBlockFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextBlockFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextBlockFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextBlockFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextBlockFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextBlockFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextBlockFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextBlockFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextBlockFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextBlockFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextBlockFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextBlockFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextBlockFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextBlockFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextlistformat.html
pub const qtextlistformat = struct {
    /// New constructs a new QTextListFormat object.
    ///
    ///
    pub fn New() ?*C.QTextListFormat {
        return C.QTextListFormat_new();
    }

    /// New2 constructs a new QTextListFormat object.
    ///
    /// ``` param1: ?*C.QTextListFormat ```
    pub fn New2(param1: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextListFormat_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextListFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#setStyle)
    ///
    /// ``` self: ?*C.QTextListFormat, style: qtextformat_enums.Style ```
    pub fn SetStyle(self: ?*anyopaque, style: i64) void {
        C.QTextListFormat_SetStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#style)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn Style(self: ?*anyopaque) i64 {
        return C.QTextListFormat_Style(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#setIndent)
    ///
    /// ``` self: ?*C.QTextListFormat, indent: i32 ```
    pub fn SetIndent(self: ?*anyopaque, indent: i32) void {
        C.QTextListFormat_SetIndent(@ptrCast(self), @intCast(indent));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#indent)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn Indent(self: ?*anyopaque) i32 {
        return C.QTextListFormat_Indent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#setNumberPrefix)
    ///
    /// ``` self: ?*C.QTextListFormat, numberPrefix: []const u8 ```
    pub fn SetNumberPrefix(self: ?*anyopaque, numberPrefix: []const u8) void {
        const numberPrefix_str = C.struct_libqt_string{
            .len = numberPrefix.len,
            .data = @constCast(numberPrefix.ptr),
        };
        C.QTextListFormat_SetNumberPrefix(@ptrCast(self), numberPrefix_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#numberPrefix)
    ///
    /// ``` self: ?*C.QTextListFormat, allocator: std.mem.Allocator ```
    pub fn NumberPrefix(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextListFormat_NumberPrefix(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#setNumberSuffix)
    ///
    /// ``` self: ?*C.QTextListFormat, numberSuffix: []const u8 ```
    pub fn SetNumberSuffix(self: ?*anyopaque, numberSuffix: []const u8) void {
        const numberSuffix_str = C.struct_libqt_string{
            .len = numberSuffix.len,
            .data = @constCast(numberSuffix.ptr),
        };
        C.QTextListFormat_SetNumberSuffix(@ptrCast(self), numberSuffix_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextlistformat.html#numberSuffix)
    ///
    /// ``` self: ?*C.QTextListFormat, allocator: std.mem.Allocator ```
    pub fn NumberSuffix(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextListFormat_NumberSuffix(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextListFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextListFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextListFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextListFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextListFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextListFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextListFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextListFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextListFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextListFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextListFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextListFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextListFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextListFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextimageformat.html
pub const qtextimageformat = struct {
    /// New constructs a new QTextImageFormat object.
    ///
    ///
    pub fn New() ?*C.QTextImageFormat {
        return C.QTextImageFormat_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextImageFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#setName)
    ///
    /// ``` self: ?*C.QTextImageFormat, name: []const u8 ```
    pub fn SetName(self: ?*anyopaque, name: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QTextImageFormat_SetName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#name)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextImageFormat_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#setWidth)
    ///
    /// ``` self: ?*C.QTextImageFormat, width: f64 ```
    pub fn SetWidth(self: ?*anyopaque, width: f64) void {
        C.QTextImageFormat_SetWidth(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#width)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Width(self: ?*anyopaque) f64 {
        return C.QTextImageFormat_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#setHeight)
    ///
    /// ``` self: ?*C.QTextImageFormat, height: f64 ```
    pub fn SetHeight(self: ?*anyopaque, height: f64) void {
        C.QTextImageFormat_SetHeight(@ptrCast(self), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#height)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Height(self: ?*anyopaque) f64 {
        return C.QTextImageFormat_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#setQuality)
    ///
    /// ``` self: ?*C.QTextImageFormat, quality: i32 ```
    pub fn SetQuality(self: ?*anyopaque, quality: i32) void {
        C.QTextImageFormat_SetQuality(@ptrCast(self), @intCast(quality));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#setQuality)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn SetQuality2(self: ?*anyopaque) void {
        C.QTextImageFormat_SetQuality2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextimageformat.html#quality)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Quality(self: ?*anyopaque) i32 {
        return C.QTextImageFormat_Quality(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextImageFormat, font: ?*C.QFont ```
    pub fn SetFont(self: ?*anyopaque, font: ?*anyopaque) void {
        C.QTextCharFormat_SetFont(@ptrCast(self), @ptrCast(font));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#font)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QTextCharFormat_Font(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamily)
    ///
    /// ``` self: ?*C.QTextImageFormat, family: []const u8 ```
    pub fn SetFontFamily(self: ?*anyopaque, family: []const u8) void {
        const family_str = C.struct_libqt_string{
            .len = family.len,
            .data = @constCast(family.ptr),
        };
        C.QTextCharFormat_SetFontFamily(@ptrCast(self), family_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamily)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn FontFamily(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_FontFamily(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamilies)
    ///
    /// ``` self: ?*C.QTextImageFormat, families: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetFontFamilies(self: ?*anyopaque, families: [][]const u8, allocator: std.mem.Allocator) void {
        var families_arr = allocator.alloc(C.struct_libqt_string, families.len) catch @panic("Memory allocation failed");
        defer allocator.free(families_arr);
        for (families, 0..families.len) |item, _i| {
            families_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const families_list = C.struct_libqt_list{
            .len = families.len,
            .data = families_arr.ptr,
        };
        C.QTextCharFormat_SetFontFamilies(@ptrCast(self), families_list);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamilies)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontFamilies(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontFamilies(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleName)
    ///
    /// ``` self: ?*C.QTextImageFormat, styleName: []const u8 ```
    pub fn SetFontStyleName(self: ?*anyopaque, styleName: []const u8) void {
        const styleName_str = C.struct_libqt_string{
            .len = styleName.len,
            .data = @constCast(styleName.ptr),
        };
        C.QTextCharFormat_SetFontStyleName(@ptrCast(self), styleName_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleName)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontStyleName(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontStyleName(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontPointSize)
    ///
    /// ``` self: ?*C.QTextImageFormat, size: f64 ```
    pub fn SetFontPointSize(self: ?*anyopaque, size: f64) void {
        C.QTextCharFormat_SetFontPointSize(@ptrCast(self), @floatCast(size));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontPointSize)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontPointSize(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontPointSize(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWeight)
    ///
    /// ``` self: ?*C.QTextImageFormat, weight: i32 ```
    pub fn SetFontWeight(self: ?*anyopaque, weight: i32) void {
        C.QTextCharFormat_SetFontWeight(@ptrCast(self), @intCast(weight));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWeight)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontWeight(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontWeight(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontItalic)
    ///
    /// ``` self: ?*C.QTextImageFormat, italic: bool ```
    pub fn SetFontItalic(self: ?*anyopaque, italic: bool) void {
        C.QTextCharFormat_SetFontItalic(@ptrCast(self), italic);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontItalic)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontItalic(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontItalic(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontCapitalization)
    ///
    /// ``` self: ?*C.QTextImageFormat, capitalization: qfont_enums.Capitalization ```
    pub fn SetFontCapitalization(self: ?*anyopaque, capitalization: i64) void {
        C.QTextCharFormat_SetFontCapitalization(@ptrCast(self), @intCast(capitalization));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontCapitalization)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontCapitalization(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontCapitalization(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextImageFormat, letterSpacingType: qfont_enums.SpacingType ```
    pub fn SetFontLetterSpacingType(self: ?*anyopaque, letterSpacingType: i64) void {
        C.QTextCharFormat_SetFontLetterSpacingType(@ptrCast(self), @intCast(letterSpacingType));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontLetterSpacingType(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontLetterSpacingType(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextImageFormat, spacing: f64 ```
    pub fn SetFontLetterSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontLetterSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontLetterSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontLetterSpacing(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWordSpacing)
    ///
    /// ``` self: ?*C.QTextImageFormat, spacing: f64 ```
    pub fn SetFontWordSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontWordSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWordSpacing)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontWordSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontWordSpacing(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontUnderline)
    ///
    /// ``` self: ?*C.QTextImageFormat, underline: bool ```
    pub fn SetFontUnderline(self: ?*anyopaque, underline: bool) void {
        C.QTextCharFormat_SetFontUnderline(@ptrCast(self), underline);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontUnderline)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontUnderline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontUnderline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontOverline)
    ///
    /// ``` self: ?*C.QTextImageFormat, overline: bool ```
    pub fn SetFontOverline(self: ?*anyopaque, overline: bool) void {
        C.QTextCharFormat_SetFontOverline(@ptrCast(self), overline);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontOverline)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontOverline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontOverline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStrikeOut)
    ///
    /// ``` self: ?*C.QTextImageFormat, strikeOut: bool ```
    pub fn SetFontStrikeOut(self: ?*anyopaque, strikeOut: bool) void {
        C.QTextCharFormat_SetFontStrikeOut(@ptrCast(self), strikeOut);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStrikeOut)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontStrikeOut(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontStrikeOut(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineColor)
    ///
    /// ``` self: ?*C.QTextImageFormat, color: ?*C.QColor ```
    pub fn SetUnderlineColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QTextCharFormat_SetUnderlineColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineColor)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn UnderlineColor(self: ?*anyopaque) ?*C.QColor {
        return C.QTextCharFormat_UnderlineColor(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFixedPitch)
    ///
    /// ``` self: ?*C.QTextImageFormat, fixedPitch: bool ```
    pub fn SetFontFixedPitch(self: ?*anyopaque, fixedPitch: bool) void {
        C.QTextCharFormat_SetFontFixedPitch(@ptrCast(self), fixedPitch);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFixedPitch)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontFixedPitch(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontFixedPitch(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStretch)
    ///
    /// ``` self: ?*C.QTextImageFormat, factor: i32 ```
    pub fn SetFontStretch(self: ?*anyopaque, factor: i32) void {
        C.QTextCharFormat_SetFontStretch(@ptrCast(self), @intCast(factor));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStretch)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontStretch(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontStretch(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextImageFormat, hint: qfont_enums.StyleHint ```
    pub fn SetFontStyleHint(self: ?*anyopaque, hint: i64) void {
        C.QTextCharFormat_SetFontStyleHint(@ptrCast(self), @intCast(hint));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextImageFormat, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleStrategy(self: ?*anyopaque, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleStrategy(@ptrCast(self), @intCast(strategy));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleHint)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontStyleHint(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleHint(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontStyleStrategy(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleStrategy(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontHintingPreference)
    ///
    /// ``` self: ?*C.QTextImageFormat, hintingPreference: qfont_enums.HintingPreference ```
    pub fn SetFontHintingPreference(self: ?*anyopaque, hintingPreference: i64) void {
        C.QTextCharFormat_SetFontHintingPreference(@ptrCast(self), @intCast(hintingPreference));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontHintingPreference)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontHintingPreference(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontHintingPreference(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontKerning)
    ///
    /// ``` self: ?*C.QTextImageFormat, enable: bool ```
    pub fn SetFontKerning(self: ?*anyopaque, enable: bool) void {
        C.QTextCharFormat_SetFontKerning(@ptrCast(self), enable);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontKerning)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn FontKerning(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontKerning(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineStyle)
    ///
    /// ``` self: ?*C.QTextImageFormat, style: qtextformat_enums.UnderlineStyle ```
    pub fn SetUnderlineStyle(self: ?*anyopaque, style: i64) void {
        C.QTextCharFormat_SetUnderlineStyle(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineStyle)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn UnderlineStyle(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_UnderlineStyle(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setVerticalAlignment)
    ///
    /// ``` self: ?*C.QTextImageFormat, alignment: qtextformat_enums.VerticalAlignment ```
    pub fn SetVerticalAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextCharFormat_SetVerticalAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#verticalAlignment)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn VerticalAlignment(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_VerticalAlignment(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTextOutline)
    ///
    /// ``` self: ?*C.QTextImageFormat, pen: ?*C.QPen ```
    pub fn SetTextOutline(self: ?*anyopaque, pen: ?*anyopaque) void {
        C.QTextCharFormat_SetTextOutline(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#textOutline)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn TextOutline(self: ?*anyopaque) ?*C.QPen {
        return C.QTextCharFormat_TextOutline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setToolTip)
    ///
    /// ``` self: ?*C.QTextImageFormat, tip: []const u8 ```
    pub fn SetToolTip(self: ?*anyopaque, tip: []const u8) void {
        const tip_str = C.struct_libqt_string{
            .len = tip.len,
            .data = @constCast(tip.ptr),
        };
        C.QTextCharFormat_SetToolTip(@ptrCast(self), tip_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#toolTip)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn ToolTip(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_ToolTip(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSuperScriptBaseline)
    ///
    /// ``` self: ?*C.QTextImageFormat, baseline: f64 ```
    pub fn SetSuperScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSuperScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#superScriptBaseline)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn SuperScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SuperScriptBaseline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSubScriptBaseline)
    ///
    /// ``` self: ?*C.QTextImageFormat, baseline: f64 ```
    pub fn SetSubScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSubScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#subScriptBaseline)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn SubScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SubScriptBaseline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setBaselineOffset)
    ///
    /// ``` self: ?*C.QTextImageFormat, baseline: f64 ```
    pub fn SetBaselineOffset(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetBaselineOffset(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#baselineOffset)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn BaselineOffset(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_BaselineOffset(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchor)
    ///
    /// ``` self: ?*C.QTextImageFormat, anchor: bool ```
    pub fn SetAnchor(self: ?*anyopaque, anchor: bool) void {
        C.QTextCharFormat_SetAnchor(@ptrCast(self), anchor);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#isAnchor)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsAnchor(self: ?*anyopaque) bool {
        return C.QTextCharFormat_IsAnchor(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorHref)
    ///
    /// ``` self: ?*C.QTextImageFormat, value: []const u8 ```
    pub fn SetAnchorHref(self: ?*anyopaque, value: []const u8) void {
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QTextCharFormat_SetAnchorHref(@ptrCast(self), value_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorHref)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn AnchorHref(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_AnchorHref(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorNames)
    ///
    /// ``` self: ?*C.QTextImageFormat, names: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetAnchorNames(self: ?*anyopaque, names: [][]const u8, allocator: std.mem.Allocator) void {
        var names_arr = allocator.alloc(C.struct_libqt_string, names.len) catch @panic("Memory allocation failed");
        defer allocator.free(names_arr);
        for (names, 0..names.len) |item, _i| {
            names_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const names_list = C.struct_libqt_list{
            .len = names.len,
            .data = names_arr.ptr,
        };
        C.QTextCharFormat_SetAnchorNames(@ptrCast(self), names_list);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorNames)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn AnchorNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QTextCharFormat_AnchorNames(@ptrCast(self));
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

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextImageFormat, tableCellRowSpan: i32 ```
    pub fn SetTableCellRowSpan(self: ?*anyopaque, tableCellRowSpan: i32) void {
        C.QTextCharFormat_SetTableCellRowSpan(@ptrCast(self), @intCast(tableCellRowSpan));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn TableCellRowSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellRowSpan(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextImageFormat, tableCellColumnSpan: i32 ```
    pub fn SetTableCellColumnSpan(self: ?*anyopaque, tableCellColumnSpan: i32) void {
        C.QTextCharFormat_SetTableCellColumnSpan(@ptrCast(self), @intCast(tableCellColumnSpan));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn TableCellColumnSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellColumnSpan(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextImageFormat, font: ?*C.QFont, behavior: qtextformat_enums.FontPropertiesInheritanceBehavior ```
    pub fn SetFont2(self: ?*anyopaque, font: ?*anyopaque, behavior: i64) void {
        C.QTextCharFormat_SetFont2(@ptrCast(self), @ptrCast(font), @intCast(behavior));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextImageFormat, hint: qfont_enums.StyleHint, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleHint2(self: ?*anyopaque, hint: i64, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleHint2(@ptrCast(self), @intCast(hint), @intCast(strategy));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextImageFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextImageFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextImageFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextImageFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextImageFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextImageFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextImageFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextImageFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextImageFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextImageFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextImageFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextImageFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextImageFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextImageFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextframeformat.html
pub const qtextframeformat = struct {
    /// New constructs a new QTextFrameFormat object.
    ///
    ///
    pub fn New() ?*C.QTextFrameFormat {
        return C.QTextFrameFormat_new();
    }

    /// New2 constructs a new QTextFrameFormat object.
    ///
    /// ``` param1: ?*C.QTextFrameFormat ```
    pub fn New2(param1: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFrameFormat_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextFrameFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPosition)
    ///
    /// ``` self: ?*C.QTextFrameFormat, f: qtextformat_enums.Position ```
    pub fn SetPosition(self: ?*anyopaque, f: i64) void {
        C.QTextFrameFormat_SetPosition(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#position)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Position(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorder)
    ///
    /// ``` self: ?*C.QTextFrameFormat, border: f64 ```
    pub fn SetBorder(self: ?*anyopaque, border: f64) void {
        C.QTextFrameFormat_SetBorder(@ptrCast(self), @floatCast(border));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#border)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Border(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Border(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorderBrush)
    ///
    /// ``` self: ?*C.QTextFrameFormat, brush: ?*C.QBrush ```
    pub fn SetBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFrameFormat_SetBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#borderBrush)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn BorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFrameFormat_BorderBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorderStyle)
    ///
    /// ``` self: ?*C.QTextFrameFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextFrameFormat_SetBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#borderStyle)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn BorderStyle(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_BorderStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat, margin: f64 ```
    pub fn SetMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#margin)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Margin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Margin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setTopMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat, margin: f64 ```
    pub fn SetTopMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetTopMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#topMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn TopMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_TopMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBottomMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat, margin: f64 ```
    pub fn SetBottomMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetBottomMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#bottomMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn BottomMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_BottomMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setLeftMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat, margin: f64 ```
    pub fn SetLeftMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetLeftMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#leftMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn LeftMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_LeftMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setRightMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat, margin: f64 ```
    pub fn SetRightMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetRightMargin(@ptrCast(self), @floatCast(margin));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#rightMargin)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn RightMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_RightMargin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPadding)
    ///
    /// ``` self: ?*C.QTextFrameFormat, padding: f64 ```
    pub fn SetPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextFrameFormat_SetPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#padding)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Padding(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Padding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setWidth)
    ///
    /// ``` self: ?*C.QTextFrameFormat, width: f64 ```
    pub fn SetWidth(self: ?*anyopaque, width: f64) void {
        C.QTextFrameFormat_SetWidth(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setWidth)
    ///
    /// ``` self: ?*C.QTextFrameFormat, length: ?*C.QTextLength ```
    pub fn SetWidthWithLength(self: ?*anyopaque, length: ?*anyopaque) void {
        C.QTextFrameFormat_SetWidthWithLength(@ptrCast(self), @ptrCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#width)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Width(self: ?*anyopaque) ?*C.QTextLength {
        return C.QTextFrameFormat_Width(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setHeight)
    ///
    /// ``` self: ?*C.QTextFrameFormat, height: f64 ```
    pub fn SetHeight(self: ?*anyopaque, height: f64) void {
        C.QTextFrameFormat_SetHeight(@ptrCast(self), @floatCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setHeight)
    ///
    /// ``` self: ?*C.QTextFrameFormat, height: ?*C.QTextLength ```
    pub fn SetHeightWithHeight(self: ?*anyopaque, height: ?*anyopaque) void {
        C.QTextFrameFormat_SetHeightWithHeight(@ptrCast(self), @ptrCast(height));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#height)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Height(self: ?*anyopaque) ?*C.QTextLength {
        return C.QTextFrameFormat_Height(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextFrameFormat, flags: i32 ```
    pub fn SetPageBreakPolicy(self: ?*anyopaque, flags: i64) void {
        C.QTextFrameFormat_SetPageBreakPolicy(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#pageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn PageBreakPolicy(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_PageBreakPolicy(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextFrameFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextFrameFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextFrameFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextFrameFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextFrameFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextFrameFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextFrameFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextFrameFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextFrameFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextFrameFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextFrameFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextFrameFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextFrameFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextFrameFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtexttableformat.html
pub const qtexttableformat = struct {
    /// New constructs a new QTextTableFormat object.
    ///
    ///
    pub fn New() ?*C.QTextTableFormat {
        return C.QTextTableFormat_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextTableFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#columns)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Columns(self: ?*anyopaque) i32 {
        return C.QTextTableFormat_Columns(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setColumns)
    ///
    /// ``` self: ?*C.QTextTableFormat, columns: i32 ```
    pub fn SetColumns(self: ?*anyopaque, columns: i32) void {
        C.QTextTableFormat_SetColumns(@ptrCast(self), @intCast(columns));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setColumnWidthConstraints)
    ///
    /// ``` self: ?*C.QTextTableFormat, constraints: []?*C.QTextLength ```
    pub fn SetColumnWidthConstraints(self: ?*anyopaque, constraints: []?*C.QTextLength) void {
        const constraints_list = C.struct_libqt_list{
            .len = constraints.len,
            .data = @ptrCast(constraints.ptr),
        };
        C.QTextTableFormat_SetColumnWidthConstraints(@ptrCast(self), constraints_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#columnWidthConstraints)
    ///
    /// ``` self: ?*C.QTextTableFormat, allocator: std.mem.Allocator ```
    pub fn ColumnWidthConstraints(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextTableFormat_ColumnWidthConstraints(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#clearColumnWidthConstraints)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ClearColumnWidthConstraints(self: ?*anyopaque) void {
        C.QTextTableFormat_ClearColumnWidthConstraints(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#cellSpacing)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn CellSpacing(self: ?*anyopaque) f64 {
        return C.QTextTableFormat_CellSpacing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setCellSpacing)
    ///
    /// ``` self: ?*C.QTextTableFormat, spacing: f64 ```
    pub fn SetCellSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextTableFormat_SetCellSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#cellPadding)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn CellPadding(self: ?*anyopaque) f64 {
        return C.QTextTableFormat_CellPadding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setCellPadding)
    ///
    /// ``` self: ?*C.QTextTableFormat, padding: f64 ```
    pub fn SetCellPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableFormat_SetCellPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setAlignment)
    ///
    /// ``` self: ?*C.QTextTableFormat, alignment: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextTableFormat_SetAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#alignment)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QTextTableFormat_Alignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setHeaderRowCount)
    ///
    /// ``` self: ?*C.QTextTableFormat, count: i32 ```
    pub fn SetHeaderRowCount(self: ?*anyopaque, count: i32) void {
        C.QTextTableFormat_SetHeaderRowCount(@ptrCast(self), @intCast(count));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#headerRowCount)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn HeaderRowCount(self: ?*anyopaque) i32 {
        return C.QTextTableFormat_HeaderRowCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#setBorderCollapse)
    ///
    /// ``` self: ?*C.QTextTableFormat, borderCollapse: bool ```
    pub fn SetBorderCollapse(self: ?*anyopaque, borderCollapse: bool) void {
        C.QTextTableFormat_SetBorderCollapse(@ptrCast(self), borderCollapse);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttableformat.html#borderCollapse)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn BorderCollapse(self: ?*anyopaque) bool {
        return C.QTextTableFormat_BorderCollapse(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPosition)
    ///
    /// ``` self: ?*C.QTextTableFormat, f: qtextformat_enums.Position ```
    pub fn SetPosition(self: ?*anyopaque, f: i64) void {
        C.QTextFrameFormat_SetPosition(@ptrCast(self), @intCast(f));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#position)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Position(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_Position(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorder)
    ///
    /// ``` self: ?*C.QTextTableFormat, border: f64 ```
    pub fn SetBorder(self: ?*anyopaque, border: f64) void {
        C.QTextFrameFormat_SetBorder(@ptrCast(self), @floatCast(border));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#border)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Border(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Border(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableFormat, brush: ?*C.QBrush ```
    pub fn SetBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFrameFormat_SetBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#borderBrush)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn BorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFrameFormat_BorderBrush(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextFrameFormat_SetBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#borderStyle)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn BorderStyle(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_BorderStyle(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat, margin: f64 ```
    pub fn SetMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetMargin(@ptrCast(self), @floatCast(margin));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#margin)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Margin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Margin(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setTopMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat, margin: f64 ```
    pub fn SetTopMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetTopMargin(@ptrCast(self), @floatCast(margin));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#topMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn TopMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_TopMargin(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setBottomMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat, margin: f64 ```
    pub fn SetBottomMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetBottomMargin(@ptrCast(self), @floatCast(margin));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#bottomMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn BottomMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_BottomMargin(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setLeftMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat, margin: f64 ```
    pub fn SetLeftMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetLeftMargin(@ptrCast(self), @floatCast(margin));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#leftMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn LeftMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_LeftMargin(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setRightMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat, margin: f64 ```
    pub fn SetRightMargin(self: ?*anyopaque, margin: f64) void {
        C.QTextFrameFormat_SetRightMargin(@ptrCast(self), @floatCast(margin));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#rightMargin)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn RightMargin(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_RightMargin(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPadding)
    ///
    /// ``` self: ?*C.QTextTableFormat, padding: f64 ```
    pub fn SetPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextFrameFormat_SetPadding(@ptrCast(self), @floatCast(padding));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#padding)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Padding(self: ?*anyopaque) f64 {
        return C.QTextFrameFormat_Padding(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setWidth)
    ///
    /// ``` self: ?*C.QTextTableFormat, width: f64 ```
    pub fn SetWidth(self: ?*anyopaque, width: f64) void {
        C.QTextFrameFormat_SetWidth(@ptrCast(self), @floatCast(width));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setWidth)
    ///
    /// ``` self: ?*C.QTextTableFormat, length: ?*C.QTextLength ```
    pub fn SetWidthWithLength(self: ?*anyopaque, length: ?*anyopaque) void {
        C.QTextFrameFormat_SetWidthWithLength(@ptrCast(self), @ptrCast(length));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#width)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Width(self: ?*anyopaque) ?*C.QTextLength {
        return C.QTextFrameFormat_Width(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setHeight)
    ///
    /// ``` self: ?*C.QTextTableFormat, height: f64 ```
    pub fn SetHeight(self: ?*anyopaque, height: f64) void {
        C.QTextFrameFormat_SetHeight(@ptrCast(self), @floatCast(height));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setHeight)
    ///
    /// ``` self: ?*C.QTextTableFormat, height: ?*C.QTextLength ```
    pub fn SetHeightWithHeight(self: ?*anyopaque, height: ?*anyopaque) void {
        C.QTextFrameFormat_SetHeightWithHeight(@ptrCast(self), @ptrCast(height));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#height)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Height(self: ?*anyopaque) ?*C.QTextLength {
        return C.QTextFrameFormat_Height(@ptrCast(self));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#setPageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextTableFormat, flags: i32 ```
    pub fn SetPageBreakPolicy(self: ?*anyopaque, flags: i64) void {
        C.QTextFrameFormat_SetPageBreakPolicy(@ptrCast(self), @intCast(flags));
    }

    /// Inherited from QTextFrameFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextframeformat.html#pageBreakPolicy)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn PageBreakPolicy(self: ?*anyopaque) i64 {
        return C.QTextFrameFormat_PageBreakPolicy(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextTableFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextTableFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextTableFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextTableFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextTableFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextTableFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextTableFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextTableFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextTableFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextTableFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextTableFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextTableFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextTableFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextTableFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtexttablecellformat.html
pub const qtexttablecellformat = struct {
    /// New constructs a new QTextTableCellFormat object.
    ///
    ///
    pub fn New() ?*C.QTextTableCellFormat {
        return C.QTextTableCellFormat_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#isValid)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextTableCellFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setTopPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, padding: f64 ```
    pub fn SetTopPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableCellFormat_SetTopPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#topPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TopPadding(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_TopPadding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBottomPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, padding: f64 ```
    pub fn SetBottomPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableCellFormat_SetBottomPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#bottomPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn BottomPadding(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_BottomPadding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setLeftPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, padding: f64 ```
    pub fn SetLeftPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableCellFormat_SetLeftPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#leftPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn LeftPadding(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_LeftPadding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setRightPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, padding: f64 ```
    pub fn SetRightPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableCellFormat_SetRightPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#rightPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn RightPadding(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_RightPadding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setPadding)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, padding: f64 ```
    pub fn SetPadding(self: ?*anyopaque, padding: f64) void {
        C.QTextTableCellFormat_SetPadding(@ptrCast(self), @floatCast(padding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setTopBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, width: f64 ```
    pub fn SetTopBorder(self: ?*anyopaque, width: f64) void {
        C.QTextTableCellFormat_SetTopBorder(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#topBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TopBorder(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_TopBorder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBottomBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, width: f64 ```
    pub fn SetBottomBorder(self: ?*anyopaque, width: f64) void {
        C.QTextTableCellFormat_SetBottomBorder(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#bottomBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn BottomBorder(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_BottomBorder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setLeftBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, width: f64 ```
    pub fn SetLeftBorder(self: ?*anyopaque, width: f64) void {
        C.QTextTableCellFormat_SetLeftBorder(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#leftBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn LeftBorder(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_LeftBorder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setRightBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, width: f64 ```
    pub fn SetRightBorder(self: ?*anyopaque, width: f64) void {
        C.QTextTableCellFormat_SetRightBorder(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#rightBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn RightBorder(self: ?*anyopaque) f64 {
        return C.QTextTableCellFormat_RightBorder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBorder)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, width: f64 ```
    pub fn SetBorder(self: ?*anyopaque, width: f64) void {
        C.QTextTableCellFormat_SetBorder(@ptrCast(self), @floatCast(width));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setTopBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetTopBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextTableCellFormat_SetTopBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#topBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TopBorderStyle(self: ?*anyopaque) i64 {
        return C.QTextTableCellFormat_TopBorderStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBottomBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetBottomBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextTableCellFormat_SetBottomBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#bottomBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn BottomBorderStyle(self: ?*anyopaque) i64 {
        return C.QTextTableCellFormat_BottomBorderStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setLeftBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetLeftBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextTableCellFormat_SetLeftBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#leftBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn LeftBorderStyle(self: ?*anyopaque) i64 {
        return C.QTextTableCellFormat_LeftBorderStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setRightBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetRightBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextTableCellFormat_SetRightBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#rightBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn RightBorderStyle(self: ?*anyopaque) i64 {
        return C.QTextTableCellFormat_RightBorderStyle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBorderStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.BorderStyle ```
    pub fn SetBorderStyle(self: ?*anyopaque, style: i64) void {
        C.QTextTableCellFormat_SetBorderStyle(@ptrCast(self), @intCast(style));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setTopBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetTopBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextTableCellFormat_SetTopBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#topBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TopBorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextTableCellFormat_TopBorderBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBottomBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetBottomBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextTableCellFormat_SetBottomBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#bottomBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn BottomBorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextTableCellFormat_BottomBorderBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setLeftBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetLeftBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextTableCellFormat_SetLeftBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#leftBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn LeftBorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextTableCellFormat_LeftBorderBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setRightBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetRightBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextTableCellFormat_SetRightBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#rightBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn RightBorderBrush(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextTableCellFormat_RightBorderBrush(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtexttablecellformat.html#setBorderBrush)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetBorderBrush(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextTableCellFormat_SetBorderBrush(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, font: ?*C.QFont ```
    pub fn SetFont(self: ?*anyopaque, font: ?*anyopaque) void {
        C.QTextCharFormat_SetFont(@ptrCast(self), @ptrCast(font));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#font)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn Font(self: ?*anyopaque) ?*C.QFont {
        return C.QTextCharFormat_Font(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamily)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, family: []const u8 ```
    pub fn SetFontFamily(self: ?*anyopaque, family: []const u8) void {
        const family_str = C.struct_libqt_string{
            .len = family.len,
            .data = @constCast(family.ptr),
        };
        C.QTextCharFormat_SetFontFamily(@ptrCast(self), family_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamily)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, allocator: std.mem.Allocator ```
    pub fn FontFamily(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_FontFamily(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFamilies)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, families: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetFontFamilies(self: ?*anyopaque, families: [][]const u8, allocator: std.mem.Allocator) void {
        var families_arr = allocator.alloc(C.struct_libqt_string, families.len) catch @panic("Memory allocation failed");
        defer allocator.free(families_arr);
        for (families, 0..families.len) |item, _i| {
            families_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const families_list = C.struct_libqt_list{
            .len = families.len,
            .data = families_arr.ptr,
        };
        C.QTextCharFormat_SetFontFamilies(@ptrCast(self), families_list);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFamilies)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontFamilies(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontFamilies(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleName)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, styleName: []const u8 ```
    pub fn SetFontStyleName(self: ?*anyopaque, styleName: []const u8) void {
        const styleName_str = C.struct_libqt_string{
            .len = styleName.len,
            .data = @constCast(styleName.ptr),
        };
        C.QTextCharFormat_SetFontStyleName(@ptrCast(self), styleName_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleName)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontStyleName(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextCharFormat_FontStyleName(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontPointSize)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, size: f64 ```
    pub fn SetFontPointSize(self: ?*anyopaque, size: f64) void {
        C.QTextCharFormat_SetFontPointSize(@ptrCast(self), @floatCast(size));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontPointSize)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontPointSize(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontPointSize(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWeight)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, weight: i32 ```
    pub fn SetFontWeight(self: ?*anyopaque, weight: i32) void {
        C.QTextCharFormat_SetFontWeight(@ptrCast(self), @intCast(weight));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWeight)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontWeight(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontWeight(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontItalic)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, italic: bool ```
    pub fn SetFontItalic(self: ?*anyopaque, italic: bool) void {
        C.QTextCharFormat_SetFontItalic(@ptrCast(self), italic);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontItalic)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontItalic(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontItalic(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontCapitalization)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, capitalization: qfont_enums.Capitalization ```
    pub fn SetFontCapitalization(self: ?*anyopaque, capitalization: i64) void {
        C.QTextCharFormat_SetFontCapitalization(@ptrCast(self), @intCast(capitalization));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontCapitalization)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontCapitalization(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontCapitalization(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, letterSpacingType: qfont_enums.SpacingType ```
    pub fn SetFontLetterSpacingType(self: ?*anyopaque, letterSpacingType: i64) void {
        C.QTextCharFormat_SetFontLetterSpacingType(@ptrCast(self), @intCast(letterSpacingType));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacingType)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontLetterSpacingType(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontLetterSpacingType(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, spacing: f64 ```
    pub fn SetFontLetterSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontLetterSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontLetterSpacing)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontLetterSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontLetterSpacing(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontWordSpacing)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, spacing: f64 ```
    pub fn SetFontWordSpacing(self: ?*anyopaque, spacing: f64) void {
        C.QTextCharFormat_SetFontWordSpacing(@ptrCast(self), @floatCast(spacing));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontWordSpacing)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontWordSpacing(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_FontWordSpacing(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontUnderline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, underline: bool ```
    pub fn SetFontUnderline(self: ?*anyopaque, underline: bool) void {
        C.QTextCharFormat_SetFontUnderline(@ptrCast(self), underline);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontUnderline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontUnderline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontUnderline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontOverline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, overline: bool ```
    pub fn SetFontOverline(self: ?*anyopaque, overline: bool) void {
        C.QTextCharFormat_SetFontOverline(@ptrCast(self), overline);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontOverline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontOverline(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontOverline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStrikeOut)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, strikeOut: bool ```
    pub fn SetFontStrikeOut(self: ?*anyopaque, strikeOut: bool) void {
        C.QTextCharFormat_SetFontStrikeOut(@ptrCast(self), strikeOut);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStrikeOut)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontStrikeOut(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontStrikeOut(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineColor)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, color: ?*C.QColor ```
    pub fn SetUnderlineColor(self: ?*anyopaque, color: ?*anyopaque) void {
        C.QTextCharFormat_SetUnderlineColor(@ptrCast(self), @ptrCast(color));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineColor)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn UnderlineColor(self: ?*anyopaque) ?*C.QColor {
        return C.QTextCharFormat_UnderlineColor(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontFixedPitch)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, fixedPitch: bool ```
    pub fn SetFontFixedPitch(self: ?*anyopaque, fixedPitch: bool) void {
        C.QTextCharFormat_SetFontFixedPitch(@ptrCast(self), fixedPitch);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontFixedPitch)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontFixedPitch(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontFixedPitch(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStretch)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, factor: i32 ```
    pub fn SetFontStretch(self: ?*anyopaque, factor: i32) void {
        C.QTextCharFormat_SetFontStretch(@ptrCast(self), @intCast(factor));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStretch)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontStretch(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_FontStretch(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, hint: qfont_enums.StyleHint ```
    pub fn SetFontStyleHint(self: ?*anyopaque, hint: i64) void {
        C.QTextCharFormat_SetFontStyleHint(@ptrCast(self), @intCast(hint));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleStrategy(self: ?*anyopaque, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleStrategy(@ptrCast(self), @intCast(strategy));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleHint)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontStyleHint(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleHint(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontStyleStrategy)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontStyleStrategy(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontStyleStrategy(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontHintingPreference)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, hintingPreference: qfont_enums.HintingPreference ```
    pub fn SetFontHintingPreference(self: ?*anyopaque, hintingPreference: i64) void {
        C.QTextCharFormat_SetFontHintingPreference(@ptrCast(self), @intCast(hintingPreference));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontHintingPreference)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontHintingPreference(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_FontHintingPreference(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontKerning)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, enable: bool ```
    pub fn SetFontKerning(self: ?*anyopaque, enable: bool) void {
        C.QTextCharFormat_SetFontKerning(@ptrCast(self), enable);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#fontKerning)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn FontKerning(self: ?*anyopaque) bool {
        return C.QTextCharFormat_FontKerning(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setUnderlineStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, style: qtextformat_enums.UnderlineStyle ```
    pub fn SetUnderlineStyle(self: ?*anyopaque, style: i64) void {
        C.QTextCharFormat_SetUnderlineStyle(@ptrCast(self), @intCast(style));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#underlineStyle)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn UnderlineStyle(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_UnderlineStyle(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setVerticalAlignment)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, alignment: qtextformat_enums.VerticalAlignment ```
    pub fn SetVerticalAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextCharFormat_SetVerticalAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#verticalAlignment)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn VerticalAlignment(self: ?*anyopaque) i64 {
        return C.QTextCharFormat_VerticalAlignment(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTextOutline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, pen: ?*C.QPen ```
    pub fn SetTextOutline(self: ?*anyopaque, pen: ?*anyopaque) void {
        C.QTextCharFormat_SetTextOutline(@ptrCast(self), @ptrCast(pen));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#textOutline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TextOutline(self: ?*anyopaque) ?*C.QPen {
        return C.QTextCharFormat_TextOutline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setToolTip)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, tip: []const u8 ```
    pub fn SetToolTip(self: ?*anyopaque, tip: []const u8) void {
        const tip_str = C.struct_libqt_string{
            .len = tip.len,
            .data = @constCast(tip.ptr),
        };
        C.QTextCharFormat_SetToolTip(@ptrCast(self), tip_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#toolTip)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, allocator: std.mem.Allocator ```
    pub fn ToolTip(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_ToolTip(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSuperScriptBaseline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, baseline: f64 ```
    pub fn SetSuperScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSuperScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#superScriptBaseline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn SuperScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SuperScriptBaseline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setSubScriptBaseline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, baseline: f64 ```
    pub fn SetSubScriptBaseline(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetSubScriptBaseline(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#subScriptBaseline)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn SubScriptBaseline(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_SubScriptBaseline(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setBaselineOffset)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, baseline: f64 ```
    pub fn SetBaselineOffset(self: ?*anyopaque, baseline: f64) void {
        C.QTextCharFormat_SetBaselineOffset(@ptrCast(self), @floatCast(baseline));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#baselineOffset)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn BaselineOffset(self: ?*anyopaque) f64 {
        return C.QTextCharFormat_BaselineOffset(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchor)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, anchor: bool ```
    pub fn SetAnchor(self: ?*anyopaque, anchor: bool) void {
        C.QTextCharFormat_SetAnchor(@ptrCast(self), anchor);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#isAnchor)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsAnchor(self: ?*anyopaque) bool {
        return C.QTextCharFormat_IsAnchor(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorHref)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, value: []const u8 ```
    pub fn SetAnchorHref(self: ?*anyopaque, value: []const u8) void {
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QTextCharFormat_SetAnchorHref(@ptrCast(self), value_str);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorHref)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, allocator: std.mem.Allocator ```
    pub fn AnchorHref(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextCharFormat_AnchorHref(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setAnchorNames)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, names: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetAnchorNames(self: ?*anyopaque, names: [][]const u8, allocator: std.mem.Allocator) void {
        var names_arr = allocator.alloc(C.struct_libqt_string, names.len) catch @panic("Memory allocation failed");
        defer allocator.free(names_arr);
        for (names, 0..names.len) |item, _i| {
            names_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const names_list = C.struct_libqt_list{
            .len = names.len,
            .data = names_arr.ptr,
        };
        C.QTextCharFormat_SetAnchorNames(@ptrCast(self), names_list);
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#anchorNames)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, allocator: std.mem.Allocator ```
    pub fn AnchorNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QTextCharFormat_AnchorNames(@ptrCast(self));
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

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, tableCellRowSpan: i32 ```
    pub fn SetTableCellRowSpan(self: ?*anyopaque, tableCellRowSpan: i32) void {
        C.QTextCharFormat_SetTableCellRowSpan(@ptrCast(self), @intCast(tableCellRowSpan));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellRowSpan)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TableCellRowSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellRowSpan(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setTableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, tableCellColumnSpan: i32 ```
    pub fn SetTableCellColumnSpan(self: ?*anyopaque, tableCellColumnSpan: i32) void {
        C.QTextCharFormat_SetTableCellColumnSpan(@ptrCast(self), @intCast(tableCellColumnSpan));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#tableCellColumnSpan)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn TableCellColumnSpan(self: ?*anyopaque) i32 {
        return C.QTextCharFormat_TableCellColumnSpan(@ptrCast(self));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFont)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, font: ?*C.QFont, behavior: qtextformat_enums.FontPropertiesInheritanceBehavior ```
    pub fn SetFont2(self: ?*anyopaque, font: ?*anyopaque, behavior: i64) void {
        C.QTextCharFormat_SetFont2(@ptrCast(self), @ptrCast(font), @intCast(behavior));
    }

    /// Inherited from QTextCharFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextcharformat.html#setFontStyleHint)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, hint: qfont_enums.StyleHint, strategy: qfont_enums.StyleStrategy ```
    pub fn SetFontStyleHint2(self: ?*anyopaque, hint: i64, strategy: i64) void {
        C.QTextCharFormat_SetFontStyleHint2(@ptrCast(self), @intCast(hint), @intCast(strategy));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator=)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextFormat_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#swap)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, other: ?*C.QTextFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#merge)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, other: ?*C.QTextFormat ```
    pub fn Merge(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextFormat_Merge(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextFormat_IsEmpty(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#type)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn Type(self: ?*anyopaque) i32 {
        return C.QTextFormat_Type(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectIndex)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ObjectIndex(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectIndex(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectIndex)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, object: i32 ```
    pub fn SetObjectIndex(self: ?*anyopaque, object: i32) void {
        C.QTextFormat_SetObjectIndex(@ptrCast(self), @intCast(object));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#property)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn Property(self: ?*anyopaque, propertyId: i32) ?*C.QVariant {
        return C.QTextFormat_Property(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32, value: ?*C.QVariant ```
    pub fn SetProperty(self: ?*anyopaque, propertyId: i32, value: ?*anyopaque) void {
        C.QTextFormat_SetProperty(@ptrCast(self), @intCast(propertyId), @ptrCast(value));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn ClearProperty(self: ?*anyopaque, propertyId: i32) void {
        C.QTextFormat_ClearProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#hasProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn HasProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_HasProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#boolProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn BoolProperty(self: ?*anyopaque, propertyId: i32) bool {
        return C.QTextFormat_BoolProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#intProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn IntProperty(self: ?*anyopaque, propertyId: i32) i32 {
        return C.QTextFormat_IntProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#doubleProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn DoubleProperty(self: ?*anyopaque, propertyId: i32) f64 {
        return C.QTextFormat_DoubleProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#stringProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn StringProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextFormat_StringProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#colorProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn ColorProperty(self: ?*anyopaque, propertyId: i32) ?*C.QColor {
        return C.QTextFormat_ColorProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#penProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn PenProperty(self: ?*anyopaque, propertyId: i32) ?*C.QPen {
        return C.QTextFormat_PenProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#brushProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn BrushProperty(self: ?*anyopaque, propertyId: i32) ?*C.QBrush {
        return C.QTextFormat_BrushProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32 ```
    pub fn LengthProperty(self: ?*anyopaque, propertyId: i32) ?*C.QTextLength {
        return C.QTextFormat_LengthProperty(@ptrCast(self), @intCast(propertyId));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#lengthVectorProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32, allocator: std.mem.Allocator ```
    pub fn LengthVectorProperty(self: ?*anyopaque, propertyId: i32, allocator: std.mem.Allocator) []?*C.QTextLength {
        const _arr: C.struct_libqt_list = C.QTextFormat_LengthVectorProperty(@ptrCast(self), @intCast(propertyId));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextLength, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextLength = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setProperty)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, propertyId: i32, lengths: []?*C.QTextLength ```
    pub fn SetProperty2(self: ?*anyopaque, propertyId: i32, lengths: []?*C.QTextLength) void {
        const lengths_list = C.struct_libqt_list{
            .len = lengths.len,
            .data = @ptrCast(lengths.ptr),
        };
        C.QTextFormat_SetProperty2(@ptrCast(self), @intCast(propertyId), lengths_list);
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#properties)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, allocator: std.mem.Allocator ```
    pub fn Properties(self: ?*anyopaque, allocator: std.mem.Allocator) map_i32_cqvariant {
        const _map: C.struct_libqt_map = C.QTextFormat_Properties(@ptrCast(self));
        var _ret: map_i32_cqvariant = .empty;
        defer {
            C.libqt_free(_map.keys);
            C.libqt_free(_map.values);
        }
        const _keys: [*]i32 = @ptrCast(@alignCast(_map.keys));
        const _values: [*]?*C.QVariant = @ptrCast(@alignCast(_map.values));
        var _i: usize = 0;
        while (_i < _map.len) : (_i += 1) {
            const _key = _keys[_i];
            const _value = _values[_i];
            _ret.put(allocator, _key, _value) catch @panic("Memory allocation failed");
        }
        return _ret;
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#propertyCount)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QTextFormat_PropertyCount(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setObjectType)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, typeVal: i32 ```
    pub fn SetObjectType(self: ?*anyopaque, typeVal: i32) void {
        C.QTextFormat_SetObjectType(@ptrCast(self), @intCast(typeVal));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#objectType)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ObjectType(self: ?*anyopaque) i32 {
        return C.QTextFormat_ObjectType(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isCharFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsCharFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isBlockFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsBlockFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isListFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsListFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isFrameFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsFrameFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isImageFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsImageFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsTableFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#isTableCellFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn IsTableCellFormat(self: ?*anyopaque) bool {
        return C.QTextFormat_IsTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toBlockFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToBlockFormat(self: ?*anyopaque) ?*C.QTextBlockFormat {
        return C.QTextFormat_ToBlockFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toCharFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToCharFormat(self: ?*anyopaque) ?*C.QTextCharFormat {
        return C.QTextFormat_ToCharFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toListFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToListFormat(self: ?*anyopaque) ?*C.QTextListFormat {
        return C.QTextFormat_ToListFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToTableFormat(self: ?*anyopaque) ?*C.QTextTableFormat {
        return C.QTextFormat_ToTableFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toFrameFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToFrameFormat(self: ?*anyopaque) ?*C.QTextFrameFormat {
        return C.QTextFormat_ToFrameFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toImageFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToImageFormat(self: ?*anyopaque) ?*C.QTextImageFormat {
        return C.QTextFormat_ToImageFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#toTableCellFormat)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToTableCellFormat(self: ?*anyopaque) ?*C.QTextTableCellFormat {
        return C.QTextFormat_ToTableCellFormat(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator==)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator!=)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, rhs: ?*C.QTextFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, rhs: ?*anyopaque) bool {
        return C.QTextFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(rhs));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#operator QVariant)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QTextFormat_ToQVariant(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setLayoutDirection)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, direction: qnamespace_enums.LayoutDirection ```
    pub fn SetLayoutDirection(self: ?*anyopaque, direction: i64) void {
        C.QTextFormat_SetLayoutDirection(@ptrCast(self), @intCast(direction));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#layoutDirection)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn LayoutDirection(self: ?*anyopaque) i64 {
        return C.QTextFormat_LayoutDirection(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setBackground)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetBackground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetBackground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#background)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn Background(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Background(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearBackground)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ClearBackground(self: ?*anyopaque) void {
        C.QTextFormat_ClearBackground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#setForeground)
    ///
    /// ``` self: ?*C.QTextTableCellFormat, brush: ?*C.QBrush ```
    pub fn SetForeground(self: ?*anyopaque, brush: ?*anyopaque) void {
        C.QTextFormat_SetForeground(@ptrCast(self), @ptrCast(brush));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#foreground)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn Foreground(self: ?*anyopaque) ?*C.QBrush {
        return C.QTextFormat_Foreground(@ptrCast(self));
    }

    /// Inherited from QTextFormat
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qtextformat.html#clearForeground)
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn ClearForeground(self: ?*anyopaque) void {
        C.QTextFormat_ClearForeground(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextTableCellFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextTableCellFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextformat.html#types
pub const enums = struct {
    pub const Type = enum {
        pub const VariableLength: i32 = 0;
        pub const FixedLength: i32 = 1;
        pub const PercentageLength: i32 = 2;
    };

    pub const FormatType = enum {
        pub const InvalidFormat: i32 = -1;
        pub const BlockFormat: i32 = 1;
        pub const CharFormat: i32 = 2;
        pub const ListFormat: i32 = 3;
        pub const FrameFormat: i32 = 5;
        pub const UserFormat: i32 = 100;
    };

    pub const Property = enum {
        pub const ObjectIndex: i32 = 0;
        pub const CssFloat: i32 = 2048;
        pub const LayoutDirection: i32 = 2049;
        pub const OutlinePen: i32 = 2064;
        pub const BackgroundBrush: i32 = 2080;
        pub const ForegroundBrush: i32 = 2081;
        pub const BackgroundImageUrl: i32 = 2083;
        pub const BlockAlignment: i32 = 4112;
        pub const BlockTopMargin: i32 = 4144;
        pub const BlockBottomMargin: i32 = 4145;
        pub const BlockLeftMargin: i32 = 4146;
        pub const BlockRightMargin: i32 = 4147;
        pub const TextIndent: i32 = 4148;
        pub const TabPositions: i32 = 4149;
        pub const BlockIndent: i32 = 4160;
        pub const LineHeight: i32 = 4168;
        pub const LineHeightType: i32 = 4169;
        pub const BlockNonBreakableLines: i32 = 4176;
        pub const BlockTrailingHorizontalRulerWidth: i32 = 4192;
        pub const HeadingLevel: i32 = 4208;
        pub const BlockQuoteLevel: i32 = 4224;
        pub const BlockCodeLanguage: i32 = 4240;
        pub const BlockCodeFence: i32 = 4241;
        pub const BlockMarker: i32 = 4256;
        pub const FirstFontProperty: i32 = 8160;
        pub const FontCapitalization: i32 = 8160;
        pub const FontLetterSpacing: i32 = 8161;
        pub const FontWordSpacing: i32 = 8162;
        pub const FontStyleHint: i32 = 8163;
        pub const FontStyleStrategy: i32 = 8164;
        pub const FontKerning: i32 = 8165;
        pub const FontHintingPreference: i32 = 8166;
        pub const FontFamilies: i32 = 8167;
        pub const FontStyleName: i32 = 8168;
        pub const FontLetterSpacingType: i32 = 8169;
        pub const FontStretch: i32 = 8170;
        pub const FontFamily: i32 = 8192;
        pub const FontPointSize: i32 = 8193;
        pub const FontSizeAdjustment: i32 = 8194;
        pub const FontSizeIncrement: i32 = 8194;
        pub const FontWeight: i32 = 8195;
        pub const FontItalic: i32 = 8196;
        pub const FontUnderline: i32 = 8197;
        pub const FontOverline: i32 = 8198;
        pub const FontStrikeOut: i32 = 8199;
        pub const FontFixedPitch: i32 = 8200;
        pub const FontPixelSize: i32 = 8201;
        pub const LastFontProperty: i32 = 8201;
        pub const TextUnderlineColor: i32 = 8224;
        pub const TextVerticalAlignment: i32 = 8225;
        pub const TextOutline: i32 = 8226;
        pub const TextUnderlineStyle: i32 = 8227;
        pub const TextToolTip: i32 = 8228;
        pub const TextSuperScriptBaseline: i32 = 8229;
        pub const TextSubScriptBaseline: i32 = 8230;
        pub const TextBaselineOffset: i32 = 8231;
        pub const IsAnchor: i32 = 8240;
        pub const AnchorHref: i32 = 8241;
        pub const AnchorName: i32 = 8242;
        pub const OldFontLetterSpacingType: i32 = 8243;
        pub const OldFontStretch: i32 = 8244;
        pub const OldTextUnderlineColor: i32 = 8208;
        pub const OldFontFamily: i32 = 8192;
        pub const ObjectType: i32 = 12032;
        pub const ListStyle: i32 = 12288;
        pub const ListIndent: i32 = 12289;
        pub const ListNumberPrefix: i32 = 12290;
        pub const ListNumberSuffix: i32 = 12291;
        pub const FrameBorder: i32 = 16384;
        pub const FrameMargin: i32 = 16385;
        pub const FramePadding: i32 = 16386;
        pub const FrameWidth: i32 = 16387;
        pub const FrameHeight: i32 = 16388;
        pub const FrameTopMargin: i32 = 16389;
        pub const FrameBottomMargin: i32 = 16390;
        pub const FrameLeftMargin: i32 = 16391;
        pub const FrameRightMargin: i32 = 16392;
        pub const FrameBorderBrush: i32 = 16393;
        pub const FrameBorderStyle: i32 = 16400;
        pub const TableColumns: i32 = 16640;
        pub const TableColumnWidthConstraints: i32 = 16641;
        pub const TableCellSpacing: i32 = 16642;
        pub const TableCellPadding: i32 = 16643;
        pub const TableHeaderRowCount: i32 = 16644;
        pub const TableBorderCollapse: i32 = 16645;
        pub const TableCellRowSpan: i32 = 18448;
        pub const TableCellColumnSpan: i32 = 18449;
        pub const TableCellTopPadding: i32 = 18450;
        pub const TableCellBottomPadding: i32 = 18451;
        pub const TableCellLeftPadding: i32 = 18452;
        pub const TableCellRightPadding: i32 = 18453;
        pub const TableCellTopBorder: i32 = 18454;
        pub const TableCellBottomBorder: i32 = 18455;
        pub const TableCellLeftBorder: i32 = 18456;
        pub const TableCellRightBorder: i32 = 18457;
        pub const TableCellTopBorderStyle: i32 = 18458;
        pub const TableCellBottomBorderStyle: i32 = 18459;
        pub const TableCellLeftBorderStyle: i32 = 18460;
        pub const TableCellRightBorderStyle: i32 = 18461;
        pub const TableCellTopBorderBrush: i32 = 18462;
        pub const TableCellBottomBorderBrush: i32 = 18463;
        pub const TableCellLeftBorderBrush: i32 = 18464;
        pub const TableCellRightBorderBrush: i32 = 18465;
        pub const ImageName: i32 = 20480;
        pub const ImageTitle: i32 = 20481;
        pub const ImageAltText: i32 = 20482;
        pub const ImageWidth: i32 = 20496;
        pub const ImageHeight: i32 = 20497;
        pub const ImageQuality: i32 = 20500;
        pub const FullWidthSelection: i32 = 24576;
        pub const PageBreakPolicy: i32 = 28672;
        pub const UserProperty: i32 = 1048576;
    };

    pub const ObjectTypes = enum {
        pub const NoObject: i32 = 0;
        pub const ImageObject: i32 = 1;
        pub const TableObject: i32 = 2;
        pub const TableCellObject: i32 = 3;
        pub const UserObject: i32 = 4096;
    };

    pub const PageBreakFlag = enum {
        pub const PageBreak_Auto: i32 = 0;
        pub const PageBreak_AlwaysBefore: i32 = 1;
        pub const PageBreak_AlwaysAfter: i32 = 16;
    };

    pub const VerticalAlignment = enum {
        pub const AlignNormal: i32 = 0;
        pub const AlignSuperScript: i32 = 1;
        pub const AlignSubScript: i32 = 2;
        pub const AlignMiddle: i32 = 3;
        pub const AlignTop: i32 = 4;
        pub const AlignBottom: i32 = 5;
        pub const AlignBaseline: i32 = 6;
    };

    pub const UnderlineStyle = enum {
        pub const NoUnderline: i32 = 0;
        pub const SingleUnderline: i32 = 1;
        pub const DashUnderline: i32 = 2;
        pub const DotLine: i32 = 3;
        pub const DashDotLine: i32 = 4;
        pub const DashDotDotLine: i32 = 5;
        pub const WaveUnderline: i32 = 6;
        pub const SpellCheckUnderline: i32 = 7;
    };

    pub const FontPropertiesInheritanceBehavior = enum {
        pub const FontPropertiesSpecifiedOnly: i32 = 0;
        pub const FontPropertiesAll: i32 = 1;
    };

    pub const LineHeightTypes = enum {
        pub const SingleHeight: i32 = 0;
        pub const ProportionalHeight: i32 = 1;
        pub const FixedHeight: i32 = 2;
        pub const MinimumHeight: i32 = 3;
        pub const LineDistanceHeight: i32 = 4;
    };

    pub const MarkerType = enum {
        pub const NoMarker: i32 = 0;
        pub const Unchecked: i32 = 1;
        pub const Checked: i32 = 2;
    };

    pub const Style = enum {
        pub const ListDisc: i32 = -1;
        pub const ListCircle: i32 = -2;
        pub const ListSquare: i32 = -3;
        pub const ListDecimal: i32 = -4;
        pub const ListLowerAlpha: i32 = -5;
        pub const ListUpperAlpha: i32 = -6;
        pub const ListLowerRoman: i32 = -7;
        pub const ListUpperRoman: i32 = -8;
        pub const ListStyleUndefined: i32 = 0;
    };

    pub const Position = enum {
        pub const InFlow: i32 = 0;
        pub const FloatLeft: i32 = 1;
        pub const FloatRight: i32 = 2;
    };

    pub const BorderStyle = enum {
        pub const BorderStyle_None: i32 = 0;
        pub const BorderStyle_Dotted: i32 = 1;
        pub const BorderStyle_Dashed: i32 = 2;
        pub const BorderStyle_Solid: i32 = 3;
        pub const BorderStyle_Double: i32 = 4;
        pub const BorderStyle_DotDash: i32 = 5;
        pub const BorderStyle_DotDotDash: i32 = 6;
        pub const BorderStyle_Groove: i32 = 7;
        pub const BorderStyle_Ridge: i32 = 8;
        pub const BorderStyle_Inset: i32 = 9;
        pub const BorderStyle_Outset: i32 = 10;
    };
};
