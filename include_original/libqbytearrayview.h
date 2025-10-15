#pragma once
#ifndef SRCC_LIBQBYTEARRAYVIEW_H
#define SRCC_LIBQBYTEARRAYVIEW_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QByteArrayView QByteArrayView;
#endif

QByteArrayView* QByteArrayView_new(const QByteArrayView* other);
QByteArrayView* QByteArrayView_new2(QByteArrayView* other);
QByteArrayView* QByteArrayView_new3();
QByteArrayView* QByteArrayView_new4(const QByteArrayView* param1);
void QByteArrayView_CopyAssign(QByteArrayView* self, QByteArrayView* other);
void QByteArrayView_MoveAssign(QByteArrayView* self, QByteArrayView* other);
libqt_string QByteArrayView_ToByteArray(const QByteArrayView* self);
ptrdiff_t QByteArrayView_Size(const QByteArrayView* self);
const char* QByteArrayView_Data(const QByteArrayView* self);
const char* QByteArrayView_ConstData(const QByteArrayView* self);
char QByteArrayView_OperatorSubscript(const QByteArrayView* self, ptrdiff_t n);
char QByteArrayView_At(const QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_First(const QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_Last(const QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_Sliced(const QByteArrayView* self, ptrdiff_t pos);
QByteArrayView* QByteArrayView_Sliced2(const QByteArrayView* self, ptrdiff_t pos, ptrdiff_t n);
QByteArrayView* QByteArrayView_Slice(QByteArrayView* self, ptrdiff_t pos);
QByteArrayView* QByteArrayView_Slice2(QByteArrayView* self, ptrdiff_t pos, ptrdiff_t n);
QByteArrayView* QByteArrayView_Chopped(const QByteArrayView* self, ptrdiff_t lenVal);
QByteArrayView* QByteArrayView_Left(const QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_Right(const QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_Mid(const QByteArrayView* self, ptrdiff_t pos);
void QByteArrayView_Truncate(QByteArrayView* self, ptrdiff_t n);
void QByteArrayView_Chop(QByteArrayView* self, ptrdiff_t n);
QByteArrayView* QByteArrayView_Trimmed(const QByteArrayView* self);
int16_t QByteArrayView_ToShort(const QByteArrayView* self);
uint16_t QByteArrayView_ToUShort(const QByteArrayView* self);
int QByteArrayView_ToInt(const QByteArrayView* self);
unsigned int QByteArrayView_ToUInt(const QByteArrayView* self);
long QByteArrayView_ToLong(const QByteArrayView* self);
unsigned long QByteArrayView_ToULong(const QByteArrayView* self);
long long QByteArrayView_ToLongLong(const QByteArrayView* self);
unsigned long long QByteArrayView_ToULongLong(const QByteArrayView* self);
float QByteArrayView_ToFloat(const QByteArrayView* self);
double QByteArrayView_ToDouble(const QByteArrayView* self);
bool QByteArrayView_StartsWith(const QByteArrayView* self, QByteArrayView* other);
bool QByteArrayView_StartsWith2(const QByteArrayView* self, char c);
bool QByteArrayView_EndsWith(const QByteArrayView* self, QByteArrayView* other);
bool QByteArrayView_EndsWith2(const QByteArrayView* self, char c);
ptrdiff_t QByteArrayView_IndexOf(const QByteArrayView* self, QByteArrayView* a);
ptrdiff_t QByteArrayView_IndexOf2(const QByteArrayView* self, char ch);
bool QByteArrayView_Contains(const QByteArrayView* self, QByteArrayView* a);
bool QByteArrayView_Contains2(const QByteArrayView* self, char c);
ptrdiff_t QByteArrayView_LastIndexOf(const QByteArrayView* self, QByteArrayView* a);
ptrdiff_t QByteArrayView_LastIndexOf2(const QByteArrayView* self, QByteArrayView* a, ptrdiff_t from);
ptrdiff_t QByteArrayView_LastIndexOf3(const QByteArrayView* self, char ch);
ptrdiff_t QByteArrayView_Count(const QByteArrayView* self, QByteArrayView* a);
ptrdiff_t QByteArrayView_Count2(const QByteArrayView* self, char ch);
int QByteArrayView_Compare(const QByteArrayView* self, QByteArrayView* a);
bool QByteArrayView_IsValidUtf8(const QByteArrayView* self);
const char* QByteArrayView_Begin(const QByteArrayView* self);
const char* QByteArrayView_End(const QByteArrayView* self);
const char* QByteArrayView_Cbegin(const QByteArrayView* self);
const char* QByteArrayView_Cend(const QByteArrayView* self);
bool QByteArrayView_Empty(const QByteArrayView* self);
char QByteArrayView_Front(const QByteArrayView* self);
char QByteArrayView_Back(const QByteArrayView* self);
ptrdiff_t QByteArrayView_MaxSize(const QByteArrayView* self);
bool QByteArrayView_IsNull(const QByteArrayView* self);
bool QByteArrayView_IsEmpty(const QByteArrayView* self);
ptrdiff_t QByteArrayView_Length(const QByteArrayView* self);
char QByteArrayView_First2(const QByteArrayView* self);
char QByteArrayView_Last2(const QByteArrayView* self);
ptrdiff_t QByteArrayView_MaxSize2();
QByteArrayView* QByteArrayView_Mid2(const QByteArrayView* self, ptrdiff_t pos, ptrdiff_t n);
int16_t QByteArrayView_ToShort1(const QByteArrayView* self, bool* ok);
int16_t QByteArrayView_ToShort2(const QByteArrayView* self, bool* ok, int base);
uint16_t QByteArrayView_ToUShort1(const QByteArrayView* self, bool* ok);
uint16_t QByteArrayView_ToUShort2(const QByteArrayView* self, bool* ok, int base);
int QByteArrayView_ToInt1(const QByteArrayView* self, bool* ok);
int QByteArrayView_ToInt2(const QByteArrayView* self, bool* ok, int base);
unsigned int QByteArrayView_ToUInt1(const QByteArrayView* self, bool* ok);
unsigned int QByteArrayView_ToUInt2(const QByteArrayView* self, bool* ok, int base);
long QByteArrayView_ToLong1(const QByteArrayView* self, bool* ok);
long QByteArrayView_ToLong2(const QByteArrayView* self, bool* ok, int base);
unsigned long QByteArrayView_ToULong1(const QByteArrayView* self, bool* ok);
unsigned long QByteArrayView_ToULong2(const QByteArrayView* self, bool* ok, int base);
long long QByteArrayView_ToLongLong1(const QByteArrayView* self, bool* ok);
long long QByteArrayView_ToLongLong2(const QByteArrayView* self, bool* ok, int base);
unsigned long long QByteArrayView_ToULongLong1(const QByteArrayView* self, bool* ok);
unsigned long long QByteArrayView_ToULongLong2(const QByteArrayView* self, bool* ok, int base);
float QByteArrayView_ToFloat1(const QByteArrayView* self, bool* ok);
double QByteArrayView_ToDouble1(const QByteArrayView* self, bool* ok);
ptrdiff_t QByteArrayView_IndexOf22(const QByteArrayView* self, QByteArrayView* a, ptrdiff_t from);
ptrdiff_t QByteArrayView_IndexOf23(const QByteArrayView* self, char ch, ptrdiff_t from);
ptrdiff_t QByteArrayView_LastIndexOf22(const QByteArrayView* self, char ch, ptrdiff_t from);
int QByteArrayView_Compare2(const QByteArrayView* self, QByteArrayView* a, int cs);
void QByteArrayView_Delete(QByteArrayView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
