#include <QByteArray>
#include <QByteArrayView>
#include <QDataStream>
#include <QDebug>
#include <QMetaObject>
#include <QMetaType>
#include <QPartialOrdering>
#include <qmetatype.h>
#include "libqmetatype.h"
#include "libqmetatype.hxx"

QMetaType* QMetaType_new(const QMetaType* other) {
    return new QMetaType(*other);
}

QMetaType* QMetaType_new2(QMetaType* other) {
    return new QMetaType(std::move(*other));
}

QMetaType* QMetaType_new3(int typeVal) {
    return new QMetaType(static_cast<int>(typeVal));
}

QMetaType* QMetaType_new4() {
    return new QMetaType();
}

QMetaType* QMetaType_new5(const QMetaType* param1) {
    return new QMetaType(*param1);
}

void QMetaType_CopyAssign(QMetaType* self, QMetaType* other) {
    *self = *other;
}

void QMetaType_MoveAssign(QMetaType* self, QMetaType* other) {
    *self = std::move(*other);
}

void QMetaType_RegisterNormalizedTypedef(const libqt_string normalizedTypeName, QMetaType* typeVal) {
    QByteArray normalizedTypeName_QByteArray(normalizedTypeName.data, normalizedTypeName.len);
    QMetaType::registerNormalizedTypedef(normalizedTypeName_QByteArray, *typeVal);
}

int QMetaType_Type(const char* typeName) {
    return QMetaType::type(typeName);
}

int QMetaType_Type2(const libqt_string typeName) {
    QByteArray typeName_QByteArray(typeName.data, typeName.len);
    return QMetaType::type(typeName_QByteArray);
}

const char* QMetaType_TypeName(int typeVal) {
    return (const char*)QMetaType::typeName(static_cast<int>(typeVal));
}

int QMetaType_SizeOf(int typeVal) {
    return QMetaType::sizeOf(static_cast<int>(typeVal));
}

int QMetaType_TypeFlags(int typeVal) {
    return static_cast<int>(QMetaType::typeFlags(static_cast<int>(typeVal)));
}

QMetaObject* QMetaType_MetaObjectForType(int typeVal) {
    return (QMetaObject*)QMetaType::metaObjectForType(static_cast<int>(typeVal));
}

void* QMetaType_Create(int typeVal) {
    return QMetaType::create(static_cast<int>(typeVal));
}

void QMetaType_Destroy(int typeVal, void* data) {
    QMetaType::destroy(static_cast<int>(typeVal), data);
}

void* QMetaType_Construct(int typeVal, void* where, const void* copyVal) {
    return QMetaType::construct(static_cast<int>(typeVal), where, copyVal);
}

void QMetaType_Destruct(int typeVal, void* where) {
    QMetaType::destruct(static_cast<int>(typeVal), where);
}

bool QMetaType_IsRegistered(int typeVal) {
    return QMetaType::isRegistered(static_cast<int>(typeVal));
}

bool QMetaType_IsValid(const QMetaType* self) {
    return self->isValid();
}

bool QMetaType_IsRegistered2(const QMetaType* self) {
    return self->isRegistered();
}

void QMetaType_RegisterType(const QMetaType* self) {
    self->registerType();
}

int QMetaType_Id(const QMetaType* self) {
    return self->id();
}

ptrdiff_t QMetaType_SizeOf2(const QMetaType* self) {
    return static_cast<ptrdiff_t>(self->sizeOf());
}

ptrdiff_t QMetaType_AlignOf(const QMetaType* self) {
    return static_cast<ptrdiff_t>(self->alignOf());
}

int QMetaType_Flags(const QMetaType* self) {
    return static_cast<int>(self->flags());
}

QMetaObject* QMetaType_MetaObject(const QMetaType* self) {
    return (QMetaObject*)self->metaObject();
}

const char* QMetaType_Name(const QMetaType* self) {
    return (const char*)self->name();
}

void* QMetaType_Create2(const QMetaType* self) {
    return self->create();
}

void QMetaType_Destroy2(const QMetaType* self, void* data) {
    self->destroy(data);
}

void* QMetaType_Construct2(const QMetaType* self, void* where) {
    return self->construct(where);
}

void QMetaType_Destruct2(const QMetaType* self, void* data) {
    self->destruct(data);
}

QPartialOrdering* QMetaType_Compare(const QMetaType* self, const void* lhs, const void* rhs) {
    return new QPartialOrdering(self->compare(lhs, rhs));
}

bool QMetaType_Equals(const QMetaType* self, const void* lhs, const void* rhs) {
    return self->equals(lhs, rhs);
}

bool QMetaType_IsDefaultConstructible(const QMetaType* self) {
    return self->isDefaultConstructible();
}

bool QMetaType_IsCopyConstructible(const QMetaType* self) {
    return self->isCopyConstructible();
}

bool QMetaType_IsMoveConstructible(const QMetaType* self) {
    return self->isMoveConstructible();
}

bool QMetaType_IsDestructible(const QMetaType* self) {
    return self->isDestructible();
}

bool QMetaType_IsEqualityComparable(const QMetaType* self) {
    return self->isEqualityComparable();
}

bool QMetaType_IsOrdered(const QMetaType* self) {
    return self->isOrdered();
}

bool QMetaType_Save(const QMetaType* self, QDataStream* stream, const void* data) {
    return self->save(*stream, data);
}

bool QMetaType_Load(const QMetaType* self, QDataStream* stream, void* data) {
    return self->load(*stream, data);
}

bool QMetaType_HasRegisteredDataStreamOperators(const QMetaType* self) {
    return self->hasRegisteredDataStreamOperators();
}

bool QMetaType_Save2(QDataStream* stream, int typeVal, const void* data) {
    return QMetaType::save(*stream, static_cast<int>(typeVal), data);
}

bool QMetaType_Load2(QDataStream* stream, int typeVal, void* data) {
    return QMetaType::load(*stream, static_cast<int>(typeVal), data);
}

QMetaType* QMetaType_UnderlyingType(const QMetaType* self) {
    return new QMetaType(self->underlyingType());
}

QMetaType* QMetaType_FromName(QByteArrayView* name) {
    return new QMetaType(QMetaType::fromName(*name));
}

bool QMetaType_DebugStream(QMetaType* self, QDebug* dbg, const void* rhs) {
    return self->debugStream(*dbg, rhs);
}

bool QMetaType_HasRegisteredDebugStreamOperator(const QMetaType* self) {
    return self->hasRegisteredDebugStreamOperator();
}

bool QMetaType_DebugStream2(QDebug* dbg, const void* rhs, int typeId) {
    return QMetaType::debugStream(*dbg, rhs, static_cast<int>(typeId));
}

bool QMetaType_HasRegisteredDebugStreamOperator2(int typeId) {
    return QMetaType::hasRegisteredDebugStreamOperator(static_cast<int>(typeId));
}

bool QMetaType_Convert(QMetaType* fromType, const void* from, QMetaType* toType, void* to) {
    return QMetaType::convert(*fromType, from, *toType, to);
}

bool QMetaType_CanConvert(QMetaType* fromType, QMetaType* toType) {
    return QMetaType::canConvert(*fromType, *toType);
}

bool QMetaType_View(QMetaType* fromType, void* from, QMetaType* toType, void* to) {
    return QMetaType::view(*fromType, from, *toType, to);
}

bool QMetaType_CanView(QMetaType* fromType, QMetaType* toType) {
    return QMetaType::canView(*fromType, *toType);
}

bool QMetaType_Convert2(const void* from, int fromTypeId, void* to, int toTypeId) {
    return QMetaType::convert(from, static_cast<int>(fromTypeId), to, static_cast<int>(toTypeId));
}

bool QMetaType_Compare2(const void* lhs, const void* rhs, int typeId, int* result) {
    return QMetaType::compare(lhs, rhs, static_cast<int>(typeId), static_cast<int*>(result));
}

bool QMetaType_Equals2(const void* lhs, const void* rhs, int typeId, int* result) {
    return QMetaType::equals(lhs, rhs, static_cast<int>(typeId), static_cast<int*>(result));
}

bool QMetaType_HasRegisteredConverterFunction(QMetaType* fromType, QMetaType* toType) {
    return QMetaType::hasRegisteredConverterFunction(*fromType, *toType);
}

bool QMetaType_HasRegisteredMutableViewFunction(QMetaType* fromType, QMetaType* toType) {
    return QMetaType::hasRegisteredMutableViewFunction(*fromType, *toType);
}

void QMetaType_UnregisterConverterFunction(QMetaType* from, QMetaType* to) {
    QMetaType::unregisterConverterFunction(*from, *to);
}

void QMetaType_UnregisterMutableViewFunction(QMetaType* from, QMetaType* to) {
    QMetaType::unregisterMutableViewFunction(*from, *to);
}

void QMetaType_UnregisterMetaType(QMetaType* typeVal) {
    QMetaType::unregisterMetaType(*typeVal);
}

void* QMetaType_Create22(int typeVal, const void* copyVal) {
    return QMetaType::create(static_cast<int>(typeVal), copyVal);
}

int QMetaType_Id1(const QMetaType* self, int param1) {
    return self->id(static_cast<int>(param1));
}

void* QMetaType_Create1(const QMetaType* self, const void* copyVal) {
    return self->create(copyVal);
}

void* QMetaType_Construct22(const QMetaType* self, void* where, const void* copyVal) {
    return self->construct(where, copyVal);
}

void QMetaType_Delete(QMetaType* self) {
    delete self;
}
