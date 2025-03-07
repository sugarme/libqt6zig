const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qdir.html
pub const qdir = struct {
    /// New constructs a new QDir object.
    ///
    /// ``` param1: ?*C.QDir ```
    pub fn New(param1: ?*anyopaque) ?*C.QDir {
        return C.QDir_new(@ptrCast(param1));
    }

    /// New2 constructs a new QDir object.
    ///
    ///
    pub fn New2() ?*C.QDir {
        return C.QDir_new2();
    }

    /// New3 constructs a new QDir object.
    ///
    /// ``` path: []const u8, nameFilter: []const u8 ```
    pub fn New3(path: []const u8, nameFilter: []const u8) ?*C.QDir {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const nameFilter_str = C.struct_libqt_string{
            .len = nameFilter.len,
            .data = @constCast(nameFilter.ptr),
        };

        return C.QDir_new3(path_str, nameFilter_str);
    }

    /// New4 constructs a new QDir object.
    ///
    /// ``` path: []const u8 ```
    pub fn New4(path: []const u8) ?*C.QDir {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };

        return C.QDir_new4(path_str);
    }

    /// New5 constructs a new QDir object.
    ///
    /// ``` path: []const u8, nameFilter: []const u8, sort: i32 ```
    pub fn New5(path: []const u8, nameFilter: []const u8, sort: i64) ?*C.QDir {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const nameFilter_str = C.struct_libqt_string{
            .len = nameFilter.len,
            .data = @constCast(nameFilter.ptr),
        };

        return C.QDir_new5(path_str, nameFilter_str, @intCast(sort));
    }

    /// New6 constructs a new QDir object.
    ///
    /// ``` path: []const u8, nameFilter: []const u8, sort: i32, filter: i32 ```
    pub fn New6(path: []const u8, nameFilter: []const u8, sort: i64, filter: i64) ?*C.QDir {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const nameFilter_str = C.struct_libqt_string{
            .len = nameFilter.len,
            .data = @constCast(nameFilter.ptr),
        };

        return C.QDir_new6(path_str, nameFilter_str, @intCast(sort), @intCast(filter));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#operator=)
    ///
    /// ``` self: ?*C.QDir, param1: ?*C.QDir ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QDir_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#swap)
    ///
    /// ``` self: ?*C.QDir, other: ?*C.QDir ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDir_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setPath)
    ///
    /// ``` self: ?*C.QDir, path: []const u8 ```
    pub fn SetPath(self: ?*anyopaque, path: []const u8) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QDir_SetPath(@ptrCast(self), path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#path)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn Path(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_Path(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#absolutePath)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn AbsolutePath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_AbsolutePath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#canonicalPath)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn CanonicalPath(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_CanonicalPath(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setSearchPaths)
    ///
    /// ``` prefix: []const u8, searchPaths: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetSearchPaths(prefix: []const u8, searchPaths: [][]const u8, allocator: std.mem.Allocator) void {
        const prefix_str = C.struct_libqt_string{
            .len = prefix.len,
            .data = @constCast(prefix.ptr),
        };
        var searchPaths_arr = allocator.alloc(C.struct_libqt_string, searchPaths.len) catch @panic("Memory allocation failed");
        defer allocator.free(searchPaths_arr);
        for (searchPaths, 0..searchPaths.len) |item, _i| {
            searchPaths_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const searchPaths_list = C.struct_libqt_list{
            .len = searchPaths.len,
            .data = searchPaths_arr.ptr,
        };
        C.QDir_SetSearchPaths(prefix_str, searchPaths_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#addSearchPath)
    ///
    /// ``` prefix: []const u8, path: []const u8 ```
    pub fn AddSearchPath(prefix: []const u8, path: []const u8) void {
        const prefix_str = C.struct_libqt_string{
            .len = prefix.len,
            .data = @constCast(prefix.ptr),
        };
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QDir_AddSearchPath(prefix_str, path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#searchPaths)
    ///
    /// ``` prefix: []const u8, allocator: std.mem.Allocator ```
    pub fn SearchPaths(prefix: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const prefix_str = C.struct_libqt_string{
            .len = prefix.len,
            .data = @constCast(prefix.ptr),
        };
        const _arr: C.struct_libqt_list = C.QDir_SearchPaths(prefix_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#dirName)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn DirName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_DirName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#filePath)
    ///
    /// ``` self: ?*C.QDir, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn FilePath(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _str = C.QDir_FilePath(@ptrCast(self), fileName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#absoluteFilePath)
    ///
    /// ``` self: ?*C.QDir, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn AbsoluteFilePath(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _str = C.QDir_AbsoluteFilePath(@ptrCast(self), fileName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#relativeFilePath)
    ///
    /// ``` self: ?*C.QDir, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn RelativeFilePath(self: ?*anyopaque, fileName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        const _str = C.QDir_RelativeFilePath(@ptrCast(self), fileName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#toNativeSeparators)
    ///
    /// ``` pathName: []const u8, allocator: std.mem.Allocator ```
    pub fn ToNativeSeparators(pathName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const pathName_str = C.struct_libqt_string{
            .len = pathName.len,
            .data = @constCast(pathName.ptr),
        };
        const _str = C.QDir_ToNativeSeparators(pathName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#fromNativeSeparators)
    ///
    /// ``` pathName: []const u8, allocator: std.mem.Allocator ```
    pub fn FromNativeSeparators(pathName: []const u8, allocator: std.mem.Allocator) []const u8 {
        const pathName_str = C.struct_libqt_string{
            .len = pathName.len,
            .data = @constCast(pathName.ptr),
        };
        const _str = C.QDir_FromNativeSeparators(pathName_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#cd)
    ///
    /// ``` self: ?*C.QDir, dirName: []const u8 ```
    pub fn Cd(self: ?*anyopaque, dirName: []const u8) bool {
        const dirName_str = C.struct_libqt_string{
            .len = dirName.len,
            .data = @constCast(dirName.ptr),
        };
        return C.QDir_Cd(@ptrCast(self), dirName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#cdUp)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn CdUp(self: ?*anyopaque) bool {
        return C.QDir_CdUp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#nameFilters)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn NameFilters(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QDir_NameFilters(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setNameFilters)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetNameFilters(self: ?*anyopaque, nameFilters: [][]const u8, allocator: std.mem.Allocator) void {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        C.QDir_SetNameFilters(@ptrCast(self), nameFilters_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#filter)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn Filter(self: ?*anyopaque) i64 {
        return C.QDir_Filter(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setFilter)
    ///
    /// ``` self: ?*C.QDir, filter: i32 ```
    pub fn SetFilter(self: ?*anyopaque, filter: i64) void {
        C.QDir_SetFilter(@ptrCast(self), @intCast(filter));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#sorting)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn Sorting(self: ?*anyopaque) i64 {
        return C.QDir_Sorting(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setSorting)
    ///
    /// ``` self: ?*C.QDir, sort: i32 ```
    pub fn SetSorting(self: ?*anyopaque, sort: i64) void {
        C.QDir_SetSorting(@ptrCast(self), @intCast(sort));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#count)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn Count(self: ?*anyopaque) u32 {
        return C.QDir_Count(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isEmpty)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QDir_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#operator[])
    ///
    /// ``` self: ?*C.QDir, param1: i32, allocator: std.mem.Allocator ```
    pub fn OperatorSubscript(self: ?*anyopaque, param1: i32, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_OperatorSubscript(@ptrCast(self), @intCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#nameFiltersFromString)
    ///
    /// ``` nameFilter: []const u8, allocator: std.mem.Allocator ```
    pub fn NameFiltersFromString(nameFilter: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const nameFilter_str = C.struct_libqt_string{
            .len = nameFilter.len,
            .data = @constCast(nameFilter.ptr),
        };
        const _arr: C.struct_libqt_list = C.QDir_NameFiltersFromString(nameFilter_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn EntryList(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QDir_EntryList(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, allocator: std.mem.Allocator ```
    pub fn EntryListWithNameFilters(self: ?*anyopaque, nameFilters: [][]const u8, allocator: std.mem.Allocator) [][]const u8 {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryListWithNameFilters(@ptrCast(self), nameFilters_list);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, allocator: std.mem.Allocator ```
    pub fn EntryInfoList(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QFileInfo {
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoList(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, allocator: std.mem.Allocator ```
    pub fn EntryInfoListWithNameFilters(self: ?*anyopaque, nameFilters: [][]const u8, allocator: std.mem.Allocator) []?*C.QFileInfo {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoListWithNameFilters(@ptrCast(self), nameFilters_list);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#mkdir)
    ///
    /// ``` self: ?*C.QDir, dirName: []const u8 ```
    pub fn Mkdir(self: ?*anyopaque, dirName: []const u8) bool {
        const dirName_str = C.struct_libqt_string{
            .len = dirName.len,
            .data = @constCast(dirName.ptr),
        };
        return C.QDir_Mkdir(@ptrCast(self), dirName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#mkdir)
    ///
    /// ``` self: ?*C.QDir, dirName: []const u8, permissions: i32 ```
    pub fn Mkdir2(self: ?*anyopaque, dirName: []const u8, permissions: i64) bool {
        const dirName_str = C.struct_libqt_string{
            .len = dirName.len,
            .data = @constCast(dirName.ptr),
        };
        return C.QDir_Mkdir2(@ptrCast(self), dirName_str, @intCast(permissions));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#rmdir)
    ///
    /// ``` self: ?*C.QDir, dirName: []const u8 ```
    pub fn Rmdir(self: ?*anyopaque, dirName: []const u8) bool {
        const dirName_str = C.struct_libqt_string{
            .len = dirName.len,
            .data = @constCast(dirName.ptr),
        };
        return C.QDir_Rmdir(@ptrCast(self), dirName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#mkpath)
    ///
    /// ``` self: ?*C.QDir, dirPath: []const u8 ```
    pub fn Mkpath(self: ?*anyopaque, dirPath: []const u8) bool {
        const dirPath_str = C.struct_libqt_string{
            .len = dirPath.len,
            .data = @constCast(dirPath.ptr),
        };
        return C.QDir_Mkpath(@ptrCast(self), dirPath_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#rmpath)
    ///
    /// ``` self: ?*C.QDir, dirPath: []const u8 ```
    pub fn Rmpath(self: ?*anyopaque, dirPath: []const u8) bool {
        const dirPath_str = C.struct_libqt_string{
            .len = dirPath.len,
            .data = @constCast(dirPath.ptr),
        };
        return C.QDir_Rmpath(@ptrCast(self), dirPath_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#removeRecursively)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn RemoveRecursively(self: ?*anyopaque) bool {
        return C.QDir_RemoveRecursively(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isReadable)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn IsReadable(self: ?*anyopaque) bool {
        return C.QDir_IsReadable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#exists)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn Exists(self: ?*anyopaque) bool {
        return C.QDir_Exists(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isRoot)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn IsRoot(self: ?*anyopaque) bool {
        return C.QDir_IsRoot(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isRelativePath)
    ///
    /// ``` path: []const u8 ```
    pub fn IsRelativePath(path: []const u8) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QDir_IsRelativePath(path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isAbsolutePath)
    ///
    /// ``` path: []const u8 ```
    pub fn IsAbsolutePath(path: []const u8) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QDir_IsAbsolutePath(path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isRelative)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn IsRelative(self: ?*anyopaque) bool {
        return C.QDir_IsRelative(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isAbsolute)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn IsAbsolute(self: ?*anyopaque) bool {
        return C.QDir_IsAbsolute(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#makeAbsolute)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn MakeAbsolute(self: ?*anyopaque) bool {
        return C.QDir_MakeAbsolute(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#operator==)
    ///
    /// ``` self: ?*C.QDir, dir: ?*C.QDir ```
    pub fn OperatorEqual(self: ?*anyopaque, dir: ?*anyopaque) bool {
        return C.QDir_OperatorEqual(@ptrCast(self), @ptrCast(dir));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#operator!=)
    ///
    /// ``` self: ?*C.QDir, dir: ?*C.QDir ```
    pub fn OperatorNotEqual(self: ?*anyopaque, dir: ?*anyopaque) bool {
        return C.QDir_OperatorNotEqual(@ptrCast(self), @ptrCast(dir));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#remove)
    ///
    /// ``` self: ?*C.QDir, fileName: []const u8 ```
    pub fn Remove(self: ?*anyopaque, fileName: []const u8) bool {
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QDir_Remove(@ptrCast(self), fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#rename)
    ///
    /// ``` self: ?*C.QDir, oldName: []const u8, newName: []const u8 ```
    pub fn Rename(self: ?*anyopaque, oldName: []const u8, newName: []const u8) bool {
        const oldName_str = C.struct_libqt_string{
            .len = oldName.len,
            .data = @constCast(oldName.ptr),
        };
        const newName_str = C.struct_libqt_string{
            .len = newName.len,
            .data = @constCast(newName.ptr),
        };
        return C.QDir_Rename(@ptrCast(self), oldName_str, newName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#exists)
    ///
    /// ``` self: ?*C.QDir, name: []const u8 ```
    pub fn ExistsWithName(self: ?*anyopaque, name: []const u8) bool {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QDir_ExistsWithName(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#drives)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn Drives(allocator: std.mem.Allocator) []?*C.QFileInfo {
        const _arr: C.struct_libqt_list = C.QDir_Drives();
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#listSeparator)
    ///
    ///
    pub fn ListSeparator() ?*C.QChar {
        return C.QDir_ListSeparator();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#separator)
    ///
    ///
    pub fn Separator() ?*C.QChar {
        return C.QDir_Separator();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#setCurrent)
    ///
    /// ``` path: []const u8 ```
    pub fn SetCurrent(path: []const u8) bool {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        return C.QDir_SetCurrent(path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#current)
    ///
    ///
    pub fn Current() ?*C.QDir {
        return C.QDir_Current();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#currentPath)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn CurrentPath(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_CurrentPath();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#home)
    ///
    ///
    pub fn Home() ?*C.QDir {
        return C.QDir_Home();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#homePath)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn HomePath(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_HomePath();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#root)
    ///
    ///
    pub fn Root() ?*C.QDir {
        return C.QDir_Root();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#rootPath)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn RootPath(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_RootPath();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#temp)
    ///
    ///
    pub fn Temp() ?*C.QDir {
        return C.QDir_Temp();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#tempPath)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn TempPath(allocator: std.mem.Allocator) []const u8 {
        const _str = C.QDir_TempPath();
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#match)
    ///
    /// ``` filters: [][]const u8, fileName: []const u8, allocator: std.mem.Allocator ```
    pub fn Match(filters: [][]const u8, fileName: []const u8, allocator: std.mem.Allocator) bool {
        var filters_arr = allocator.alloc(C.struct_libqt_string, filters.len) catch @panic("Memory allocation failed");
        defer allocator.free(filters_arr);
        for (filters, 0..filters.len) |item, _i| {
            filters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const filters_list = C.struct_libqt_list{
            .len = filters.len,
            .data = filters_arr.ptr,
        };
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QDir_Match(filters_list, fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#match)
    ///
    /// ``` filter: []const u8, fileName: []const u8 ```
    pub fn Match2(filter: []const u8, fileName: []const u8) bool {
        const filter_str = C.struct_libqt_string{
            .len = filter.len,
            .data = @constCast(filter.ptr),
        };
        const fileName_str = C.struct_libqt_string{
            .len = fileName.len,
            .data = @constCast(fileName.ptr),
        };
        return C.QDir_Match2(filter_str, fileName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#cleanPath)
    ///
    /// ``` path: []const u8, allocator: std.mem.Allocator ```
    pub fn CleanPath(path: []const u8, allocator: std.mem.Allocator) []const u8 {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        const _str = C.QDir_CleanPath(path_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#refresh)
    ///
    /// ``` self: ?*C.QDir ```
    pub fn Refresh(self: ?*anyopaque) void {
        C.QDir_Refresh(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#isEmpty)
    ///
    /// ``` self: ?*C.QDir, filters: i32 ```
    pub fn IsEmpty1(self: ?*anyopaque, filters: i64) bool {
        return C.QDir_IsEmpty1(@ptrCast(self), @intCast(filters));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, filters: i32, allocator: std.mem.Allocator ```
    pub fn EntryList1(self: ?*anyopaque, filters: i64, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QDir_EntryList1(@ptrCast(self), @intCast(filters));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, filters: i32, sort: i32, allocator: std.mem.Allocator ```
    pub fn EntryList2(self: ?*anyopaque, filters: i64, sort: i64, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QDir_EntryList2(@ptrCast(self), @intCast(filters), @intCast(sort));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, filters: i32, allocator: std.mem.Allocator ```
    pub fn EntryList22(self: ?*anyopaque, nameFilters: [][]const u8, filters: i64, allocator: std.mem.Allocator) [][]const u8 {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryList22(@ptrCast(self), nameFilters_list, @intCast(filters));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, filters: i32, sort: i32, allocator: std.mem.Allocator ```
    pub fn EntryList3(self: ?*anyopaque, nameFilters: [][]const u8, filters: i64, sort: i64, allocator: std.mem.Allocator) [][]const u8 {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryList3(@ptrCast(self), nameFilters_list, @intCast(filters), @intCast(sort));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, filters: i32, allocator: std.mem.Allocator ```
    pub fn EntryInfoList1(self: ?*anyopaque, filters: i64, allocator: std.mem.Allocator) []?*C.QFileInfo {
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoList1(@ptrCast(self), @intCast(filters));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, filters: i32, sort: i32, allocator: std.mem.Allocator ```
    pub fn EntryInfoList2(self: ?*anyopaque, filters: i64, sort: i64, allocator: std.mem.Allocator) []?*C.QFileInfo {
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoList2(@ptrCast(self), @intCast(filters), @intCast(sort));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, filters: i32, allocator: std.mem.Allocator ```
    pub fn EntryInfoList22(self: ?*anyopaque, nameFilters: [][]const u8, filters: i64, allocator: std.mem.Allocator) []?*C.QFileInfo {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoList22(@ptrCast(self), nameFilters_list, @intCast(filters));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdir.html#entryInfoList)
    ///
    /// ``` self: ?*C.QDir, nameFilters: [][]const u8, filters: i32, sort: i32, allocator: std.mem.Allocator ```
    pub fn EntryInfoList3(self: ?*anyopaque, nameFilters: [][]const u8, filters: i64, sort: i64, allocator: std.mem.Allocator) []?*C.QFileInfo {
        var nameFilters_arr = allocator.alloc(C.struct_libqt_string, nameFilters.len) catch @panic("Memory allocation failed");
        defer allocator.free(nameFilters_arr);
        for (nameFilters, 0..nameFilters.len) |item, _i| {
            nameFilters_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const nameFilters_list = C.struct_libqt_list{
            .len = nameFilters.len,
            .data = nameFilters_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QDir_EntryInfoList3(@ptrCast(self), nameFilters_list, @intCast(filters), @intCast(sort));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QFileInfo, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QFileInfo = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDir ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDir_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdir.html#types
pub const enums = struct {
    pub const Filter = enum {
        pub const Dirs: i32 = 1;
        pub const Files: i32 = 2;
        pub const Drives: i32 = 4;
        pub const NoSymLinks: i32 = 8;
        pub const AllEntries: i32 = 7;
        pub const TypeMask: i32 = 15;
        pub const Readable: i32 = 16;
        pub const Writable: i32 = 32;
        pub const Executable: i32 = 64;
        pub const PermissionMask: i32 = 112;
        pub const Modified: i32 = 128;
        pub const Hidden: i32 = 256;
        pub const System: i32 = 512;
        pub const AccessMask: i32 = 1008;
        pub const AllDirs: i32 = 1024;
        pub const CaseSensitive: i32 = 2048;
        pub const NoDot: i32 = 8192;
        pub const NoDotDot: i32 = 16384;
        pub const NoDotAndDotDot: i32 = 24576;
        pub const NoFilter: i32 = -1;
    };

    pub const SortFlag = enum {
        pub const Name: i32 = 0;
        pub const Time: i32 = 1;
        pub const Size: i32 = 2;
        pub const Unsorted: i32 = 3;
        pub const SortByMask: i32 = 3;
        pub const DirsFirst: i32 = 4;
        pub const Reversed: i32 = 8;
        pub const IgnoreCase: i32 = 16;
        pub const DirsLast: i32 = 32;
        pub const LocaleAware: i32 = 64;
        pub const Type: i32 = 128;
        pub const NoSort: i32 = -1;
    };
};
