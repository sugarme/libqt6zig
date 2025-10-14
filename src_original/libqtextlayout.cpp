#include <QFont>
#include <QGlyphRun>
#include <QList>
#include <QPaintDevice>
#include <QPainter>
#include <QPointF>
#include <QRawFont>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextBlock>
#include <QTextCharFormat>
#include <QTextFormat>
#include <QTextInlineObject>
#include <QTextLayout>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTextLayout__FormatRange
#include <QTextLine>
#include <QTextOption>
#include <qtextlayout.h>
#include "libqtextlayout.h"
#include "libqtextlayout.hxx"

QTextInlineObject* QTextInlineObject_new(const QTextInlineObject* other) {
    return new QTextInlineObject(*other);
}

QTextInlineObject* QTextInlineObject_new2(QTextInlineObject* other) {
    return new QTextInlineObject(std::move(*other));
}

QTextInlineObject* QTextInlineObject_new3() {
    return new QTextInlineObject();
}

void QTextInlineObject_CopyAssign(QTextInlineObject* self, QTextInlineObject* other) {
    *self = *other;
}

void QTextInlineObject_MoveAssign(QTextInlineObject* self, QTextInlineObject* other) {
    *self = std::move(*other);
}

bool QTextInlineObject_IsValid(const QTextInlineObject* self) {
    return self->isValid();
}

QRectF* QTextInlineObject_Rect(const QTextInlineObject* self) {
    return new QRectF(self->rect());
}

double QTextInlineObject_Width(const QTextInlineObject* self) {
    return static_cast<double>(self->width());
}

double QTextInlineObject_Ascent(const QTextInlineObject* self) {
    return static_cast<double>(self->ascent());
}

double QTextInlineObject_Descent(const QTextInlineObject* self) {
    return static_cast<double>(self->descent());
}

double QTextInlineObject_Height(const QTextInlineObject* self) {
    return static_cast<double>(self->height());
}

int QTextInlineObject_TextDirection(const QTextInlineObject* self) {
    return static_cast<int>(self->textDirection());
}

void QTextInlineObject_SetWidth(QTextInlineObject* self, double w) {
    self->setWidth(static_cast<qreal>(w));
}

void QTextInlineObject_SetAscent(QTextInlineObject* self, double a) {
    self->setAscent(static_cast<qreal>(a));
}

void QTextInlineObject_SetDescent(QTextInlineObject* self, double d) {
    self->setDescent(static_cast<qreal>(d));
}

int QTextInlineObject_TextPosition(const QTextInlineObject* self) {
    return self->textPosition();
}

int QTextInlineObject_FormatIndex(const QTextInlineObject* self) {
    return self->formatIndex();
}

QTextFormat* QTextInlineObject_Format(const QTextInlineObject* self) {
    return new QTextFormat(self->format());
}

void QTextInlineObject_Delete(QTextInlineObject* self) {
    delete self;
}

QTextLayout* QTextLayout_new() {
    return new QTextLayout();
}

QTextLayout* QTextLayout_new2(const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QTextLayout(text_QString);
}

QTextLayout* QTextLayout_new3(const libqt_string text, const QFont* font) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QTextLayout(text_QString, *font);
}

QTextLayout* QTextLayout_new4(const QTextBlock* b) {
    return new QTextLayout(*b);
}

QTextLayout* QTextLayout_new5(const libqt_string text, const QFont* font, const QPaintDevice* paintdevice) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QTextLayout(text_QString, *font, paintdevice);
}

void QTextLayout_SetFont(QTextLayout* self, const QFont* f) {
    self->setFont(*f);
}

QFont* QTextLayout_Font(const QTextLayout* self) {
    return new QFont(self->font());
}

void QTextLayout_SetRawFont(QTextLayout* self, const QRawFont* rawFont) {
    self->setRawFont(*rawFont);
}

void QTextLayout_SetText(QTextLayout* self, const libqt_string stringVal) {
    QString stringVal_QString = QString::fromUtf8(stringVal.data, stringVal.len);
    self->setText(stringVal_QString);
}

libqt_string QTextLayout_Text(const QTextLayout* self) {
    QString _ret = self->text();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QTextLayout_SetTextOption(QTextLayout* self, const QTextOption* option) {
    self->setTextOption(*option);
}

QTextOption* QTextLayout_TextOption(const QTextLayout* self) {
    const QTextOption& _ret = self->textOption();
    // Cast returned reference into pointer
    return const_cast<QTextOption*>(&_ret);
}

void QTextLayout_SetPreeditArea(QTextLayout* self, int position, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->setPreeditArea(static_cast<int>(position), text_QString);
}

int QTextLayout_PreeditAreaPosition(const QTextLayout* self) {
    return self->preeditAreaPosition();
}

libqt_string QTextLayout_PreeditAreaText(const QTextLayout* self) {
    QString _ret = self->preeditAreaText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QTextLayout_SetFormats(QTextLayout* self, const libqt_list /* of QTextLayout__FormatRange* */ overrides) {
    QList<QTextLayout::FormatRange> overrides_QList;
    overrides_QList.reserve(overrides.len);
    QTextLayout__FormatRange** overrides_arr = static_cast<QTextLayout__FormatRange**>(overrides.data);
    for (size_t i = 0; i < overrides.len; ++i) {
        overrides_QList.push_back(*(overrides_arr[i]));
    }
    self->setFormats(overrides_QList);
}

libqt_list /* of QTextLayout__FormatRange* */ QTextLayout_Formats(const QTextLayout* self) {
    QList<QTextLayout::FormatRange> _ret = self->formats();
    // Convert QList<> from C++ memory to manually-managed C memory
    QTextLayout__FormatRange** _arr = static_cast<QTextLayout__FormatRange**>(malloc(sizeof(QTextLayout__FormatRange*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QTextLayout::FormatRange(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QTextLayout_ClearFormats(QTextLayout* self) {
    self->clearFormats();
}

void QTextLayout_SetCacheEnabled(QTextLayout* self, bool enable) {
    self->setCacheEnabled(enable);
}

bool QTextLayout_CacheEnabled(const QTextLayout* self) {
    return self->cacheEnabled();
}

void QTextLayout_SetCursorMoveStyle(QTextLayout* self, int style) {
    self->setCursorMoveStyle(static_cast<Qt::CursorMoveStyle>(style));
}

int QTextLayout_CursorMoveStyle(const QTextLayout* self) {
    return static_cast<int>(self->cursorMoveStyle());
}

void QTextLayout_BeginLayout(QTextLayout* self) {
    self->beginLayout();
}

void QTextLayout_EndLayout(QTextLayout* self) {
    self->endLayout();
}

void QTextLayout_ClearLayout(QTextLayout* self) {
    self->clearLayout();
}

QTextLine* QTextLayout_CreateLine(QTextLayout* self) {
    return new QTextLine(self->createLine());
}

int QTextLayout_LineCount(const QTextLayout* self) {
    return self->lineCount();
}

QTextLine* QTextLayout_LineAt(const QTextLayout* self, int i) {
    return new QTextLine(self->lineAt(static_cast<int>(i)));
}

QTextLine* QTextLayout_LineForTextPosition(const QTextLayout* self, int pos) {
    return new QTextLine(self->lineForTextPosition(static_cast<int>(pos)));
}

bool QTextLayout_IsValidCursorPosition(const QTextLayout* self, int pos) {
    return self->isValidCursorPosition(static_cast<int>(pos));
}

int QTextLayout_NextCursorPosition(const QTextLayout* self, int oldPos) {
    return self->nextCursorPosition(static_cast<int>(oldPos));
}

int QTextLayout_PreviousCursorPosition(const QTextLayout* self, int oldPos) {
    return self->previousCursorPosition(static_cast<int>(oldPos));
}

int QTextLayout_LeftCursorPosition(const QTextLayout* self, int oldPos) {
    return self->leftCursorPosition(static_cast<int>(oldPos));
}

int QTextLayout_RightCursorPosition(const QTextLayout* self, int oldPos) {
    return self->rightCursorPosition(static_cast<int>(oldPos));
}

void QTextLayout_Draw(const QTextLayout* self, QPainter* p, const QPointF* pos) {
    self->draw(p, *pos);
}

void QTextLayout_DrawCursor(const QTextLayout* self, QPainter* p, const QPointF* pos, int cursorPosition) {
    self->drawCursor(p, *pos, static_cast<int>(cursorPosition));
}

void QTextLayout_DrawCursor2(const QTextLayout* self, QPainter* p, const QPointF* pos, int cursorPosition, int width) {
    self->drawCursor(p, *pos, static_cast<int>(cursorPosition), static_cast<int>(width));
}

QPointF* QTextLayout_Position(const QTextLayout* self) {
    return new QPointF(self->position());
}

void QTextLayout_SetPosition(QTextLayout* self, const QPointF* p) {
    self->setPosition(*p);
}

QRectF* QTextLayout_BoundingRect(const QTextLayout* self) {
    return new QRectF(self->boundingRect());
}

double QTextLayout_MinimumWidth(const QTextLayout* self) {
    return static_cast<double>(self->minimumWidth());
}

double QTextLayout_MaximumWidth(const QTextLayout* self) {
    return static_cast<double>(self->maximumWidth());
}

libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns(const QTextLayout* self, int from, int length, uint16_t flags) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from), static_cast<int>(length), static_cast<QTextLayout::GlyphRunRetrievalFlags>(flags));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns2(const QTextLayout* self) {
    QList<QGlyphRun> _ret = self->glyphRuns();
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QTextLayout_SetFlags(QTextLayout* self, int flags) {
    self->setFlags(static_cast<int>(flags));
}

int QTextLayout_NextCursorPosition2(const QTextLayout* self, int oldPos, int mode) {
    return self->nextCursorPosition(static_cast<int>(oldPos), static_cast<QTextLayout::CursorMode>(mode));
}

int QTextLayout_PreviousCursorPosition2(const QTextLayout* self, int oldPos, int mode) {
    return self->previousCursorPosition(static_cast<int>(oldPos), static_cast<QTextLayout::CursorMode>(mode));
}

void QTextLayout_Draw3(const QTextLayout* self, QPainter* p, const QPointF* pos, const libqt_list /* of QTextLayout__FormatRange* */ selections) {
    QList<QTextLayout::FormatRange> selections_QList;
    selections_QList.reserve(selections.len);
    QTextLayout__FormatRange** selections_arr = static_cast<QTextLayout__FormatRange**>(selections.data);
    for (size_t i = 0; i < selections.len; ++i) {
        selections_QList.push_back(*(selections_arr[i]));
    }
    self->draw(p, *pos, selections_QList);
}

void QTextLayout_Draw4(const QTextLayout* self, QPainter* p, const QPointF* pos, const libqt_list /* of QTextLayout__FormatRange* */ selections, const QRectF* clip) {
    QList<QTextLayout::FormatRange> selections_QList;
    selections_QList.reserve(selections.len);
    QTextLayout__FormatRange** selections_arr = static_cast<QTextLayout__FormatRange**>(selections.data);
    for (size_t i = 0; i < selections.len; ++i) {
        selections_QList.push_back(*(selections_arr[i]));
    }
    self->draw(p, *pos, selections_QList, *clip);
}

libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns1(const QTextLayout* self, int from) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns22(const QTextLayout* self, int from, int length) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from), static_cast<int>(length));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QTextLayout_Delete(QTextLayout* self) {
    delete self;
}

QTextLine* QTextLine_new(const QTextLine* other) {
    return new QTextLine(*other);
}

QTextLine* QTextLine_new2(QTextLine* other) {
    return new QTextLine(std::move(*other));
}

QTextLine* QTextLine_new3() {
    return new QTextLine();
}

void QTextLine_CopyAssign(QTextLine* self, QTextLine* other) {
    *self = *other;
}

void QTextLine_MoveAssign(QTextLine* self, QTextLine* other) {
    *self = std::move(*other);
}

bool QTextLine_IsValid(const QTextLine* self) {
    return self->isValid();
}

QRectF* QTextLine_Rect(const QTextLine* self) {
    return new QRectF(self->rect());
}

double QTextLine_X(const QTextLine* self) {
    return static_cast<double>(self->x());
}

double QTextLine_Y(const QTextLine* self) {
    return static_cast<double>(self->y());
}

double QTextLine_Width(const QTextLine* self) {
    return static_cast<double>(self->width());
}

double QTextLine_Ascent(const QTextLine* self) {
    return static_cast<double>(self->ascent());
}

double QTextLine_Descent(const QTextLine* self) {
    return static_cast<double>(self->descent());
}

double QTextLine_Height(const QTextLine* self) {
    return static_cast<double>(self->height());
}

double QTextLine_Leading(const QTextLine* self) {
    return static_cast<double>(self->leading());
}

void QTextLine_SetLeadingIncluded(QTextLine* self, bool included) {
    self->setLeadingIncluded(included);
}

bool QTextLine_LeadingIncluded(const QTextLine* self) {
    return self->leadingIncluded();
}

double QTextLine_NaturalTextWidth(const QTextLine* self) {
    return static_cast<double>(self->naturalTextWidth());
}

double QTextLine_HorizontalAdvance(const QTextLine* self) {
    return static_cast<double>(self->horizontalAdvance());
}

QRectF* QTextLine_NaturalTextRect(const QTextLine* self) {
    return new QRectF(self->naturalTextRect());
}

double QTextLine_CursorToX(const QTextLine* self, int* cursorPos) {
    return static_cast<double>(self->cursorToX(static_cast<int*>(cursorPos)));
}

double QTextLine_CursorToX2(const QTextLine* self, int cursorPos) {
    return static_cast<double>(self->cursorToX(static_cast<int>(cursorPos)));
}

int QTextLine_XToCursor(const QTextLine* self, double x) {
    return self->xToCursor(static_cast<qreal>(x));
}

void QTextLine_SetLineWidth(QTextLine* self, double width) {
    self->setLineWidth(static_cast<qreal>(width));
}

void QTextLine_SetNumColumns(QTextLine* self, int columns) {
    self->setNumColumns(static_cast<int>(columns));
}

void QTextLine_SetNumColumns2(QTextLine* self, int columns, double alignmentWidth) {
    self->setNumColumns(static_cast<int>(columns), static_cast<qreal>(alignmentWidth));
}

void QTextLine_SetPosition(QTextLine* self, const QPointF* pos) {
    self->setPosition(*pos);
}

QPointF* QTextLine_Position(const QTextLine* self) {
    return new QPointF(self->position());
}

int QTextLine_TextStart(const QTextLine* self) {
    return self->textStart();
}

int QTextLine_TextLength(const QTextLine* self) {
    return self->textLength();
}

int QTextLine_LineNumber(const QTextLine* self) {
    return self->lineNumber();
}

void QTextLine_Draw(const QTextLine* self, QPainter* painter, const QPointF* position) {
    self->draw(painter, *position);
}

libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns(const QTextLine* self, int from, int length, uint16_t flags) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from), static_cast<int>(length), static_cast<QTextLayout::GlyphRunRetrievalFlags>(flags));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns2(const QTextLine* self) {
    QList<QGlyphRun> _ret = self->glyphRuns();
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

double QTextLine_CursorToX22(const QTextLine* self, int* cursorPos, int edge) {
    return static_cast<double>(self->cursorToX(static_cast<int*>(cursorPos), static_cast<QTextLine::Edge>(edge)));
}

double QTextLine_CursorToX23(const QTextLine* self, int cursorPos, int edge) {
    return static_cast<double>(self->cursorToX(static_cast<int>(cursorPos), static_cast<QTextLine::Edge>(edge)));
}

int QTextLine_XToCursor2(const QTextLine* self, double x, int param2) {
    return self->xToCursor(static_cast<qreal>(x), static_cast<QTextLine::CursorPosition>(param2));
}

libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns1(const QTextLine* self, int from) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns22(const QTextLine* self, int from, int length) {
    QList<QGlyphRun> _ret = self->glyphRuns(static_cast<int>(from), static_cast<int>(length));
    // Convert QList<> from C++ memory to manually-managed C memory
    QGlyphRun** _arr = static_cast<QGlyphRun**>(malloc(sizeof(QGlyphRun*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = new QGlyphRun(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QTextLine_Delete(QTextLine* self) {
    delete self;
}

QTextLayout__FormatRange* QTextLayout__FormatRange_new() {
    return new QTextLayout::FormatRange();
}

int QTextLayout__FormatRange_Start(const QTextLayout__FormatRange* self) {
    return self->start;
}

void QTextLayout__FormatRange_SetStart(QTextLayout__FormatRange* self, int start) {
    self->start = static_cast<int>(start);
}

int QTextLayout__FormatRange_Length(const QTextLayout__FormatRange* self) {
    return self->length;
}

void QTextLayout__FormatRange_SetLength(QTextLayout__FormatRange* self, int length) {
    self->length = static_cast<int>(length);
}

QTextCharFormat* QTextLayout__FormatRange_Format(const QTextLayout__FormatRange* self) {
    return new QTextCharFormat(self->format);
}

void QTextLayout__FormatRange_SetFormat(QTextLayout__FormatRange* self, QTextCharFormat* format) {
    self->format = *format;
}

void QTextLayout__FormatRange_Delete(QTextLayout__FormatRange* self) {
    delete self;
}
