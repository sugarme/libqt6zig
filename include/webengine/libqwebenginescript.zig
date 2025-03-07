const C = @import("qt6c");
const qwebenginescript_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qwebenginescript.html
pub const qwebenginescript = struct {
    /// New constructs a new QWebEngineScript object.
    ///
    ///
    pub fn New() ?*C.QWebEngineScript {
        return C.QWebEngineScript_new();
    }

    /// New2 constructs a new QWebEngineScript object.
    ///
    /// ``` other: ?*C.QWebEngineScript ```
    pub fn New2(other: ?*anyopaque) ?*C.QWebEngineScript {
        return C.QWebEngineScript_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineScript, other: ?*C.QWebEngineScript ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineScript_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#name)
    ///
    /// ``` self: ?*C.QWebEngineScript, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWebEngineScript_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setName)
    ///
    /// ``` self: ?*C.QWebEngineScript, name: []const u8 ```
    pub fn SetName(self: ?*anyopaque, name: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        C.QWebEngineScript_SetName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#sourceUrl)
    ///
    /// ``` self: ?*C.QWebEngineScript ```
    pub fn SourceUrl(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineScript_SourceUrl(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setSourceUrl)
    ///
    /// ``` self: ?*C.QWebEngineScript, url: ?*C.QUrl ```
    pub fn SetSourceUrl(self: ?*anyopaque, url: ?*anyopaque) void {
        C.QWebEngineScript_SetSourceUrl(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#sourceCode)
    ///
    /// ``` self: ?*C.QWebEngineScript, allocator: std.mem.Allocator ```
    pub fn SourceCode(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QWebEngineScript_SourceCode(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setSourceCode)
    ///
    /// ``` self: ?*C.QWebEngineScript, sourceCode: []const u8 ```
    pub fn SetSourceCode(self: ?*anyopaque, sourceCode: []const u8) void {
        const sourceCode_str = C.struct_libqt_string{
            .len = sourceCode.len,
            .data = @constCast(sourceCode.ptr),
        };
        C.QWebEngineScript_SetSourceCode(@ptrCast(self), sourceCode_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#injectionPoint)
    ///
    /// ``` self: ?*C.QWebEngineScript ```
    pub fn InjectionPoint(self: ?*anyopaque) i64 {
        return C.QWebEngineScript_InjectionPoint(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setInjectionPoint)
    ///
    /// ``` self: ?*C.QWebEngineScript, injectionPoint: qwebenginescript_enums.InjectionPoint ```
    pub fn SetInjectionPoint(self: ?*anyopaque, injectionPoint: i64) void {
        C.QWebEngineScript_SetInjectionPoint(@ptrCast(self), @intCast(injectionPoint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#worldId)
    ///
    /// ``` self: ?*C.QWebEngineScript ```
    pub fn WorldId(self: ?*anyopaque) u32 {
        return C.QWebEngineScript_WorldId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setWorldId)
    ///
    /// ``` self: ?*C.QWebEngineScript, worldId: u32 ```
    pub fn SetWorldId(self: ?*anyopaque, worldId: u32) void {
        C.QWebEngineScript_SetWorldId(@ptrCast(self), @intCast(worldId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#runsOnSubFrames)
    ///
    /// ``` self: ?*C.QWebEngineScript ```
    pub fn RunsOnSubFrames(self: ?*anyopaque) bool {
        return C.QWebEngineScript_RunsOnSubFrames(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#setRunsOnSubFrames)
    ///
    /// ``` self: ?*C.QWebEngineScript, on: bool ```
    pub fn SetRunsOnSubFrames(self: ?*anyopaque, on: bool) void {
        C.QWebEngineScript_SetRunsOnSubFrames(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#operator==)
    ///
    /// ``` self: ?*C.QWebEngineScript, other: ?*C.QWebEngineScript ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QWebEngineScript_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#operator!=)
    ///
    /// ``` self: ?*C.QWebEngineScript, other: ?*C.QWebEngineScript ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QWebEngineScript_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginescript.html#swap)
    ///
    /// ``` self: ?*C.QWebEngineScript, other: ?*C.QWebEngineScript ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineScript_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineScript ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineScript_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebenginescript.html#types
pub const enums = struct {
    pub const InjectionPoint = enum {
        pub const Deferred: i32 = 0;
        pub const DocumentReady: i32 = 1;
        pub const DocumentCreation: i32 = 2;
    };

    pub const ScriptWorldId = enum {
        pub const MainWorld: i32 = 0;
        pub const ApplicationWorld: i32 = 1;
        pub const UserWorld: i32 = 2;
    };
};
