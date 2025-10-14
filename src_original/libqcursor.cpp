#include <QBitmap>
#include <QCursor>
#include <QPixmap>
#include <QPoint>
#include <QScreen>
#include <QVariant>
#include <qcursor.h>
#include "libqcursor.h"
#include "libqcursor.hxx"

QCursor* QCursor_new() {
    return new QCursor();
}

QCursor* QCursor_new2(int shape) {
    return new QCursor(static_cast<Qt::CursorShape>(shape));
}

QCursor* QCursor_new3(const QBitmap* bitmap, const QBitmap* mask) {
    return new QCursor(*bitmap, *mask);
}

QCursor* QCursor_new4(const QPixmap* pixmap) {
    return new QCursor(*pixmap);
}

QCursor* QCursor_new5(const QCursor* cursor) {
    return new QCursor(*cursor);
}

QCursor* QCursor_new6(const QBitmap* bitmap, const QBitmap* mask, int hotX) {
    return new QCursor(*bitmap, *mask, static_cast<int>(hotX));
}

QCursor* QCursor_new7(const QBitmap* bitmap, const QBitmap* mask, int hotX, int hotY) {
    return new QCursor(*bitmap, *mask, static_cast<int>(hotX), static_cast<int>(hotY));
}

QCursor* QCursor_new8(const QPixmap* pixmap, int hotX) {
    return new QCursor(*pixmap, static_cast<int>(hotX));
}

QCursor* QCursor_new9(const QPixmap* pixmap, int hotX, int hotY) {
    return new QCursor(*pixmap, static_cast<int>(hotX), static_cast<int>(hotY));
}

void QCursor_OperatorAssign(QCursor* self, const QCursor* cursor) {
    self->operator=(*cursor);
}

void QCursor_Swap(QCursor* self, QCursor* other) {
    self->swap(*other);
}

QVariant* QCursor_ToQVariant(const QCursor* self) {
    return new QVariant(self->operator QVariant());
}

int QCursor_Shape(const QCursor* self) {
    return static_cast<int>(self->shape());
}

void QCursor_SetShape(QCursor* self, int newShape) {
    self->setShape(static_cast<Qt::CursorShape>(newShape));
}

QBitmap* QCursor_Bitmap(const QCursor* self, int param1) {
    return new QBitmap(self->bitmap(static_cast<Qt::ReturnByValueConstant>(param1)));
}

QBitmap* QCursor_Mask(const QCursor* self, int param1) {
    return new QBitmap(self->mask(static_cast<Qt::ReturnByValueConstant>(param1)));
}

QBitmap* QCursor_Bitmap2(const QCursor* self) {
    return new QBitmap(self->bitmap());
}

QBitmap* QCursor_Mask2(const QCursor* self) {
    return new QBitmap(self->mask());
}

QPixmap* QCursor_Pixmap(const QCursor* self) {
    return new QPixmap(self->pixmap());
}

QPoint* QCursor_HotSpot(const QCursor* self) {
    return new QPoint(self->hotSpot());
}

QPoint* QCursor_Pos() {
    return new QPoint(QCursor::pos());
}

QPoint* QCursor_Pos2(const QScreen* screen) {
    return new QPoint(QCursor::pos(screen));
}

void QCursor_SetPos(int x, int y) {
    QCursor::setPos(static_cast<int>(x), static_cast<int>(y));
}

void QCursor_SetPos2(QScreen* screen, int x, int y) {
    QCursor::setPos(screen, static_cast<int>(x), static_cast<int>(y));
}

void QCursor_SetPos3(const QPoint* p) {
    QCursor::setPos(*p);
}

void QCursor_SetPos4(QScreen* screen, const QPoint* p) {
    QCursor::setPos(screen, *p);
}

void QCursor_Delete(QCursor* self) {
    delete self;
}
