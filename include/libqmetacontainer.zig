const C = @import("qt6c");

/// https://doc.qt.io/qt-6/qmetacontainer.html
pub const qmetacontainer = struct {
    /// New constructs a new QMetaContainer object.
    ///
    /// ``` other: ?*C.QMetaContainer ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaContainer {
        return C.QMetaContainer_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaContainer object and invalidates the source QMetaContainer object.
    ///
    /// ``` other: ?*C.QMetaContainer ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaContainer {
        return C.QMetaContainer_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaContainer object.
    ///
    ///
    pub fn New3() ?*C.QMetaContainer {
        return C.QMetaContainer_new3();
    }

    /// New4 constructs a new QMetaContainer object.
    ///
    /// ``` param1: ?*C.QMetaContainer ```
    pub fn New4(param1: ?*anyopaque) ?*C.QMetaContainer {
        return C.QMetaContainer_new4(@ptrCast(param1));
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaContainer, other: ?*QMetaContainer ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaContainer_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaContainer, other: ?*QMetaContainer ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaContainer_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasInputIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasInputIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasInputIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasForwardIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasForwardIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasForwardIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasBidirectionalIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasBidirectionalIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasBidirectionalIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasRandomAccessIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasRandomAccessIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasRandomAccessIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasSize)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasSize(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasSize(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#size)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn Size(self: ?*anyopaque, container: ?*anyopaque) i64 {
        return C.QMetaContainer_Size(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#canClear)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn CanClear(self: ?*anyopaque) bool {
        return C.QMetaContainer_CanClear(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#clear)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn Clear(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaContainer_Clear(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#begin)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn Begin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_Begin(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#end)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn End(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_End(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, iterator: ?*anyopaque ```
    pub fn DestroyIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyIterator(@ptrCast(self), iterator);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareIterator(@ptrCast(self), i, j);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyIterator(@ptrCast(self), target, source);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffIterator(@ptrCast(self), i, j);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn HasConstIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasConstIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constBegin)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn ConstBegin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstBegin(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constEnd)
    ///
    /// ``` self: ?*C.QMetaContainer, container: ?*anyopaque ```
    pub fn ConstEnd(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstEnd(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, iterator: ?*anyopaque ```
    pub fn DestroyConstIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyConstIterator(@ptrCast(self), iterator);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareConstIterator(@ptrCast(self), i, j);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyConstIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyConstIterator(@ptrCast(self), target, source);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceConstIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffConstIterator)
    ///
    /// ``` self: ?*C.QMetaContainer, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffConstIterator(@ptrCast(self), i, j);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaContainer ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaContainer_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetasequence.html
pub const qmetasequence = struct {
    /// New constructs a new QMetaSequence object.
    ///
    /// ``` other: ?*C.QMetaSequence ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaSequence {
        return C.QMetaSequence_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaSequence object and invalidates the source QMetaSequence object.
    ///
    /// ``` other: ?*C.QMetaSequence ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaSequence {
        return C.QMetaSequence_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaSequence object.
    ///
    ///
    pub fn New3() ?*C.QMetaSequence {
        return C.QMetaSequence_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaSequence, other: ?*QMetaSequence ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaSequence_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaSequence, other: ?*QMetaSequence ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaSequence_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#valueMetaType)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn ValueMetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaSequence_ValueMetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#isSortable)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn IsSortable(self: ?*anyopaque) bool {
        return C.QMetaSequence_IsSortable(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canAddValueAtBegin)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanAddValueAtBegin(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanAddValueAtBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#addValueAtBegin)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, value: ?*anyopaque ```
    pub fn AddValueAtBegin(self: ?*anyopaque, container: ?*anyopaque, value: ?*anyopaque) void {
        C.QMetaSequence_AddValueAtBegin(@ptrCast(self), container, value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canAddValueAtEnd)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanAddValueAtEnd(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanAddValueAtEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#addValueAtEnd)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, value: ?*anyopaque ```
    pub fn AddValueAtEnd(self: ?*anyopaque, container: ?*anyopaque, value: ?*anyopaque) void {
        C.QMetaSequence_AddValueAtEnd(@ptrCast(self), container, value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canRemoveValueAtBegin)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanRemoveValueAtBegin(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanRemoveValueAtBegin(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#removeValueAtBegin)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn RemoveValueAtBegin(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaSequence_RemoveValueAtBegin(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canRemoveValueAtEnd)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanRemoveValueAtEnd(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanRemoveValueAtEnd(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#removeValueAtEnd)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn RemoveValueAtEnd(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaSequence_RemoveValueAtEnd(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canGetValueAtIndex)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanGetValueAtIndex(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanGetValueAtIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#valueAtIndex)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, index: i64, result: ?*anyopaque ```
    pub fn ValueAtIndex(self: ?*anyopaque, container: ?*anyopaque, index: i64, result: ?*anyopaque) void {
        C.QMetaSequence_ValueAtIndex(@ptrCast(self), container, @intCast(index), result);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canSetValueAtIndex)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanSetValueAtIndex(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanSetValueAtIndex(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#setValueAtIndex)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, index: i64, value: ?*anyopaque ```
    pub fn SetValueAtIndex(self: ?*anyopaque, container: ?*anyopaque, index: i64, value: ?*anyopaque) void {
        C.QMetaSequence_SetValueAtIndex(@ptrCast(self), container, @intCast(index), value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canAddValue)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanAddValue(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanAddValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#addValue)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, value: ?*anyopaque ```
    pub fn AddValue(self: ?*anyopaque, container: ?*anyopaque, value: ?*anyopaque) void {
        C.QMetaSequence_AddValue(@ptrCast(self), container, value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canRemoveValue)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanRemoveValue(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanRemoveValue(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#removeValue)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn RemoveValue(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaSequence_RemoveValue(@ptrCast(self), container);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canGetValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanGetValueAtIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanGetValueAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#valueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque, result: ?*anyopaque ```
    pub fn ValueAtIterator(self: ?*anyopaque, iterator: ?*anyopaque, result: ?*anyopaque) void {
        C.QMetaSequence_ValueAtIterator(@ptrCast(self), iterator, result);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canSetValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanSetValueAtIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanSetValueAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#setValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque, value: ?*anyopaque ```
    pub fn SetValueAtIterator(self: ?*anyopaque, iterator: ?*anyopaque, value: ?*anyopaque) void {
        C.QMetaSequence_SetValueAtIterator(@ptrCast(self), iterator, value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canInsertValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanInsertValueAtIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanInsertValueAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#insertValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, iterator: ?*anyopaque, value: ?*anyopaque ```
    pub fn InsertValueAtIterator(self: ?*anyopaque, container: ?*anyopaque, iterator: ?*anyopaque, value: ?*anyopaque) void {
        C.QMetaSequence_InsertValueAtIterator(@ptrCast(self), container, iterator, value);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canEraseValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanEraseValueAtIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanEraseValueAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#eraseValueAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, iterator: ?*anyopaque ```
    pub fn EraseValueAtIterator(self: ?*anyopaque, container: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaSequence_EraseValueAtIterator(@ptrCast(self), container, iterator);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canEraseRangeAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanEraseRangeAtIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanEraseRangeAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#eraseRangeAtIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque, iterator1: ?*anyopaque, iterator2: ?*anyopaque ```
    pub fn EraseRangeAtIterator(self: ?*anyopaque, container: ?*anyopaque, iterator1: ?*anyopaque, iterator2: ?*anyopaque) void {
        C.QMetaSequence_EraseRangeAtIterator(@ptrCast(self), container, iterator1, iterator2);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#canGetValueAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanGetValueAtConstIterator(self: ?*anyopaque) bool {
        return C.QMetaSequence_CanGetValueAtConstIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetasequence.html#valueAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque, result: ?*anyopaque ```
    pub fn ValueAtConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, result: ?*anyopaque) void {
        C.QMetaSequence_ValueAtConstIterator(@ptrCast(self), iterator, result);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasInputIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasInputIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasInputIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasForwardIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasForwardIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasForwardIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasBidirectionalIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasBidirectionalIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasBidirectionalIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasRandomAccessIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasRandomAccessIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasRandomAccessIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasSize)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasSize(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasSize(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#size)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn Size(self: ?*anyopaque, container: ?*anyopaque) i64 {
        return C.QMetaContainer_Size(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#canClear)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn CanClear(self: ?*anyopaque) bool {
        return C.QMetaContainer_CanClear(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#clear)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn Clear(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaContainer_Clear(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#begin)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn Begin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_Begin(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#end)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn End(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_End(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque ```
    pub fn DestroyIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyIterator(@ptrCast(self), iterator);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyIterator(@ptrCast(self), target, source);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn HasConstIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasConstIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constBegin)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn ConstBegin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstBegin(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constEnd)
    ///
    /// ``` self: ?*C.QMetaSequence, container: ?*anyopaque ```
    pub fn ConstEnd(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstEnd(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque ```
    pub fn DestroyConstIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyConstIterator(@ptrCast(self), iterator);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareConstIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyConstIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyConstIterator(@ptrCast(self), target, source);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceConstIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffConstIterator)
    ///
    /// ``` self: ?*C.QMetaSequence, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffConstIterator(@ptrCast(self), i, j);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaSequence ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaSequence_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetaassociation.html
pub const qmetaassociation = struct {
    /// New constructs a new QMetaAssociation object.
    ///
    /// ``` other: ?*C.QMetaAssociation ```
    pub fn New(other: ?*anyopaque) ?*C.QMetaAssociation {
        return C.QMetaAssociation_new(@ptrCast(other));
    }

    /// New2 constructs a new QMetaAssociation object and invalidates the source QMetaAssociation object.
    ///
    /// ``` other: ?*C.QMetaAssociation ```
    pub fn New2(other: ?*anyopaque) ?*C.QMetaAssociation {
        return C.QMetaAssociation_new2(@ptrCast(other));
    }

    /// New3 constructs a new QMetaAssociation object.
    ///
    ///
    pub fn New3() ?*C.QMetaAssociation {
        return C.QMetaAssociation_new3();
    }

    /// CopyAssign shallow copies `other` into `self`.
    ///
    /// ``` self: ?*QMetaAssociation, other: ?*QMetaAssociation ```
    pub fn CopyAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaAssociation_CopyAssign(@ptrCast(self), @ptrCast(other));
    }

    /// MoveAssign moves `other` into `self` and invalidates `other`.
    ///
    /// ``` self: ?*QMetaAssociation, other: ?*QMetaAssociation ```
    pub fn MoveAssign(self: ?*anyopaque, other: ?*anyopaque) void {
        C.QMetaAssociation_MoveAssign(@ptrCast(self), @ptrCast(other));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#keyMetaType)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn KeyMetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaAssociation_KeyMetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#mappedMetaType)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn MappedMetaType(self: ?*anyopaque) ?*C.QMetaType {
        return C.QMetaAssociation_MappedMetaType(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canInsertKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanInsertKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanInsertKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#insertKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque ```
    pub fn InsertKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque) void {
        C.QMetaAssociation_InsertKey(@ptrCast(self), container, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canRemoveKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanRemoveKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanRemoveKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#removeKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque ```
    pub fn RemoveKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque) void {
        C.QMetaAssociation_RemoveKey(@ptrCast(self), container, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canContainsKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanContainsKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanContainsKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#containsKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque ```
    pub fn ContainsKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque) bool {
        return C.QMetaAssociation_ContainsKey(@ptrCast(self), container, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canGetMappedAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanGetMappedAtKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanGetMappedAtKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#mappedAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque, mapped: ?*anyopaque ```
    pub fn MappedAtKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque, mapped: ?*anyopaque) void {
        C.QMetaAssociation_MappedAtKey(@ptrCast(self), container, key, mapped);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canSetMappedAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanSetMappedAtKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanSetMappedAtKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#setMappedAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque, mapped: ?*anyopaque ```
    pub fn SetMappedAtKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque, mapped: ?*anyopaque) void {
        C.QMetaAssociation_SetMappedAtKey(@ptrCast(self), container, key, mapped);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canGetKeyAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanGetKeyAtIterator(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanGetKeyAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#keyAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, key: ?*anyopaque ```
    pub fn KeyAtIterator(self: ?*anyopaque, iterator: ?*anyopaque, key: ?*anyopaque) void {
        C.QMetaAssociation_KeyAtIterator(@ptrCast(self), iterator, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canGetKeyAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanGetKeyAtConstIterator(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanGetKeyAtConstIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#keyAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, key: ?*anyopaque ```
    pub fn KeyAtConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, key: ?*anyopaque) void {
        C.QMetaAssociation_KeyAtConstIterator(@ptrCast(self), iterator, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canGetMappedAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanGetMappedAtIterator(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanGetMappedAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#mappedAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, mapped: ?*anyopaque ```
    pub fn MappedAtIterator(self: ?*anyopaque, iterator: ?*anyopaque, mapped: ?*anyopaque) void {
        C.QMetaAssociation_MappedAtIterator(@ptrCast(self), iterator, mapped);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canGetMappedAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanGetMappedAtConstIterator(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanGetMappedAtConstIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#mappedAtConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, mapped: ?*anyopaque ```
    pub fn MappedAtConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, mapped: ?*anyopaque) void {
        C.QMetaAssociation_MappedAtConstIterator(@ptrCast(self), iterator, mapped);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canSetMappedAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanSetMappedAtIterator(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanSetMappedAtIterator(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#setMappedAtIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, mapped: ?*anyopaque ```
    pub fn SetMappedAtIterator(self: ?*anyopaque, iterator: ?*anyopaque, mapped: ?*anyopaque) void {
        C.QMetaAssociation_SetMappedAtIterator(@ptrCast(self), iterator, mapped);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canCreateIteratorAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanCreateIteratorAtKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanCreateIteratorAtKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#createIteratorAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque ```
    pub fn CreateIteratorAtKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque) ?*anyopaque {
        return C.QMetaAssociation_CreateIteratorAtKey(@ptrCast(self), container, key);
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#canCreateConstIteratorAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanCreateConstIteratorAtKey(self: ?*anyopaque) bool {
        return C.QMetaAssociation_CanCreateConstIteratorAtKey(@ptrCast(self));
    }

    /// [Qt documentation](https://doc.qt.io/qt-6/qmetaassociation.html#createConstIteratorAtKey)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque, key: ?*anyopaque ```
    pub fn CreateConstIteratorAtKey(self: ?*anyopaque, container: ?*anyopaque, key: ?*anyopaque) ?*anyopaque {
        return C.QMetaAssociation_CreateConstIteratorAtKey(@ptrCast(self), container, key);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasInputIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasInputIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasInputIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasForwardIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasForwardIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasForwardIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasBidirectionalIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasBidirectionalIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasBidirectionalIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasRandomAccessIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasRandomAccessIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasRandomAccessIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasSize)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasSize(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasSize(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#size)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn Size(self: ?*anyopaque, container: ?*anyopaque) i64 {
        return C.QMetaContainer_Size(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#canClear)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn CanClear(self: ?*anyopaque) bool {
        return C.QMetaContainer_CanClear(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#clear)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn Clear(self: ?*anyopaque, container: ?*anyopaque) void {
        C.QMetaContainer_Clear(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#begin)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn Begin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_Begin(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#end)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn End(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_End(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque ```
    pub fn DestroyIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyIterator(@ptrCast(self), iterator);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyIterator(@ptrCast(self), target, source);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#hasConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn HasConstIterator(self: ?*anyopaque) bool {
        return C.QMetaContainer_HasConstIterator(@ptrCast(self));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constBegin)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn ConstBegin(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstBegin(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#constEnd)
    ///
    /// ``` self: ?*C.QMetaAssociation, container: ?*anyopaque ```
    pub fn ConstEnd(self: ?*anyopaque, container: ?*anyopaque) ?*anyopaque {
        return C.QMetaContainer_ConstEnd(@ptrCast(self), container);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#destroyConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque ```
    pub fn DestroyConstIterator(self: ?*anyopaque, iterator: ?*anyopaque) void {
        C.QMetaContainer_DestroyConstIterator(@ptrCast(self), iterator);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#compareConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn CompareConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) bool {
        return C.QMetaContainer_CompareConstIterator(@ptrCast(self), i, j);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#copyConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, target: ?*anyopaque, source: ?*anyopaque ```
    pub fn CopyConstIterator(self: ?*anyopaque, target: ?*anyopaque, source: ?*anyopaque) void {
        C.QMetaContainer_CopyConstIterator(@ptrCast(self), target, source);
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#advanceConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, iterator: ?*anyopaque, step: i64 ```
    pub fn AdvanceConstIterator(self: ?*anyopaque, iterator: ?*anyopaque, step: i64) void {
        C.QMetaContainer_AdvanceConstIterator(@ptrCast(self), iterator, @intCast(step));
    }

    /// Inherited from QMetaContainer
    ///
    /// [Qt documentation](https://doc.qt.io/qt-6/qmetacontainer.html#diffConstIterator)
    ///
    /// ``` self: ?*C.QMetaAssociation, i: ?*anyopaque, j: ?*anyopaque ```
    pub fn DiffConstIterator(self: ?*anyopaque, i: ?*anyopaque, j: ?*anyopaque) i64 {
        return C.QMetaContainer_DiffConstIterator(@ptrCast(self), i, j);
    }

    /// Delete this object from C++ memory.
    ///
    /// ``` self: ?*C.QMetaAssociation ```
    pub fn QDelete(self: ?*anyopaque) void {
        C.QMetaAssociation_Delete(@ptrCast(self));
    }
};

/// https://doc.qt.io/qt-6/qmetacontainer.html#types
pub const enums = struct {
    pub const IteratorCapability = enum {
        pub const InputCapability: u8 = 1;
        pub const ForwardCapability: u8 = 2;
        pub const BiDirectionalCapability: u8 = 4;
        pub const RandomAccessCapability: u8 = 8;
    };

    pub const AddRemoveCapability = enum {
        pub const CanAddAtBegin: u8 = 1;
        pub const CanRemoveAtBegin: u8 = 2;
        pub const CanAddAtEnd: u8 = 4;
        pub const CanRemoveAtEnd: u8 = 8;
    };

    pub const Position = enum {
        pub const AtBegin: u8 = 0;
        pub const AtEnd: u8 = 1;
        pub const Unspecified: u8 = 2;
    };
};
