const C = @import("qt6c");
const qxmlstream_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qxmlstreamattribute.html
pub const qxmlstreamattribute = struct {
    /// New constructs a new QXmlStreamAttribute object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamAttribute {
        return C.QXmlStreamAttribute_new();
    }

    /// New2 constructs a new QXmlStreamAttribute object.
    ///
    /// ``` qualifiedName: []const u8, value: []const u8 ```
    pub fn New2(qualifiedName: []const u8, value: []const u8) ?*C.QXmlStreamAttribute {
        const qualifiedName_str = C.struct_libqt_string{
            .len = qualifiedName.len,
            .data = @constCast(qualifiedName.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };

        return C.QXmlStreamAttribute_new2(qualifiedName_str, value_str);
    }

    /// New3 constructs a new QXmlStreamAttribute object.
    ///
    /// ``` namespaceUri: []const u8, name: []const u8, value: []const u8 ```
    pub fn New3(namespaceUri: []const u8, name: []const u8, value: []const u8) ?*C.QXmlStreamAttribute {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };

        return C.QXmlStreamAttribute_new3(namespaceUri_str, name_str, value_str);
    }

    /// New4 constructs a new QXmlStreamAttribute object.
    ///
    /// ``` param1: ?*C.QXmlStreamAttribute ```
    pub fn New4(param1: ?*anyopaque) ?*C.QXmlStreamAttribute {
        return C.QXmlStreamAttribute_new4(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamattribute.html#isDefault)
    ///
    /// ``` self: ?*C.QXmlStreamAttribute ```
    pub fn IsDefault(self: ?*anyopaque) bool {
        return C.QXmlStreamAttribute_IsDefault(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamattribute.html#operator==)
    ///
    /// ``` self: ?*C.QXmlStreamAttribute, other: ?*C.QXmlStreamAttribute ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamAttribute_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamattribute.html#operator!=)
    ///
    /// ``` self: ?*C.QXmlStreamAttribute, other: ?*C.QXmlStreamAttribute ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamAttribute_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamattribute.html#operator=)
    ///
    /// ``` self: ?*C.QXmlStreamAttribute, param1: ?*C.QXmlStreamAttribute ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QXmlStreamAttribute_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamAttribute ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamAttribute_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamnamespacedeclaration.html
pub const qxmlstreamnamespacedeclaration = struct {
    /// New constructs a new QXmlStreamNamespaceDeclaration object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamNamespaceDeclaration {
        return C.QXmlStreamNamespaceDeclaration_new();
    }

    /// New2 constructs a new QXmlStreamNamespaceDeclaration object.
    ///
    /// ``` prefix: []const u8, namespaceUri: []const u8 ```
    pub fn New2(prefix: []const u8, namespaceUri: []const u8) ?*C.QXmlStreamNamespaceDeclaration {
        const prefix_str = C.struct_libqt_string{
            .len = prefix.len,
            .data = @constCast(prefix.ptr),
        };
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };

        return C.QXmlStreamNamespaceDeclaration_new2(prefix_str, namespaceUri_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamnamespacedeclaration.html#operator==)
    ///
    /// ``` self: ?*C.QXmlStreamNamespaceDeclaration, other: ?*C.QXmlStreamNamespaceDeclaration ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamNamespaceDeclaration_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamnamespacedeclaration.html#operator!=)
    ///
    /// ``` self: ?*C.QXmlStreamNamespaceDeclaration, other: ?*C.QXmlStreamNamespaceDeclaration ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamNamespaceDeclaration_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamNamespaceDeclaration ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamNamespaceDeclaration_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamnotationdeclaration.html
pub const qxmlstreamnotationdeclaration = struct {
    /// New constructs a new QXmlStreamNotationDeclaration object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamNotationDeclaration {
        return C.QXmlStreamNotationDeclaration_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamnotationdeclaration.html#operator==)
    ///
    /// ``` self: ?*C.QXmlStreamNotationDeclaration, other: ?*C.QXmlStreamNotationDeclaration ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamNotationDeclaration_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamnotationdeclaration.html#operator!=)
    ///
    /// ``` self: ?*C.QXmlStreamNotationDeclaration, other: ?*C.QXmlStreamNotationDeclaration ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamNotationDeclaration_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamNotationDeclaration ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamNotationDeclaration_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamentitydeclaration.html
pub const qxmlstreamentitydeclaration = struct {
    /// New constructs a new QXmlStreamEntityDeclaration object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamEntityDeclaration {
        return C.QXmlStreamEntityDeclaration_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamentitydeclaration.html#operator==)
    ///
    /// ``` self: ?*C.QXmlStreamEntityDeclaration, other: ?*C.QXmlStreamEntityDeclaration ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamEntityDeclaration_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamentitydeclaration.html#operator!=)
    ///
    /// ``` self: ?*C.QXmlStreamEntityDeclaration, other: ?*C.QXmlStreamEntityDeclaration ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QXmlStreamEntityDeclaration_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamEntityDeclaration ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamEntityDeclaration_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamentityresolver.html
pub const qxmlstreamentityresolver = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamentityresolver.html#resolveEntity)
    ///
    /// ``` self: ?*C.QXmlStreamEntityResolver, publicId: []const u8, systemId: []const u8, allocator: std.mem.Allocator ```
    pub fn ResolveEntity(self: ?*anyopaque, publicId: []const u8, systemId: []const u8, allocator: std.mem.Allocator) []const u8 {
        const publicId_str = C.struct_libqt_string{
            .len = publicId.len,
            .data = @constCast(publicId.ptr),
        };
        const systemId_str = C.struct_libqt_string{
            .len = systemId.len,
            .data = @constCast(systemId.ptr),
        };
        const _str = C.QXmlStreamEntityResolver_ResolveEntity(@ptrCast(self), publicId_str, systemId_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamentityresolver.html#resolveUndeclaredEntity)
    ///
    /// ``` self: ?*C.QXmlStreamEntityResolver, name: []const u8, allocator: std.mem.Allocator ```
    pub fn ResolveUndeclaredEntity(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _str = C.QXmlStreamEntityResolver_ResolveUndeclaredEntity(@ptrCast(self), name_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamEntityResolver ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamEntityResolver_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamreader.html
pub const qxmlstreamreader = struct {
    /// New constructs a new QXmlStreamReader object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamReader {
        return C.QXmlStreamReader_new();
    }

    /// New2 constructs a new QXmlStreamReader object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New2(device: ?*anyopaque) ?*C.QXmlStreamReader {
        return C.QXmlStreamReader_new2(@ptrCast(device));
    }

    /// New3 constructs a new QXmlStreamReader object.
    ///
    /// ``` data: []u8 ```
    pub fn New3(data: []u8) ?*C.QXmlStreamReader {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QXmlStreamReader_new3(data_str);
    }

    /// New4 constructs a new QXmlStreamReader object.
    ///
    /// ``` data: []const u8 ```
    pub fn New4(data: []const u8) ?*C.QXmlStreamReader {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QXmlStreamReader_new4(data_str);
    }

    /// New5 constructs a new QXmlStreamReader object.
    ///
    /// ``` data: []const u8 ```
    pub fn New5(data: []const u8) ?*C.QXmlStreamReader {
        const data_Cstring = @constCast(data.ptr);

        return C.QXmlStreamReader_new5(data_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#setDevice)
    ///
    /// ``` self: ?*C.QXmlStreamReader, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QXmlStreamReader_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#device)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QXmlStreamReader_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QXmlStreamReader, data: []u8 ```
    pub fn AddData(self: ?*anyopaque, data: []u8) void {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QXmlStreamReader_AddData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QXmlStreamReader, data: []const u8 ```
    pub fn AddDataWithData(self: ?*anyopaque, data: []const u8) void {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QXmlStreamReader_AddDataWithData(@ptrCast(self), data_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#addData)
    ///
    /// ``` self: ?*C.QXmlStreamReader, data: []const u8 ```
    pub fn AddData2(self: ?*anyopaque, data: []const u8) void {
        const data_Cstring = @constCast(data.ptr);
        C.QXmlStreamReader_AddData2(@ptrCast(self), data_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#clear)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QXmlStreamReader_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#atEnd)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn AtEnd(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_AtEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#readNext)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn ReadNext(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_ReadNext(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#readNextStartElement)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn ReadNextStartElement(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_ReadNextStartElement(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#skipCurrentElement)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn SkipCurrentElement(self: ?*anyopaque) void {
        C.QXmlStreamReader_SkipCurrentElement(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#tokenType)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn TokenType(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_TokenType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#tokenString)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn TokenString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QXmlStreamReader_TokenString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#setNamespaceProcessing)
    ///
    /// ``` self: ?*C.QXmlStreamReader, namespaceProcessing: bool ```
    pub fn SetNamespaceProcessing(self: ?*anyopaque, namespaceProcessing: bool) void {
        C.QXmlStreamReader_SetNamespaceProcessing(@ptrCast(self), namespaceProcessing);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#namespaceProcessing)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn NamespaceProcessing(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_NamespaceProcessing(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isStartDocument)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsStartDocument(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsStartDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isEndDocument)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsEndDocument(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsEndDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isStartElement)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsStartElement(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsStartElement(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isEndElement)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsEndElement(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsEndElement(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isCharacters)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsCharacters(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsCharacters(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isWhitespace)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsWhitespace(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsWhitespace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isCDATA)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsCDATA(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsCDATA(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isComment)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsComment(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsComment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isDTD)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsDTD(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsDTD(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isEntityReference)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsEntityReference(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsEntityReference(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isProcessingInstruction)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsProcessingInstruction(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsProcessingInstruction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#isStandaloneDocument)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn IsStandaloneDocument(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_IsStandaloneDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#lineNumber)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn LineNumber(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_LineNumber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#columnNumber)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn ColumnNumber(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_ColumnNumber(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#characterOffset)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn CharacterOffset(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_CharacterOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#readElementText)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn ReadElementText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QXmlStreamReader_ReadElementText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#namespaceDeclarations)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn NamespaceDeclarations(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QXmlStreamNamespaceDeclaration {
        const _arr: C.struct_libqt_list = C.QXmlStreamReader_NamespaceDeclarations(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QXmlStreamNamespaceDeclaration, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QXmlStreamNamespaceDeclaration = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#addExtraNamespaceDeclaration)
    ///
    /// ``` self: ?*C.QXmlStreamReader, extraNamespaceDeclaraction: ?*C.QXmlStreamNamespaceDeclaration ```
    pub fn AddExtraNamespaceDeclaration(self: ?*anyopaque, extraNamespaceDeclaraction: ?*anyopaque) void {
        C.QXmlStreamReader_AddExtraNamespaceDeclaration(@ptrCast(self), @ptrCast(extraNamespaceDeclaraction));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#addExtraNamespaceDeclarations)
    ///
    /// ``` self: ?*C.QXmlStreamReader, extraNamespaceDeclaractions: []?*C.QXmlStreamNamespaceDeclaration ```
    pub fn AddExtraNamespaceDeclarations(self: ?*anyopaque, extraNamespaceDeclaractions: []?*C.QXmlStreamNamespaceDeclaration) void {
        const extraNamespaceDeclaractions_list = C.struct_libqt_list{
            .len = extraNamespaceDeclaractions.len,
            .data = @ptrCast(extraNamespaceDeclaractions.ptr),
        };
        C.QXmlStreamReader_AddExtraNamespaceDeclarations(@ptrCast(self), extraNamespaceDeclaractions_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#notationDeclarations)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn NotationDeclarations(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QXmlStreamNotationDeclaration {
        const _arr: C.struct_libqt_list = C.QXmlStreamReader_NotationDeclarations(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QXmlStreamNotationDeclaration, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QXmlStreamNotationDeclaration = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#entityDeclarations)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn EntityDeclarations(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QXmlStreamEntityDeclaration {
        const _arr: C.struct_libqt_list = C.QXmlStreamReader_EntityDeclarations(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QXmlStreamEntityDeclaration, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QXmlStreamEntityDeclaration = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#entityExpansionLimit)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn EntityExpansionLimit(self: ?*anyopaque) i32 {
        return C.QXmlStreamReader_EntityExpansionLimit(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#setEntityExpansionLimit)
    ///
    /// ``` self: ?*C.QXmlStreamReader, limit: i32 ```
    pub fn SetEntityExpansionLimit(self: ?*anyopaque, limit: i32) void {
        C.QXmlStreamReader_SetEntityExpansionLimit(@ptrCast(self), @intCast(limit));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#raiseError)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn RaiseError(self: ?*anyopaque) void {
        C.QXmlStreamReader_RaiseError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#errorString)
    ///
    /// ``` self: ?*C.QXmlStreamReader, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QXmlStreamReader_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#error)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QXmlStreamReader_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#hasError)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn HasError(self: ?*anyopaque) bool {
        return C.QXmlStreamReader_HasError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#setEntityResolver)
    ///
    /// ``` self: ?*C.QXmlStreamReader, resolver: ?*C.QXmlStreamEntityResolver ```
    pub fn SetEntityResolver(self: ?*anyopaque, resolver: ?*anyopaque) void {
        C.QXmlStreamReader_SetEntityResolver(@ptrCast(self), @ptrCast(resolver));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#entityResolver)
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn EntityResolver(self: ?*anyopaque) ?*C.QXmlStreamEntityResolver {
        return C.QXmlStreamReader_EntityResolver(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#readElementText)
    ///
    /// ``` self: ?*C.QXmlStreamReader, behaviour: qxmlstream_enums.ReadElementTextBehaviour, allocator: std.mem.Allocator ```
    pub fn ReadElementText1(self: ?*anyopaque, behaviour: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QXmlStreamReader_ReadElementText1(@ptrCast(self), @intCast(behaviour));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamreader.html#raiseError)
    ///
    /// ``` self: ?*C.QXmlStreamReader, message: []const u8 ```
    pub fn RaiseError1(self: ?*anyopaque, message: []const u8) void {
        const message_str = C.struct_libqt_string{
            .len = message.len,
            .data = @constCast(message.ptr),
        };
        C.QXmlStreamReader_RaiseError1(@ptrCast(self), message_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamReader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamReader_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstreamwriter.html
pub const qxmlstreamwriter = struct {
    /// New constructs a new QXmlStreamWriter object.
    ///
    ///
    pub fn New() ?*C.QXmlStreamWriter {
        return C.QXmlStreamWriter_new();
    }

    /// New2 constructs a new QXmlStreamWriter object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New2(device: ?*anyopaque) ?*C.QXmlStreamWriter {
        return C.QXmlStreamWriter_new2(@ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#setDevice)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, device: ?*C.QIODevice ```
    pub fn SetDevice(self: ?*anyopaque, device: ?*anyopaque) void {
        C.QXmlStreamWriter_SetDevice(@ptrCast(self), @ptrCast(device));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#device)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn Device(self: ?*anyopaque) ?*C.QIODevice {
        return C.QXmlStreamWriter_Device(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#setAutoFormatting)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, autoFormatting: bool ```
    pub fn SetAutoFormatting(self: ?*anyopaque, autoFormatting: bool) void {
        C.QXmlStreamWriter_SetAutoFormatting(@ptrCast(self), autoFormatting);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#autoFormatting)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn AutoFormatting(self: ?*anyopaque) bool {
        return C.QXmlStreamWriter_AutoFormatting(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#setAutoFormattingIndent)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, spacesOrTabs: i32 ```
    pub fn SetAutoFormattingIndent(self: ?*anyopaque, spacesOrTabs: i32) void {
        C.QXmlStreamWriter_SetAutoFormattingIndent(@ptrCast(self), @intCast(spacesOrTabs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#autoFormattingIndent)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn AutoFormattingIndent(self: ?*anyopaque) i32 {
        return C.QXmlStreamWriter_AutoFormattingIndent(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeAttribute)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, qualifiedName: []const u8, value: []const u8 ```
    pub fn WriteAttribute(self: ?*anyopaque, qualifiedName: []const u8, value: []const u8) void {
        const qualifiedName_str = C.struct_libqt_string{
            .len = qualifiedName.len,
            .data = @constCast(qualifiedName.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QXmlStreamWriter_WriteAttribute(@ptrCast(self), qualifiedName_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeAttribute)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8, name: []const u8, value: []const u8 ```
    pub fn WriteAttribute2(self: ?*anyopaque, namespaceUri: []const u8, name: []const u8, value: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const value_str = C.struct_libqt_string{
            .len = value.len,
            .data = @constCast(value.ptr),
        };
        C.QXmlStreamWriter_WriteAttribute2(@ptrCast(self), namespaceUri_str, name_str, value_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeAttribute)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, attribute: ?*C.QXmlStreamAttribute ```
    pub fn WriteAttributeWithAttribute(self: ?*anyopaque, attribute: ?*anyopaque) void {
        C.QXmlStreamWriter_WriteAttributeWithAttribute(@ptrCast(self), @ptrCast(attribute));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeCDATA)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, text: []const u8 ```
    pub fn WriteCDATA(self: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QXmlStreamWriter_WriteCDATA(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeCharacters)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, text: []const u8 ```
    pub fn WriteCharacters(self: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QXmlStreamWriter_WriteCharacters(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeComment)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, text: []const u8 ```
    pub fn WriteComment(self: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QXmlStreamWriter_WriteComment(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeDTD)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, dtd: []const u8 ```
    pub fn WriteDTD(self: ?*anyopaque, dtd: []const u8) void {
        const dtd_str = C.struct_libqt_string{
            .len = dtd.len,
            .data = @constCast(dtd.ptr),
        };
        C.QXmlStreamWriter_WriteDTD(@ptrCast(self), dtd_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeEmptyElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, qualifiedName: []const u8 ```
    pub fn WriteEmptyElement(self: ?*anyopaque, qualifiedName: []const u8) void {
        const qualifiedName_str = C.struct_libqt_string{
            .len = qualifiedName.len,
            .data = @constCast(qualifiedName.ptr),
        };
        C.QXmlStreamWriter_WriteEmptyElement(@ptrCast(self), qualifiedName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeEmptyElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8, name: []const u8 ```
    pub fn WriteEmptyElement2(self: ?*anyopaque, namespaceUri: []const u8, name: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QXmlStreamWriter_WriteEmptyElement2(@ptrCast(self), namespaceUri_str, name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeTextElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, qualifiedName: []const u8, text: []const u8 ```
    pub fn WriteTextElement(self: ?*anyopaque, qualifiedName: []const u8, text: []const u8) void {
        const qualifiedName_str = C.struct_libqt_string{
            .len = qualifiedName.len,
            .data = @constCast(qualifiedName.ptr),
        };
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QXmlStreamWriter_WriteTextElement(@ptrCast(self), qualifiedName_str, text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeTextElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8, name: []const u8, text: []const u8 ```
    pub fn WriteTextElement2(self: ?*anyopaque, namespaceUri: []const u8, name: []const u8, text: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QXmlStreamWriter_WriteTextElement2(@ptrCast(self), namespaceUri_str, name_str, text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeEndDocument)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn WriteEndDocument(self: ?*anyopaque) void {
        C.QXmlStreamWriter_WriteEndDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeEndElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn WriteEndElement(self: ?*anyopaque) void {
        C.QXmlStreamWriter_WriteEndElement(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeEntityReference)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, name: []const u8 ```
    pub fn WriteEntityReference(self: ?*anyopaque, name: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QXmlStreamWriter_WriteEntityReference(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeNamespace)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8 ```
    pub fn WriteNamespace(self: ?*anyopaque, namespaceUri: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        C.QXmlStreamWriter_WriteNamespace(@ptrCast(self), namespaceUri_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeDefaultNamespace)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8 ```
    pub fn WriteDefaultNamespace(self: ?*anyopaque, namespaceUri: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        C.QXmlStreamWriter_WriteDefaultNamespace(@ptrCast(self), namespaceUri_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeProcessingInstruction)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, target: []const u8 ```
    pub fn WriteProcessingInstruction(self: ?*anyopaque, target: []const u8) void {
        const target_str = C.struct_libqt_string{
            .len = target.len,
            .data = @constCast(target.ptr),
        };
        C.QXmlStreamWriter_WriteProcessingInstruction(@ptrCast(self), target_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeStartDocument)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn WriteStartDocument(self: ?*anyopaque) void {
        C.QXmlStreamWriter_WriteStartDocument(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeStartDocument)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, version: []const u8 ```
    pub fn WriteStartDocumentWithVersion(self: ?*anyopaque, version: []const u8) void {
        const version_str = C.struct_libqt_string{
            .len = version.len,
            .data = @constCast(version.ptr),
        };
        C.QXmlStreamWriter_WriteStartDocumentWithVersion(@ptrCast(self), version_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeStartDocument)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, version: []const u8, standalone: bool ```
    pub fn WriteStartDocument2(self: ?*anyopaque, version: []const u8, standalone: bool) void {
        const version_str = C.struct_libqt_string{
            .len = version.len,
            .data = @constCast(version.ptr),
        };
        C.QXmlStreamWriter_WriteStartDocument2(@ptrCast(self), version_str, standalone);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeStartElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, qualifiedName: []const u8 ```
    pub fn WriteStartElement(self: ?*anyopaque, qualifiedName: []const u8) void {
        const qualifiedName_str = C.struct_libqt_string{
            .len = qualifiedName.len,
            .data = @constCast(qualifiedName.ptr),
        };
        C.QXmlStreamWriter_WriteStartElement(@ptrCast(self), qualifiedName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeStartElement)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8, name: []const u8 ```
    pub fn WriteStartElement2(self: ?*anyopaque, namespaceUri: []const u8, name: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QXmlStreamWriter_WriteStartElement2(@ptrCast(self), namespaceUri_str, name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeCurrentToken)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, reader: ?*C.QXmlStreamReader ```
    pub fn WriteCurrentToken(self: ?*anyopaque, reader: ?*anyopaque) void {
        C.QXmlStreamWriter_WriteCurrentToken(@ptrCast(self), @ptrCast(reader));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#hasError)
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn HasError(self: ?*anyopaque) bool {
        return C.QXmlStreamWriter_HasError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeNamespace)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, namespaceUri: []const u8, prefix: []const u8 ```
    pub fn WriteNamespace2(self: ?*anyopaque, namespaceUri: []const u8, prefix: []const u8) void {
        const namespaceUri_str = C.struct_libqt_string{
            .len = namespaceUri.len,
            .data = @constCast(namespaceUri.ptr),
        };
        const prefix_str = C.struct_libqt_string{
            .len = prefix.len,
            .data = @constCast(prefix.ptr),
        };
        C.QXmlStreamWriter_WriteNamespace2(@ptrCast(self), namespaceUri_str, prefix_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qxmlstreamwriter.html#writeProcessingInstruction)
    ///
    /// ``` self: ?*C.QXmlStreamWriter, target: []const u8, data: []const u8 ```
    pub fn WriteProcessingInstruction2(self: ?*anyopaque, target: []const u8, data: []const u8) void {
        const target_str = C.struct_libqt_string{
            .len = target.len,
            .data = @constCast(target.ptr),
        };
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };
        C.QXmlStreamWriter_WriteProcessingInstruction2(@ptrCast(self), target_str, data_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QXmlStreamWriter ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QXmlStreamWriter_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qxmlstream.html#types
pub const enums = struct {
    pub const TokenType = enum {
        pub const NoToken: i32 = 0;
        pub const Invalid: i32 = 1;
        pub const StartDocument: i32 = 2;
        pub const EndDocument: i32 = 3;
        pub const StartElement: i32 = 4;
        pub const EndElement: i32 = 5;
        pub const Characters: i32 = 6;
        pub const Comment: i32 = 7;
        pub const DTD: i32 = 8;
        pub const EntityReference: i32 = 9;
        pub const ProcessingInstruction: i32 = 10;
    };

    pub const ReadElementTextBehaviour = enum {
        pub const ErrorOnUnexpectedElement: i32 = 0;
        pub const IncludeChildElements: i32 = 1;
        pub const SkipChildElements: i32 = 2;
    };

    pub const Error = enum {
        pub const NoError: i32 = 0;
        pub const UnexpectedElementError: i32 = 1;
        pub const CustomError: i32 = 2;
        pub const NotWellFormedError: i32 = 3;
        pub const PrematureEndOfDocumentError: i32 = 4;
    };
};
