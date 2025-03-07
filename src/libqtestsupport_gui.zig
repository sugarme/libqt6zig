const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qtest-qtoucheventsequence.html
pub const qtest__qtoucheventsequence = struct {
    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#press)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint ```
    pub fn Press(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Press(@ptrCast(self), @intCast(touchId), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#move)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint ```
    pub fn Move(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Move(@ptrCast(self), @intCast(touchId), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#release)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint ```
    pub fn Release(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Release(@ptrCast(self), @intCast(touchId), @ptrCast(pt));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#stationary)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32 ```
    pub fn Stationary(self: ?*anyopaque, touchId: i32) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Stationary(@ptrCast(self), @intCast(touchId));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#commit)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, processEvents: bool ```
    pub fn Commit(self: ?*anyopaque, processEvents: bool) bool {
        return C.QTest__QTouchEventSequence_Commit(@ptrCast(self), processEvents);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#press)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint, window: ?*C.QWindow ```
    pub fn Press3(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque, window: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Press3(@ptrCast(self), @intCast(touchId), @ptrCast(pt), @ptrCast(window));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#move)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint, window: ?*C.QWindow ```
    pub fn Move3(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque, window: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Move3(@ptrCast(self), @intCast(touchId), @ptrCast(pt), @ptrCast(window));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qtest__qtoucheventsequence.html#release)
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence, touchId: i32, pt: ?*C.QPoint, window: ?*C.QWindow ```
    pub fn Release3(self: ?*anyopaque, touchId: i32, pt: ?*anyopaque, window: ?*anyopaque) ?*C.QTest__QTouchEventSequence {
        return C.QTest__QTouchEventSequence_Release3(@ptrCast(self), @intCast(touchId), @ptrCast(pt), @ptrCast(window));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QTest__QTouchEventSequence ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QTest__QTouchEventSequence_Delete(@ptrCast(self));
    }
};
