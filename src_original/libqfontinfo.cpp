#include <QFont>
#include <QFontInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfontinfo.h>
#include "libqfontinfo.h"
#include "libqfontinfo.hxx"

QFontInfo* QFontInfo_new(const QFont* param1) {
    return new QFontInfo(*param1);
}

QFontInfo* QFontInfo_new2(const QFontInfo* param1) {
    return new QFontInfo(*param1);
}

void QFontInfo_OperatorAssign(QFontInfo* self, const QFontInfo* param1) {
    self->operator=(*param1);
}

void QFontInfo_Swap(QFontInfo* self, QFontInfo* other) {
    self->swap(*other);
}

libqt_string QFontInfo_Family(const QFontInfo* self) {
    QString _ret = self->family();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QFontInfo_StyleName(const QFontInfo* self) {
    QString _ret = self->styleName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int QFontInfo_PixelSize(const QFontInfo* self) {
    return self->pixelSize();
}

int QFontInfo_PointSize(const QFontInfo* self) {
    return self->pointSize();
}

double QFontInfo_PointSizeF(const QFontInfo* self) {
    return static_cast<double>(self->pointSizeF());
}

bool QFontInfo_Italic(const QFontInfo* self) {
    return self->italic();
}

int QFontInfo_Style(const QFontInfo* self) {
    return static_cast<int>(self->style());
}

int QFontInfo_Weight(const QFontInfo* self) {
    return self->weight();
}

bool QFontInfo_Bold(const QFontInfo* self) {
    return self->bold();
}

bool QFontInfo_Underline(const QFontInfo* self) {
    return self->underline();
}

bool QFontInfo_Overline(const QFontInfo* self) {
    return self->overline();
}

bool QFontInfo_StrikeOut(const QFontInfo* self) {
    return self->strikeOut();
}

bool QFontInfo_FixedPitch(const QFontInfo* self) {
    return self->fixedPitch();
}

int QFontInfo_StyleHint(const QFontInfo* self) {
    return static_cast<int>(self->styleHint());
}

int QFontInfo_LegacyWeight(const QFontInfo* self) {
    return self->legacyWeight();
}

bool QFontInfo_ExactMatch(const QFontInfo* self) {
    return self->exactMatch();
}

void QFontInfo_Delete(QFontInfo* self) {
    delete self;
}
