const C = @import("qt6c");
const qlocale_enums = @import("libqlocale.zig").enums;
const qtimezone_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qtimezone.html
pub const qtimezone = struct {
    /// New constructs a new QTimeZone object.
    ///
    ///
    pub fn New() ?*C.QTimeZone {
        return C.QTimeZone_new();
    }

    /// New2 constructs a new QTimeZone object.
    ///
    /// ``` ianaId: []u8 ```
    pub fn New2(ianaId: []u8) ?*C.QTimeZone {
        const ianaId_str = C.struct_libqt_string{
            .len = ianaId.len,
            .data = @constCast(ianaId.ptr),
        };

        return C.QTimeZone_new2(ianaId_str);
    }

    /// New3 constructs a new QTimeZone object.
    ///
    /// ``` offsetSeconds: i32 ```
    pub fn New3(offsetSeconds: i32) ?*C.QTimeZone {
        return C.QTimeZone_new3(@intCast(offsetSeconds));
    }

    /// New4 constructs a new QTimeZone object.
    ///
    /// ``` zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8 ```
    pub fn New4(zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8) ?*C.QTimeZone {
        const zoneId_str = C.struct_libqt_string{
            .len = zoneId.len,
            .data = @constCast(zoneId.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const abbreviation_str = C.struct_libqt_string{
            .len = abbreviation.len,
            .data = @constCast(abbreviation.ptr),
        };

        return C.QTimeZone_new4(zoneId_str, @intCast(offsetSeconds), name_str, abbreviation_str);
    }

    /// New5 constructs a new QTimeZone object.
    ///
    /// ``` other: ?*C.QTimeZone ```
    pub fn New5(other: ?*anyopaque) ?*C.QTimeZone {
        return C.QTimeZone_new5(@ptrCast(other));
    }

    /// New6 constructs a new QTimeZone object.
    ///
    /// ``` zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8, territory: qlocale_enums.Country ```
    pub fn New6(zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8, territory: i64) ?*C.QTimeZone {
        const zoneId_str = C.struct_libqt_string{
            .len = zoneId.len,
            .data = @constCast(zoneId.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const abbreviation_str = C.struct_libqt_string{
            .len = abbreviation.len,
            .data = @constCast(abbreviation.ptr),
        };

        return C.QTimeZone_new6(zoneId_str, @intCast(offsetSeconds), name_str, abbreviation_str, @intCast(territory));
    }

    /// New7 constructs a new QTimeZone object.
    ///
    /// ``` zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8, territory: qlocale_enums.Country, comment: []const u8 ```
    pub fn New7(zoneId: []u8, offsetSeconds: i32, name: []const u8, abbreviation: []const u8, territory: i64, comment: []const u8) ?*C.QTimeZone {
        const zoneId_str = C.struct_libqt_string{
            .len = zoneId.len,
            .data = @constCast(zoneId.ptr),
        };
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const abbreviation_str = C.struct_libqt_string{
            .len = abbreviation.len,
            .data = @constCast(abbreviation.ptr),
        };
        const comment_str = C.struct_libqt_string{
            .len = comment.len,
            .data = @constCast(comment.ptr),
        };

        return C.QTimeZone_new7(zoneId_str, @intCast(offsetSeconds), name_str, abbreviation_str, @intCast(territory), comment_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#operator=)
    ///
    /// ``` self: ?*C.QTimeZone, other: ?*C.QTimeZone ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTimeZone_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#swap)
    ///
    /// ``` self: ?*C.QTimeZone, other: ?*C.QTimeZone ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QTimeZone_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#isValid)
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QTimeZone_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#id)
    ///
    /// ``` self: ?*C.QTimeZone, allocator: std.mem.Allocator ```
    pub fn Id(self: ?*anyopaque, allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QTimeZone_Id(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#territory)
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn Territory(self: ?*anyopaque) i64 {
        return C.QTimeZone_Territory(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#country)
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn Country(self: ?*anyopaque) i64 {
        return C.QTimeZone_Country(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#comment)
    ///
    /// ``` self: ?*C.QTimeZone, allocator: std.mem.Allocator ```
    pub fn Comment(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_Comment(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime, allocator: std.mem.Allocator ```
    pub fn DisplayName(self: ?*anyopaque, atDateTime: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayName(@ptrCast(self), @ptrCast(atDateTime));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, timeType: qtimezone_enums.TimeType, allocator: std.mem.Allocator ```
    pub fn DisplayNameWithTimeType(self: ?*anyopaque, timeType: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayNameWithTimeType(@ptrCast(self), @intCast(timeType));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#abbreviation)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime, allocator: std.mem.Allocator ```
    pub fn Abbreviation(self: ?*anyopaque, atDateTime: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_Abbreviation(@ptrCast(self), @ptrCast(atDateTime));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#offsetFromUtc)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime ```
    pub fn OffsetFromUtc(self: ?*anyopaque, atDateTime: ?*anyopaque) i32 {
        return C.QTimeZone_OffsetFromUtc(@ptrCast(self), @ptrCast(atDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#standardTimeOffset)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime ```
    pub fn StandardTimeOffset(self: ?*anyopaque, atDateTime: ?*anyopaque) i32 {
        return C.QTimeZone_StandardTimeOffset(@ptrCast(self), @ptrCast(atDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#daylightTimeOffset)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime ```
    pub fn DaylightTimeOffset(self: ?*anyopaque, atDateTime: ?*anyopaque) i32 {
        return C.QTimeZone_DaylightTimeOffset(@ptrCast(self), @ptrCast(atDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#hasDaylightTime)
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn HasDaylightTime(self: ?*anyopaque) bool {
        return C.QTimeZone_HasDaylightTime(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#isDaylightTime)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime ```
    pub fn IsDaylightTime(self: ?*anyopaque, atDateTime: ?*anyopaque) bool {
        return C.QTimeZone_IsDaylightTime(@ptrCast(self), @ptrCast(atDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#offsetData)
    ///
    /// ``` self: ?*C.QTimeZone, forDateTime: ?*C.QDateTime ```
    pub fn OffsetData(self: ?*anyopaque, forDateTime: ?*anyopaque) ?*C.QTimeZone__OffsetData {
        return C.QTimeZone_OffsetData(@ptrCast(self), @ptrCast(forDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#hasTransitions)
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn HasTransitions(self: ?*anyopaque) bool {
        return C.QTimeZone_HasTransitions(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#nextTransition)
    ///
    /// ``` self: ?*C.QTimeZone, afterDateTime: ?*C.QDateTime ```
    pub fn NextTransition(self: ?*anyopaque, afterDateTime: ?*anyopaque) ?*C.QTimeZone__OffsetData {
        return C.QTimeZone_NextTransition(@ptrCast(self), @ptrCast(afterDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#previousTransition)
    ///
    /// ``` self: ?*C.QTimeZone, beforeDateTime: ?*C.QDateTime ```
    pub fn PreviousTransition(self: ?*anyopaque, beforeDateTime: ?*anyopaque) ?*C.QTimeZone__OffsetData {
        return C.QTimeZone_PreviousTransition(@ptrCast(self), @ptrCast(beforeDateTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#transitions)
    ///
    /// ``` self: ?*C.QTimeZone, fromDateTime: ?*C.QDateTime, toDateTime: ?*C.QDateTime, allocator: std.mem.Allocator ```
    pub fn Transitions(self: ?*anyopaque, fromDateTime: ?*anyopaque, toDateTime: ?*anyopaque, allocator: std.mem.Allocator) []?*C.QTimeZone__OffsetData {
        const _arr: C.struct_libqt_list = C.QTimeZone_Transitions(@ptrCast(self), @ptrCast(fromDateTime), @ptrCast(toDateTime));
        defer C.libqt_free(_arr.data);
        const _ret = allocator.alloc(?*C.QTimeZone__OffsetData, _arr.len) catch @panic("Memory allocation failed");
        const _data: [*]?*C.QTimeZone__OffsetData = @ptrCast(@alignCast(_arr.data));
        for (0.._arr.len) |_i| {
            _ret[_i] = _data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#systemTimeZoneId)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn SystemTimeZoneId(allocator: std.mem.Allocator) []u8 {
        const _bytearray: C.struct_libqt_string = C.QTimeZone_SystemTimeZoneId();
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#systemTimeZone)
    ///
    ///
    pub fn SystemTimeZone() ?*C.QTimeZone {
        return C.QTimeZone_SystemTimeZone();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#utc)
    ///
    ///
    pub fn Utc() ?*C.QTimeZone {
        return C.QTimeZone_Utc();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#isTimeZoneIdAvailable)
    ///
    /// ``` ianaId: []u8 ```
    pub fn IsTimeZoneIdAvailable(ianaId: []u8) bool {
        const ianaId_str = C.struct_libqt_string{
            .len = ianaId.len,
            .data = @constCast(ianaId.ptr),
        };
        return C.QTimeZone_IsTimeZoneIdAvailable(ianaId_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#availableTimeZoneIds)
    ///
    /// ``` allocator: std.mem.Allocator ```
    pub fn AvailableTimeZoneIds(allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QTimeZone_AvailableTimeZoneIds();
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#availableTimeZoneIds)
    ///
    /// ``` territory: qlocale_enums.Country, allocator: std.mem.Allocator ```
    pub fn AvailableTimeZoneIdsWithTerritory(territory: i64, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QTimeZone_AvailableTimeZoneIdsWithTerritory(@intCast(territory));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#availableTimeZoneIds)
    ///
    /// ``` offsetSeconds: i32, allocator: std.mem.Allocator ```
    pub fn AvailableTimeZoneIdsWithOffsetSeconds(offsetSeconds: i32, allocator: std.mem.Allocator) [][]u8 {
        const _arr: C.struct_libqt_list = C.QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds(@intCast(offsetSeconds));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#ianaIdToWindowsId)
    ///
    /// ``` ianaId: []u8, allocator: std.mem.Allocator ```
    pub fn IanaIdToWindowsId(ianaId: []u8, allocator: std.mem.Allocator) []u8 {
        const ianaId_str = C.struct_libqt_string{
            .len = ianaId.len,
            .data = @constCast(ianaId.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QTimeZone_IanaIdToWindowsId(ianaId_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#windowsIdToDefaultIanaId)
    ///
    /// ``` windowsId: []u8, allocator: std.mem.Allocator ```
    pub fn WindowsIdToDefaultIanaId(windowsId: []u8, allocator: std.mem.Allocator) []u8 {
        const windowsId_str = C.struct_libqt_string{
            .len = windowsId.len,
            .data = @constCast(windowsId.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QTimeZone_WindowsIdToDefaultIanaId(windowsId_str);
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#windowsIdToDefaultIanaId)
    ///
    /// ``` windowsId: []u8, territory: qlocale_enums.Country, allocator: std.mem.Allocator ```
    pub fn WindowsIdToDefaultIanaId2(windowsId: []u8, territory: i64, allocator: std.mem.Allocator) []u8 {
        const windowsId_str = C.struct_libqt_string{
            .len = windowsId.len,
            .data = @constCast(windowsId.ptr),
        };
        const _bytearray: C.struct_libqt_string = C.QTimeZone_WindowsIdToDefaultIanaId2(windowsId_str, @intCast(territory));
        defer C.libqt_string_free(@constCast(&_bytearray));
        const _ret = allocator.alloc(u8, _bytearray.len) catch @panic("Memory allocation failed");
        for (0.._bytearray.len) |_i| {
            _ret[_i] = _bytearray.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#windowsIdToIanaIds)
    ///
    /// ``` windowsId: []u8, allocator: std.mem.Allocator ```
    pub fn WindowsIdToIanaIds(windowsId: []u8, allocator: std.mem.Allocator) [][]u8 {
        const windowsId_str = C.struct_libqt_string{
            .len = windowsId.len,
            .data = @constCast(windowsId.ptr),
        };
        const _arr: C.struct_libqt_list = C.QTimeZone_WindowsIdToIanaIds(windowsId_str);
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#windowsIdToIanaIds)
    ///
    /// ``` windowsId: []u8, territory: qlocale_enums.Country, allocator: std.mem.Allocator ```
    pub fn WindowsIdToIanaIds2(windowsId: []u8, territory: i64, allocator: std.mem.Allocator) [][]u8 {
        const windowsId_str = C.struct_libqt_string{
            .len = windowsId.len,
            .data = @constCast(windowsId.ptr),
        };
        const _arr: C.struct_libqt_list = C.QTimeZone_WindowsIdToIanaIds2(windowsId_str, @intCast(territory));
        const _str: [*]C.struct_libqt_string = @ptrCast(@alignCast(_arr.data));
        defer {
            for (0.._arr.len) |_i| {
                C.libqt_string_free(@ptrCast(&_str[_i]));
            }
            C.libqt_free(_arr.data);
        }
        const _ret = allocator.alloc([]u8, _arr.len) catch @panic("Memory allocation failed");
        for (0.._arr.len) |_i| {
            const _data = _str[_i];
            const _buf = allocator.alloc(u8, _data.len) catch @panic("Memory allocation failed");
            @memcpy(_buf, _data.data[0.._data.len]);
            _ret[_i] = _buf;
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime, nameType: qtimezone_enums.NameType, allocator: std.mem.Allocator ```
    pub fn DisplayName2(self: ?*anyopaque, atDateTime: ?*anyopaque, nameType: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayName2(@ptrCast(self), @ptrCast(atDateTime), @intCast(nameType));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, atDateTime: ?*C.QDateTime, nameType: qtimezone_enums.NameType, locale: ?*C.QLocale, allocator: std.mem.Allocator ```
    pub fn DisplayName3(self: ?*anyopaque, atDateTime: ?*anyopaque, nameType: i64, locale: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayName3(@ptrCast(self), @ptrCast(atDateTime), @intCast(nameType), @ptrCast(locale));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, timeType: qtimezone_enums.TimeType, nameType: qtimezone_enums.NameType, allocator: std.mem.Allocator ```
    pub fn DisplayName22(self: ?*anyopaque, timeType: i64, nameType: i64, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayName22(@ptrCast(self), @intCast(timeType), @intCast(nameType));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone.html#displayName)
    ///
    /// ``` self: ?*C.QTimeZone, timeType: qtimezone_enums.TimeType, nameType: qtimezone_enums.NameType, locale: ?*C.QLocale, allocator: std.mem.Allocator ```
    pub fn DisplayName32(self: ?*anyopaque, timeType: i64, nameType: i64, locale: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QTimeZone_DisplayName32(@ptrCast(self), @intCast(timeType), @intCast(nameType), @ptrCast(locale));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTimeZone ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTimeZone_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtimezone-offsetdata.html
pub const qtimezone__offsetdata = struct {
    /// New constructs a new QTimeZone::OffsetData object.
    ///
    /// ``` param1: ?*C.QTimeZone__OffsetData ```
    pub fn New(param1: ?*anyopaque) ?*C.QTimeZone__OffsetData {
        return C.QTimeZone__OffsetData_new(@ptrCast(param1));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtimezone__offsetdata.html#operator=)
    ///
    /// ``` self: ?*C.QTimeZone__OffsetData, param1: ?*C.QTimeZone__OffsetData ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QTimeZone__OffsetData_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTimeZone__OffsetData ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTimeZone__OffsetData_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qtimezone.html#types
pub const enums = struct {
    pub const QTimeZone = enum {
        pub const MinUtcOffsetSecs: i32 = -50400;
        pub const MaxUtcOffsetSecs: i32 = 50400;
    };

    pub const TimeType = enum {
        pub const StandardTime: i32 = 0;
        pub const DaylightTime: i32 = 1;
        pub const GenericTime: i32 = 2;
    };

    pub const NameType = enum {
        pub const DefaultName: i32 = 0;
        pub const LongName: i32 = 1;
        pub const ShortName: i32 = 2;
        pub const OffsetName: i32 = 3;
    };
};
