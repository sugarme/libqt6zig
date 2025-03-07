const C = @import("qt6c");
const std = @import("std");

/// https://doc.qt.io/qt-6/qloggingcategory.html
pub const qloggingcategory = struct {
    /// New constructs a new QLoggingCategory object.
    ///
    /// ``` category: []const u8 ```
    pub fn New(category: []const u8) ?*C.QLoggingCategory {
        const category_Cstring = @constCast(category.ptr);

        return C.QLoggingCategory_new(category_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#isDebugEnabled)
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn IsDebugEnabled(self: ?*anyopaque) bool {
        return C.QLoggingCategory_IsDebugEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#isInfoEnabled)
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn IsInfoEnabled(self: ?*anyopaque) bool {
        return C.QLoggingCategory_IsInfoEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#isWarningEnabled)
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn IsWarningEnabled(self: ?*anyopaque) bool {
        return C.QLoggingCategory_IsWarningEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#isCriticalEnabled)
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn IsCriticalEnabled(self: ?*anyopaque) bool {
        return C.QLoggingCategory_IsCriticalEnabled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#categoryName)
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn CategoryName(self: ?*anyopaque) []const u8 {
        const _ret = C.QLoggingCategory_CategoryName(@ptrCast(self));
        return std.mem.span(_ret);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#operator())
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn OperatorCall(self: ?*anyopaque) ?*C.QLoggingCategory {
        return C.QLoggingCategory_OperatorCall(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#operator())
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn OperatorCall2(self: ?*anyopaque) ?*C.QLoggingCategory {
        return C.QLoggingCategory_OperatorCall2(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#defaultCategory)
    ///
    ///
    pub fn DefaultCategory() ?*C.QLoggingCategory {
        return C.QLoggingCategory_DefaultCategory();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qloggingcategory.html#setFilterRules)
    ///
    /// ``` rules: []const u8 ```
    pub fn SetFilterRules(rules: []const u8) void {
        const rules_str = C.struct_libqt_string{
            .len = rules.len,
            .data = @constCast(rules.ptr),
        };
        C.QLoggingCategory_SetFilterRules(rules_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QLoggingCategory ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QLoggingCategory_Delete(@ptrCast(self));
    }
};
