const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qstatictext_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qstatictext.html
pub const qstatictext = struct {
    /// New constructs a new QStaticText object.
    ///
    ///
    pub fn New() ?*C.QStaticText {
        return C.QStaticText_new();
    }

    /// New2 constructs a new QStaticText object.
    ///
    /// ``` text: []const u8 ```
    pub fn New2(text: []const u8) ?*C.QStaticText {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QStaticText_new2(text_str);
    }

    /// New3 constructs a new QStaticText object.
    ///
    /// ``` other: ?*C.QStaticText ```
    pub fn New3(other: ?*anyopaque) ?*C.QStaticText {
        return C.QStaticText_new3(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#operator=)
    ///
    /// ``` self: ?*C.QStaticText, param1: ?*C.QStaticText ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QStaticText_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#swap)
    ///
    /// ``` self: ?*C.QStaticText, other: ?*C.QStaticText ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStaticText_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#setText)
    ///
    /// ``` self: ?*C.QStaticText, text: []const u8 ```
    pub fn SetText(self: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QStaticText_SetText(@ptrCast(self), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#text)
    ///
    /// ``` self: ?*C.QStaticText, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QStaticText_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#setTextFormat)
    ///
    /// ``` self: ?*C.QStaticText, textFormat: qnamespace_enums.TextFormat ```
    pub fn SetTextFormat(self: ?*anyopaque, textFormat: i64) void {
        C.QStaticText_SetTextFormat(@ptrCast(self), @intCast(textFormat));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#textFormat)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn TextFormat(self: ?*anyopaque) i64 {
        return C.QStaticText_TextFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#setTextWidth)
    ///
    /// ``` self: ?*C.QStaticText, textWidth: f64 ```
    pub fn SetTextWidth(self: ?*anyopaque, textWidth: f64) void {
        C.QStaticText_SetTextWidth(@ptrCast(self), @floatCast(textWidth));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#textWidth)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn TextWidth(self: ?*anyopaque) f64 {
        return C.QStaticText_TextWidth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#setTextOption)
    ///
    /// ``` self: ?*C.QStaticText, textOption: ?*C.QTextOption ```
    pub fn SetTextOption(self: ?*anyopaque, textOption: ?*anyopaque) void {
        C.QStaticText_SetTextOption(@ptrCast(self), @ptrCast(textOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#textOption)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn TextOption(self: ?*anyopaque) ?*C.QTextOption {
        return C.QStaticText_TextOption(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#size)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn Size(self: ?*anyopaque) ?*C.QSizeF {
        return C.QStaticText_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#prepare)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn Prepare(self: ?*anyopaque) void {
        C.QStaticText_Prepare(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#setPerformanceHint)
    ///
    /// ``` self: ?*C.QStaticText, performanceHint: qstatictext_enums.PerformanceHint ```
    pub fn SetPerformanceHint(self: ?*anyopaque, performanceHint: i64) void {
        C.QStaticText_SetPerformanceHint(@ptrCast(self), @intCast(performanceHint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#performanceHint)
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn PerformanceHint(self: ?*anyopaque) i64 {
        return C.QStaticText_PerformanceHint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#operator==)
    ///
    /// ``` self: ?*C.QStaticText, param1: ?*C.QStaticText ```
    pub fn OperatorEqual(self: ?*anyopaque, param1: ?*anyopaque) bool {
        return C.QStaticText_OperatorEqual(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#operator!=)
    ///
    /// ``` self: ?*C.QStaticText, param1: ?*C.QStaticText ```
    pub fn OperatorNotEqual(self: ?*anyopaque, param1: ?*anyopaque) bool {
        return C.QStaticText_OperatorNotEqual(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#prepare)
    ///
    /// ``` self: ?*C.QStaticText, matrix: ?*C.QTransform ```
    pub fn Prepare1(self: ?*anyopaque, matrix: ?*anyopaque) void {
        C.QStaticText_Prepare1(@ptrCast(self), @ptrCast(matrix));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstatictext.html#prepare)
    ///
    /// ``` self: ?*C.QStaticText, matrix: ?*C.QTransform, font: ?*C.QFont ```
    pub fn Prepare2(self: ?*anyopaque, matrix: ?*anyopaque, font: ?*anyopaque) void {
        C.QStaticText_Prepare2(@ptrCast(self), @ptrCast(matrix), @ptrCast(font));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStaticText ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStaticText_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstatictext.html#types
pub const enums = struct {
    pub const PerformanceHint = enum {
        pub const ModerateCaching: i32 = 0;
        pub const AggressiveCaching: i32 = 1;
    };
};
