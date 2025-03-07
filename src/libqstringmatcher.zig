const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstringmatcher.html
pub const qstringmatcher = struct {
    /// New constructs a new QStringMatcher object.
    ///
    ///
    pub fn New() ?*C.QStringMatcher {
        return C.QStringMatcher_new();
    }

    /// New2 constructs a new QStringMatcher object.
    ///
    /// ``` pattern: []const u8 ```
    pub fn New2(pattern: []const u8) ?*C.QStringMatcher {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };

        return C.QStringMatcher_new2(pattern_str);
    }

    /// New3 constructs a new QStringMatcher object.
    ///
    /// ``` uc: ?*C.QChar, lenVal: i64 ```
    pub fn New3(uc: ?*anyopaque, lenVal: i64) ?*C.QStringMatcher {
        return C.QStringMatcher_new3(@ptrCast(uc), @intCast(lenVal));
    }

    /// New4 constructs a new QStringMatcher object.
    ///
    /// ``` other: ?*C.QStringMatcher ```
    pub fn New4(other: ?*anyopaque) ?*C.QStringMatcher {
        return C.QStringMatcher_new4(@ptrCast(other));
    }

    /// New5 constructs a new QStringMatcher object.
    ///
    /// ``` pattern: []const u8, cs: qnamespace_enums.CaseSensitivity ```
    pub fn New5(pattern: []const u8, cs: i64) ?*C.QStringMatcher {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };

        return C.QStringMatcher_new5(pattern_str, @intCast(cs));
    }

    /// New6 constructs a new QStringMatcher object.
    ///
    /// ``` uc: ?*C.QChar, lenVal: i64, cs: qnamespace_enums.CaseSensitivity ```
    pub fn New6(uc: ?*anyopaque, lenVal: i64, cs: i64) ?*C.QStringMatcher {
        return C.QStringMatcher_new6(@ptrCast(uc), @intCast(lenVal), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#operator=)
    ///
    /// ``` self: ?*C.QStringMatcher, other: ?*C.QStringMatcher ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStringMatcher_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#setPattern)
    ///
    /// ``` self: ?*C.QStringMatcher, pattern: []const u8 ```
    pub fn SetPattern(self: ?*anyopaque, pattern: []const u8) void {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };
        C.QStringMatcher_SetPattern(@ptrCast(self), pattern_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#setCaseSensitivity)
    ///
    /// ``` self: ?*C.QStringMatcher, cs: qnamespace_enums.CaseSensitivity ```
    pub fn SetCaseSensitivity(self: ?*anyopaque, cs: i64) void {
        C.QStringMatcher_SetCaseSensitivity(@ptrCast(self), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: ?*C.QStringMatcher, str: []const u8 ```
    pub fn IndexIn(self: ?*anyopaque, str: []const u8) i64 {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QStringMatcher_IndexIn(@ptrCast(self), str_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: ?*C.QStringMatcher, str: ?*C.QChar, length: i64 ```
    pub fn IndexIn2(self: ?*anyopaque, str: ?*anyopaque, length: i64) i64 {
        return C.QStringMatcher_IndexIn2(@ptrCast(self), @ptrCast(str), @intCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#pattern)
    ///
    /// ``` self: ?*C.QStringMatcher, allocator: std.mem.Allocator ```
    pub fn Pattern(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStringMatcher_Pattern(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#caseSensitivity)
    ///
    /// ``` self: ?*C.QStringMatcher ```
    pub fn CaseSensitivity(self: ?*anyopaque) i64 {
        return C.QStringMatcher_CaseSensitivity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: ?*C.QStringMatcher, str: []const u8, from: i64 ```
    pub fn IndexIn22(self: ?*anyopaque, str: []const u8, from: i64) i64 {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        return C.QStringMatcher_IndexIn22(@ptrCast(self), str_str, @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: ?*C.QStringMatcher, str: ?*C.QChar, length: i64, from: i64 ```
    pub fn IndexIn3(self: ?*anyopaque, str: ?*anyopaque, length: i64, from: i64) i64 {
        return C.QStringMatcher_IndexIn3(@ptrCast(self), @ptrCast(str), @intCast(length), @intCast(from));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStringMatcher ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStringMatcher_Delete(@ptrCast(self));
    }
};
