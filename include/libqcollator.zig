const C = @import("qt6c");
const qnamespace_enums = @import("libqnamespace.zig").enums;

/// https://doc.qt.io/qt-6/qcollatorsortkey.html
pub const qcollatorsortkey = struct {
    /// New constructs a new QCollatorSortKey object.
    ///
    /// ``` other: ?*C.QCollatorSortKey ```
    pub fn New(other: ?*anyopaque) ?*C.QCollatorSortKey {
        return C.QCollatorSortKey_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollatorsortkey.html#operator=)
    ///
    /// ``` self: ?*C.QCollatorSortKey, other: ?*C.QCollatorSortKey ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCollatorSortKey_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollatorsortkey.html#swap)
    ///
    /// ``` self: ?*C.QCollatorSortKey, other: ?*C.QCollatorSortKey ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCollatorSortKey_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollatorsortkey.html#compare)
    ///
    /// ``` self: ?*C.QCollatorSortKey, key: ?*C.QCollatorSortKey ```
    pub fn Compare(self: ?*anyopaque, key: ?*anyopaque) i32 {
        return C.QCollatorSortKey_Compare(@ptrCast(self), @ptrCast(key));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCollatorSortKey ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCollatorSortKey_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcollator.html
pub const qcollator = struct {
    /// New constructs a new QCollator object.
    ///
    ///
    pub fn New() ?*C.QCollator {
        return C.QCollator_new();
    }

    /// New2 constructs a new QCollator object.
    ///
    /// ``` locale: ?*C.QLocale ```
    pub fn New2(locale: ?*anyopaque) ?*C.QCollator {
        return C.QCollator_new2(@ptrCast(locale));
    }

    /// New3 constructs a new QCollator object.
    ///
    /// ``` param1: ?*C.QCollator ```
    pub fn New3(param1: ?*anyopaque) ?*C.QCollator {
        return C.QCollator_new3(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#operator=)
    ///
    /// ``` self: ?*C.QCollator, param1: ?*C.QCollator ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QCollator_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#swap)
    ///
    /// ``` self: ?*C.QCollator, other: ?*C.QCollator ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QCollator_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#setLocale)
    ///
    /// ``` self: ?*C.QCollator, locale: ?*C.QLocale ```
    pub fn SetLocale(self: ?*anyopaque, locale: ?*anyopaque) void {
        C.QCollator_SetLocale(@ptrCast(self), @ptrCast(locale));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#locale)
    ///
    /// ``` self: ?*C.QCollator ```
    pub fn Locale(self: ?*anyopaque) ?*C.QLocale {
        return C.QCollator_Locale(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#caseSensitivity)
    ///
    /// ``` self: ?*C.QCollator ```
    pub fn CaseSensitivity(self: ?*anyopaque) i64 {
        return C.QCollator_CaseSensitivity(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#setCaseSensitivity)
    ///
    /// ``` self: ?*C.QCollator, cs: qnamespace_enums.CaseSensitivity ```
    pub fn SetCaseSensitivity(self: ?*anyopaque, cs: i64) void {
        C.QCollator_SetCaseSensitivity(@ptrCast(self), @intCast(cs));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#setNumericMode)
    ///
    /// ``` self: ?*C.QCollator, on: bool ```
    pub fn SetNumericMode(self: ?*anyopaque, on: bool) void {
        C.QCollator_SetNumericMode(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#numericMode)
    ///
    /// ``` self: ?*C.QCollator ```
    pub fn NumericMode(self: ?*anyopaque) bool {
        return C.QCollator_NumericMode(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#setIgnorePunctuation)
    ///
    /// ``` self: ?*C.QCollator, on: bool ```
    pub fn SetIgnorePunctuation(self: ?*anyopaque, on: bool) void {
        C.QCollator_SetIgnorePunctuation(@ptrCast(self), on);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#ignorePunctuation)
    ///
    /// ``` self: ?*C.QCollator ```
    pub fn IgnorePunctuation(self: ?*anyopaque) bool {
        return C.QCollator_IgnorePunctuation(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#compare)
    ///
    /// ``` self: ?*C.QCollator, s1: []const u8, s2: []const u8 ```
    pub fn Compare(self: ?*anyopaque, s1: []const u8, s2: []const u8) i32 {
        const s1_str = C.struct_libqt_string{
            .len = s1.len,
            .data = @constCast(s1.ptr),
        };
        const s2_str = C.struct_libqt_string{
            .len = s2.len,
            .data = @constCast(s2.ptr),
        };
        return C.QCollator_Compare(@ptrCast(self), s1_str, s2_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#compare)
    ///
    /// ``` self: ?*C.QCollator, s1: ?*C.QChar, len1: i64, s2: ?*C.QChar, len2: i64 ```
    pub fn Compare2(self: ?*anyopaque, s1: ?*anyopaque, len1: i64, s2: ?*anyopaque, len2: i64) i32 {
        return C.QCollator_Compare2(@ptrCast(self), @ptrCast(s1), @intCast(len1), @ptrCast(s2), @intCast(len2));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#operator())
    ///
    /// ``` self: ?*C.QCollator, s1: []const u8, s2: []const u8 ```
    pub fn OperatorCall(self: ?*anyopaque, s1: []const u8, s2: []const u8) bool {
        const s1_str = C.struct_libqt_string{
            .len = s1.len,
            .data = @constCast(s1.ptr),
        };
        const s2_str = C.struct_libqt_string{
            .len = s2.len,
            .data = @constCast(s2.ptr),
        };
        return C.QCollator_OperatorCall(@ptrCast(self), s1_str, s2_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcollator.html#sortKey)
    ///
    /// ``` self: ?*C.QCollator, stringVal: []const u8 ```
    pub fn SortKey(self: ?*anyopaque, stringVal: []const u8) ?*C.QCollatorSortKey {
        const stringVal_str = C.struct_libqt_string{
            .len = stringVal.len,
            .data = @constCast(stringVal.ptr),
        };
        return C.QCollator_SortKey(@ptrCast(self), stringVal_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCollator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCollator_Delete(@ptrCast(self));
    }
};
