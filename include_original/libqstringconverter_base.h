#pragma once
#ifndef SRCC_LIBQSTRINGCONVERTER_BASE_H
#define SRCC_LIBQSTRINGCONVERTER_BASE_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStringConverterBase__State)
typedef QStringConverterBase::State QStringConverterBase__State;
#endif
#else
typedef struct QStringConverter QStringConverter;
typedef struct QStringConverterBase QStringConverterBase;
typedef struct QStringConverterBase__State QStringConverterBase__State;
#endif

bool QStringConverter_IsValid(const QStringConverter* self);
void QStringConverter_ResetState(QStringConverter* self);
bool QStringConverter_HasError(const QStringConverter* self);
const char* QStringConverter_Name(const QStringConverter* self);
const char* QStringConverter_NameForEncoding(int e);
libqt_list /* of libqt_string */ QStringConverter_AvailableCodecs();

QStringConverterBase__State* QStringConverterBase__State_new();
QStringConverterBase__State* QStringConverterBase__State_new2(int f);
void QStringConverterBase__State_Clear(QStringConverterBase__State* self);
void QStringConverterBase__State_Reset(QStringConverterBase__State* self);
int QStringConverterBase__State_Flags(const QStringConverterBase__State* self);
void QStringConverterBase__State_SetFlags(QStringConverterBase__State* self, int flags);
int QStringConverterBase__State_InternalState(const QStringConverterBase__State* self);
void QStringConverterBase__State_SetInternalState(QStringConverterBase__State* self, int internalState);
ptrdiff_t QStringConverterBase__State_RemainingChars(const QStringConverterBase__State* self);
void QStringConverterBase__State_SetRemainingChars(QStringConverterBase__State* self, ptrdiff_t remainingChars);
ptrdiff_t QStringConverterBase__State_InvalidChars(const QStringConverterBase__State* self);
void QStringConverterBase__State_SetInvalidChars(QStringConverterBase__State* self, ptrdiff_t invalidChars);
void QStringConverterBase__State_Delete(QStringConverterBase__State* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
