const C = @import("qt6c");
const qaudioformat_enums = enums;

/// https://doc.qt.io/qt-6/qaudioformat.html
pub const qaudioformat = struct {
    /// New constructs a new QAudioFormat object.
    ///
    /// ``` other: ?*C.QAudioFormat ```
    pub fn New(other: ?*anyopaque) ?*C.QAudioFormat {
        return C.QAudioFormat_new(@ptrCast(other));
    }

    /// New2 constructs a new QAudioFormat object and invalidates the source QAudioFormat object.
    ///
    /// ``` other: ?*C.QAudioFormat ```
    pub fn New2(other: ?*anyopaque) ?*C.QAudioFormat {
        return C.QAudioFormat_new2(@ptrCast(other));
    }

    /// New3 constructs a new QAudioFormat object.
    ///
    ///
    pub fn New3() ?*C.QAudioFormat {
        return C.QAudioFormat_new3();
    }

    /// New4 constructs a new QAudioFormat object.
    ///
    /// ``` param1: ?*C.QAudioFormat ```
    pub fn New4(param1: ?*anyopaque) ?*C.QAudioFormat {
        return C.QAudioFormat_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QAudioFormat, other: ?*QAudioFormat ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioFormat_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QAudioFormat, other: ?*QAudioFormat ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioFormat_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#isValid)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAudioFormat_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#setSampleRate)
    ///
    /// ``` self: ?*C.QAudioFormat, sampleRate: i32 ```
    pub fn SetSampleRate(self: ?*anyopaque, sampleRate: i32) void {
        C.QAudioFormat_SetSampleRate(@ptrCast(self), @intCast(sampleRate));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#sampleRate)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn SampleRate(self: ?*anyopaque) i32 {
        return C.QAudioFormat_SampleRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#setChannelConfig)
    ///
    /// ``` self: ?*C.QAudioFormat, config: qaudioformat_enums.ChannelConfig ```
    pub fn SetChannelConfig(self: ?*anyopaque, config: i64) void {
        C.QAudioFormat_SetChannelConfig(@ptrCast(self), @intCast(config));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#channelConfig)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn ChannelConfig(self: ?*anyopaque) i64 {
        return C.QAudioFormat_ChannelConfig(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#setChannelCount)
    ///
    /// ``` self: ?*C.QAudioFormat, channelCount: i32 ```
    pub fn SetChannelCount(self: ?*anyopaque, channelCount: i32) void {
        C.QAudioFormat_SetChannelCount(@ptrCast(self), @intCast(channelCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#channelCount)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn ChannelCount(self: ?*anyopaque) i32 {
        return C.QAudioFormat_ChannelCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#channelOffset)
    ///
    /// ``` self: ?*C.QAudioFormat, channel: qaudioformat_enums.AudioChannelPosition ```
    pub fn ChannelOffset(self: ?*anyopaque, channel: i64) i32 {
        return C.QAudioFormat_ChannelOffset(@ptrCast(self), @intCast(channel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#setSampleFormat)
    ///
    /// ``` self: ?*C.QAudioFormat, f: qaudioformat_enums.SampleFormat ```
    pub fn SetSampleFormat(self: ?*anyopaque, f: i64) void {
        C.QAudioFormat_SetSampleFormat(@ptrCast(self), @intCast(f));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#sampleFormat)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn SampleFormat(self: ?*anyopaque) i64 {
        return C.QAudioFormat_SampleFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#bytesForDuration)
    ///
    /// ``` self: ?*C.QAudioFormat, microseconds: i64 ```
    pub fn BytesForDuration(self: ?*anyopaque, microseconds: i64) i32 {
        return C.QAudioFormat_BytesForDuration(@ptrCast(self), @intCast(microseconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#durationForBytes)
    ///
    /// ``` self: ?*C.QAudioFormat, byteCount: i32 ```
    pub fn DurationForBytes(self: ?*anyopaque, byteCount: i32) i64 {
        return C.QAudioFormat_DurationForBytes(@ptrCast(self), @intCast(byteCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#bytesForFrames)
    ///
    /// ``` self: ?*C.QAudioFormat, frameCount: i32 ```
    pub fn BytesForFrames(self: ?*anyopaque, frameCount: i32) i32 {
        return C.QAudioFormat_BytesForFrames(@ptrCast(self), @intCast(frameCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#framesForBytes)
    ///
    /// ``` self: ?*C.QAudioFormat, byteCount: i32 ```
    pub fn FramesForBytes(self: ?*anyopaque, byteCount: i32) i32 {
        return C.QAudioFormat_FramesForBytes(@ptrCast(self), @intCast(byteCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#framesForDuration)
    ///
    /// ``` self: ?*C.QAudioFormat, microseconds: i64 ```
    pub fn FramesForDuration(self: ?*anyopaque, microseconds: i64) i32 {
        return C.QAudioFormat_FramesForDuration(@ptrCast(self), @intCast(microseconds));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#durationForFrames)
    ///
    /// ``` self: ?*C.QAudioFormat, frameCount: i32 ```
    pub fn DurationForFrames(self: ?*anyopaque, frameCount: i32) i64 {
        return C.QAudioFormat_DurationForFrames(@ptrCast(self), @intCast(frameCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#bytesPerFrame)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn BytesPerFrame(self: ?*anyopaque) i32 {
        return C.QAudioFormat_BytesPerFrame(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#bytesPerSample)
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn BytesPerSample(self: ?*anyopaque) i32 {
        return C.QAudioFormat_BytesPerSample(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#normalizedSampleValue)
    ///
    /// ``` self: ?*C.QAudioFormat, sample: ?*anyopaque ```
    pub fn NormalizedSampleValue(self: ?*anyopaque, sample: ?*anyopaque) f32 {
        return C.QAudioFormat_NormalizedSampleValue(@ptrCast(self), sample);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudioformat.html#defaultChannelConfigForChannelCount)
    ///
    /// ``` channelCount: i32 ```
    pub fn DefaultChannelConfigForChannelCount(channelCount: i32) i64 {
        return C.QAudioFormat_DefaultChannelConfigForChannelCount(@intCast(channelCount));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAudioFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAudioFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qaudioformat.html#types
pub const enums = struct {
    pub const SampleFormat = enum {
        pub const Unknown: u16 = 0;
        pub const UInt8: u16 = 1;
        pub const Int16: u16 = 2;
        pub const Int32: u16 = 3;
        pub const Float: u16 = 4;
        pub const NSampleFormats: u16 = 5;
    };

    pub const AudioChannelPosition = enum {
        pub const UnknownPosition: i32 = 0;
        pub const FrontLeft: i32 = 1;
        pub const FrontRight: i32 = 2;
        pub const FrontCenter: i32 = 3;
        pub const LFE: i32 = 4;
        pub const BackLeft: i32 = 5;
        pub const BackRight: i32 = 6;
        pub const FrontLeftOfCenter: i32 = 7;
        pub const FrontRightOfCenter: i32 = 8;
        pub const BackCenter: i32 = 9;
        pub const SideLeft: i32 = 10;
        pub const SideRight: i32 = 11;
        pub const TopCenter: i32 = 12;
        pub const TopFrontLeft: i32 = 13;
        pub const TopFrontCenter: i32 = 14;
        pub const TopFrontRight: i32 = 15;
        pub const TopBackLeft: i32 = 16;
        pub const TopBackCenter: i32 = 17;
        pub const TopBackRight: i32 = 18;
        pub const LFE2: i32 = 19;
        pub const TopSideLeft: i32 = 20;
        pub const TopSideRight: i32 = 21;
        pub const BottomFrontCenter: i32 = 22;
        pub const BottomFrontLeft: i32 = 23;
        pub const BottomFrontRight: i32 = 24;
    };

    pub const ChannelConfig = enum {
        pub const ChannelConfigUnknown: u32 = 0;
        pub const ChannelConfigMono: u32 = 8;
        pub const ChannelConfigStereo: u32 = 6;
        pub const ChannelConfig2Dot1: u32 = 22;
        pub const ChannelConfig3Dot0: u32 = 14;
        pub const ChannelConfig3Dot1: u32 = 30;
        pub const ChannelConfigSurround5Dot0: u32 = 110;
        pub const ChannelConfigSurround5Dot1: u32 = 126;
        pub const ChannelConfigSurround7Dot0: u32 = 3182;
        pub const ChannelConfigSurround7Dot1: u32 = 3198;
    };
};
