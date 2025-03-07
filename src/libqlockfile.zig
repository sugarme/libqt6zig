const C = @import("qt6c");
const qlockfile_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qlockfile.html
pub const qlockfile = struct {
    /// New constructs a new QLockFile object.
    ///
    /// ``` fileName: []const u8 ```
    pub fn New(fileName: []const u8) ?*C.QLockFile {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };

        return C.QLockFile_new(fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#fileName)
    ///
    /// ``` self: ?*C.QLockFile, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QLockFile_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#lock)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn Lock(self: ?*anyopaque) bool {
        return C.QLockFile_Lock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#tryLock)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn TryLock(self: ?*anyopaque) bool {
        return C.QLockFile_TryLock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#unlock)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn Unlock(self: ?*anyopaque) void {
        C.QLockFile_Unlock(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#setStaleLockTime)
    ///
    /// ``` self: ?*C.QLockFile, staleLockTime: i32 ```
    pub fn SetStaleLockTime(self: ?*anyopaque, staleLockTime: i32) void {
        C.QLockFile_SetStaleLockTime(@ptrCast(self), @intCast(staleLockTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#staleLockTime)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn StaleLockTime(self: ?*anyopaque) i32 {
        return C.QLockFile_StaleLockTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#isLocked)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn IsLocked(self: ?*anyopaque) bool {
        return C.QLockFile_IsLocked(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#removeStaleLockFile)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn RemoveStaleLockFile(self: ?*anyopaque) bool {
        return C.QLockFile_RemoveStaleLockFile(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#error)
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn Error(self: ?*anyopaque) i64 {
        return C.QLockFile_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qlockfile.html#tryLock)
    ///
    /// ``` self: ?*C.QLockFile, timeout: i32 ```
    pub fn TryLock1(self: ?*anyopaque, timeout: i32) bool {
        return C.QLockFile_TryLock1(@ptrCast(self), @intCast(timeout));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLockFile ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLockFile_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qlockfile.html#types
pub const enums = struct {
    pub const LockError = enum {
        pub const NoError: i32 = 0;
        pub const LockFailedError: i32 = 1;
        pub const PermissionError: i32 = 2;
        pub const UnknownError: i32 = 3;
    };
};
