const C = @import("qt6c");
const qcolorspace_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcolorspace.html
pub const qcolorspace = struct {
    /// New constructs a new QColorSpace object.
    ///
    ///
    pub fn New() ?*C.QColorSpace {
        return C.QColorSpace_new();
    }

    /// New2 constructs a new QColorSpace object.
    ///
    /// ``` namedColorSpace: qcolorspace_enums.NamedColorSpace ```
    pub fn New2(namedColorSpace: i64) ?*C.QColorSpace {
        return C.QColorSpace_new2(@intCast(namedColorSpace));
    }

    /// New3 constructs a new QColorSpace object.
    ///
    /// ``` primaries: qcolorspace_enums.Primaries, transferFunction: qcolorspace_enums.TransferFunction ```
    pub fn New3(primaries: i64, transferFunction: i64) ?*C.QColorSpace {
        return C.QColorSpace_new3(@intCast(primaries), @intCast(transferFunction));
    }

    /// New4 constructs a new QColorSpace object.
    ///
    /// ``` primaries: qcolorspace_enums.Primaries, gamma: f32 ```
    pub fn New4(primaries: i64, gamma: f32) ?*C.QColorSpace {
        return C.QColorSpace_new4(@intCast(primaries), @floatCast(gamma));
    }

    /// New5 constructs a new QColorSpace object.
    ///
    /// ``` primaries: qcolorspace_enums.Primaries, transferFunctionTable: []u16 ```
    pub fn New5(primaries: i64, transferFunctionTable: []u16) ?*C.QColorSpace {
        const transferFunctionTable_list = C.struct_libqt_list{
            .len = transferFunctionTable.len,
            .data = transferFunctionTable.ptr,
        };

        return C.QColorSpace_new5(@intCast(primaries), transferFunctionTable_list);
    }

    /// New6 constructs a new QColorSpace object.
    ///
    /// ``` whitePoint: ?*C.QPointF, redPoint: ?*C.QPointF, greenPoint: ?*C.QPointF, bluePoint: ?*C.QPointF, transferFunction: qcolorspace_enums.TransferFunction ```
    pub fn New6(whitePoint: ?*anyopaque, redPoint: ?*anyopaque, greenPoint: ?*anyopaque, bluePoint: ?*anyopaque, transferFunction: i64) ?*C.QColorSpace {
        return C.QColorSpace_new6(@ptrCast(whitePoint), @ptrCast(redPoint), @ptrCast(greenPoint), @ptrCast(bluePoint), @intCast(transferFunction));
    }

    /// New7 constructs a new QColorSpace object.
    ///
    /// ``` whitePoint: ?*C.QPointF, redPoint: ?*C.QPointF, greenPoint: ?*C.QPointF, bluePoint: ?*C.QPointF, transferFunctionTable: []u16 ```
    pub fn New7(whitePoint: ?*anyopaque, redPoint: ?*anyopaque, greenPoint: ?*anyopaque, bluePoint: ?*anyopaque, transferFunctionTable: []u16) ?*C.QColorSpace {
        const transferFunctionTable_list = C.struct_libqt_list{
            .len = transferFunctionTable.len,
            .data = transferFunctionTable.ptr,
        };

        return C.QColorSpace_new7(@ptrCast(whitePoint), @ptrCast(redPoint), @ptrCast(greenPoint), @ptrCast(bluePoint), transferFunctionTable_list);
    }

    /// New8 constructs a new QColorSpace object.
    ///
    /// ``` whitePoint: ?*C.QPointF, redPoint: ?*C.QPointF, greenPoint: ?*C.QPointF, bluePoint: ?*C.QPointF, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16 ```
    pub fn New8(whitePoint: ?*anyopaque, redPoint: ?*anyopaque, greenPoint: ?*anyopaque, bluePoint: ?*anyopaque, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16) ?*C.QColorSpace {
        const redTransferFunctionTable_list = C.struct_libqt_list{
            .len = redTransferFunctionTable.len,
            .data = redTransferFunctionTable.ptr,
        };
        const greenTransferFunctionTable_list = C.struct_libqt_list{
            .len = greenTransferFunctionTable.len,
            .data = greenTransferFunctionTable.ptr,
        };
        const blueTransferFunctionTable_list = C.struct_libqt_list{
            .len = blueTransferFunctionTable.len,
            .data = blueTransferFunctionTable.ptr,
        };

        return C.QColorSpace_new8(@ptrCast(whitePoint), @ptrCast(redPoint), @ptrCast(greenPoint), @ptrCast(bluePoint), redTransferFunctionTable_list, greenTransferFunctionTable_list, blueTransferFunctionTable_list);
    }

    /// New9 constructs a new QColorSpace object.
    ///
    /// ``` colorSpace: ?*C.QColorSpace ```
    pub fn New9(colorSpace: ?*anyopaque) ?*C.QColorSpace {
        return C.QColorSpace_new9(@ptrCast(colorSpace));
    }

    /// New10 constructs a new QColorSpace object.
    ///
    /// ``` primaries: qcolorspace_enums.Primaries, transferFunction: qcolorspace_enums.TransferFunction, gamma: f32 ```
    pub fn New10(primaries: i64, transferFunction: i64, gamma: f32) ?*C.QColorSpace {
        return C.QColorSpace_new10(@intCast(primaries), @intCast(transferFunction), @floatCast(gamma));
    }

    /// New11 constructs a new QColorSpace object.
    ///
    /// ``` whitePoint: ?*C.QPointF, redPoint: ?*C.QPointF, greenPoint: ?*C.QPointF, bluePoint: ?*C.QPointF, transferFunction: qcolorspace_enums.TransferFunction, gamma: f32 ```
    pub fn New11(whitePoint: ?*anyopaque, redPoint: ?*anyopaque, greenPoint: ?*anyopaque, bluePoint: ?*anyopaque, transferFunction: i64, gamma: f32) ?*C.QColorSpace {
        return C.QColorSpace_new11(@ptrCast(whitePoint), @ptrCast(redPoint), @ptrCast(greenPoint), @ptrCast(bluePoint), @intCast(transferFunction), @floatCast(gamma));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#operator=)
    ///
    /// ``` self: ?*C.QColorSpace, colorSpace: ?*C.QColorSpace ```
    pub fn OperatorAssign(self: ?*anyopaque, colorSpace: ?*anyopaque) void {
        C.QColorSpace_OperatorAssign(@ptrCast(self), @ptrCast(colorSpace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#swap)
    ///
    /// ``` self: ?*C.QColorSpace, colorSpace: ?*C.QColorSpace ```
    pub fn Swap(self: ?*anyopaque, colorSpace: ?*anyopaque) void {
        C.QColorSpace_Swap(@ptrCast(self), @ptrCast(colorSpace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#primaries)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn Primaries(self: ?*anyopaque) i64 {
        return C.QColorSpace_Primaries(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#transferFunction)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn TransferFunction(self: ?*anyopaque) i64 {
        return C.QColorSpace_TransferFunction(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#gamma)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn Gamma(self: ?*anyopaque) f32 {
        return C.QColorSpace_Gamma(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#description)
    ///
    /// ``` self: ?*C.QColorSpace, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QColorSpace_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setDescription)
    ///
    /// ``` self: ?*C.QColorSpace, description: []const u8 ```
    pub fn SetDescription(self: ?*anyopaque, description: []const u8) void {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        C.QColorSpace_SetDescription(@ptrCast(self), description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunction: qcolorspace_enums.TransferFunction ```
    pub fn SetTransferFunction(self: ?*anyopaque, transferFunction: i64) void {
        C.QColorSpace_SetTransferFunction(@ptrCast(self), @intCast(transferFunction));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunctionTable: []u16 ```
    pub fn SetTransferFunctionWithTransferFunctionTable(self: ?*anyopaque, transferFunctionTable: []u16) void {
        const transferFunctionTable_list = C.struct_libqt_list{
            .len = transferFunctionTable.len,
            .data = transferFunctionTable.ptr,
        };
        C.QColorSpace_SetTransferFunctionWithTransferFunctionTable(@ptrCast(self), transferFunctionTable_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setTransferFunctions)
    ///
    /// ``` self: ?*C.QColorSpace, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16 ```
    pub fn SetTransferFunctions(self: ?*anyopaque, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16) void {
        const redTransferFunctionTable_list = C.struct_libqt_list{
            .len = redTransferFunctionTable.len,
            .data = redTransferFunctionTable.ptr,
        };
        const greenTransferFunctionTable_list = C.struct_libqt_list{
            .len = greenTransferFunctionTable.len,
            .data = greenTransferFunctionTable.ptr,
        };
        const blueTransferFunctionTable_list = C.struct_libqt_list{
            .len = blueTransferFunctionTable.len,
            .data = blueTransferFunctionTable.ptr,
        };
        C.QColorSpace_SetTransferFunctions(@ptrCast(self), redTransferFunctionTable_list, greenTransferFunctionTable_list, blueTransferFunctionTable_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#withTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunction: qcolorspace_enums.TransferFunction ```
    pub fn WithTransferFunction(self: ?*anyopaque, transferFunction: i64) ?*C.QColorSpace {
        return C.QColorSpace_WithTransferFunction(@ptrCast(self), @intCast(transferFunction));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#withTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunctionTable: []u16 ```
    pub fn WithTransferFunctionWithTransferFunctionTable(self: ?*anyopaque, transferFunctionTable: []u16) ?*C.QColorSpace {
        const transferFunctionTable_list = C.struct_libqt_list{
            .len = transferFunctionTable.len,
            .data = transferFunctionTable.ptr,
        };
        return C.QColorSpace_WithTransferFunctionWithTransferFunctionTable(@ptrCast(self), transferFunctionTable_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#withTransferFunctions)
    ///
    /// ``` self: ?*C.QColorSpace, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16 ```
    pub fn WithTransferFunctions(self: ?*anyopaque, redTransferFunctionTable: []u16, greenTransferFunctionTable: []u16, blueTransferFunctionTable: []u16) ?*C.QColorSpace {
        const redTransferFunctionTable_list = C.struct_libqt_list{
            .len = redTransferFunctionTable.len,
            .data = redTransferFunctionTable.ptr,
        };
        const greenTransferFunctionTable_list = C.struct_libqt_list{
            .len = greenTransferFunctionTable.len,
            .data = greenTransferFunctionTable.ptr,
        };
        const blueTransferFunctionTable_list = C.struct_libqt_list{
            .len = blueTransferFunctionTable.len,
            .data = blueTransferFunctionTable.ptr,
        };
        return C.QColorSpace_WithTransferFunctions(@ptrCast(self), redTransferFunctionTable_list, greenTransferFunctionTable_list, blueTransferFunctionTable_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setPrimaries)
    ///
    /// ``` self: ?*C.QColorSpace, primariesId: qcolorspace_enums.Primaries ```
    pub fn SetPrimaries(self: ?*anyopaque, primariesId: i64) void {
        C.QColorSpace_SetPrimaries(@ptrCast(self), @intCast(primariesId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setPrimaries)
    ///
    /// ``` self: ?*C.QColorSpace, whitePoint: ?*C.QPointF, redPoint: ?*C.QPointF, greenPoint: ?*C.QPointF, bluePoint: ?*C.QPointF ```
    pub fn SetPrimaries2(self: ?*anyopaque, whitePoint: ?*anyopaque, redPoint: ?*anyopaque, greenPoint: ?*anyopaque, bluePoint: ?*anyopaque) void {
        C.QColorSpace_SetPrimaries2(@ptrCast(self), @ptrCast(whitePoint), @ptrCast(redPoint), @ptrCast(greenPoint), @ptrCast(bluePoint));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#detach)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QColorSpace_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#isValid)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QColorSpace_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#fromIccProfile)
    ///
    /// ``` iccProfile: []u8 ```
    pub fn FromIccProfile(iccProfile: []u8) ?*C.QColorSpace {
        const iccProfile_str = C.struct_libqt_string{
            .len = iccProfile.len,
            .data = @constCast(iccProfile.ptr),
        };
        return C.QColorSpace_FromIccProfile(iccProfile_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#iccProfile)
    ///
    /// ``` self: ?*C.QColorSpace, allocator: std.mem.Allocator ```
    pub fn IccProfile(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QColorSpace_IccProfile(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#transformationToColorSpace)
    ///
    /// ``` self: ?*C.QColorSpace, colorspace: ?*C.QColorSpace ```
    pub fn TransformationToColorSpace(self: ?*anyopaque, colorspace: ?*anyopaque) ?*C.QColorTransform {
        return C.QColorSpace_TransformationToColorSpace(@ptrCast(self), @ptrCast(colorspace));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#operator QVariant)
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn ToQVariant(self: ?*anyopaque) ?*C.QVariant {
        return C.QColorSpace_ToQVariant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#setTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunction: qcolorspace_enums.TransferFunction, gamma: f32 ```
    pub fn SetTransferFunction2(self: ?*anyopaque, transferFunction: i64, gamma: f32) void {
        C.QColorSpace_SetTransferFunction2(@ptrCast(self), @intCast(transferFunction), @floatCast(gamma));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcolorspace.html#withTransferFunction)
    ///
    /// ``` self: ?*C.QColorSpace, transferFunction: qcolorspace_enums.TransferFunction, gamma: f32 ```
    pub fn WithTransferFunction2(self: ?*anyopaque, transferFunction: i64, gamma: f32) ?*C.QColorSpace {
        return C.QColorSpace_WithTransferFunction2(@ptrCast(self), @intCast(transferFunction), @floatCast(gamma));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QColorSpace ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QColorSpace_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcolorspace.html#types
pub const enums = struct {
    pub const NamedColorSpace = enum {
        pub const SRgb: i32 = 1;
        pub const SRgbLinear: i32 = 2;
        pub const AdobeRgb: i32 = 3;
        pub const DisplayP3: i32 = 4;
        pub const ProPhotoRgb: i32 = 5;
    };

    pub const Primaries = enum {
        pub const Custom: i32 = 0;
        pub const SRgb: i32 = 1;
        pub const AdobeRgb: i32 = 2;
        pub const DciP3D65: i32 = 3;
        pub const ProPhotoRgb: i32 = 4;
    };

    pub const TransferFunction = enum {
        pub const Custom: i32 = 0;
        pub const Linear: i32 = 1;
        pub const Gamma: i32 = 2;
        pub const SRgb: i32 = 3;
        pub const ProPhotoRgb: i32 = 4;
    };
};
