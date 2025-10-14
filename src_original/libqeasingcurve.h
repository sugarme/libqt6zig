#pragma once
#ifndef SRCC_LIBQEASINGCURVE_H
#define SRCC_LIBQEASINGCURVE_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QEasingCurve QEasingCurve;
typedef struct QPointF QPointF;
#endif

QEasingCurve* QEasingCurve_new();
QEasingCurve* QEasingCurve_new2(const QEasingCurve* other);
QEasingCurve* QEasingCurve_new3(int typeVal);
void QEasingCurve_OperatorAssign(QEasingCurve* self, const QEasingCurve* other);
void QEasingCurve_Swap(QEasingCurve* self, QEasingCurve* other);
double QEasingCurve_Amplitude(const QEasingCurve* self);
void QEasingCurve_SetAmplitude(QEasingCurve* self, double amplitude);
double QEasingCurve_Period(const QEasingCurve* self);
void QEasingCurve_SetPeriod(QEasingCurve* self, double period);
double QEasingCurve_Overshoot(const QEasingCurve* self);
void QEasingCurve_SetOvershoot(QEasingCurve* self, double overshoot);
void QEasingCurve_AddCubicBezierSegment(QEasingCurve* self, const QPointF* c1, const QPointF* c2, const QPointF* endPoint);
void QEasingCurve_AddTCBSegment(QEasingCurve* self, const QPointF* nextPoint, double t, double c, double b);
libqt_list /* of QPointF* */ QEasingCurve_ToCubicSpline(const QEasingCurve* self);
int QEasingCurve_Type(const QEasingCurve* self);
void QEasingCurve_SetType(QEasingCurve* self, int typeVal);
double QEasingCurve_ValueForProgress(const QEasingCurve* self, double progress);
void QEasingCurve_Delete(QEasingCurve* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
