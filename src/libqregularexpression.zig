const C = @import("qt6c");
const qregularexpression_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qregularexpression.html
pub const qregularexpression = struct {
    /// New constructs a new QRegularExpression object.
    ///
    ///
    pub fn New() ?*C.QRegularExpression {
        return C.QRegularExpression_new();
    }

    /// New2 constructs a new QRegularExpression object.
    ///
    /// ``` pattern: []const u8 ```
    pub fn New2(pattern: []const u8) ?*C.QRegularExpression {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };

        return C.QRegularExpression_new2(pattern_str);
    }

    /// New3 constructs a new QRegularExpression object.
    ///
    /// ``` re: ?*C.QRegularExpression ```
    pub fn New3(re: ?*anyopaque) ?*C.QRegularExpression {
        return C.QRegularExpression_new3(@ptrCast(re));
    }

    /// New4 constructs a new QRegularExpression object.
    ///
    /// ``` pattern: []const u8, options: i32 ```
    pub fn New4(pattern: []const u8, options: i64) ?*C.QRegularExpression {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };

        return C.QRegularExpression_new4(pattern_str, @intCast(options));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#patternOptions)
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn PatternOptions(self: ?*anyopaque) i64 {
        return C.QRegularExpression_PatternOptions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#setPatternOptions)
    ///
    /// ``` self: ?*C.QRegularExpression, options: i32 ```
    pub fn SetPatternOptions(self: ?*anyopaque, options: i64) void {
        C.QRegularExpression_SetPatternOptions(@ptrCast(self), @intCast(options));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#operator=)
    ///
    /// ``` self: ?*C.QRegularExpression, re: ?*C.QRegularExpression ```
    pub fn OperatorAssign(self: ?*anyopaque, re: ?*anyopaque) void {
        C.QRegularExpression_OperatorAssign(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#swap)
    ///
    /// ``` self: ?*C.QRegularExpression, other: ?*C.QRegularExpression ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRegularExpression_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#pattern)
    ///
    /// ``` self: ?*C.QRegularExpression, allocator: std.mem.Allocator ```
    pub fn Pattern(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRegularExpression_Pattern(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#setPattern)
    ///
    /// ``` self: ?*C.QRegularExpression, pattern: []const u8 ```
    pub fn SetPattern(self: ?*anyopaque, pattern: []const u8) void {
        const pattern_str = C.struct_libqt_string{
            .len = pattern.len,
            .data = @constCast(pattern.ptr),
        };
        C.QRegularExpression_SetPattern(@ptrCast(self), pattern_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#isValid)
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRegularExpression_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#patternErrorOffset)
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn PatternErrorOffset(self: ?*anyopaque) i64 {
        return C.QRegularExpression_PatternErrorOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#errorString)
    ///
    /// ``` self: ?*C.QRegularExpression, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRegularExpression_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#captureCount)
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn CaptureCount(self: ?*anyopaque) i32 {
        return C.QRegularExpression_CaptureCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#namedCaptureGroups)
    ///
    /// ``` self: ?*C.QRegularExpression, allocator: std.mem.Allocator ```
    pub fn NamedCaptureGroups(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QRegularExpression_NamedCaptureGroups(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#match)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8 ```
    pub fn Match(self: ?*anyopaque, subject: []const u8) ?*C.QRegularExpressionMatch {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_Match(@ptrCast(self), subject_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#globalMatch)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8 ```
    pub fn GlobalMatch(self: ?*anyopaque, subject: []const u8) ?*C.QRegularExpressionMatchIterator {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_GlobalMatch(@ptrCast(self), subject_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#optimize)
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn Optimize(self: ?*anyopaque) void {
        C.QRegularExpression_Optimize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#escape)
    ///
    /// ``` str: []const u8, allocator: std.mem.Allocator ```
    pub fn Escape(str: []const u8, allocator: std.mem.Allocator) []const u8 {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        const _str = C.QRegularExpression_Escape(str_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#wildcardToRegularExpression)
    ///
    /// ``` str: []const u8, allocator: std.mem.Allocator ```
    pub fn WildcardToRegularExpression(str: []const u8, allocator: std.mem.Allocator) []const u8 {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        const _str = C.QRegularExpression_WildcardToRegularExpression(str_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#anchoredPattern)
    ///
    /// ``` expression: []const u8, allocator: std.mem.Allocator ```
    pub fn AnchoredPattern(expression: []const u8, allocator: std.mem.Allocator) []const u8 {
        const expression_str = C.struct_libqt_string{
            .len = expression.len,
            .data = @constCast(expression.ptr),
        };
        const _str = C.QRegularExpression_AnchoredPattern(expression_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#operator==)
    ///
    /// ``` self: ?*C.QRegularExpression, re: ?*C.QRegularExpression ```
    pub fn OperatorEqual(self: ?*anyopaque, re: ?*anyopaque) bool {
        return C.QRegularExpression_OperatorEqual(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#operator!=)
    ///
    /// ``` self: ?*C.QRegularExpression, re: ?*C.QRegularExpression ```
    pub fn OperatorNotEqual(self: ?*anyopaque, re: ?*anyopaque) bool {
        return C.QRegularExpression_OperatorNotEqual(@ptrCast(self), @ptrCast(re));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#match)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64 ```
    pub fn Match2(self: ?*anyopaque, subject: []const u8, offset: i64) ?*C.QRegularExpressionMatch {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_Match2(@ptrCast(self), subject_str, @intCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#match)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64, matchType: qregularexpression_enums.MatchType ```
    pub fn Match3(self: ?*anyopaque, subject: []const u8, offset: i64, matchType: i64) ?*C.QRegularExpressionMatch {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_Match3(@ptrCast(self), subject_str, @intCast(offset), @intCast(matchType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#match)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64, matchType: qregularexpression_enums.MatchType, matchOptions: i32 ```
    pub fn Match4(self: ?*anyopaque, subject: []const u8, offset: i64, matchType: i64, matchOptions: i64) ?*C.QRegularExpressionMatch {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_Match4(@ptrCast(self), subject_str, @intCast(offset), @intCast(matchType), @intCast(matchOptions));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#globalMatch)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64 ```
    pub fn GlobalMatch2(self: ?*anyopaque, subject: []const u8, offset: i64) ?*C.QRegularExpressionMatchIterator {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_GlobalMatch2(@ptrCast(self), subject_str, @intCast(offset));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#globalMatch)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64, matchType: qregularexpression_enums.MatchType ```
    pub fn GlobalMatch3(self: ?*anyopaque, subject: []const u8, offset: i64, matchType: i64) ?*C.QRegularExpressionMatchIterator {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_GlobalMatch3(@ptrCast(self), subject_str, @intCast(offset), @intCast(matchType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#globalMatch)
    ///
    /// ``` self: ?*C.QRegularExpression, subject: []const u8, offset: i64, matchType: qregularexpression_enums.MatchType, matchOptions: i32 ```
    pub fn GlobalMatch4(self: ?*anyopaque, subject: []const u8, offset: i64, matchType: i64, matchOptions: i64) ?*C.QRegularExpressionMatchIterator {
        const subject_str = C.struct_libqt_string{
            .len = subject.len,
            .data = @constCast(subject.ptr),
        };
        return C.QRegularExpression_GlobalMatch4(@ptrCast(self), subject_str, @intCast(offset), @intCast(matchType), @intCast(matchOptions));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpression.html#wildcardToRegularExpression)
    ///
    /// ``` str: []const u8, options: i32, allocator: std.mem.Allocator ```
    pub fn WildcardToRegularExpression2(str: []const u8, options: i64, allocator: std.mem.Allocator) []const u8 {
        const str_str = C.struct_libqt_string{
            .len = str.len,
            .data = @constCast(str.ptr),
        };
        const _str = C.QRegularExpression_WildcardToRegularExpression2(str_str, @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRegularExpression ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRegularExpression_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qregularexpressionmatch.html
pub const qregularexpressionmatch = struct {
    /// New constructs a new QRegularExpressionMatch object.
    ///
    ///
    pub fn New() ?*C.QRegularExpressionMatch {
        return C.QRegularExpressionMatch_new();
    }

    /// New2 constructs a new QRegularExpressionMatch object.
    ///
    /// ``` match: ?*C.QRegularExpressionMatch ```
    pub fn New2(match: ?*anyopaque) ?*C.QRegularExpressionMatch {
        return C.QRegularExpressionMatch_new2(@ptrCast(match));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#operator=)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, match: ?*C.QRegularExpressionMatch ```
    pub fn OperatorAssign(self: ?*anyopaque, match: ?*anyopaque) void {
        C.QRegularExpressionMatch_OperatorAssign(@ptrCast(self), @ptrCast(match));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#swap)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, other: ?*C.QRegularExpressionMatch ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRegularExpressionMatch_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#regularExpression)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn RegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QRegularExpressionMatch_RegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#matchType)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn MatchType(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatch_MatchType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#matchOptions)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn MatchOptions(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatch_MatchOptions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#hasMatch)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn HasMatch(self: ?*anyopaque) bool {
        return C.QRegularExpressionMatch_HasMatch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#hasPartialMatch)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn HasPartialMatch(self: ?*anyopaque) bool {
        return C.QRegularExpressionMatch_HasPartialMatch(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#isValid)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRegularExpressionMatch_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#lastCapturedIndex)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn LastCapturedIndex(self: ?*anyopaque) i32 {
        return C.QRegularExpressionMatch_LastCapturedIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#hasCaptured)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, name: []const u8 ```
    pub fn HasCaptured(self: ?*anyopaque, name: []const u8) bool {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QRegularExpressionMatch_HasCaptured(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#hasCaptured)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, nth: i32 ```
    pub fn HasCapturedWithNth(self: ?*anyopaque, nth: i32) bool {
        return C.QRegularExpressionMatch_HasCapturedWithNth(@ptrCast(self), @intCast(nth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#captured)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, allocator: std.mem.Allocator ```
    pub fn Captured(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRegularExpressionMatch_Captured(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#captured)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, name: []const u8, allocator: std.mem.Allocator ```
    pub fn CapturedWithName(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _str = C.QRegularExpressionMatch_CapturedWithName(@ptrCast(self), name_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedTexts)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, allocator: std.mem.Allocator ```
    pub fn CapturedTexts(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QRegularExpressionMatch_CapturedTexts(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedStart)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn CapturedStart(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatch_CapturedStart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedLength)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn CapturedLength(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatch_CapturedLength(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedEnd)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn CapturedEnd(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatch_CapturedEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedStart)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, name: []const u8 ```
    pub fn CapturedStartWithName(self: ?*anyopaque, name: []const u8) i64 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QRegularExpressionMatch_CapturedStartWithName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedLength)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, name: []const u8 ```
    pub fn CapturedLengthWithName(self: ?*anyopaque, name: []const u8) i64 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QRegularExpressionMatch_CapturedLengthWithName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedEnd)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, name: []const u8 ```
    pub fn CapturedEndWithName(self: ?*anyopaque, name: []const u8) i64 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QRegularExpressionMatch_CapturedEndWithName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#captured)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, nth: i32, allocator: std.mem.Allocator ```
    pub fn Captured1(self: ?*anyopaque, nth: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QRegularExpressionMatch_Captured1(@ptrCast(self), @intCast(nth));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedStart)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, nth: i32 ```
    pub fn CapturedStart1(self: ?*anyopaque, nth: i32) i64 {
        return C.QRegularExpressionMatch_CapturedStart1(@ptrCast(self), @intCast(nth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedLength)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, nth: i32 ```
    pub fn CapturedLength1(self: ?*anyopaque, nth: i32) i64 {
        return C.QRegularExpressionMatch_CapturedLength1(@ptrCast(self), @intCast(nth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatch.html#capturedEnd)
    ///
    /// ``` self: ?*C.QRegularExpressionMatch, nth: i32 ```
    pub fn CapturedEnd1(self: ?*anyopaque, nth: i32) i64 {
        return C.QRegularExpressionMatch_CapturedEnd1(@ptrCast(self), @intCast(nth));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRegularExpressionMatch ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRegularExpressionMatch_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html
pub const qregularexpressionmatchiterator = struct {
    /// New constructs a new QRegularExpressionMatchIterator object.
    ///
    ///
    pub fn New() ?*C.QRegularExpressionMatchIterator {
        return C.QRegularExpressionMatchIterator_new();
    }

    /// New2 constructs a new QRegularExpressionMatchIterator object.
    ///
    /// ``` iterator: ?*C.QRegularExpressionMatchIterator ```
    pub fn New2(iterator: ?*anyopaque) ?*C.QRegularExpressionMatchIterator {
        return C.QRegularExpressionMatchIterator_new2(@ptrCast(iterator));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#operator=)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator, iterator: ?*C.QRegularExpressionMatchIterator ```
    pub fn OperatorAssign(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QRegularExpressionMatchIterator_OperatorAssign(@ptrCast(self), @ptrCast(iterator));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#swap)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator, other: ?*C.QRegularExpressionMatchIterator ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRegularExpressionMatchIterator_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#isValid)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QRegularExpressionMatchIterator_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#hasNext)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn HasNext(self: ?*anyopaque) bool {
        return C.QRegularExpressionMatchIterator_HasNext(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#next)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn Next(self: ?*anyopaque) ?*C.QRegularExpressionMatch {
        return C.QRegularExpressionMatchIterator_Next(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#peekNext)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn PeekNext(self: ?*anyopaque) ?*C.QRegularExpressionMatch {
        return C.QRegularExpressionMatchIterator_PeekNext(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#regularExpression)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn RegularExpression(self: ?*anyopaque) ?*C.QRegularExpression {
        return C.QRegularExpressionMatchIterator_RegularExpression(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#matchType)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn MatchType(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatchIterator_MatchType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qregularexpressionmatchiterator.html#matchOptions)
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn MatchOptions(self: ?*anyopaque) i64 {
        return C.QRegularExpressionMatchIterator_MatchOptions(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRegularExpressionMatchIterator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRegularExpressionMatchIterator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qregularexpression.html#types
pub const enums = struct {
    pub const PatternOption = enum {
        pub const NoPatternOption: i32 = 0;
        pub const CaseInsensitiveOption: i32 = 1;
        pub const DotMatchesEverythingOption: i32 = 2;
        pub const MultilineOption: i32 = 4;
        pub const ExtendedPatternSyntaxOption: i32 = 8;
        pub const InvertedGreedinessOption: i32 = 16;
        pub const DontCaptureOption: i32 = 32;
        pub const UseUnicodePropertiesOption: i32 = 64;
    };

    pub const MatchType = enum {
        pub const NormalMatch: i32 = 0;
        pub const PartialPreferCompleteMatch: i32 = 1;
        pub const PartialPreferFirstMatch: i32 = 2;
        pub const NoMatch: i32 = 3;
    };

    pub const MatchOption = enum {
        pub const NoMatchOption: i32 = 0;
        pub const AnchorAtOffsetMatchOption: i32 = 1;
        pub const AnchoredMatchOption: i32 = 1;
        pub const DontCheckSubjectStringMatchOption: i32 = 2;
    };

    pub const WildcardConversionOption = enum {
        pub const DefaultWildcardConversion: i32 = 0;
        pub const UnanchoredWildcardConversion: i32 = 1;
    };
};
