const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qaudiobuffer.html
pub const qaudiobuffer = struct {
    /// New constructs a new QAudioBuffer object.
    ///
    ///
    pub fn New() ?*C.QAudioBuffer {
        return C.QAudioBuffer_new();
    }

    /// New2 constructs a new QAudioBuffer object.
    ///
    /// ``` other: ?*C.QAudioBuffer ```
    pub fn New2(other: ?*anyopaque) ?*C.QAudioBuffer {
        return C.QAudioBuffer_new2(@ptrCast(other));
    }

    /// New3 constructs a new QAudioBuffer object.
    ///
    /// ``` data: []u8, format: ?*C.QAudioFormat ```
    pub fn New3(data: []u8, format: ?*anyopaque) ?*C.QAudioBuffer {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QAudioBuffer_new3(data_str, @ptrCast(format));
    }

    /// New4 constructs a new QAudioBuffer object.
    ///
    /// ``` numFrames: i32, format: ?*C.QAudioFormat ```
    pub fn New4(numFrames: i32, format: ?*anyopaque) ?*C.QAudioBuffer {
        return C.QAudioBuffer_new4(@intCast(numFrames), @ptrCast(format));
    }

    /// New5 constructs a new QAudioBuffer object.
    ///
    /// ``` data: []u8, format: ?*C.QAudioFormat, startTime: i64 ```
    pub fn New5(data: []u8, format: ?*anyopaque, startTime: i64) ?*C.QAudioBuffer {
        const data_str = C.struct_libqt_string{
            .len = data.len,
            .data = @constCast(data.ptr),
        };

        return C.QAudioBuffer_new5(data_str, @ptrCast(format), @intCast(startTime));
    }

    /// New6 constructs a new QAudioBuffer object.
    ///
    /// ``` numFrames: i32, format: ?*C.QAudioFormat, startTime: i64 ```
    pub fn New6(numFrames: i32, format: ?*anyopaque, startTime: i64) ?*C.QAudioBuffer {
        return C.QAudioBuffer_new6(@intCast(numFrames), @ptrCast(format), @intCast(startTime));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#operator=)
    ///
    /// ``` self: ?*C.QAudioBuffer, other: ?*C.QAudioBuffer ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioBuffer_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#swap)
    ///
    /// ``` self: ?*C.QAudioBuffer, other: ?*C.QAudioBuffer ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QAudioBuffer_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#isValid)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QAudioBuffer_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#detach)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn Detach(self: ?*anyopaque) void {
        C.QAudioBuffer_Detach(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#format)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn Format(self: ?*anyopaque) ?*C.QAudioFormat {
        return C.QAudioBuffer_Format(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#frameCount)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn FrameCount(self: ?*anyopaque) i64 {
        return C.QAudioBuffer_FrameCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#sampleCount)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn SampleCount(self: ?*anyopaque) i64 {
        return C.QAudioBuffer_SampleCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#byteCount)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn ByteCount(self: ?*anyopaque) i64 {
        return C.QAudioBuffer_ByteCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#duration)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn Duration(self: ?*anyopaque) i64 {
        return C.QAudioBuffer_Duration(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qaudiobuffer.html#startTime)
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn StartTime(self: ?*anyopaque) i64 {
        return C.QAudioBuffer_StartTime(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QAudioBuffer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QAudioBuffer_Delete(@ptrCast(self));
    }
};
