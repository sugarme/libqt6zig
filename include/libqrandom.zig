const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qrandomgenerator.html
pub const qrandomgenerator = struct {
    /// New constructs a new QRandomGenerator object.
    ///
    ///
    pub fn New() ?*C.QRandomGenerator {
        return C.QRandomGenerator_new();
    }

    /// New2 constructs a new QRandomGenerator object.
    ///
    /// ``` seedBuffer: ?*u32, lenVal: i64 ```
    pub fn New2(seedBuffer: ?*anyopaque, lenVal: i64) ?*C.QRandomGenerator {
        return C.QRandomGenerator_new2(@intCast(seedBuffer), @intCast(lenVal));
    }

    /// New3 constructs a new QRandomGenerator object.
    ///
    /// ``` begin: ?*u32, end: ?*u32 ```
    pub fn New3(begin: ?*anyopaque, end: ?*anyopaque) ?*C.QRandomGenerator {
        return C.QRandomGenerator_new3(@intCast(begin), @intCast(end));
    }

    /// New4 constructs a new QRandomGenerator object.
    ///
    /// ``` other: ?*C.QRandomGenerator ```
    pub fn New4(other: ?*anyopaque) ?*C.QRandomGenerator {
        return C.QRandomGenerator_new4(@ptrCast(other));
    }

    /// New5 constructs a new QRandomGenerator object.
    ///
    /// ``` seedValue: u32 ```
    pub fn New5(seedValue: u32) ?*C.QRandomGenerator {
        return C.QRandomGenerator_new5(@intCast(seedValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#operator=)
    ///
    /// ``` self: ?*C.QRandomGenerator, other: ?*C.QRandomGenerator ```
    pub fn OperatorAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QRandomGenerator_OperatorAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generate)
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn Generate(self: ?*anyopaque) u32 {
        return C.QRandomGenerator_Generate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generate64)
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn Generate64(self: ?*anyopaque) u64 {
        return C.QRandomGenerator_Generate64(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generateDouble)
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn GenerateDouble(self: ?*anyopaque) f64 {
        return C.QRandomGenerator_GenerateDouble(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, highest: f64 ```
    pub fn Bounded(self: ?*anyopaque, highest: f64) f64 {
        return C.QRandomGenerator_Bounded(@ptrCast(self), @floatCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, highest: u32 ```
    pub fn BoundedWithHighest(self: ?*anyopaque, highest: u32) u32 {
        return C.QRandomGenerator_BoundedWithHighest(@ptrCast(self), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: u32, highest: u32 ```
    pub fn Bounded2(self: ?*anyopaque, lowest: u32, highest: u32) u32 {
        return C.QRandomGenerator_Bounded2(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, highest: i32 ```
    pub fn Bounded3(self: ?*anyopaque, highest: i32) i32 {
        return C.QRandomGenerator_Bounded3(@ptrCast(self), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: i32, highest: i32 ```
    pub fn Bounded4(self: ?*anyopaque, lowest: i32, highest: i32) i32 {
        return C.QRandomGenerator_Bounded4(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, highest: u64 ```
    pub fn Bounded5(self: ?*anyopaque, highest: u64) u64 {
        return C.QRandomGenerator_Bounded5(@ptrCast(self), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: u64, highest: u64 ```
    pub fn Bounded6(self: ?*anyopaque, lowest: u64, highest: u64) u64 {
        return C.QRandomGenerator_Bounded6(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, highest: i64 ```
    pub fn Bounded7(self: ?*anyopaque, highest: i64) i64 {
        return C.QRandomGenerator_Bounded7(@ptrCast(self), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: i64, highest: i64 ```
    pub fn Bounded8(self: ?*anyopaque, lowest: i64, highest: i64) i64 {
        return C.QRandomGenerator_Bounded8(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: i32, highest: i64 ```
    pub fn Bounded9(self: ?*anyopaque, lowest: i32, highest: i64) i64 {
        return C.QRandomGenerator_Bounded9(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: i64, highest: i32 ```
    pub fn Bounded10(self: ?*anyopaque, lowest: i64, highest: i32) i64 {
        return C.QRandomGenerator_Bounded10(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: u32, highest: u64 ```
    pub fn Bounded11(self: ?*anyopaque, lowest: u32, highest: u64) u64 {
        return C.QRandomGenerator_Bounded11(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator, lowest: u64, highest: u32 ```
    pub fn Bounded12(self: ?*anyopaque, lowest: u64, highest: u32) u64 {
        return C.QRandomGenerator_Bounded12(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generate)
    ///
    /// ``` self: ?*C.QRandomGenerator, begin: ?*u32, end: ?*u32 ```
    pub fn Generate2(self: ?*anyopaque, begin: ?*anyopaque, end: ?*anyopaque) void {
        C.QRandomGenerator_Generate2(@ptrCast(self), @intCast(begin), @intCast(end));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#operator())
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn OperatorCall(self: ?*anyopaque) u32 {
        return C.QRandomGenerator_OperatorCall(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#seed)
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn Seed(self: ?*anyopaque) void {
        C.QRandomGenerator_Seed(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#discard)
    ///
    /// ``` self: ?*C.QRandomGenerator, z: u64 ```
    pub fn Discard(self: ?*anyopaque, z: u64) void {
        C.QRandomGenerator_Discard(@ptrCast(self), @intCast(z));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#min)
    ///
    ///
    pub fn Min() u32 {
        return C.QRandomGenerator_Min();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#max)
    ///
    ///
    pub fn Max() u32 {
        return C.QRandomGenerator_Max();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#system)
    ///
    ///
    pub fn System() ?*C.QRandomGenerator {
        return C.QRandomGenerator_System();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#global)
    ///
    ///
    pub fn Global() ?*C.QRandomGenerator {
        return C.QRandomGenerator_Global();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#securelySeeded)
    ///
    ///
    pub fn SecurelySeeded() ?*C.QRandomGenerator {
        return C.QRandomGenerator_SecurelySeeded();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#seed)
    ///
    /// ``` self: ?*C.QRandomGenerator, s: u32 ```
    pub fn Seed1(self: ?*anyopaque, s: u32) void {
        C.QRandomGenerator_Seed1(@ptrCast(self), @intCast(s));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRandomGenerator ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRandomGenerator_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qrandomgenerator64.html
pub const qrandomgenerator64 = struct {
    /// New constructs a new QRandomGenerator64 object.
    ///
    ///
    pub fn New() ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new();
    }

    /// New2 constructs a new QRandomGenerator64 object.
    ///
    /// ``` seedBuffer: ?*u32, lenVal: i64 ```
    pub fn New2(seedBuffer: ?*anyopaque, lenVal: i64) ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new2(@intCast(seedBuffer), @intCast(lenVal));
    }

    /// New3 constructs a new QRandomGenerator64 object.
    ///
    /// ``` begin: ?*u32, end: ?*u32 ```
    pub fn New3(begin: ?*anyopaque, end: ?*anyopaque) ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new3(@intCast(begin), @intCast(end));
    }

    /// New4 constructs a new QRandomGenerator64 object.
    ///
    /// ``` other: ?*C.QRandomGenerator ```
    pub fn New4(other: ?*anyopaque) ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new4(@ptrCast(other));
    }

    /// New5 constructs a new QRandomGenerator64 object.
    ///
    /// ``` param1: ?*C.QRandomGenerator64 ```
    pub fn New5(param1: ?*anyopaque) ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new5(@ptrCast(param1));
    }

    /// New6 constructs a new QRandomGenerator64 object.
    ///
    /// ``` seedValue: u32 ```
    pub fn New6(seedValue: u32) ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_new6(@intCast(seedValue));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#generate)
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn Generate(self: ?*anyopaque) u64 {
        return C.QRandomGenerator64_Generate(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#operator())
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn OperatorCall(self: ?*anyopaque) u64 {
        return C.QRandomGenerator64_OperatorCall(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#discard)
    ///
    /// ``` self: ?*C.QRandomGenerator64, z: u64 ```
    pub fn Discard(self: ?*anyopaque, z: u64) void {
        C.QRandomGenerator64_Discard(@ptrCast(self), @intCast(z));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#min)
    ///
    ///
    pub fn Min() u64 {
        return C.QRandomGenerator64_Min();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#max)
    ///
    ///
    pub fn Max() u64 {
        return C.QRandomGenerator64_Max();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#system)
    ///
    ///
    pub fn System() ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_System();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#global)
    ///
    ///
    pub fn Global() ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_Global();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#securelySeeded)
    ///
    ///
    pub fn SecurelySeeded() ?*C.QRandomGenerator64 {
        return C.QRandomGenerator64_SecurelySeeded();
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator64.html#operator=)
    ///
    /// ``` self: ?*C.QRandomGenerator64, param1: ?*C.QRandomGenerator64 ```
    pub fn OperatorAssign(self: ?*anyopaque, param1: ?*anyopaque) void {
        C.QRandomGenerator64_OperatorAssign(@ptrCast(self), @ptrCast(param1));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generate64)
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn Generate64(self: ?*anyopaque) u64 {
        return C.QRandomGenerator_Generate64(@ptrCast(self));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generateDouble)
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn GenerateDouble(self: ?*anyopaque) f64 {
        return C.QRandomGenerator_GenerateDouble(@ptrCast(self));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, highest: f64 ```
    pub fn Bounded(self: ?*anyopaque, highest: f64) f64 {
        return C.QRandomGenerator_Bounded(@ptrCast(self), @floatCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, highest: u32 ```
    pub fn BoundedWithHighest(self: ?*anyopaque, highest: u32) u32 {
        return C.QRandomGenerator_BoundedWithHighest(@ptrCast(self), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: u32, highest: u32 ```
    pub fn Bounded2(self: ?*anyopaque, lowest: u32, highest: u32) u32 {
        return C.QRandomGenerator_Bounded2(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, highest: i32 ```
    pub fn Bounded3(self: ?*anyopaque, highest: i32) i32 {
        return C.QRandomGenerator_Bounded3(@ptrCast(self), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: i32, highest: i32 ```
    pub fn Bounded4(self: ?*anyopaque, lowest: i32, highest: i32) i32 {
        return C.QRandomGenerator_Bounded4(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, highest: u64 ```
    pub fn Bounded5(self: ?*anyopaque, highest: u64) u64 {
        return C.QRandomGenerator_Bounded5(@ptrCast(self), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: u64, highest: u64 ```
    pub fn Bounded6(self: ?*anyopaque, lowest: u64, highest: u64) u64 {
        return C.QRandomGenerator_Bounded6(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, highest: i64 ```
    pub fn Bounded7(self: ?*anyopaque, highest: i64) i64 {
        return C.QRandomGenerator_Bounded7(@ptrCast(self), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: i64, highest: i64 ```
    pub fn Bounded8(self: ?*anyopaque, lowest: i64, highest: i64) i64 {
        return C.QRandomGenerator_Bounded8(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: i32, highest: i64 ```
    pub fn Bounded9(self: ?*anyopaque, lowest: i32, highest: i64) i64 {
        return C.QRandomGenerator_Bounded9(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: i64, highest: i32 ```
    pub fn Bounded10(self: ?*anyopaque, lowest: i64, highest: i32) i64 {
        return C.QRandomGenerator_Bounded10(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: u32, highest: u64 ```
    pub fn Bounded11(self: ?*anyopaque, lowest: u32, highest: u64) u64 {
        return C.QRandomGenerator_Bounded11(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#bounded)
    ///
    /// ``` self: ?*C.QRandomGenerator64, lowest: u64, highest: u32 ```
    pub fn Bounded12(self: ?*anyopaque, lowest: u64, highest: u32) u64 {
        return C.QRandomGenerator_Bounded12(@ptrCast(self), @intCast(lowest), @intCast(highest));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#generate)
    ///
    /// ``` self: ?*C.QRandomGenerator64, begin: ?*u32, end: ?*u32 ```
    pub fn Generate2(self: ?*anyopaque, begin: ?*anyopaque, end: ?*anyopaque) void {
        C.QRandomGenerator_Generate2(@ptrCast(self), @intCast(begin), @intCast(end));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#seed)
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn Seed(self: ?*anyopaque) void {
        C.QRandomGenerator_Seed(@ptrCast(self));
    }

    /// Inherited from QRandomGenerator
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qrandomgenerator.html#seed)
    ///
    /// ``` self: ?*C.QRandomGenerator64, s: u32 ```
    pub fn Seed1(self: ?*anyopaque, s: u32) void {
        C.QRandomGenerator_Seed1(@ptrCast(self), @intCast(s));
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QRandomGenerator64 ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QRandomGenerator64_Delete(@ptrCast(self));
    }
};
