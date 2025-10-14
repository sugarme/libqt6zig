#include <QByteArray>
#include <QByteArrayView>
#include <QChar>
#include <QDebug>
#include <QDebugStateSaver>
#include <QIODevice>
#include <QIODeviceBase>
#include <QNoDebug>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qdebug.h>
#include "libqdebug.h"
#include "libqdebug.hxx"

QDebug* QDebug_new(QIODevice* device) {
    return new QDebug(device);
}

QDebug* QDebug_new2(const QDebug* o) {
    return new QDebug(*o);
}

void QDebug_OperatorAssign(QDebug* self, const QDebug* other) {
    self->operator=(*other);
}

void QDebug_Swap(QDebug* self, QDebug* other) {
    self->swap(*other);
}

QDebug* QDebug_ResetFormat(QDebug* self) {
    QDebug& _ret = self->resetFormat();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_Space(QDebug* self) {
    QDebug& _ret = self->space();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_Nospace(QDebug* self) {
    QDebug& _ret = self->nospace();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_MaybeSpace(QDebug* self) {
    QDebug& _ret = self->maybeSpace();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_Verbosity(QDebug* self, int verbosityLevel) {
    QDebug& _ret = self->verbosity(static_cast<int>(verbosityLevel));
    // Cast returned reference into pointer
    return &_ret;
}

int QDebug_Verbosity2(const QDebug* self) {
    return self->verbosity();
}

void QDebug_SetVerbosity(QDebug* self, int verbosityLevel) {
    self->setVerbosity(static_cast<int>(verbosityLevel));
}

bool QDebug_AutoInsertSpaces(const QDebug* self) {
    return self->autoInsertSpaces();
}

void QDebug_SetAutoInsertSpaces(QDebug* self, bool b) {
    self->setAutoInsertSpaces(b);
}

bool QDebug_QuoteStrings(const QDebug* self) {
    return self->quoteStrings();
}

void QDebug_SetQuoteStrings(QDebug* self, bool b) {
    self->setQuoteStrings(b);
}

QDebug* QDebug_Quote(QDebug* self) {
    QDebug& _ret = self->quote();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_Noquote(QDebug* self) {
    QDebug& _ret = self->noquote();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_MaybeQuote(QDebug* self) {
    QDebug& _ret = self->maybeQuote();
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft(QDebug* self, QChar* t) {
    QDebug& _ret = self->operator<<(*t);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft2(QDebug* self, bool t) {
    QDebug& _ret = self->operator<<(t);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft3(QDebug* self, char t) {
    QDebug& _ret = self->operator<<(static_cast<char>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft4(QDebug* self, int16_t t) {
    QDebug& _ret = self->operator<<(static_cast<short>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft5(QDebug* self, uint16_t t) {
    QDebug& _ret = self->operator<<(static_cast<unsigned short>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft8(QDebug* self, int t) {
    QDebug& _ret = self->operator<<(static_cast<int>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft9(QDebug* self, unsigned int t) {
    QDebug& _ret = self->operator<<(static_cast<unsigned int>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft10(QDebug* self, long t) {
    QDebug& _ret = self->operator<<(static_cast<long>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft11(QDebug* self, unsigned long t) {
    QDebug& _ret = self->operator<<(static_cast<unsigned long>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft12(QDebug* self, long long t) {
    QDebug& _ret = self->operator<<(static_cast<qint64>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft13(QDebug* self, unsigned long long t) {
    QDebug& _ret = self->operator<<(static_cast<quint64>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft15(QDebug* self, float t) {
    QDebug& _ret = self->operator<<(static_cast<float>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft16(QDebug* self, double t) {
    QDebug& _ret = self->operator<<(static_cast<double>(t));
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft17(QDebug* self, const char* t) {
    QDebug& _ret = self->operator<<(t);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft19(QDebug* self, const libqt_string t) {
    QString t_QString = QString::fromUtf8(t.data, t.len);
    QDebug& _ret = self->operator<<(t_QString);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft23(QDebug* self, const libqt_string t) {
    QByteArray t_QByteArray(t.data, t.len);
    QDebug& _ret = self->operator<<(t_QByteArray);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft24(QDebug* self, QByteArrayView* t) {
    QDebug& _ret = self->operator<<(*t);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_OperatorShiftLeft25(QDebug* self, const void* t) {
    QDebug& _ret = self->operator<<(t);
    // Cast returned reference into pointer
    return &_ret;
}

QDebug* QDebug_MaybeQuote1(QDebug* self, char c) {
    QDebug& _ret = self->maybeQuote(static_cast<char>(c));
    // Cast returned reference into pointer
    return &_ret;
}

void QDebug_Delete(QDebug* self) {
    delete self;
}

QDebugStateSaver* QDebugStateSaver_new(QDebug* dbg) {
    return new QDebugStateSaver(*dbg);
}

void QDebugStateSaver_Delete(QDebugStateSaver* self) {
    delete self;
}

QNoDebug* QNoDebug_new(const QNoDebug* other) {
    return new QNoDebug(*other);
}

QNoDebug* QNoDebug_new2(QNoDebug* other) {
    return new QNoDebug(std::move(*other));
}

void QNoDebug_CopyAssign(QNoDebug* self, QNoDebug* other) {
    *self = *other;
}

void QNoDebug_MoveAssign(QNoDebug* self, QNoDebug* other) {
    *self = std::move(*other);
}

QNoDebug* QNoDebug_Space(QNoDebug* self) {
    QNoDebug& _ret = self->space();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_Nospace(QNoDebug* self) {
    QNoDebug& _ret = self->nospace();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_MaybeSpace(QNoDebug* self) {
    QNoDebug& _ret = self->maybeSpace();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_Quote(QNoDebug* self) {
    QNoDebug& _ret = self->quote();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_Noquote(QNoDebug* self) {
    QNoDebug& _ret = self->noquote();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_MaybeQuote(QNoDebug* self) {
    QNoDebug& _ret = self->maybeQuote();
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_Verbosity(QNoDebug* self, int param1) {
    QNoDebug& _ret = self->verbosity(static_cast<int>(param1));
    // Cast returned reference into pointer
    return &_ret;
}

QNoDebug* QNoDebug_MaybeQuote1(QNoDebug* self, const char param1) {
    QNoDebug& _ret = self->maybeQuote(static_cast<const char>(param1));
    // Cast returned reference into pointer
    return &_ret;
}

void QNoDebug_Delete(QNoDebug* self) {
    delete self;
}
