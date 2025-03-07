const C = @import("qt6c");
const qmediametadata_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qmediametadata.html
pub const qmediametadata = struct {
    /// New constructs a new QMediaMetaData object.
    ///
    /// ``` param1: ?*C.QMediaMetaData ```
    pub fn New(param1: ?*anyopaque) ?*C.QMediaMetaData {
        return C.QMediaMetaData_new(@ptrCast(param1));
    }

    /// New2 constructs a new QMediaMetaData object.
    ///
    ///
    pub fn New2() ?*C.QMediaMetaData {
        return C.QMediaMetaData_new2();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#value)
    ///
    /// ``` self: ?*C.QMediaMetaData, k: qmediametadata_enums.Key ```
    pub fn Value(self: ?*anyopaque, k: i64) ?*C.QVariant {
        return C.QMediaMetaData_Value(@ptrCast(self), @intCast(k));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#insert)
    ///
    /// ``` self: ?*C.QMediaMetaData, k: qmediametadata_enums.Key, value: ?*C.QVariant ```
    pub fn Insert(self: ?*anyopaque, k: i64, value: ?*anyopaque) void {
        C.QMediaMetaData_Insert(@ptrCast(self), @intCast(k), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#remove)
    ///
    /// ``` self: ?*C.QMediaMetaData, k: qmediametadata_enums.Key ```
    pub fn Remove(self: ?*anyopaque, k: i64) void {
        C.QMediaMetaData_Remove(@ptrCast(self), @intCast(k));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#keys)
    ///
    /// ``` self: ?*C.QMediaMetaData, allocator: std.mem.Allocator ```
    pub fn Keys(self: ?*anyopaque, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QMediaMetaData_Keys(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qmediametadata_enums.Key, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qmediametadata_enums.Key = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#operator[])
    ///
    /// ``` self: ?*C.QMediaMetaData, k: qmediametadata_enums.Key ```
    pub fn OperatorSubscript(self: ?*anyopaque, k: i64) ?*C.QVariant {
        return C.QMediaMetaData_OperatorSubscript(@ptrCast(self), @intCast(k));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#clear)
    ///
    /// ``` self: ?*C.QMediaMetaData ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QMediaMetaData_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#isEmpty)
    ///
    /// ``` self: ?*C.QMediaMetaData ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QMediaMetaData_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#stringValue)
    ///
    /// ``` self: ?*C.QMediaMetaData, k: qmediametadata_enums.Key, allocator: std.mem.Allocator ```
    pub fn StringValue(self: ?*anyopaque, k: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaMetaData_StringValue(@ptrCast(self), @intCast(k));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediametadata.html#metaDataKeyToString)
    ///
    /// ``` k: qmediametadata_enums.Key, allocator: std.mem.Allocator ```
    pub fn MetaDataKeyToString(k: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaMetaData_MetaDataKeyToString(@intCast(k));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMediaMetaData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMediaMetaData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmediametadata.html#types
pub const enums = struct {
    pub const Key = enum {
        pub const Title: i32 = 0;
        pub const Author: i32 = 1;
        pub const Comment: i32 = 2;
        pub const Description: i32 = 3;
        pub const Genre: i32 = 4;
        pub const Date: i32 = 5;
        pub const Language: i32 = 6;
        pub const Publisher: i32 = 7;
        pub const Copyright: i32 = 8;
        pub const Url: i32 = 9;
        pub const Duration: i32 = 10;
        pub const MediaType: i32 = 11;
        pub const FileFormat: i32 = 12;
        pub const AudioBitRate: i32 = 13;
        pub const AudioCodec: i32 = 14;
        pub const VideoBitRate: i32 = 15;
        pub const VideoCodec: i32 = 16;
        pub const VideoFrameRate: i32 = 17;
        pub const AlbumTitle: i32 = 18;
        pub const AlbumArtist: i32 = 19;
        pub const ContributingArtist: i32 = 20;
        pub const TrackNumber: i32 = 21;
        pub const Composer: i32 = 22;
        pub const LeadPerformer: i32 = 23;
        pub const ThumbnailImage: i32 = 24;
        pub const CoverArtImage: i32 = 25;
        pub const Orientation: i32 = 26;
        pub const Resolution: i32 = 27;
    };
};
