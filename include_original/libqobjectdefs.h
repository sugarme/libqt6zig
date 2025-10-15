#pragma once
#ifndef SRCC_LIBQOBJECTDEFS_H
#define SRCC_LIBQOBJECTDEFS_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Data)
typedef QMetaObject::Data QMetaObject__Data;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__SuperData)
typedef QMetaObject::SuperData QMetaObject__SuperData;
#endif
#else
typedef struct QGenericArgument QGenericArgument;
typedef struct QGenericReturnArgument QGenericReturnArgument;
typedef struct QMetaClassInfo QMetaClassInfo;
typedef struct QMetaEnum QMetaEnum;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaMethodArgument QMetaMethodArgument;
typedef struct QMetaMethodReturnArgument QMetaMethodReturnArgument;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMetaObject__Data QMetaObject__Data;
typedef struct QMetaObject__SuperData QMetaObject__SuperData;
typedef struct QMetaProperty QMetaProperty;
typedef struct QMetaType QMetaType;
typedef struct QMethodRawArguments QMethodRawArguments;
typedef struct QObject QObject;
#endif

QGenericArgument* QGenericArgument_new(const QGenericArgument* other);
QGenericArgument* QGenericArgument_new2(QGenericArgument* other);
QGenericArgument* QGenericArgument_new3();
QGenericArgument* QGenericArgument_new4(const QGenericArgument* param1);
QGenericArgument* QGenericArgument_new5(const char* aName);
QGenericArgument* QGenericArgument_new6(const char* aName, const void* aData);
void QGenericArgument_CopyAssign(QGenericArgument* self, QGenericArgument* other);
void QGenericArgument_MoveAssign(QGenericArgument* self, QGenericArgument* other);
void* QGenericArgument_Data(const QGenericArgument* self);
const char* QGenericArgument_Name(const QGenericArgument* self);
void QGenericArgument_Delete(QGenericArgument* self);

QGenericReturnArgument* QGenericReturnArgument_new(const QGenericReturnArgument* other);
QGenericReturnArgument* QGenericReturnArgument_new2(QGenericReturnArgument* other);
QGenericReturnArgument* QGenericReturnArgument_new3();
QGenericReturnArgument* QGenericReturnArgument_new4(const QGenericReturnArgument* param1);
QGenericReturnArgument* QGenericReturnArgument_new5(const char* aName);
QGenericReturnArgument* QGenericReturnArgument_new6(const char* aName, void* aData);
void QGenericReturnArgument_CopyAssign(QGenericReturnArgument* self, QGenericReturnArgument* other);
void QGenericReturnArgument_MoveAssign(QGenericReturnArgument* self, QGenericReturnArgument* other);
void QGenericReturnArgument_Delete(QGenericReturnArgument* self);

const char* QMetaMethodArgument_Name(const QMetaMethodArgument* self);
void QMetaMethodArgument_SetName(QMetaMethodArgument* self, const char* name);
void QMetaMethodArgument_Delete(QMetaMethodArgument* self);

const char* QMetaMethodReturnArgument_Name(const QMetaMethodReturnArgument* self);
void QMetaMethodReturnArgument_SetName(QMetaMethodReturnArgument* self, const char* name);
void QMetaMethodReturnArgument_Delete(QMetaMethodReturnArgument* self);

QMetaObject* QMetaObject_new();
QMetaObject* QMetaObject_new2(const QMetaObject* param1);
const char* QMetaObject_ClassName(const QMetaObject* self);
QMetaObject* QMetaObject_SuperClass(const QMetaObject* self);
bool QMetaObject_Inherits(const QMetaObject* self, const QMetaObject* metaObject);
QObject* QMetaObject_Cast(const QMetaObject* self, QObject* obj);
QObject* QMetaObject_Cast2(const QMetaObject* self, const QObject* obj);
libqt_string QMetaObject_Tr(const QMetaObject* self, const char* s, const char* c);
QMetaType* QMetaObject_MetaType(const QMetaObject* self);
int QMetaObject_MethodOffset(const QMetaObject* self);
int QMetaObject_EnumeratorOffset(const QMetaObject* self);
int QMetaObject_PropertyOffset(const QMetaObject* self);
int QMetaObject_ClassInfoOffset(const QMetaObject* self);
int QMetaObject_ConstructorCount(const QMetaObject* self);
int QMetaObject_MethodCount(const QMetaObject* self);
int QMetaObject_EnumeratorCount(const QMetaObject* self);
int QMetaObject_PropertyCount(const QMetaObject* self);
int QMetaObject_ClassInfoCount(const QMetaObject* self);
int QMetaObject_IndexOfConstructor(const QMetaObject* self, const char* constructor);
int QMetaObject_IndexOfMethod(const QMetaObject* self, const char* method);
int QMetaObject_IndexOfSignal(const QMetaObject* self, const char* signal);
int QMetaObject_IndexOfSlot(const QMetaObject* self, const char* slot);
int QMetaObject_IndexOfEnumerator(const QMetaObject* self, const char* name);
int QMetaObject_IndexOfProperty(const QMetaObject* self, const char* name);
int QMetaObject_IndexOfClassInfo(const QMetaObject* self, const char* name);
QMetaMethod* QMetaObject_Constructor(const QMetaObject* self, int index);
QMetaMethod* QMetaObject_Method(const QMetaObject* self, int index);
QMetaEnum* QMetaObject_Enumerator(const QMetaObject* self, int index);
QMetaProperty* QMetaObject_Property(const QMetaObject* self, int index);
QMetaClassInfo* QMetaObject_ClassInfo(const QMetaObject* self, int index);
QMetaProperty* QMetaObject_UserProperty(const QMetaObject* self);
bool QMetaObject_CheckConnectArgs(const char* signal, const char* method);
bool QMetaObject_CheckConnectArgs2(const QMetaMethod* signal, const QMetaMethod* method);
libqt_string QMetaObject_NormalizedSignature(const char* method);
libqt_string QMetaObject_NormalizedType(const char* typeVal);
QMetaObject__Connection* QMetaObject_Connect(const QObject* sender, int signal_index, const QObject* receiver, int method_index);
bool QMetaObject_Disconnect(const QObject* sender, int signal_index, const QObject* receiver, int method_index);
bool QMetaObject_DisconnectOne(const QObject* sender, int signal_index, const QObject* receiver, int method_index);
void QMetaObject_ConnectSlotsByName(QObject* o);
void QMetaObject_Activate(QObject* sender, int signal_index, void** argv);
void QMetaObject_Activate2(QObject* sender, const QMetaObject* param2, int local_signal_index, void** argv);
void QMetaObject_Activate3(QObject* sender, int signal_offset, int local_signal_index, void** argv);
bool QMetaObject_InvokeMethod(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal);
bool QMetaObject_InvokeMethod2(QObject* obj, const char* member, QGenericReturnArgument* retVal);
bool QMetaObject_InvokeMethod3(QObject* obj, const char* member, int typeVal, QGenericArgument* val0);
bool QMetaObject_InvokeMethod4(QObject* obj, const char* member, QGenericArgument* val0);
QObject* QMetaObject_NewInstance(const QMetaObject* self, QGenericArgument* val0);
int QMetaObject_StaticMetacall(const QMetaObject* self, int param1, int param2, void** param3);
int QMetaObject_Metacall(QObject* param1, int param2, int param3, void** param4);
QMetaObject__Data* QMetaObject_D(const QMetaObject* self);
void QMetaObject_SetD(QMetaObject* self, QMetaObject__Data* d);
libqt_string QMetaObject_Tr3(const QMetaObject* self, const char* s, const char* c, int n);
QMetaObject__Connection* QMetaObject_Connect5(const QObject* sender, int signal_index, const QObject* receiver, int method_index, int typeVal);
QMetaObject__Connection* QMetaObject_Connect6(const QObject* sender, int signal_index, const QObject* receiver, int method_index, int typeVal, int* types);
bool QMetaObject_InvokeMethod5(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0);
bool QMetaObject_InvokeMethod6(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_InvokeMethod7(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_InvokeMethod8(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_InvokeMethod9(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_InvokeMethod10(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_InvokeMethod11(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_InvokeMethod12(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_InvokeMethod13(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_InvokeMethod14(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_InvokeMethod42(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0);
bool QMetaObject_InvokeMethod52(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_InvokeMethod62(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_InvokeMethod72(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_InvokeMethod82(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_InvokeMethod92(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_InvokeMethod102(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_InvokeMethod112(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_InvokeMethod122(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_InvokeMethod132(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_InvokeMethod53(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_InvokeMethod63(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_InvokeMethod73(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_InvokeMethod83(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_InvokeMethod93(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_InvokeMethod103(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_InvokeMethod113(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_InvokeMethod123(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_InvokeMethod133(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_InvokeMethod43(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_InvokeMethod54(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_InvokeMethod64(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_InvokeMethod74(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_InvokeMethod84(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_InvokeMethod94(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_InvokeMethod104(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_InvokeMethod114(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_InvokeMethod124(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QObject* QMetaObject_NewInstance2(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1);
QObject* QMetaObject_NewInstance3(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QObject* QMetaObject_NewInstance4(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QObject* QMetaObject_NewInstance5(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QObject* QMetaObject_NewInstance6(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QObject* QMetaObject_NewInstance7(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QObject* QMetaObject_NewInstance8(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QObject* QMetaObject_NewInstance9(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QObject* QMetaObject_NewInstance10(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
void QMetaObject_Delete(QMetaObject* self);

QMetaObject__Connection* QMetaObject__Connection_new();
QMetaObject__Connection* QMetaObject__Connection_new2(const QMetaObject__Connection* other);
void QMetaObject__Connection_OperatorAssign(QMetaObject__Connection* self, const QMetaObject__Connection* other);
void QMetaObject__Connection_Swap(QMetaObject__Connection* self, QMetaObject__Connection* other);
void QMetaObject__Connection_Delete(QMetaObject__Connection* self);

QMetaObject__SuperData* QMetaObject__SuperData_new();
QMetaObject__SuperData* QMetaObject__SuperData_new2(const QMetaObject* mo);
QMetaObject__SuperData* QMetaObject__SuperData_new3(const QMetaObject__SuperData* param1);
QMetaObject* QMetaObject__SuperData_Direct(const QMetaObject__SuperData* self);
void QMetaObject__SuperData_SetDirect(QMetaObject__SuperData* self, const QMetaObject* direct);
QMetaObject* QMetaObject__SuperData_OperatorMinusGreater(const QMetaObject__SuperData* self);
QMetaObject* QMetaObject__SuperData_ToConstQMetaObjectMultiply(const QMetaObject__SuperData* self);
void QMetaObject__SuperData_OperatorAssign(QMetaObject__SuperData* self, const QMetaObject__SuperData* param1);
void QMetaObject__SuperData_Delete(QMetaObject__SuperData* self);

QMetaObject__Data* QMetaObject__Data_new();
QMetaObject__Data* QMetaObject__Data_new2(const QMetaObject__Data* param1);
QMetaObject__SuperData* QMetaObject__Data_Superdata(const QMetaObject__Data* self);
void QMetaObject__Data_SetSuperdata(QMetaObject__Data* self, QMetaObject__SuperData* superdata);
const unsigned int* QMetaObject__Data_Stringdata(const QMetaObject__Data* self);
void QMetaObject__Data_SetStringdata(QMetaObject__Data* self, const unsigned int* stringdata);
const unsigned int* QMetaObject__Data_Data(const QMetaObject__Data* self);
void QMetaObject__Data_SetData(QMetaObject__Data* self, const unsigned int* data);
QMetaObject__SuperData* QMetaObject__Data_RelatedMetaObjects(const QMetaObject__Data* self);
void QMetaObject__Data_SetRelatedMetaObjects(QMetaObject__Data* self, const QMetaObject__SuperData* relatedMetaObjects);
void QMetaObject__Data_OperatorAssign(QMetaObject__Data* self, const QMetaObject__Data* param1);
void QMetaObject__Data_Delete(QMetaObject__Data* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
