const C = @import("qt6c");
const qcommandlineparser_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qcommandlineparser.html
pub const qcommandlineparser = struct {
    /// New constructs a new QCommandLineParser object.
    ///
    ///
    pub fn New() ?*C.QCommandLineParser {
        return C.QCommandLineParser_new();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr(sourceText: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const _str = C.QCommandLineParser_Tr(sourceText_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#setSingleDashWordOptionMode)
    ///
    /// ``` self: ?*C.QCommandLineParser, parsingMode: qcommandlineparser_enums.SingleDashWordOptionMode ```
    pub fn SetSingleDashWordOptionMode(self: ?*anyopaque, parsingMode: i64) void {
        C.QCommandLineParser_SetSingleDashWordOptionMode(@ptrCast(self), @intCast(parsingMode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#setOptionsAfterPositionalArgumentsMode)
    ///
    /// ``` self: ?*C.QCommandLineParser, mode: qcommandlineparser_enums.OptionsAfterPositionalArgumentsMode ```
    pub fn SetOptionsAfterPositionalArgumentsMode(self: ?*anyopaque, mode: i64) void {
        C.QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(@ptrCast(self), @intCast(mode));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addOption)
    ///
    /// ``` self: ?*C.QCommandLineParser, commandLineOption: ?*C.QCommandLineOption ```
    pub fn AddOption(self: ?*anyopaque, commandLineOption: ?*anyopaque) bool {
        return C.QCommandLineParser_AddOption(@ptrCast(self), @ptrCast(commandLineOption));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addOptions)
    ///
    /// ``` self: ?*C.QCommandLineParser, options: []?*C.QCommandLineOption ```
    pub fn AddOptions(self: ?*anyopaque, options: []?*C.QCommandLineOption) bool {
        const options_list = C.struct_libqt_list{
            .len = options.len,
            .data = @ptrCast(options.ptr),
        };
        return C.QCommandLineParser_AddOptions(@ptrCast(self), options_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addVersionOption)
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn AddVersionOption(self: ?*anyopaque) ?*C.QCommandLineOption {
        return C.QCommandLineParser_AddVersionOption(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addHelpOption)
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn AddHelpOption(self: ?*anyopaque) ?*C.QCommandLineOption {
        return C.QCommandLineParser_AddHelpOption(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#setApplicationDescription)
    ///
    /// ``` self: ?*C.QCommandLineParser, description: []const u8 ```
    pub fn SetApplicationDescription(self: ?*anyopaque, description: []const u8) void {
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        C.QCommandLineParser_SetApplicationDescription(@ptrCast(self), description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#applicationDescription)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn ApplicationDescription(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCommandLineParser_ApplicationDescription(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addPositionalArgument)
    ///
    /// ``` self: ?*C.QCommandLineParser, name: []const u8, description: []const u8 ```
    pub fn AddPositionalArgument(self: ?*anyopaque, name: []const u8, description: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        C.QCommandLineParser_AddPositionalArgument(@ptrCast(self), name_str, description_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#clearPositionalArguments)
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn ClearPositionalArguments(self: ?*anyopaque) void {
        C.QCommandLineParser_ClearPositionalArguments(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#process)
    ///
    /// ``` self: ?*C.QCommandLineParser, arguments: [][]const u8, allocator: std.mem.Allocator ```
    pub fn Process(self: ?*anyopaque, arguments: [][]const u8, allocator: std.mem.Allocator) void {
        var arguments_arr = allocator.alloc(C.struct_libqt_string, arguments.len) catch @panic("Memory allocation failed");
        defer allocator.free(arguments_arr);
        for (arguments, 0..arguments.len) |item, _i| {
            arguments_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const arguments_list = C.struct_libqt_list{
            .len = arguments.len,
            .data = arguments_arr.ptr,
        };
        C.QCommandLineParser_Process(@ptrCast(self), arguments_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#process)
    ///
    /// ``` self: ?*C.QCommandLineParser, app: ?*C.QCoreApplication ```
    pub fn ProcessWithApp(self: ?*anyopaque, app: ?*anyopaque) void {
        C.QCommandLineParser_ProcessWithApp(@ptrCast(self), @ptrCast(app));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#parse)
    ///
    /// ``` self: ?*C.QCommandLineParser, arguments: [][]const u8, allocator: std.mem.Allocator ```
    pub fn Parse(self: ?*anyopaque, arguments: [][]const u8, allocator: std.mem.Allocator) bool {
        var arguments_arr = allocator.alloc(C.struct_libqt_string, arguments.len) catch @panic("Memory allocation failed");
        defer allocator.free(arguments_arr);
        for (arguments, 0..arguments.len) |item, _i| {
            arguments_arr[_i] = .{
                .len = item.len,
                .data = @ptrCast(@constCast(item.ptr)),
            };
        }
        const arguments_list = C.struct_libqt_list{
            .len = arguments.len,
            .data = arguments_arr.ptr,
        };
        return C.QCommandLineParser_Parse(@ptrCast(self), arguments_list);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#errorText)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn ErrorText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCommandLineParser_ErrorText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#isSet)
    ///
    /// ``` self: ?*C.QCommandLineParser, name: []const u8 ```
    pub fn IsSet(self: ?*anyopaque, name: []const u8) bool {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        return C.QCommandLineParser_IsSet(@ptrCast(self), name_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#value)
    ///
    /// ``` self: ?*C.QCommandLineParser, name: []const u8, allocator: std.mem.Allocator ```
    pub fn Value(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) []const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _str = C.QCommandLineParser_Value(@ptrCast(self), name_str);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#values)
    ///
    /// ``` self: ?*C.QCommandLineParser, name: []const u8, allocator: std.mem.Allocator ```
    pub fn Values(self: ?*anyopaque, name: []const u8, allocator: std.mem.Allocator) [][]const u8 {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const _arr: C.struct_libqt_list = C.QCommandLineParser_Values(@ptrCast(self), name_str);
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#isSet)
    ///
    /// ``` self: ?*C.QCommandLineParser, option: ?*C.QCommandLineOption ```
    pub fn IsSetWithOption(self: ?*anyopaque, option: ?*anyopaque) bool {
        return C.QCommandLineParser_IsSetWithOption(@ptrCast(self), @ptrCast(option));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#value)
    ///
    /// ``` self: ?*C.QCommandLineParser, option: ?*C.QCommandLineOption, allocator: std.mem.Allocator ```
    pub fn ValueWithOption(self: ?*anyopaque, option: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCommandLineParser_ValueWithOption(@ptrCast(self), @ptrCast(option));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#values)
    ///
    /// ``` self: ?*C.QCommandLineParser, option: ?*C.QCommandLineOption, allocator: std.mem.Allocator ```
    pub fn ValuesWithOption(self: ?*anyopaque, option: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QCommandLineParser_ValuesWithOption(@ptrCast(self), @ptrCast(option));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#positionalArguments)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn PositionalArguments(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QCommandLineParser_PositionalArguments(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#optionNames)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn OptionNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QCommandLineParser_OptionNames(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#unknownOptionNames)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn UnknownOptionNames(self: ?*anyopaque, allocator: std.mem.Allocator) [][]const u8 {
        const _arr: C.struct_libqt_list = C.QCommandLineParser_UnknownOptionNames(@ptrCast(self));
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

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#showVersion)
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn ShowVersion(self: ?*anyopaque) void {
        C.QCommandLineParser_ShowVersion(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#showHelp)
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn ShowHelp(self: ?*anyopaque) void {
        C.QCommandLineParser_ShowHelp(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#helpText)
    ///
    /// ``` self: ?*C.QCommandLineParser, allocator: std.mem.Allocator ```
    pub fn HelpText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QCommandLineParser_HelpText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator ```
    pub fn Tr2(sourceText: []const u8, disambiguation: []const u8, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QCommandLineParser_Tr2(sourceText_Cstring, disambiguation_Cstring);
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qobject.html#tr)
    ///
    /// ``` sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator ```
    pub fn Tr3(sourceText: []const u8, disambiguation: []const u8, n: i32, allocator: std.mem.Allocator) []const u8 {
        const sourceText_Cstring = @constCast(sourceText.ptr);
        const disambiguation_Cstring = @constCast(disambiguation.ptr);
        const _str = C.QCommandLineParser_Tr3(sourceText_Cstring, disambiguation_Cstring, @intCast(n));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#addPositionalArgument)
    ///
    /// ``` self: ?*C.QCommandLineParser, name: []const u8, description: []const u8, syntax: []const u8 ```
    pub fn AddPositionalArgument3(self: ?*anyopaque, name: []const u8, description: []const u8, syntax: []const u8) void {
        const name_str = C.struct_libqt_string{
            .len = name.len,
            .data = @constCast(name.ptr),
        };
        const description_str = C.struct_libqt_string{
            .len = description.len,
            .data = @constCast(description.ptr),
        };
        const syntax_str = C.struct_libqt_string{
            .len = syntax.len,
            .data = @constCast(syntax.ptr),
        };
        C.QCommandLineParser_AddPositionalArgument3(@ptrCast(self), name_str, description_str, syntax_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qcommandlineparser.html#showHelp)
    ///
    /// ``` self: ?*C.QCommandLineParser, exitCode: i32 ```
    pub fn ShowHelp1(self: ?*anyopaque, exitCode: i32) void {
        C.QCommandLineParser_ShowHelp1(@ptrCast(self), @intCast(exitCode));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QCommandLineParser ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QCommandLineParser_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qcommandlineparser.html#types
pub const enums = struct {
    pub const SingleDashWordOptionMode = enum {
        pub const ParseAsCompactedShortOptions: i32 = 0;
        pub const ParseAsLongOptions: i32 = 1;
    };

    pub const OptionsAfterPositionalArgumentsMode = enum {
        pub const ParseAsOptions: i32 = 0;
        pub const ParseAsPositionalArguments: i32 = 1;
    };
};
