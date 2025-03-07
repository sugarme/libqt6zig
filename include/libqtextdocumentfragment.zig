const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextdocumentfragment.html
pub const qtextdocumentfragment = struct {
    /// New constructs a new QTextDocumentFragment object.
    ///
    ///
    pub fn New() ?*C.QTextDocumentFragment {
        return C.QTextDocumentFragment_new();
    }

    /// New2 constructs a new QTextDocumentFragment object.
    ///
    /// ``` document: ?*C.QTextDocument ```
    pub fn New2(document: ?*anyopaque) ?*C.QTextDocumentFragment {
        return C.QTextDocumentFragment_new2(@ptrCast(document));
    }

    /// New3 constructs a new QTextDocumentFragment object.
    ///
    /// ``` range: ?*C.QTextCursor ```
    pub fn New3(range: ?*anyopaque) ?*C.QTextDocumentFragment {
        return C.QTextDocumentFragment_new3(@ptrCast(range));
    }

    /// New4 constructs a new QTextDocumentFragment object.
    ///
    /// ``` rhs: ?*C.QTextDocumentFragment ```
    pub fn New4(rhs: ?*anyopaque) ?*C.QTextDocumentFragment {
        return C.QTextDocumentFragment_new4(@ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#operator=)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, rhs: ?*C.QTextDocumentFragment ```
    pub fn OperatorAssign(self: ?*anyopaque, rhs: ?*anyopaque) void {
        C.QTextDocumentFragment_OperatorAssign(@ptrCast(self), @ptrCast(rhs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#isEmpty)
    ///
    /// ``` self: ?*C.QTextDocumentFragment ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QTextDocumentFragment_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#toPlainText)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, allocator: std.mem.Allocator ```
    pub fn ToPlainText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentFragment_ToPlainText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#toRawText)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, allocator: std.mem.Allocator ```
    pub fn ToRawText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentFragment_ToRawText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#toHtml)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, allocator: std.mem.Allocator ```
    pub fn ToHtml(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentFragment_ToHtml(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#toMarkdown)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, allocator: std.mem.Allocator ```
    pub fn ToMarkdown(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentFragment_ToMarkdown(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#fromPlainText)
    ///
    /// ``` plainText: []const u8 ```
    pub fn FromPlainText(plainText: []const u8) ?*C.QTextDocumentFragment {
        const plainText_str = C.struct_libqt_string{
            .len = plainText.len,
            .data = @constCast(plainText.ptr),
        };
        return C.QTextDocumentFragment_FromPlainText(plainText_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#fromHtml)
    ///
    /// ``` html: []const u8 ```
    pub fn FromHtml(html: []const u8) ?*C.QTextDocumentFragment {
        const html_str = C.struct_libqt_string{
            .len = html.len,
            .data = @constCast(html.ptr),
        };
        return C.QTextDocumentFragment_FromHtml(html_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#fromMarkdown)
    ///
    /// ``` markdown: []const u8 ```
    pub fn FromMarkdown(markdown: []const u8) ?*C.QTextDocumentFragment {
        const markdown_str = C.struct_libqt_string{
            .len = markdown.len,
            .data = @constCast(markdown.ptr),
        };
        return C.QTextDocumentFragment_FromMarkdown(markdown_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#toMarkdown)
    ///
    /// ``` self: ?*C.QTextDocumentFragment, features: i32, allocator: std.mem.Allocator ```
    pub fn ToMarkdown1(self: ?*anyopaque, features: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextDocumentFragment_ToMarkdown1(@ptrCast(self), @intCast(features));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#fromHtml)
    ///
    /// ``` html: []const u8, resourceProvider: ?*C.QTextDocument ```
    pub fn FromHtml2(html: []const u8, resourceProvider: ?*anyopaque) ?*C.QTextDocumentFragment {
        const html_str = C.struct_libqt_string{
            .len = html.len,
            .data = @constCast(html.ptr),
        };
        return C.QTextDocumentFragment_FromHtml2(html_str, @ptrCast(resourceProvider));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextdocumentfragment.html#fromMarkdown)
    ///
    /// ``` markdown: []const u8, features: i32 ```
    pub fn FromMarkdown2(markdown: []const u8, features: i64) ?*C.QTextDocumentFragment {
        const markdown_str = C.struct_libqt_string{
            .len = markdown.len,
            .data = @constCast(markdown.ptr),
        };
        return C.QTextDocumentFragment_FromMarkdown2(markdown_str, @intCast(features));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextDocumentFragment ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextDocumentFragment_Delete(@ptrCast(self));
    }
};
