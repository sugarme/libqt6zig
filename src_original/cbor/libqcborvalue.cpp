#include <QByteArray>
#include <QCborArray>
#include <QCborError>
#include <QCborMap>
#include <QCborParserError>
#include <QCborStreamReader>
#include <QCborStreamWriter>
#include <QCborValue>
#include <QCborValueConstRef>
#include <QCborValueRef>
#include <QDateTime>
#include <QJsonValue>
#include <QRegularExpression>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QUuid>
#include <QVariant>
#include <qcborvalue.h>
#include "libqcborvalue.h"
#include "libqcborvalue.hxx"

QCborParserError* QCborParserError_new(const QCborParserError* other) {
    return new QCborParserError(*other);
}

QCborParserError* QCborParserError_new2(QCborParserError* other) {
    return new QCborParserError(std::move(*other));
}

void QCborParserError_CopyAssign(QCborParserError* self, QCborParserError* other) {
    *self = *other;
}

void QCborParserError_MoveAssign(QCborParserError* self, QCborParserError* other) {
    *self = std::move(*other);
}

long long QCborParserError_Offset(const QCborParserError* self) {
    return static_cast<long long>(self->offset);
}

void QCborParserError_SetOffset(QCborParserError* self, long long offset) {
    self->offset = static_cast<qint64>(offset);
}

QCborError* QCborParserError_Error(const QCborParserError* self) {
    return new QCborError(self->error);
}

void QCborParserError_SetError(QCborParserError* self, QCborError* error) {
    self->error = *error;
}

libqt_string QCborParserError_ErrorString(const QCborParserError* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborParserError_Delete(QCborParserError* self) {
    delete self;
}

QCborValue* QCborValue_new() {
    return new QCborValue();
}

QCborValue* QCborValue_new2(int t_) {
    return new QCborValue(static_cast<QCborValue::Type>(t_));
}

QCborValue* QCborValue_new3(bool b_) {
    return new QCborValue(b_);
}

QCborValue* QCborValue_new4(int i) {
    return new QCborValue(static_cast<int>(i));
}

QCborValue* QCborValue_new5(unsigned int u) {
    return new QCborValue(static_cast<unsigned int>(u));
}

QCborValue* QCborValue_new6(long long i) {
    return new QCborValue(static_cast<qint64>(i));
}

QCborValue* QCborValue_new7(double v) {
    return new QCborValue(static_cast<double>(v));
}

QCborValue* QCborValue_new8(uint8_t st) {
    return new QCborValue(static_cast<QCborSimpleType>(st));
}

QCborValue* QCborValue_new9(const libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return new QCborValue(ba_QByteArray);
}

QCborValue* QCborValue_new10(const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return new QCborValue(s_QString);
}

QCborValue* QCborValue_new11(const char* s) {
    return new QCborValue(s);
}

QCborValue* QCborValue_new12(const QCborArray* a) {
    return new QCborValue(*a);
}

QCborValue* QCborValue_new13(const QCborMap* m) {
    return new QCborValue(*m);
}

QCborValue* QCborValue_new14(uint64_t tag) {
    return new QCborValue(static_cast<QCborTag>(tag));
}

QCborValue* QCborValue_new15(int t_) {
    return new QCborValue(static_cast<QCborKnownTags>(t_));
}

QCborValue* QCborValue_new16(const QDateTime* dt) {
    return new QCborValue(*dt);
}

QCborValue* QCborValue_new17(const QUrl* url) {
    return new QCborValue(*url);
}

QCborValue* QCborValue_new18(const QRegularExpression* rx) {
    return new QCborValue(*rx);
}

QCborValue* QCborValue_new19(const QUuid* uuid) {
    return new QCborValue(*uuid);
}

QCborValue* QCborValue_new20(const QCborValue* other) {
    return new QCborValue(*other);
}

QCborValue* QCborValue_new21(uint64_t tag, const QCborValue* taggedValue) {
    return new QCborValue(static_cast<QCborTag>(tag), *taggedValue);
}

QCborValue* QCborValue_new22(int t_, const QCborValue* tv) {
    return new QCborValue(static_cast<QCborKnownTags>(t_), *tv);
}

void QCborValue_OperatorAssign(QCborValue* self, const QCborValue* other) {
    self->operator=(*other);
}

void QCborValue_Swap(QCborValue* self, QCborValue* other) {
    self->swap(*other);
}

int QCborValue_Type(const QCborValue* self) {
    return static_cast<int>(self->type());
}

bool QCborValue_IsInteger(const QCborValue* self) {
    return self->isInteger();
}

bool QCborValue_IsByteArray(const QCborValue* self) {
    return self->isByteArray();
}

bool QCborValue_IsString(const QCborValue* self) {
    return self->isString();
}

bool QCborValue_IsArray(const QCborValue* self) {
    return self->isArray();
}

bool QCborValue_IsMap(const QCborValue* self) {
    return self->isMap();
}

bool QCborValue_IsTag(const QCborValue* self) {
    return self->isTag();
}

bool QCborValue_IsFalse(const QCborValue* self) {
    return self->isFalse();
}

bool QCborValue_IsTrue(const QCborValue* self) {
    return self->isTrue();
}

bool QCborValue_IsBool(const QCborValue* self) {
    return self->isBool();
}

bool QCborValue_IsNull(const QCborValue* self) {
    return self->isNull();
}

bool QCborValue_IsUndefined(const QCborValue* self) {
    return self->isUndefined();
}

bool QCborValue_IsDouble(const QCborValue* self) {
    return self->isDouble();
}

bool QCborValue_IsDateTime(const QCborValue* self) {
    return self->isDateTime();
}

bool QCborValue_IsUrl(const QCborValue* self) {
    return self->isUrl();
}

bool QCborValue_IsRegularExpression(const QCborValue* self) {
    return self->isRegularExpression();
}

bool QCborValue_IsUuid(const QCborValue* self) {
    return self->isUuid();
}

bool QCborValue_IsInvalid(const QCborValue* self) {
    return self->isInvalid();
}

bool QCborValue_IsContainer(const QCborValue* self) {
    return self->isContainer();
}

bool QCborValue_IsSimpleType(const QCborValue* self) {
    return self->isSimpleType();
}

bool QCborValue_IsSimpleType2(const QCborValue* self, uint8_t st) {
    return self->isSimpleType(static_cast<QCborSimpleType>(st));
}

uint8_t QCborValue_ToSimpleType(const QCborValue* self) {
    return static_cast<uint8_t>(self->toSimpleType());
}

long long QCborValue_ToInteger(const QCborValue* self) {
    return static_cast<long long>(self->toInteger());
}

bool QCborValue_ToBool(const QCborValue* self) {
    return self->toBool();
}

double QCborValue_ToDouble(const QCborValue* self) {
    return self->toDouble();
}

uint64_t QCborValue_Tag(const QCborValue* self) {
    return static_cast<uint64_t>(self->tag());
}

QCborValue* QCborValue_TaggedValue(const QCborValue* self) {
    return new QCborValue(self->taggedValue());
}

libqt_string QCborValue_ToByteArray(const QCborValue* self) {
    QByteArray _qb = self->toByteArray();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValue_ToString(const QCborValue* self) {
    QString _ret = self->toString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValue_ToDateTime(const QCborValue* self) {
    return new QDateTime(self->toDateTime());
}

QUrl* QCborValue_ToUrl(const QCborValue* self) {
    return new QUrl(self->toUrl());
}

QRegularExpression* QCborValue_ToRegularExpression(const QCborValue* self) {
    return new QRegularExpression(self->toRegularExpression());
}

QUuid* QCborValue_ToUuid(const QCborValue* self) {
    return new QUuid(self->toUuid());
}

QCborArray* QCborValue_ToArray(const QCborValue* self) {
    return new QCborArray(self->toArray());
}

QCborArray* QCborValue_ToArray2(const QCborValue* self, const QCborArray* defaultValue) {
    return new QCborArray(self->toArray(*defaultValue));
}

QCborMap* QCborValue_ToMap(const QCborValue* self) {
    return new QCborMap(self->toMap());
}

QCborMap* QCborValue_ToMap2(const QCborValue* self, const QCborMap* defaultValue) {
    return new QCborMap(self->toMap(*defaultValue));
}

QCborValue* QCborValue_OperatorSubscript(const QCborValue* self, const libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QCborValue(self->operator[](key_QString));
}

QCborValue* QCborValue_OperatorSubscript3(const QCborValue* self, long long key) {
    return new QCborValue(self->operator[](static_cast<qint64>(key)));
}

QCborValueRef* QCborValue_OperatorSubscript4(QCborValue* self, long long key) {
    return new QCborValueRef(self->operator[](static_cast<qint64>(key)));
}

QCborValueRef* QCborValue_OperatorSubscript6(QCborValue* self, const libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QCborValueRef(self->operator[](key_QString));
}

int QCborValue_Compare(const QCborValue* self, const QCborValue* other) {
    return self->compare(*other);
}

QCborValue* QCborValue_FromVariant(const QVariant* variant) {
    return new QCborValue(QCborValue::fromVariant(*variant));
}

QVariant* QCborValue_ToVariant(const QCborValue* self) {
    return new QVariant(self->toVariant());
}

QCborValue* QCborValue_FromJsonValue(const QJsonValue* v) {
    return new QCborValue(QCborValue::fromJsonValue(*v));
}

QJsonValue* QCborValue_ToJsonValue(const QCborValue* self) {
    return new QJsonValue(self->toJsonValue());
}

QCborValue* QCborValue_FromCbor(QCborStreamReader* reader) {
    return new QCborValue(QCborValue::fromCbor(*reader));
}

QCborValue* QCborValue_FromCbor2(const libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return new QCborValue(QCborValue::fromCbor(ba_QByteArray));
}

QCborValue* QCborValue_FromCbor3(const char* data, ptrdiff_t lenVal) {
    return new QCborValue(QCborValue::fromCbor(data, (qsizetype)(lenVal)));
}

QCborValue* QCborValue_FromCbor4(const unsigned char* data, ptrdiff_t lenVal) {
    return new QCborValue(QCborValue::fromCbor(static_cast<const quint8*>(data), (qsizetype)(lenVal)));
}

libqt_string QCborValue_ToCbor(const QCborValue* self) {
    QByteArray _qb = self->toCbor();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValue_ToCbor2(const QCborValue* self, QCborStreamWriter* writer) {
    self->toCbor(*writer);
}

libqt_string QCborValue_ToDiagnosticNotation(const QCborValue* self) {
    QString _ret = self->toDiagnosticNotation();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

uint8_t QCborValue_ToSimpleType1(const QCborValue* self, uint8_t defaultValue) {
    return static_cast<uint8_t>(self->toSimpleType(static_cast<QCborSimpleType>(defaultValue)));
}

long long QCborValue_ToInteger1(const QCborValue* self, long long defaultValue) {
    return static_cast<long long>(self->toInteger(static_cast<qint64>(defaultValue)));
}

bool QCborValue_ToBool1(const QCborValue* self, bool defaultValue) {
    return self->toBool(defaultValue);
}

double QCborValue_ToDouble1(const QCborValue* self, double defaultValue) {
    return self->toDouble(static_cast<double>(defaultValue));
}

uint64_t QCborValue_Tag1(const QCborValue* self, uint64_t defaultValue) {
    return static_cast<uint64_t>(self->tag(static_cast<QCborTag>(defaultValue)));
}

QCborValue* QCborValue_TaggedValue1(const QCborValue* self, const QCborValue* defaultValue) {
    return new QCborValue(self->taggedValue(*defaultValue));
}

libqt_string QCborValue_ToByteArray1(const QCborValue* self, const libqt_string defaultValue) {
    QByteArray defaultValue_QByteArray(defaultValue.data, defaultValue.len);
    QByteArray _qb = self->toByteArray(defaultValue_QByteArray);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValue_ToString1(const QCborValue* self, const libqt_string defaultValue) {
    QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
    QString _ret = self->toString(defaultValue_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValue_ToDateTime1(const QCborValue* self, const QDateTime* defaultValue) {
    return new QDateTime(self->toDateTime(*defaultValue));
}

QUrl* QCborValue_ToUrl1(const QCborValue* self, const QUrl* defaultValue) {
    return new QUrl(self->toUrl(*defaultValue));
}

QRegularExpression* QCborValue_ToRegularExpression1(const QCborValue* self, const QRegularExpression* defaultValue) {
    return new QRegularExpression(self->toRegularExpression(*defaultValue));
}

QUuid* QCborValue_ToUuid1(const QCborValue* self, const QUuid* defaultValue) {
    return new QUuid(self->toUuid(*defaultValue));
}

QCborValue* QCborValue_FromCbor22(const libqt_string ba, QCborParserError* errorVal) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    return new QCborValue(QCborValue::fromCbor(ba_QByteArray, errorVal));
}

QCborValue* QCborValue_FromCbor32(const char* data, ptrdiff_t lenVal, QCborParserError* errorVal) {
    return new QCborValue(QCborValue::fromCbor(data, (qsizetype)(lenVal), errorVal));
}

QCborValue* QCborValue_FromCbor33(const unsigned char* data, ptrdiff_t lenVal, QCborParserError* errorVal) {
    return new QCborValue(QCborValue::fromCbor(static_cast<const quint8*>(data), (qsizetype)(lenVal), errorVal));
}

libqt_string QCborValue_ToCbor1(const QCborValue* self, int opt) {
    QByteArray _qb = self->toCbor(static_cast<QCborValue::EncodingOptions>(opt));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValue_ToCbor22(const QCborValue* self, QCborStreamWriter* writer, int opt) {
    self->toCbor(*writer, static_cast<QCborValue::EncodingOptions>(opt));
}

libqt_string QCborValue_ToDiagnosticNotation1(const QCborValue* self, int opts) {
    QString _ret = self->toDiagnosticNotation(static_cast<QCborValue::DiagnosticNotationOptions>(opts));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValue_Delete(QCborValue* self) {
    delete self;
}

QCborValueConstRef* QCborValueConstRef_new(const QCborValueConstRef* other) {
    return new QCborValueConstRef(*other);
}

QCborValueConstRef* QCborValueConstRef_new2(const QCborValueConstRef* param1) {
    return new QCborValueConstRef(*param1);
}

QCborValue* QCborValueConstRef_ToQCborValue(const QCborValueConstRef* self) {
    return new QCborValue(self->operator QCborValue());
}

int QCborValueConstRef_Type(const QCborValueConstRef* self) {
    return static_cast<int>(self->type());
}

bool QCborValueConstRef_IsInteger(const QCborValueConstRef* self) {
    return self->isInteger();
}

bool QCborValueConstRef_IsByteArray(const QCborValueConstRef* self) {
    return self->isByteArray();
}

bool QCborValueConstRef_IsString(const QCborValueConstRef* self) {
    return self->isString();
}

bool QCborValueConstRef_IsArray(const QCborValueConstRef* self) {
    return self->isArray();
}

bool QCborValueConstRef_IsMap(const QCborValueConstRef* self) {
    return self->isMap();
}

bool QCborValueConstRef_IsTag(const QCborValueConstRef* self) {
    return self->isTag();
}

bool QCborValueConstRef_IsFalse(const QCborValueConstRef* self) {
    return self->isFalse();
}

bool QCborValueConstRef_IsTrue(const QCborValueConstRef* self) {
    return self->isTrue();
}

bool QCborValueConstRef_IsBool(const QCborValueConstRef* self) {
    return self->isBool();
}

bool QCborValueConstRef_IsNull(const QCborValueConstRef* self) {
    return self->isNull();
}

bool QCborValueConstRef_IsUndefined(const QCborValueConstRef* self) {
    return self->isUndefined();
}

bool QCborValueConstRef_IsDouble(const QCborValueConstRef* self) {
    return self->isDouble();
}

bool QCborValueConstRef_IsDateTime(const QCborValueConstRef* self) {
    return self->isDateTime();
}

bool QCborValueConstRef_IsUrl(const QCborValueConstRef* self) {
    return self->isUrl();
}

bool QCborValueConstRef_IsRegularExpression(const QCborValueConstRef* self) {
    return self->isRegularExpression();
}

bool QCborValueConstRef_IsUuid(const QCborValueConstRef* self) {
    return self->isUuid();
}

bool QCborValueConstRef_IsInvalid(const QCborValueConstRef* self) {
    return self->isInvalid();
}

bool QCborValueConstRef_IsContainer(const QCborValueConstRef* self) {
    return self->isContainer();
}

bool QCborValueConstRef_IsSimpleType(const QCborValueConstRef* self) {
    return self->isSimpleType();
}

bool QCborValueConstRef_IsSimpleType2(const QCborValueConstRef* self, uint8_t st) {
    return self->isSimpleType(static_cast<QCborSimpleType>(st));
}

uint8_t QCborValueConstRef_ToSimpleType(const QCborValueConstRef* self) {
    return static_cast<uint8_t>(self->toSimpleType());
}

uint64_t QCborValueConstRef_Tag(const QCborValueConstRef* self) {
    return static_cast<uint64_t>(self->tag());
}

QCborValue* QCborValueConstRef_TaggedValue(const QCborValueConstRef* self) {
    return new QCborValue(self->taggedValue());
}

long long QCborValueConstRef_ToInteger(const QCborValueConstRef* self) {
    return static_cast<long long>(self->toInteger());
}

bool QCborValueConstRef_ToBool(const QCborValueConstRef* self) {
    return self->toBool();
}

double QCborValueConstRef_ToDouble(const QCborValueConstRef* self) {
    return self->toDouble();
}

libqt_string QCborValueConstRef_ToByteArray(const QCborValueConstRef* self) {
    QByteArray _qb = self->toByteArray();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValueConstRef_ToString(const QCborValueConstRef* self) {
    QString _ret = self->toString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValueConstRef_ToDateTime(const QCborValueConstRef* self) {
    return new QDateTime(self->toDateTime());
}

QUrl* QCborValueConstRef_ToUrl(const QCborValueConstRef* self) {
    return new QUrl(self->toUrl());
}

QRegularExpression* QCborValueConstRef_ToRegularExpression(const QCborValueConstRef* self) {
    return new QRegularExpression(self->toRegularExpression());
}

QUuid* QCborValueConstRef_ToUuid(const QCborValueConstRef* self) {
    return new QUuid(self->toUuid());
}

QCborArray* QCborValueConstRef_ToArray(const QCborValueConstRef* self) {
    return new QCborArray(self->toArray());
}

QCborArray* QCborValueConstRef_ToArray2(const QCborValueConstRef* self, const QCborArray* a) {
    return new QCborArray(self->toArray(*a));
}

QCborMap* QCborValueConstRef_ToMap(const QCborValueConstRef* self) {
    return new QCborMap(self->toMap());
}

QCborMap* QCborValueConstRef_ToMap2(const QCborValueConstRef* self, const QCborMap* m) {
    return new QCborMap(self->toMap(*m));
}

QCborValue* QCborValueConstRef_OperatorSubscript(const QCborValueConstRef* self, const libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QCborValue(self->operator[](key_QString));
}

QCborValue* QCborValueConstRef_OperatorSubscript3(const QCborValueConstRef* self, long long key) {
    return new QCborValue(self->operator[](static_cast<qint64>(key)));
}

int QCborValueConstRef_Compare(const QCborValueConstRef* self, const QCborValue* other) {
    return self->compare(*other);
}

QVariant* QCborValueConstRef_ToVariant(const QCborValueConstRef* self) {
    return new QVariant(self->toVariant());
}

QJsonValue* QCborValueConstRef_ToJsonValue(const QCborValueConstRef* self) {
    return new QJsonValue(self->toJsonValue());
}

libqt_string QCborValueConstRef_ToCbor(const QCborValueConstRef* self) {
    QByteArray _qb = self->toCbor();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueConstRef_ToCbor2(const QCborValueConstRef* self, QCborStreamWriter* writer) {
    self->toCbor(*writer);
}

libqt_string QCborValueConstRef_ToDiagnosticNotation(const QCborValueConstRef* self) {
    QString _ret = self->toDiagnosticNotation();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

uint8_t QCborValueConstRef_ToSimpleType1(const QCborValueConstRef* self, uint8_t defaultValue) {
    return static_cast<uint8_t>(self->toSimpleType(static_cast<QCborSimpleType>(defaultValue)));
}

uint64_t QCborValueConstRef_Tag1(const QCborValueConstRef* self, uint64_t defaultValue) {
    return static_cast<uint64_t>(self->tag(static_cast<QCborTag>(defaultValue)));
}

QCborValue* QCborValueConstRef_TaggedValue1(const QCborValueConstRef* self, const QCborValue* defaultValue) {
    return new QCborValue(self->taggedValue(*defaultValue));
}

long long QCborValueConstRef_ToInteger1(const QCborValueConstRef* self, long long defaultValue) {
    return static_cast<long long>(self->toInteger(static_cast<qint64>(defaultValue)));
}

bool QCborValueConstRef_ToBool1(const QCborValueConstRef* self, bool defaultValue) {
    return self->toBool(defaultValue);
}

double QCborValueConstRef_ToDouble1(const QCborValueConstRef* self, double defaultValue) {
    return self->toDouble(static_cast<double>(defaultValue));
}

libqt_string QCborValueConstRef_ToByteArray1(const QCborValueConstRef* self, const libqt_string defaultValue) {
    QByteArray defaultValue_QByteArray(defaultValue.data, defaultValue.len);
    QByteArray _qb = self->toByteArray(defaultValue_QByteArray);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValueConstRef_ToString1(const QCborValueConstRef* self, const libqt_string defaultValue) {
    QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
    QString _ret = self->toString(defaultValue_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValueConstRef_ToDateTime1(const QCborValueConstRef* self, const QDateTime* defaultValue) {
    return new QDateTime(self->toDateTime(*defaultValue));
}

QUrl* QCborValueConstRef_ToUrl1(const QCborValueConstRef* self, const QUrl* defaultValue) {
    return new QUrl(self->toUrl(*defaultValue));
}

QRegularExpression* QCborValueConstRef_ToRegularExpression1(const QCborValueConstRef* self, const QRegularExpression* defaultValue) {
    return new QRegularExpression(self->toRegularExpression(*defaultValue));
}

QUuid* QCborValueConstRef_ToUuid1(const QCborValueConstRef* self, const QUuid* defaultValue) {
    return new QUuid(self->toUuid(*defaultValue));
}

libqt_string QCborValueConstRef_ToCbor1(const QCborValueConstRef* self, int opt) {
    QByteArray _qb = self->toCbor(static_cast<QCborValue::EncodingOptions>(opt));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueConstRef_ToCbor22(const QCborValueConstRef* self, QCborStreamWriter* writer, int opt) {
    self->toCbor(*writer, static_cast<QCborValue::EncodingOptions>(opt));
}

libqt_string QCborValueConstRef_ToDiagnosticNotation1(const QCborValueConstRef* self, int opt) {
    QString _ret = self->toDiagnosticNotation(static_cast<QCborValue::DiagnosticNotationOptions>(opt));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueConstRef_Delete(QCborValueConstRef* self) {
    delete self;
}

QCborValueRef* QCborValueRef_new(const QCborValueRef* other) {
    return new QCborValueRef(*other);
}

QCborValueRef* QCborValueRef_new2(QCborValueRef* other) {
    return new QCborValueRef(std::move(*other));
}

QCborValueRef* QCborValueRef_new3(const QCborValueRef* param1) {
    return new QCborValueRef(*param1);
}

void QCborValueRef_OperatorAssign(QCborValueRef* self, const QCborValue* other) {
    self->operator=(*other);
}

void QCborValueRef_OperatorAssign2(QCborValueRef* self, const QCborValueRef* other) {
    self->operator=(*other);
}

QCborValueRef* QCborValueRef_OperatorSubscript(QCborValueRef* self, long long key) {
    return new QCborValueRef(self->operator[](static_cast<qint64>(key)));
}

QCborValueRef* QCborValueRef_OperatorSubscript3(QCborValueRef* self, const libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QCborValueRef(self->operator[](key_QString));
}

QCborValue* QCborValueRef_ToQCborValue(const QCborValueRef* self) {
    return new QCborValue(self->operator QCborValue());
}

int QCborValueRef_Type(const QCborValueRef* self) {
    return static_cast<int>(self->type());
}

bool QCborValueRef_IsInteger(const QCborValueRef* self) {
    return self->isInteger();
}

bool QCborValueRef_IsByteArray(const QCborValueRef* self) {
    return self->isByteArray();
}

bool QCborValueRef_IsString(const QCborValueRef* self) {
    return self->isString();
}

bool QCborValueRef_IsArray(const QCborValueRef* self) {
    return self->isArray();
}

bool QCborValueRef_IsMap(const QCborValueRef* self) {
    return self->isMap();
}

bool QCborValueRef_IsTag(const QCborValueRef* self) {
    return self->isTag();
}

bool QCborValueRef_IsFalse(const QCborValueRef* self) {
    return self->isFalse();
}

bool QCborValueRef_IsTrue(const QCborValueRef* self) {
    return self->isTrue();
}

bool QCborValueRef_IsBool(const QCborValueRef* self) {
    return self->isBool();
}

bool QCborValueRef_IsNull(const QCborValueRef* self) {
    return self->isNull();
}

bool QCborValueRef_IsUndefined(const QCborValueRef* self) {
    return self->isUndefined();
}

bool QCborValueRef_IsDouble(const QCborValueRef* self) {
    return self->isDouble();
}

bool QCborValueRef_IsDateTime(const QCborValueRef* self) {
    return self->isDateTime();
}

bool QCborValueRef_IsUrl(const QCborValueRef* self) {
    return self->isUrl();
}

bool QCborValueRef_IsRegularExpression(const QCborValueRef* self) {
    return self->isRegularExpression();
}

bool QCborValueRef_IsUuid(const QCborValueRef* self) {
    return self->isUuid();
}

bool QCborValueRef_IsInvalid(const QCborValueRef* self) {
    return self->isInvalid();
}

bool QCborValueRef_IsContainer(const QCborValueRef* self) {
    return self->isContainer();
}

bool QCborValueRef_IsSimpleType(const QCborValueRef* self) {
    return self->isSimpleType();
}

bool QCborValueRef_IsSimpleType2(const QCborValueRef* self, uint8_t st) {
    return self->isSimpleType(static_cast<QCborSimpleType>(st));
}

uint8_t QCborValueRef_ToSimpleType(const QCborValueRef* self) {
    return static_cast<uint8_t>(self->toSimpleType());
}

uint64_t QCborValueRef_Tag(const QCborValueRef* self) {
    return static_cast<uint64_t>(self->tag());
}

QCborValue* QCborValueRef_TaggedValue(const QCborValueRef* self) {
    return new QCborValue(self->taggedValue());
}

long long QCborValueRef_ToInteger(const QCborValueRef* self) {
    return static_cast<long long>(self->toInteger());
}

bool QCborValueRef_ToBool(const QCborValueRef* self) {
    return self->toBool();
}

double QCborValueRef_ToDouble(const QCborValueRef* self) {
    return self->toDouble();
}

libqt_string QCborValueRef_ToByteArray(const QCborValueRef* self) {
    QByteArray _qb = self->toByteArray();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValueRef_ToString(const QCborValueRef* self) {
    QString _ret = self->toString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValueRef_ToDateTime(const QCborValueRef* self) {
    return new QDateTime(self->toDateTime());
}

QUrl* QCborValueRef_ToUrl(const QCborValueRef* self) {
    return new QUrl(self->toUrl());
}

QRegularExpression* QCborValueRef_ToRegularExpression(const QCborValueRef* self) {
    return new QRegularExpression(self->toRegularExpression());
}

QUuid* QCborValueRef_ToUuid(const QCborValueRef* self) {
    return new QUuid(self->toUuid());
}

QCborArray* QCborValueRef_ToArray(const QCborValueRef* self) {
    return new QCborArray(self->toArray());
}

QCborArray* QCborValueRef_ToArray2(const QCborValueRef* self, const QCborArray* a) {
    return new QCborArray(self->toArray(*a));
}

QCborMap* QCborValueRef_ToMap(const QCborValueRef* self) {
    return new QCborMap(self->toMap());
}

QCborMap* QCborValueRef_ToMap2(const QCborValueRef* self, const QCborMap* m) {
    return new QCborMap(self->toMap(*m));
}

QCborValue* QCborValueRef_OperatorSubscript4(const QCborValueRef* self, const libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QCborValue(self->operator[](key_QString));
}

QCborValue* QCborValueRef_OperatorSubscript6(const QCborValueRef* self, long long key) {
    return new QCborValue(self->operator[](static_cast<qint64>(key)));
}

int QCborValueRef_Compare(const QCborValueRef* self, const QCborValue* other) {
    return self->compare(*other);
}

QVariant* QCborValueRef_ToVariant(const QCborValueRef* self) {
    return new QVariant(self->toVariant());
}

QJsonValue* QCborValueRef_ToJsonValue(const QCborValueRef* self) {
    return new QJsonValue(self->toJsonValue());
}

libqt_string QCborValueRef_ToCbor(QCborValueRef* self) {
    QByteArray _qb = self->toCbor();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueRef_ToCbor2(QCborValueRef* self, QCborStreamWriter* writer) {
    self->toCbor(*writer);
}

libqt_string QCborValueRef_ToDiagnosticNotation(QCborValueRef* self) {
    QString _ret = self->toDiagnosticNotation();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

uint8_t QCborValueRef_ToSimpleType1(const QCborValueRef* self, uint8_t defaultValue) {
    return static_cast<uint8_t>(self->toSimpleType(static_cast<QCborSimpleType>(defaultValue)));
}

uint64_t QCborValueRef_Tag1(const QCborValueRef* self, uint64_t defaultValue) {
    return static_cast<uint64_t>(self->tag(static_cast<QCborTag>(defaultValue)));
}

QCborValue* QCborValueRef_TaggedValue1(const QCborValueRef* self, const QCborValue* defaultValue) {
    return new QCborValue(self->taggedValue(*defaultValue));
}

long long QCborValueRef_ToInteger1(const QCborValueRef* self, long long defaultValue) {
    return static_cast<long long>(self->toInteger(static_cast<qint64>(defaultValue)));
}

bool QCborValueRef_ToBool1(const QCborValueRef* self, bool defaultValue) {
    return self->toBool(defaultValue);
}

double QCborValueRef_ToDouble1(const QCborValueRef* self, double defaultValue) {
    return self->toDouble(static_cast<double>(defaultValue));
}

libqt_string QCborValueRef_ToByteArray1(const QCborValueRef* self, const libqt_string defaultValue) {
    QByteArray defaultValue_QByteArray(defaultValue.data, defaultValue.len);
    QByteArray _qb = self->toByteArray(defaultValue_QByteArray);
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QCborValueRef_ToString1(const QCborValueRef* self, const libqt_string defaultValue) {
    QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
    QString _ret = self->toString(defaultValue_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QDateTime* QCborValueRef_ToDateTime1(const QCborValueRef* self, const QDateTime* defaultValue) {
    return new QDateTime(self->toDateTime(*defaultValue));
}

QUrl* QCborValueRef_ToUrl1(const QCborValueRef* self, const QUrl* defaultValue) {
    return new QUrl(self->toUrl(*defaultValue));
}

QRegularExpression* QCborValueRef_ToRegularExpression1(const QCborValueRef* self, const QRegularExpression* defaultValue) {
    return new QRegularExpression(self->toRegularExpression(*defaultValue));
}

QUuid* QCborValueRef_ToUuid1(const QCborValueRef* self, const QUuid* defaultValue) {
    return new QUuid(self->toUuid(*defaultValue));
}

libqt_string QCborValueRef_ToCbor1(QCborValueRef* self, int opt) {
    QByteArray _qb = self->toCbor(static_cast<QCborValue::EncodingOptions>(opt));
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _qb.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueRef_ToCbor22(QCborValueRef* self, QCborStreamWriter* writer, int opt) {
    self->toCbor(*writer, static_cast<QCborValue::EncodingOptions>(opt));
}

libqt_string QCborValueRef_ToDiagnosticNotation1(QCborValueRef* self, int opt) {
    QString _ret = self->toDiagnosticNotation(static_cast<QCborValue::DiagnosticNotationOptions>(opt));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QCborValueRef_Delete(QCborValueRef* self) {
    delete self;
}
