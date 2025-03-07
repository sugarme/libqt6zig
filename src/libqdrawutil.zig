const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qtilerules.html
pub const qtilerules = struct {
    /// New constructs a new QTileRules object.
    ///
    /// ``` other: ?*C.QTileRules ```
    pub fn New(other: ?*anyopaque) ?*C.QTileRules {
        return C.QTileRules_new(@ptrCast(other));
    }

    /// New2 constructs a new QTileRules object and invalidates the source QTileRules object.
    ///
    /// ``` other: ?*C.QTileRules ```
    pub fn New2(other: ?*anyopaque) ?*C.QTileRules {
        return C.QTileRules_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTileRules object.
    ///
    /// ``` horizontalRule: qnamespace_enums.TileRule, verticalRule: qnamespace_enums.TileRule ```
    pub fn New3(horizontalRule: i64, verticalRule: i64) ?*C.QTileRules {
        return C.QTileRules_new3(@intCast(horizontalRule), @intCast(verticalRule));
    }

    /// New4 constructs a new QTileRules object.
    ///
    ///
    pub fn New4() ?*C.QTileRules {
        return C.QTileRules_new4();
    }

    /// New5 constructs a new QTileRules object.
    ///
    /// ``` param1: ?*C.QTileRules ```
    pub fn New5(param1: ?*anyopaque) ?*C.QTileRules {
        return C.QTileRules_new5(@ptrCast(param1));
    }

    /// New6 constructs a new QTileRules object.
    ///
    /// ``` rule: qnamespace_enums.TileRule ```
    pub fn New6(rule: i64) ?*C.QTileRules {
        return C.QTileRules_new6(@intCast(rule));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTileRules, other: ?*QTileRules ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTileRules_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTileRules, other: ?*QTileRules ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTileRules_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTileRules ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTileRules_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qdrawutil.html#types
pub const enums = struct {
    pub const DrawingHint = enum {
        pub const OpaqueTopLeft: i32 = 1;
        pub const OpaqueTop: i32 = 2;
        pub const OpaqueTopRight: i32 = 4;
        pub const OpaqueLeft: i32 = 8;
        pub const OpaqueCenter: i32 = 16;
        pub const OpaqueRight: i32 = 32;
        pub const OpaqueBottomLeft: i32 = 64;
        pub const OpaqueBottom: i32 = 128;
        pub const OpaqueBottomRight: i32 = 256;
        pub const OpaqueCorners: i32 = 325;
        pub const OpaqueEdges: i32 = 170;
        pub const OpaqueFrame: i32 = 495;
        pub const OpaqueAll: i32 = 511;
    };
};
