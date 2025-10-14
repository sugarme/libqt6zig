#include <QByteArray>
#include <QGenericArgument>
#include <QGenericReturnArgument>
#include <QList>
#include <QMetaClassInfo>
#include <QMetaEnum>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMetaProperty>
#include <QMetaType>
#include <QObject>
#include <QUntypedBindable>
#include <QVariant>
#include <qmetaobject.h>
#include "libqmetaobject.h"
#include "libqmetaobject.hxx"

QMetaMethod* QMetaMethod_new(const QMetaMethod* other) {
    return new QMetaMethod(*other);
}

QMetaMethod* QMetaMethod_new2(QMetaMethod* other) {
    return new QMetaMethod(std::move(*other));
}

QMetaMethod* QMetaMethod_new3() {
    return new QMetaMethod();
}

QMetaMethod* QMetaMethod_new4(const QMetaMethod* param1) {
    return new QMetaMethod(*param1);
}

void QMetaMethod_CopyAssign(QMetaMethod* self, QMetaMethod* other) {
    *self = *other;
}

void QMetaMethod_MoveAssign(QMetaMethod* self, QMetaMethod* other) {
    *self = std::move(*other);
}

libqt_string QMetaMethod_MethodSignature(const QMetaMethod* self) {
    QByteArray _qb = self->methodSignature();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QMetaMethod_Name(const QMetaMethod* self) {
    QByteArray _qb = self->name();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

const char* QMetaMethod_TypeName(const QMetaMethod* self) {
    return (const char*)self->typeName();
}

int QMetaMethod_ReturnType(const QMetaMethod* self) {
    return self->returnType();
}

QMetaType* QMetaMethod_ReturnMetaType(const QMetaMethod* self) {
    return new QMetaType(self->returnMetaType());
}

int QMetaMethod_ParameterCount(const QMetaMethod* self) {
    return self->parameterCount();
}

int QMetaMethod_ParameterType(const QMetaMethod* self, int index) {
    return self->parameterType(static_cast<int>(index));
}

QMetaType* QMetaMethod_ParameterMetaType(const QMetaMethod* self, int index) {
    return new QMetaType(self->parameterMetaType(static_cast<int>(index)));
}

void QMetaMethod_GetParameterTypes(const QMetaMethod* self, int* types) {
    self->getParameterTypes(static_cast<int*>(types));
}

libqt_list /* of libqt_string */ QMetaMethod_ParameterTypes(const QMetaMethod* self) {
    QList<QByteArray> _ret = self->parameterTypes();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        QByteArray _lv_qb = _ret[i];
        libqt_string _lv_str;
        _lv_str.len = _lv_qb.length();
        _lv_str.data = static_cast<const char*>(malloc(_lv_str.len + 1));
        memcpy((void*)_lv_str.data, _lv_qb.data(), _lv_str.len);
        ((char*)_lv_str.data)[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QMetaMethod_ParameterTypeName(const QMetaMethod* self, int index) {
    QByteArray _qb = self->parameterTypeName(static_cast<int>(index));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QMetaMethod_ParameterNames(const QMetaMethod* self) {
    QList<QByteArray> _ret = self->parameterNames();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        QByteArray _lv_qb = _ret[i];
        libqt_string _lv_str;
        _lv_str.len = _lv_qb.length();
        _lv_str.data = static_cast<const char*>(malloc(_lv_str.len + 1));
        memcpy((void*)_lv_str.data, _lv_qb.data(), _lv_str.len);
        ((char*)_lv_str.data)[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

const char* QMetaMethod_Tag(const QMetaMethod* self) {
    return (const char*)self->tag();
}

int QMetaMethod_Access(const QMetaMethod* self) {
    return static_cast<int>(self->access());
}

int QMetaMethod_MethodType(const QMetaMethod* self) {
    return static_cast<int>(self->methodType());
}

int QMetaMethod_Attributes(const QMetaMethod* self) {
    return self->attributes();
}

int QMetaMethod_MethodIndex(const QMetaMethod* self) {
    return self->methodIndex();
}

int QMetaMethod_RelativeMethodIndex(const QMetaMethod* self) {
    return self->relativeMethodIndex();
}

int QMetaMethod_Revision(const QMetaMethod* self) {
    return self->revision();
}

bool QMetaMethod_IsConst(const QMetaMethod* self) {
    return self->isConst();
}

QMetaObject* QMetaMethod_EnclosingMetaObject(const QMetaMethod* self) {
    return (QMetaObject*)self->enclosingMetaObject();
}

bool QMetaMethod_Invoke(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue);
}

bool QMetaMethod_Invoke2(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue) {
    return self->invoke(object, *returnValue);
}

bool QMetaMethod_Invoke3(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0);
}

bool QMetaMethod_Invoke4(const QMetaMethod* self, QObject* object, QGenericArgument* val0) {
    return self->invoke(object, *val0);
}

bool QMetaMethod_InvokeOnGadget(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue) {
    return self->invokeOnGadget(gadget, *returnValue);
}

bool QMetaMethod_InvokeOnGadget2(const QMetaMethod* self, void* gadget, QGenericArgument* val0) {
    return self->invokeOnGadget(gadget, *val0);
}

bool QMetaMethod_IsValid(const QMetaMethod* self) {
    return self->isValid();
}

bool QMetaMethod_Invoke42(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0);
}

bool QMetaMethod_Invoke5(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1);
}

bool QMetaMethod_Invoke6(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2);
}

bool QMetaMethod_Invoke7(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3);
}

bool QMetaMethod_Invoke8(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_Invoke9(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_Invoke10(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_Invoke11(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_Invoke12(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_Invoke13(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaMethod_Invoke32(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0) {
    return self->invoke(object, *returnValue, *val0);
}

bool QMetaMethod_Invoke43(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invoke(object, *returnValue, *val0, *val1);
}

bool QMetaMethod_Invoke52(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2);
}

bool QMetaMethod_Invoke62(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3);
}

bool QMetaMethod_Invoke72(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_Invoke82(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_Invoke92(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_Invoke102(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_Invoke112(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_Invoke122(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invoke(object, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaMethod_Invoke44(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1);
}

bool QMetaMethod_Invoke53(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2);
}

bool QMetaMethod_Invoke63(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3);
}

bool QMetaMethod_Invoke73(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_Invoke83(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_Invoke93(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_Invoke103(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_Invoke113(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_Invoke123(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invoke(object, static_cast<Qt::ConnectionType>(connectionType), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaMethod_Invoke33(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invoke(object, *val0, *val1);
}

bool QMetaMethod_Invoke45(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invoke(object, *val0, *val1, *val2);
}

bool QMetaMethod_Invoke54(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invoke(object, *val0, *val1, *val2, *val3);
}

bool QMetaMethod_Invoke64(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_Invoke74(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_Invoke84(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_Invoke94(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_Invoke104(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_Invoke114(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invoke(object, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaMethod_InvokeOnGadget3(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0) {
    return self->invokeOnGadget(gadget, *returnValue, *val0);
}

bool QMetaMethod_InvokeOnGadget4(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1);
}

bool QMetaMethod_InvokeOnGadget5(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2);
}

bool QMetaMethod_InvokeOnGadget6(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3);
}

bool QMetaMethod_InvokeOnGadget7(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_InvokeOnGadget8(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_InvokeOnGadget9(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_InvokeOnGadget10(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_InvokeOnGadget11(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_InvokeOnGadget12(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invokeOnGadget(gadget, *returnValue, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaMethod_InvokeOnGadget32(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1) {
    return self->invokeOnGadget(gadget, *val0, *val1);
}

bool QMetaMethod_InvokeOnGadget42(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2);
}

bool QMetaMethod_InvokeOnGadget52(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3);
}

bool QMetaMethod_InvokeOnGadget62(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaMethod_InvokeOnGadget72(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaMethod_InvokeOnGadget82(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaMethod_InvokeOnGadget92(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaMethod_InvokeOnGadget102(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaMethod_InvokeOnGadget112(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
    return self->invokeOnGadget(gadget, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

void QMetaMethod_Delete(QMetaMethod* self) {
    delete self;
}

QMetaEnum* QMetaEnum_new(const QMetaEnum* other) {
    return new QMetaEnum(*other);
}

QMetaEnum* QMetaEnum_new2(QMetaEnum* other) {
    return new QMetaEnum(std::move(*other));
}

QMetaEnum* QMetaEnum_new3() {
    return new QMetaEnum();
}

QMetaEnum* QMetaEnum_new4(const QMetaEnum* param1) {
    return new QMetaEnum(*param1);
}

void QMetaEnum_CopyAssign(QMetaEnum* self, QMetaEnum* other) {
    *self = *other;
}

void QMetaEnum_MoveAssign(QMetaEnum* self, QMetaEnum* other) {
    *self = std::move(*other);
}

const char* QMetaEnum_Name(const QMetaEnum* self) {
    return (const char*)self->name();
}

const char* QMetaEnum_EnumName(const QMetaEnum* self) {
    return (const char*)self->enumName();
}

QMetaType* QMetaEnum_MetaType(const QMetaEnum* self) {
    return new QMetaType(self->metaType());
}

bool QMetaEnum_IsFlag(const QMetaEnum* self) {
    return self->isFlag();
}

bool QMetaEnum_IsScoped(const QMetaEnum* self) {
    return self->isScoped();
}

int QMetaEnum_KeyCount(const QMetaEnum* self) {
    return self->keyCount();
}

const char* QMetaEnum_Key(const QMetaEnum* self, int index) {
    return (const char*)self->key(static_cast<int>(index));
}

int QMetaEnum_Value(const QMetaEnum* self, int index) {
    return self->value(static_cast<int>(index));
}

const char* QMetaEnum_Scope(const QMetaEnum* self) {
    return (const char*)self->scope();
}

int QMetaEnum_KeyToValue(const QMetaEnum* self, const char* key) {
    return self->keyToValue(key);
}

const char* QMetaEnum_ValueToKey(const QMetaEnum* self, int value) {
    return (const char*)self->valueToKey(static_cast<int>(value));
}

int QMetaEnum_KeysToValue(const QMetaEnum* self, const char* keys) {
    return self->keysToValue(keys);
}

libqt_string QMetaEnum_ValueToKeys(const QMetaEnum* self, int value) {
    QByteArray _qb = self->valueToKeys(static_cast<int>(value));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QMetaObject* QMetaEnum_EnclosingMetaObject(const QMetaEnum* self) {
    return (QMetaObject*)self->enclosingMetaObject();
}

bool QMetaEnum_IsValid(const QMetaEnum* self) {
    return self->isValid();
}

int QMetaEnum_KeyToValue2(const QMetaEnum* self, const char* key, bool* ok) {
    return self->keyToValue(key, ok);
}

int QMetaEnum_KeysToValue2(const QMetaEnum* self, const char* keys, bool* ok) {
    return self->keysToValue(keys, ok);
}

void QMetaEnum_Delete(QMetaEnum* self) {
    delete self;
}

QMetaProperty* QMetaProperty_new(const QMetaProperty* other) {
    return new QMetaProperty(*other);
}

QMetaProperty* QMetaProperty_new2(QMetaProperty* other) {
    return new QMetaProperty(std::move(*other));
}

QMetaProperty* QMetaProperty_new3() {
    return new QMetaProperty();
}

void QMetaProperty_CopyAssign(QMetaProperty* self, QMetaProperty* other) {
    *self = *other;
}

void QMetaProperty_MoveAssign(QMetaProperty* self, QMetaProperty* other) {
    *self = std::move(*other);
}

const char* QMetaProperty_Name(const QMetaProperty* self) {
    return (const char*)self->name();
}

const char* QMetaProperty_TypeName(const QMetaProperty* self) {
    return (const char*)self->typeName();
}

int QMetaProperty_Type(const QMetaProperty* self) {
    return static_cast<int>(self->type());
}

int QMetaProperty_UserType(const QMetaProperty* self) {
    return self->userType();
}

int QMetaProperty_TypeId(const QMetaProperty* self) {
    return self->typeId();
}

QMetaType* QMetaProperty_MetaType(const QMetaProperty* self) {
    return new QMetaType(self->metaType());
}

int QMetaProperty_PropertyIndex(const QMetaProperty* self) {
    return self->propertyIndex();
}

int QMetaProperty_RelativePropertyIndex(const QMetaProperty* self) {
    return self->relativePropertyIndex();
}

bool QMetaProperty_IsReadable(const QMetaProperty* self) {
    return self->isReadable();
}

bool QMetaProperty_IsWritable(const QMetaProperty* self) {
    return self->isWritable();
}

bool QMetaProperty_IsResettable(const QMetaProperty* self) {
    return self->isResettable();
}

bool QMetaProperty_IsDesignable(const QMetaProperty* self) {
    return self->isDesignable();
}

bool QMetaProperty_IsScriptable(const QMetaProperty* self) {
    return self->isScriptable();
}

bool QMetaProperty_IsStored(const QMetaProperty* self) {
    return self->isStored();
}

bool QMetaProperty_IsUser(const QMetaProperty* self) {
    return self->isUser();
}

bool QMetaProperty_IsConstant(const QMetaProperty* self) {
    return self->isConstant();
}

bool QMetaProperty_IsFinal(const QMetaProperty* self) {
    return self->isFinal();
}

bool QMetaProperty_IsRequired(const QMetaProperty* self) {
    return self->isRequired();
}

bool QMetaProperty_IsBindable(const QMetaProperty* self) {
    return self->isBindable();
}

bool QMetaProperty_IsFlagType(const QMetaProperty* self) {
    return self->isFlagType();
}

bool QMetaProperty_IsEnumType(const QMetaProperty* self) {
    return self->isEnumType();
}

QMetaEnum* QMetaProperty_Enumerator(const QMetaProperty* self) {
    return new QMetaEnum(self->enumerator());
}

bool QMetaProperty_HasNotifySignal(const QMetaProperty* self) {
    return self->hasNotifySignal();
}

QMetaMethod* QMetaProperty_NotifySignal(const QMetaProperty* self) {
    return new QMetaMethod(self->notifySignal());
}

int QMetaProperty_NotifySignalIndex(const QMetaProperty* self) {
    return self->notifySignalIndex();
}

int QMetaProperty_Revision(const QMetaProperty* self) {
    return self->revision();
}

QVariant* QMetaProperty_Read(const QMetaProperty* self, const QObject* obj) {
    return new QVariant(self->read(obj));
}

bool QMetaProperty_Write(const QMetaProperty* self, QObject* obj, const QVariant* value) {
    return self->write(obj, *value);
}

bool QMetaProperty_Reset(const QMetaProperty* self, QObject* obj) {
    return self->reset(obj);
}

QUntypedBindable* QMetaProperty_Bindable(const QMetaProperty* self, QObject* object) {
    return new QUntypedBindable(self->bindable(object));
}

QVariant* QMetaProperty_ReadOnGadget(const QMetaProperty* self, const void* gadget) {
    return new QVariant(self->readOnGadget(gadget));
}

bool QMetaProperty_WriteOnGadget(const QMetaProperty* self, void* gadget, const QVariant* value) {
    return self->writeOnGadget(gadget, *value);
}

bool QMetaProperty_ResetOnGadget(const QMetaProperty* self, void* gadget) {
    return self->resetOnGadget(gadget);
}

bool QMetaProperty_HasStdCppSet(const QMetaProperty* self) {
    return self->hasStdCppSet();
}

bool QMetaProperty_IsAlias(const QMetaProperty* self) {
    return self->isAlias();
}

bool QMetaProperty_IsValid(const QMetaProperty* self) {
    return self->isValid();
}

QMetaObject* QMetaProperty_EnclosingMetaObject(const QMetaProperty* self) {
    return (QMetaObject*)self->enclosingMetaObject();
}

void QMetaProperty_Delete(QMetaProperty* self) {
    delete self;
}

QMetaClassInfo* QMetaClassInfo_new(const QMetaClassInfo* other) {
    return new QMetaClassInfo(*other);
}

QMetaClassInfo* QMetaClassInfo_new2(QMetaClassInfo* other) {
    return new QMetaClassInfo(std::move(*other));
}

QMetaClassInfo* QMetaClassInfo_new3() {
    return new QMetaClassInfo();
}

QMetaClassInfo* QMetaClassInfo_new4(const QMetaClassInfo* param1) {
    return new QMetaClassInfo(*param1);
}

void QMetaClassInfo_CopyAssign(QMetaClassInfo* self, QMetaClassInfo* other) {
    *self = *other;
}

void QMetaClassInfo_MoveAssign(QMetaClassInfo* self, QMetaClassInfo* other) {
    *self = std::move(*other);
}

const char* QMetaClassInfo_Name(const QMetaClassInfo* self) {
    return (const char*)self->name();
}

const char* QMetaClassInfo_Value(const QMetaClassInfo* self) {
    return (const char*)self->value();
}

QMetaObject* QMetaClassInfo_EnclosingMetaObject(const QMetaClassInfo* self) {
    return (QMetaObject*)self->enclosingMetaObject();
}

void QMetaClassInfo_Delete(QMetaClassInfo* self) {
    delete self;
}
