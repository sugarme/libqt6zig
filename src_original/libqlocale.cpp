#include <QCalendar>
#include <QDate>
#include <QDateTime>
#include <QList>
#include <QLocale>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTime>
#include <qlocale.h>
#include "libqlocale.h"
#include "libqlocale.hxx"

QLocale* QLocale_new() {
    return new QLocale();
}

QLocale* QLocale_new2(const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QLocale(name_QString);
}

QLocale* QLocale_new3(uint16_t language, uint16_t territory) {
    return new QLocale(static_cast<QLocale::Language>(language), static_cast<QLocale::Territory>(territory));
}

QLocale* QLocale_new4(uint16_t language) {
    return new QLocale(static_cast<QLocale::Language>(language));
}

QLocale* QLocale_new5(const QLocale* other) {
    return new QLocale(*other);
}

QLocale* QLocale_new6(uint16_t language, uint16_t script) {
    return new QLocale(static_cast<QLocale::Language>(language), static_cast<QLocale::Script>(script));
}

QLocale* QLocale_new7(uint16_t language, uint16_t script, uint16_t territory) {
    return new QLocale(static_cast<QLocale::Language>(language), static_cast<QLocale::Script>(script), static_cast<QLocale::Territory>(territory));
}

void QLocale_OperatorAssign(QLocale* self, const QLocale* other) {
    self->operator=(*other);
}

void QLocale_Swap(QLocale* self, QLocale* other) {
    self->swap(*other);
}

uint16_t QLocale_Language(const QLocale* self) {
    return static_cast<uint16_t>(self->language());
}

uint16_t QLocale_Script(const QLocale* self) {
    return static_cast<uint16_t>(self->script());
}

uint16_t QLocale_Territory(const QLocale* self) {
    return static_cast<uint16_t>(self->territory());
}

uint16_t QLocale_Country(const QLocale* self) {
    return static_cast<uint16_t>(self->country());
}

libqt_string QLocale_Name(const QLocale* self) {
    QString _ret = self->name();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_Bcp47Name(const QLocale* self) {
    QString _ret = self->bcp47Name();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_NativeLanguageName(const QLocale* self) {
    QString _ret = self->nativeLanguageName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_NativeTerritoryName(const QLocale* self) {
    QString _ret = self->nativeTerritoryName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_NativeCountryName(const QLocale* self) {
    QString _ret = self->nativeCountryName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int16_t QLocale_ToShort(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toShort(s_QString);
}

uint16_t QLocale_ToUShort(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<uint16_t>(self->toUShort(s_QString));
}

int QLocale_ToInt(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toInt(s_QString);
}

unsigned int QLocale_ToUInt(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned int>(self->toUInt(s_QString));
}

long QLocale_ToLong(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toLong(s_QString);
}

unsigned long QLocale_ToULong(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned long>(self->toULong(s_QString));
}

long long QLocale_ToLongLong(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<long long>(self->toLongLong(s_QString));
}

unsigned long long QLocale_ToULongLong(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned long long>(self->toULongLong(s_QString));
}

float QLocale_ToFloat(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toFloat(s_QString);
}

double QLocale_ToDouble(const QLocale* self, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toDouble(s_QString);
}

libqt_string QLocale_ToString(const QLocale* self, long long i) {
    QString _ret = self->toString(static_cast<qlonglong>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString2(const QLocale* self, unsigned long long i) {
    QString _ret = self->toString(static_cast<qulonglong>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString3(const QLocale* self, long i) {
    QString _ret = self->toString(static_cast<long>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString4(const QLocale* self, unsigned long i) {
    QString _ret = self->toString(static_cast<ulong>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString5(const QLocale* self, int16_t i) {
    QString _ret = self->toString(static_cast<short>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString6(const QLocale* self, uint16_t i) {
    QString _ret = self->toString(static_cast<ushort>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString7(const QLocale* self, int i) {
    QString _ret = self->toString(static_cast<int>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString8(const QLocale* self, unsigned int i) {
    QString _ret = self->toString(static_cast<uint>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString9(const QLocale* self, double f) {
    QString _ret = self->toString(static_cast<double>(f));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString10(const QLocale* self, float f) {
    QString _ret = self->toString(static_cast<float>(f));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString11(const QLocale* self, QDate* date, const libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString _ret = self->toString(*date, format_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString12(const QLocale* self, QTime* time, const libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString _ret = self->toString(*time, format_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString13(const QLocale* self, const QDateTime* dateTime, const libqt_string format) {
    QString format_QString = QString::fromUtf8(format.data, format.len);
    QString _ret = self->toString(*dateTime, format_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString17(const QLocale* self, QDate* date) {
    QString _ret = self->toString(*date);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString18(const QLocale* self, QTime* time) {
    QString _ret = self->toString(*time);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString19(const QLocale* self, const QDateTime* dateTime) {
    QString _ret = self->toString(*dateTime);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString21(const QLocale* self, QDate* date, int format, QCalendar* cal) {
    QString _ret = self->toString(*date, static_cast<QLocale::FormatType>(format), *cal);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString22(const QLocale* self, const QDateTime* dateTime, int format, QCalendar* cal) {
    QString _ret = self->toString(*dateTime, static_cast<QLocale::FormatType>(format), *cal);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DateFormat(const QLocale* self) {
    QString _ret = self->dateFormat();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_TimeFormat(const QLocale* self) {
    QString _ret = self->timeFormat();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DateTimeFormat(const QLocale* self) {
    QString _ret = self->dateTimeFormat();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QTime* QLocale_ToTime(const QLocale* self, const libqt_string stringVal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QTime(self->toTime(stringVal_QString));
}

QTime* QLocale_ToTime2(const QLocale* self, const libqt_string stringVal, const libqt_string format) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QTime(self->toTime(stringVal_QString, format_QString));
}

QDate* QLocale_ToDate(const QLocale* self, const libqt_string stringVal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDate(self->toDate(stringVal_QString));
}

QDate* QLocale_ToDate2(const QLocale* self, const libqt_string stringVal, const libqt_string format) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDate(self->toDate(stringVal_QString, format_QString));
}

QDateTime* QLocale_ToDateTime(const QLocale* self, const libqt_string stringVal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDateTime(self->toDateTime(stringVal_QString));
}

QDateTime* QLocale_ToDateTime2(const QLocale* self, const libqt_string stringVal, const libqt_string format) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDateTime(self->toDateTime(stringVal_QString, format_QString));
}

QDate* QLocale_ToDate3(const QLocale* self, const libqt_string stringVal, int format, QCalendar* cal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDate(self->toDate(stringVal_QString, static_cast<QLocale::FormatType>(format), *cal));
}

QDate* QLocale_ToDate4(const QLocale* self, const libqt_string stringVal, const libqt_string format, QCalendar* cal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDate(self->toDate(stringVal_QString, format_QString, *cal));
}

QDateTime* QLocale_ToDateTime3(const QLocale* self, const libqt_string stringVal, int format, QCalendar* cal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDateTime(self->toDateTime(stringVal_QString, static_cast<QLocale::FormatType>(format), *cal));
}

QDateTime* QLocale_ToDateTime4(const QLocale* self, const libqt_string stringVal, const libqt_string format, QCalendar* cal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDateTime(self->toDateTime(stringVal_QString, format_QString, *cal));
}

libqt_string QLocale_DecimalPoint(const QLocale* self) {
    QString _ret = self->decimalPoint();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_GroupSeparator(const QLocale* self) {
    QString _ret = self->groupSeparator();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_Percent(const QLocale* self) {
    QString _ret = self->percent();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ZeroDigit(const QLocale* self) {
    QString _ret = self->zeroDigit();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_NegativeSign(const QLocale* self) {
    QString _ret = self->negativeSign();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_PositiveSign(const QLocale* self) {
    QString _ret = self->positiveSign();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_Exponential(const QLocale* self) {
    QString _ret = self->exponential();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_MonthName(const QLocale* self, int param1) {
    QString _ret = self->monthName(static_cast<int>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_StandaloneMonthName(const QLocale* self, int param1) {
    QString _ret = self->standaloneMonthName(static_cast<int>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DayName(const QLocale* self, int param1) {
    QString _ret = self->dayName(static_cast<int>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_StandaloneDayName(const QLocale* self, int param1) {
    QString _ret = self->standaloneDayName(static_cast<int>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int QLocale_FirstDayOfWeek(const QLocale* self) {
    return static_cast<int>(self->firstDayOfWeek());
}

libqt_list /* of int */ QLocale_Weekdays(const QLocale* self) {
    QList<Qt::DayOfWeek> _ret = self->weekdays();
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

libqt_string QLocale_AmText(const QLocale* self) {
    QString _ret = self->amText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_PmText(const QLocale* self) {
    QString _ret = self->pmText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int QLocale_MeasurementSystem(const QLocale* self) {
    return static_cast<int>(self->measurementSystem());
}

QLocale* QLocale_Collation(const QLocale* self) {
    return new QLocale(self->collation());
}

int QLocale_TextDirection(const QLocale* self) {
    return static_cast<int>(self->textDirection());
}

libqt_string QLocale_ToUpper(const QLocale* self, const libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = self->toUpper(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToLower(const QLocale* self, const libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = self->toLower(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_CurrencySymbol(const QLocale* self) {
    QString _ret = self->currencySymbol();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString(const QLocale* self, long long param1) {
    QString _ret = self->toCurrencyString(static_cast<long long>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString2(const QLocale* self, unsigned long long param1) {
    QString _ret = self->toCurrencyString(static_cast<unsigned long long>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString3(const QLocale* self, int16_t i) {
    QString _ret = self->toCurrencyString(static_cast<short>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString4(const QLocale* self, uint16_t i) {
    QString _ret = self->toCurrencyString(static_cast<ushort>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString5(const QLocale* self, int i) {
    QString _ret = self->toCurrencyString(static_cast<int>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString6(const QLocale* self, unsigned int i) {
    QString _ret = self->toCurrencyString(static_cast<uint>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString7(const QLocale* self, double param1) {
    QString _ret = self->toCurrencyString(static_cast<double>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString8(const QLocale* self, float i) {
    QString _ret = self->toCurrencyString(static_cast<float>(i));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_FormattedDataSize(const QLocale* self, long long bytes) {
    QString _ret = self->formattedDataSize(static_cast<qint64>(bytes));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QLocale_UiLanguages(const QLocale* self) {
    QList<QString> _ret = self->uiLanguages();
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

libqt_string QLocale_LanguageToCode(uint16_t language) {
    QString _ret = QLocale::languageToCode(static_cast<QLocale::Language>(language));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_TerritoryToCode(uint16_t territory) {
    QString _ret = QLocale::territoryToCode(static_cast<QLocale::Territory>(territory));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_CountryToCode(uint16_t country) {
    QString _ret = QLocale::countryToCode(static_cast<QLocale::Country>(country));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ScriptToCode(uint16_t script) {
    QString _ret = QLocale::scriptToCode(static_cast<QLocale::Script>(script));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_LanguageToString(uint16_t language) {
    QString _ret = QLocale::languageToString(static_cast<QLocale::Language>(language));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_TerritoryToString(uint16_t territory) {
    QString _ret = QLocale::territoryToString(static_cast<QLocale::Territory>(territory));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_CountryToString(uint16_t country) {
    QString _ret = QLocale::countryToString(static_cast<QLocale::Country>(country));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ScriptToString(uint16_t script) {
    QString _ret = QLocale::scriptToString(static_cast<QLocale::Script>(script));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QLocale_SetDefault(const QLocale* locale) {
    QLocale::setDefault(*locale);
}

QLocale* QLocale_C() {
    return new QLocale(QLocale::c());
}

QLocale* QLocale_System() {
    return new QLocale(QLocale::system());
}

libqt_list /* of QLocale* */ QLocale_MatchingLocales(uint16_t language, uint16_t script, uint16_t territory) {
    QList<QLocale> _ret = QLocale::matchingLocales(static_cast<QLocale::Language>(language), static_cast<QLocale::Script>(script), static_cast<QLocale::Territory>(territory));
    // Convert QList<> from C++ memory to manually-managed C memory
    QLocale** _arr = static_cast<QLocale**>(malloc(sizeof(QLocale*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QLocale(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of uint16_t */ QLocale_CountriesForLanguage(uint16_t lang) {
    QList<QLocale::Country> _ret = QLocale::countriesForLanguage(static_cast<QLocale::Language>(lang));
    // Convert QList<> from C++ memory to manually-managed C memory
    uint16_t* _arr = static_cast<uint16_t*>(malloc(sizeof(uint16_t) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = static_cast<uint16_t>(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QLocale_SetNumberOptions(QLocale* self, int options) {
    self->setNumberOptions(static_cast<QLocale::NumberOptions>(options));
}

int QLocale_NumberOptions(const QLocale* self) {
    return static_cast<int>(self->numberOptions());
}

libqt_string QLocale_QuoteString(const QLocale* self, const libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = self->quoteString(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_CreateSeparatedList(const QLocale* self, const libqt_list /* of libqt_string */ strl) {
    QList<QString> strl_QList;
    strl_QList.reserve(strl.len);
    libqt_string* strl_arr = static_cast<libqt_string*>(strl.data);
    for (size_t i = 0; i < strl.len; ++i) {
        QString strl_arr_i_QString = QString::fromUtf8(strl_arr[i].data, strl_arr[i].len);
        strl_QList.push_back(strl_arr_i_QString);
    }
    QString _ret = self->createSeparatedList(strl_QList);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_Name1(const QLocale* self, char separator) {
    QString _ret = self->name(static_cast<QLocale::TagSeparator>(separator));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_Bcp47Name1(const QLocale* self, char separator) {
    QString _ret = self->bcp47Name(static_cast<QLocale::TagSeparator>(separator));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int16_t QLocale_ToShort22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toShort(s_QString, ok);
}

uint16_t QLocale_ToUShort22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<uint16_t>(self->toUShort(s_QString, ok));
}

int QLocale_ToInt22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toInt(s_QString, ok);
}

unsigned int QLocale_ToUInt22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned int>(self->toUInt(s_QString, ok));
}

long QLocale_ToLong22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toLong(s_QString, ok);
}

unsigned long QLocale_ToULong22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned long>(self->toULong(s_QString, ok));
}

long long QLocale_ToLongLong22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<long long>(self->toLongLong(s_QString, ok));
}

unsigned long long QLocale_ToULongLong22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return static_cast<unsigned long long>(self->toULongLong(s_QString, ok));
}

float QLocale_ToFloat22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toFloat(s_QString, ok);
}

double QLocale_ToDouble22(const QLocale* self, const libqt_string s, bool* ok) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    return self->toDouble(s_QString, ok);
}

libqt_string QLocale_ToString24(const QLocale* self, double f, char format) {
    QString _ret = self->toString(static_cast<double>(f), static_cast<char>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString32(const QLocale* self, double f, char format, int precision) {
    QString _ret = self->toString(static_cast<double>(f), static_cast<char>(format), static_cast<int>(precision));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString25(const QLocale* self, float f, char format) {
    QString _ret = self->toString(static_cast<float>(f), static_cast<char>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString33(const QLocale* self, float f, char format, int precision) {
    QString _ret = self->toString(static_cast<float>(f), static_cast<char>(format), static_cast<int>(precision));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString26(const QLocale* self, QDate* date, int format) {
    QString _ret = self->toString(*date, static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString27(const QLocale* self, QTime* time, int format) {
    QString _ret = self->toString(*time, static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToString28(const QLocale* self, const QDateTime* dateTime, int format) {
    QString _ret = self->toString(*dateTime, static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DateFormat1(const QLocale* self, int format) {
    QString _ret = self->dateFormat(static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_TimeFormat1(const QLocale* self, int format) {
    QString _ret = self->timeFormat(static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DateTimeFormat1(const QLocale* self, int format) {
    QString _ret = self->dateTimeFormat(static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QTime* QLocale_ToTime22(const QLocale* self, const libqt_string stringVal, int param2) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QTime(self->toTime(stringVal_QString, static_cast<QLocale::FormatType>(param2)));
}

QDate* QLocale_ToDate22(const QLocale* self, const libqt_string stringVal, int param2) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDate(self->toDate(stringVal_QString, static_cast<QLocale::FormatType>(param2)));
}

QDate* QLocale_ToDate32(const QLocale* self, const libqt_string stringVal, int param2, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDate(self->toDate(stringVal_QString, static_cast<QLocale::FormatType>(param2), static_cast<int>(baseYear)));
}

QDate* QLocale_ToDate33(const QLocale* self, const libqt_string stringVal, const libqt_string format, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDate(self->toDate(stringVal_QString, format_QString, static_cast<int>(baseYear)));
}

QDateTime* QLocale_ToDateTime22(const QLocale* self, const libqt_string stringVal, int format) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDateTime(self->toDateTime(stringVal_QString, static_cast<QLocale::FormatType>(format)));
}

QDateTime* QLocale_ToDateTime32(const QLocale* self, const libqt_string stringVal, int format, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDateTime(self->toDateTime(stringVal_QString, static_cast<QLocale::FormatType>(format), static_cast<int>(baseYear)));
}

QDateTime* QLocale_ToDateTime33(const QLocale* self, const libqt_string stringVal, const libqt_string format, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDateTime(self->toDateTime(stringVal_QString, format_QString, static_cast<int>(baseYear)));
}

QDate* QLocale_ToDate42(const QLocale* self, const libqt_string stringVal, int format, QCalendar* cal, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDate(self->toDate(stringVal_QString, static_cast<QLocale::FormatType>(format), *cal, static_cast<int>(baseYear)));
}

QDate* QLocale_ToDate43(const QLocale* self, const libqt_string stringVal, const libqt_string format, QCalendar* cal, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDate(self->toDate(stringVal_QString, format_QString, *cal, static_cast<int>(baseYear)));
}

QDateTime* QLocale_ToDateTime42(const QLocale* self, const libqt_string stringVal, int format, QCalendar* cal, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QDateTime(self->toDateTime(stringVal_QString, static_cast<QLocale::FormatType>(format), *cal, static_cast<int>(baseYear)));
}

QDateTime* QLocale_ToDateTime43(const QLocale* self, const libqt_string stringVal, const libqt_string format, QCalendar* cal, int baseYear) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    QString format_QString = QString::fromUtf8(format.data, format.len);
    return new QDateTime(self->toDateTime(stringVal_QString, format_QString, *cal, static_cast<int>(baseYear)));
}

libqt_string QLocale_MonthName2(const QLocale* self, int param1, int format) {
    QString _ret = self->monthName(static_cast<int>(param1), static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_StandaloneMonthName2(const QLocale* self, int param1, int format) {
    QString _ret = self->standaloneMonthName(static_cast<int>(param1), static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_DayName2(const QLocale* self, int param1, int format) {
    QString _ret = self->dayName(static_cast<int>(param1), static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_StandaloneDayName2(const QLocale* self, int param1, int format) {
    QString _ret = self->standaloneDayName(static_cast<int>(param1), static_cast<QLocale::FormatType>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_CurrencySymbol1(const QLocale* self, int param1) {
    QString _ret = self->currencySymbol(static_cast<QLocale::CurrencySymbolFormat>(param1));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString22(const QLocale* self, long long param1, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<long long>(param1), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString23(const QLocale* self, unsigned long long param1, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<unsigned long long>(param1), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString24(const QLocale* self, int16_t i, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<short>(i), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString25(const QLocale* self, uint16_t i, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<ushort>(i), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString26(const QLocale* self, int i, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<int>(i), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString27(const QLocale* self, unsigned int i, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<uint>(i), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString28(const QLocale* self, double param1, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<double>(param1), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString32(const QLocale* self, double param1, const libqt_string symbol, int precision) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<double>(param1), symbol_QString, static_cast<int>(precision));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString29(const QLocale* self, float i, const libqt_string symbol) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<float>(i), symbol_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_ToCurrencyString33(const QLocale* self, float i, const libqt_string symbol, int precision) {
    QString symbol_QString = QString::fromUtf8(symbol.data, symbol.len);
    QString _ret = self->toCurrencyString(static_cast<float>(i), symbol_QString, static_cast<int>(precision));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_FormattedDataSize2(const QLocale* self, long long bytes, int precision) {
    QString _ret = self->formattedDataSize(static_cast<qint64>(bytes), static_cast<int>(precision));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_FormattedDataSize3(const QLocale* self, long long bytes, int precision, int format) {
    QString _ret = self->formattedDataSize(static_cast<qint64>(bytes), static_cast<int>(precision), static_cast<QLocale::DataSizeFormats>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QLocale_UiLanguages1(const QLocale* self, char separator) {
    QList<QString> _ret = self->uiLanguages(static_cast<QLocale::TagSeparator>(separator));
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

libqt_string QLocale_LanguageToCode2(uint16_t language, int codeTypes) {
    QString _ret = QLocale::languageToCode(static_cast<QLocale::Language>(language), static_cast<QLocale::LanguageCodeTypes>(codeTypes));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QLocale_QuoteString22(const QLocale* self, const libqt_string str, int style) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = self->quoteString(str_QString, static_cast<QLocale::QuotationStyle>(style));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QLocale_Delete(QLocale* self) {
    delete self;
}
