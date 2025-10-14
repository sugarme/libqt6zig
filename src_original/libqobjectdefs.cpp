#include <QByteArray>
#include <QGenericArgument>
#include <QGenericReturnArgument>
#include <QMetaClassInfo>
#include <QMetaEnum>
#include <QMetaMethod>
#include <QMetaMethodArgument>
#include <QMetaMethodReturnArgument>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Data
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__SuperData
#include <QMetaProperty>
#include <QMetaType>
#include <QMethodRawArguments>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qobjectdefs.h>
#include "libqobjectdefs.h"
#include "libqobjectdefs.hxx"

QGenericArgument* QGenericArgument_new(const QGenericArgument* other) {
    return new QGenericArgument(*other);
}

QGenericArgument* QGenericArgument_new2(QGenericArgument* other) {
    return new QGenericArgument(std::move(*other));
}

QGenericArgument* QGenericArgument_new3() {
    return new QGenericArgument();
}

QGenericArgument* QGenericArgument_new4(const QGenericArgument* param1) {
    return new QGenericArgument(*param1);
}

QGenericArgument* QGenericArgument_new5(const char* aName) {
    return new QGenericArgument(aName);
}

QGenericArgument* QGenericArgument_new6(const char* aName, const void* aData) {
    return new QGenericArgument(aName, aData);
}

void QGenericArgument_CopyAssign(QGenericArgument* self, QGenericArgument* other) {
    *self = *other;
}

void QGenericArgument_MoveAssign(QGenericArgument* self, QGenericArgument* other) {
    *self = std::move(*other);
}

void* QGenericArgument_Data(const QGenericArgument* self) {
    return self->data();
}

const char* QGenericArgument_Name(const QGenericArgument* self) {
    return (const char*)self->name();
}

void QGenericArgument_Delete(QGenericArgument* self) {
    delete self;
}

QGenericReturnArgument* QGenericReturnArgument_new(const QGenericReturnArgument* other) {
    return new QGenericReturnArgument(*other);
}

QGenericReturnArgument* QGenericReturnArgument_new2(QGenericReturnArgument* other) {
    return new QGenericReturnArgument(std::move(*other));
}

QGenericReturnArgument* QGenericReturnArgument_new3() {
    return new QGenericReturnArgument();
}

QGenericReturnArgument* QGenericReturnArgument_new4(const QGenericReturnArgument* param1) {
    return new QGenericReturnArgument(*param1);
}

QGenericReturnArgument* QGenericReturnArgument_new5(const char* aName) {
    return new QGenericReturnArgument(aName);
}

QGenericReturnArgument* QGenericReturnArgument_new6(const char* aName, void* aData) {
    return new QGenericReturnArgument(aName, aData);
}

void QGenericReturnArgument_CopyAssign(QGenericReturnArgument* self, QGenericReturnArgument* other) {
    *self = *other;
}

void QGenericReturnArgument_MoveAssign(QGenericReturnArgument* self, QGenericReturnArgument* other) {
    *self = std::move(*other);
}

void QGenericReturnArgument_Delete(QGenericReturnArgument* self) {
    delete self;
}

const char* QMetaMethodArgument_Name(const QMetaMethodArgument* self) {
    return (const char*)self->name;
}

void QMetaMethodArgument_SetName(QMetaMethodArgument* self, const char* name) {
    self->name = name;
}

void QMetaMethodArgument_Delete(QMetaMethodArgument* self) {
    delete self;
}

const char* QMetaMethodReturnArgument_Name(const QMetaMethodReturnArgument* self) {
    return (const char*)self->name;
}

void QMetaMethodReturnArgument_SetName(QMetaMethodReturnArgument* self, const char* name) {
    self->name = name;
}

void QMetaMethodReturnArgument_Delete(QMetaMethodReturnArgument* self) {
    delete self;
}

QMetaObject* QMetaObject_new() {
    return new QMetaObject();
}

QMetaObject* QMetaObject_new2(const QMetaObject* param1) {
    return new QMetaObject(*param1);
}

const char* QMetaObject_ClassName(const QMetaObject* self) {
    return (const char*)self->className();
}

QMetaObject* QMetaObject_SuperClass(const QMetaObject* self) {
    return (QMetaObject*)self->superClass();
}

bool QMetaObject_Inherits(const QMetaObject* self, const QMetaObject* metaObject) {
    return self->inherits(metaObject);
}

QObject* QMetaObject_Cast(const QMetaObject* self, QObject* obj) {
    return self->cast(obj);
}

QObject* QMetaObject_Cast2(const QMetaObject* self, const QObject* obj) {
    return (QObject*)self->cast(obj);
}

libqt_string QMetaObject_Tr(const QMetaObject* self, const char* s, const char* c) {
    QString _ret = self->tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QMetaType* QMetaObject_MetaType(const QMetaObject* self) {
    return new QMetaType(self->metaType());
}

int QMetaObject_MethodOffset(const QMetaObject* self) {
    return self->methodOffset();
}

int QMetaObject_EnumeratorOffset(const QMetaObject* self) {
    return self->enumeratorOffset();
}

int QMetaObject_PropertyOffset(const QMetaObject* self) {
    return self->propertyOffset();
}

int QMetaObject_ClassInfoOffset(const QMetaObject* self) {
    return self->classInfoOffset();
}

int QMetaObject_ConstructorCount(const QMetaObject* self) {
    return self->constructorCount();
}

int QMetaObject_MethodCount(const QMetaObject* self) {
    return self->methodCount();
}

int QMetaObject_EnumeratorCount(const QMetaObject* self) {
    return self->enumeratorCount();
}

int QMetaObject_PropertyCount(const QMetaObject* self) {
    return self->propertyCount();
}

int QMetaObject_ClassInfoCount(const QMetaObject* self) {
    return self->classInfoCount();
}

int QMetaObject_IndexOfConstructor(const QMetaObject* self, const char* constructor) {
    return self->indexOfConstructor(constructor);
}

int QMetaObject_IndexOfMethod(const QMetaObject* self, const char* method) {
    return self->indexOfMethod(method);
}

int QMetaObject_IndexOfSignal(const QMetaObject* self, const char* signal) {
    return self->indexOfSignal(signal);
}

int QMetaObject_IndexOfSlot(const QMetaObject* self, const char* slot) {
    return self->indexOfSlot(slot);
}

int QMetaObject_IndexOfEnumerator(const QMetaObject* self, const char* name) {
    return self->indexOfEnumerator(name);
}

int QMetaObject_IndexOfProperty(const QMetaObject* self, const char* name) {
    return self->indexOfProperty(name);
}

int QMetaObject_IndexOfClassInfo(const QMetaObject* self, const char* name) {
    return self->indexOfClassInfo(name);
}

QMetaMethod* QMetaObject_Constructor(const QMetaObject* self, int index) {
    return new QMetaMethod(self->constructor(static_cast<int>(index)));
}

QMetaMethod* QMetaObject_Method(const QMetaObject* self, int index) {
    return new QMetaMethod(self->method(static_cast<int>(index)));
}

QMetaEnum* QMetaObject_Enumerator(const QMetaObject* self, int index) {
    return new QMetaEnum(self->enumerator(static_cast<int>(index)));
}

QMetaProperty* QMetaObject_Property(const QMetaObject* self, int index) {
    return new QMetaProperty(self->property(static_cast<int>(index)));
}

QMetaClassInfo* QMetaObject_ClassInfo(const QMetaObject* self, int index) {
    return new QMetaClassInfo(self->classInfo(static_cast<int>(index)));
}

QMetaProperty* QMetaObject_UserProperty(const QMetaObject* self) {
    return new QMetaProperty(self->userProperty());
}

bool QMetaObject_CheckConnectArgs(const char* signal, const char* method) {
    return QMetaObject::checkConnectArgs(signal, method);
}

bool QMetaObject_CheckConnectArgs2(const QMetaMethod* signal, const QMetaMethod* method) {
    return QMetaObject::checkConnectArgs(*signal, *method);
}

libqt_string QMetaObject_NormalizedSignature(const char* method) {
    QByteArray _qb = QMetaObject::normalizedSignature(method);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QMetaObject_NormalizedType(const char* typeVal) {
    QByteArray _qb = QMetaObject::normalizedType(typeVal);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QMetaObject__Connection* QMetaObject_Connect(const QObject* sender, int signal_index, const QObject* receiver, int method_index) {
    return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index)));
}

bool QMetaObject_Disconnect(const QObject* sender, int signal_index, const QObject* receiver, int method_index) {
    return QMetaObject::disconnect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index));
}

bool QMetaObject_DisconnectOne(const QObject* sender, int signal_index, const QObject* receiver, int method_index) {
    return QMetaObject::disconnectOne(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index));
}

void QMetaObject_ConnectSlotsByName(QObject* o) {
    QMetaObject::connectSlotsByName(o);
}

void QMetaObject_Activate(QObject* sender, int signal_index, void** argv) {
    QMetaObject::activate(sender, static_cast<int>(signal_index), argv);
}

void QMetaObject_Activate2(QObject* sender, const QMetaObject* param2, int local_signal_index, void** argv) {
    QMetaObject::activate(sender, param2, static_cast<int>(local_signal_index), argv);
}

void QMetaObject_Activate3(QObject* sender, int signal_offset, int local_signal_index, void** argv) {
    QMetaObject::activate(sender, static_cast<int>(signal_offset), static_cast<int>(local_signal_index), argv);
}

bool QMetaObject_InvokeMethod(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal);
}

bool QMetaObject_InvokeMethod2(QObject* obj, const char* member, QGenericReturnArgument* retVal) {
    return QMetaObject::invokeMethod(obj, member, *retVal);
}

bool QMetaObject_InvokeMethod3(QObject* obj, const char* member, int typeVal, QGenericArgument* val0) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0);
}

bool QMetaObject_InvokeMethod4(QObject* obj, const char* member, QGenericArgument* val0) {
    return QMetaObject::invokeMethod(obj, member, *val0);
}

QObject* QMetaObject_NewInstance(const QMetaObject* self, QGenericArgument* val0) {
    return self->newInstance(*val0);
}

int QMetaObject_StaticMetacall(const QMetaObject* self, int param1, int param2, void** param3) {
    return self->static_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QMetaObject_Metacall(QObject* param1, int param2, int param3, void** param4) {
    return QMetaObject::metacall(param1, static_cast<QMetaObject::Call>(param2), static_cast<int>(param3), param4);
}

QMetaObject__Data* QMetaObject_D(const QMetaObject* self) {
    return new QMetaObject::Data(self->d);
}

void QMetaObject_SetD(QMetaObject* self, QMetaObject__Data* d) {
    self->d = *d;
}

libqt_string QMetaObject_Tr3(const QMetaObject* self, const char* s, const char* c, int n) {
    QString _ret = self->tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QMetaObject__Connection* QMetaObject_Connect5(const QObject* sender, int signal_index, const QObject* receiver, int method_index, int typeVal) {
    return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index), static_cast<int>(typeVal)));
}

QMetaObject__Connection* QMetaObject_Connect6(const QObject* sender, int signal_index, const QObject* receiver, int method_index, int typeVal, int* types) {
    return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index), static_cast<int>(typeVal), static_cast<int*>(types)));
}

bool QMetaObject_InvokeMethod5(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0);
}

bool QMetaObject_InvokeMethod6(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1);
}

bool QMetaObject_InvokeMethod7(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2);
}

bool QMetaObject_InvokeMethod8(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3);
}

bool QMetaObject_InvokeMethod9(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_InvokeMethod10(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_InvokeMethod11(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_InvokeMethod12(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_InvokeMethod13(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_InvokeMethod14(QObject* obj, const char* member, int param3, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_InvokeMethod42(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0);
}

bool QMetaObject_InvokeMethod52(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1);
}

bool QMetaObject_InvokeMethod62(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2);
}

bool QMetaObject_InvokeMethod72(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3);
}

bool QMetaObject_InvokeMethod82(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_InvokeMethod92(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_InvokeMethod102(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_InvokeMethod112(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_InvokeMethod122(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_InvokeMethod132(QObject* obj, const char* member, QGenericReturnArgument* retVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return QMetaObject::invokeMethod(obj, member, *retVal, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_InvokeMethod53(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1);
}

bool QMetaObject_InvokeMethod63(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2);
}

bool QMetaObject_InvokeMethod73(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3);
}

bool QMetaObject_InvokeMethod83(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_InvokeMethod93(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_InvokeMethod103(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_InvokeMethod113(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_InvokeMethod123(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_InvokeMethod133(QObject* obj, const char* member, int typeVal, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(typeVal), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_InvokeMethod43(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1);
}

bool QMetaObject_InvokeMethod54(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2);
}

bool QMetaObject_InvokeMethod64(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3);
}

bool QMetaObject_InvokeMethod74(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_InvokeMethod84(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_InvokeMethod94(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_InvokeMethod104(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_InvokeMethod114(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_InvokeMethod124(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

QObject* QMetaObject_NewInstance2(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1) {
    return self->newInstance(*val0, *val1);
}

QObject* QMetaObject_NewInstance3(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->newInstance(*val0, *val1, *val2);
}

QObject* QMetaObject_NewInstance4(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->newInstance(*val0, *val1, *val2, *val3);
}

QObject* QMetaObject_NewInstance5(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4);
}

QObject* QMetaObject_NewInstance6(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5);
}

QObject* QMetaObject_NewInstance7(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

QObject* QMetaObject_NewInstance8(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

QObject* QMetaObject_NewInstance9(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

QObject* QMetaObject_NewInstance10(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

void QMetaObject_Delete(QMetaObject* self) {
    delete self;
}

QMetaObject__Connection* QMetaObject__Connection_new() {
    return new QMetaObject::Connection();
}

QMetaObject__Connection* QMetaObject__Connection_new2(const QMetaObject__Connection* other) {
    return new QMetaObject::Connection(*other);
}

void QMetaObject__Connection_OperatorAssign(QMetaObject__Connection* self, const QMetaObject__Connection* other) {
    self->operator=(*other);
}

void QMetaObject__Connection_Swap(QMetaObject__Connection* self, QMetaObject__Connection* other) {
    self->swap(*other);
}

void QMetaObject__Connection_Delete(QMetaObject__Connection* self) {
    delete self;
}

QMetaObject__SuperData* QMetaObject__SuperData_new() {
    return new QMetaObject::SuperData();
}

QMetaObject__SuperData* QMetaObject__SuperData_new2(const QMetaObject* mo) {
    return new QMetaObject::SuperData(mo);
}

QMetaObject__SuperData* QMetaObject__SuperData_new3(const QMetaObject__SuperData* param1) {
    return new QMetaObject::SuperData(*param1);
}

QMetaObject* QMetaObject__SuperData_Direct(const QMetaObject__SuperData* self) {
    return (QMetaObject*)self->direct;
}

void QMetaObject__SuperData_SetDirect(QMetaObject__SuperData* self, const QMetaObject* direct) {
    self->direct = direct;
}

QMetaObject* QMetaObject__SuperData_OperatorMinusGreater(const QMetaObject__SuperData* self) {
    return (QMetaObject*)self->operator->();
}

QMetaObject* QMetaObject__SuperData_ToConstQMetaObjectMultiply(const QMetaObject__SuperData* self) {
    return (QMetaObject*)self->operator const QMetaObject*();
}

void QMetaObject__SuperData_OperatorAssign(QMetaObject__SuperData* self, const QMetaObject__SuperData* param1) {
    self->operator=(*param1);
}

void QMetaObject__SuperData_Delete(QMetaObject__SuperData* self) {
    delete self;
}

QMetaObject__Data* QMetaObject__Data_new() {
    return new QMetaObject::Data();
}

QMetaObject__Data* QMetaObject__Data_new2(const QMetaObject__Data* param1) {
    return new QMetaObject::Data(*param1);
}

QMetaObject__SuperData* QMetaObject__Data_Superdata(const QMetaObject__Data* self) {
    return new QMetaObject::SuperData(self->superdata);
}

void QMetaObject__Data_SetSuperdata(QMetaObject__Data* self, QMetaObject__SuperData* superdata) {
    self->superdata = *superdata;
}

const unsigned int* QMetaObject__Data_Stringdata(const QMetaObject__Data* self) {
    return static_cast<const unsigned int*>(self->stringdata);
}

void QMetaObject__Data_SetStringdata(QMetaObject__Data* self, const unsigned int* stringdata) {
    self->stringdata = static_cast<const uint*>(stringdata);
}

const unsigned int* QMetaObject__Data_Data(const QMetaObject__Data* self) {
    return static_cast<const unsigned int*>(self->data);
}

void QMetaObject__Data_SetData(QMetaObject__Data* self, const unsigned int* data) {
    self->data = static_cast<const uint*>(data);
}

QMetaObject__SuperData* QMetaObject__Data_RelatedMetaObjects(const QMetaObject__Data* self) {
    return (QMetaObject__SuperData*)self->relatedMetaObjects;
}

void QMetaObject__Data_SetRelatedMetaObjects(QMetaObject__Data* self, const QMetaObject__SuperData* relatedMetaObjects) {
    self->relatedMetaObjects = relatedMetaObjects;
}

void QMetaObject__Data_OperatorAssign(QMetaObject__Data* self, const QMetaObject__Data* param1) {
    self->operator=(*param1);
}

void QMetaObject__Data_Delete(QMetaObject__Data* self) {
    delete self;
}
