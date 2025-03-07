const C = @import("qt6c");
const qpixelformat_enums = enums;

/// https://doc.qt.io/qt-6/qpixelformat.html
pub const qpixelformat = struct {
    /// New constructs a new QPixelFormat object.
    ///
    /// ``` other: ?*C.QPixelFormat ```
    pub fn New(other: ?*anyopaque) ?*C.QPixelFormat {
        return C.QPixelFormat_new(@ptrCast(other));
    }

    /// New2 constructs a new QPixelFormat object and invalidates the source QPixelFormat object.
    ///
    /// ``` other: ?*C.QPixelFormat ```
    pub fn New2(other: ?*anyopaque) ?*C.QPixelFormat {
        return C.QPixelFormat_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPixelFormat object.
    ///
    ///
    pub fn New3() ?*C.QPixelFormat {
        return C.QPixelFormat_new3();
    }

    /// New4 constructs a new QPixelFormat object.
    ///
    /// ``` colorModel: qpixelformat_enums.ColorModel, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: qpixelformat_enums.AlphaUsage, alphaPosition: qpixelformat_enums.AlphaPosition, premultiplied: qpixelformat_enums.AlphaPremultiplied, typeInterpretation: qpixelformat_enums.TypeInterpretation ```
    pub fn New4(colorModel: i64, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: i64, alphaPosition: i64, premultiplied: i64, typeInterpretation: i64) ?*C.QPixelFormat {
        return C.QPixelFormat_new4(@intCast(colorModel), @intCast(firstSize), @intCast(secondSize), @intCast(thirdSize), @intCast(fourthSize), @intCast(fifthSize), @intCast(alphaSize), @intCast(alphaUsage), @intCast(alphaPosition), @intCast(premultiplied), @intCast(typeInterpretation));
    }

    /// New5 constructs a new QPixelFormat object.
    ///
    /// ``` param1: ?*C.QPixelFormat ```
    pub fn New5(param1: ?*anyopaque) ?*C.QPixelFormat {
        return C.QPixelFormat_new5(@ptrCast(param1));
    }

    /// New6 constructs a new QPixelFormat object.
    ///
    /// ``` colorModel: qpixelformat_enums.ColorModel, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: qpixelformat_enums.AlphaUsage, alphaPosition: qpixelformat_enums.AlphaPosition, premultiplied: qpixelformat_enums.AlphaPremultiplied, typeInterpretation: qpixelformat_enums.TypeInterpretation, byteOrder: qpixelformat_enums.ByteOrder ```
    pub fn New6(colorModel: i64, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: i64, alphaPosition: i64, premultiplied: i64, typeInterpretation: i64, byteOrder: i64) ?*C.QPixelFormat {
        return C.QPixelFormat_new6(@intCast(colorModel), @intCast(firstSize), @intCast(secondSize), @intCast(thirdSize), @intCast(fourthSize), @intCast(fifthSize), @intCast(alphaSize), @intCast(alphaUsage), @intCast(alphaPosition), @intCast(premultiplied), @intCast(typeInterpretation), @intCast(byteOrder));
    }

    /// New7 constructs a new QPixelFormat object.
    ///
    /// ``` colorModel: qpixelformat_enums.ColorModel, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: qpixelformat_enums.AlphaUsage, alphaPosition: qpixelformat_enums.AlphaPosition, premultiplied: qpixelformat_enums.AlphaPremultiplied, typeInterpretation: qpixelformat_enums.TypeInterpretation, byteOrder: qpixelformat_enums.ByteOrder, subEnum: u8 ```
    pub fn New7(colorModel: i64, firstSize: u8, secondSize: u8, thirdSize: u8, fourthSize: u8, fifthSize: u8, alphaSize: u8, alphaUsage: i64, alphaPosition: i64, premultiplied: i64, typeInterpretation: i64, byteOrder: i64, subEnum: u8) ?*C.QPixelFormat {
        return C.QPixelFormat_new7(@intCast(colorModel), @intCast(firstSize), @intCast(secondSize), @intCast(thirdSize), @intCast(fourthSize), @intCast(fifthSize), @intCast(alphaSize), @intCast(alphaUsage), @intCast(alphaPosition), @intCast(premultiplied), @intCast(typeInterpretation), @intCast(byteOrder), @intCast(subEnum));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPixelFormat, other: ?*QPixelFormat ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixelFormat_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPixelFormat, other: ?*QPixelFormat ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixelFormat_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#colorModel)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn ColorModel(self: ?*anyopaque) i64 {
        return C.QPixelFormat_ColorModel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#channelCount)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn ChannelCount(self: ?*anyopaque) u8 {
        return C.QPixelFormat_ChannelCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#redSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn RedSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_RedSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#greenSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn GreenSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_GreenSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#blueSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn BlueSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_BlueSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#cyanSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn CyanSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_CyanSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#magentaSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn MagentaSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_MagentaSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#yellowSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn YellowSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_YellowSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#blackSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn BlackSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_BlackSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#hueSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn HueSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_HueSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#saturationSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn SaturationSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_SaturationSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#lightnessSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn LightnessSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_LightnessSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#brightnessSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn BrightnessSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_BrightnessSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#alphaSize)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn AlphaSize(self: ?*anyopaque) u8 {
        return C.QPixelFormat_AlphaSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#bitsPerPixel)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn BitsPerPixel(self: ?*anyopaque) u8 {
        return C.QPixelFormat_BitsPerPixel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#alphaUsage)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn AlphaUsage(self: ?*anyopaque) i64 {
        return C.QPixelFormat_AlphaUsage(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#alphaPosition)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn AlphaPosition(self: ?*anyopaque) i64 {
        return C.QPixelFormat_AlphaPosition(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#premultiplied)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn Premultiplied(self: ?*anyopaque) i64 {
        return C.QPixelFormat_Premultiplied(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#typeInterpretation)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn TypeInterpretation(self: ?*anyopaque) i64 {
        return C.QPixelFormat_TypeInterpretation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#byteOrder)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn ByteOrder(self: ?*anyopaque) i64 {
        return C.QPixelFormat_ByteOrder(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#yuvLayout)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn YuvLayout(self: ?*anyopaque) i64 {
        return C.QPixelFormat_YuvLayout(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixelformat.html#subEnum)
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn SubEnum(self: ?*anyopaque) u8 {
        return C.QPixelFormat_SubEnum(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPixelFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPixelFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpixelformat.html#types
pub const enums = struct {
    pub const ColorModel = enum {
        pub const RGB: i32 = 0;
        pub const BGR: i32 = 1;
        pub const Indexed: i32 = 2;
        pub const Grayscale: i32 = 3;
        pub const CMYK: i32 = 4;
        pub const HSL: i32 = 5;
        pub const HSV: i32 = 6;
        pub const YUV: i32 = 7;
        pub const Alpha: i32 = 8;
    };

    pub const AlphaUsage = enum {
        pub const UsesAlpha: i32 = 0;
        pub const IgnoresAlpha: i32 = 1;
    };

    pub const AlphaPosition = enum {
        pub const AtBeginning: i32 = 0;
        pub const AtEnd: i32 = 1;
    };

    pub const AlphaPremultiplied = enum {
        pub const NotPremultiplied: i32 = 0;
        pub const Premultiplied: i32 = 1;
    };

    pub const TypeInterpretation = enum {
        pub const UnsignedInteger: i32 = 0;
        pub const UnsignedShort: i32 = 1;
        pub const UnsignedByte: i32 = 2;
        pub const FloatingPoint: i32 = 3;
    };

    pub const YUVLayout = enum {
        pub const YUV444: i32 = 0;
        pub const YUV422: i32 = 1;
        pub const YUV411: i32 = 2;
        pub const YUV420P: i32 = 3;
        pub const YUV420SP: i32 = 4;
        pub const YV12: i32 = 5;
        pub const UYVY: i32 = 6;
        pub const YUYV: i32 = 7;
        pub const NV12: i32 = 8;
        pub const NV21: i32 = 9;
        pub const IMC1: i32 = 10;
        pub const IMC2: i32 = 11;
        pub const IMC3: i32 = 12;
        pub const IMC4: i32 = 13;
        pub const Y8: i32 = 14;
        pub const Y16: i32 = 15;
    };

    pub const ByteOrder = enum {
        pub const LittleEndian: i32 = 0;
        pub const BigEndian: i32 = 1;
        pub const CurrentSystemEndian: i32 = 2;
    };
};
