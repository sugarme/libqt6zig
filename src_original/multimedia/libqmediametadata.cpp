#include <QList>
#include <QMediaMetaData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qmediametadata.h>
#include "libqmediametadata.h"
#include "libqmediametadata.hxx"

QMediaMetaData* QMediaMetaData_new(const QMediaMetaData* param1) {
    return new QMediaMetaData(*param1);
}

QMediaMetaData* QMediaMetaData_new2() {
    return new QMediaMetaData();
}

QVariant* QMediaMetaData_Value(const QMediaMetaData* self, int k) {
    return new QVariant(self->value(static_cast<QMediaMetaData::Key>(k)));
}

void QMediaMetaData_Insert(QMediaMetaData* self, int k, const QVariant* value) {
    self->insert(static_cast<QMediaMetaData::Key>(k), *value);
}

void QMediaMetaData_Remove(QMediaMetaData* self, int k) {
    self->remove(static_cast<QMediaMetaData::Key>(k));
}

libqt_list /* of int */ QMediaMetaData_Keys(const QMediaMetaData* self) {
    QList<QMediaMetaData::Key> _ret = self->keys();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = static_cast<int>(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QVariant* QMediaMetaData_OperatorSubscript(QMediaMetaData* self, int k) {
    QVariant& _ret = self->operator[](static_cast<QMediaMetaData::Key>(k));
    // Cast returned reference into pointer
    return &_ret;
}

void QMediaMetaData_Clear(QMediaMetaData* self) {
    self->clear();
}

bool QMediaMetaData_IsEmpty(const QMediaMetaData* self) {
    return self->isEmpty();
}

libqt_string QMediaMetaData_StringValue(const QMediaMetaData* self, int k) {
    QString _ret = self->stringValue(static_cast<QMediaMetaData::Key>(k));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QMediaMetaData_MetaDataKeyToString(int k) {
    QString _ret = QMediaMetaData::metaDataKeyToString(static_cast<QMediaMetaData::Key>(k));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QMediaMetaData_Delete(QMediaMetaData* self) {
    delete self;
}
