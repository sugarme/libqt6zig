const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstringmatcher.html
pub const qstringmatcher = struct {
    /// New constructs a new QStringMatcher object.
    ///
    ///
    pub fn New() QtC.QStringMatcher {
        return qtc.QStringMatcher_new();
    }

    /// New2 constructs a new QStringMatcher object.
    ///
    /// ``` pattern: []const u8 ```
    pub fn New2(pattern: []const u8) QtC.QStringMatcher {
        const pattern_str = qtc.libqt_string{
            .len = pattern.len,
            .data = pattern.ptr,
        };

        return qtc.QStringMatcher_new2(pattern_str);
    }

    /// New3 constructs a new QStringMatcher object.
    ///
    /// ``` uc: QtC.QChar, lenVal: i64 ```
    pub fn New3(uc: ?*anyopaque, lenVal: i64) QtC.QStringMatcher {
        return qtc.QStringMatcher_new3(@ptrCast(uc), @intCast(lenVal));
    }

    /// New4 constructs a new QStringMatcher object.
    ///
    /// ``` other: QtC.QStringMatcher ```
    pub fn New4(other: ?*anyopaque) QtC.QStringMatcher {
        return qtc.QStringMatcher_new4(@ptrCast(other));
    }

    /// New5 constructs a new QStringMatcher object.
    ///
    /// ``` pattern: []const u8, cs: qnamespace_enums.CaseSensitivity ```
    pub fn New5(pattern: []const u8, cs: i32) QtC.QStringMatcher {
        const pattern_str = qtc.libqt_string{
            .len = pattern.len,
            .data = pattern.ptr,
        };

        return qtc.QStringMatcher_new5(pattern_str, @intCast(cs));
    }

    /// New6 constructs a new QStringMatcher object.
    ///
    /// ``` uc: QtC.QChar, lenVal: i64, cs: qnamespace_enums.CaseSensitivity ```
    pub fn New6(uc: ?*anyopaque, lenVal: i64, cs: i32) QtC.QStringMatcher {
        return qtc.QStringMatcher_new6(@ptrCast(uc), @intCast(lenVal), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#operator-eq)
    ///
    /// ``` self: QtC.QStringMatcher, other: QtC.QStringMatcher ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        qtc.QStringMatcher_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#setPattern)
    ///
    /// ``` self: QtC.QStringMatcher, pattern: []const u8 ```
    pub fn SetPattern(self: ?*anyopaque, pattern: []const u8) void {
        const pattern_str = qtc.libqt_string{
            .len = pattern.len,
            .data = pattern.ptr,
        };
        qtc.QStringMatcher_SetPattern(@ptrCast(self), pattern_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#setCaseSensitivity)
    ///
    /// ``` self: QtC.QStringMatcher, cs: qnamespace_enums.CaseSensitivity ```
    pub fn SetCaseSensitivity(self: ?*anyopaque, cs: i32) void {
        qtc.QStringMatcher_SetCaseSensitivity(@ptrCast(self), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: QtC.QStringMatcher, str: []const u8 ```
    pub fn IndexIn(self: ?*anyopaque, str: []const u8) i64 {
        const str_str = qtc.libqt_string{
            .len = str.len,
            .data = str.ptr,
        };
        return qtc.QStringMatcher_IndexIn(@ptrCast(self), str_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: QtC.QStringMatcher, str: QtC.QChar, length: i64 ```
    pub fn IndexIn2(self: ?*anyopaque, str: ?*anyopaque, length: i64) i64 {
        return qtc.QStringMatcher_IndexIn2(@ptrCast(self), @ptrCast(str), @intCast(length));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#pattern)
    ///
    /// ``` self: QtC.QStringMatcher, allocator: std.mem.Allocator ```
    pub fn Pattern(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = qtc.QStringMatcher_Pattern(@ptrCast(self));
        defer qtc.libqt_string_free(&_str);
        const _ret = allocator.alloc(u8, _str.len) catch @panic("qstringmatcher.Pattern: Memory allocation failed");
        @memcpy(_ret, _str.data[0.._str.len]);
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#caseSensitivity)
    ///
    /// ``` self: QtC.QStringMatcher ```
    ///
    /// Returns: ``` qnamespace_enums.CaseSensitivity ```
    pub fn CaseSensitivity(self: ?*anyopaque) i32 {
        return qtc.QStringMatcher_CaseSensitivity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: QtC.QStringMatcher, str: []const u8, from: i64 ```
    pub fn IndexIn22(self: ?*anyopaque, str: []const u8, from: i64) i64 {
        const str_str = qtc.libqt_string{
            .len = str.len,
            .data = str.ptr,
        };
        return qtc.QStringMatcher_IndexIn22(@ptrCast(self), str_str, @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#indexIn)
    ///
    /// ``` self: QtC.QStringMatcher, str: QtC.QChar, length: i64, from: i64 ```
    pub fn IndexIn32(self: ?*anyopaque, str: ?*anyopaque, length: i64, from: i64) i64 {
        return qtc.QStringMatcher_IndexIn32(@ptrCast(self), @ptrCast(str), @intCast(length), @intCast(from));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstringmatcher.html#dtor.QStringMatcher)
    ///
    /// Delete this object from C++ memory.
    ///
    /// ``` self: QtC.QStringMatcher ```
    pub fn QDelete(self: ?*anyopaque) void {
        qtc.QStringMatcher_Delete(@ptrCast(self));
    }
};
