const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qdesktopservices.html
pub const qdesktopservices = struct {
    /// New constructs a new QDesktopServices object.
    ///
    /// ``` other: ?*C.QDesktopServices ```
    pub fn New(other: ?*anyopaque) ?*C.QDesktopServices {
        return C.QDesktopServices_new(@ptrCast(other));
    }

    /// New2 constructs a new QDesktopServices object and invalidates the source QDesktopServices object.
    ///
    /// ``` other: ?*C.QDesktopServices ```
    pub fn New2(other: ?*anyopaque) ?*C.QDesktopServices {
        return C.QDesktopServices_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QDesktopServices, other: ?*QDesktopServices ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDesktopServices_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QDesktopServices, other: ?*QDesktopServices ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QDesktopServices_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdesktopservices.html#openUrl)
    ///
    /// ``` url: ?*C.QUrl ```
    pub fn OpenUrl(url: ?*anyopaque) bool {
        return C.QDesktopServices_OpenUrl(@ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdesktopservices.html#setUrlHandler)
    ///
    /// ``` scheme: []const u8, receiver: ?*C.QObject, method: []const u8 ```
    pub fn SetUrlHandler(scheme: []const u8, receiver: ?*anyopaque, method: []const u8) void {
        const scheme_str = C.struct_libqt_string{
            .len = scheme.len,
            .data = @constCast(scheme.ptr),
        };
        const method_Cstring = @constCast(method.ptr);
        C.QDesktopServices_SetUrlHandler(scheme_str, @ptrCast(receiver), method_Cstring);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qdesktopservices.html#unsetUrlHandler)
    ///
    /// ``` scheme: []const u8 ```
    pub fn UnsetUrlHandler(scheme: []const u8) void {
        const scheme_str = C.struct_libqt_string{
            .len = scheme.len,
            .data = @constCast(scheme.ptr),
        };
        C.QDesktopServices_UnsetUrlHandler(scheme_str);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QDesktopServices ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QDesktopServices_Delete(@ptrCast(self));
    }
};
