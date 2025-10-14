#include <QColor>
#include <QColorTransform>
#include <QRgba64>
#include <qcolortransform.h>
#include "libqcolortransform.h"
#include "libqcolortransform.hxx"

QColorTransform* QColorTransform_new() {
    return new QColorTransform();
}

QColorTransform* QColorTransform_new2(const QColorTransform* colorTransform) {
    return new QColorTransform(*colorTransform);
}

void QColorTransform_OperatorAssign(QColorTransform* self, const QColorTransform* other) {
    self->operator=(*other);
}

void QColorTransform_Swap(QColorTransform* self, QColorTransform* other) {
    self->swap(*other);
}

bool QColorTransform_IsIdentity(const QColorTransform* self) {
    return self->isIdentity();
}

unsigned int QColorTransform_Map(const QColorTransform* self, unsigned int argb) {
    return static_cast<unsigned int>(self->map(static_cast<QRgb>(argb)));
}

QRgba64* QColorTransform_Map2(const QColorTransform* self, QRgba64* rgba64) {
    return new QRgba64(self->map(*rgba64));
}

QColor* QColorTransform_Map5(const QColorTransform* self, const QColor* color) {
    return new QColor(self->map(*color));
}

void QColorTransform_Delete(QColorTransform* self) {
    delete self;
}
