const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qhashseed.html
pub const qhashseed = struct {
    /// New constructs a new QHashSeed object.
    ///
    /// ``` other: ?*C.QHashSeed ```
    pub fn New(other: ?*anyopaque) ?*C.QHashSeed {
        return C.QHashSeed_new(@ptrCast(other));
    }

    /// New2 constructs a new QHashSeed object and invalidates the source QHashSeed object.
    ///
    /// ``` other: ?*C.QHashSeed ```
    pub fn New2(other: ?*anyopaque) ?*C.QHashSeed {
        return C.QHashSeed_new2(@ptrCast(other));
    }

    /// New3 constructs a new QHashSeed object.
    ///
    ///
    pub fn New3() ?*C.QHashSeed {
        return C.QHashSeed_new3();
    }

    /// New4 constructs a new QHashSeed object.
    ///
    /// ``` d: u64 ```
    pub fn New4(d: u64) ?*C.QHashSeed {
        return C.QHashSeed_new4(@intCast(d));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QHashSeed, other: ?*QHashSeed ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QHashSeed_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QHashSeed, other: ?*QHashSeed ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QHashSeed_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhashseed.html#operator unsigned long)
    ///
    /// ``` self: ?*C.QHashSeed ```
    pub fn ToUnsignedLong(self: ?*anyopaque) u64 {
        return C.QHashSeed_ToUnsignedLong(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhashseed.html#globalSeed)
    ///
    ///
    pub fn GlobalSeed() ?*C.QHashSeed {
        return C.QHashSeed_GlobalSeed();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhashseed.html#setDeterministicGlobalSeed)
    ///
    ///
    pub fn SetDeterministicGlobalSeed() void {
        C.QHashSeed_SetDeterministicGlobalSeed();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qhashseed.html#resetRandomGlobalSeed)
    ///
    ///
    pub fn ResetRandomGlobalSeed() void {
        C.QHashSeed_ResetRandomGlobalSeed();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QHashSeed ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QHashSeed_Delete(@ptrCast(self));
    }
};
