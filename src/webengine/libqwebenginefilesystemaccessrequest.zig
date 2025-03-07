const C = @import("qt6c");
const qwebenginefilesystemaccessrequest_enums = enums;

/// https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html
pub const qwebenginefilesystemaccessrequest = struct {
    /// New constructs a new QWebEngineFileSystemAccessRequest object.
    ///
    /// ``` other: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn New(other: ?*anyopaque) ?*C.QWebEngineFileSystemAccessRequest {
        return C.QWebEngineFileSystemAccessRequest_new(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#operator=)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest, other: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineFileSystemAccessRequest_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#swap)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest, other: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QWebEngineFileSystemAccessRequest_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#accept)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn Accept(self: ?*anyopaque) void {
        C.QWebEngineFileSystemAccessRequest_Accept(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#reject)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn Reject(self: ?*anyopaque) void {
        C.QWebEngineFileSystemAccessRequest_Reject(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#origin)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn Origin(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineFileSystemAccessRequest_Origin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#filePath)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn FilePath(self: ?*anyopaque) ?*C.QUrl {
        return C.QWebEngineFileSystemAccessRequest_FilePath(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#handleType)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn HandleType(self: ?*anyopaque) i64 {
        return C.QWebEngineFileSystemAccessRequest_HandleType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#accessFlags)
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn AccessFlags(self: ?*anyopaque) i64 {
        return C.QWebEngineFileSystemAccessRequest_AccessFlags(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QWebEngineFileSystemAccessRequest ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QWebEngineFileSystemAccessRequest_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qwebenginefilesystemaccessrequest.html#types
pub const enums = struct {
    pub const HandleType = enum {
        pub const File: i32 = 0;
        pub const Directory: i32 = 1;
    };

    pub const AccessFlag = enum {
        pub const Read: i32 = 1;
        pub const Write: i32 = 2;
    };
};
