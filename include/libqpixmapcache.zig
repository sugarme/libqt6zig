const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qpixmapcache.html
pub const qpixmapcache = struct {
    /// New constructs a new QPixmapCache object.
    ///
    /// ``` other: ?*C.QPixmapCache ```
    pub fn New(other: ?*anyopaque) ?*C.QPixmapCache {
        return C.QPixmapCache_new(@ptrCast(other));
    }

    /// New2 constructs a new QPixmapCache object and invalidates the source QPixmapCache object.
    ///
    /// ``` other: ?*C.QPixmapCache ```
    pub fn New2(other: ?*anyopaque) ?*C.QPixmapCache {
        return C.QPixmapCache_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPixmapCache, other: ?*QPixmapCache ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixmapCache_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPixmapCache, other: ?*QPixmapCache ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixmapCache_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#cacheLimit)
    ///
    ///
    pub fn CacheLimit() i32 {
        return C.QPixmapCache_CacheLimit();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#setCacheLimit)
    ///
    /// ``` cacheLimit: i32 ```
    pub fn SetCacheLimit(cacheLimit: i32) void {
        C.QPixmapCache_SetCacheLimit(@intCast(cacheLimit));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#find)
    ///
    /// ``` key: []const u8, pixmap: ?*C.QPixmap ```
    pub fn Find(key: []const u8, pixmap: ?*anyopaque) bool {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QPixmapCache_Find(key_str, @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#find)
    ///
    /// ``` key: ?*C.QPixmapCache__Key, pixmap: ?*C.QPixmap ```
    pub fn Find2(key: ?*anyopaque, pixmap: ?*anyopaque) bool {
        return C.QPixmapCache_Find2(@ptrCast(key), @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#insert)
    ///
    /// ``` key: []const u8, pixmap: ?*C.QPixmap ```
    pub fn Insert(key: []const u8, pixmap: ?*anyopaque) bool {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        return C.QPixmapCache_Insert(key_str, @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#insert)
    ///
    /// ``` pixmap: ?*C.QPixmap ```
    pub fn InsertWithPixmap(pixmap: ?*anyopaque) ?*C.QPixmapCache__Key {
        return C.QPixmapCache_InsertWithPixmap(@ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#replace)
    ///
    /// ``` key: ?*C.QPixmapCache__Key, pixmap: ?*C.QPixmap ```
    pub fn Replace(key: ?*anyopaque, pixmap: ?*anyopaque) bool {
        return C.QPixmapCache_Replace(@ptrCast(key), @ptrCast(pixmap));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#remove)
    ///
    /// ``` key: []const u8 ```
    pub fn Remove(key: []const u8) void {
        const key_str = C.struct_libqt_string{
            .len = key.len,
            .data = @constCast(key.ptr),
        };
        C.QPixmapCache_Remove(key_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#remove)
    ///
    /// ``` key: ?*C.QPixmapCache__Key ```
    pub fn RemoveWithKey(key: ?*anyopaque) void {
        C.QPixmapCache_RemoveWithKey(@ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache.html#clear)
    ///
    ///
    pub fn Clear() void {
        C.QPixmapCache_Clear();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPixmapCache ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPixmapCache_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpixmapcache-key.html
pub const qpixmapcache__key = struct {
    /// New constructs a new QPixmapCache::Key object.
    ///
    ///
    pub fn New() ?*C.QPixmapCache__Key {
        return C.QPixmapCache__Key_new();
    }

    /// New2 constructs a new QPixmapCache::Key object.
    ///
    /// ``` other: ?*C.QPixmapCache__Key ```
    pub fn New2(other: ?*anyopaque) ?*C.QPixmapCache__Key {
        return C.QPixmapCache__Key_new2(@ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache__key.html#operator==)
    ///
    /// ``` self: ?*C.QPixmapCache__Key, key: ?*C.QPixmapCache__Key ```
    pub fn OperatorEqual(self: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QPixmapCache__Key_OperatorEqual(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache__key.html#operator!=)
    ///
    /// ``` self: ?*C.QPixmapCache__Key, key: ?*C.QPixmapCache__Key ```
    pub fn OperatorNotEqual(self: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QPixmapCache__Key_OperatorNotEqual(@ptrCast(self), @ptrCast(key));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache__key.html#operator=)
    ///
    /// ``` self: ?*C.QPixmapCache__Key, other: ?*C.QPixmapCache__Key ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixmapCache__Key_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache__key.html#swap)
    ///
    /// ``` self: ?*C.QPixmapCache__Key, other: ?*C.QPixmapCache__Key ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPixmapCache__Key_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qpixmapcache__key.html#isValid)
    ///
    /// ``` self: ?*C.QPixmapCache__Key ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QPixmapCache__Key_IsValid(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPixmapCache__Key ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPixmapCache__Key_Delete(@ptrCast(self));
    }
};
