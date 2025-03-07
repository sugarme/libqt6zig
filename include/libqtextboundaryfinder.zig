const C = @import("qt6c");
const qtextboundaryfinder_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextboundaryfinder.html
pub const qtextboundaryfinder = struct {
    /// New constructs a new QTextBoundaryFinder object.
    ///
    ///
    pub fn New() ?*C.QTextBoundaryFinder {
        return C.QTextBoundaryFinder_new();
    }

    /// New2 constructs a new QTextBoundaryFinder object.
    ///
    /// ``` other: ?*C.QTextBoundaryFinder ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextBoundaryFinder {
        return C.QTextBoundaryFinder_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTextBoundaryFinder object.
    ///
    /// ``` typeVal: qtextboundaryfinder_enums.BoundaryType, stringVal: []const u8 ```
    pub fn New3(typeVal: i64, stringVal: []const u8) ?*C.QTextBoundaryFinder {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };

        return C.QTextBoundaryFinder_new3(@intCast(typeVal), stringVal_str);
    }

    /// New4 constructs a new QTextBoundaryFinder object.
    ///
    /// ``` typeVal: qtextboundaryfinder_enums.BoundaryType, chars: ?*C.QChar, length: i64 ```
    pub fn New4(typeVal: i64, chars: ?*anyopaque, length: i64) ?*C.QTextBoundaryFinder {
        return C.QTextBoundaryFinder_new4(@intCast(typeVal), @ptrCast(chars), @intCast(length));
    }

    /// New5 constructs a new QTextBoundaryFinder object.
    ///
    /// ``` typeVal: qtextboundaryfinder_enums.BoundaryType, chars: ?*C.QChar, length: i64, buffer: ?*u8 ```
    pub fn New5(typeVal: i64, chars: ?*anyopaque, length: i64, buffer: ?*anyopaque) ?*C.QTextBoundaryFinder {
        return C.QTextBoundaryFinder_new5(@intCast(typeVal), @ptrCast(chars), @intCast(length), @intCast(buffer));
    }

    /// New6 constructs a new QTextBoundaryFinder object.
    ///
    /// ``` typeVal: qtextboundaryfinder_enums.BoundaryType, chars: ?*C.QChar, length: i64, buffer: ?*u8, bufferSize: i64 ```
    pub fn New6(typeVal: i64, chars: ?*anyopaque, length: i64, buffer: ?*anyopaque, bufferSize: i64) ?*C.QTextBoundaryFinder {
        return C.QTextBoundaryFinder_new6(@intCast(typeVal), @ptrCast(chars), @intCast(length), @intCast(buffer), @intCast(bufferSize));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#operator=)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder, other: ?*C.QTextBoundaryFinder ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextBoundaryFinder_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#isValid)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTextBoundaryFinder_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#type)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QTextBoundaryFinder_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#string)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder, allocator: std.mem.Allocator ```
    pub fn String(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTextBoundaryFinder_String(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#toStart)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn ToStart(self: ?*anyopaque) void {
        C.QTextBoundaryFinder_ToStart(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#toEnd)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn ToEnd(self: ?*anyopaque) void {
        C.QTextBoundaryFinder_ToEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#position)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn Position(self: ?*anyopaque) i64 {
        return C.QTextBoundaryFinder_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#setPosition)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder, position: i64 ```
    pub fn SetPosition(self: ?*anyopaque, position: i64) void {
        C.QTextBoundaryFinder_SetPosition(@ptrCast(self), @intCast(position));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#toNextBoundary)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn ToNextBoundary(self: ?*anyopaque) i64 {
        return C.QTextBoundaryFinder_ToNextBoundary(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#toPreviousBoundary)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn ToPreviousBoundary(self: ?*anyopaque) i64 {
        return C.QTextBoundaryFinder_ToPreviousBoundary(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#isAtBoundary)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn IsAtBoundary(self: ?*anyopaque) bool {
        return C.QTextBoundaryFinder_IsAtBoundary(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextboundaryfinder.html#boundaryReasons)
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn BoundaryReasons(self: ?*anyopaque) i64 {
        return C.QTextBoundaryFinder_BoundaryReasons(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextBoundaryFinder ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextBoundaryFinder_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextboundaryfinder.html#types
pub const enums = struct {
    pub const BoundaryType = enum {
        pub const Grapheme: i32 = 0;
        pub const Word: i32 = 1;
        pub const Sentence: i32 = 2;
        pub const Line: i32 = 3;
    };

    pub const BoundaryReason = enum {
        pub const NotAtBoundary: i32 = 0;
        pub const BreakOpportunity: i32 = 31;
        pub const StartOfItem: i32 = 32;
        pub const EndOfItem: i32 = 64;
        pub const MandatoryBreak: i32 = 128;
        pub const SoftHyphen: i32 = 256;
    };
};
