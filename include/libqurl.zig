const C = @import("qt6c");
const qurl_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qurl.html
pub const qurl = struct {
    /// New constructs a new QUrl object.
    ///
    ///
    pub fn New() ?*C.QUrl {
        return C.QUrl_new();
    }

    /// New2 constructs a new QUrl object.
    ///
    /// ``` copyVal: ?*C.QUrl ```
    pub fn New2(copyVal: ?*anyopaque) ?*C.QUrl {
        return C.QUrl_new2(@ptrCast(copyVal));
    }

    /// New3 constructs a new QUrl object.
    ///
    /// ``` url: []const u8 ```
    pub fn New3(url: []const u8) ?*C.QUrl {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };

        return C.QUrl_new3(url_str);
    }

    /// New4 constructs a new QUrl object.
    ///
    /// ``` url: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn New4(url: []const u8, mode: i64) ?*C.QUrl {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };

        return C.QUrl_new4(url_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#operator=)
    ///
    /// ``` self: ?*C.QUrl, copyVal: ?*C.QUrl ```
    pub fn OperatorAssign(self: ?*anyopaque, copyVal: ?*anyopaque) void {
        C.QUrl_OperatorAssign(@ptrCast(self), @ptrCast(copyVal));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#operator=)
    ///
    /// ``` self: ?*C.QUrl, url: []const u8 ```
    pub fn OperatorAssignWithUrl(self: ?*anyopaque, url: []const u8) void {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };
        C.QUrl_OperatorAssignWithUrl(@ptrCast(self), url_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#swap)
    ///
    /// ``` self: ?*C.QUrl, other: ?*C.QUrl ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QUrl_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUrl)
    ///
    /// ``` self: ?*C.QUrl, url: []const u8 ```
    pub fn SetUrl(self: ?*anyopaque, url: []const u8) void {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };
        C.QUrl_SetUrl(@ptrCast(self), url_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#url)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Url(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Url(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toString)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ToString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_ToString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toDisplayString)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ToDisplayString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_ToDisplayString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toEncoded)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ToEncoded(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QUrl_ToEncoded(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromEncoded)
    ///
    /// ``` url: []u8 ```
    pub fn FromEncoded(url: []u8) ?*C.QUrl {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };
        return C.QUrl_FromEncoded(url_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromUserInput)
    ///
    /// ``` userInput: []const u8 ```
    pub fn FromUserInput(userInput: []const u8) ?*C.QUrl {
        const userInput_str = C.struct_libqt_string{
            .len = userInput.len,
            .data = @constCast(userInput.ptr),
        };
        return C.QUrl_FromUserInput(userInput_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isValid)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QUrl_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#errorString)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ErrorString(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_ErrorString(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isEmpty)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn IsEmpty(self: ?*anyopaque) bool {
        return C.QUrl_IsEmpty(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#clear)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn Clear(self: ?*anyopaque) void {
        C.QUrl_Clear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setScheme)
    ///
    /// ``` self: ?*C.QUrl, scheme: []const u8 ```
    pub fn SetScheme(self: ?*anyopaque, scheme: []const u8) void {
        const scheme_str = C.struct_libqt_string{
            .len = scheme.len,
            .data = @constCast(scheme.ptr),
        };
        C.QUrl_SetScheme(@ptrCast(self), scheme_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#scheme)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Scheme(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Scheme(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setAuthority)
    ///
    /// ``` self: ?*C.QUrl, authority: []const u8 ```
    pub fn SetAuthority(self: ?*anyopaque, authority: []const u8) void {
        const authority_str = C.struct_libqt_string{
            .len = authority.len,
            .data = @constCast(authority.ptr),
        };
        C.QUrl_SetAuthority(@ptrCast(self), authority_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#authority)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Authority(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Authority(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUserInfo)
    ///
    /// ``` self: ?*C.QUrl, userInfo: []const u8 ```
    pub fn SetUserInfo(self: ?*anyopaque, userInfo: []const u8) void {
        const userInfo_str = C.struct_libqt_string{
            .len = userInfo.len,
            .data = @constCast(userInfo.ptr),
        };
        C.QUrl_SetUserInfo(@ptrCast(self), userInfo_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#userInfo)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn UserInfo(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_UserInfo(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUserName)
    ///
    /// ``` self: ?*C.QUrl, userName: []const u8 ```
    pub fn SetUserName(self: ?*anyopaque, userName: []const u8) void {
        const userName_str = C.struct_libqt_string{
            .len = userName.len,
            .data = @constCast(userName.ptr),
        };
        C.QUrl_SetUserName(@ptrCast(self), userName_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#userName)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn UserName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_UserName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setPassword)
    ///
    /// ``` self: ?*C.QUrl, password: []const u8 ```
    pub fn SetPassword(self: ?*anyopaque, password: []const u8) void {
        const password_str = C.struct_libqt_string{
            .len = password.len,
            .data = @constCast(password.ptr),
        };
        C.QUrl_SetPassword(@ptrCast(self), password_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#password)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Password(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Password(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setHost)
    ///
    /// ``` self: ?*C.QUrl, host: []const u8 ```
    pub fn SetHost(self: ?*anyopaque, host: []const u8) void {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };
        C.QUrl_SetHost(@ptrCast(self), host_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#host)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Host(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Host(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setPort)
    ///
    /// ``` self: ?*C.QUrl, port: i32 ```
    pub fn SetPort(self: ?*anyopaque, port: i32) void {
        C.QUrl_SetPort(@ptrCast(self), @intCast(port));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#port)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn Port(self: ?*anyopaque) i32 {
        return C.QUrl_Port(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setPath)
    ///
    /// ``` self: ?*C.QUrl, path: []const u8 ```
    pub fn SetPath(self: ?*anyopaque, path: []const u8) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QUrl_SetPath(@ptrCast(self), path_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#path)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Path(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Path(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fileName)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn FileName(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_FileName(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#hasQuery)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn HasQuery(self: ?*anyopaque) bool {
        return C.QUrl_HasQuery(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setQuery)
    ///
    /// ``` self: ?*C.QUrl, query: []const u8 ```
    pub fn SetQuery(self: ?*anyopaque, query: []const u8) void {
        const query_str = C.struct_libqt_string{
            .len = query.len,
            .data = @constCast(query.ptr),
        };
        C.QUrl_SetQuery(@ptrCast(self), query_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setQuery)
    ///
    /// ``` self: ?*C.QUrl, query: ?*C.QUrlQuery ```
    pub fn SetQueryWithQuery(self: ?*anyopaque, query: ?*anyopaque) void {
        C.QUrl_SetQueryWithQuery(@ptrCast(self), @ptrCast(query));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#query)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Query(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Query(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#hasFragment)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn HasFragment(self: ?*anyopaque) bool {
        return C.QUrl_HasFragment(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fragment)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn Fragment(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Fragment(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setFragment)
    ///
    /// ``` self: ?*C.QUrl, fragment: []const u8 ```
    pub fn SetFragment(self: ?*anyopaque, fragment: []const u8) void {
        const fragment_str = C.struct_libqt_string{
            .len = fragment.len,
            .data = @constCast(fragment.ptr),
        };
        C.QUrl_SetFragment(@ptrCast(self), fragment_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#resolved)
    ///
    /// ``` self: ?*C.QUrl, relative: ?*C.QUrl ```
    pub fn Resolved(self: ?*anyopaque, relative: ?*anyopaque) ?*C.QUrl {
        return C.QUrl_Resolved(@ptrCast(self), @ptrCast(relative));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isRelative)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn IsRelative(self: ?*anyopaque) bool {
        return C.QUrl_IsRelative(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isParentOf)
    ///
    /// ``` self: ?*C.QUrl, url: ?*C.QUrl ```
    pub fn IsParentOf(self: ?*anyopaque, url: ?*anyopaque) bool {
        return C.QUrl_IsParentOf(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isLocalFile)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn IsLocalFile(self: ?*anyopaque) bool {
        return C.QUrl_IsLocalFile(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromLocalFile)
    ///
    /// ``` localfile: []const u8 ```
    pub fn FromLocalFile(localfile: []const u8) ?*C.QUrl {
        const localfile_str = C.struct_libqt_string{
            .len = localfile.len,
            .data = @constCast(localfile.ptr),
        };
        return C.QUrl_FromLocalFile(localfile_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toLocalFile)
    ///
    /// ``` self: ?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ToLocalFile(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_ToLocalFile(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#detach)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QUrl_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#isDetached)
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn IsDetached(self: ?*anyopaque) bool {
        return C.QUrl_IsDetached(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#operator<)
    ///
    /// ``` self: ?*C.QUrl, url: ?*C.QUrl ```
    pub fn OperatorLesser(self: ?*anyopaque, url: ?*anyopaque) bool {
        return C.QUrl_OperatorLesser(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#operator==)
    ///
    /// ``` self: ?*C.QUrl, url: ?*C.QUrl ```
    pub fn OperatorEqual(self: ?*anyopaque, url: ?*anyopaque) bool {
        return C.QUrl_OperatorEqual(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#operator!=)
    ///
    /// ``` self: ?*C.QUrl, url: ?*C.QUrl ```
    pub fn OperatorNotEqual(self: ?*anyopaque, url: ?*anyopaque) bool {
        return C.QUrl_OperatorNotEqual(@ptrCast(self), @ptrCast(url));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromPercentEncoding)
    ///
    /// ``` param1: []u8, allocator: std.mem.Allocator ```
    pub fn FromPercentEncoding(param1: []u8, allocator: std.mem.Allocator) []const u8 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        const _str = C.QUrl_FromPercentEncoding(param1_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toPercentEncoding)
    ///
    /// ``` param1: []const u8, allocator: std.mem.Allocator ```
    pub fn ToPercentEncoding(param1: []const u8, allocator: std.mem.Allocator) []u8 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QUrl_ToPercentEncoding(param1_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromAce)
    ///
    /// ``` domain: []u8, allocator: std.mem.Allocator ```
    pub fn FromAce(domain: []u8, allocator: std.mem.Allocator) []const u8 {
        const domain_str = C.struct_libqt_string{
            .len = domain.len,
            .data = @constCast(domain.ptr),
        };
        const _str = C.QUrl_FromAce(domain_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toAce)
    ///
    /// ``` domain: []const u8, allocator: std.mem.Allocator ```
    pub fn ToAce(domain: []const u8, allocator: std.mem.Allocator) []u8 {
        const domain_str = C.struct_libqt_string{
            .len = domain.len,
            .data = @constCast(domain.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QUrl_ToAce(domain_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#idnWhitelist)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn IdnWhitelist(allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QUrl_IdnWhitelist();
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toStringList)
    ///
    /// ``` uris: []?*C.QUrl, allocator: std.mem.Allocator ```
    pub fn ToStringList(uris: []?*C.QUrl, allocator: std.mem.Allocator) [][]const u8 {
        const uris_list = C.struct_libqt_list{
            .len = uris.len,
            .data = @ptrCast(uris.ptr),
        };
        const _arr: C.struct_libqt_list = C.QUrl_ToStringList(uris_list);
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]const u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromStringList)
    ///
    /// ``` uris: [][]const u8, allocator: std.mem.Allocator ```
    pub fn FromStringList(uris: [][]const u8, allocator: std.mem.Allocator) []?*C.QUrl {
        var uris_arr = allocator.alloc(C.struct_libqt_string, uris.len) catch @panic("Memory allocation failed");
        defer allocator.free(uris_arr);
        for (uris, 0..uris.len) |item, _i| {
            uris_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const uris_list = C.struct_libqt_list{
            .len = uris.len,
            .data = uris_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QUrl_FromStringList(uris_list);
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QUrl, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QUrl = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setIdnWhitelist)
    ///
    /// ``` idnWhitelist: [][]const u8, allocator: std.mem.Allocator ```
    pub fn SetIdnWhitelist(idnWhitelist: [][]const u8, allocator: std.mem.Allocator) void {
        var idnWhitelist_arr = allocator.alloc(C.struct_libqt_string, idnWhitelist.len) catch @panic("Memory allocation failed");
        defer allocator.free(idnWhitelist_arr);
        for (idnWhitelist, 0..idnWhitelist.len) |item, _i| {
            idnWhitelist_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const idnWhitelist_list = C.struct_libqt_list{
            .len = idnWhitelist.len,
            .data = idnWhitelist_arr.ptr,
        };
        C.QUrl_SetIdnWhitelist(idnWhitelist_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUrl)
    ///
    /// ``` self: ?*C.QUrl, url: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetUrl2(self: ?*anyopaque, url: []const u8, mode: i64) void {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };
        C.QUrl_SetUrl2(@ptrCast(self), url_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromEncoded)
    ///
    /// ``` url: []u8, mode: qurl_enums.ParsingMode ```
    pub fn FromEncoded2(url: []u8, mode: i64) ?*C.QUrl {
        const url_str = C.struct_libqt_string{
            .len = url.len,
            .data = @constCast(url.ptr),
        };
        return C.QUrl_FromEncoded2(url_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromUserInput)
    ///
    /// ``` userInput: []const u8, workingDirectory: []const u8 ```
    pub fn FromUserInput2(userInput: []const u8, workingDirectory: []const u8) ?*C.QUrl {
        const userInput_str = C.struct_libqt_string{
            .len = userInput.len,
            .data = @constCast(userInput.ptr),
        };
        const workingDirectory_str = C.struct_libqt_string{
            .len = workingDirectory.len,
            .data = @constCast(workingDirectory.ptr),
        };
        return C.QUrl_FromUserInput2(userInput_str, workingDirectory_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromUserInput)
    ///
    /// ``` userInput: []const u8, workingDirectory: []const u8, options: i32 ```
    pub fn FromUserInput3(userInput: []const u8, workingDirectory: []const u8, options: i64) ?*C.QUrl {
        const userInput_str = C.struct_libqt_string{
            .len = userInput.len,
            .data = @constCast(userInput.ptr),
        };
        const workingDirectory_str = C.struct_libqt_string{
            .len = workingDirectory.len,
            .data = @constCast(workingDirectory.ptr),
        };
        return C.QUrl_FromUserInput3(userInput_str, workingDirectory_str, @intCast(options));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setAuthority)
    ///
    /// ``` self: ?*C.QUrl, authority: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetAuthority2(self: ?*anyopaque, authority: []const u8, mode: i64) void {
        const authority_str = C.struct_libqt_string{
            .len = authority.len,
            .data = @constCast(authority.ptr),
        };
        C.QUrl_SetAuthority2(@ptrCast(self), authority_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#authority)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn Authority1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Authority1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUserInfo)
    ///
    /// ``` self: ?*C.QUrl, userInfo: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetUserInfo2(self: ?*anyopaque, userInfo: []const u8, mode: i64) void {
        const userInfo_str = C.struct_libqt_string{
            .len = userInfo.len,
            .data = @constCast(userInfo.ptr),
        };
        C.QUrl_SetUserInfo2(@ptrCast(self), userInfo_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#userInfo)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn UserInfo1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_UserInfo1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setUserName)
    ///
    /// ``` self: ?*C.QUrl, userName: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetUserName2(self: ?*anyopaque, userName: []const u8, mode: i64) void {
        const userName_str = C.struct_libqt_string{
            .len = userName.len,
            .data = @constCast(userName.ptr),
        };
        C.QUrl_SetUserName2(@ptrCast(self), userName_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#userName)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn UserName1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_UserName1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setPassword)
    ///
    /// ``` self: ?*C.QUrl, password: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetPassword2(self: ?*anyopaque, password: []const u8, mode: i64) void {
        const password_str = C.struct_libqt_string{
            .len = password.len,
            .data = @constCast(password.ptr),
        };
        C.QUrl_SetPassword2(@ptrCast(self), password_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#password)
    ///
    /// ``` self: ?*C.QUrl, param1: u32, allocator: std.mem.Allocator ```
    pub fn Password1(self: ?*anyopaque, param1: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Password1(@ptrCast(self), @intCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setHost)
    ///
    /// ``` self: ?*C.QUrl, host: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetHost2(self: ?*anyopaque, host: []const u8, mode: i64) void {
        const host_str = C.struct_libqt_string{
            .len = host.len,
            .data = @constCast(host.ptr),
        };
        C.QUrl_SetHost2(@ptrCast(self), host_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#host)
    ///
    /// ``` self: ?*C.QUrl, param1: u32, allocator: std.mem.Allocator ```
    pub fn Host1(self: ?*anyopaque, param1: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Host1(@ptrCast(self), @intCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#port)
    ///
    /// ``` self: ?*C.QUrl, defaultPort: i32 ```
    pub fn Port1(self: ?*anyopaque, defaultPort: i32) i32 {
        return C.QUrl_Port1(@ptrCast(self), @intCast(defaultPort));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setPath)
    ///
    /// ``` self: ?*C.QUrl, path: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetPath2(self: ?*anyopaque, path: []const u8, mode: i64) void {
        const path_str = C.struct_libqt_string{
            .len = path.len,
            .data = @constCast(path.ptr),
        };
        C.QUrl_SetPath2(@ptrCast(self), path_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#path)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn Path1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Path1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fileName)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn FileName1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_FileName1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setQuery)
    ///
    /// ``` self: ?*C.QUrl, query: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetQuery2(self: ?*anyopaque, query: []const u8, mode: i64) void {
        const query_str = C.struct_libqt_string{
            .len = query.len,
            .data = @constCast(query.ptr),
        };
        C.QUrl_SetQuery2(@ptrCast(self), query_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#query)
    ///
    /// ``` self: ?*C.QUrl, param1: u32, allocator: std.mem.Allocator ```
    pub fn Query1(self: ?*anyopaque, param1: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Query1(@ptrCast(self), @intCast(param1));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fragment)
    ///
    /// ``` self: ?*C.QUrl, options: u32, allocator: std.mem.Allocator ```
    pub fn Fragment1(self: ?*anyopaque, options: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QUrl_Fragment1(@ptrCast(self), @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#setFragment)
    ///
    /// ``` self: ?*C.QUrl, fragment: []const u8, mode: qurl_enums.ParsingMode ```
    pub fn SetFragment2(self: ?*anyopaque, fragment: []const u8, mode: i64) void {
        const fragment_str = C.struct_libqt_string{
            .len = fragment.len,
            .data = @constCast(fragment.ptr),
        };
        C.QUrl_SetFragment2(@ptrCast(self), fragment_str, @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toPercentEncoding)
    ///
    /// ``` param1: []const u8, exclude: []u8, allocator: std.mem.Allocator ```
    pub fn ToPercentEncoding2(param1: []const u8, exclude: []u8, allocator: std.mem.Allocator) []u8 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        const exclude_str = C.struct_libqt_string{
            .len = exclude.len,
            .data = @constCast(exclude.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QUrl_ToPercentEncoding2(param1_str, exclude_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toPercentEncoding)
    ///
    /// ``` param1: []const u8, exclude: []u8, include: []u8, allocator: std.mem.Allocator ```
    pub fn ToPercentEncoding3(param1: []const u8, exclude: []u8, include: []u8, allocator: std.mem.Allocator) []u8 {
        const param1_str = C.struct_libqt_string{
            .len = param1.len,
            .data = @constCast(param1.ptr),
        };
        const exclude_str = C.struct_libqt_string{
            .len = exclude.len,
            .data = @constCast(exclude.ptr),
        };
        const include_str = C.struct_libqt_string{
            .len = include.len,
            .data = @constCast(include.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QUrl_ToPercentEncoding3(param1_str, exclude_str, include_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromAce)
    ///
    /// ``` domain: []u8, options: u32, allocator: std.mem.Allocator ```
    pub fn FromAce2(domain: []u8, options: i64, allocator: std.mem.Allocator) []const u8 {
        const domain_str = C.struct_libqt_string{
            .len = domain.len,
            .data = @constCast(domain.ptr),
        };
        const _str = C.QUrl_FromAce2(domain_str, @intCast(options));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#toAce)
    ///
    /// ``` domain: []const u8, options: u32, allocator: std.mem.Allocator ```
    pub fn ToAce2(domain: []const u8, options: i64, allocator: std.mem.Allocator) []u8 {
        const domain_str = C.struct_libqt_string{
            .len = domain.len,
            .data = @constCast(domain.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QUrl_ToAce2(domain_str, @intCast(options));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qurl.html#fromStringList)
    ///
    /// ``` uris: [][]const u8, mode: qurl_enums.ParsingMode, allocator: std.mem.Allocator ```
    pub fn FromStringList2(uris: [][]const u8, mode: i64, allocator: std.mem.Allocator) []?*C.QUrl {
        var uris_arr = allocator.alloc(C.struct_libqt_string, uris.len) catch @panic("Memory allocation failed");
        defer allocator.free(uris_arr);
        for (uris, 0..uris.len) |item, _i| {
            uris_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const uris_list = C.struct_libqt_list{
            .len = uris.len,
            .data = uris_arr.ptr,
        };
        const _arr: C.struct_libqt_list = C.QUrl_FromStringList2(uris_list, @intCast(mode));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QUrl, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QUrl = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QUrl ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QUrl_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qurl.html#types
pub const enums = struct {
    pub const ParsingMode = enum {
        pub const TolerantMode: i32 = 0;
        pub const StrictMode: i32 = 1;
        pub const DecodedMode: i32 = 2;
    };

    pub const UrlFormattingOption = enum {
        pub const None: u32 = 0;
        pub const RemoveScheme: u32 = 1;
        pub const RemovePassword: u32 = 2;
        pub const RemoveUserInfo: u32 = 6;
        pub const RemovePort: u32 = 8;
        pub const RemoveAuthority: u32 = 30;
        pub const RemovePath: u32 = 32;
        pub const RemoveQuery: u32 = 64;
        pub const RemoveFragment: u32 = 128;
        pub const PreferLocalFile: u32 = 512;
        pub const StripTrailingSlash: u32 = 1024;
        pub const RemoveFilename: u32 = 2048;
        pub const NormalizePathSegments: u32 = 4096;
    };

    pub const ComponentFormattingOption = enum {
        pub const PrettyDecoded: u32 = 0;
        pub const EncodeSpaces: u32 = 1048576;
        pub const EncodeUnicode: u32 = 2097152;
        pub const EncodeDelimiters: u32 = 12582912;
        pub const EncodeReserved: u32 = 16777216;
        pub const DecodeReserved: u32 = 33554432;
        pub const FullyEncoded: u32 = 32505856;
        pub const FullyDecoded: u32 = 133169152;
    };

    pub const UserInputResolutionOption = enum {
        pub const DefaultResolution: i32 = 0;
        pub const AssumeLocalFile: i32 = 1;
    };

    pub const AceProcessingOption = enum {
        pub const IgnoreIDNWhitelist: u32 = 1;
        pub const AceTransitionalProcessing: u32 = 2;
    };
};
