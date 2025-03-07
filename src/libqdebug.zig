const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qdebug.html
pub const qdebug = struct {
    /// New constructs a new QDebug object.
    ///
    /// ``` device: ?*C.QIODevice ```
    pub fn New(device: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_new(@ptrCast(device));
    }

    /// New2 constructs a new QDebug object.
    ///
    /// ``` o: ?*C.QDebug ```
    pub fn New2(o: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_new2(@ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator=)
    ///
    /// ``` self: ?*C.QDebug, other: ?*C.QDebug ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDebug_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#swap)
    ///
    /// ``` self: ?*C.QDebug, other: ?*C.QDebug ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDebug_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#resetFormat)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn ResetFormat(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_ResetFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#space)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn Space(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_Space(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#nospace)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn Nospace(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_Nospace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#maybeSpace)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn MaybeSpace(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_MaybeSpace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#verbosity)
    ///
    /// ``` self: ?*C.QDebug, verbosityLevel: i32 ```
    pub fn Verbosity(self: ?*anyopaque, verbosityLevel: i32) ?*C.QDebug {
        return C.QDebug_Verbosity(@ptrCast(self), @intCast(verbosityLevel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#verbosity)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn Verbosity2(self: ?*anyopaque) i32 {
        return C.QDebug_Verbosity2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#setVerbosity)
    ///
    /// ``` self: ?*C.QDebug, verbosityLevel: i32 ```
    pub fn SetVerbosity(self: ?*anyopaque, verbosityLevel: i32) void {
        C.QDebug_SetVerbosity(@ptrCast(self), @intCast(verbosityLevel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#autoInsertSpaces)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn AutoInsertSpaces(self: ?*anyopaque) bool {
        return C.QDebug_AutoInsertSpaces(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#setAutoInsertSpaces)
    ///
    /// ``` self: ?*C.QDebug, b: bool ```
    pub fn SetAutoInsertSpaces(self: ?*anyopaque, b: bool) void {
        C.QDebug_SetAutoInsertSpaces(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#quote)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn Quote(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_Quote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#noquote)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn Noquote(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_Noquote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#maybeQuote)
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn MaybeQuote(self: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_MaybeQuote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: ?*C.QChar ```
    pub fn OperatorShiftLeft(self: ?*anyopaque, t: ?*C.QChar) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeft(@ptrCast(self), @ptrCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: bool ```
    pub fn OperatorShiftLeftWithBool(self: ?*anyopaque, t: bool) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithBool(@ptrCast(self), t);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: i8 ```
    pub fn OperatorShiftLeftWithChar(self: ?*anyopaque, t: i8) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithChar(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: i16 ```
    pub fn OperatorShiftLeftWithShort(self: ?*anyopaque, t: i16) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithShort(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: u16 ```
    pub fn OperatorShiftLeftWithUnsignedshort(self: ?*anyopaque, t: u16) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithUnsignedshort(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: i32 ```
    pub fn OperatorShiftLeftWithInt(self: ?*anyopaque, t: i32) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithInt(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: u32 ```
    pub fn OperatorShiftLeftWithUnsignedint(self: ?*anyopaque, t: u32) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithUnsignedint(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: i64 ```
    pub fn OperatorShiftLeftWithLong(self: ?*anyopaque, t: i64) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithLong(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: u64 ```
    pub fn OperatorShiftLeftWithUnsignedlong(self: ?*anyopaque, t: u64) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithUnsignedlong(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: i64 ```
    pub fn OperatorShiftLeftWithQint64(self: ?*anyopaque, t: i64) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithQint64(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: u64 ```
    pub fn OperatorShiftLeftWithQuint64(self: ?*anyopaque, t: u64) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithQuint64(@ptrCast(self), @intCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: f32 ```
    pub fn OperatorShiftLeftWithFloat(self: ?*anyopaque, t: f32) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithFloat(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: f64 ```
    pub fn OperatorShiftLeftWithDouble(self: ?*anyopaque, t: f64) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithDouble(@ptrCast(self), @floatCast(t));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: []const u8 ```
    pub fn OperatorShiftLeft2(self: ?*anyopaque, t: []const u8) ?*C.QDebug {
        const t_Cstring = @constCast(t.ptr);
        return C.QDebug_OperatorShiftLeft2(@ptrCast(self), t_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: []const u8 ```
    pub fn OperatorShiftLeftWithQString(self: ?*anyopaque, t: []const u8) ?*C.QDebug {
        const t_str = C.struct_libqt_string{
            .len = t.len,
            .data = @constCast(t.ptr),
        };
        return C.QDebug_OperatorShiftLeftWithQString(@ptrCast(self), t_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: []u8 ```
    pub fn OperatorShiftLeftWithQByteArray(self: ?*anyopaque, t: []u8) ?*C.QDebug {
        const t_str = C.struct_libqt_string{
            .len = t.len,
            .data = @constCast(t.ptr),
        };
        return C.QDebug_OperatorShiftLeftWithQByteArray(@ptrCast(self), t_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: []const u8 ```
    pub fn OperatorShiftLeftWithQByteArrayView(self: ?*anyopaque, t: []const u8) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithQByteArrayView(@ptrCast(self), @ptrCast(@constCast(&t)));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#operator<<)
    ///
    /// ``` self: ?*C.QDebug, t: ?*anyopaque ```
    pub fn OperatorShiftLeftWithVoid(self: ?*anyopaque, t: ?*anyopaque) ?*C.QDebug {
        return C.QDebug_OperatorShiftLeftWithVoid(@ptrCast(self), t);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdebug.html#maybeQuote)
    ///
    /// ``` self: ?*C.QDebug, c: i8 ```
    pub fn MaybeQuote1(self: ?*anyopaque, c: i8) ?*C.QDebug {
        return C.QDebug_MaybeQuote1(@ptrCast(self), @intCast(c));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDebug ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDebug_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdebugstatesaver.html
pub const qdebugstatesaver = struct {
    /// New constructs a new QDebugStateSaver object.
    ///
    /// ``` dbg: ?*C.QDebug ```
    pub fn New(dbg: ?*anyopaque) ?*C.QDebugStateSaver {
        return C.QDebugStateSaver_new(@ptrCast(dbg));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDebugStateSaver ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDebugStateSaver_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qnodebug.html
pub const qnodebug = struct {
    /// New constructs a new QNoDebug object.
    ///
    /// ``` other: ?*C.QNoDebug ```
    pub fn New(other: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_new(@ptrCast(other));
    }

    /// New2 constructs a new QNoDebug object and invalidates the source QNoDebug object.
    ///
    /// ``` other: ?*C.QNoDebug ```
    pub fn New2(other: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QNoDebug, other: ?*QNoDebug ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNoDebug_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QNoDebug, other: ?*QNoDebug ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QNoDebug_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#space)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn Space(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_Space(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#nospace)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn Nospace(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_Nospace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#maybeSpace)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn MaybeSpace(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_MaybeSpace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#quote)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn Quote(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_Quote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#noquote)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn Noquote(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_Noquote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#maybeQuote)
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn MaybeQuote(self: ?*anyopaque) ?*C.QNoDebug {
        return C.QNoDebug_MaybeQuote(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#verbosity)
    ///
    /// ``` self: ?*C.QNoDebug, param1: i32 ```
    pub fn Verbosity(self: ?*anyopaque, param1: i32) ?*C.QNoDebug {
        return C.QNoDebug_Verbosity(@ptrCast(self), @intCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qnodebug.html#maybeQuote)
    ///
    /// ``` self: ?*C.QNoDebug, param1: i8 ```
    pub fn MaybeQuote1(self: ?*anyopaque, param1: i8) ?*C.QNoDebug {
        return C.QNoDebug_MaybeQuote1(@ptrCast(self), @intCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QNoDebug ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QNoDebug_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdebug.html#types
pub const enums = struct {
    pub const VerbosityLevel = enum {
        pub const MinimumVerbosity: i32 = 0;
        pub const DefaultVerbosity: i32 = 2;
        pub const MaximumVerbosity: i32 = 7;
    };
};
