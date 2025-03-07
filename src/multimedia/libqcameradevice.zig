const C = @import("qt6c");
const qcameradevice_enums = enums;
const qvideoframeformat_enums = @import("libqvideoframeformat.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcameraformat.html
pub const qcameraformat = struct {
    /// New constructs a new QCameraFormat object.
    ///
    ///
    pub fn New() ?*C.QCameraFormat {
        return C.QCameraFormat_new();
    }

    /// New2 constructs a new QCameraFormat object.
    ///
    /// ``` other: ?*C.QCameraFormat ```
    pub fn New2(other: ?*anyopaque) ?*C.QCameraFormat {
        return C.QCameraFormat_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#operator=)
    ///
    /// ``` self: ?*C.QCameraFormat, other: ?*C.QCameraFormat ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCameraFormat_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#pixelFormat)
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn PixelFormat(self: ?*anyopaque) i64 {
        return C.QCameraFormat_PixelFormat(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#resolution)
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn Resolution(self: ?*anyopaque) ?*C.QSize {
        return C.QCameraFormat_Resolution(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#minFrameRate)
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn MinFrameRate(self: ?*anyopaque) f32 {
        return C.QCameraFormat_MinFrameRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#maxFrameRate)
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn MaxFrameRate(self: ?*anyopaque) f32 {
        return C.QCameraFormat_MaxFrameRate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#isNull)
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCameraFormat_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#operator==)
    ///
    /// ``` self: ?*C.QCameraFormat, other: ?*C.QCameraFormat ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCameraFormat_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameraformat.html#operator!=)
    ///
    /// ``` self: ?*C.QCameraFormat, other: ?*C.QCameraFormat ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCameraFormat_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCameraFormat ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCameraFormat_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcameradevice.html
pub const qcameradevice = struct {
    /// New constructs a new QCameraDevice object.
    ///
    ///
    pub fn New() ?*C.QCameraDevice {
        return C.QCameraDevice_new();
    }

    /// New2 constructs a new QCameraDevice object.
    ///
    /// ``` other: ?*C.QCameraDevice ```
    pub fn New2(other: ?*anyopaque) ?*C.QCameraDevice {
        return C.QCameraDevice_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#operator=)
    ///
    /// ``` self: ?*C.QCameraDevice, other: ?*C.QCameraDevice ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCameraDevice_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#operator==)
    ///
    /// ``` self: ?*C.QCameraDevice, other: ?*C.QCameraDevice ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCameraDevice_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#operator!=)
    ///
    /// ``` self: ?*C.QCameraDevice, other: ?*C.QCameraDevice ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QCameraDevice_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#isNull)
    ///
    /// ``` self: ?*C.QCameraDevice ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QCameraDevice_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#id)
    ///
    /// ``` self: ?*C.QCameraDevice, allocator: std.mem.Allocator ```
    pub fn Id(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QCameraDevice_Id(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#description)
    ///
    /// ``` self: ?*C.QCameraDevice, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCameraDevice_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#isDefault)
    ///
    /// ``` self: ?*C.QCameraDevice ```
    pub fn IsDefault(self: ?*anyopaque) bool {
        return C.QCameraDevice_IsDefault(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#position)
    ///
    /// ``` self: ?*C.QCameraDevice ```
    pub fn Position(self: ?*anyopaque) i64 {
        return C.QCameraDevice_Position(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#photoResolutions)
    ///
    /// ``` self: ?*C.QCameraDevice, allocator: std.mem.Allocator ```
    pub fn PhotoResolutions(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QSize {
        const _arr: C.struct_libqt_list = C.QCameraDevice_PhotoResolutions(@ptrCast(self));
        defer {
            const _obj: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
            for (0.._arr.len) |_i| {
                if (_obj[_i]) |obj| {
                    C.libqt_free(obj);
                }
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc(?*C.QSize, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QSize = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcameradevice.html#videoFormats)
    ///
    /// ``` self: ?*C.QCameraDevice, allocator: std.mem.Allocator ```
    pub fn VideoFormats(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QCameraFormat {
        const _arr: C.struct_libqt_list = C.QCameraDevice_VideoFormats(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QCameraFormat, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QCameraFormat = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCameraDevice ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCameraDevice_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcameradevice.html#types
pub const enums = struct {
    pub const Position = enum {
        pub const UnspecifiedPosition: i32 = 0;
        pub const BackFace: i32 = 1;
        pub const FrontFace: i32 = 2;
    };
};
