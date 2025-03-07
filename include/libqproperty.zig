const C = @import("qt6c");
const qproperty_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qpropertybindingsourcelocation.html
pub const qpropertybindingsourcelocation = struct {
    /// New constructs a new QPropertyBindingSourceLocation object.
    ///
    /// ``` other: ?*C.QPropertyBindingSourceLocation ```
    pub fn New(other: ?*anyopaque) ?*C.QPropertyBindingSourceLocation {
        return C.QPropertyBindingSourceLocation_new(@ptrCast(other));
    }

    /// New2 constructs a new QPropertyBindingSourceLocation object and invalidates the source QPropertyBindingSourceLocation object.
    ///
    /// ``` other: ?*C.QPropertyBindingSourceLocation ```
    pub fn New2(other: ?*anyopaque) ?*C.QPropertyBindingSourceLocation {
        return C.QPropertyBindingSourceLocation_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPropertyBindingSourceLocation object.
    ///
    ///
    pub fn New3() ?*C.QPropertyBindingSourceLocation {
        return C.QPropertyBindingSourceLocation_new3();
    }

    /// New4 constructs a new QPropertyBindingSourceLocation object.
    ///
    /// ``` param1: ?*C.QPropertyBindingSourceLocation ```
    pub fn New4(param1: ?*anyopaque) ?*C.QPropertyBindingSourceLocation {
        return C.QPropertyBindingSourceLocation_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPropertyBindingSourceLocation, other: ?*QPropertyBindingSourceLocation ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPropertyBindingSourceLocation_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPropertyBindingSourceLocation, other: ?*QPropertyBindingSourceLocation ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPropertyBindingSourceLocation_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPropertyBindingSourceLocation ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPropertyBindingSourceLocation_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpropertybindingerror.html
pub const qpropertybindingerror = struct {
    /// New constructs a new QPropertyBindingError object.
    ///
    ///
    pub fn New() ?*C.QPropertyBindingError {
        return C.QPropertyBindingError_new();
    }

    /// New2 constructs a new QPropertyBindingError object.
    ///
    /// ``` typeVal: qproperty_enums.Type ```
    pub fn New2(typeVal: i64) ?*C.QPropertyBindingError {
        return C.QPropertyBindingError_new2(@intCast(typeVal));
    }

    /// New3 constructs a new QPropertyBindingError object.
    ///
    /// ``` other: ?*C.QPropertyBindingError ```
    pub fn New3(other: ?*anyopaque) ?*C.QPropertyBindingError {
        return C.QPropertyBindingError_new3(@ptrCast(other));
    }

    /// New4 constructs a new QPropertyBindingError object.
    ///
    /// ``` typeVal: qproperty_enums.Type, description: []const u8 ```
    pub fn New4(typeVal: i64, description: []const u8) ?*C.QPropertyBindingError {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };

        return C.QPropertyBindingError_new4(@intCast(typeVal), description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpropertybindingerror.html#operator=)
    ///
    /// ``` self: ?*C.QPropertyBindingError, other: ?*C.QPropertyBindingError ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPropertyBindingError_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpropertybindingerror.html#hasError)
    ///
    /// ``` self: ?*C.QPropertyBindingError ```
    pub fn HasError(self: ?*anyopaque) bool {
        return C.QPropertyBindingError_HasError(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpropertybindingerror.html#type)
    ///
    /// ``` self: ?*C.QPropertyBindingError ```
    pub fn Type(self: ?*anyopaque) i64 {
        return C.QPropertyBindingError_Type(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpropertybindingerror.html#description)
    ///
    /// ``` self: ?*C.QPropertyBindingError, allocator: std.mem.Allocator ```
    pub fn Description(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QPropertyBindingError_Description(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPropertyBindingError ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPropertyBindingError_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/quntypedpropertybinding.html
pub const quntypedpropertybinding = struct {
    /// New constructs a new QUntypedPropertyBinding object.
    ///
    ///
    pub fn New() ?*C.QUntypedPropertyBinding {
        return C.QUntypedPropertyBinding_new();
    }

    /// New2 constructs a new QUntypedPropertyBinding object.
    ///
    /// ``` other: ?*C.QUntypedPropertyBinding ```
    pub fn New2(other: ?*anyopaque) ?*C.QUntypedPropertyBinding {
        return C.QUntypedPropertyBinding_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedpropertybinding.html#operator=)
    ///
    /// ``` self: ?*C.QUntypedPropertyBinding, other: ?*C.QUntypedPropertyBinding ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUntypedPropertyBinding_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedpropertybinding.html#isNull)
    ///
    /// ``` self: ?*C.QUntypedPropertyBinding ```
    pub fn IsNull(self: ?*anyopaque) bool {
        return C.QUntypedPropertyBinding_IsNull(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedpropertybinding.html#error)
    ///
    /// ``` self: ?*C.QUntypedPropertyBinding ```
    pub fn Error(self: ?*anyopaque) ?*C.QPropertyBindingError {
        return C.QUntypedPropertyBinding_Error(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedpropertybinding.html#valueMetaType)
    ///
    /// ``` self: ?*C.QUntypedPropertyBinding ```
    pub fn ValueMetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QUntypedPropertyBinding_ValueMetaType(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QUntypedPropertyBinding ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QUntypedPropertyBinding_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpropertyobserverbase.html
pub const qpropertyobserverbase = struct {
    /// New constructs a new QPropertyObserverBase object.
    ///
    ///
    pub fn New() ?*C.QPropertyObserverBase {
        return C.QPropertyObserverBase_new();
    }

    /// New2 constructs a new QPropertyObserverBase object.
    ///
    /// ``` param1: ?*C.QPropertyObserverBase ```
    pub fn New2(param1: ?*anyopaque) ?*C.QPropertyObserverBase {
        return C.QPropertyObserverBase_new2(@ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPropertyObserverBase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPropertyObserverBase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpropertyobserver.html
pub const qpropertyobserver = struct {
    /// New constructs a new QPropertyObserver object.
    ///
    ///
    pub fn New() ?*C.QPropertyObserver {
        return C.QPropertyObserver_new();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPropertyObserver ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPropertyObserver_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpropertynotifier.html
pub const qpropertynotifier = struct {
    /// New constructs a new QPropertyNotifier object.
    ///
    ///
    pub fn New() ?*C.QPropertyNotifier {
        return C.QPropertyNotifier_new();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPropertyNotifier ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPropertyNotifier_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/quntypedbindable.html
pub const quntypedbindable = struct {
    /// New constructs a new QUntypedBindable object.
    ///
    /// ``` other: ?*C.QUntypedBindable ```
    pub fn New(other: ?*anyopaque) ?*C.QUntypedBindable {
        return C.QUntypedBindable_new(@ptrCast(other));
    }

    /// New2 constructs a new QUntypedBindable object and invalidates the source QUntypedBindable object.
    ///
    /// ``` other: ?*C.QUntypedBindable ```
    pub fn New2(other: ?*anyopaque) ?*C.QUntypedBindable {
        return C.QUntypedBindable_new2(@ptrCast(other));
    }

    /// New3 constructs a new QUntypedBindable object.
    ///
    ///
    pub fn New3() ?*C.QUntypedBindable {
        return C.QUntypedBindable_new3();
    }

    /// New4 constructs a new QUntypedBindable object.
    ///
    /// ``` param1: ?*C.QUntypedBindable ```
    pub fn New4(param1: ?*anyopaque) ?*C.QUntypedBindable {
        return C.QUntypedBindable_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QUntypedBindable, other: ?*QUntypedBindable ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUntypedBindable_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QUntypedBindable, other: ?*QUntypedBindable ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUntypedBindable_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#isValid)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QUntypedBindable_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#isBindable)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn IsBindable(self: ?*anyopaque) bool {
        return C.QUntypedBindable_IsBindable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#isReadOnly)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn IsReadOnly(self: ?*anyopaque) bool {
        return C.QUntypedBindable_IsReadOnly(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#makeBinding)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn MakeBinding(self: ?*anyopaque) ?*C.QUntypedPropertyBinding {
        return C.QUntypedBindable_MakeBinding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#takeBinding)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn TakeBinding(self: ?*anyopaque) ?*C.QUntypedPropertyBinding {
        return C.QUntypedBindable_TakeBinding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#observe)
    ///
    /// ``` self: ?*C.QUntypedBindable, observer: ?*C.QPropertyObserver ```
    pub fn Observe(self: ?*anyopaque, observer: ?*anyopaque) void {
        C.QUntypedBindable_Observe(@ptrCast(self), @ptrCast(observer));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#binding)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn Binding(self: ?*anyopaque) ?*C.QUntypedPropertyBinding {
        return C.QUntypedBindable_Binding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#setBinding)
    ///
    /// ``` self: ?*C.QUntypedBindable, binding: ?*C.QUntypedPropertyBinding ```
    pub fn SetBinding(self: ?*anyopaque, binding: ?*anyopaque) bool {
        return C.QUntypedBindable_SetBinding(@ptrCast(self), @ptrCast(binding));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#hasBinding)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn HasBinding(self: ?*anyopaque) bool {
        return C.QUntypedBindable_HasBinding(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#metaType)
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn MetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QUntypedBindable_MetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/quntypedbindable.html#makeBinding)
    ///
    /// ``` self: ?*C.QUntypedBindable, location: ?*C.QPropertyBindingSourceLocation ```
    pub fn MakeBinding1(self: ?*anyopaque, location: ?*anyopaque) ?*C.QUntypedPropertyBinding {
        return C.QUntypedBindable_MakeBinding1(@ptrCast(self), @ptrCast(location));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QUntypedBindable ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QUntypedBindable_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qproperty.html#types
pub const enums = struct {
    pub const Reason = enum {
        pub const InvalidInterface: i32 = 0;
        pub const NonBindableInterface: i32 = 1;
        pub const ReadOnlyInterface: i32 = 2;
    };

    pub const Type = enum {
        pub const NoError: i32 = 0;
        pub const BindingLoop: i32 = 1;
        pub const EvaluationError: i32 = 2;
        pub const UnknownError: i32 = 3;
    };

    pub const ObserverTag = enum {
        pub const ObserverNotifiesBinding: i32 = 0;
        pub const ObserverNotifiesChangeHandler: i32 = 1;
        pub const ObserverIsPlaceholder: i32 = 2;
        pub const ObserverIsAlias: i32 = 3;
    };
};
