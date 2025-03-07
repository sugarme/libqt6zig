const C = @import("qt6c");
const qfutureinterface_enums = enums;
const std = @import("std");

/// https://doc.qt.io/qt-6/qfutureinterfacebase.html
pub const qfutureinterfacebase = struct {
    /// New constructs a new QFutureInterfaceBase object.
    ///
    ///
    pub fn New() ?*C.QFutureInterfaceBase {
        return C.QFutureInterfaceBase_new();
    }

    /// New2 constructs a new QFutureInterfaceBase object.
    ///
    /// ``` other: ?*C.QFutureInterfaceBase ```
    pub fn New2(other: ?*anyopaque) ?*C.QFutureInterfaceBase {
        return C.QFutureInterfaceBase_new2(@ptrCast(other));
    }

    /// New3 constructs a new QFutureInterfaceBase object.
    ///
    /// ``` initialState: qfutureinterface_enums.State ```
    pub fn New3(initialState: i64) ?*C.QFutureInterfaceBase {
        return C.QFutureInterfaceBase_new3(@intCast(initialState));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#operator=)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, other: ?*C.QFutureInterfaceBase ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFutureInterfaceBase_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#reportStarted)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ReportStarted(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_ReportStarted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#reportFinished)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ReportFinished(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_ReportFinished(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#reportCanceled)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ReportCanceled(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_ReportCanceled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#reportResultsReady)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, beginIndex: i32, endIndex: i32 ```
    pub fn ReportResultsReady(self: ?*anyopaque, beginIndex: i32, endIndex: i32) void {
        C.QFutureInterfaceBase_ReportResultsReady(@ptrCast(self), @intCast(beginIndex), @intCast(endIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setRunnable)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, runnable: ?*C.QRunnable ```
    pub fn SetRunnable(self: ?*anyopaque, runnable: ?*anyopaque) void {
        C.QFutureInterfaceBase_SetRunnable(@ptrCast(self), @ptrCast(runnable));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setThreadPool)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, pool: ?*C.QThreadPool ```
    pub fn SetThreadPool(self: ?*anyopaque, pool: ?*anyopaque) void {
        C.QFutureInterfaceBase_SetThreadPool(@ptrCast(self), @ptrCast(pool));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#threadPool)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ThreadPool(self: ?*anyopaque) ?*C.QThreadPool {
        return C.QFutureInterfaceBase_ThreadPool(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setFilterMode)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, enable: bool ```
    pub fn SetFilterMode(self: ?*anyopaque, enable: bool) void {
        C.QFutureInterfaceBase_SetFilterMode(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setProgressRange)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, minimum: i32, maximum: i32 ```
    pub fn SetProgressRange(self: ?*anyopaque, minimum: i32, maximum: i32) void {
        C.QFutureInterfaceBase_SetProgressRange(@ptrCast(self), @intCast(minimum), @intCast(maximum));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#progressMinimum)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ProgressMinimum(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_ProgressMinimum(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#progressMaximum)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ProgressMaximum(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_ProgressMaximum(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isProgressUpdateNeeded)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsProgressUpdateNeeded(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsProgressUpdateNeeded(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setProgressValue)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, progressValue: i32 ```
    pub fn SetProgressValue(self: ?*anyopaque, progressValue: i32) void {
        C.QFutureInterfaceBase_SetProgressValue(@ptrCast(self), @intCast(progressValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#progressValue)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ProgressValue(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_ProgressValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setProgressValueAndText)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, progressValue: i32, progressText: []const u8 ```
    pub fn SetProgressValueAndText(self: ?*anyopaque, progressValue: i32, progressText: []const u8) void {
        const progressText_str = C.struct_libqt_string{
            .len = progressText.len,
            .data = @constCast(progressText.ptr),
        };
        C.QFutureInterfaceBase_SetProgressValueAndText(@ptrCast(self), @intCast(progressValue), progressText_str);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#progressText)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, allocator: std.mem.Allocator ```
    pub fn ProgressText(self: ?*anyopaque, allocator: std.mem.Allocator) []const u8 {
        const _str = C.QFutureInterfaceBase_ProgressText(@ptrCast(self));
        defer C.libqt_string_free(@constCast(&_str));
        const _ret = allocator.alloc(u8, _str.len) catch @panic("Memory allocation failed");
        for (0.._str.len) |_i| {
            _ret[_i] = _str.data[_i];
        }
        return _ret;
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setExpectedResultCount)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, resultCount: i32 ```
    pub fn SetExpectedResultCount(self: ?*anyopaque, resultCount: i32) void {
        C.QFutureInterfaceBase_SetExpectedResultCount(@ptrCast(self), @intCast(resultCount));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#expectedResultCount)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ExpectedResultCount(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_ExpectedResultCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#resultCount)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ResultCount(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_ResultCount(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#queryState)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, state: qfutureinterface_enums.State ```
    pub fn QueryState(self: ?*anyopaque, state: i64) bool {
        return C.QFutureInterfaceBase_QueryState(@ptrCast(self), @intCast(state));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isRunning)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsRunning(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsRunning(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isStarted)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsStarted(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsStarted(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isCanceled)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsCanceled(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsCanceled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isFinished)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsFinished(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsFinished(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isPaused)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsPaused(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsPaused(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setPaused)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, paused: bool ```
    pub fn SetPaused(self: ?*anyopaque, paused: bool) void {
        C.QFutureInterfaceBase_SetPaused(@ptrCast(self), paused);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#togglePaused)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn TogglePaused(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_TogglePaused(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isSuspending)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsSuspending(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsSuspending(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isSuspended)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsSuspended(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsSuspended(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isThrottled)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsThrottled(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsThrottled(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isResultReadyAt)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, index: i32 ```
    pub fn IsResultReadyAt(self: ?*anyopaque, index: i32) bool {
        return C.QFutureInterfaceBase_IsResultReadyAt(@ptrCast(self), @intCast(index));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isValid)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsValid(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsValid(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#loadState)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn LoadState(self: ?*anyopaque) i32 {
        return C.QFutureInterfaceBase_LoadState(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#cancel)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn Cancel(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_Cancel(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#cancelAndFinish)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn CancelAndFinish(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_CancelAndFinish(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setSuspended)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, suspendVal: bool ```
    pub fn SetSuspended(self: ?*anyopaque, suspendVal: bool) void {
        C.QFutureInterfaceBase_SetSuspended(@ptrCast(self), suspendVal);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#toggleSuspended)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ToggleSuspended(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_ToggleSuspended(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#reportSuspended)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn ReportSuspended(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_ReportSuspended(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#setThrottled)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, enable: bool ```
    pub fn SetThrottled(self: ?*anyopaque, enable: bool) void {
        C.QFutureInterfaceBase_SetThrottled(@ptrCast(self), enable);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#waitForFinished)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn WaitForFinished(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_WaitForFinished(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#waitForNextResult)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn WaitForNextResult(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_WaitForNextResult(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#waitForResult)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, resultIndex: i32 ```
    pub fn WaitForResult(self: ?*anyopaque, resultIndex: i32) void {
        C.QFutureInterfaceBase_WaitForResult(@ptrCast(self), @intCast(resultIndex));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#waitForResume)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn WaitForResume(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_WaitForResume(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#suspendIfRequested)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn SuspendIfRequested(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_SuspendIfRequested(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#mutex)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn Mutex(self: ?*anyopaque) ?*C.QMutex {
        return C.QFutureInterfaceBase_Mutex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#hasException)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn HasException(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_HasException(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#operator==)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, other: ?*C.QFutureInterfaceBase ```
    pub fn OperatorEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_OperatorEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#operator!=)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, other: ?*C.QFutureInterfaceBase ```
    pub fn OperatorNotEqual(self: ?*anyopaque, other: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_OperatorNotEqual(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#swap)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase, other: ?*C.QFutureInterfaceBase ```
    pub fn Swap(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QFutureInterfaceBase_Swap(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qfutureinterfacebase.html#isChainCanceled)
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn IsChainCanceled(self: ?*anyopaque) bool {
        return C.QFutureInterfaceBase_IsChainCanceled(@ptrCast(self));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QFutureInterfaceBase ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QFutureInterfaceBase_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qfutureinterface.html#types
pub const enums = struct {
    pub const State = enum {
        pub const NoState: i32 = 0;
        pub const Running: i32 = 1;
        pub const Started: i32 = 2;
        pub const Finished: i32 = 4;
        pub const Canceled: i32 = 8;
        pub const Suspending: i32 = 16;
        pub const Suspended: i32 = 32;
        pub const Throttled: i32 = 64;
        pub const Pending: i32 = 128;
    };

    pub const CancelMode = enum {
        pub const CancelOnly: i32 = 0;
        pub const CancelAndFinish: i32 = 1;
    };
};
