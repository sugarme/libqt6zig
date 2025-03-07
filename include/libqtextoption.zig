const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;
const qtextoption_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtextoption.html
pub const qtextoption = struct {
    /// New constructs a new QTextOption object.
    ///
    ///
    pub fn New() ?*C.QTextOption {
        return C.QTextOption_new();
    }

    /// New2 constructs a new QTextOption object.
    ///
    /// ``` alignment: i32 ```
    pub fn New2(alignment: i64) ?*C.QTextOption {
        return C.QTextOption_new2(@intCast(alignment));
    }

    /// New3 constructs a new QTextOption object.
    ///
    /// ``` o: ?*C.QTextOption ```
    pub fn New3(o: ?*anyopaque) ?*C.QTextOption {
        return C.QTextOption_new3(@ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#operator=)
    ///
    /// ``` self: ?*C.QTextOption, o: ?*C.QTextOption ```
    pub fn OperatorAssign(self: ?*anyopaque, o: ?*anyopaque) void {
        C.QTextOption_OperatorAssign(@ptrCast(self), @ptrCast(o));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setAlignment)
    ///
    /// ``` self: ?*C.QTextOption, alignment: i32 ```
    pub fn SetAlignment(self: ?*anyopaque, alignment: i64) void {
        C.QTextOption_SetAlignment(@ptrCast(self), @intCast(alignment));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#alignment)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn Alignment(self: ?*anyopaque) i64 {
        return C.QTextOption_Alignment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setTextDirection)
    ///
    /// ``` self: ?*C.QTextOption, aDirection: qnamespace_enums.LayoutDirection ```
    pub fn SetTextDirection(self: ?*anyopaque, aDirection: i64) void {
        C.QTextOption_SetTextDirection(@ptrCast(self), @intCast(aDirection));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#textDirection)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn TextDirection(self: ?*anyopaque) i64 {
        return C.QTextOption_TextDirection(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setWrapMode)
    ///
    /// ``` self: ?*C.QTextOption, wrap: qtextoption_enums.WrapMode ```
    pub fn SetWrapMode(self: ?*anyopaque, wrap: i64) void {
        C.QTextOption_SetWrapMode(@ptrCast(self), @intCast(wrap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#wrapMode)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn WrapMode(self: ?*anyopaque) i64 {
        return C.QTextOption_WrapMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setFlags)
    ///
    /// ``` self: ?*C.QTextOption, flags: i32 ```
    pub fn SetFlags(self: ?*anyopaque, flags: i64) void {
        C.QTextOption_SetFlags(@ptrCast(self), @intCast(flags));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#flags)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn Flags(self: ?*anyopaque) i64 {
        return C.QTextOption_Flags(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setTabStopDistance)
    ///
    /// ``` self: ?*C.QTextOption, tabStopDistance: f64 ```
    pub fn SetTabStopDistance(self: ?*anyopaque, tabStopDistance: f64) void {
        C.QTextOption_SetTabStopDistance(@ptrCast(self), @floatCast(tabStopDistance));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#tabStopDistance)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn TabStopDistance(self: ?*anyopaque) f64 {
        return C.QTextOption_TabStopDistance(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setTabArray)
    ///
    /// ``` self: ?*C.QTextOption, tabStops: []f64 ```
    pub fn SetTabArray(self: ?*anyopaque, tabStops: []f64) void {
        const tabStops_list = C.struct_libqt_list{
            .len = tabStops.len,
            .data = tabStops.ptr,
        };
        C.QTextOption_SetTabArray(@ptrCast(self), tabStops_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#tabArray)
    ///
    /// ``` self: ?*C.QTextOption, allocator: std.mem.Allocator ```
    pub fn TabArray(self: ?*anyopaque, allocator: std.mem.Allocator) []f64 {
        const _arr: C.struct_libqt_list = C.QTextOption_TabArray(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(f64, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]f64 = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setTabs)
    ///
    /// ``` self: ?*C.QTextOption, tabStops: []?*C.QTextOption__Tab ```
    pub fn SetTabs(self: ?*anyopaque, tabStops: []?*C.QTextOption__Tab) void {
        const tabStops_list = C.struct_libqt_list{
            .len = tabStops.len,
            .data = @ptrCast(tabStops.ptr),
        };
        C.QTextOption_SetTabs(@ptrCast(self), tabStops_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#tabs)
    ///
    /// ``` self: ?*C.QTextOption, allocator: std.mem.Allocator ```
    pub fn Tabs(self: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QTextOption__Tab {
        const _arr: C.struct_libqt_list = C.QTextOption_Tabs(@ptrCast(self));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTextOption__Tab, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTextOption__Tab = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#setUseDesignMetrics)
    ///
    /// ``` self: ?*C.QTextOption, b: bool ```
    pub fn SetUseDesignMetrics(self: ?*anyopaque, b: bool) void {
        C.QTextOption_SetUseDesignMetrics(@ptrCast(self), b);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption.html#useDesignMetrics)
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn UseDesignMetrics(self: ?*anyopaque) bool {
        return C.QTextOption_UseDesignMetrics(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextOption ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextOption_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextoption-tab.html
pub const qtextoption__tab = struct {
    /// New constructs a new QTextOption::Tab object.
    ///
    /// ``` other: ?*C.QTextOption__Tab ```
    pub fn New(other: ?*anyopaque) ?*C.QTextOption__Tab {
        return C.QTextOption__Tab_new(@ptrCast(other));
    }

    /// New2 constructs a new QTextOption::Tab object and invalidates the source QTextOption::Tab object.
    ///
    /// ``` other: ?*C.QTextOption__Tab ```
    pub fn New2(other: ?*anyopaque) ?*C.QTextOption__Tab {
        return C.QTextOption__Tab_new2(@ptrCast(other));
    }

    /// New3 constructs a new QTextOption::Tab object.
    ///
    ///
    pub fn New3() ?*C.QTextOption__Tab {
        return C.QTextOption__Tab_new3();
    }

    /// New4 constructs a new QTextOption::Tab object.
    ///
    /// ``` pos: f64, tabType: qtextoption_enums.TabType ```
    pub fn New4(pos: f64, tabType: i64) ?*C.QTextOption__Tab {
        return C.QTextOption__Tab_new4(@floatCast(pos), @intCast(tabType));
    }

    /// New5 constructs a new QTextOption::Tab object.
    ///
    /// ``` pos: f64, tabType: qtextoption_enums.TabType, delim: ?*C.QChar ```
    pub fn New5(pos: f64, tabType: i64, delim: ?*C.QChar) ?*C.QTextOption__Tab {
        return C.QTextOption__Tab_new5(@floatCast(pos), @intCast(tabType), @ptrCast(delim));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QTextOption__Tab, other: ?*QTextOption__Tab ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextOption__Tab_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QTextOption__Tab, other: ?*QTextOption__Tab ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTextOption__Tab_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption__tab.html#operator==)
    ///
    /// ``` self: ?*C.QTextOption__Tab, other: ?*C.QTextOption__Tab ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QTextOption__Tab_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtextoption__tab.html#operator!=)
    ///
    /// ``` self: ?*C.QTextOption__Tab, other: ?*C.QTextOption__Tab ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QTextOption__Tab_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTextOption__Tab ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTextOption__Tab_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtextoption.html#types
pub const enums = struct {
    pub const TabType = enum {
        pub const LeftTab: i32 = 0;
        pub const RightTab: i32 = 1;
        pub const CenterTab: i32 = 2;
        pub const DelimiterTab: i32 = 3;
    };

    pub const WrapMode = enum {
        pub const NoWrap: i32 = 0;
        pub const WordWrap: i32 = 1;
        pub const ManualWrap: i32 = 2;
        pub const WrapAnywhere: i32 = 3;
        pub const WrapAtWordBoundaryOrAnywhere: i32 = 4;
    };

    pub const Flag = enum {
        pub const ShowTabsAndSpaces: i32 = 1;
        pub const ShowLineAndParagraphSeparators: i32 = 2;
        pub const AddSpaceForLineAndParagraphSeparators: i32 = 4;
        pub const SuppressColors: i32 = 8;
        pub const ShowDocumentTerminator: i32 = 16;
        pub const IncludeTrailingSpaces: i64 = 2147483648;
    };
};
