const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qpartialordering.html
pub const qpartialordering = struct {
    /// New constructs a new QPartialOrdering object.
    ///
    /// ``` other: ?*C.QPartialOrdering ```
    pub fn New(other: ?*anyopaque) ?*C.QPartialOrdering {
        return C.QPartialOrdering_new(@ptrCast(other));
    }

    /// New2 constructs a new QPartialOrdering object and invalidates the source QPartialOrdering object.
    ///
    /// ``` other: ?*C.QPartialOrdering ```
    pub fn New2(other: ?*anyopaque) ?*C.QPartialOrdering {
        return C.QPartialOrdering_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPartialOrdering object.
    ///
    /// ``` param1: ?*C.QPartialOrdering ```
    pub fn New3(param1: ?*anyopaque) ?*C.QPartialOrdering {
        return C.QPartialOrdering_new3(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPartialOrdering, other: ?*QPartialOrdering ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPartialOrdering_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPartialOrdering, other: ?*QPartialOrdering ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPartialOrdering_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPartialOrdering ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPartialOrdering_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcompare.html#types
pub const enums = struct {
    pub const Ordering = enum {
        pub const Equal: i8 = 0;
        pub const Equivalent: i8 = 0;
        pub const Less: i8 = -1;
        pub const Greater: i8 = 1;
    };

    pub const Uncomparable = enum {
        pub const Unordered: i8 = -127;
    };
};
