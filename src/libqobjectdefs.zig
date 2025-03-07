const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qobjectdefs_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qgenericargument.html
pub const qgenericargument = struct {
    /// New constructs a new QGenericArgument object.
    ///
    /// ``` other: ?*C.QGenericArgument ```
    pub fn New(other: ?*anyopaque) ?*C.QGenericArgument {
        return C.QGenericArgument_new(@ptrCast(other));
    }

    /// New2 constructs a new QGenericArgument object and invalidates the source QGenericArgument object.
    ///
    /// ``` other: ?*C.QGenericArgument ```
    pub fn New2(other: ?*anyopaque) ?*C.QGenericArgument {
        return C.QGenericArgument_new2(@ptrCast(other));
    }

    /// New3 constructs a new QGenericArgument object.
    ///
    ///
    pub fn New3() ?*C.QGenericArgument {
        return C.QGenericArgument_new3();
    }

    /// New4 constructs a new QGenericArgument object.
    ///
    /// ``` param1: ?*C.QGenericArgument ```
    pub fn New4(param1: ?*anyopaque) ?*C.QGenericArgument {
        return C.QGenericArgument_new4(@ptrCast(param1));
    }

    /// New5 constructs a new QGenericArgument object.
    ///
    /// ``` aName: []const u8 ```
    pub fn New5(aName: []const u8) ?*C.QGenericArgument {
        const aName_Cstring = @constCast(aName.ptr);

        return C.QGenericArgument_new5(aName_Cstring);
    }

    /// New6 constructs a new QGenericArgument object.
    ///
    /// ``` aName: []const u8, aData: ?*anyopaque ```
    pub fn New6(aName: []const u8, aData: ?*anyopaque) ?*C.QGenericArgument {
        const aName_Cstring = @constCast(aName.ptr);

        return C.QGenericArgument_new6(aName_Cstring, aData);
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QGenericArgument, other: ?*QGenericArgument ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGenericArgument_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QGenericArgument, other: ?*QGenericArgument ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGenericArgument_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgenericargument.html#data)
    ///
    /// ``` self: ?*C.QGenericArgument ```
    pub fn Data(self: ?*anyopaque) ?*anyopaque {
        return C.QGenericArgument_Data(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qgenericargument.html#name)
    ///
    /// ``` self: ?*C.QGenericArgument ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = C.QGenericArgument_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGenericArgument ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGenericArgument_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qgenericreturnargument.html
pub const qgenericreturnargument = struct {
    /// New constructs a new QGenericReturnArgument object.
    ///
    /// ``` other: ?*C.QGenericReturnArgument ```
    pub fn New(other: ?*anyopaque) ?*C.QGenericReturnArgument {
        return C.QGenericReturnArgument_new(@ptrCast(other));
    }

    /// New2 constructs a new QGenericReturnArgument object and invalidates the source QGenericReturnArgument object.
    ///
    /// ``` other: ?*C.QGenericReturnArgument ```
    pub fn New2(other: ?*anyopaque) ?*C.QGenericReturnArgument {
        return C.QGenericReturnArgument_new2(@ptrCast(other));
    }

    /// New3 constructs a new QGenericReturnArgument object.
    ///
    ///
    pub fn New3() ?*C.QGenericReturnArgument {
        return C.QGenericReturnArgument_new3();
    }

    /// New4 constructs a new QGenericReturnArgument object.
    ///
    /// ``` param1: ?*C.QGenericReturnArgument ```
    pub fn New4(param1: ?*anyopaque) ?*C.QGenericReturnArgument {
        return C.QGenericReturnArgument_new4(@ptrCast(param1));
    }

    /// New5 constructs a new QGenericReturnArgument object.
    ///
    /// ``` aName: []const u8 ```
    pub fn New5(aName: []const u8) ?*C.QGenericReturnArgument {
        const aName_Cstring = @constCast(aName.ptr);

        return C.QGenericReturnArgument_new5(aName_Cstring);
    }

    /// New6 constructs a new QGenericReturnArgument object.
    ///
    /// ``` aName: []const u8, aData: ?*anyopaque ```
    pub fn New6(aName: []const u8, aData: ?*anyopaque) ?*C.QGenericReturnArgument {
        const aName_Cstring = @constCast(aName.ptr);

        return C.QGenericReturnArgument_new6(aName_Cstring, aData);
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QGenericReturnArgument, other: ?*QGenericReturnArgument ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGenericReturnArgument_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QGenericReturnArgument, other: ?*QGenericReturnArgument ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QGenericReturnArgument_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Inherited from QGenericArgument
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgenericargument.html#data)
    ///
    /// ``` self: ?*C.QGenericReturnArgument ```
    pub fn Data(self: ?*anyopaque) ?*anyopaque {
        return C.QGenericArgument_Data(@ptrCast(self));
    }

    /// Inherited from QGenericArgument
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qgenericargument.html#name)
    ///
    /// ``` self: ?*C.QGenericReturnArgument ```
    pub fn Name(self: ?*anyopaque) []const u8 {
        const _ret = C.QGenericArgument_Name(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QGenericReturnArgument ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QGenericReturnArgument_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaobject.html
pub const qmetaobject = struct {
    /// New constructs a new QMetaObject object.
    ///
    ///
    pub fn New() ?*C.QMetaObject {
        return C.QMetaObject_new();
    }

    /// New2 constructs a new QMetaObject object.
    ///
    /// ``` param1: ?*C.QMetaObject ```
    pub fn New2(param1: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaObject_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#className)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn ClassName(self: ?*anyopaque) []const u8 {
        const _ret = C.QMetaObject_ClassName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#superClass)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn SuperClass(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaObject_SuperClass(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#inherits)
    ///
    /// ``` self: ?*C.QMetaObject, metaObject: ?*C.QMetaObject ```
    pub fn Inherits(self: ?*anyopaque, metaObject: ?*anyopaque) bool {
        return C.QMetaObject_Inherits(@ptrCast(self), @ptrCast(metaObject));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#cast)
    ///
    /// ``` self: ?*C.QMetaObject, obj: ?*C.QObject ```
    pub fn Cast(self: ?*anyopaque, obj: ?*anyopaque) ?*C.QObject {
        return C.QMetaObject_Cast(@ptrCast(self), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#cast)
    ///
    /// ``` self: ?*C.QMetaObject, obj: ?*C.QObject ```
    pub fn CastWithObj(self: ?*anyopaque, obj: ?*anyopaque) ?*C.QObject {
        return C.QMetaObject_CastWithObj(@ptrCast(self), @ptrCast(obj));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(self: ?*anyopaque, s: []const u8, c: []const u8, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = @constCast(s.ptr);
        const c_Cstring = @constCast(c.ptr);
        const _str = C.QMetaObject_Tr(@ptrCast(self), s_Cstring, c_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#metaType)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn MetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaObject_MetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#methodOffset)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn MethodOffset(self: ?*anyopaque) i32 {
        return C.QMetaObject_MethodOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#enumeratorOffset)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn EnumeratorOffset(self: ?*anyopaque) i32 {
        return C.QMetaObject_EnumeratorOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#propertyOffset)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn PropertyOffset(self: ?*anyopaque) i32 {
        return C.QMetaObject_PropertyOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#classInfoOffset)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn ClassInfoOffset(self: ?*anyopaque) i32 {
        return C.QMetaObject_ClassInfoOffset(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#constructorCount)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn ConstructorCount(self: ?*anyopaque) i32 {
        return C.QMetaObject_ConstructorCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#methodCount)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn MethodCount(self: ?*anyopaque) i32 {
        return C.QMetaObject_MethodCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#enumeratorCount)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn EnumeratorCount(self: ?*anyopaque) i32 {
        return C.QMetaObject_EnumeratorCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#propertyCount)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn PropertyCount(self: ?*anyopaque) i32 {
        return C.QMetaObject_PropertyCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#classInfoCount)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn ClassInfoCount(self: ?*anyopaque) i32 {
        return C.QMetaObject_ClassInfoCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfConstructor)
    ///
    /// ``` self: ?*C.QMetaObject, constructor: []const u8 ```
    pub fn IndexOfConstructor(self: ?*anyopaque, constructor: []const u8) i32 {
        const constructor_Cstring = @constCast(constructor.ptr);
        return C.QMetaObject_IndexOfConstructor(@ptrCast(self), constructor_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfMethod)
    ///
    /// ``` self: ?*C.QMetaObject, method: []const u8 ```
    pub fn IndexOfMethod(self: ?*anyopaque, method: []const u8) i32 {
        const method_Cstring = @constCast(method.ptr);
        return C.QMetaObject_IndexOfMethod(@ptrCast(self), method_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfSignal)
    ///
    /// ``` self: ?*C.QMetaObject, signal: []const u8 ```
    pub fn IndexOfSignal(self: ?*anyopaque, signal: []const u8) i32 {
        const signal_Cstring = @constCast(signal.ptr);
        return C.QMetaObject_IndexOfSignal(@ptrCast(self), signal_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfSlot)
    ///
    /// ``` self: ?*C.QMetaObject, slot: []const u8 ```
    pub fn IndexOfSlot(self: ?*anyopaque, slot: []const u8) i32 {
        const slot_Cstring = @constCast(slot.ptr);
        return C.QMetaObject_IndexOfSlot(@ptrCast(self), slot_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfEnumerator)
    ///
    /// ``` self: ?*C.QMetaObject, name: []const u8 ```
    pub fn IndexOfEnumerator(self: ?*anyopaque, name: []const u8) i32 {
        const name_Cstring = @constCast(name.ptr);
        return C.QMetaObject_IndexOfEnumerator(@ptrCast(self), name_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfProperty)
    ///
    /// ``` self: ?*C.QMetaObject, name: []const u8 ```
    pub fn IndexOfProperty(self: ?*anyopaque, name: []const u8) i32 {
        const name_Cstring = @constCast(name.ptr);
        return C.QMetaObject_IndexOfProperty(@ptrCast(self), name_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#indexOfClassInfo)
    ///
    /// ``` self: ?*C.QMetaObject, name: []const u8 ```
    pub fn IndexOfClassInfo(self: ?*anyopaque, name: []const u8) i32 {
        const name_Cstring = @constCast(name.ptr);
        return C.QMetaObject_IndexOfClassInfo(@ptrCast(self), name_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#constructor)
    ///
    /// ``` self: ?*C.QMetaObject, index: i32 ```
    pub fn Constructor(self: ?*anyopaque, index: i32) ?*C.QMetaMethod {
        return C.QMetaObject_Constructor(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#method)
    ///
    /// ``` self: ?*C.QMetaObject, index: i32 ```
    pub fn Method(self: ?*anyopaque, index: i32) ?*C.QMetaMethod {
        return C.QMetaObject_Method(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#enumerator)
    ///
    /// ``` self: ?*C.QMetaObject, index: i32 ```
    pub fn Enumerator(self: ?*anyopaque, index: i32) ?*C.QMetaEnum {
        return C.QMetaObject_Enumerator(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#property)
    ///
    /// ``` self: ?*C.QMetaObject, index: i32 ```
    pub fn Property(self: ?*anyopaque, index: i32) ?*C.QMetaProperty {
        return C.QMetaObject_Property(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#classInfo)
    ///
    /// ``` self: ?*C.QMetaObject, index: i32 ```
    pub fn ClassInfo(self: ?*anyopaque, index: i32) ?*C.QMetaClassInfo {
        return C.QMetaObject_ClassInfo(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#userProperty)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn UserProperty(self: ?*anyopaque) ?*C.QMetaProperty {
        return C.QMetaObject_UserProperty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#checkConnectArgs)
    ///
    /// ``` signal: []const u8, method: []const u8 ```
    pub fn CheckConnectArgs(signal: []const u8, method: []const u8) bool {
        const signal_Cstring = @constCast(signal.ptr);
        const method_Cstring = @constCast(method.ptr);
        return C.QMetaObject_CheckConnectArgs(signal_Cstring, method_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#checkConnectArgs)
    ///
    /// ``` signal: ?*C.QMetaMethod, method: ?*C.QMetaMethod ```
    pub fn CheckConnectArgs2(signal: ?*anyopaque, method: ?*anyopaque) bool {
        return C.QMetaObject_CheckConnectArgs2(@ptrCast(signal), @ptrCast(method));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#normalizedSignature)
    ///
    /// ``` method: []const u8, allocator: std.mem.Allocator ```
    pub fn NormalizedSignature(method: []const u8, allocator: std.mem.Allocator) []u8 {
        const method_Cstring = @constCast(method.ptr);
        const _bytearray: C.struct_libqt_string = C.QMetaObject_NormalizedSignature(method_Cstring);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#normalizedType)
    ///
    /// ``` typeVal: []const u8, allocator: std.mem.Allocator ```
    pub fn NormalizedType(typeVal: []const u8, allocator: std.mem.Allocator) []u8 {
        const typeVal_Cstring = @constCast(typeVal.ptr);
        const _bytearray: C.struct_libqt_string = C.QMetaObject_NormalizedType(typeVal_Cstring);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#connect)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, receiver: ?*C.QObject, method_index: i32 ```
    pub fn Connect(sender: ?*anyopaque, signal_index: i32, receiver: ?*anyopaque, method_index: i32) ?*C.QMetaObject__Connection {
        return C.QMetaObject_Connect(@ptrCast(sender), @intCast(signal_index), @ptrCast(receiver), @intCast(method_index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#disconnect)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, receiver: ?*C.QObject, method_index: i32 ```
    pub fn Disconnect(sender: ?*anyopaque, signal_index: i32, receiver: ?*anyopaque, method_index: i32) bool {
        return C.QMetaObject_Disconnect(@ptrCast(sender), @intCast(signal_index), @ptrCast(receiver), @intCast(method_index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#disconnectOne)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, receiver: ?*C.QObject, method_index: i32 ```
    pub fn DisconnectOne(sender: ?*anyopaque, signal_index: i32, receiver: ?*anyopaque, method_index: i32) bool {
        return C.QMetaObject_DisconnectOne(@ptrCast(sender), @intCast(signal_index), @ptrCast(receiver), @intCast(method_index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#connectSlotsByName)
    ///
    /// ``` o: ?*C.QObject ```
    pub fn ConnectSlotsByName(o: ?*anyopaque) void {
        C.QMetaObject_ConnectSlotsByName(@ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#activate)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, argv: ?*anyopaque ```
    pub fn Activate(sender: ?*anyopaque, signal_index: i32, argv: ?*anyopaque) void {
        C.QMetaObject_Activate(@ptrCast(sender), @intCast(signal_index), argv);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#activate)
    ///
    /// ``` sender: ?*C.QObject, param2: ?*C.QMetaObject, local_signal_index: i32, argv: ?*anyopaque ```
    pub fn Activate2(sender: ?*anyopaque, param2: ?*anyopaque, local_signal_index: i32, argv: ?*anyopaque) void {
        C.QMetaObject_Activate2(@ptrCast(sender), @ptrCast(param2), @intCast(local_signal_index), argv);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#activate)
    ///
    /// ``` sender: ?*C.QObject, signal_offset: i32, local_signal_index: i32, argv: ?*anyopaque ```
    pub fn Activate3(sender: ?*anyopaque, signal_offset: i32, local_signal_index: i32, argv: ?*anyopaque) void {
        C.QMetaObject_Activate3(@ptrCast(sender), @intCast(signal_offset), @intCast(local_signal_index), argv);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument ```
    pub fn InvokeMethod(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument ```
    pub fn InvokeMethod2(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod2(@ptrCast(obj), member_Cstring, @ptrCast(retVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType ```
    pub fn InvokeMethod3(obj: ?*anyopaque, member: []const u8, typeVal: i64) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod3(@ptrCast(obj), member_Cstring, @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8 ```
    pub fn InvokeMethod4(obj: ?*anyopaque, member: []const u8) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod4(@ptrCast(obj), member_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn NewInstance(self: ?*anyopaque) ?*C.QObject {
        return C.QMetaObject_NewInstance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#static_metacall)
    ///
    /// ``` self: ?*C.QMetaObject, param1: qobjectdefs_enums.Call, param2: i32, param3: ?*anyopaque ```
    pub fn StaticMetacall(self: ?*anyopaque, param1: i64, param2: i32, param3: ?*anyopaque) i32 {
        return C.QMetaObject_StaticMetacall(@ptrCast(self), @intCast(param1), @intCast(param2), param3);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#metacall)
    ///
    /// ``` param1: ?*C.QObject, param2: qobjectdefs_enums.Call, param3: i32, param4: ?*anyopaque ```
    pub fn Metacall(param1: ?*anyopaque, param2: i64, param3: i32, param4: ?*anyopaque) i32 {
        return C.QMetaObject_Metacall(@ptrCast(param1), @intCast(param2), @intCast(param3), param4);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(self: ?*anyopaque, s: []const u8, c: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const s_Cstring = @constCast(s.ptr);
        const c_Cstring = @constCast(c.ptr);
        const _str = C.QMetaObject_Tr3(@ptrCast(self), s_Cstring, c_Cstring, @intCast(n));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#connect)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, receiver: ?*C.QObject, method_index: i32, typeVal: i32 ```
    pub fn Connect5(sender: ?*anyopaque, signal_index: i32, receiver: ?*anyopaque, method_index: i32, typeVal: i32) ?*C.QMetaObject__Connection {
        return C.QMetaObject_Connect5(@ptrCast(sender), @intCast(signal_index), @ptrCast(receiver), @intCast(method_index), @intCast(typeVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#connect)
    ///
    /// ``` sender: ?*C.QObject, signal_index: i32, receiver: ?*C.QObject, method_index: i32, typeVal: i32, types: ?*i32 ```
    pub fn Connect6(sender: ?*anyopaque, signal_index: i32, receiver: ?*anyopaque, method_index: i32, typeVal: i32, types: ?*anyopaque) ?*C.QMetaObject__Connection {
        return C.QMetaObject_Connect6(@ptrCast(sender), @intCast(signal_index), @ptrCast(receiver), @intCast(method_index), @intCast(typeVal), @intCast(types));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument ```
    pub fn InvokeMethod5(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod5(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeMethod6(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod6(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeMethod7(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod7(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeMethod8(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod8(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeMethod9(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod9(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeMethod10(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod10(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeMethod11(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod11(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeMethod12(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod12(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeMethod13(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod13(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, param3: qnamespace_enums.ConnectionType, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeMethod14(obj: ?*anyopaque, member: []const u8, param3: i64, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod14(@ptrCast(obj), member_Cstring, @intCast(param3), @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument ```
    pub fn InvokeMethod42(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod42(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeMethod52(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod52(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeMethod62(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod62(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeMethod72(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod72(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeMethod82(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod82(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeMethod92(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod92(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeMethod102(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod102(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeMethod112(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod112(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeMethod122(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod122(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeMethod132(obj: ?*anyopaque, member: []const u8, retVal: ?*C.QGenericReturnArgument, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod132(@ptrCast(obj), member_Cstring, @ptrCast(retVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument ```
    pub fn InvokeMethod43(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod43(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeMethod53(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod53(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeMethod63(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod63(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeMethod73(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod73(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeMethod83(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod83(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeMethod93(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod93(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeMethod103(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod103(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeMethod113(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod113(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeMethod123(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod123(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, typeVal: qnamespace_enums.ConnectionType, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeMethod133(obj: ?*anyopaque, member: []const u8, typeVal: i64, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod133(@ptrCast(obj), member_Cstring, @intCast(typeVal), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument ```
    pub fn InvokeMethod32(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod32(@ptrCast(obj), member_Cstring, @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn InvokeMethod44(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod44(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn InvokeMethod54(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod54(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn InvokeMethod64(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod64(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn InvokeMethod74(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod74(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn InvokeMethod84(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod84(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn InvokeMethod94(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod94(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn InvokeMethod104(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod104(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn InvokeMethod114(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod114(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#invokeMethod)
    ///
    /// ``` obj: ?*C.QObject, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn InvokeMethod124(obj: ?*anyopaque, member: []const u8, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) bool {
        const member_Cstring = @constCast(member.ptr);
        return C.QMetaObject_InvokeMethod124(@ptrCast(obj), member_Cstring, @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument ```
    pub fn NewInstance1(self: ?*anyopaque, val0: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance1(@ptrCast(self), @ptrCast(val0));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument ```
    pub fn NewInstance2(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance2(@ptrCast(self), @ptrCast(val0), @ptrCast(val1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument ```
    pub fn NewInstance3(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance3(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument ```
    pub fn NewInstance4(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance4(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument ```
    pub fn NewInstance5(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance5(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument ```
    pub fn NewInstance6(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance6(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument ```
    pub fn NewInstance7(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance7(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument ```
    pub fn NewInstance8(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance8(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument ```
    pub fn NewInstance9(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance9(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject.html#newInstance)
    ///
    /// ``` self: ?*C.QMetaObject, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument ```
    pub fn NewInstance10(self: ?*anyopaque, val0: ?*C.QGenericArgument, val1: ?*C.QGenericArgument, val2: ?*C.QGenericArgument, val3: ?*C.QGenericArgument, val4: ?*C.QGenericArgument, val5: ?*C.QGenericArgument, val6: ?*C.QGenericArgument, val7: ?*C.QGenericArgument, val8: ?*C.QGenericArgument, val9: ?*C.QGenericArgument) ?*C.QObject {
        return C.QMetaObject_NewInstance10(@ptrCast(self), @ptrCast(val0), @ptrCast(val1), @ptrCast(val2), @ptrCast(val3), @ptrCast(val4), @ptrCast(val5), @ptrCast(val6), @ptrCast(val7), @ptrCast(val8), @ptrCast(val9));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaObject ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaObject_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaobject-connection.html
pub const qmetaobject__connection = struct {
    /// New constructs a new QMetaObject::Connection object.
    ///
    ///
    pub fn New() ?*C.QMetaObject__Connection {
        return C.QMetaObject__Connection_new();
    }

    /// New2 constructs a new QMetaObject::Connection object.
    ///
    /// ``` other: ?*C.QMetaObject__Connection ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaObject__Connection {
        return C.QMetaObject__Connection_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__connection.html#operator=)
    ///
    /// ``` self: ?*C.QMetaObject__Connection, other: ?*C.QMetaObject__Connection ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaObject__Connection_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__connection.html#swap)
    ///
    /// ``` self: ?*C.QMetaObject__Connection, other: ?*C.QMetaObject__Connection ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaObject__Connection_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaObject__Connection ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaObject__Connection_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaobject-superdata.html
pub const qmetaobject__superdata = struct {
    /// New constructs a new QMetaObject::SuperData object.
    ///
    ///
    pub fn New() ?*C.QMetaObject__SuperData {
        return C.QMetaObject__SuperData_new();
    }

    /// New2 constructs a new QMetaObject::SuperData object.
    ///
    /// ``` mo: ?*C.QMetaObject ```
    pub fn New2(mo: ?*anyopaque) ?*C.QMetaObject__SuperData {
        return C.QMetaObject__SuperData_new2(@ptrCast(mo));
    }

    /// New3 constructs a new QMetaObject::SuperData object.
    ///
    /// ``` param1: ?*C.QMetaObject__SuperData ```
    pub fn New3(param1: ?*anyopaque) ?*C.QMetaObject__SuperData {
        return C.QMetaObject__SuperData_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__superdata.html#operator->)
    ///
    /// ``` self: ?*C.QMetaObject__SuperData ```
    pub fn OperatorMinusGreater(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaObject__SuperData_OperatorMinusGreater(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__superdata.html#operator const QMetaObject *)
    ///
    /// ``` self: ?*C.QMetaObject__SuperData ```
    pub fn ToConstQMetaObjectMultiply(self: ?*anyopaque) ?*C.QMetaObject {
        return C.QMetaObject__SuperData_ToConstQMetaObjectMultiply(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__superdata.html#operator=)
    ///
    /// ``` self: ?*C.QMetaObject__SuperData, param1: ?*C.QMetaObject__SuperData ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMetaObject__SuperData_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaObject__SuperData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaObject__SuperData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaobject-data.html
pub const qmetaobject__data = struct {
    /// New constructs a new QMetaObject::Data object.
    ///
    ///
    pub fn New() ?*C.QMetaObject__Data {
        return C.QMetaObject__Data_new();
    }

    /// New2 constructs a new QMetaObject::Data object.
    ///
    /// ``` param1: ?*C.QMetaObject__Data ```
    pub fn New2(param1: ?*anyopaque) ?*C.QMetaObject__Data {
        return C.QMetaObject__Data_new2(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaobject__data.html#operator=)
    ///
    /// ``` self: ?*C.QMetaObject__Data, param1: ?*C.QMetaObject__Data ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QMetaObject__Data_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaObject__Data ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaObject__Data_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qobjectdefs.html#types
pub const enums = struct {
    pub const Call = enum {
        pub const InvokeMetaMethod: i32 = 0;
        pub const ReadProperty: i32 = 1;
        pub const WriteProperty: i32 = 2;
        pub const ResetProperty: i32 = 3;
        pub const CreateInstance: i32 = 4;
        pub const IndexOfMethod: i32 = 5;
        pub const RegisterPropertyMetaType: i32 = 6;
        pub const RegisterMethodArgumentMetaType: i32 = 7;
        pub const BindableProperty: i32 = 8;
        pub const CustomCall: i32 = 9;
    };
};
