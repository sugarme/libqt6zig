#pragma once
#ifndef SRCC_LIBQTEXTBOUNDARYFINDER_H
#define SRCC_LIBQTEXTBOUNDARYFINDER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QChar QChar;
typedef struct QTextBoundaryFinder QTextBoundaryFinder;
#endif

QTextBoundaryFinder* QTextBoundaryFinder_new();
QTextBoundaryFinder* QTextBoundaryFinder_new2(const QTextBoundaryFinder* other);
QTextBoundaryFinder* QTextBoundaryFinder_new3(int typeVal, const libqt_string stringVal);
QTextBoundaryFinder* QTextBoundaryFinder_new4(int typeVal, const QChar* chars, ptrdiff_t length);
QTextBoundaryFinder* QTextBoundaryFinder_new5(int typeVal, const QChar* chars, ptrdiff_t length, unsigned char* buffer);
QTextBoundaryFinder* QTextBoundaryFinder_new6(int typeVal, const QChar* chars, ptrdiff_t length, unsigned char* buffer, ptrdiff_t bufferSize);
void QTextBoundaryFinder_OperatorAssign(QTextBoundaryFinder* self, const QTextBoundaryFinder* other);
bool QTextBoundaryFinder_IsValid(const QTextBoundaryFinder* self);
int QTextBoundaryFinder_Type(const QTextBoundaryFinder* self);
libqt_string QTextBoundaryFinder_String(const QTextBoundaryFinder* self);
void QTextBoundaryFinder_ToStart(QTextBoundaryFinder* self);
void QTextBoundaryFinder_ToEnd(QTextBoundaryFinder* self);
ptrdiff_t QTextBoundaryFinder_Position(const QTextBoundaryFinder* self);
void QTextBoundaryFinder_SetPosition(QTextBoundaryFinder* self, ptrdiff_t position);
ptrdiff_t QTextBoundaryFinder_ToNextBoundary(QTextBoundaryFinder* self);
ptrdiff_t QTextBoundaryFinder_ToPreviousBoundary(QTextBoundaryFinder* self);
bool QTextBoundaryFinder_IsAtBoundary(const QTextBoundaryFinder* self);
int QTextBoundaryFinder_BoundaryReasons(const QTextBoundaryFinder* self);
void QTextBoundaryFinder_Delete(QTextBoundaryFinder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
