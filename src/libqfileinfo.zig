const C = @import("qt6c");
const qfiledevice_enums = @import("libqfiledevice.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qfileinfo.html
pub const qfileinfo = struct {
    /// New constructs a new QFileInfo object.
    ///
    ///
    pub fn New() ?*C.QFileInfo {
        return C.QFileInfo_new();
    }

    /// New2 constructs a new QFileInfo object.
    ///
    /// ``` file: []const u8 ```
    pub fn New2(file: []const u8) ?*C.QFileInfo {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };

        return C.QFileInfo_new2(file_str);
    }

    /// New3 constructs a new QFileInfo object.
    ///
    /// ``` file: ?*C.QFileDevice ```
    pub fn New3(file: ?*anyopaque) ?*C.QFileInfo {
        return C.QFileInfo_new3(@ptrCast(file));
    }

    /// New4 constructs a new QFileInfo object.
    ///
    /// ``` dir: ?*C.QDir, file: []const u8 ```
    pub fn New4(dir: ?*anyopaque, file: []const u8) ?*C.QFileInfo {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };

        return C.QFileInfo_new4(@ptrCast(dir), file_str);
    }

    /// New5 constructs a new QFileInfo object.
    ///
    /// ``` fileinfo: ?*C.QFileInfo ```
    pub fn New5(fileinfo: ?*anyopaque) ?*C.QFileInfo {
        return C.QFileInfo_new5(@ptrCast(fileinfo));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#operator=)
    ///
    /// ``` self: ?*C.QFileInfo, fileinfo: ?*C.QFileInfo ```
    pub fn OperatorAssign(self: ?*anyopaque, fileinfo: ?*anyopaque) void {
        C.QFileInfo_OperatorAssign(@ptrCast(self), @ptrCast(fileinfo));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#swap)
    ///
    /// ``` self: ?*C.QFileInfo, other: ?*C.QFileInfo ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFileInfo_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#operator==)
    ///
    /// ``` self: ?*C.QFileInfo, fileinfo: ?*C.QFileInfo ```
    pub fn OperatorEqual(self: ?*anyopaque, fileinfo: ?*anyopaque) bool {
        return C.QFileInfo_OperatorEqual(@ptrCast(self), @ptrCast(fileinfo));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#operator!=)
    ///
    /// ``` self: ?*C.QFileInfo, fileinfo: ?*C.QFileInfo ```
    pub fn OperatorNotEqual(self: ?*anyopaque, fileinfo: ?*anyopaque) bool {
        return C.QFileInfo_OperatorNotEqual(@ptrCast(self), @ptrCast(fileinfo));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#setFile)
    ///
    /// ``` self: ?*C.QFileInfo, file: []const u8 ```
    pub fn SetFile(self: ?*anyopaque, file: []const u8) void {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };
        C.QFileInfo_SetFile(@ptrCast(self), file_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#setFile)
    ///
    /// ``` self: ?*C.QFileInfo, file: ?*C.QFileDevice ```
    pub fn SetFileWithFile(self: ?*anyopaque, file: ?*anyopaque) void {
        C.QFileInfo_SetFileWithFile(@ptrCast(self), @ptrCast(file));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#setFile)
    ///
    /// ``` self: ?*C.QFileInfo, dir: ?*C.QDir, file: []const u8 ```
    pub fn SetFile2(self: ?*anyopaque, dir: ?*anyopaque, file: []const u8) void {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };
        C.QFileInfo_SetFile2(@ptrCast(self), @ptrCast(dir), file_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#exists)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Exists(self: ?*anyopaque) bool {
        return C.QFileInfo_Exists(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#exists)
    ///
    /// ``` file: []const u8 ```
    pub fn ExistsWithFile(file: []const u8) bool {
        const file_str = C.struct_libqt_string{
            .len = file.len,
            .data = @constCast(file.ptr),
        };
        return C.QFileInfo_ExistsWithFile(file_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#refresh)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Refresh(self: ?*anyopaque) void {
        C.QFileInfo_Refresh(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#filePath)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn FilePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_FilePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#absoluteFilePath)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn AbsoluteFilePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_AbsoluteFilePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#canonicalFilePath)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn CanonicalFilePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_CanonicalFilePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#fileName)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#baseName)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn BaseName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_BaseName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#completeBaseName)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn CompleteBaseName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_CompleteBaseName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#suffix)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Suffix(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_Suffix(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#bundleName)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn BundleName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_BundleName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#completeSuffix)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn CompleteSuffix(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_CompleteSuffix(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#path)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Path(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_Path(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#absolutePath)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn AbsolutePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_AbsolutePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#canonicalPath)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn CanonicalPath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_CanonicalPath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#dir)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Dir(self: ?*anyopaque) ?*C.QDir {
        return C.QFileInfo_Dir(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#absoluteDir)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn AbsoluteDir(self: ?*anyopaque) ?*C.QDir {
        return C.QFileInfo_AbsoluteDir(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isReadable)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsReadable(self: ?*anyopaque) bool {
        return C.QFileInfo_IsReadable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isWritable)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsWritable(self: ?*anyopaque) bool {
        return C.QFileInfo_IsWritable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isExecutable)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsExecutable(self: ?*anyopaque) bool {
        return C.QFileInfo_IsExecutable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isHidden)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsHidden(self: ?*anyopaque) bool {
        return C.QFileInfo_IsHidden(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isNativePath)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsNativePath(self: ?*anyopaque) bool {
        return C.QFileInfo_IsNativePath(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isRelative)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsRelative(self: ?*anyopaque) bool {
        return C.QFileInfo_IsRelative(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isAbsolute)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsAbsolute(self: ?*anyopaque) bool {
        return C.QFileInfo_IsAbsolute(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#makeAbsolute)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn MakeAbsolute(self: ?*anyopaque) bool {
        return C.QFileInfo_MakeAbsolute(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isFile)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsFile(self: ?*anyopaque) bool {
        return C.QFileInfo_IsFile(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isDir)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsDir(self: ?*anyopaque) bool {
        return C.QFileInfo_IsDir(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isSymLink)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsSymLink(self: ?*anyopaque) bool {
        return C.QFileInfo_IsSymLink(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isSymbolicLink)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsSymbolicLink(self: ?*anyopaque) bool {
        return C.QFileInfo_IsSymbolicLink(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isShortcut)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsShortcut(self: ?*anyopaque) bool {
        return C.QFileInfo_IsShortcut(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isAlias)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsAlias(self: ?*anyopaque) bool {
        return C.QFileInfo_IsAlias(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isJunction)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsJunction(self: ?*anyopaque) bool {
        return C.QFileInfo_IsJunction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isRoot)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsRoot(self: ?*anyopaque) bool {
        return C.QFileInfo_IsRoot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#isBundle)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn IsBundle(self: ?*anyopaque) bool {
        return C.QFileInfo_IsBundle(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#symLinkTarget)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn SymLinkTarget(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_SymLinkTarget(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#junctionTarget)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn JunctionTarget(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_JunctionTarget(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#owner)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Owner(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_Owner(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#ownerId)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn OwnerId(self: ?*anyopaque) u32 {
        return C.QFileInfo_OwnerId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#group)
    ///
    /// ``` self: ?*C.QFileInfo, allocator: std.mem.Allocator ```
    pub fn Group(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFileInfo_Group(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#groupId)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn GroupId(self: ?*anyopaque) u32 {
        return C.QFileInfo_GroupId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#permission)
    ///
    /// ``` self: ?*C.QFileInfo, permissions: i32 ```
    pub fn Permission(self: ?*anyopaque, permissions: i64) bool {
        return C.QFileInfo_Permission(@ptrCast(self), @intCast(permissions));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#permissions)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Permissions(self: ?*anyopaque) i64 {
        return C.QFileInfo_Permissions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#size)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Size(self: ?*anyopaque) i64 {
        return C.QFileInfo_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#birthTime)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn BirthTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QFileInfo_BirthTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#metadataChangeTime)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn MetadataChangeTime(self: ?*anyopaque) ?*C.QDateTime {
        return C.QFileInfo_MetadataChangeTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#lastModified)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn LastModified(self: ?*anyopaque) ?*C.QDateTime {
        return C.QFileInfo_LastModified(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#lastRead)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn LastRead(self: ?*anyopaque) ?*C.QDateTime {
        return C.QFileInfo_LastRead(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#fileTime)
    ///
    /// ``` self: ?*C.QFileInfo, time: qfiledevice_enums.FileTime ```
    pub fn FileTime(self: ?*anyopaque, time: i64) ?*C.QDateTime {
        return C.QFileInfo_FileTime(@ptrCast(self), @intCast(time));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#caching)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Caching(self: ?*anyopaque) bool {
        return C.QFileInfo_Caching(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#setCaching)
    ///
    /// ``` self: ?*C.QFileInfo, on: bool ```
    pub fn SetCaching(self: ?*anyopaque, on: bool) void {
        C.QFileInfo_SetCaching(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfileinfo.html#stat)
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn Stat(self: ?*anyopaque) void {
        C.QFileInfo_Stat(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFileInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFileInfo_Delete(@ptrCast(self));
    }
};
