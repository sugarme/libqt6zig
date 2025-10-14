#pragma once
#ifndef SRCC_LIBQMETATYPE_H
#define SRCC_LIBQMETATYPE_H

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
typedef struct QDataStream QDataStream;
typedef struct QDebug QDebug;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaType QMetaType;
typedef struct QPartialOrdering QPartialOrdering;
#endif

QMetaType* QMetaType_new(const QMetaType* other);
QMetaType* QMetaType_new2(QMetaType* other);
QMetaType* QMetaType_new3(int typeVal);
QMetaType* QMetaType_new4();
QMetaType* QMetaType_new5(const QMetaType* param1);
void QMetaType_CopyAssign(QMetaType* self, QMetaType* other);
void QMetaType_MoveAssign(QMetaType* self, QMetaType* other);
void QMetaType_RegisterNormalizedTypedef(const libqt_string normalizedTypeName, QMetaType* typeVal);
int QMetaType_Type(const char* typeName);
int QMetaType_Type2(const libqt_string typeName);
const char* QMetaType_TypeName(int typeVal);
int QMetaType_SizeOf(int typeVal);
int QMetaType_TypeFlags(int typeVal);
QMetaObject* QMetaType_MetaObjectForType(int typeVal);
void* QMetaType_Create(int typeVal);
void QMetaType_Destroy(int typeVal, void* data);
void* QMetaType_Construct(int typeVal, void* where, const void* copyVal);
void QMetaType_Destruct(int typeVal, void* where);
bool QMetaType_IsRegistered(int typeVal);
bool QMetaType_IsValid(const QMetaType* self);
bool QMetaType_IsRegistered2(const QMetaType* self);
void QMetaType_RegisterType(const QMetaType* self);
int QMetaType_Id(const QMetaType* self);
ptrdiff_t QMetaType_SizeOf2(const QMetaType* self);
ptrdiff_t QMetaType_AlignOf(const QMetaType* self);
int QMetaType_Flags(const QMetaType* self);
QMetaObject* QMetaType_MetaObject(const QMetaType* self);
const char* QMetaType_Name(const QMetaType* self);
void* QMetaType_Create2(const QMetaType* self);
void QMetaType_Destroy2(const QMetaType* self, void* data);
void* QMetaType_Construct2(const QMetaType* self, void* where);
void QMetaType_Destruct2(const QMetaType* self, void* data);
QPartialOrdering* QMetaType_Compare(const QMetaType* self, const void* lhs, const void* rhs);
bool QMetaType_Equals(const QMetaType* self, const void* lhs, const void* rhs);
bool QMetaType_IsDefaultConstructible(const QMetaType* self);
bool QMetaType_IsCopyConstructible(const QMetaType* self);
bool QMetaType_IsMoveConstructible(const QMetaType* self);
bool QMetaType_IsDestructible(const QMetaType* self);
bool QMetaType_IsEqualityComparable(const QMetaType* self);
bool QMetaType_IsOrdered(const QMetaType* self);
bool QMetaType_Save(const QMetaType* self, QDataStream* stream, const void* data);
bool QMetaType_Load(const QMetaType* self, QDataStream* stream, void* data);
bool QMetaType_HasRegisteredDataStreamOperators(const QMetaType* self);
bool QMetaType_Save2(QDataStream* stream, int typeVal, const void* data);
bool QMetaType_Load2(QDataStream* stream, int typeVal, void* data);
QMetaType* QMetaType_UnderlyingType(const QMetaType* self);
QMetaType* QMetaType_FromName(QByteArrayView* name);
bool QMetaType_DebugStream(QMetaType* self, QDebug* dbg, const void* rhs);
bool QMetaType_HasRegisteredDebugStreamOperator(const QMetaType* self);
bool QMetaType_DebugStream2(QDebug* dbg, const void* rhs, int typeId);
bool QMetaType_HasRegisteredDebugStreamOperator2(int typeId);
bool QMetaType_Convert(QMetaType* fromType, const void* from, QMetaType* toType, void* to);
bool QMetaType_CanConvert(QMetaType* fromType, QMetaType* toType);
bool QMetaType_View(QMetaType* fromType, void* from, QMetaType* toType, void* to);
bool QMetaType_CanView(QMetaType* fromType, QMetaType* toType);
bool QMetaType_Convert2(const void* from, int fromTypeId, void* to, int toTypeId);
bool QMetaType_Compare2(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_Equals2(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_HasRegisteredConverterFunction(QMetaType* fromType, QMetaType* toType);
bool QMetaType_HasRegisteredMutableViewFunction(QMetaType* fromType, QMetaType* toType);
void QMetaType_UnregisterConverterFunction(QMetaType* from, QMetaType* to);
void QMetaType_UnregisterMutableViewFunction(QMetaType* from, QMetaType* to);
void QMetaType_UnregisterMetaType(QMetaType* typeVal);
void* QMetaType_Create22(int typeVal, const void* copyVal);
int QMetaType_Id1(const QMetaType* self, int param1);
void* QMetaType_Create1(const QMetaType* self, const void* copyVal);
void* QMetaType_Construct22(const QMetaType* self, void* where, const void* copyVal);
void QMetaType_Delete(QMetaType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
