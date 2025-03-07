const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qpluginmetadata.html
pub const qpluginmetadata = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qpluginmetadata.html#archRequirements)
    ///
    ///
    pub fn ArchRequirements() u8 {
        return C.QPluginMetaData_ArchRequirements();
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPluginMetaData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPluginMetaData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qstaticplugin.html
pub const qstaticplugin = struct {
    /// New constructs a new QStaticPlugin object.
    ///
    /// ``` other: ?*C.QStaticPlugin ```
    pub fn New(other: ?*anyopaque) ?*C.QStaticPlugin {
        return C.QStaticPlugin_new(@ptrCast(other));
    }

    /// New2 constructs a new QStaticPlugin object and invalidates the source QStaticPlugin object.
    ///
    /// ``` other: ?*C.QStaticPlugin ```
    pub fn New2(other: ?*anyopaque) ?*C.QStaticPlugin {
        return C.QStaticPlugin_new2(@ptrCast(other));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QStaticPlugin, other: ?*QStaticPlugin ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStaticPlugin_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QStaticPlugin, other: ?*QStaticPlugin ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QStaticPlugin_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qstaticplugin.html#metaData)
    ///
    /// ``` self: ?*C.QStaticPlugin ```
    pub fn MetaData(self: ?*anyopaque) ?*C.QJsonObject {
        return C.QStaticPlugin_MetaData(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QStaticPlugin ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QStaticPlugin_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpluginmetadata-header.html
pub const qpluginmetadata__header = struct {
    /// New constructs a new QPluginMetaData::Header object.
    ///
    /// ``` other: ?*C.QPluginMetaData__Header ```
    pub fn New(other: ?*anyopaque) ?*C.QPluginMetaData__Header {
        return C.QPluginMetaData__Header_new(@ptrCast(other));
    }

    /// New2 constructs a new QPluginMetaData::Header object and invalidates the source QPluginMetaData::Header object.
    ///
    /// ``` other: ?*C.QPluginMetaData__Header ```
    pub fn New2(other: ?*anyopaque) ?*C.QPluginMetaData__Header {
        return C.QPluginMetaData__Header_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPluginMetaData::Header object.
    ///
    /// ``` param1: ?*C.QPluginMetaData__Header ```
    pub fn New3(param1: ?*anyopaque) ?*C.QPluginMetaData__Header {
        return C.QPluginMetaData__Header_new3(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPluginMetaData__Header, other: ?*QPluginMetaData__Header ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__Header_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPluginMetaData__Header, other: ?*QPluginMetaData__Header ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__Header_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPluginMetaData__Header ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPluginMetaData__Header_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpluginmetadata-magicheader.html
pub const qpluginmetadata__magicheader = struct {
    /// New constructs a new QPluginMetaData::MagicHeader object.
    ///
    /// ``` other: ?*C.QPluginMetaData__MagicHeader ```
    pub fn New(other: ?*anyopaque) ?*C.QPluginMetaData__MagicHeader {
        return C.QPluginMetaData__MagicHeader_new(@ptrCast(other));
    }

    /// New2 constructs a new QPluginMetaData::MagicHeader object and invalidates the source QPluginMetaData::MagicHeader object.
    ///
    /// ``` other: ?*C.QPluginMetaData__MagicHeader ```
    pub fn New2(other: ?*anyopaque) ?*C.QPluginMetaData__MagicHeader {
        return C.QPluginMetaData__MagicHeader_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPluginMetaData::MagicHeader object.
    ///
    ///
    pub fn New3() ?*C.QPluginMetaData__MagicHeader {
        return C.QPluginMetaData__MagicHeader_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPluginMetaData__MagicHeader, other: ?*QPluginMetaData__MagicHeader ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__MagicHeader_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPluginMetaData__MagicHeader, other: ?*QPluginMetaData__MagicHeader ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__MagicHeader_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPluginMetaData__MagicHeader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPluginMetaData__MagicHeader_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qpluginmetadata-elfnoteheader.html
pub const qpluginmetadata__elfnoteheader = struct {
    /// New constructs a new QPluginMetaData::ElfNoteHeader object.
    ///
    /// ``` other: ?*C.QPluginMetaData__ElfNoteHeader ```
    pub fn New(other: ?*anyopaque) ?*C.QPluginMetaData__ElfNoteHeader {
        return C.QPluginMetaData__ElfNoteHeader_new(@ptrCast(other));
    }

    /// New2 constructs a new QPluginMetaData::ElfNoteHeader object and invalidates the source QPluginMetaData::ElfNoteHeader object.
    ///
    /// ``` other: ?*C.QPluginMetaData__ElfNoteHeader ```
    pub fn New2(other: ?*anyopaque) ?*C.QPluginMetaData__ElfNoteHeader {
        return C.QPluginMetaData__ElfNoteHeader_new2(@ptrCast(other));
    }

    /// New3 constructs a new QPluginMetaData::ElfNoteHeader object.
    ///
    /// ``` payloadSize: u32 ```
    pub fn New3(payloadSize: u32) ?*C.QPluginMetaData__ElfNoteHeader {
        return C.QPluginMetaData__ElfNoteHeader_new3(@intCast(payloadSize));
    }

    /// New4 constructs a new QPluginMetaData::ElfNoteHeader object.
    ///
    /// ``` param1: ?*C.QPluginMetaData__ElfNoteHeader ```
    pub fn New4(param1: ?*anyopaque) ?*C.QPluginMetaData__ElfNoteHeader {
        return C.QPluginMetaData__ElfNoteHeader_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QPluginMetaData__ElfNoteHeader, other: ?*QPluginMetaData__ElfNoteHeader ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__ElfNoteHeader_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QPluginMetaData__ElfNoteHeader, other: ?*QPluginMetaData__ElfNoteHeader ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QPluginMetaData__ElfNoteHeader_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QPluginMetaData__ElfNoteHeader ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QPluginMetaData__ElfNoteHeader_Delete(@ptrCast(self));
    }
};
