#include <QAnyStringView>
#include <QList>
#include <QRegularExpression>
#include <QRegularExpressionMatch>
#include <QRegularExpressionMatchIterator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qregularexpression.h>
#include "libqregularexpression.h"
#include "libqregularexpression.hxx"

QRegularExpression* QRegularExpression_new() {
    return new QRegularExpression();
}

QRegularExpression* QRegularExpression_new2(const libqt_string pattern) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    return new QRegularExpression(pattern_QString);
}

QRegularExpression* QRegularExpression_new3(const QRegularExpression* re) {
    return new QRegularExpression(*re);
}

QRegularExpression* QRegularExpression_new4(const libqt_string pattern, int options) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    return new QRegularExpression(pattern_QString, static_cast<QRegularExpression::PatternOptions>(options));
}

int QRegularExpression_PatternOptions(const QRegularExpression* self) {
    return static_cast<int>(self->patternOptions());
}

void QRegularExpression_SetPatternOptions(QRegularExpression* self, int options) {
    self->setPatternOptions(static_cast<QRegularExpression::PatternOptions>(options));
}

void QRegularExpression_OperatorAssign(QRegularExpression* self, const QRegularExpression* re) {
    self->operator=(*re);
}

void QRegularExpression_Swap(QRegularExpression* self, QRegularExpression* other) {
    self->swap(*other);
}

libqt_string QRegularExpression_Pattern(const QRegularExpression* self) {
    QString _ret = self->pattern();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QRegularExpression_SetPattern(QRegularExpression* self, const libqt_string pattern) {
    QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
    self->setPattern(pattern_QString);
}

bool QRegularExpression_IsValid(const QRegularExpression* self) {
    return self->isValid();
}

ptrdiff_t QRegularExpression_PatternErrorOffset(const QRegularExpression* self) {
    return static_cast<ptrdiff_t>(self->patternErrorOffset());
}

libqt_string QRegularExpression_ErrorString(const QRegularExpression* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

int QRegularExpression_CaptureCount(const QRegularExpression* self) {
    return self->captureCount();
}

libqt_list /* of libqt_string */ QRegularExpression_NamedCaptureGroups(const QRegularExpression* self) {
    QList<QString> _ret = self->namedCaptureGroups();
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

QRegularExpressionMatch* QRegularExpression_Match(const QRegularExpression* self, const libqt_string subject) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatch(self->match(subject_QString));
}

QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch(const QRegularExpression* self, const libqt_string subject) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatchIterator(self->globalMatch(subject_QString));
}

void QRegularExpression_Optimize(const QRegularExpression* self) {
    self->optimize();
}

libqt_string QRegularExpression_Escape(const libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = QRegularExpression::escape(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QRegularExpression_WildcardToRegularExpression(const libqt_string str) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = QRegularExpression::wildcardToRegularExpression(str_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QRegularExpression_AnchoredPattern(const libqt_string expression) {
    QString expression_QString = QString::fromUtf8(expression.data, expression.len);
    QString _ret = QRegularExpression::anchoredPattern(expression_QString);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QRegularExpressionMatch* QRegularExpression_Match22(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatch(self->match(subject_QString, (qsizetype)(offset)));
}

QRegularExpressionMatch* QRegularExpression_Match3(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset, int matchType) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatch(self->match(subject_QString, (qsizetype)(offset), static_cast<QRegularExpression::MatchType>(matchType)));
}

QRegularExpressionMatch* QRegularExpression_Match4(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset, int matchType, int matchOptions) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatch(self->match(subject_QString, (qsizetype)(offset), static_cast<QRegularExpression::MatchType>(matchType), static_cast<QRegularExpression::MatchOptions>(matchOptions)));
}

QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch22(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatchIterator(self->globalMatch(subject_QString, (qsizetype)(offset)));
}

QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch3(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset, int matchType) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatchIterator(self->globalMatch(subject_QString, (qsizetype)(offset), static_cast<QRegularExpression::MatchType>(matchType)));
}

QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch4(const QRegularExpression* self, const libqt_string subject, ptrdiff_t offset, int matchType, int matchOptions) {
    QString subject_QString = QString::fromUtf8(subject.data, subject.len);
    return new QRegularExpressionMatchIterator(self->globalMatch(subject_QString, (qsizetype)(offset), static_cast<QRegularExpression::MatchType>(matchType), static_cast<QRegularExpression::MatchOptions>(matchOptions)));
}

libqt_string QRegularExpression_WildcardToRegularExpression22(const libqt_string str, int options) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    QString _ret = QRegularExpression::wildcardToRegularExpression(str_QString, static_cast<QRegularExpression::WildcardConversionOptions>(options));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QRegularExpression_Delete(QRegularExpression* self) {
    delete self;
}

QRegularExpressionMatch* QRegularExpressionMatch_new() {
    return new QRegularExpressionMatch();
}

QRegularExpressionMatch* QRegularExpressionMatch_new2(const QRegularExpressionMatch* match) {
    return new QRegularExpressionMatch(*match);
}

void QRegularExpressionMatch_OperatorAssign(QRegularExpressionMatch* self, const QRegularExpressionMatch* match) {
    self->operator=(*match);
}

void QRegularExpressionMatch_Swap(QRegularExpressionMatch* self, QRegularExpressionMatch* other) {
    self->swap(*other);
}

QRegularExpression* QRegularExpressionMatch_RegularExpression(const QRegularExpressionMatch* self) {
    return new QRegularExpression(self->regularExpression());
}

int QRegularExpressionMatch_MatchType(const QRegularExpressionMatch* self) {
    return static_cast<int>(self->matchType());
}

int QRegularExpressionMatch_MatchOptions(const QRegularExpressionMatch* self) {
    return static_cast<int>(self->matchOptions());
}

bool QRegularExpressionMatch_HasMatch(const QRegularExpressionMatch* self) {
    return self->hasMatch();
}

bool QRegularExpressionMatch_HasPartialMatch(const QRegularExpressionMatch* self) {
    return self->hasPartialMatch();
}

bool QRegularExpressionMatch_IsValid(const QRegularExpressionMatch* self) {
    return self->isValid();
}

int QRegularExpressionMatch_LastCapturedIndex(const QRegularExpressionMatch* self) {
    return self->lastCapturedIndex();
}

bool QRegularExpressionMatch_HasCaptured(const QRegularExpressionMatch* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return self->hasCaptured(QAnyStringView(name_QString));
}

bool QRegularExpressionMatch_HasCaptured2(const QRegularExpressionMatch* self, int nth) {
    return self->hasCaptured(static_cast<int>(nth));
}

libqt_string QRegularExpressionMatch_Captured(const QRegularExpressionMatch* self) {
    QString _ret = self->captured();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QRegularExpressionMatch_Captured2(const QRegularExpressionMatch* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    QString _ret = self->captured(QAnyStringView(name_QString));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_list /* of libqt_string */ QRegularExpressionMatch_CapturedTexts(const QRegularExpressionMatch* self) {
    QList<QString> _ret = self->capturedTexts();
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

ptrdiff_t QRegularExpressionMatch_CapturedStart(const QRegularExpressionMatch* self) {
    return static_cast<ptrdiff_t>(self->capturedStart());
}

ptrdiff_t QRegularExpressionMatch_CapturedLength(const QRegularExpressionMatch* self) {
    return static_cast<ptrdiff_t>(self->capturedLength());
}

ptrdiff_t QRegularExpressionMatch_CapturedEnd(const QRegularExpressionMatch* self) {
    return static_cast<ptrdiff_t>(self->capturedEnd());
}

ptrdiff_t QRegularExpressionMatch_CapturedStart2(const QRegularExpressionMatch* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return static_cast<ptrdiff_t>(self->capturedStart(QAnyStringView(name_QString)));
}

ptrdiff_t QRegularExpressionMatch_CapturedLength2(const QRegularExpressionMatch* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return static_cast<ptrdiff_t>(self->capturedLength(QAnyStringView(name_QString)));
}

ptrdiff_t QRegularExpressionMatch_CapturedEnd2(const QRegularExpressionMatch* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return static_cast<ptrdiff_t>(self->capturedEnd(QAnyStringView(name_QString)));
}

libqt_string QRegularExpressionMatch_Captured1(const QRegularExpressionMatch* self, int nth) {
    QString _ret = self->captured(static_cast<int>(nth));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

ptrdiff_t QRegularExpressionMatch_CapturedStart1(const QRegularExpressionMatch* self, int nth) {
    return static_cast<ptrdiff_t>(self->capturedStart(static_cast<int>(nth)));
}

ptrdiff_t QRegularExpressionMatch_CapturedLength1(const QRegularExpressionMatch* self, int nth) {
    return static_cast<ptrdiff_t>(self->capturedLength(static_cast<int>(nth)));
}

ptrdiff_t QRegularExpressionMatch_CapturedEnd1(const QRegularExpressionMatch* self, int nth) {
    return static_cast<ptrdiff_t>(self->capturedEnd(static_cast<int>(nth)));
}

void QRegularExpressionMatch_Delete(QRegularExpressionMatch* self) {
    delete self;
}

QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new() {
    return new QRegularExpressionMatchIterator();
}

QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new2(const QRegularExpressionMatchIterator* iterator) {
    return new QRegularExpressionMatchIterator(*iterator);
}

void QRegularExpressionMatchIterator_OperatorAssign(QRegularExpressionMatchIterator* self, const QRegularExpressionMatchIterator* iterator) {
    self->operator=(*iterator);
}

void QRegularExpressionMatchIterator_Swap(QRegularExpressionMatchIterator* self, QRegularExpressionMatchIterator* other) {
    self->swap(*other);
}

bool QRegularExpressionMatchIterator_IsValid(const QRegularExpressionMatchIterator* self) {
    return self->isValid();
}

bool QRegularExpressionMatchIterator_HasNext(const QRegularExpressionMatchIterator* self) {
    return self->hasNext();
}

QRegularExpressionMatch* QRegularExpressionMatchIterator_Next(QRegularExpressionMatchIterator* self) {
    return new QRegularExpressionMatch(self->next());
}

QRegularExpressionMatch* QRegularExpressionMatchIterator_PeekNext(const QRegularExpressionMatchIterator* self) {
    return new QRegularExpressionMatch(self->peekNext());
}

QRegularExpression* QRegularExpressionMatchIterator_RegularExpression(const QRegularExpressionMatchIterator* self) {
    return new QRegularExpression(self->regularExpression());
}

int QRegularExpressionMatchIterator_MatchType(const QRegularExpressionMatchIterator* self) {
    return static_cast<int>(self->matchType());
}

int QRegularExpressionMatchIterator_MatchOptions(const QRegularExpressionMatchIterator* self) {
    return static_cast<int>(self->matchOptions());
}

void QRegularExpressionMatchIterator_Delete(QRegularExpressionMatchIterator* self) {
    delete self;
}
