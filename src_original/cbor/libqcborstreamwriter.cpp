#include <QByteArray>
#include <QCborStreamWriter>
#include <QIODevice>
#include <qcborstreamwriter.h>
#include "libqcborstreamwriter.h"
#include "libqcborstreamwriter.hxx"

QCborStreamWriter* QCborStreamWriter_new(QIODevice* device) {
    return new QCborStreamWriter(device);
}

void QCborStreamWriter_SetDevice(QCborStreamWriter* self, QIODevice* device) {
    self->setDevice(device);
}

QIODevice* QCborStreamWriter_Device(const QCborStreamWriter* self) {
    return self->device();
}

void QCborStreamWriter_Append(QCborStreamWriter* self, unsigned long long u) {
    self->append(static_cast<quint64>(u));
}

void QCborStreamWriter_Append2(QCborStreamWriter* self, long long i) {
    self->append(static_cast<qint64>(i));
}

void QCborStreamWriter_Append3(QCborStreamWriter* self, uint64_t n) {
    self->append(static_cast<QCborNegativeInteger>(n));
}

void QCborStreamWriter_Append4(QCborStreamWriter* self, const libqt_string ba) {
    QByteArray ba_QByteArray(ba.data, ba.len);
    self->append(ba_QByteArray);
}

void QCborStreamWriter_Append7(QCborStreamWriter* self, uint64_t tag) {
    self->append(static_cast<QCborTag>(tag));
}

void QCborStreamWriter_Append8(QCborStreamWriter* self, int tag) {
    self->append(static_cast<QCborKnownTags>(tag));
}

void QCborStreamWriter_Append9(QCborStreamWriter* self, uint8_t st) {
    self->append(static_cast<QCborSimpleType>(st));
}

void QCborStreamWriter_Append12(QCborStreamWriter* self, float f) {
    self->append(static_cast<float>(f));
}

void QCborStreamWriter_Append13(QCborStreamWriter* self, double d) {
    self->append(static_cast<double>(d));
}

void QCborStreamWriter_AppendByteString(QCborStreamWriter* self, const char* data, ptrdiff_t lenVal) {
    self->appendByteString(data, (qsizetype)(lenVal));
}

void QCborStreamWriter_AppendTextString(QCborStreamWriter* self, const char* utf8, ptrdiff_t lenVal) {
    self->appendTextString(utf8, (qsizetype)(lenVal));
}

void QCborStreamWriter_Append14(QCborStreamWriter* self, bool b) {
    self->append(b);
}

void QCborStreamWriter_AppendNull(QCborStreamWriter* self) {
    self->appendNull();
}

void QCborStreamWriter_AppendUndefined(QCborStreamWriter* self) {
    self->appendUndefined();
}

void QCborStreamWriter_Append15(QCborStreamWriter* self, int i) {
    self->append(static_cast<int>(i));
}

void QCborStreamWriter_Append16(QCborStreamWriter* self, unsigned int u) {
    self->append(static_cast<uint>(u));
}

void QCborStreamWriter_Append17(QCborStreamWriter* self, const char* str) {
    self->append(str);
}

void QCborStreamWriter_StartArray(QCborStreamWriter* self) {
    self->startArray();
}

void QCborStreamWriter_StartArray2(QCborStreamWriter* self, unsigned long long count) {
    self->startArray(static_cast<quint64>(count));
}

bool QCborStreamWriter_EndArray(QCborStreamWriter* self) {
    return self->endArray();
}

void QCborStreamWriter_StartMap(QCborStreamWriter* self) {
    self->startMap();
}

void QCborStreamWriter_StartMap2(QCborStreamWriter* self, unsigned long long count) {
    self->startMap(static_cast<quint64>(count));
}

bool QCborStreamWriter_EndMap(QCborStreamWriter* self) {
    return self->endMap();
}

void QCborStreamWriter_Append22(QCborStreamWriter* self, const char* str, ptrdiff_t size) {
    self->append(str, (qsizetype)(size));
}

void QCborStreamWriter_Delete(QCborStreamWriter* self) {
    delete self;
}
