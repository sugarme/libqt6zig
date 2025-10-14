#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStringConverter>
#include <QStringConverterBase>
#define WORKAROUND_INNER_CLASS_DEFINITION_QStringConverterBase__State
#include <qstringconverter_base.h>
#include "libqstringconverter_base.h"
#include "libqstringconverter_base.hxx"

bool QStringConverter_IsValid(const QStringConverter* self) {
    return self->isValid();
}

void QStringConverter_ResetState(QStringConverter* self) {
    self->resetState();
}

bool QStringConverter_HasError(const QStringConverter* self) {
    return self->hasError();
}

const char* QStringConverter_Name(const QStringConverter* self) {
    return (const char*)self->name();
}

const char* QStringConverter_NameForEncoding(int e) {
    return (const char*)QStringConverter::nameForEncoding(static_cast<QStringConverter::Encoding>(e));
}

libqt_list /* of libqt_string */ QStringConverter_AvailableCodecs() {
    QList<QString> _ret = QStringConverter::availableCodecs();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<const char*>(malloc(_lv_str.len + 1));
        memcpy((void*)_lv_str.data, _lv_b.data(), _lv_str.len);
        ((char*)_lv_str.data)[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QStringConverterBase__State* QStringConverterBase__State_new() {
    return new QStringConverterBase::State();
}

QStringConverterBase__State* QStringConverterBase__State_new2(int f) {
    return new QStringConverterBase::State(static_cast<QStringConverterBase::Flags>(f));
}

void QStringConverterBase__State_Clear(QStringConverterBase__State* self) {
    self->clear();
}

void QStringConverterBase__State_Reset(QStringConverterBase__State* self) {
    self->reset();
}

int QStringConverterBase__State_Flags(const QStringConverterBase__State* self) {
    return static_cast<int>(self->flags);
}

void QStringConverterBase__State_SetFlags(QStringConverterBase__State* self, int flags) {
    self->flags = static_cast<QFlags<QStringConverterBase::Flag>>(flags);
}

int QStringConverterBase__State_InternalState(const QStringConverterBase__State* self) {
    return self->internalState;
}

void QStringConverterBase__State_SetInternalState(QStringConverterBase__State* self, int internalState) {
    self->internalState = static_cast<int>(internalState);
}

ptrdiff_t QStringConverterBase__State_RemainingChars(const QStringConverterBase__State* self) {
    return static_cast<ptrdiff_t>(self->remainingChars);
}

void QStringConverterBase__State_SetRemainingChars(QStringConverterBase__State* self, ptrdiff_t remainingChars) {
    self->remainingChars = (qsizetype)(remainingChars);
}

ptrdiff_t QStringConverterBase__State_InvalidChars(const QStringConverterBase__State* self) {
    return static_cast<ptrdiff_t>(self->invalidChars);
}

void QStringConverterBase__State_SetInvalidChars(QStringConverterBase__State* self, ptrdiff_t invalidChars) {
    self->invalidChars = (qsizetype)(invalidChars);
}

void QStringConverterBase__State_Delete(QStringConverterBase__State* self) {
    delete self;
}
