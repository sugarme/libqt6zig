const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qscistyledtext.html
pub const qscistyledtext = struct {
    /// New constructs a new QsciStyledText object.
    ///
    /// ``` text: []const u8, style: i32 ```
    pub fn New(text: []const u8, style: i32) ?*C.QsciStyledText {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QsciStyledText_new(text_str, @intCast(style));
    }

    /// New2 constructs a new QsciStyledText object.
    ///
    /// ``` text: []const u8, style: ?*C.QsciStyle ```
    pub fn New2(text: []const u8, style: ?*anyopaque) ?*C.QsciStyledText {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };

        return C.QsciStyledText_new2(text_str, @ptrCast(style));
    }

    /// New3 constructs a new QsciStyledText object.
    ///
    /// ``` param1: ?*C.QsciStyledText ```
    pub fn New3(param1: ?*anyopaque) ?*C.QsciStyledText {
        return C.QsciStyledText_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyledtext.html#apply)
    ///
    /// ``` self: ?*C.QsciStyledText, sci: ?*C.QsciScintillaBase ```
    pub fn Apply(self: ?*anyopaque, sci: ?*anyopaque) void {
        C.QsciStyledText_Apply(@ptrCast(self), @ptrCast(sci));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyledtext.html#text)
    ///
    /// ``` self: ?*C.QsciStyledText, allocator: std.mem.Allocator ```
    pub fn Text(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QsciStyledText_Text(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qscistyledtext.html#style)
    ///
    /// ``` self: ?*C.QsciStyledText ```
    pub fn Style(self: ?*anyopaque) i32 {
        return C.QsciStyledText_Style(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QsciStyledText ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QsciStyledText_Delete(@ptrCast(self));
    }
};
