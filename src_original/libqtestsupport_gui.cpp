#include <QEventPoint>
#include <QPoint>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence
#include <QWindow>
#include <qtestsupport_gui.h>
#include "libqtestsupport_gui.h"
#include "libqtestsupport_gui.hxx"

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt) {
    QTest::QTouchEventSequence& _ret = self->press(static_cast<int>(touchId), *pt);
    // Cast returned reference into pointer
    return &_ret;
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt) {
    QTest::QTouchEventSequence& _ret = self->move(static_cast<int>(touchId), *pt);
    // Cast returned reference into pointer
    return &_ret;
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt) {
    QTest::QTouchEventSequence& _ret = self->release(static_cast<int>(touchId), *pt);
    // Cast returned reference into pointer
    return &_ret;
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Stationary(QTest__QTouchEventSequence* self, int touchId) {
    QTest::QTouchEventSequence& _ret = self->stationary(static_cast<int>(touchId));
    // Cast returned reference into pointer
    return &_ret;
}

bool QTest__QTouchEventSequence_Commit(QTest__QTouchEventSequence* self, bool processEvents) {
    return self->commit(processEvents);
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press3(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt, QWindow* window) {
    QTest::QTouchEventSequence& _ret = self->press(static_cast<int>(touchId), *pt, window);
    // Cast returned reference into pointer
    return &_ret;
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move3(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt, QWindow* window) {
    QTest::QTouchEventSequence& _ret = self->move(static_cast<int>(touchId), *pt, window);
    // Cast returned reference into pointer
    return &_ret;
}

QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release3(QTest__QTouchEventSequence* self, int touchId, const QPoint* pt, QWindow* window) {
    QTest::QTouchEventSequence& _ret = self->release(static_cast<int>(touchId), *pt, window);
    // Cast returned reference into pointer
    return &_ret;
}

void QTest__QTouchEventSequence_Delete(QTest__QTouchEventSequence* self) {
    delete self;
}
