#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIODECODER_H
#define SRC_MULTIMEDIAC_LIBQAUDIODECODER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioDecoder QAudioDecoder;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

QAudioDecoder* QAudioDecoder_new();
QAudioDecoder* QAudioDecoder_new2(QObject* parent);
QMetaObject* QAudioDecoder_MetaObject(const QAudioDecoder* self);
void* QAudioDecoder_Metacast(QAudioDecoder* self, const char* param1);
int QAudioDecoder_Metacall(QAudioDecoder* self, int param1, int param2, void** param3);
libqt_string QAudioDecoder_Tr(const char* s);
bool QAudioDecoder_IsSupported(const QAudioDecoder* self);
bool QAudioDecoder_IsDecoding(const QAudioDecoder* self);
QUrl* QAudioDecoder_Source(const QAudioDecoder* self);
void QAudioDecoder_SetSource(QAudioDecoder* self, const QUrl* fileName);
QIODevice* QAudioDecoder_SourceDevice(const QAudioDecoder* self);
void QAudioDecoder_SetSourceDevice(QAudioDecoder* self, QIODevice* device);
QAudioFormat* QAudioDecoder_AudioFormat(const QAudioDecoder* self);
void QAudioDecoder_SetAudioFormat(QAudioDecoder* self, const QAudioFormat* format);
int QAudioDecoder_Error(const QAudioDecoder* self);
libqt_string QAudioDecoder_ErrorString(const QAudioDecoder* self);
QAudioBuffer* QAudioDecoder_Read(const QAudioDecoder* self);
bool QAudioDecoder_BufferAvailable(const QAudioDecoder* self);
long long QAudioDecoder_Position(const QAudioDecoder* self);
long long QAudioDecoder_Duration(const QAudioDecoder* self);
void QAudioDecoder_Start(QAudioDecoder* self);
void QAudioDecoder_Stop(QAudioDecoder* self);
void QAudioDecoder_BufferAvailableChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_BufferReady(QAudioDecoder* self);
void QAudioDecoder_Finished(QAudioDecoder* self);
void QAudioDecoder_IsDecodingChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_FormatChanged(QAudioDecoder* self, const QAudioFormat* format);
void QAudioDecoder_Error2(QAudioDecoder* self, int errorVal);
void QAudioDecoder_SourceChanged(QAudioDecoder* self);
void QAudioDecoder_PositionChanged(QAudioDecoder* self, long long position);
void QAudioDecoder_DurationChanged(QAudioDecoder* self, long long duration);
libqt_string QAudioDecoder_Tr2(const char* s, const char* c);
libqt_string QAudioDecoder_Tr3(const char* s, const char* c, int n);
void QAudioDecoder_OnMetacall(QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseMetacall(QAudioDecoder* self, int param1, int param2, void** param3);
bool QAudioDecoder_Event(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_OnEvent(QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseEvent(QAudioDecoder* self, QEvent* event);
bool QAudioDecoder_EventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
void QAudioDecoder_OnEventFilter(QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseEventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
void QAudioDecoder_TimerEvent(QAudioDecoder* self, QTimerEvent* event);
void QAudioDecoder_OnTimerEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseTimerEvent(QAudioDecoder* self, QTimerEvent* event);
void QAudioDecoder_ChildEvent(QAudioDecoder* self, QChildEvent* event);
void QAudioDecoder_OnChildEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseChildEvent(QAudioDecoder* self, QChildEvent* event);
void QAudioDecoder_CustomEvent(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_OnCustomEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseCustomEvent(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_ConnectNotify(QAudioDecoder* self, const QMetaMethod* signal);
void QAudioDecoder_OnConnectNotify(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseConnectNotify(QAudioDecoder* self, const QMetaMethod* signal);
void QAudioDecoder_DisconnectNotify(QAudioDecoder* self, const QMetaMethod* signal);
void QAudioDecoder_OnDisconnectNotify(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseDisconnectNotify(QAudioDecoder* self, const QMetaMethod* signal);
QObject* QAudioDecoder_Sender(const QAudioDecoder* self);
void QAudioDecoder_OnSender(const QAudioDecoder* self, intptr_t slot);
QObject* QAudioDecoder_QBaseSender(const QAudioDecoder* self);
int QAudioDecoder_SenderSignalIndex(const QAudioDecoder* self);
void QAudioDecoder_OnSenderSignalIndex(const QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseSenderSignalIndex(const QAudioDecoder* self);
int QAudioDecoder_Receivers(const QAudioDecoder* self, const char* signal);
void QAudioDecoder_OnReceivers(const QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseReceivers(const QAudioDecoder* self, const char* signal);
bool QAudioDecoder_IsSignalConnected(const QAudioDecoder* self, const QMetaMethod* signal);
void QAudioDecoder_OnIsSignalConnected(const QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseIsSignalConnected(const QAudioDecoder* self, const QMetaMethod* signal);
void QAudioDecoder_Delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
