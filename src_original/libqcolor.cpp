#include <QAnyStringView>
#include <QColor>
#include <QList>
#include <QRgba64>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qcolor.h>
#include "libqcolor.h"
#include "libqcolor.hxx"

QColor* QColor_new(const QColor* other) {
    return new QColor(*other);
}

QColor* QColor_new2(QColor* other) {
    return new QColor(std::move(*other));
}

QColor* QColor_new3() {
    return new QColor();
}

QColor* QColor_new4(int color) {
    return new QColor(static_cast<Qt::GlobalColor>(color));
}

QColor* QColor_new5(int r, int g, int b) {
    return new QColor(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b));
}

QColor* QColor_new6(unsigned int rgb) {
    return new QColor(static_cast<QRgb>(rgb));
}

QColor* QColor_new7(QRgba64* rgba64) {
    return new QColor(*rgba64);
}

QColor* QColor_new8(const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QColor(name_QString);
}

QColor* QColor_new9(const char* aname) {
    return new QColor(aname);
}

QColor* QColor_new10(int spec) {
    return new QColor(static_cast<QColor::Spec>(spec));
}

QColor* QColor_new11(int spec, uint16_t a1, uint16_t a2, uint16_t a3, uint16_t a4) {
    return new QColor(static_cast<QColor::Spec>(spec), static_cast<ushort>(a1), static_cast<ushort>(a2), static_cast<ushort>(a3), static_cast<ushort>(a4));
}

QColor* QColor_new12(const QColor* param1) {
    return new QColor(*param1);
}

QColor* QColor_new13(int r, int g, int b, int a) {
    return new QColor(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a));
}

QColor* QColor_new14(int spec, uint16_t a1, uint16_t a2, uint16_t a3, uint16_t a4, uint16_t a5) {
    return new QColor(static_cast<QColor::Spec>(spec), static_cast<ushort>(a1), static_cast<ushort>(a2), static_cast<ushort>(a3), static_cast<ushort>(a4), static_cast<ushort>(a5));
}

void QColor_CopyAssign(QColor* self, QColor* other) {
    *self = *other;
}

void QColor_MoveAssign(QColor* self, QColor* other) {
    *self = std::move(*other);
}

QColor* QColor_FromString(libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QColor(QColor::fromString(QAnyStringView(name_QString)));
}

void QColor_OperatorAssign(QColor* self, int color) {
    self->operator=(static_cast<Qt::GlobalColor>(color));
}

bool QColor_IsValid(const QColor* self) {
    return self->isValid();
}

libqt_string QColor_Name(const QColor* self) {
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

void QColor_SetNamedColor(QColor* self, const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->setNamedColor(name_QString);
}

libqt_list /* of libqt_string */ QColor_ColorNames() {
    QList<QString> _ret = QColor::colorNames();
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

int QColor_Spec(const QColor* self) {
    return static_cast<int>(self->spec());
}

int QColor_Alpha(const QColor* self) {
    return self->alpha();
}

void QColor_SetAlpha(QColor* self, int alpha) {
    self->setAlpha(static_cast<int>(alpha));
}

float QColor_AlphaF(const QColor* self) {
    return self->alphaF();
}

void QColor_SetAlphaF(QColor* self, float alpha) {
    self->setAlphaF(static_cast<float>(alpha));
}

int QColor_Red(const QColor* self) {
    return self->red();
}

int QColor_Green(const QColor* self) {
    return self->green();
}

int QColor_Blue(const QColor* self) {
    return self->blue();
}

void QColor_SetRed(QColor* self, int red) {
    self->setRed(static_cast<int>(red));
}

void QColor_SetGreen(QColor* self, int green) {
    self->setGreen(static_cast<int>(green));
}

void QColor_SetBlue(QColor* self, int blue) {
    self->setBlue(static_cast<int>(blue));
}

float QColor_RedF(const QColor* self) {
    return self->redF();
}

float QColor_GreenF(const QColor* self) {
    return self->greenF();
}

float QColor_BlueF(const QColor* self) {
    return self->blueF();
}

void QColor_SetRedF(QColor* self, float red) {
    self->setRedF(static_cast<float>(red));
}

void QColor_SetGreenF(QColor* self, float green) {
    self->setGreenF(static_cast<float>(green));
}

void QColor_SetBlueF(QColor* self, float blue) {
    self->setBlueF(static_cast<float>(blue));
}

void QColor_GetRgb(const QColor* self, int* r, int* g, int* b) {
    self->getRgb(static_cast<int*>(r), static_cast<int*>(g), static_cast<int*>(b));
}

void QColor_SetRgb(QColor* self, int r, int g, int b) {
    self->setRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b));
}

void QColor_GetRgbF(const QColor* self, float* r, float* g, float* b) {
    self->getRgbF(static_cast<float*>(r), static_cast<float*>(g), static_cast<float*>(b));
}

void QColor_SetRgbF(QColor* self, float r, float g, float b) {
    self->setRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b));
}

QRgba64* QColor_Rgba64(const QColor* self) {
    return new QRgba64(self->rgba64());
}

void QColor_SetRgba64(QColor* self, QRgba64* rgba) {
    self->setRgba64(*rgba);
}

unsigned int QColor_Rgba(const QColor* self) {
    return static_cast<unsigned int>(self->rgba());
}

void QColor_SetRgba(QColor* self, unsigned int rgba) {
    self->setRgba(static_cast<QRgb>(rgba));
}

unsigned int QColor_Rgb(const QColor* self) {
    return static_cast<unsigned int>(self->rgb());
}

void QColor_SetRgb2(QColor* self, unsigned int rgb) {
    self->setRgb(static_cast<QRgb>(rgb));
}

int QColor_Hue(const QColor* self) {
    return self->hue();
}

int QColor_Saturation(const QColor* self) {
    return self->saturation();
}

int QColor_HsvHue(const QColor* self) {
    return self->hsvHue();
}

int QColor_HsvSaturation(const QColor* self) {
    return self->hsvSaturation();
}

int QColor_Value(const QColor* self) {
    return self->value();
}

float QColor_HueF(const QColor* self) {
    return self->hueF();
}

float QColor_SaturationF(const QColor* self) {
    return self->saturationF();
}

float QColor_HsvHueF(const QColor* self) {
    return self->hsvHueF();
}

float QColor_HsvSaturationF(const QColor* self) {
    return self->hsvSaturationF();
}

float QColor_ValueF(const QColor* self) {
    return self->valueF();
}

void QColor_GetHsv(const QColor* self, int* h, int* s, int* v) {
    self->getHsv(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(v));
}

void QColor_SetHsv(QColor* self, int h, int s, int v) {
    self->setHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v));
}

void QColor_GetHsvF(const QColor* self, float* h, float* s, float* v) {
    self->getHsvF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(v));
}

void QColor_SetHsvF(QColor* self, float h, float s, float v) {
    self->setHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v));
}

int QColor_Cyan(const QColor* self) {
    return self->cyan();
}

int QColor_Magenta(const QColor* self) {
    return self->magenta();
}

int QColor_Yellow(const QColor* self) {
    return self->yellow();
}

int QColor_Black(const QColor* self) {
    return self->black();
}

float QColor_CyanF(const QColor* self) {
    return self->cyanF();
}

float QColor_MagentaF(const QColor* self) {
    return self->magentaF();
}

float QColor_YellowF(const QColor* self) {
    return self->yellowF();
}

float QColor_BlackF(const QColor* self) {
    return self->blackF();
}

void QColor_GetCmyk(const QColor* self, int* c, int* m, int* y, int* k) {
    self->getCmyk(static_cast<int*>(c), static_cast<int*>(m), static_cast<int*>(y), static_cast<int*>(k));
}

void QColor_SetCmyk(QColor* self, int c, int m, int y, int k) {
    self->setCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k));
}

void QColor_GetCmykF(const QColor* self, float* c, float* m, float* y, float* k) {
    self->getCmykF(static_cast<float*>(c), static_cast<float*>(m), static_cast<float*>(y), static_cast<float*>(k));
}

void QColor_SetCmykF(QColor* self, float c, float m, float y, float k) {
    self->setCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k));
}

int QColor_HslHue(const QColor* self) {
    return self->hslHue();
}

int QColor_HslSaturation(const QColor* self) {
    return self->hslSaturation();
}

int QColor_Lightness(const QColor* self) {
    return self->lightness();
}

float QColor_HslHueF(const QColor* self) {
    return self->hslHueF();
}

float QColor_HslSaturationF(const QColor* self) {
    return self->hslSaturationF();
}

float QColor_LightnessF(const QColor* self) {
    return self->lightnessF();
}

void QColor_GetHsl(const QColor* self, int* h, int* s, int* l) {
    self->getHsl(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(l));
}

void QColor_SetHsl(QColor* self, int h, int s, int l) {
    self->setHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l));
}

void QColor_GetHslF(const QColor* self, float* h, float* s, float* l) {
    self->getHslF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(l));
}

void QColor_SetHslF(QColor* self, float h, float s, float l) {
    self->setHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l));
}

QColor* QColor_ToRgb(const QColor* self) {
    return new QColor(self->toRgb());
}

QColor* QColor_ToHsv(const QColor* self) {
    return new QColor(self->toHsv());
}

QColor* QColor_ToCmyk(const QColor* self) {
    return new QColor(self->toCmyk());
}

QColor* QColor_ToHsl(const QColor* self) {
    return new QColor(self->toHsl());
}

QColor* QColor_ToExtendedRgb(const QColor* self) {
    return new QColor(self->toExtendedRgb());
}

QColor* QColor_ConvertTo(const QColor* self, int colorSpec) {
    return new QColor(self->convertTo(static_cast<QColor::Spec>(colorSpec)));
}

QColor* QColor_FromRgb(unsigned int rgb) {
    return new QColor(QColor::fromRgb(static_cast<QRgb>(rgb)));
}

QColor* QColor_FromRgba(unsigned int rgba) {
    return new QColor(QColor::fromRgba(static_cast<QRgb>(rgba)));
}

QColor* QColor_FromRgb2(int r, int g, int b) {
    return new QColor(QColor::fromRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b)));
}

QColor* QColor_FromRgbF(float r, float g, float b) {
    return new QColor(QColor::fromRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)));
}

QColor* QColor_FromRgba64(uint16_t r, uint16_t g, uint16_t b) {
    return new QColor(QColor::fromRgba64(static_cast<ushort>(r), static_cast<ushort>(g), static_cast<ushort>(b)));
}

QColor* QColor_FromRgba642(QRgba64* rgba) {
    return new QColor(QColor::fromRgba64(*rgba));
}

QColor* QColor_FromHsv(int h, int s, int v) {
    return new QColor(QColor::fromHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v)));
}

QColor* QColor_FromHsvF(float h, float s, float v) {
    return new QColor(QColor::fromHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v)));
}

QColor* QColor_FromCmyk(int c, int m, int y, int k) {
    return new QColor(QColor::fromCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k)));
}

QColor* QColor_FromCmykF(float c, float m, float y, float k) {
    return new QColor(QColor::fromCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k)));
}

QColor* QColor_FromHsl(int h, int s, int l) {
    return new QColor(QColor::fromHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l)));
}

QColor* QColor_FromHslF(float h, float s, float l) {
    return new QColor(QColor::fromHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l)));
}

QColor* QColor_Lighter(const QColor* self) {
    return new QColor(self->lighter());
}

QColor* QColor_Darker(const QColor* self) {
    return new QColor(self->darker());
}

bool QColor_OperatorEqual(const QColor* self, const QColor* c) {
    return (*self == *c);
}

bool QColor_OperatorNotEqual(const QColor* self, const QColor* c) {
    return (*self != *c);
}

QVariant* QColor_ToQVariant(const QColor* self) {
    return new QVariant(self->operator QVariant());
}

bool QColor_IsValidColor(const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return QColor::isValidColor(name_QString);
}

bool QColor_IsValidColorName(libqt_string param1) {
    QString param1_QString = QString::fromUtf8(param1.data, param1.len);
    return QColor::isValidColorName(QAnyStringView(param1_QString));
}

libqt_string QColor_Name1(const QColor* self, int format) {
    QString _ret = self->name(static_cast<QColor::NameFormat>(format));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QColor_GetRgb4(const QColor* self, int* r, int* g, int* b, int* a) {
    self->getRgb(static_cast<int*>(r), static_cast<int*>(g), static_cast<int*>(b), static_cast<int*>(a));
}

void QColor_SetRgb4(QColor* self, int r, int g, int b, int a) {
    self->setRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a));
}

void QColor_GetRgbF4(const QColor* self, float* r, float* g, float* b, float* a) {
    self->getRgbF(static_cast<float*>(r), static_cast<float*>(g), static_cast<float*>(b), static_cast<float*>(a));
}

void QColor_SetRgbF4(QColor* self, float r, float g, float b, float a) {
    self->setRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a));
}

void QColor_GetHsv4(const QColor* self, int* h, int* s, int* v, int* a) {
    self->getHsv(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(v), static_cast<int*>(a));
}

void QColor_SetHsv4(QColor* self, int h, int s, int v, int a) {
    self->setHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v), static_cast<int>(a));
}

void QColor_GetHsvF4(const QColor* self, float* h, float* s, float* v, float* a) {
    self->getHsvF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(v), static_cast<float*>(a));
}

void QColor_SetHsvF4(QColor* self, float h, float s, float v, float a) {
    self->setHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v), static_cast<float>(a));
}

void QColor_GetCmyk5(const QColor* self, int* c, int* m, int* y, int* k, int* a) {
    self->getCmyk(static_cast<int*>(c), static_cast<int*>(m), static_cast<int*>(y), static_cast<int*>(k), static_cast<int*>(a));
}

void QColor_SetCmyk5(QColor* self, int c, int m, int y, int k, int a) {
    self->setCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k), static_cast<int>(a));
}

void QColor_GetCmykF5(const QColor* self, float* c, float* m, float* y, float* k, float* a) {
    self->getCmykF(static_cast<float*>(c), static_cast<float*>(m), static_cast<float*>(y), static_cast<float*>(k), static_cast<float*>(a));
}

void QColor_SetCmykF5(QColor* self, float c, float m, float y, float k, float a) {
    self->setCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k), static_cast<float>(a));
}

void QColor_GetHsl4(const QColor* self, int* h, int* s, int* l, int* a) {
    self->getHsl(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(l), static_cast<int*>(a));
}

void QColor_SetHsl4(QColor* self, int h, int s, int l, int a) {
    self->setHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l), static_cast<int>(a));
}

void QColor_GetHslF4(const QColor* self, float* h, float* s, float* l, float* a) {
    self->getHslF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(l), static_cast<float*>(a));
}

void QColor_SetHslF4(QColor* self, float h, float s, float l, float a) {
    self->setHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l), static_cast<float>(a));
}

QColor* QColor_FromRgb4(int r, int g, int b, int a) {
    return new QColor(QColor::fromRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a)));
}

QColor* QColor_FromRgbF4(float r, float g, float b, float a) {
    return new QColor(QColor::fromRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)));
}

QColor* QColor_FromRgba644(uint16_t r, uint16_t g, uint16_t b, uint16_t a) {
    return new QColor(QColor::fromRgba64(static_cast<ushort>(r), static_cast<ushort>(g), static_cast<ushort>(b), static_cast<ushort>(a)));
}

QColor* QColor_FromHsv4(int h, int s, int v, int a) {
    return new QColor(QColor::fromHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v), static_cast<int>(a)));
}

QColor* QColor_FromHsvF4(float h, float s, float v, float a) {
    return new QColor(QColor::fromHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v), static_cast<float>(a)));
}

QColor* QColor_FromCmyk5(int c, int m, int y, int k, int a) {
    return new QColor(QColor::fromCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k), static_cast<int>(a)));
}

QColor* QColor_FromCmykF5(float c, float m, float y, float k, float a) {
    return new QColor(QColor::fromCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k), static_cast<float>(a)));
}

QColor* QColor_FromHsl4(int h, int s, int l, int a) {
    return new QColor(QColor::fromHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l), static_cast<int>(a)));
}

QColor* QColor_FromHslF4(float h, float s, float l, float a) {
    return new QColor(QColor::fromHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l), static_cast<float>(a)));
}

QColor* QColor_Lighter1(const QColor* self, int f) {
    return new QColor(self->lighter(static_cast<int>(f)));
}

QColor* QColor_Darker1(const QColor* self, int f) {
    return new QColor(self->darker(static_cast<int>(f)));
}

void QColor_Delete(QColor* self) {
    delete self;
}
