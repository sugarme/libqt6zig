const C = @import("qt6c");
const qsurfaceformat_enums = enums;
pub const struct_i32_i32 = struct { first: i32, second: i32 };

/// https://doc.qt.io/qt-6/qsurfaceformat.html
pub const qsurfaceformat = struct {
    /// New constructs a new QSurfaceFormat object.
    ///
    ///
    pub fn New() ?*C.QSurfaceFormat {
        return C.QSurfaceFormat_new();
    }

    /// New2 constructs a new QSurfaceFormat object.
    ///
    /// ``` options: i32 ```
    pub fn New2(options: i64) ?*C.QSurfaceFormat {
        return C.QSurfaceFormat_new2(@intCast(options));
    }

    /// New3 constructs a new QSurfaceFormat object.
    ///
    /// ``` other: ?*C.QSurfaceFormat ```
    pub fn New3(other: ?*anyopaque) ?*C.QSurfaceFormat {
        return C.QSurfaceFormat_new3(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#operator=)
    ///
    /// ``` self: ?*C.QSurfaceFormat, other: ?*C.QSurfaceFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QSurfaceFormat_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setDepthBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetDepthBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetDepthBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#depthBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn DepthBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_DepthBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setStencilBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetStencilBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetStencilBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#stencilBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn StencilBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_StencilBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setRedBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetRedBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetRedBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#redBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn RedBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_RedBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setGreenBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetGreenBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetGreenBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#greenBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn GreenBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_GreenBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setBlueBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetBlueBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetBlueBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#blueBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn BlueBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_BlueBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setAlphaBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat, size: i32 ```
    pub fn SetAlphaBufferSize(self: ?*anyopaque, size: i32) void {
        C.QSurfaceFormat_SetAlphaBufferSize(@ptrCast(self), @intCast(size));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#alphaBufferSize)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn AlphaBufferSize(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_AlphaBufferSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setSamples)
    ///
    /// ``` self: ?*C.QSurfaceFormat, numSamples: i32 ```
    pub fn SetSamples(self: ?*anyopaque, numSamples: i32) void {
        C.QSurfaceFormat_SetSamples(@ptrCast(self), @intCast(numSamples));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#samples)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn Samples(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_Samples(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setSwapBehavior)
    ///
    /// ``` self: ?*C.QSurfaceFormat, behavior: qsurfaceformat_enums.SwapBehavior ```
    pub fn SetSwapBehavior(self: ?*anyopaque, behavior: i64) void {
        C.QSurfaceFormat_SetSwapBehavior(@ptrCast(self), @intCast(behavior));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#swapBehavior)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn SwapBehavior(self: ?*anyopaque) i64 {
        return C.QSurfaceFormat_SwapBehavior(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#hasAlpha)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn HasAlpha(self: ?*anyopaque) bool {
        return C.QSurfaceFormat_HasAlpha(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setProfile)
    ///
    /// ``` self: ?*C.QSurfaceFormat, profile: qsurfaceformat_enums.OpenGLContextProfile ```
    pub fn SetProfile(self: ?*anyopaque, profile: i64) void {
        C.QSurfaceFormat_SetProfile(@ptrCast(self), @intCast(profile));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#profile)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn Profile(self: ?*anyopaque) i64 {
        return C.QSurfaceFormat_Profile(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setRenderableType)
    ///
    /// ``` self: ?*C.QSurfaceFormat, typeVal: qsurfaceformat_enums.RenderableType ```
    pub fn SetRenderableType(self: ?*anyopaque, typeVal: i64) void {
        C.QSurfaceFormat_SetRenderableType(@ptrCast(self), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#renderableType)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn RenderableType(self: ?*anyopaque) i64 {
        return C.QSurfaceFormat_RenderableType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setMajorVersion)
    ///
    /// ``` self: ?*C.QSurfaceFormat, majorVersion: i32 ```
    pub fn SetMajorVersion(self: ?*anyopaque, majorVersion: i32) void {
        C.QSurfaceFormat_SetMajorVersion(@ptrCast(self), @intCast(majorVersion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#majorVersion)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn MajorVersion(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_MajorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setMinorVersion)
    ///
    /// ``` self: ?*C.QSurfaceFormat, minorVersion: i32 ```
    pub fn SetMinorVersion(self: ?*anyopaque, minorVersion: i32) void {
        C.QSurfaceFormat_SetMinorVersion(@ptrCast(self), @intCast(minorVersion));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#minorVersion)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn MinorVersion(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_MinorVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#version)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn Version(self: ?*anyopaque) struct_i32_i32 {
        const _pair: C.struct_libqt_pair = C.QSurfaceFormat_Version(@ptrCast(self));
        return struct_i32_i32{ .first = @intCast(@intFromPtr(_pair.first)), .second = @intCast(@intFromPtr(_pair.second)) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setVersion)
    ///
    /// ``` self: ?*C.QSurfaceFormat, major: i32, minor: i32 ```
    pub fn SetVersion(self: ?*anyopaque, major: i32, minor: i32) void {
        C.QSurfaceFormat_SetVersion(@ptrCast(self), @intCast(major), @intCast(minor));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#stereo)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn Stereo(self: ?*anyopaque) bool {
        return C.QSurfaceFormat_Stereo(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setStereo)
    ///
    /// ``` self: ?*C.QSurfaceFormat, enable: bool ```
    pub fn SetStereo(self: ?*anyopaque, enable: bool) void {
        C.QSurfaceFormat_SetStereo(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setOptions)
    ///
    /// ``` self: ?*C.QSurfaceFormat, options: i32 ```
    pub fn SetOptions(self: ?*anyopaque, options: i64) void {
        C.QSurfaceFormat_SetOptions(@ptrCast(self), @intCast(options));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setOption)
    ///
    /// ``` self: ?*C.QSurfaceFormat, option: qsurfaceformat_enums.FormatOption ```
    pub fn SetOption(self: ?*anyopaque, option: i64) void {
        C.QSurfaceFormat_SetOption(@ptrCast(self), @intCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#testOption)
    ///
    /// ``` self: ?*C.QSurfaceFormat, option: qsurfaceformat_enums.FormatOption ```
    pub fn TestOption(self: ?*anyopaque, option: i64) bool {
        return C.QSurfaceFormat_TestOption(@ptrCast(self), @intCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#options)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn Options(self: ?*anyopaque) i64 {
        return C.QSurfaceFormat_Options(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#swapInterval)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn SwapInterval(self: ?*anyopaque) i32 {
        return C.QSurfaceFormat_SwapInterval(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setSwapInterval)
    ///
    /// ``` self: ?*C.QSurfaceFormat, interval: i32 ```
    pub fn SetSwapInterval(self: ?*anyopaque, interval: i32) void {
        C.QSurfaceFormat_SetSwapInterval(@ptrCast(self), @intCast(interval));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#colorSpace)
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn ColorSpace(self: ?*anyopaque) ?*C.QColorSpace {
        return C.QSurfaceFormat_ColorSpace(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setColorSpace)
    ///
    /// ``` self: ?*C.QSurfaceFormat, colorSpace: ?*C.QColorSpace ```
    pub fn SetColorSpace(self: ?*anyopaque, colorSpace: ?*anyopaque) void {
        C.QSurfaceFormat_SetColorSpace(@ptrCast(self), @ptrCast(colorSpace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setColorSpace)
    ///
    /// ``` self: ?*C.QSurfaceFormat, colorSpace: qsurfaceformat_enums.ColorSpace ```
    pub fn SetColorSpaceWithColorSpace(self: ?*anyopaque, colorSpace: i64) void {
        C.QSurfaceFormat_SetColorSpaceWithColorSpace(@ptrCast(self), @intCast(colorSpace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setDefaultFormat)
    ///
    /// ``` format: ?*C.QSurfaceFormat ```
    pub fn SetDefaultFormat(format: ?*anyopaque) void {
        C.QSurfaceFormat_SetDefaultFormat(@ptrCast(format));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#defaultFormat)
    ///
    ///
    pub fn DefaultFormat() ?*C.QSurfaceFormat {
        return C.QSurfaceFormat_DefaultFormat();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qsurfaceformat.html#setOption)
    ///
    /// ``` self: ?*C.QSurfaceFormat, option: qsurfaceformat_enums.FormatOption, on: bool ```
    pub fn SetOption2(self: ?*anyopaque, option: i64, on: bool) void {
        C.QSurfaceFormat_SetOption2(@ptrCast(self), @intCast(option), on);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QSurfaceFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QSurfaceFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qsurfaceformat.html#types
pub const enums = struct {
    pub const FormatOption = enum {
        pub const StereoBuffers: i32 = 1;
        pub const DebugContext: i32 = 2;
        pub const DeprecatedFunctions: i32 = 4;
        pub const ResetNotification: i32 = 8;
        pub const ProtectedContent: i32 = 16;
    };

    pub const SwapBehavior = enum {
        pub const DefaultSwapBehavior: i32 = 0;
        pub const SingleBuffer: i32 = 1;
        pub const DoubleBuffer: i32 = 2;
        pub const TripleBuffer: i32 = 3;
    };

    pub const RenderableType = enum {
        pub const DefaultRenderableType: i32 = 0;
        pub const OpenGL: i32 = 1;
        pub const OpenGLES: i32 = 2;
        pub const OpenVG: i32 = 4;
    };

    pub const OpenGLContextProfile = enum {
        pub const NoProfile: i32 = 0;
        pub const CoreProfile: i32 = 1;
        pub const CompatibilityProfile: i32 = 2;
    };

    pub const ColorSpace = enum {
        pub const DefaultColorSpace: i32 = 0;
        pub const SRGBColorSpace: i32 = 1;
    };
};
