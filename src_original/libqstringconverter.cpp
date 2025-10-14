#include <QAnyStringView>
#include <QByteArrayView>
#include <QChar>
#include <QStringConverter>
#include <QStringConverterBase>
#include <QStringDecoder>
#include <QStringEncoder>
#include <qstringconverter.h>
#include "libqstringconverter.h"
#include "libqstringconverter.hxx"

QStringEncoder* QStringEncoder_new() {
    return new QStringEncoder();
}

QStringEncoder* QStringEncoder_new2(int encoding) {
    return new QStringEncoder(static_cast<QStringConverter::Encoding>(encoding));
}

QStringEncoder* QStringEncoder_new3(libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QStringEncoder(QAnyStringView(name_QString));
}

QStringEncoder* QStringEncoder_new4(int encoding, int flags) {
    return new QStringEncoder(static_cast<QStringConverter::Encoding>(encoding), static_cast<QStringConverterBase::Flags>(flags));
}

QStringEncoder* QStringEncoder_new5(libqt_string name, int flags) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QStringEncoder(QAnyStringView(name_QString), static_cast<QStringConverterBase::Flags>(flags));
}

ptrdiff_t QStringEncoder_RequiredSpace(const QStringEncoder* self, ptrdiff_t inputLength) {
    return static_cast<ptrdiff_t>(self->requiredSpace((qsizetype)(inputLength)));
}

void QStringEncoder_Delete(QStringEncoder* self) {
    delete self;
}

QStringDecoder* QStringDecoder_new(int encoding) {
    return new QStringDecoder(static_cast<QStringConverter::Encoding>(encoding));
}

QStringDecoder* QStringDecoder_new2() {
    return new QStringDecoder();
}

QStringDecoder* QStringDecoder_new3(libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QStringDecoder(QAnyStringView(name_QString));
}

QStringDecoder* QStringDecoder_new4(int encoding, int flags) {
    return new QStringDecoder(static_cast<QStringConverter::Encoding>(encoding), static_cast<QStringConverterBase::Flags>(flags));
}

QStringDecoder* QStringDecoder_new5(libqt_string name, int f) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QStringDecoder(QAnyStringView(name_QString), static_cast<QStringConverterBase::Flags>(f));
}

ptrdiff_t QStringDecoder_RequiredSpace(const QStringDecoder* self, ptrdiff_t inputLength) {
    return static_cast<ptrdiff_t>(self->requiredSpace((qsizetype)(inputLength)));
}

QChar* QStringDecoder_AppendToBuffer(QStringDecoder* self, QChar* out, QByteArrayView* ba) {
    return self->appendToBuffer(out, *ba);
}

QStringDecoder* QStringDecoder_DecoderForHtml(QByteArrayView* data) {
    return new QStringDecoder(QStringDecoder::decoderForHtml(*data));
}

void QStringDecoder_Delete(QStringDecoder* self) {
    delete self;
}
