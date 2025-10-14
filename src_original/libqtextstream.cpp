#include <QByteArray>
#include <QChar>
#include <QIODevice>
#include <QIODeviceBase>
#include <QLocale>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextStream>
#include <qtextstream.h>
#include "libqtextstream.h"
#include "libqtextstream.hxx"

QTextStream* QTextStream_new() {
    return new QTextStream();
}

QTextStream* QTextStream_new2(QIODevice* device) {
    return new QTextStream(device);
}

QTextStream* QTextStream_new3(const libqt_string array) {
    QByteArray array_QByteArray(array.data, array.len);
    return new QTextStream(array_QByteArray);
}

QTextStream* QTextStream_new4(const libqt_string array, int openMode) {
    QByteArray array_QByteArray(array.data, array.len);
    return new QTextStream(array_QByteArray, static_cast<QFlags<QIODeviceBase::OpenModeFlag>>(openMode));
}

void QTextStream_SetEncoding(QTextStream* self, int encoding) {
    self->setEncoding(static_cast<QStringConverter::Encoding>(encoding));
}

int QTextStream_Encoding(const QTextStream* self) {
    return static_cast<int>(self->encoding());
}

void QTextStream_SetAutoDetectUnicode(QTextStream* self, bool enabled) {
    self->setAutoDetectUnicode(enabled);
}

bool QTextStream_AutoDetectUnicode(const QTextStream* self) {
    return self->autoDetectUnicode();
}

void QTextStream_SetGenerateByteOrderMark(QTextStream* self, bool generate) {
    self->setGenerateByteOrderMark(generate);
}

bool QTextStream_GenerateByteOrderMark(const QTextStream* self) {
    return self->generateByteOrderMark();
}

void QTextStream_SetLocale(QTextStream* self, const QLocale* locale) {
    self->setLocale(*locale);
}

QLocale* QTextStream_Locale(const QTextStream* self) {
    return new QLocale(self->locale());
}

void QTextStream_SetDevice(QTextStream* self, QIODevice* device) {
    self->setDevice(device);
}

QIODevice* QTextStream_Device(const QTextStream* self) {
    return self->device();
}

libqt_string QTextStream_String(const QTextStream* self) {
    QString* _ret = self->string();
    // Convert QString pointer from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret->toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int QTextStream_Status(const QTextStream* self) {
    return static_cast<int>(self->status());
}

void QTextStream_SetStatus(QTextStream* self, int status) {
    self->setStatus(static_cast<QTextStream::Status>(status));
}

void QTextStream_ResetStatus(QTextStream* self) {
    self->resetStatus();
}

bool QTextStream_AtEnd(const QTextStream* self) {
    return self->atEnd();
}

void QTextStream_Reset(QTextStream* self) {
    self->reset();
}

void QTextStream_Flush(QTextStream* self) {
    self->flush();
}

bool QTextStream_Seek(QTextStream* self, long long pos) {
    return self->seek(static_cast<qint64>(pos));
}

long long QTextStream_Pos(const QTextStream* self) {
    return static_cast<long long>(self->pos());
}

void QTextStream_SkipWhiteSpace(QTextStream* self) {
    self->skipWhiteSpace();
}

libqt_string QTextStream_ReadLine(QTextStream* self) {
    QString _ret = self->readLine();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QTextStream_ReadAll(QTextStream* self) {
    QString _ret = self->readAll();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QTextStream_Read(QTextStream* self, long long maxlen) {
    QString _ret = self->read(static_cast<qint64>(maxlen));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QTextStream_SetFieldAlignment(QTextStream* self, int alignment) {
    self->setFieldAlignment(static_cast<QTextStream::FieldAlignment>(alignment));
}

int QTextStream_FieldAlignment(const QTextStream* self) {
    return static_cast<int>(self->fieldAlignment());
}

void QTextStream_SetPadChar(QTextStream* self, QChar* ch) {
    self->setPadChar(*ch);
}

QChar* QTextStream_PadChar(const QTextStream* self) {
    return new QChar(self->padChar());
}

void QTextStream_SetFieldWidth(QTextStream* self, int width) {
    self->setFieldWidth(static_cast<int>(width));
}

int QTextStream_FieldWidth(const QTextStream* self) {
    return self->fieldWidth();
}

void QTextStream_SetNumberFlags(QTextStream* self, int flags) {
    self->setNumberFlags(static_cast<QTextStream::NumberFlags>(flags));
}

int QTextStream_NumberFlags(const QTextStream* self) {
    return static_cast<int>(self->numberFlags());
}

void QTextStream_SetIntegerBase(QTextStream* self, int base) {
    self->setIntegerBase(static_cast<int>(base));
}

int QTextStream_IntegerBase(const QTextStream* self) {
    return self->integerBase();
}

void QTextStream_SetRealNumberNotation(QTextStream* self, int notation) {
    self->setRealNumberNotation(static_cast<QTextStream::RealNumberNotation>(notation));
}

int QTextStream_RealNumberNotation(const QTextStream* self) {
    return static_cast<int>(self->realNumberNotation());
}

void QTextStream_SetRealNumberPrecision(QTextStream* self, int precision) {
    self->setRealNumberPrecision(static_cast<int>(precision));
}

int QTextStream_RealNumberPrecision(const QTextStream* self) {
    return self->realNumberPrecision();
}

QTextStream* QTextStream_OperatorShiftRight(QTextStream* self, QChar* ch) {
    QTextStream& _ret = self->operator>>(*ch);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight2(QTextStream* self, char* ch) {
    QTextStream& _ret = self->operator>>(static_cast<char&>(*ch));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight4(QTextStream* self, int16_t* i) {
    QTextStream& _ret = self->operator>>(static_cast<short&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight5(QTextStream* self, uint16_t* i) {
    QTextStream& _ret = self->operator>>(static_cast<unsigned short&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight6(QTextStream* self, int* i) {
    QTextStream& _ret = self->operator>>(static_cast<int&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight7(QTextStream* self, unsigned int* i) {
    QTextStream& _ret = self->operator>>(static_cast<unsigned int&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight8(QTextStream* self, long* i) {
    QTextStream& _ret = self->operator>>(static_cast<long&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight9(QTextStream* self, unsigned long* i) {
    QTextStream& _ret = self->operator>>(static_cast<unsigned long&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight10(QTextStream* self, long long* i) {
    QTextStream& _ret = self->operator>>(static_cast<qlonglong&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight11(QTextStream* self, unsigned long long* i) {
    QTextStream& _ret = self->operator>>(static_cast<qulonglong&>(*i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight12(QTextStream* self, float* f) {
    QTextStream& _ret = self->operator>>(static_cast<float&>(*f));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight13(QTextStream* self, double* f) {
    QTextStream& _ret = self->operator>>(static_cast<double&>(*f));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight14(QTextStream* self, libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    QTextStream& _ret = self->operator>>(s_QString);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight15(QTextStream* self, libqt_string array) {
    QByteArray array_QByteArray(array.data, array.len);
    QTextStream& _ret = self->operator>>(array_QByteArray);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftRight16(QTextStream* self, char* c) {
    QTextStream& _ret = self->operator>>(c);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft(QTextStream* self, QChar* ch) {
    QTextStream& _ret = self->operator<<(*ch);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft2(QTextStream* self, char ch) {
    QTextStream& _ret = self->operator<<(static_cast<char>(ch));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft4(QTextStream* self, int16_t i) {
    QTextStream& _ret = self->operator<<(static_cast<short>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft5(QTextStream* self, uint16_t i) {
    QTextStream& _ret = self->operator<<(static_cast<unsigned short>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft6(QTextStream* self, int i) {
    QTextStream& _ret = self->operator<<(static_cast<int>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft7(QTextStream* self, unsigned int i) {
    QTextStream& _ret = self->operator<<(static_cast<unsigned int>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft8(QTextStream* self, long i) {
    QTextStream& _ret = self->operator<<(static_cast<long>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft9(QTextStream* self, unsigned long i) {
    QTextStream& _ret = self->operator<<(static_cast<unsigned long>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft10(QTextStream* self, long long i) {
    QTextStream& _ret = self->operator<<(static_cast<qlonglong>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft11(QTextStream* self, unsigned long long i) {
    QTextStream& _ret = self->operator<<(static_cast<qulonglong>(i));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft12(QTextStream* self, float f) {
    QTextStream& _ret = self->operator<<(static_cast<float>(f));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft13(QTextStream* self, double f) {
    QTextStream& _ret = self->operator<<(static_cast<double>(f));
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft14(QTextStream* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    QTextStream& _ret = self->operator<<(s_QString);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft17(QTextStream* self, const libqt_string array) {
    QByteArray array_QByteArray(array.data, array.len);
    QTextStream& _ret = self->operator<<(array_QByteArray);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft18(QTextStream* self, const char* c) {
    QTextStream& _ret = self->operator<<(c);
    // Cast returned reference into pointer
    return &_ret;
}

QTextStream* QTextStream_OperatorShiftLeft19(QTextStream* self, const void* ptr) {
    QTextStream& _ret = self->operator<<(ptr);
    // Cast returned reference into pointer
    return &_ret;
}

libqt_string QTextStream_ReadLine1(QTextStream* self, long long maxlen) {
    QString _ret = self->readLine(static_cast<qint64>(maxlen));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QTextStream_Delete(QTextStream* self) {
    delete self;
}
