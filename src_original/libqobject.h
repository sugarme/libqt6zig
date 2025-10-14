#pragma once
#ifndef SRCC_LIBQOBJECT_H
#define SRCC_LIBQOBJECT_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

// Based on the macro from Qt (LGPLv3), see https://www.qt.io/qt-licensing/
// Macro is trivial and used here under fair use
// Usage does not imply derivation
#ifndef QT_VERSION_CHECK
#define QT_VERSION_CHECK(major, minor, patch) ((major << 16) | (minor << 8) | (patch))
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_Disambiguated_t)
typedef Qt::Disambiguated_t Disambiguated_t;
#endif
#else
typedef struct Disambiguated_t Disambiguated_t;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectData QObjectData;
typedef struct QSignalBlocker QSignalBlocker;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QObject* QObjectData_QPtr(const QObjectData* self);
void QObjectData_SetQPtr(QObjectData* self, QObject* q_ptr);
QObject* QObjectData_Parent(const QObjectData* self);
void QObjectData_SetParent(QObjectData* self, QObject* parent);
libqt_list /* of QObject* */ QObjectData_Children(const QObjectData* self);
void QObjectData_SetChildren(QObjectData* self, libqt_list /* of QObject* */ children);
unsigned int QObjectData_IsWidget(const QObjectData* self);
void QObjectData_SetIsWidget(QObjectData* self, unsigned int isWidget);
unsigned int QObjectData_BlockSig(const QObjectData* self);
void QObjectData_SetBlockSig(QObjectData* self, unsigned int blockSig);
unsigned int QObjectData_WasDeleted(const QObjectData* self);
void QObjectData_SetWasDeleted(QObjectData* self, unsigned int wasDeleted);
unsigned int QObjectData_IsDeletingChildren(const QObjectData* self);
void QObjectData_SetIsDeletingChildren(QObjectData* self, unsigned int isDeletingChildren);
unsigned int QObjectData_SendChildEvents(const QObjectData* self);
void QObjectData_SetSendChildEvents(QObjectData* self, unsigned int sendChildEvents);
unsigned int QObjectData_ReceiveChildEvents(const QObjectData* self);
void QObjectData_SetReceiveChildEvents(QObjectData* self, unsigned int receiveChildEvents);
unsigned int QObjectData_IsWindow(const QObjectData* self);
void QObjectData_SetIsWindow(QObjectData* self, unsigned int isWindow);
unsigned int QObjectData_DeleteLaterCalled(const QObjectData* self);
void QObjectData_SetDeleteLaterCalled(QObjectData* self, unsigned int deleteLaterCalled);
unsigned int QObjectData_IsQuickItem(const QObjectData* self);
void QObjectData_SetIsQuickItem(QObjectData* self, unsigned int isQuickItem);
unsigned int QObjectData_WillBeWidget(const QObjectData* self);
void QObjectData_SetWillBeWidget(QObjectData* self, unsigned int willBeWidget);
unsigned int QObjectData_WasWidget(const QObjectData* self);
void QObjectData_SetWasWidget(QObjectData* self, unsigned int wasWidget);
unsigned int QObjectData_ReceiveParentEvents(const QObjectData* self);
void QObjectData_SetReceiveParentEvents(QObjectData* self, unsigned int receiveParentEvents);
unsigned int QObjectData_Unused(const QObjectData* self);
void QObjectData_SetUnused(QObjectData* self, unsigned int unused);
QBindingStorage* QObjectData_BindingStorage(const QObjectData* self);
void QObjectData_SetBindingStorage(QObjectData* self, QBindingStorage* bindingStorage);
// This method's return type was changed from non-const to const in Qt 6.9
#if QT_VERSION >= QT_VERSION_CHECK(6, 9, 0)
const QMetaObject* QObjectData_DynamicMetaObject(const QObjectData* self);
#else
QMetaObject* QObjectData_DynamicMetaObject(const QObjectData* self);
#endif
void QObjectData_Delete(QObjectData* self);

QObject* QObject_new();
QObject* QObject_new2(QObject* parent);
QMetaObject* QObject_MetaObject(const QObject* self);
void* QObject_Metacast(QObject* self, const char* param1);
int QObject_Metacall(QObject* self, int param1, int param2, void** param3);
libqt_string QObject_Tr(const char* s);
bool QObject_Event(QObject* self, QEvent* event);
bool QObject_EventFilter(QObject* self, QObject* watched, QEvent* event);
libqt_string QObject_ObjectName(const QObject* self);
void QObject_SetObjectName(QObject* self, libqt_string name);
bool QObject_IsWidgetType(const QObject* self);
bool QObject_IsWindowType(const QObject* self);
bool QObject_IsQuickItemType(const QObject* self);
bool QObject_SignalsBlocked(const QObject* self);
bool QObject_BlockSignals(QObject* self, bool b);
QThread* QObject_Thread(const QObject* self);
bool QObject_MoveToThread(QObject* self, QThread* thread);
int QObject_StartTimer(QObject* self, int interval);
void QObject_KillTimer(QObject* self, int id);
void QObject_KillTimer2(QObject* self, int id);
libqt_list /* of QObject* */ QObject_Children(const QObject* self);
void QObject_SetParent(QObject* self, QObject* parent);
void QObject_InstallEventFilter(QObject* self, QObject* filterObj);
void QObject_RemoveEventFilter(QObject* self, QObject* obj);
QMetaObject__Connection* QObject_Connect(const QObject* sender, const QMetaMethod* signal, const QObject* receiver, const QMetaMethod* method);
QMetaObject__Connection* QObject_Connect2(const QObject* self, const QObject* sender, const char* signal, const char* member);
bool QObject_Disconnect(const QObject* sender, const QMetaMethod* signal, const QObject* receiver, const QMetaMethod* member);
bool QObject_Disconnect2(const QMetaObject__Connection* param1);
void QObject_DumpObjectTree(const QObject* self);
void QObject_DumpObjectInfo(const QObject* self);
bool QObject_SetProperty(QObject* self, const char* name, const QVariant* value);
QVariant* QObject_Property(const QObject* self, const char* name);
libqt_list /* of libqt_string */ QObject_DynamicPropertyNames(const QObject* self);
QBindingStorage* QObject_BindingStorage(QObject* self);
QBindingStorage* QObject_BindingStorage2(const QObject* self);
void QObject_Destroyed(QObject* self);
void QObject_Connect_Destroyed(QObject* self, intptr_t slot);
QObject* QObject_Parent(const QObject* self);
bool QObject_Inherits(const QObject* self, const char* classname);
void QObject_DeleteLater(QObject* self);
void QObject_TimerEvent(QObject* self, QTimerEvent* event);
void QObject_ChildEvent(QObject* self, QChildEvent* event);
void QObject_CustomEvent(QObject* self, QEvent* event);
void QObject_ConnectNotify(QObject* self, const QMetaMethod* signal);
void QObject_DisconnectNotify(QObject* self, const QMetaMethod* signal);
libqt_string QObject_Tr2(const char* s, const char* c);
libqt_string QObject_Tr3(const char* s, const char* c, int n);
bool QObject_MoveToThread2(QObject* self, QThread* thread, Disambiguated_t* param2);
int QObject_StartTimer22(QObject* self, int interval, int timerType);
QMetaObject__Connection* QObject_Connect5(const QObject* sender, const QMetaMethod* signal, const QObject* receiver, const QMetaMethod* method, int typeVal);
QMetaObject__Connection* QObject_Connect4(const QObject* self, const QObject* sender, const char* signal, const char* member, int typeVal);
void QObject_Destroyed1(QObject* self, QObject* param1);
void QObject_Connect_Destroyed1(QObject* self, intptr_t slot);
void QObject_OnMetacall(QObject* self, intptr_t slot);
int QObject_QBaseMetacall(QObject* self, int param1, int param2, void** param3);
void QObject_OnEvent(QObject* self, intptr_t slot);
bool QObject_QBaseEvent(QObject* self, QEvent* event);
void QObject_OnEventFilter(QObject* self, intptr_t slot);
bool QObject_QBaseEventFilter(QObject* self, QObject* watched, QEvent* event);
void QObject_OnTimerEvent(QObject* self, intptr_t slot);
void QObject_QBaseTimerEvent(QObject* self, QTimerEvent* event);
void QObject_OnChildEvent(QObject* self, intptr_t slot);
void QObject_QBaseChildEvent(QObject* self, QChildEvent* event);
void QObject_OnCustomEvent(QObject* self, intptr_t slot);
void QObject_QBaseCustomEvent(QObject* self, QEvent* event);
void QObject_OnConnectNotify(QObject* self, intptr_t slot);
void QObject_QBaseConnectNotify(QObject* self, const QMetaMethod* signal);
void QObject_OnDisconnectNotify(QObject* self, intptr_t slot);
void QObject_QBaseDisconnectNotify(QObject* self, const QMetaMethod* signal);
QObject* QObject_Sender(const QObject* self);
void QObject_OnSender(const QObject* self, intptr_t slot);
QObject* QObject_QBaseSender(const QObject* self);
int QObject_SenderSignalIndex(const QObject* self);
void QObject_OnSenderSignalIndex(const QObject* self, intptr_t slot);
int QObject_QBaseSenderSignalIndex(const QObject* self);
int QObject_Receivers(const QObject* self, const char* signal);
void QObject_OnReceivers(const QObject* self, intptr_t slot);
int QObject_QBaseReceivers(const QObject* self, const char* signal);
bool QObject_IsSignalConnected(const QObject* self, const QMetaMethod* signal);
void QObject_OnIsSignalConnected(const QObject* self, intptr_t slot);
bool QObject_QBaseIsSignalConnected(const QObject* self, const QMetaMethod* signal);
void QObject_Connect_ObjectNameChanged(QObject* self, intptr_t slot);
void QObject_Delete(QObject* self);

QSignalBlocker* QSignalBlocker_new(QObject* o);
QSignalBlocker* QSignalBlocker_new2(QObject* o);
void QSignalBlocker_Reblock(QSignalBlocker* self);
void QSignalBlocker_Unblock(QSignalBlocker* self);
void QSignalBlocker_Dismiss(QSignalBlocker* self);
void QSignalBlocker_Delete(QSignalBlocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
