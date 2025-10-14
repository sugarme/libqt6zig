#include <QImage>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextBlock>
#include <QTextBlockFormat>
#include <QTextCharFormat>
#include <QTextCursor>
#include <QTextDocument>
#include <QTextDocumentFragment>
#include <QTextFrame>
#include <QTextFrameFormat>
#include <QTextImageFormat>
#include <QTextList>
#include <QTextListFormat>
#include <QTextTable>
#include <QTextTableFormat>
#include <qtextcursor.h>
#include "libqtextcursor.h"
#include "libqtextcursor.hxx"

QTextCursor* QTextCursor_new() {
    return new QTextCursor();
}

QTextCursor* QTextCursor_new2(QTextDocument* document) {
    return new QTextCursor(document);
}

QTextCursor* QTextCursor_new3(QTextFrame* frame) {
    return new QTextCursor(frame);
}

QTextCursor* QTextCursor_new4(const QTextBlock* block) {
    return new QTextCursor(*block);
}

QTextCursor* QTextCursor_new5(const QTextCursor* cursor) {
    return new QTextCursor(*cursor);
}

void QTextCursor_OperatorAssign(QTextCursor* self, const QTextCursor* other) {
    self->operator=(*other);
}

void QTextCursor_Swap(QTextCursor* self, QTextCursor* other) {
    self->swap(*other);
}

bool QTextCursor_IsNull(const QTextCursor* self) {
    return self->isNull();
}

void QTextCursor_SetPosition(QTextCursor* self, int pos) {
    self->setPosition(static_cast<int>(pos));
}

int QTextCursor_Position(const QTextCursor* self) {
    return self->position();
}

int QTextCursor_PositionInBlock(const QTextCursor* self) {
    return self->positionInBlock();
}

int QTextCursor_Anchor(const QTextCursor* self) {
    return self->anchor();
}

void QTextCursor_InsertText(QTextCursor* self, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->insertText(text_QString);
}

void QTextCursor_InsertText2(QTextCursor* self, const libqt_string text, const QTextCharFormat* format) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->insertText(text_QString, *format);
}

bool QTextCursor_MovePosition(QTextCursor* self, int op) {
    return self->movePosition(static_cast<QTextCursor::MoveOperation>(op));
}

bool QTextCursor_VisualNavigation(const QTextCursor* self) {
    return self->visualNavigation();
}

void QTextCursor_SetVisualNavigation(QTextCursor* self, bool b) {
    self->setVisualNavigation(b);
}

void QTextCursor_SetVerticalMovementX(QTextCursor* self, int x) {
    self->setVerticalMovementX(static_cast<int>(x));
}

int QTextCursor_VerticalMovementX(const QTextCursor* self) {
    return self->verticalMovementX();
}

void QTextCursor_SetKeepPositionOnInsert(QTextCursor* self, bool b) {
    self->setKeepPositionOnInsert(b);
}

bool QTextCursor_KeepPositionOnInsert(const QTextCursor* self) {
    return self->keepPositionOnInsert();
}

void QTextCursor_DeleteChar(QTextCursor* self) {
    self->deleteChar();
}

void QTextCursor_DeletePreviousChar(QTextCursor* self) {
    self->deletePreviousChar();
}

void QTextCursor_Select(QTextCursor* self, int selection) {
    self->select(static_cast<QTextCursor::SelectionType>(selection));
}

bool QTextCursor_HasSelection(const QTextCursor* self) {
    return self->hasSelection();
}

bool QTextCursor_HasComplexSelection(const QTextCursor* self) {
    return self->hasComplexSelection();
}

void QTextCursor_RemoveSelectedText(QTextCursor* self) {
    self->removeSelectedText();
}

void QTextCursor_ClearSelection(QTextCursor* self) {
    self->clearSelection();
}

int QTextCursor_SelectionStart(const QTextCursor* self) {
    return self->selectionStart();
}

int QTextCursor_SelectionEnd(const QTextCursor* self) {
    return self->selectionEnd();
}

libqt_string QTextCursor_SelectedText(const QTextCursor* self) {
    QString _ret = self->selectedText();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

QTextDocumentFragment* QTextCursor_Selection(const QTextCursor* self) {
    return new QTextDocumentFragment(self->selection());
}

void QTextCursor_SelectedTableCells(const QTextCursor* self, int* firstRow, int* numRows, int* firstColumn, int* numColumns) {
    self->selectedTableCells(static_cast<int*>(firstRow), static_cast<int*>(numRows), static_cast<int*>(firstColumn), static_cast<int*>(numColumns));
}

QTextBlock* QTextCursor_Block(const QTextCursor* self) {
    return new QTextBlock(self->block());
}

QTextCharFormat* QTextCursor_CharFormat(const QTextCursor* self) {
    return new QTextCharFormat(self->charFormat());
}

void QTextCursor_SetCharFormat(QTextCursor* self, const QTextCharFormat* format) {
    self->setCharFormat(*format);
}

void QTextCursor_MergeCharFormat(QTextCursor* self, const QTextCharFormat* modifier) {
    self->mergeCharFormat(*modifier);
}

QTextBlockFormat* QTextCursor_BlockFormat(const QTextCursor* self) {
    return new QTextBlockFormat(self->blockFormat());
}

void QTextCursor_SetBlockFormat(QTextCursor* self, const QTextBlockFormat* format) {
    self->setBlockFormat(*format);
}

void QTextCursor_MergeBlockFormat(QTextCursor* self, const QTextBlockFormat* modifier) {
    self->mergeBlockFormat(*modifier);
}

QTextCharFormat* QTextCursor_BlockCharFormat(const QTextCursor* self) {
    return new QTextCharFormat(self->blockCharFormat());
}

void QTextCursor_SetBlockCharFormat(QTextCursor* self, const QTextCharFormat* format) {
    self->setBlockCharFormat(*format);
}

void QTextCursor_MergeBlockCharFormat(QTextCursor* self, const QTextCharFormat* modifier) {
    self->mergeBlockCharFormat(*modifier);
}

bool QTextCursor_AtBlockStart(const QTextCursor* self) {
    return self->atBlockStart();
}

bool QTextCursor_AtBlockEnd(const QTextCursor* self) {
    return self->atBlockEnd();
}

bool QTextCursor_AtStart(const QTextCursor* self) {
    return self->atStart();
}

bool QTextCursor_AtEnd(const QTextCursor* self) {
    return self->atEnd();
}

void QTextCursor_InsertBlock(QTextCursor* self) {
    self->insertBlock();
}

void QTextCursor_InsertBlock2(QTextCursor* self, const QTextBlockFormat* format) {
    self->insertBlock(*format);
}

void QTextCursor_InsertBlock3(QTextCursor* self, const QTextBlockFormat* format, const QTextCharFormat* charFormat) {
    self->insertBlock(*format, *charFormat);
}

QTextList* QTextCursor_InsertList(QTextCursor* self, const QTextListFormat* format) {
    return self->insertList(*format);
}

QTextList* QTextCursor_InsertList2(QTextCursor* self, int style) {
    return self->insertList(static_cast<QTextListFormat::Style>(style));
}

QTextList* QTextCursor_CreateList(QTextCursor* self, const QTextListFormat* format) {
    return self->createList(*format);
}

QTextList* QTextCursor_CreateList2(QTextCursor* self, int style) {
    return self->createList(static_cast<QTextListFormat::Style>(style));
}

QTextList* QTextCursor_CurrentList(const QTextCursor* self) {
    return self->currentList();
}

QTextTable* QTextCursor_InsertTable(QTextCursor* self, int rows, int cols, const QTextTableFormat* format) {
    return self->insertTable(static_cast<int>(rows), static_cast<int>(cols), *format);
}

QTextTable* QTextCursor_InsertTable2(QTextCursor* self, int rows, int cols) {
    return self->insertTable(static_cast<int>(rows), static_cast<int>(cols));
}

QTextTable* QTextCursor_CurrentTable(const QTextCursor* self) {
    return self->currentTable();
}

QTextFrame* QTextCursor_InsertFrame(QTextCursor* self, const QTextFrameFormat* format) {
    return self->insertFrame(*format);
}

QTextFrame* QTextCursor_CurrentFrame(const QTextCursor* self) {
    return self->currentFrame();
}

void QTextCursor_InsertFragment(QTextCursor* self, const QTextDocumentFragment* fragment) {
    self->insertFragment(*fragment);
}

void QTextCursor_InsertHtml(QTextCursor* self, const libqt_string html) {
    QString html_QString = QString::fromUtf8(html.data, html.len);
    self->insertHtml(html_QString);
}

void QTextCursor_InsertMarkdown(QTextCursor* self, const libqt_string markdown) {
    QString markdown_QString = QString::fromUtf8(markdown.data, markdown.len);
    self->insertMarkdown(markdown_QString);
}

void QTextCursor_InsertImage(QTextCursor* self, const QTextImageFormat* format, int alignment) {
    self->insertImage(*format, static_cast<QTextFrameFormat::Position>(alignment));
}

void QTextCursor_InsertImage2(QTextCursor* self, const QTextImageFormat* format) {
    self->insertImage(*format);
}

void QTextCursor_InsertImage3(QTextCursor* self, const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->insertImage(name_QString);
}

void QTextCursor_InsertImage4(QTextCursor* self, const QImage* image) {
    self->insertImage(*image);
}

void QTextCursor_BeginEditBlock(QTextCursor* self) {
    self->beginEditBlock();
}

void QTextCursor_JoinPreviousEditBlock(QTextCursor* self) {
    self->joinPreviousEditBlock();
}

void QTextCursor_EndEditBlock(QTextCursor* self) {
    self->endEditBlock();
}

bool QTextCursor_OperatorNotEqual(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self != *rhs);
}

bool QTextCursor_OperatorLesser(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self < *rhs);
}

bool QTextCursor_OperatorLesserOrEqual(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self <= *rhs);
}

bool QTextCursor_OperatorEqual(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self == *rhs);
}

bool QTextCursor_OperatorGreaterOrEqual(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self >= *rhs);
}

bool QTextCursor_OperatorGreater(const QTextCursor* self, const QTextCursor* rhs) {
    return (*self > *rhs);
}

bool QTextCursor_IsCopyOf(const QTextCursor* self, const QTextCursor* other) {
    return self->isCopyOf(*other);
}

int QTextCursor_BlockNumber(const QTextCursor* self) {
    return self->blockNumber();
}

int QTextCursor_ColumnNumber(const QTextCursor* self) {
    return self->columnNumber();
}

QTextDocument* QTextCursor_Document(const QTextCursor* self) {
    return self->document();
}

void QTextCursor_SetPosition2(QTextCursor* self, int pos, int mode) {
    self->setPosition(static_cast<int>(pos), static_cast<QTextCursor::MoveMode>(mode));
}

bool QTextCursor_MovePosition2(QTextCursor* self, int op, int param2) {
    return self->movePosition(static_cast<QTextCursor::MoveOperation>(op), static_cast<QTextCursor::MoveMode>(param2));
}

bool QTextCursor_MovePosition3(QTextCursor* self, int op, int param2, int n) {
    return self->movePosition(static_cast<QTextCursor::MoveOperation>(op), static_cast<QTextCursor::MoveMode>(param2), static_cast<int>(n));
}

void QTextCursor_InsertMarkdown2(QTextCursor* self, const libqt_string markdown, int features) {
    QString markdown_QString = QString::fromUtf8(markdown.data, markdown.len);
    self->insertMarkdown(markdown_QString, static_cast<QTextDocument::MarkdownFeatures>(features));
}

void QTextCursor_InsertImage22(QTextCursor* self, const QImage* image, const libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->insertImage(*image, name_QString);
}

void QTextCursor_Delete(QTextCursor* self) {
    delete self;
}
