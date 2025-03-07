const C = @import("qt6c");
const qarraydata_enums = enums;
pub const struct_cqarraydata_anyopaque = struct { first: ?*C.QArrayData, second: ?*anyopaque };

/// https://doc.qt.io/qt-6/qarraydata.html
pub const qarraydata = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#allocatedCapacity)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn AllocatedCapacity(self: ?*anyopaque) i64 {
        return C.QArrayData_AllocatedCapacity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#constAllocatedCapacity)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn ConstAllocatedCapacity(self: ?*anyopaque) i64 {
        return C.QArrayData_ConstAllocatedCapacity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#ref)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn Ref(self: ?*anyopaque) bool {
        return C.QArrayData_Ref(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#deref)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn Deref(self: ?*anyopaque) bool {
        return C.QArrayData_Deref(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#isShared)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn IsShared(self: ?*anyopaque) bool {
        return C.QArrayData_IsShared(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#needsDetach)
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn NeedsDetach(self: ?*anyopaque) bool {
        return C.QArrayData_NeedsDetach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#detachCapacity)
    ///
    /// ``` self: ?*C.QArrayData, newSize: i64 ```
    pub fn DetachCapacity(self: ?*anyopaque, newSize: i64) i64 {
        return C.QArrayData_DetachCapacity(@ptrCast(self), @intCast(newSize));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#reallocateUnaligned)
    ///
    /// ``` data: ?*C.QArrayData, dataPointer: ?*anyopaque, objectSize: i64, newCapacity: i64, option: qarraydata_enums.AllocationOption ```
    pub fn ReallocateUnaligned(data: ?*anyopaque, dataPointer: ?*anyopaque, objectSize: i64, newCapacity: i64, option: i64) struct_cqarraydata_anyopaque {
        const _pair: C.struct_libqt_pair = C.QArrayData_ReallocateUnaligned(@ptrCast(data), dataPointer, @intCast(objectSize), @intCast(newCapacity), @intCast(option));
        return struct_cqarraydata_anyopaque{ .first = @ptrCast(_pair.first), .second = @ptrCast(_pair.second) };
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qarraydata.html#deallocate)
    ///
    /// ``` data: ?*C.QArrayData, objectSize: i64, alignment: i64 ```
    pub fn Deallocate(data: ?*anyopaque, objectSize: i64, alignment: i64) void {
        C.QArrayData_Deallocate(@ptrCast(data), @intCast(objectSize), @intCast(alignment));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QArrayData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QArrayData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qarraydata.html#types
pub const enums = struct {
    pub const AllocationOption = enum {
        pub const Grow: i32 = 0;
        pub const KeepSize: i32 = 1;
    };

    pub const GrowthPosition = enum {
        pub const GrowsAtEnd: i32 = 0;
        pub const GrowsAtBeginning: i32 = 1;
    };

    pub const ArrayOption = enum {
        pub const ArrayOptionDefault: i32 = 0;
        pub const CapacityReserved: i32 = 1;
    };

    pub const CutResult = enum {
        pub const Null: i32 = 0;
        pub const Empty: i32 = 1;
        pub const Full: i32 = 2;
        pub const Subset: i32 = 3;
    };
};
