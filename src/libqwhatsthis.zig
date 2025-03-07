const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qwhatsthis.html
pub const qwhatsthis = struct {
    /// New constructs a new QWhatsThis object.
    ///
    /// ``` other: ?*C.QWhatsThis ```
    pub fn New(other: ?*anyopaque) ?*C.QWhatsThis {
        return C.QWhatsThis_new(@ptrCast(other));
    }

    /// New2 constructs a new QWhatsThis object and invalidates the source QWhatsThis object.
    ///
    /// ``` other: ?*C.QWhatsThis ```
    pub fn New2(other: ?*anyopaque) ?*C.QWhatsThis {
        return C.QWhatsThis_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QWhatsThis, other: ?*QWhatsThis ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWhatsThis_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QWhatsThis, other: ?*QWhatsThis ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWhatsThis_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#enterWhatsThisMode)
    ///
    ///
    pub fn EnterWhatsThisMode() void {
        C.QWhatsThis_EnterWhatsThisMode();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#inWhatsThisMode)
    ///
    ///
    pub fn InWhatsThisMode() bool {
        return C.QWhatsThis_InWhatsThisMode();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#leaveWhatsThisMode)
    ///
    ///
    pub fn LeaveWhatsThisMode() void {
        C.QWhatsThis_LeaveWhatsThisMode();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8 ```
    pub fn ShowText(pos: ?*anyopaque, text: []const u8) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QWhatsThis_ShowText(@ptrCast(pos), text_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#hideText)
    ///
    ///
    pub fn HideText() void {
        C.QWhatsThis_HideText();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#createAction)
    ///
    ///
    pub fn CreateAction() ?*C.QAction {
        return C.QWhatsThis_CreateAction();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#showText)
    ///
    /// ``` pos: ?*C.QPoint, text: []const u8, w: ?*C.QWidget ```
    pub fn ShowText3(pos: ?*anyopaque, text: []const u8, w: ?*anyopaque) void {
        const text_str = C.struct_libqt_string{
            .len = text.len,
            .data = @constCast(text.ptr),
        };
        C.QWhatsThis_ShowText3(@ptrCast(pos), text_str, @ptrCast(w));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwhatsthis.html#createAction)
    ///
    /// ``` parent: ?*C.QObject ```
    pub fn CreateAction1(parent: ?*anyopaque) ?*C.QAction {
        return C.QWhatsThis_CreateAction1(@ptrCast(parent));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWhatsThis ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWhatsThis_Delete(@ptrCast(self));
    }
};
