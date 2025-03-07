const C = @import("qt6c");
const qaudiodevice_enums = enums;
const qaudioformat_enums = @import("libqaudioformat.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qaudiodevice.html
pub const qaudiodevice = struct {
    /// New constructs a new QAudioDevice object.
    ///
    ///
    pub fn New() ?*C.QAudioDevice {
        return C.QAudioDevice_new();
    }

    /// New2 constructs a new QAudioDevice object.
    ///
    /// ``` other: ?*C.QAudioDevice ```
    pub fn New2(other: ?*anyopaque) ?*C.QAudioDevice {
        return C.QAudioDevice_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#swap)
    ///
    /// ``` self: ?*C.QAudioDevice, other: ?*C.QAudioDevice ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioDevice_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#operator=)
    ///
    /// ``` self: ?*C.QAudioDevice, other: ?*C.QAudioDevice ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioDevice_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#operator==)
    ///
    /// ``` self: ?*C.QAudioDevice, other: ?*C.QAudioDevice ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QAudioDevice_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#operator!=)
    ///
    /// ``` self: ?*C.QAudioDevice, other: ?*C.QAudioDevice ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QAudioDevice_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#isNull)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QAudioDevice_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#id)
    ///
    /// ``` self: ?*C.QAudioDevice, allocator: std.mem.Allocator ```
    pub fn Id(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QAudioDevice_Id(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#description)
    ///
    /// ``` self: ?*C.QAudioDevice, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QAudioDevice_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#isDefault)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn IsDefault(self: ?*anyopaque) bool {
        return C.QAudioDevice_IsDefault(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#mode)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn Mode(self: ?*anyopaque) i64 {
        return C.QAudioDevice_Mode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#isFormatSupported)
    ///
    /// ``` self: ?*C.QAudioDevice, format: ?*C.QAudioFormat ```
    pub fn IsFormatSupported(self: ?*anyopaque, format: ?*anyopaque) bool {
        return C.QAudioDevice_IsFormatSupported(@ptrCast(self), @ptrCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#preferredFormat)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn PreferredFormat(self: ?*anyopaque) ?*C.QAudioFormat {
        return C.QAudioDevice_PreferredFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#minimumSampleRate)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn MinimumSampleRate(self: ?*anyopaque) i32 {
        return C.QAudioDevice_MinimumSampleRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#maximumSampleRate)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn MaximumSampleRate(self: ?*anyopaque) i32 {
        return C.QAudioDevice_MaximumSampleRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#minimumChannelCount)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn MinimumChannelCount(self: ?*anyopaque) i32 {
        return C.QAudioDevice_MinimumChannelCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#maximumChannelCount)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn MaximumChannelCount(self: ?*anyopaque) i32 {
        return C.QAudioDevice_MaximumChannelCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#supportedSampleFormats)
    ///
    /// ``` self: ?*C.QAudioDevice, allocator: std.mem.Allocator ```
    pub fn SupportedSampleFormats(self: ?*anyopaque, allocator: std.mem.Allocator) []i64 {
        const _arr: C.struct_libqt_list = C.QAudioDevice_SupportedSampleFormats(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(qaudioformat_enums.SampleFormat, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]qaudioformat_enums.SampleFormat = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiodevice.html#channelConfiguration)
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn ChannelConfiguration(self: ?*anyopaque) i64 {
        return C.QAudioDevice_ChannelConfiguration(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAudioDevice ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAudioDevice_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaudiodevice.html#types
pub const enums = struct {
    pub const Mode = enum {
        pub const Null: i32 = 0;
        pub const Input: i32 = 1;
        pub const Output: i32 = 2;
    };
};
