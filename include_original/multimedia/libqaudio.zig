const QtC = @import("qt6zig");
const qtc = @import("qt6c");
const qaudio_enums = enums;

/// https://doc.qt.io/qt-6/qaudio.html
pub const qaudio = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qaudio.html#convertVolume)
    ///
    /// ``` param1: f32, param2: qaudio_enums.VolumeScale, param3: qaudio_enums.VolumeScale ```
    pub fn ConvertVolume(param1: f32, param2: i32, param3: i32) f32 {
        return qtc.QAudio_ConvertVolume(@floatCast(param1), @intCast(param2), @intCast(param3));
    }
};

/// https://doc.qt.io/qt-6/qaudio.html#types
pub const enums = struct {
    pub const Error = enum {
        pub const NoError: i32 = 0;
        pub const OpenError: i32 = 1;
        pub const IOError: i32 = 2;
        pub const UnderrunError: i32 = 3;
        pub const FatalError: i32 = 4;
    };

    pub const State = enum {
        pub const ActiveState: i32 = 0;
        pub const SuspendedState: i32 = 1;
        pub const StoppedState: i32 = 2;
        pub const IdleState: i32 = 3;
    };

    pub const VolumeScale = enum {
        pub const LinearVolumeScale: i32 = 0;
        pub const CubicVolumeScale: i32 = 1;
        pub const LogarithmicVolumeScale: i32 = 2;
        pub const DecibelVolumeScale: i32 = 3;
    };
};
