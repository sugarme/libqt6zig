const C = @import("qt6c");
const qmetaobject_enums = enums;
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qvariant_enums = @import("libqvariant.zig").enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qmetamethod.html
pub const qmetamethod = struct {
    /// New constructs a new QMetaMethod object.
    ///
    /// ``` other: ?*C.QMetaMethod ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaMethod {
        return C.QMetaMethod_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaMethod object and invalidates the source QMetaMethod object.
    ///
    /// ``` other: ?*C.QMetaMethod ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaMethod {
        return C.QMetaMethod_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaMethod object.
    ///
    ///
    pub fn New3() ?*C.QMetaMethod {
        return C.QMetaMethod_new3();
    }

    /// New4 constructs a new QMetaMethod object.
    ///
    /// ``` param1: ?*C.QMetaMethod ```
    pub fn New4(param1: ?*anyopaque) ?*C.QMetaMethod {
        return C.QMetaMethod_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaMethod, other: ?*QMetaMethod ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaMethod_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaMethod, other: ?*QMetaMethod ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaMethod_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#methodSignature)
    ///
    /// ``` self: ?*C.QMetaMethod, allocator: std.mem.Allocator ```
    pub fn MethodSignature(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QMetaMethod_MethodSignature(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#name)
    ///
    /// ``` self: ?*C.QMetaMethod, allocator: std.mem.Allocator ```
    pub fn Name(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QMetaMethod_Name(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#typeName)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn TypeName(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaMethod_TypeName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#returnType)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn ReturnType(self: ?*anyopaque) i32 {
        return C.QMetaMethod_ReturnType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#returnMetaType)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn ReturnMetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaMethod_ReturnMetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterCount)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn ParameterCount(self: ?*anyopaque) i32 {
        return C.QMetaMethod_ParameterCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterType)
    ///
    /// ``` self: ?*C.QMetaMethod, index: i32 ```
    pub fn ParameterType(self: ?*anyopaque, index: i32) i32 {
        return C.QMetaMethod_ParameterType(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterMetaType)
    ///
    /// ``` self: ?*C.QMetaMethod, index: i32 ```
    pub fn ParameterMetaType(self: ?*anyopaque, index: i32) ?*C.QMetaType {
        return C.QMetaMethod_ParameterMetaType(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#getParameterTypes)
    ///
    /// ``` self: ?*C.QMetaMethod, types: ?*i32 ```
    pub fn GetParameterTypes(self: ?*anyopaque, types: ?*anyopaque) void {
        C.QMetaMethod_GetParameterTypes(@ptrCast(self), @intCast(types));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterTypes)
    ///
    /// ``` self: ?*C.QMetaMethod, allocator: std.mem.Allocator ```
    pub fn ParameterTypes(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QMetaMethod_ParameterTypes(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterTypeName)
    ///
    /// ``` self: ?*C.QMetaMethod, index: i32, allocator: std.mem.Allocator ```
    pub fn ParameterTypeName(self: ?*anyopaque, index: i32, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QMetaMethod_ParameterTypeName(@ptrCast(self), @intCast(index));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#parameterNames)
    ///
    /// ``` self: ?*C.QMetaMethod, allocator: std.mem.Allocator ```
    pub fn ParameterNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QMetaMethod_ParameterNames(@ptrCast(self));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#tag)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn Tag(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaMethod_Tag(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#access)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn Access(self: ?*anyopaque) i64 {
        return C.QMetaMethod_Access(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#methodType)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn MethodType(self: ?*anyopaque) i64 {
        return C.QMetaMethod_MethodType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#attributes)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn Attributes(self: ?*anyopaque) i32 {
        return C.QMetaMethod_Attributes(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#methodIndex)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn MethodIndex(self: ?*anyopaque) i32 {
        return C.QMetaMethod_MethodIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#relativeMethodIndex)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn RelativeMethodIndex(self: ?*anyopaque) i32 {
        return C.QMetaMethod_RelativeMethodIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#revision)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn Revision(self: ?*anyopaque) i32 {
        return C.QMetaMethod_Revision(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#isConst)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn IsConst(self: ?*anyopaque) bool {
        return C.QMetaMethod_IsConst(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#enclosingMetaObject)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn EnclosingMetaObject(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaMethod_EnclosingMetaObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument ```
    pub fn Invoke(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument) bool {
        return C.QMetaMethod_Invoke(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument ```
    pub fn Invoke2(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument) bool {
        return C.QMetaMethod_Invoke2(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType ```
    pub fn Invoke3(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64) bool {
        return C.QMetaMethod_Invoke3(@ptrCast(self), @ptrCast(object), @intCast(connectionType));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject ```
    pub fn InvokeWithObject(self: ?*anyopaque, object: ?*anyopaque) bool {
        return C.QMetaMethod_InvokeWithObject(@ptrCast(self), @ptrCast(object));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument ```
    pub fn InvokeOnGadget(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument) bool {
        return C.QMetaMethod_InvokeOnGadget(@ptrCast(self), gadget, @ptrCast(returnValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque ```
    pub fn InvokeOnGadgetWithGadget(self: ?*anyopaque, gadget: ?*anyopaque) bool {
        return C.QMetaMethod_InvokeOnGadgetWithGadget(@ptrCast(self), gadget);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#isValid)
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QMetaMethod_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument ```
    pub fn Invoke4(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke4(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn Invoke5(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke5(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn Invoke6(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke6(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn Invoke7(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke7(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn Invoke8(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke8(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn Invoke9(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke9(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn Invoke10(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke10(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn Invoke11(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke11(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn Invoke12(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke12(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn Invoke13(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke13(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument ```
    pub fn Invoke32(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke32(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn Invoke42(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke42(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn Invoke52(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke52(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn Invoke62(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke62(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn Invoke72(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke72(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn Invoke82(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke82(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn Invoke92(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke92(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn Invoke102(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke102(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn Invoke112(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke112(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn Invoke122(self: ?*anyopaque, object: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke122(@ptrCast(self), @ptrCast(object), @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument ```
    pub fn Invoke33(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke33(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn Invoke43(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke43(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn Invoke53(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke53(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn Invoke63(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke63(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn Invoke73(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke73(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn Invoke83(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke83(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn Invoke93(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke93(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn Invoke103(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke103(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn Invoke113(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke113(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, connectionType: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn Invoke123(self: ?*anyopaque, object: ?*anyopaque, connectionType: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke123(@ptrCast(self), @ptrCast(object), @intCast(connectionType), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument ```
    pub fn Invoke22(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke22(@ptrCast(self), @ptrCast(object), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn Invoke34(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke34(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn Invoke44(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke44(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn Invoke54(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke54(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn Invoke64(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke64(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn Invoke74(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke74(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn Invoke84(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke84(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn Invoke94(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke94(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn Invoke104(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke104(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invoke)
    ///
    /// ``` self: ?*C.QMetaMethod, object: ?*C.QObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn Invoke114(self: ?*anyopaque, object: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_Invoke114(@ptrCast(self), @ptrCast(object), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget3(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget3(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget4(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget4(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget5(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget5(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget6(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget6(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget7(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget7(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget8(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget8(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget9(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget9(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget10(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget10(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget11(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget11(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget12(self: ?*anyopaque, gadget: ?*anyopaque, returnValue: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget12(@ptrCast(self), gadget, @ptrCast(returnValue), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget2(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget2(@ptrCast(self), gadget, @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget32(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget32(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget42(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget42(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget52(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget52(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget62(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget62(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget72(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget72(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget82(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget82(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget92(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget92(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget102(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget102(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetamethod.html#invokeOnGadget)
    ///
    /// ``` self: ?*C.QMetaMethod, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeOnGadget112(self: ?*anyopaque, gadget: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        return C.QMetaMethod_InvokeOnGadget112(@ptrCast(self), gadget, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaMethod ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaMethod_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaenum.html
pub const qmetaenum = struct {
    /// New constructs a new QMetaEnum object.
    ///
    /// ``` other: ?*C.QMetaEnum ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaEnum {
        return C.QMetaEnum_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaEnum object and invalidates the source QMetaEnum object.
    ///
    /// ``` other: ?*C.QMetaEnum ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaEnum {
        return C.QMetaEnum_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaEnum object.
    ///
    ///
    pub fn New3() ?*C.QMetaEnum {
        return C.QMetaEnum_new3();
    }

    /// New4 constructs a new QMetaEnum object.
    ///
    /// ``` param1: ?*C.QMetaEnum ```
    pub fn New4(param1: ?*anyopaque) ?*C.QMetaEnum {
        return C.QMetaEnum_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaEnum, other: ?*QMetaEnum ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaEnum_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaEnum, other: ?*QMetaEnum ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaEnum_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#name)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaEnum_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#enumName)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn EnumName(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaEnum_EnumName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#isFlag)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn IsFlag(self: ?*anyopaque) bool {
        return C.QMetaEnum_IsFlag(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#isScoped)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn IsScoped(self: ?*anyopaque) bool {
        return C.QMetaEnum_IsScoped(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#keyCount)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn KeyCount(self: ?*anyopaque) i32 {
        return C.QMetaEnum_KeyCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#key)
    ///
    /// ``` self: ?*C.QMetaEnum, index: i32 ```
    pub fn Key(self: ?*anyopaque, index: i32) []const u8 {
        const _ret = C.QMetaEnum_Key(@ptrCast(self), @intCast(index));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#value)
    ///
    /// ``` self: ?*C.QMetaEnum, index: i32 ```
    pub fn Value(self: ?*anyopaque, index: i32) i32 {
        return C.QMetaEnum_Value(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#scope)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn Scope(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaEnum_Scope(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#keyToValue)
    ///
    /// ``` self: ?*C.QMetaEnum, key: []const u8 ```
    pub fn KeyToValue(self: ?*anyopaque, key: []const u8) i32 {
        const key_Cstring = @constCast(key.ptr);
        return C.QMetaEnum_KeyToValue(@ptrCast(self), key_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#valueToKey)
    ///
    /// ``` self: ?*C.QMetaEnum, value: i32 ```
    pub fn ValueToKey(self: ?*anyopaque, value: i32) []const u8 {
        const _ret = C.QMetaEnum_ValueToKey(@ptrCast(self), @intCast(value));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#keysToValue)
    ///
    /// ``` self: ?*C.QMetaEnum, keys: []const u8 ```
    pub fn KeysToValue(self: ?*anyopaque, keys: []const u8) i32 {
        const keys_Cstring = @constCast(keys.ptr);
        return C.QMetaEnum_KeysToValue(@ptrCast(self), keys_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#valueToKeys)
    ///
    /// ``` self: ?*C.QMetaEnum, value: i32, allocator: std.mem.Allocator ```
    pub fn ValueToKeys(self: ?*anyopaque, value: i32, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QMetaEnum_ValueToKeys(@ptrCast(self), @intCast(value));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#enclosingMetaObject)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn EnclosingMetaObject(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaEnum_EnclosingMetaObject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#isValid)
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QMetaEnum_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#keyToValue)
    ///
    /// ``` self: ?*C.QMetaEnum, key: []const u8, ok: ?*bool ```
    pub fn KeyToValue2(self: ?*anyopaque, key: []const u8, ok: ?*anyopaque) i32 {
        const key_Cstring = @constCast(key.ptr);
        return C.QMetaEnum_KeyToValue2(@ptrCast(self), key_Cstring, @ptrCast(ok));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaenum.html#keysToValue)
    ///
    /// ``` self: ?*C.QMetaEnum, keys: []const u8, ok: ?*bool ```
    pub fn KeysToValue2(self: ?*anyopaque, keys: []const u8, ok: ?*anyopaque) i32 {
        const keys_Cstring = @constCast(keys.ptr);
        return C.QMetaEnum_KeysToValue2(@ptrCast(self), keys_Cstring, @ptrCast(ok));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaEnum ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaEnum_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaproperty.html
pub const qmetaproperty = struct {
    /// New constructs a new QMetaProperty object.
    ///
    /// ``` other: ?*C.QMetaProperty ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaProperty {
        return C.QMetaProperty_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaProperty object and invalidates the source QMetaProperty object.
    ///
    /// ``` other: ?*C.QMetaProperty ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaProperty {
        return C.QMetaProperty_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaProperty object.
    ///
    ///
    pub fn New3() ?*C.QMetaProperty {
        return C.QMetaProperty_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaProperty, other: ?*QMetaProperty ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaProperty_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaProperty, other: ?*QMetaProperty ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaProperty_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#name)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaProperty_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#typeName)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn TypeName(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaProperty_TypeName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#type)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QMetaProperty_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#userType)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn UserType(self: ?*anyopaque) i32 {
        return C.QMetaProperty_UserType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#typeId)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn TypeId(self: ?*anyopaque) i32 {
        return C.QMetaProperty_TypeId(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#metaType)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn MetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaProperty_MetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#propertyIndex)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn PropertyIndex(self: ?*anyopaque) i32 {
        return C.QMetaProperty_PropertyIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#relativePropertyIndex)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn RelativePropertyIndex(self: ?*anyopaque) i32 {
        return C.QMetaProperty_RelativePropertyIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isReadable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsReadable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsReadable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isWritable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsWritable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsWritable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isResettable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsResettable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsResettable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isDesignable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsDesignable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsDesignable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isScriptable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsScriptable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsScriptable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isStored)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsStored(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsStored(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isUser)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsUser(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsUser(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isConstant)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsConstant(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsConstant(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isFinal)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsFinal(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsFinal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isRequired)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsRequired(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsRequired(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isBindable)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsBindable(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsBindable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isFlagType)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsFlagType(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsFlagType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isEnumType)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsEnumType(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsEnumType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#enumerator)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn Enumerator(self: ?*anyopaque) ?*C.QMetaEnum {
        return C.QMetaProperty_Enumerator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#hasNotifySignal)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn HasNotifySignal(self: ?*anyopaque) bool {
        return C.QMetaProperty_HasNotifySignal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#notifySignal)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn NotifySignal(self: ?*anyopaque) ?*C.QMetaMethod {
        return C.QMetaProperty_NotifySignal(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#notifySignalIndex)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn NotifySignalIndex(self: ?*anyopaque) i32 {
        return C.QMetaProperty_NotifySignalIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#revision)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn Revision(self: ?*anyopaque) i32 {
        return C.QMetaProperty_Revision(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#read)
    ///
    /// ``` self: ?*C.QMetaProperty, obj: ?*C.QObject ```
    pub fn Read(self: ?*anyopaque, obj: ?*anyopaque) ?*C.QVariant {
        return C.QMetaProperty_Read(@ptrCast(self), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#write)
    ///
    /// ``` self: ?*C.QMetaProperty, obj: ?*C.QObject, value: ?*C.QVariant ```
    pub fn Write(self: ?*anyopaque, obj: ?*anyopaque, value: ?*anyopaque) bool {
        return C.QMetaProperty_Write(@ptrCast(self), @ptrCast(obj), @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#reset)
    ///
    /// ``` self: ?*C.QMetaProperty, obj: ?*C.QObject ```
    pub fn Reset(self: ?*anyopaque, obj: ?*anyopaque) bool {
        return C.QMetaProperty_Reset(@ptrCast(self), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#bindable)
    ///
    /// ``` self: ?*C.QMetaProperty, object: ?*C.QObject ```
    pub fn Bindable(self: ?*anyopaque, object: ?*anyopaque) ?*C.QUntypedBindable {
        return C.QMetaProperty_Bindable(@ptrCast(self), @ptrCast(object));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#readOnGadget)
    ///
    /// ``` self: ?*C.QMetaProperty, gadget: ?*anyopaque ```
    pub fn ReadOnGadget(self: ?*anyopaque, gadget: ?*anyopaque) ?*C.QVariant {
        return C.QMetaProperty_ReadOnGadget(@ptrCast(self), gadget);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#writeOnGadget)
    ///
    /// ``` self: ?*C.QMetaProperty, gadget: ?*anyopaque, value: ?*C.QVariant ```
    pub fn WriteOnGadget(self: ?*anyopaque, gadget: ?*anyopaque, value: ?*anyopaque) bool {
        return C.QMetaProperty_WriteOnGadget(@ptrCast(self), gadget, @ptrCast(value));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#resetOnGadget)
    ///
    /// ``` self: ?*C.QMetaProperty, gadget: ?*anyopaque ```
    pub fn ResetOnGadget(self: ?*anyopaque, gadget: ?*anyopaque) bool {
        return C.QMetaProperty_ResetOnGadget(@ptrCast(self), gadget);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#hasStdCppSet)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn HasStdCppSet(self: ?*anyopaque) bool {
        return C.QMetaProperty_HasStdCppSet(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isAlias)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsAlias(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsAlias(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#isValid)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QMetaProperty_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaproperty.html#enclosingMetaObject)
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn EnclosingMetaObject(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaProperty_EnclosingMetaObject(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaProperty ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaProperty_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaclassinfo.html
pub const qmetaclassinfo = struct {
    /// New constructs a new QMetaClassInfo object.
    ///
    /// ``` other: ?*C.QMetaClassInfo ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaClassInfo {
        return C.QMetaClassInfo_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaClassInfo object and invalidates the source QMetaClassInfo object.
    ///
    /// ``` other: ?*C.QMetaClassInfo ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaClassInfo {
        return C.QMetaClassInfo_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaClassInfo object.
    ///
    ///
    pub fn New3() ?*C.QMetaClassInfo {
        return C.QMetaClassInfo_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaClassInfo, other: ?*QMetaClassInfo ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaClassInfo_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaClassInfo, other: ?*QMetaClassInfo ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaClassInfo_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaclassinfo.html#name)
    ///
    /// ``` self: ?*C.QMetaClassInfo ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaClassInfo_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaclassinfo.html#value)
    ///
    /// ``` self: ?*C.QMetaClassInfo ```
    pub fn Value(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaClassInfo_Value(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaclassinfo.html#enclosingMetaObject)
    ///
    /// ``` self: ?*C.QMetaClassInfo ```
    pub fn EnclosingMetaObject(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaClassInfo_EnclosingMetaObject(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaClassInfo ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaClassInfo_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaobject.html#types
pub const enums = struct {
    pub const Access = enum {
        pub const Private: i32 = 0;
        pub const Protected: i32 = 1;
        pub const Public: i32 = 2;
    };

    pub const MethodType = enum {
        pub const Method: i32 = 0;
        pub const Signal: i32 = 1;
        pub const Slot: i32 = 2;
        pub const Constructor: i32 = 3;
    };

    pub const Attributes = enum {
        pub const Compatibility: i32 = 1;
        pub const Cloned: i32 = 2;
        pub const Scriptable: i32 = 4;
    };
};
