#pragma once
#ifndef SRCC_LIBQCOLORTRANSFORM_H
#define SRCC_LIBQCOLORTRANSFORM_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QColor QColor;
typedef struct QColorTransform QColorTransform;
typedef struct QRgba64 QRgba64;
#endif

QColorTransform* QColorTransform_new();
QColorTransform* QColorTransform_new2(const QColorTransform* colorTransform);
void QColorTransform_OperatorAssign(QColorTransform* self, const QColorTransform* other);
void QColorTransform_Swap(QColorTransform* self, QColorTransform* other);
bool QColorTransform_IsIdentity(const QColorTransform* self);
unsigned int QColorTransform_Map(const QColorTransform* self, unsigned int argb);
QRgba64* QColorTransform_Map2(const QColorTransform* self, QRgba64* rgba64);
QColor* QColorTransform_Map5(const QColorTransform* self, const QColor* color);
void QColorTransform_Delete(QColorTransform* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
