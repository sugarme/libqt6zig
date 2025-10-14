#include <QChar>
#include <QCollator>
#include <QCollatorSortKey>
#include <QLocale>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcollator.h>
#include "libqcollator.h"
#include "libqcollator.hxx"

QCollatorSortKey* QCollatorSortKey_new(const QCollatorSortKey* other) {
    return new QCollatorSortKey(*other);
}

void QCollatorSortKey_OperatorAssign(QCollatorSortKey* self, const QCollatorSortKey* other) {
    self->operator=(*other);
}

void QCollatorSortKey_Swap(QCollatorSortKey* self, QCollatorSortKey* other) {
    self->swap(*other);
}

int QCollatorSortKey_Compare(const QCollatorSortKey* self, const QCollatorSortKey* key) {
    return self->compare(*key);
}

void QCollatorSortKey_Delete(QCollatorSortKey* self) {
    delete self;
}

QCollator* QCollator_new() {
    return new QCollator();
}

QCollator* QCollator_new2(const QLocale* locale) {
    return new QCollator(*locale);
}

QCollator* QCollator_new3(const QCollator* param1) {
    return new QCollator(*param1);
}

void QCollator_OperatorAssign(QCollator* self, const QCollator* param1) {
    self->operator=(*param1);
}

void QCollator_Swap(QCollator* self, QCollator* other) {
    self->swap(*other);
}

void QCollator_SetLocale(QCollator* self, const QLocale* locale) {
    self->setLocale(*locale);
}

QLocale* QCollator_Locale(const QCollator* self) {
    return new QLocale(self->locale());
}

int QCollator_CaseSensitivity(const QCollator* self) {
    return static_cast<int>(self->caseSensitivity());
}

void QCollator_SetCaseSensitivity(QCollator* self, int cs) {
    self->setCaseSensitivity(static_cast<Qt::CaseSensitivity>(cs));
}

void QCollator_SetNumericMode(QCollator* self, bool on) {
    self->setNumericMode(on);
}

bool QCollator_NumericMode(const QCollator* self) {
    return self->numericMode();
}

void QCollator_SetIgnorePunctuation(QCollator* self, bool on) {
    self->setIgnorePunctuation(on);
}

bool QCollator_IgnorePunctuation(const QCollator* self) {
    return self->ignorePunctuation();
}

int QCollator_Compare(const QCollator* self, const libqt_string s1, const libqt_string s2) {
    QString s1_QString = QString::fromUtf8(s1.data, s1.len);
    QString s2_QString = QString::fromUtf8(s2.data, s2.len);
    return self->compare(s1_QString, s2_QString);
}

int QCollator_Compare2(const QCollator* self, const QChar* s1, ptrdiff_t len1, const QChar* s2, ptrdiff_t len2) {
    return self->compare(s1, (qsizetype)(len1), s2, (qsizetype)(len2));
}

bool QCollator_OperatorCall(const QCollator* self, const libqt_string s1, const libqt_string s2) {
    QString s1_QString = QString::fromUtf8(s1.data, s1.len);
    QString s2_QString = QString::fromUtf8(s2.data, s2.len);
    return self->operator()(s1_QString, s2_QString);
}

QCollatorSortKey* QCollator_SortKey(const QCollator* self, const libqt_string stringVal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    return new QCollatorSortKey(self->sortKey(stringVal_QString));
}

void QCollator_Delete(QCollator* self) {
    delete self;
}
