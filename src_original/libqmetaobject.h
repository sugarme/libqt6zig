#pragma once
#ifndef SRCC_LIBQMETAOBJECT_H
#define SRCC_LIBQMETAOBJECT_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QGenericArgument QGenericArgument;
typedef struct QGenericReturnArgument QGenericReturnArgument;
typedef struct QMetaClassInfo QMetaClassInfo;
typedef struct QMetaEnum QMetaEnum;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaProperty QMetaProperty;
typedef struct QMetaType QMetaType;
typedef struct QObject QObject;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QVariant QVariant;
#endif

QMetaMethod* QMetaMethod_new(const QMetaMethod* other);
QMetaMethod* QMetaMethod_new2(QMetaMethod* other);
QMetaMethod* QMetaMethod_new3();
QMetaMethod* QMetaMethod_new4(const QMetaMethod* param1);
void QMetaMethod_CopyAssign(QMetaMethod* self, QMetaMethod* other);
void QMetaMethod_MoveAssign(QMetaMethod* self, QMetaMethod* other);
libqt_string QMetaMethod_MethodSignature(const QMetaMethod* self);
libqt_string QMetaMethod_Name(const QMetaMethod* self);
const char* QMetaMethod_TypeName(const QMetaMethod* self);
int QMetaMethod_ReturnType(const QMetaMethod* self);
QMetaType* QMetaMethod_ReturnMetaType(const QMetaMethod* self);
int QMetaMethod_ParameterCount(const QMetaMethod* self);
int QMetaMethod_ParameterType(const QMetaMethod* self, int index);
QMetaType* QMetaMethod_ParameterMetaType(const QMetaMethod* self, int index);
void QMetaMethod_GetParameterTypes(const QMetaMethod* self, int* types);
libqt_list /* of libqt_string */ QMetaMethod_ParameterTypes(const QMetaMethod* self);
libqt_string QMetaMethod_ParameterTypeName(const QMetaMethod* self, int index);
libqt_list /* of libqt_string */ QMetaMethod_ParameterNames(const QMetaMethod* self);
const char* QMetaMethod_Tag(const QMetaMethod* self);
int QMetaMethod_Access(const QMetaMethod* self);
int QMetaMethod_MethodType(const QMetaMethod* self);
int QMetaMethod_Attributes(const QMetaMethod* self);
int QMetaMethod_MethodIndex(const QMetaMethod* self);
int QMetaMethod_RelativeMethodIndex(const QMetaMethod* self);
int QMetaMethod_Revision(const QMetaMethod* self);
bool QMetaMethod_IsConst(const QMetaMethod* self);
QMetaObject* QMetaMethod_EnclosingMetaObject(const QMetaMethod* self);
bool QMetaMethod_Invoke(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue);
bool QMetaMethod_Invoke2(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue);
bool QMetaMethod_Invoke3(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0);
bool QMetaMethod_Invoke4(const QMetaMethod* self, QObject* object, QGenericArgument* val0);
bool QMetaMethod_InvokeOnGadget(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue);
bool QMetaMethod_InvokeOnGadget2(const QMetaMethod* self, void* gadget, QGenericArgument* val0);
bool QMetaMethod_IsValid(const QMetaMethod* self);
bool QMetaMethod_Invoke42(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_Invoke5(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_Invoke6(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_Invoke7(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_Invoke8(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_Invoke9(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_Invoke10(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_Invoke11(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_Invoke12(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_Invoke13(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_Invoke32(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_Invoke43(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_Invoke52(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_Invoke62(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_Invoke72(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_Invoke82(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_Invoke92(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_Invoke102(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_Invoke112(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_Invoke122(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_Invoke44(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_Invoke53(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_Invoke63(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_Invoke73(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_Invoke83(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_Invoke93(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_Invoke103(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_Invoke113(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_Invoke123(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_Invoke33(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_Invoke45(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_Invoke54(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_Invoke64(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_Invoke74(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_Invoke84(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_Invoke94(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_Invoke104(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_Invoke114(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_InvokeOnGadget3(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_InvokeOnGadget4(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_InvokeOnGadget5(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_InvokeOnGadget6(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_InvokeOnGadget7(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_InvokeOnGadget8(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_InvokeOnGadget9(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_InvokeOnGadget10(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_InvokeOnGadget11(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_InvokeOnGadget12(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_InvokeOnGadget32(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_InvokeOnGadget42(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_InvokeOnGadget52(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_InvokeOnGadget62(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_InvokeOnGadget72(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_InvokeOnGadget82(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_InvokeOnGadget92(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_InvokeOnGadget102(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_InvokeOnGadget112(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
void QMetaMethod_Delete(QMetaMethod* self);

QMetaEnum* QMetaEnum_new(const QMetaEnum* other);
QMetaEnum* QMetaEnum_new2(QMetaEnum* other);
QMetaEnum* QMetaEnum_new3();
QMetaEnum* QMetaEnum_new4(const QMetaEnum* param1);
void QMetaEnum_CopyAssign(QMetaEnum* self, QMetaEnum* other);
void QMetaEnum_MoveAssign(QMetaEnum* self, QMetaEnum* other);
const char* QMetaEnum_Name(const QMetaEnum* self);
const char* QMetaEnum_EnumName(const QMetaEnum* self);
QMetaType* QMetaEnum_MetaType(const QMetaEnum* self);
bool QMetaEnum_IsFlag(const QMetaEnum* self);
bool QMetaEnum_IsScoped(const QMetaEnum* self);
int QMetaEnum_KeyCount(const QMetaEnum* self);
const char* QMetaEnum_Key(const QMetaEnum* self, int index);
int QMetaEnum_Value(const QMetaEnum* self, int index);
const char* QMetaEnum_Scope(const QMetaEnum* self);
int QMetaEnum_KeyToValue(const QMetaEnum* self, const char* key);
const char* QMetaEnum_ValueToKey(const QMetaEnum* self, int value);
int QMetaEnum_KeysToValue(const QMetaEnum* self, const char* keys);
libqt_string QMetaEnum_ValueToKeys(const QMetaEnum* self, int value);
QMetaObject* QMetaEnum_EnclosingMetaObject(const QMetaEnum* self);
bool QMetaEnum_IsValid(const QMetaEnum* self);
int QMetaEnum_KeyToValue2(const QMetaEnum* self, const char* key, bool* ok);
int QMetaEnum_KeysToValue2(const QMetaEnum* self, const char* keys, bool* ok);
void QMetaEnum_Delete(QMetaEnum* self);

QMetaProperty* QMetaProperty_new(const QMetaProperty* other);
QMetaProperty* QMetaProperty_new2(QMetaProperty* other);
QMetaProperty* QMetaProperty_new3();
void QMetaProperty_CopyAssign(QMetaProperty* self, QMetaProperty* other);
void QMetaProperty_MoveAssign(QMetaProperty* self, QMetaProperty* other);
const char* QMetaProperty_Name(const QMetaProperty* self);
const char* QMetaProperty_TypeName(const QMetaProperty* self);
int QMetaProperty_Type(const QMetaProperty* self);
int QMetaProperty_UserType(const QMetaProperty* self);
int QMetaProperty_TypeId(const QMetaProperty* self);
QMetaType* QMetaProperty_MetaType(const QMetaProperty* self);
int QMetaProperty_PropertyIndex(const QMetaProperty* self);
int QMetaProperty_RelativePropertyIndex(const QMetaProperty* self);
bool QMetaProperty_IsReadable(const QMetaProperty* self);
bool QMetaProperty_IsWritable(const QMetaProperty* self);
bool QMetaProperty_IsResettable(const QMetaProperty* self);
bool QMetaProperty_IsDesignable(const QMetaProperty* self);
bool QMetaProperty_IsScriptable(const QMetaProperty* self);
bool QMetaProperty_IsStored(const QMetaProperty* self);
bool QMetaProperty_IsUser(const QMetaProperty* self);
bool QMetaProperty_IsConstant(const QMetaProperty* self);
bool QMetaProperty_IsFinal(const QMetaProperty* self);
bool QMetaProperty_IsRequired(const QMetaProperty* self);
bool QMetaProperty_IsBindable(const QMetaProperty* self);
bool QMetaProperty_IsFlagType(const QMetaProperty* self);
bool QMetaProperty_IsEnumType(const QMetaProperty* self);
QMetaEnum* QMetaProperty_Enumerator(const QMetaProperty* self);
bool QMetaProperty_HasNotifySignal(const QMetaProperty* self);
QMetaMethod* QMetaProperty_NotifySignal(const QMetaProperty* self);
int QMetaProperty_NotifySignalIndex(const QMetaProperty* self);
int QMetaProperty_Revision(const QMetaProperty* self);
QVariant* QMetaProperty_Read(const QMetaProperty* self, const QObject* obj);
bool QMetaProperty_Write(const QMetaProperty* self, QObject* obj, const QVariant* value);
bool QMetaProperty_Reset(const QMetaProperty* self, QObject* obj);
QUntypedBindable* QMetaProperty_Bindable(const QMetaProperty* self, QObject* object);
QVariant* QMetaProperty_ReadOnGadget(const QMetaProperty* self, const void* gadget);
bool QMetaProperty_WriteOnGadget(const QMetaProperty* self, void* gadget, const QVariant* value);
bool QMetaProperty_ResetOnGadget(const QMetaProperty* self, void* gadget);
bool QMetaProperty_HasStdCppSet(const QMetaProperty* self);
bool QMetaProperty_IsAlias(const QMetaProperty* self);
bool QMetaProperty_IsValid(const QMetaProperty* self);
QMetaObject* QMetaProperty_EnclosingMetaObject(const QMetaProperty* self);
void QMetaProperty_Delete(QMetaProperty* self);

QMetaClassInfo* QMetaClassInfo_new(const QMetaClassInfo* other);
QMetaClassInfo* QMetaClassInfo_new2(QMetaClassInfo* other);
QMetaClassInfo* QMetaClassInfo_new3();
QMetaClassInfo* QMetaClassInfo_new4(const QMetaClassInfo* param1);
void QMetaClassInfo_CopyAssign(QMetaClassInfo* self, QMetaClassInfo* other);
void QMetaClassInfo_MoveAssign(QMetaClassInfo* self, QMetaClassInfo* other);
const char* QMetaClassInfo_Name(const QMetaClassInfo* self);
const char* QMetaClassInfo_Value(const QMetaClassInfo* self);
QMetaObject* QMetaClassInfo_EnclosingMetaObject(const QMetaClassInfo* self);
void QMetaClassInfo_Delete(QMetaClassInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
