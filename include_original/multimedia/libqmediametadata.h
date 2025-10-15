#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAMETADATA_H
#define SRC_MULTIMEDIAC_LIBQMEDIAMETADATA_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QVariant QVariant;
#endif

QMediaMetaData* QMediaMetaData_new(const QMediaMetaData* param1);
QMediaMetaData* QMediaMetaData_new2();
QVariant* QMediaMetaData_Value(const QMediaMetaData* self, int k);
void QMediaMetaData_Insert(QMediaMetaData* self, int k, const QVariant* value);
void QMediaMetaData_Remove(QMediaMetaData* self, int k);
libqt_list /* of int */ QMediaMetaData_Keys(const QMediaMetaData* self);
QVariant* QMediaMetaData_OperatorSubscript(QMediaMetaData* self, int k);
void QMediaMetaData_Clear(QMediaMetaData* self);
bool QMediaMetaData_IsEmpty(const QMediaMetaData* self);
libqt_string QMediaMetaData_StringValue(const QMediaMetaData* self, int k);
libqt_string QMediaMetaData_MetaDataKeyToString(int k);
void QMediaMetaData_Delete(QMediaMetaData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
