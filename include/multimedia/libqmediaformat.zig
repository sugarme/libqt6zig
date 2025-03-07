const C = @import("qt6c");
const qmediaformat_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qmediaformat.html
pub const qmediaformat = struct {
    /// New constructs a new QMediaFormat object.
    ///
    ///
    pub fn New() ?*C.QMediaFormat {
        return C.QMediaFormat_new();
    }

    /// New2 constructs a new QMediaFormat object.
    ///
    /// ``` other: ?*C.QMediaFormat ```
    pub fn New2(other: ?*anyopaque) ?*C.QMediaFormat {
        return C.QMediaFormat_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMediaFormat object.
    ///
    /// ``` format: qmediaformat_enums.FileFormat ```
    pub fn New3(format: i64) ?*C.QMediaFormat {
        return C.QMediaFormat_new3(@intCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#operator=)
    ///
    /// ``` self: ?*C.QMediaFormat, other: ?*C.QMediaFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMediaFormat_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#swap)
    ///
    /// ``` self: ?*C.QMediaFormat, other: ?*C.QMediaFormat ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMediaFormat_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#fileFormat)
    ///
    /// ``` self: ?*C.QMediaFormat ```
    pub fn FileFormat(self: ?*anyopaque) i64 {
        return C.QMediaFormat_FileFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#setFileFormat)
    ///
    /// ``` self: ?*C.QMediaFormat, f: qmediaformat_enums.FileFormat ```
    pub fn SetFileFormat(self: ?*anyopaque, f: i64) void {
        C.QMediaFormat_SetFileFormat(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#setVideoCodec)
    ///
    /// ``` self: ?*C.QMediaFormat, codec: qmediaformat_enums.VideoCodec ```
    pub fn SetVideoCodec(self: ?*anyopaque, codec: i64) void {
        C.QMediaFormat_SetVideoCodec(@ptrCast(self), @intCast(codec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#videoCodec)
    ///
    /// ``` self: ?*C.QMediaFormat ```
    pub fn VideoCodec(self: ?*anyopaque) i64 {
        return C.QMediaFormat_VideoCodec(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#setAudioCodec)
    ///
    /// ``` self: ?*C.QMediaFormat, codec: qmediaformat_enums.AudioCodec ```
    pub fn SetAudioCodec(self: ?*anyopaque, codec: i64) void {
        C.QMediaFormat_SetAudioCodec(@ptrCast(self), @intCast(codec));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#audioCodec)
    ///
    /// ``` self: ?*C.QMediaFormat ```
    pub fn AudioCodec(self: ?*anyopaque) i64 {
        return C.QMediaFormat_AudioCodec(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#isSupported)
    ///
    /// ``` self: ?*C.QMediaFormat, mode: qmediaformat_enums.ConversionMode ```
    pub fn IsSupported(self: ?*anyopaque, mode: i64) bool {
        return C.QMediaFormat_IsSupported(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#mimeType)
    ///
    /// ``` self: ?*C.QMediaFormat ```
    pub fn MimeType(self: ?*anyopaque) ?*C.QMimeType {
        return C.QMediaFormat_MimeType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#supportedFileFormats)
    ///
    /// ``` self: ?*C.QMediaFormat, m: qmediaformat_enums.ConversionMode, allocator: std.mem.Allocator ```
    pub fn SupportedFileFormats(self: ?*anyopaque, m: i64, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QMediaFormat_SupportedFileFormats(@ptrCast(self), @intCast(m));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qmediaformat_enums.FileFormat, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qmediaformat_enums.FileFormat = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#supportedVideoCodecs)
    ///
    /// ``` self: ?*C.QMediaFormat, m: qmediaformat_enums.ConversionMode, allocator: std.mem.Allocator ```
    pub fn SupportedVideoCodecs(self: ?*anyopaque, m: i64, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QMediaFormat_SupportedVideoCodecs(@ptrCast(self), @intCast(m));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qmediaformat_enums.VideoCodec, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qmediaformat_enums.VideoCodec = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#supportedAudioCodecs)
    ///
    /// ``` self: ?*C.QMediaFormat, m: qmediaformat_enums.ConversionMode, allocator: std.mem.Allocator ```
    pub fn SupportedAudioCodecs(self: ?*anyopaque, m: i64, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QMediaFormat_SupportedAudioCodecs(@ptrCast(self), @intCast(m));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qmediaformat_enums.AudioCodec, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qmediaformat_enums.AudioCodec = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#fileFormatName)
    ///
    /// ``` fileFormat: qmediaformat_enums.FileFormat, allocator: std.mem.Allocator ```
    pub fn FileFormatName(fileFormat: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_FileFormatName(@intCast(fileFormat));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#audioCodecName)
    ///
    /// ``` codec: qmediaformat_enums.AudioCodec, allocator: std.mem.Allocator ```
    pub fn AudioCodecName(codec: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_AudioCodecName(@intCast(codec));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#videoCodecName)
    ///
    /// ``` codec: qmediaformat_enums.VideoCodec, allocator: std.mem.Allocator ```
    pub fn VideoCodecName(codec: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_VideoCodecName(@intCast(codec));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#fileFormatDescription)
    ///
    /// ``` fileFormat: qmediaformat_enums.FileFormat, allocator: std.mem.Allocator ```
    pub fn FileFormatDescription(fileFormat: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_FileFormatDescription(@intCast(fileFormat));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#audioCodecDescription)
    ///
    /// ``` codec: qmediaformat_enums.AudioCodec, allocator: std.mem.Allocator ```
    pub fn AudioCodecDescription(codec: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_AudioCodecDescription(@intCast(codec));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#videoCodecDescription)
    ///
    /// ``` codec: qmediaformat_enums.VideoCodec, allocator: std.mem.Allocator ```
    pub fn VideoCodecDescription(codec: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QMediaFormat_VideoCodecDescription(@intCast(codec));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#operator==)
    ///
    /// ``` self: ?*C.QMediaFormat, other: ?*C.QMediaFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QMediaFormat_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#operator!=)
    ///
    /// ``` self: ?*C.QMediaFormat, other: ?*C.QMediaFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QMediaFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmediaformat.html#resolveForEncoding)
    ///
    /// ``` self: ?*C.QMediaFormat, flags: qmediaformat_enums.ResolveFlags ```
    pub fn ResolveForEncoding(self: ?*anyopaque, flags: i64) void {
        C.QMediaFormat_ResolveForEncoding(@ptrCast(self), @intCast(flags));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMediaFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMediaFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmediaformat.html#types
pub const enums = struct {
    pub const FileFormat = enum {
        pub const UnspecifiedFormat: i32 = -1;
        pub const WMV: i32 = 0;
        pub const AVI: i32 = 1;
        pub const Matroska: i32 = 2;
        pub const MPEG4: i32 = 3;
        pub const Ogg: i32 = 4;
        pub const QuickTime: i32 = 5;
        pub const WebM: i32 = 6;
        pub const Mpeg4Audio: i32 = 7;
        pub const AAC: i32 = 8;
        pub const WMA: i32 = 9;
        pub const MP3: i32 = 10;
        pub const FLAC: i32 = 11;
        pub const Wave: i32 = 12;
        pub const LastFileFormat: i32 = 12;
    };

    pub const AudioCodec = enum {
        pub const Unspecified: i32 = -1;
        pub const MP3: i32 = 0;
        pub const AAC: i32 = 1;
        pub const AC3: i32 = 2;
        pub const EAC3: i32 = 3;
        pub const FLAC: i32 = 4;
        pub const DolbyTrueHD: i32 = 5;
        pub const Opus: i32 = 6;
        pub const Vorbis: i32 = 7;
        pub const Wave: i32 = 8;
        pub const WMA: i32 = 9;
        pub const ALAC: i32 = 10;
        pub const LastAudioCodec: i32 = 10;
    };

    pub const VideoCodec = enum {
        pub const Unspecified: i32 = -1;
        pub const MPEG1: i32 = 0;
        pub const MPEG2: i32 = 1;
        pub const MPEG4: i32 = 2;
        pub const H264: i32 = 3;
        pub const H265: i32 = 4;
        pub const VP8: i32 = 5;
        pub const VP9: i32 = 6;
        pub const AV1: i32 = 7;
        pub const Theora: i32 = 8;
        pub const WMV: i32 = 9;
        pub const MotionJPEG: i32 = 10;
        pub const LastVideoCodec: i32 = 10;
    };

    pub const ConversionMode = enum {
        pub const Encode: i32 = 0;
        pub const Decode: i32 = 1;
    };

    pub const ResolveFlags = enum {
        pub const NoFlags: i32 = 0;
        pub const RequiresVideo: i32 = 1;
    };
};
