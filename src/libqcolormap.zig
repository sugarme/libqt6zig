const C = @import("qt6c");
const qcolormap_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcolormap.html
pub const qcolormap = struct {
    /// New constructs a new QColormap object.
    ///
    /// ``` colormap: ?*C.QColormap ```
    pub fn New(colormap: ?*anyopaque) ?*C.QColormap {
        return C.QColormap_new(@ptrCast(colormap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#initialize)
    ///
    ///
    pub fn Initialize() void {
        C.QColormap_Initialize();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#cleanup)
    ///
    ///
    pub fn Cleanup() void {
        C.QColormap_Cleanup();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#instance)
    ///
    ///
    pub fn Instance() ?*C.QColormap {
        return C.QColormap_Instance();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#operator=)
    ///
    /// ``` self: ?*C.QColormap, colormap: ?*C.QColormap ```
    pub fn OperatorAssign(self: ?*anyopaque, colormap: ?*anyopaque) void {
        C.QColormap_OperatorAssign(@ptrCast(self), @ptrCast(colormap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#mode)
    ///
    /// ``` self: ?*C.QColormap ```
    pub fn Mode(self: ?*anyopaque) i64 {
        return C.QColormap_Mode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#depth)
    ///
    /// ``` self: ?*C.QColormap ```
    pub fn Depth(self: ?*anyopaque) i32 {
        return C.QColormap_Depth(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#size)
    ///
    /// ``` self: ?*C.QColormap ```
    pub fn Size(self: ?*anyopaque) i32 {
        return C.QColormap_Size(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#pixel)
    ///
    /// ``` self: ?*C.QColormap, color: ?*C.QColor ```
    pub fn Pixel(self: ?*anyopaque, color: ?*anyopaque) u32 {
        return C.QColormap_Pixel(@ptrCast(self), @ptrCast(color));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#colorAt)
    ///
    /// ``` self: ?*C.QColormap, pixel: u32 ```
    pub fn ColorAt(self: ?*anyopaque, pixel: u32) ?*C.QColor {
        return C.QColormap_ColorAt(@ptrCast(self), @intCast(pixel));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#colormap)
    ///
    /// ``` self: ?*C.QColormap, allocator: std.mem.Allocator ```
    pub fn Colormap(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QColor {
        const _arr: C.struct_libqt_list = C.QColormap_Colormap(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QColor, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QColor = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolormap.html#instance)
    ///
    /// ``` screen: i32 ```
    pub fn Instance1(screen: i32) ?*C.QColormap {
        return C.QColormap_Instance1(@intCast(screen));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QColormap ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QColormap_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcolormap.html#types
pub const enums = struct {
    pub const Mode = enum {
        pub const Direct: i32 = 0;
        pub const Indexed: i32 = 1;
        pub const Gray: i32 = 2;
    };
};
