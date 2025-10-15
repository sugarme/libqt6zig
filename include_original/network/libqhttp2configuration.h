#pragma once
#ifndef SRC_NETWORKC_LIBQHTTP2CONFIGURATION_H
#define SRC_NETWORKC_LIBQHTTP2CONFIGURATION_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QHttp2Configuration QHttp2Configuration;
#endif

QHttp2Configuration* QHttp2Configuration_new();
QHttp2Configuration* QHttp2Configuration_new2(const QHttp2Configuration* other);
void QHttp2Configuration_OperatorAssign(QHttp2Configuration* self, const QHttp2Configuration* other);
void QHttp2Configuration_SetServerPushEnabled(QHttp2Configuration* self, bool enable);
bool QHttp2Configuration_ServerPushEnabled(const QHttp2Configuration* self);
void QHttp2Configuration_SetHuffmanCompressionEnabled(QHttp2Configuration* self, bool enable);
bool QHttp2Configuration_HuffmanCompressionEnabled(const QHttp2Configuration* self);
bool QHttp2Configuration_SetSessionReceiveWindowSize(QHttp2Configuration* self, unsigned int size);
unsigned int QHttp2Configuration_SessionReceiveWindowSize(const QHttp2Configuration* self);
bool QHttp2Configuration_SetStreamReceiveWindowSize(QHttp2Configuration* self, unsigned int size);
unsigned int QHttp2Configuration_StreamReceiveWindowSize(const QHttp2Configuration* self);
bool QHttp2Configuration_SetMaxFrameSize(QHttp2Configuration* self, unsigned int size);
unsigned int QHttp2Configuration_MaxFrameSize(const QHttp2Configuration* self);
void QHttp2Configuration_Swap(QHttp2Configuration* self, QHttp2Configuration* other);
void QHttp2Configuration_Delete(QHttp2Configuration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
