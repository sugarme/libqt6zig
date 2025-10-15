#pragma once
#ifndef SRCC_LIBQTEXTFORMAT_H
#define SRCC_LIBQTEXTFORMAT_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextOption__Tab)
typedef QTextOption::Tab QTextOption__Tab;
#endif
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QFont QFont;
typedef struct QPen QPen;
typedef struct QTextBlockFormat QTextBlockFormat;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrameFormat QTextFrameFormat;
typedef struct QTextImageFormat QTextImageFormat;
typedef struct QTextLength QTextLength;
typedef struct QTextListFormat QTextListFormat;
typedef struct QTextOption__Tab QTextOption__Tab;
typedef struct QTextTableCellFormat QTextTableCellFormat;
typedef struct QTextTableFormat QTextTableFormat;
typedef struct QVariant QVariant;
#endif

QTextLength* QTextLength_new(const QTextLength* other);
QTextLength* QTextLength_new2(QTextLength* other);
QTextLength* QTextLength_new3();
QTextLength* QTextLength_new4(int typeVal, double value);
QTextLength* QTextLength_new5(const QTextLength* param1);
void QTextLength_CopyAssign(QTextLength* self, QTextLength* other);
void QTextLength_MoveAssign(QTextLength* self, QTextLength* other);
int QTextLength_Type(const QTextLength* self);
double QTextLength_Value(const QTextLength* self, double maximumLength);
double QTextLength_RawValue(const QTextLength* self);
bool QTextLength_OperatorEqual(const QTextLength* self, const QTextLength* other);
bool QTextLength_OperatorNotEqual(const QTextLength* self, const QTextLength* other);
QVariant* QTextLength_ToQVariant(const QTextLength* self);
void QTextLength_Delete(QTextLength* self);

QTextFormat* QTextFormat_new();
QTextFormat* QTextFormat_new2(int typeVal);
QTextFormat* QTextFormat_new3(const QTextFormat* rhs);
void QTextFormat_OperatorAssign(QTextFormat* self, const QTextFormat* rhs);
void QTextFormat_Swap(QTextFormat* self, QTextFormat* other);
void QTextFormat_Merge(QTextFormat* self, const QTextFormat* other);
bool QTextFormat_IsValid(const QTextFormat* self);
bool QTextFormat_IsEmpty(const QTextFormat* self);
int QTextFormat_Type(const QTextFormat* self);
int QTextFormat_ObjectIndex(const QTextFormat* self);
void QTextFormat_SetObjectIndex(QTextFormat* self, int object);
QVariant* QTextFormat_Property(const QTextFormat* self, int propertyId);
void QTextFormat_SetProperty(QTextFormat* self, int propertyId, const QVariant* value);
void QTextFormat_ClearProperty(QTextFormat* self, int propertyId);
bool QTextFormat_HasProperty(const QTextFormat* self, int propertyId);
bool QTextFormat_BoolProperty(const QTextFormat* self, int propertyId);
int QTextFormat_IntProperty(const QTextFormat* self, int propertyId);
double QTextFormat_DoubleProperty(const QTextFormat* self, int propertyId);
libqt_string QTextFormat_StringProperty(const QTextFormat* self, int propertyId);
QColor* QTextFormat_ColorProperty(const QTextFormat* self, int propertyId);
QPen* QTextFormat_PenProperty(const QTextFormat* self, int propertyId);
QBrush* QTextFormat_BrushProperty(const QTextFormat* self, int propertyId);
QTextLength* QTextFormat_LengthProperty(const QTextFormat* self, int propertyId);
libqt_list /* of QTextLength* */ QTextFormat_LengthVectorProperty(const QTextFormat* self, int propertyId);
void QTextFormat_SetProperty2(QTextFormat* self, int propertyId, const libqt_list /* of QTextLength* */ lengths);
libqt_map /* of int to QVariant* */ QTextFormat_Properties(const QTextFormat* self);
int QTextFormat_PropertyCount(const QTextFormat* self);
void QTextFormat_SetObjectType(QTextFormat* self, int typeVal);
int QTextFormat_ObjectType(const QTextFormat* self);
bool QTextFormat_IsCharFormat(const QTextFormat* self);
bool QTextFormat_IsBlockFormat(const QTextFormat* self);
bool QTextFormat_IsListFormat(const QTextFormat* self);
bool QTextFormat_IsFrameFormat(const QTextFormat* self);
bool QTextFormat_IsImageFormat(const QTextFormat* self);
bool QTextFormat_IsTableFormat(const QTextFormat* self);
bool QTextFormat_IsTableCellFormat(const QTextFormat* self);
QTextBlockFormat* QTextFormat_ToBlockFormat(const QTextFormat* self);
QTextCharFormat* QTextFormat_ToCharFormat(const QTextFormat* self);
QTextListFormat* QTextFormat_ToListFormat(const QTextFormat* self);
QTextTableFormat* QTextFormat_ToTableFormat(const QTextFormat* self);
QTextFrameFormat* QTextFormat_ToFrameFormat(const QTextFormat* self);
QTextImageFormat* QTextFormat_ToImageFormat(const QTextFormat* self);
QTextTableCellFormat* QTextFormat_ToTableCellFormat(const QTextFormat* self);
bool QTextFormat_OperatorEqual(const QTextFormat* self, const QTextFormat* rhs);
bool QTextFormat_OperatorNotEqual(const QTextFormat* self, const QTextFormat* rhs);
QVariant* QTextFormat_ToQVariant(const QTextFormat* self);
void QTextFormat_SetLayoutDirection(QTextFormat* self, int direction);
int QTextFormat_LayoutDirection(const QTextFormat* self);
void QTextFormat_SetBackground(QTextFormat* self, const QBrush* brush);
QBrush* QTextFormat_Background(const QTextFormat* self);
void QTextFormat_ClearBackground(QTextFormat* self);
void QTextFormat_SetForeground(QTextFormat* self, const QBrush* brush);
QBrush* QTextFormat_Foreground(const QTextFormat* self);
void QTextFormat_ClearForeground(QTextFormat* self);
void QTextFormat_Delete(QTextFormat* self);

QTextCharFormat* QTextCharFormat_new();
bool QTextCharFormat_IsValid(const QTextCharFormat* self);
void QTextCharFormat_SetFont(QTextCharFormat* self, const QFont* font);
QFont* QTextCharFormat_Font(const QTextCharFormat* self);
void QTextCharFormat_SetFontFamily(QTextCharFormat* self, const libqt_string family);
libqt_string QTextCharFormat_FontFamily(const QTextCharFormat* self);
void QTextCharFormat_SetFontFamilies(QTextCharFormat* self, const libqt_list /* of libqt_string */ families);
QVariant* QTextCharFormat_FontFamilies(const QTextCharFormat* self);
void QTextCharFormat_SetFontStyleName(QTextCharFormat* self, const libqt_string styleName);
QVariant* QTextCharFormat_FontStyleName(const QTextCharFormat* self);
void QTextCharFormat_SetFontPointSize(QTextCharFormat* self, double size);
double QTextCharFormat_FontPointSize(const QTextCharFormat* self);
void QTextCharFormat_SetFontWeight(QTextCharFormat* self, int weight);
int QTextCharFormat_FontWeight(const QTextCharFormat* self);
void QTextCharFormat_SetFontItalic(QTextCharFormat* self, bool italic);
bool QTextCharFormat_FontItalic(const QTextCharFormat* self);
void QTextCharFormat_SetFontCapitalization(QTextCharFormat* self, int capitalization);
int QTextCharFormat_FontCapitalization(const QTextCharFormat* self);
void QTextCharFormat_SetFontLetterSpacingType(QTextCharFormat* self, int letterSpacingType);
int QTextCharFormat_FontLetterSpacingType(const QTextCharFormat* self);
void QTextCharFormat_SetFontLetterSpacing(QTextCharFormat* self, double spacing);
double QTextCharFormat_FontLetterSpacing(const QTextCharFormat* self);
void QTextCharFormat_SetFontWordSpacing(QTextCharFormat* self, double spacing);
double QTextCharFormat_FontWordSpacing(const QTextCharFormat* self);
void QTextCharFormat_SetFontUnderline(QTextCharFormat* self, bool underline);
bool QTextCharFormat_FontUnderline(const QTextCharFormat* self);
void QTextCharFormat_SetFontOverline(QTextCharFormat* self, bool overline);
bool QTextCharFormat_FontOverline(const QTextCharFormat* self);
void QTextCharFormat_SetFontStrikeOut(QTextCharFormat* self, bool strikeOut);
bool QTextCharFormat_FontStrikeOut(const QTextCharFormat* self);
void QTextCharFormat_SetUnderlineColor(QTextCharFormat* self, const QColor* color);
QColor* QTextCharFormat_UnderlineColor(const QTextCharFormat* self);
void QTextCharFormat_SetFontFixedPitch(QTextCharFormat* self, bool fixedPitch);
bool QTextCharFormat_FontFixedPitch(const QTextCharFormat* self);
void QTextCharFormat_SetFontStretch(QTextCharFormat* self, int factor);
int QTextCharFormat_FontStretch(const QTextCharFormat* self);
void QTextCharFormat_SetFontStyleHint(QTextCharFormat* self, int hint);
void QTextCharFormat_SetFontStyleStrategy(QTextCharFormat* self, int strategy);
int QTextCharFormat_FontStyleHint(const QTextCharFormat* self);
int QTextCharFormat_FontStyleStrategy(const QTextCharFormat* self);
void QTextCharFormat_SetFontHintingPreference(QTextCharFormat* self, int hintingPreference);
int QTextCharFormat_FontHintingPreference(const QTextCharFormat* self);
void QTextCharFormat_SetFontKerning(QTextCharFormat* self, bool enable);
bool QTextCharFormat_FontKerning(const QTextCharFormat* self);
void QTextCharFormat_SetUnderlineStyle(QTextCharFormat* self, int style);
int QTextCharFormat_UnderlineStyle(const QTextCharFormat* self);
void QTextCharFormat_SetVerticalAlignment(QTextCharFormat* self, int alignment);
int QTextCharFormat_VerticalAlignment(const QTextCharFormat* self);
void QTextCharFormat_SetTextOutline(QTextCharFormat* self, const QPen* pen);
QPen* QTextCharFormat_TextOutline(const QTextCharFormat* self);
void QTextCharFormat_SetToolTip(QTextCharFormat* self, const libqt_string tip);
libqt_string QTextCharFormat_ToolTip(const QTextCharFormat* self);
void QTextCharFormat_SetSuperScriptBaseline(QTextCharFormat* self, double baseline);
double QTextCharFormat_SuperScriptBaseline(const QTextCharFormat* self);
void QTextCharFormat_SetSubScriptBaseline(QTextCharFormat* self, double baseline);
double QTextCharFormat_SubScriptBaseline(const QTextCharFormat* self);
void QTextCharFormat_SetBaselineOffset(QTextCharFormat* self, double baseline);
double QTextCharFormat_BaselineOffset(const QTextCharFormat* self);
void QTextCharFormat_SetAnchor(QTextCharFormat* self, bool anchor);
bool QTextCharFormat_IsAnchor(const QTextCharFormat* self);
void QTextCharFormat_SetAnchorHref(QTextCharFormat* self, const libqt_string value);
libqt_string QTextCharFormat_AnchorHref(const QTextCharFormat* self);
void QTextCharFormat_SetAnchorNames(QTextCharFormat* self, const libqt_list /* of libqt_string */ names);
libqt_list /* of libqt_string */ QTextCharFormat_AnchorNames(const QTextCharFormat* self);
void QTextCharFormat_SetTableCellRowSpan(QTextCharFormat* self, int tableCellRowSpan);
int QTextCharFormat_TableCellRowSpan(const QTextCharFormat* self);
void QTextCharFormat_SetTableCellColumnSpan(QTextCharFormat* self, int tableCellColumnSpan);
int QTextCharFormat_TableCellColumnSpan(const QTextCharFormat* self);
void QTextCharFormat_SetFont2(QTextCharFormat* self, const QFont* font, int behavior);
void QTextCharFormat_SetFontStyleHint2(QTextCharFormat* self, int hint, int strategy);
void QTextCharFormat_Delete(QTextCharFormat* self);

QTextBlockFormat* QTextBlockFormat_new();
bool QTextBlockFormat_IsValid(const QTextBlockFormat* self);
void QTextBlockFormat_SetAlignment(QTextBlockFormat* self, int alignment);
int QTextBlockFormat_Alignment(const QTextBlockFormat* self);
void QTextBlockFormat_SetTopMargin(QTextBlockFormat* self, double margin);
double QTextBlockFormat_TopMargin(const QTextBlockFormat* self);
void QTextBlockFormat_SetBottomMargin(QTextBlockFormat* self, double margin);
double QTextBlockFormat_BottomMargin(const QTextBlockFormat* self);
void QTextBlockFormat_SetLeftMargin(QTextBlockFormat* self, double margin);
double QTextBlockFormat_LeftMargin(const QTextBlockFormat* self);
void QTextBlockFormat_SetRightMargin(QTextBlockFormat* self, double margin);
double QTextBlockFormat_RightMargin(const QTextBlockFormat* self);
void QTextBlockFormat_SetTextIndent(QTextBlockFormat* self, double aindent);
double QTextBlockFormat_TextIndent(const QTextBlockFormat* self);
void QTextBlockFormat_SetIndent(QTextBlockFormat* self, int indent);
int QTextBlockFormat_Indent(const QTextBlockFormat* self);
void QTextBlockFormat_SetHeadingLevel(QTextBlockFormat* self, int alevel);
int QTextBlockFormat_HeadingLevel(const QTextBlockFormat* self);
void QTextBlockFormat_SetLineHeight(QTextBlockFormat* self, double height, int heightType);
double QTextBlockFormat_LineHeight(const QTextBlockFormat* self, double scriptLineHeight, double scaling);
double QTextBlockFormat_LineHeight2(const QTextBlockFormat* self);
int QTextBlockFormat_LineHeightType(const QTextBlockFormat* self);
void QTextBlockFormat_SetNonBreakableLines(QTextBlockFormat* self, bool b);
bool QTextBlockFormat_NonBreakableLines(const QTextBlockFormat* self);
void QTextBlockFormat_SetPageBreakPolicy(QTextBlockFormat* self, int flags);
int QTextBlockFormat_PageBreakPolicy(const QTextBlockFormat* self);
void QTextBlockFormat_SetTabPositions(QTextBlockFormat* self, const libqt_list /* of QTextOption__Tab* */ tabs);
libqt_list /* of QTextOption__Tab* */ QTextBlockFormat_TabPositions(const QTextBlockFormat* self);
void QTextBlockFormat_SetMarker(QTextBlockFormat* self, int marker);
int QTextBlockFormat_Marker(const QTextBlockFormat* self);
void QTextBlockFormat_Delete(QTextBlockFormat* self);

QTextListFormat* QTextListFormat_new();
bool QTextListFormat_IsValid(const QTextListFormat* self);
void QTextListFormat_SetStyle(QTextListFormat* self, int style);
int QTextListFormat_Style(const QTextListFormat* self);
void QTextListFormat_SetIndent(QTextListFormat* self, int indent);
int QTextListFormat_Indent(const QTextListFormat* self);
void QTextListFormat_SetNumberPrefix(QTextListFormat* self, const libqt_string numberPrefix);
libqt_string QTextListFormat_NumberPrefix(const QTextListFormat* self);
void QTextListFormat_SetNumberSuffix(QTextListFormat* self, const libqt_string numberSuffix);
libqt_string QTextListFormat_NumberSuffix(const QTextListFormat* self);
void QTextListFormat_SetStart(QTextListFormat* self, int indent);
int QTextListFormat_Start(const QTextListFormat* self);
void QTextListFormat_Delete(QTextListFormat* self);

QTextImageFormat* QTextImageFormat_new();
bool QTextImageFormat_IsValid(const QTextImageFormat* self);
void QTextImageFormat_SetName(QTextImageFormat* self, const libqt_string name);
libqt_string QTextImageFormat_Name(const QTextImageFormat* self);
void QTextImageFormat_SetWidth(QTextImageFormat* self, double width);
double QTextImageFormat_Width(const QTextImageFormat* self);
void QTextImageFormat_SetMaximumWidth(QTextImageFormat* self, QTextLength* maxWidth);
QTextLength* QTextImageFormat_MaximumWidth(const QTextImageFormat* self);
void QTextImageFormat_SetHeight(QTextImageFormat* self, double height);
double QTextImageFormat_Height(const QTextImageFormat* self);
void QTextImageFormat_SetQuality(QTextImageFormat* self, int quality);
void QTextImageFormat_SetQuality2(QTextImageFormat* self);
int QTextImageFormat_Quality(const QTextImageFormat* self);
void QTextImageFormat_Delete(QTextImageFormat* self);

QTextFrameFormat* QTextFrameFormat_new();
bool QTextFrameFormat_IsValid(const QTextFrameFormat* self);
void QTextFrameFormat_SetPosition(QTextFrameFormat* self, int f);
int QTextFrameFormat_Position(const QTextFrameFormat* self);
void QTextFrameFormat_SetBorder(QTextFrameFormat* self, double border);
double QTextFrameFormat_Border(const QTextFrameFormat* self);
void QTextFrameFormat_SetBorderBrush(QTextFrameFormat* self, const QBrush* brush);
QBrush* QTextFrameFormat_BorderBrush(const QTextFrameFormat* self);
void QTextFrameFormat_SetBorderStyle(QTextFrameFormat* self, int style);
int QTextFrameFormat_BorderStyle(const QTextFrameFormat* self);
void QTextFrameFormat_SetMargin(QTextFrameFormat* self, double margin);
double QTextFrameFormat_Margin(const QTextFrameFormat* self);
void QTextFrameFormat_SetTopMargin(QTextFrameFormat* self, double margin);
double QTextFrameFormat_TopMargin(const QTextFrameFormat* self);
void QTextFrameFormat_SetBottomMargin(QTextFrameFormat* self, double margin);
double QTextFrameFormat_BottomMargin(const QTextFrameFormat* self);
void QTextFrameFormat_SetLeftMargin(QTextFrameFormat* self, double margin);
double QTextFrameFormat_LeftMargin(const QTextFrameFormat* self);
void QTextFrameFormat_SetRightMargin(QTextFrameFormat* self, double margin);
double QTextFrameFormat_RightMargin(const QTextFrameFormat* self);
void QTextFrameFormat_SetPadding(QTextFrameFormat* self, double padding);
double QTextFrameFormat_Padding(const QTextFrameFormat* self);
void QTextFrameFormat_SetWidth(QTextFrameFormat* self, double width);
void QTextFrameFormat_SetWidth2(QTextFrameFormat* self, const QTextLength* length);
QTextLength* QTextFrameFormat_Width(const QTextFrameFormat* self);
void QTextFrameFormat_SetHeight(QTextFrameFormat* self, double height);
void QTextFrameFormat_SetHeight2(QTextFrameFormat* self, const QTextLength* height);
QTextLength* QTextFrameFormat_Height(const QTextFrameFormat* self);
void QTextFrameFormat_SetPageBreakPolicy(QTextFrameFormat* self, int flags);
int QTextFrameFormat_PageBreakPolicy(const QTextFrameFormat* self);
void QTextFrameFormat_Delete(QTextFrameFormat* self);

QTextTableFormat* QTextTableFormat_new();
bool QTextTableFormat_IsValid(const QTextTableFormat* self);
int QTextTableFormat_Columns(const QTextTableFormat* self);
void QTextTableFormat_SetColumns(QTextTableFormat* self, int columns);
void QTextTableFormat_SetColumnWidthConstraints(QTextTableFormat* self, const libqt_list /* of QTextLength* */ constraints);
libqt_list /* of QTextLength* */ QTextTableFormat_ColumnWidthConstraints(const QTextTableFormat* self);
void QTextTableFormat_ClearColumnWidthConstraints(QTextTableFormat* self);
double QTextTableFormat_CellSpacing(const QTextTableFormat* self);
void QTextTableFormat_SetCellSpacing(QTextTableFormat* self, double spacing);
double QTextTableFormat_CellPadding(const QTextTableFormat* self);
void QTextTableFormat_SetCellPadding(QTextTableFormat* self, double padding);
void QTextTableFormat_SetAlignment(QTextTableFormat* self, int alignment);
int QTextTableFormat_Alignment(const QTextTableFormat* self);
void QTextTableFormat_SetHeaderRowCount(QTextTableFormat* self, int count);
int QTextTableFormat_HeaderRowCount(const QTextTableFormat* self);
void QTextTableFormat_SetBorderCollapse(QTextTableFormat* self, bool borderCollapse);
bool QTextTableFormat_BorderCollapse(const QTextTableFormat* self);
void QTextTableFormat_Delete(QTextTableFormat* self);

QTextTableCellFormat* QTextTableCellFormat_new();
bool QTextTableCellFormat_IsValid(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetTopPadding(QTextTableCellFormat* self, double padding);
double QTextTableCellFormat_TopPadding(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBottomPadding(QTextTableCellFormat* self, double padding);
double QTextTableCellFormat_BottomPadding(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetLeftPadding(QTextTableCellFormat* self, double padding);
double QTextTableCellFormat_LeftPadding(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetRightPadding(QTextTableCellFormat* self, double padding);
double QTextTableCellFormat_RightPadding(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetPadding(QTextTableCellFormat* self, double padding);
void QTextTableCellFormat_SetTopBorder(QTextTableCellFormat* self, double width);
double QTextTableCellFormat_TopBorder(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBottomBorder(QTextTableCellFormat* self, double width);
double QTextTableCellFormat_BottomBorder(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetLeftBorder(QTextTableCellFormat* self, double width);
double QTextTableCellFormat_LeftBorder(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetRightBorder(QTextTableCellFormat* self, double width);
double QTextTableCellFormat_RightBorder(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBorder(QTextTableCellFormat* self, double width);
void QTextTableCellFormat_SetTopBorderStyle(QTextTableCellFormat* self, int style);
int QTextTableCellFormat_TopBorderStyle(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBottomBorderStyle(QTextTableCellFormat* self, int style);
int QTextTableCellFormat_BottomBorderStyle(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetLeftBorderStyle(QTextTableCellFormat* self, int style);
int QTextTableCellFormat_LeftBorderStyle(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetRightBorderStyle(QTextTableCellFormat* self, int style);
int QTextTableCellFormat_RightBorderStyle(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBorderStyle(QTextTableCellFormat* self, int style);
void QTextTableCellFormat_SetTopBorderBrush(QTextTableCellFormat* self, const QBrush* brush);
QBrush* QTextTableCellFormat_TopBorderBrush(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBottomBorderBrush(QTextTableCellFormat* self, const QBrush* brush);
QBrush* QTextTableCellFormat_BottomBorderBrush(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetLeftBorderBrush(QTextTableCellFormat* self, const QBrush* brush);
QBrush* QTextTableCellFormat_LeftBorderBrush(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetRightBorderBrush(QTextTableCellFormat* self, const QBrush* brush);
QBrush* QTextTableCellFormat_RightBorderBrush(const QTextTableCellFormat* self);
void QTextTableCellFormat_SetBorderBrush(QTextTableCellFormat* self, const QBrush* brush);
void QTextTableCellFormat_Delete(QTextTableCellFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
