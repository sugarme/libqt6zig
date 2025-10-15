#pragma once
#ifndef SRC_RESTRICTED_EXTRAS_CHARTSC_LIBQBARCATEGORYAXIS_H
#define SRC_RESTRICTED_EXTRAS_CHARTSC_LIBQBARCATEGORYAXIS_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QAbstractAxis QAbstractAxis;
typedef struct QBarCategoryAxis QBarCategoryAxis;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

QBarCategoryAxis* QBarCategoryAxis_new();
QBarCategoryAxis* QBarCategoryAxis_new2(QObject* parent);
QMetaObject* QBarCategoryAxis_MetaObject(const QBarCategoryAxis* self);
void* QBarCategoryAxis_Metacast(QBarCategoryAxis* self, const char* param1);
int QBarCategoryAxis_Metacall(QBarCategoryAxis* self, int param1, int param2, void** param3);
libqt_string QBarCategoryAxis_Tr(const char* s);
int QBarCategoryAxis_Type(const QBarCategoryAxis* self);
void QBarCategoryAxis_Append(QBarCategoryAxis* self, const libqt_list /* of libqt_string */ categories);
void QBarCategoryAxis_Append2(QBarCategoryAxis* self, const libqt_string category);
void QBarCategoryAxis_Remove(QBarCategoryAxis* self, const libqt_string category);
void QBarCategoryAxis_Insert(QBarCategoryAxis* self, int index, const libqt_string category);
void QBarCategoryAxis_Replace(QBarCategoryAxis* self, const libqt_string oldCategory, const libqt_string newCategory);
void QBarCategoryAxis_Clear(QBarCategoryAxis* self);
void QBarCategoryAxis_SetCategories(QBarCategoryAxis* self, const libqt_list /* of libqt_string */ categories);
libqt_list /* of libqt_string */ QBarCategoryAxis_Categories(QBarCategoryAxis* self);
int QBarCategoryAxis_Count(const QBarCategoryAxis* self);
libqt_string QBarCategoryAxis_At(const QBarCategoryAxis* self, int index);
void QBarCategoryAxis_SetMin(QBarCategoryAxis* self, const libqt_string minCategory);
libqt_string QBarCategoryAxis_Min(const QBarCategoryAxis* self);
void QBarCategoryAxis_SetMax(QBarCategoryAxis* self, const libqt_string maxCategory);
libqt_string QBarCategoryAxis_Max(const QBarCategoryAxis* self);
void QBarCategoryAxis_SetRange(QBarCategoryAxis* self, const libqt_string minCategory, const libqt_string maxCategory);
void QBarCategoryAxis_CategoriesChanged(QBarCategoryAxis* self);
void QBarCategoryAxis_Connect_CategoriesChanged(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_MinChanged(QBarCategoryAxis* self, const libqt_string min);
void QBarCategoryAxis_Connect_MinChanged(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_MaxChanged(QBarCategoryAxis* self, const libqt_string max);
void QBarCategoryAxis_Connect_MaxChanged(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_RangeChanged(QBarCategoryAxis* self, const libqt_string min, const libqt_string max);
void QBarCategoryAxis_Connect_RangeChanged(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_CountChanged(QBarCategoryAxis* self);
void QBarCategoryAxis_Connect_CountChanged(QBarCategoryAxis* self, intptr_t slot);
libqt_string QBarCategoryAxis_Tr2(const char* s, const char* c);
libqt_string QBarCategoryAxis_Tr3(const char* s, const char* c, int n);
void QBarCategoryAxis_OnMetacall(QBarCategoryAxis* self, intptr_t slot);
int QBarCategoryAxis_QBaseMetacall(QBarCategoryAxis* self, int param1, int param2, void** param3);
void QBarCategoryAxis_OnType(const QBarCategoryAxis* self, intptr_t slot);
int QBarCategoryAxis_QBaseType(const QBarCategoryAxis* self);
bool QBarCategoryAxis_Event(QBarCategoryAxis* self, QEvent* event);
void QBarCategoryAxis_OnEvent(QBarCategoryAxis* self, intptr_t slot);
bool QBarCategoryAxis_QBaseEvent(QBarCategoryAxis* self, QEvent* event);
bool QBarCategoryAxis_EventFilter(QBarCategoryAxis* self, QObject* watched, QEvent* event);
void QBarCategoryAxis_OnEventFilter(QBarCategoryAxis* self, intptr_t slot);
bool QBarCategoryAxis_QBaseEventFilter(QBarCategoryAxis* self, QObject* watched, QEvent* event);
void QBarCategoryAxis_TimerEvent(QBarCategoryAxis* self, QTimerEvent* event);
void QBarCategoryAxis_OnTimerEvent(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_QBaseTimerEvent(QBarCategoryAxis* self, QTimerEvent* event);
void QBarCategoryAxis_ChildEvent(QBarCategoryAxis* self, QChildEvent* event);
void QBarCategoryAxis_OnChildEvent(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_QBaseChildEvent(QBarCategoryAxis* self, QChildEvent* event);
void QBarCategoryAxis_CustomEvent(QBarCategoryAxis* self, QEvent* event);
void QBarCategoryAxis_OnCustomEvent(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_QBaseCustomEvent(QBarCategoryAxis* self, QEvent* event);
void QBarCategoryAxis_ConnectNotify(QBarCategoryAxis* self, const QMetaMethod* signal);
void QBarCategoryAxis_OnConnectNotify(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_QBaseConnectNotify(QBarCategoryAxis* self, const QMetaMethod* signal);
void QBarCategoryAxis_DisconnectNotify(QBarCategoryAxis* self, const QMetaMethod* signal);
void QBarCategoryAxis_OnDisconnectNotify(QBarCategoryAxis* self, intptr_t slot);
void QBarCategoryAxis_QBaseDisconnectNotify(QBarCategoryAxis* self, const QMetaMethod* signal);
QObject* QBarCategoryAxis_Sender(const QBarCategoryAxis* self);
void QBarCategoryAxis_OnSender(const QBarCategoryAxis* self, intptr_t slot);
QObject* QBarCategoryAxis_QBaseSender(const QBarCategoryAxis* self);
int QBarCategoryAxis_SenderSignalIndex(const QBarCategoryAxis* self);
void QBarCategoryAxis_OnSenderSignalIndex(const QBarCategoryAxis* self, intptr_t slot);
int QBarCategoryAxis_QBaseSenderSignalIndex(const QBarCategoryAxis* self);
int QBarCategoryAxis_Receivers(const QBarCategoryAxis* self, const char* signal);
void QBarCategoryAxis_OnReceivers(const QBarCategoryAxis* self, intptr_t slot);
int QBarCategoryAxis_QBaseReceivers(const QBarCategoryAxis* self, const char* signal);
bool QBarCategoryAxis_IsSignalConnected(const QBarCategoryAxis* self, const QMetaMethod* signal);
void QBarCategoryAxis_OnIsSignalConnected(const QBarCategoryAxis* self, intptr_t slot);
bool QBarCategoryAxis_QBaseIsSignalConnected(const QBarCategoryAxis* self, const QMetaMethod* signal);
void QBarCategoryAxis_Delete(QBarCategoryAxis* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
