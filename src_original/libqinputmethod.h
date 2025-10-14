#pragma once
#ifndef SRCC_LIBQINPUTMETHOD_H
#define SRCC_LIBQINPUTMETHOD_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QInputMethod QInputMethod;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

QMetaObject* QInputMethod_MetaObject(const QInputMethod* self);
void* QInputMethod_Metacast(QInputMethod* self, const char* param1);
int QInputMethod_Metacall(QInputMethod* self, int param1, int param2, void** param3);
libqt_string QInputMethod_Tr(const char* s);
QTransform* QInputMethod_InputItemTransform(const QInputMethod* self);
void QInputMethod_SetInputItemTransform(QInputMethod* self, const QTransform* transform);
QRectF* QInputMethod_InputItemRectangle(const QInputMethod* self);
void QInputMethod_SetInputItemRectangle(QInputMethod* self, const QRectF* rect);
QRectF* QInputMethod_CursorRectangle(const QInputMethod* self);
QRectF* QInputMethod_AnchorRectangle(const QInputMethod* self);
QRectF* QInputMethod_KeyboardRectangle(const QInputMethod* self);
QRectF* QInputMethod_InputItemClipRectangle(const QInputMethod* self);
bool QInputMethod_IsVisible(const QInputMethod* self);
void QInputMethod_SetVisible(QInputMethod* self, bool visible);
bool QInputMethod_IsAnimating(const QInputMethod* self);
QLocale* QInputMethod_Locale(const QInputMethod* self);
int QInputMethod_InputDirection(const QInputMethod* self);
QVariant* QInputMethod_QueryFocusObject(int query, const QVariant* argument);
void QInputMethod_Show(QInputMethod* self);
void QInputMethod_Hide(QInputMethod* self);
void QInputMethod_Update(QInputMethod* self, int queries);
void QInputMethod_Reset(QInputMethod* self);
void QInputMethod_Commit(QInputMethod* self);
void QInputMethod_InvokeAction(QInputMethod* self, int a, int cursorPosition);
void QInputMethod_CursorRectangleChanged(QInputMethod* self);
void QInputMethod_Connect_CursorRectangleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_AnchorRectangleChanged(QInputMethod* self);
void QInputMethod_Connect_AnchorRectangleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_KeyboardRectangleChanged(QInputMethod* self);
void QInputMethod_Connect_KeyboardRectangleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_InputItemClipRectangleChanged(QInputMethod* self);
void QInputMethod_Connect_InputItemClipRectangleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_VisibleChanged(QInputMethod* self);
void QInputMethod_Connect_VisibleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_AnimatingChanged(QInputMethod* self);
void QInputMethod_Connect_AnimatingChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_LocaleChanged(QInputMethod* self);
void QInputMethod_Connect_LocaleChanged(QInputMethod* self, intptr_t slot);
void QInputMethod_InputDirectionChanged(QInputMethod* self, int newDirection);
void QInputMethod_Connect_InputDirectionChanged(QInputMethod* self, intptr_t slot);
libqt_string QInputMethod_Tr2(const char* s, const char* c);
libqt_string QInputMethod_Tr3(const char* s, const char* c, int n);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
