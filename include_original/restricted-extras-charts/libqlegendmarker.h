#pragma once
#ifndef SRC_RESTRICTED_EXTRAS_CHARTSC_LIBQLEGENDMARKER_H
#define SRC_RESTRICTED_EXTRAS_CHARTSC_LIBQLEGENDMARKER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QAbstractSeries QAbstractSeries;
typedef struct QBrush QBrush;
typedef struct QFont QFont;
typedef struct QLegendMarker QLegendMarker;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPen QPen;
#endif

QMetaObject* QLegendMarker_MetaObject(const QLegendMarker* self);
void* QLegendMarker_Metacast(QLegendMarker* self, const char* param1);
int QLegendMarker_Metacall(QLegendMarker* self, int param1, int param2, void** param3);
libqt_string QLegendMarker_Tr(const char* s);
int QLegendMarker_Type(QLegendMarker* self);
libqt_string QLegendMarker_Label(const QLegendMarker* self);
void QLegendMarker_SetLabel(QLegendMarker* self, const libqt_string label);
QBrush* QLegendMarker_LabelBrush(const QLegendMarker* self);
void QLegendMarker_SetLabelBrush(QLegendMarker* self, const QBrush* brush);
QFont* QLegendMarker_Font(const QLegendMarker* self);
void QLegendMarker_SetFont(QLegendMarker* self, const QFont* font);
QPen* QLegendMarker_Pen(const QLegendMarker* self);
void QLegendMarker_SetPen(QLegendMarker* self, const QPen* pen);
QBrush* QLegendMarker_Brush(const QLegendMarker* self);
void QLegendMarker_SetBrush(QLegendMarker* self, const QBrush* brush);
bool QLegendMarker_IsVisible(const QLegendMarker* self);
void QLegendMarker_SetVisible(QLegendMarker* self, bool visible);
int QLegendMarker_Shape(const QLegendMarker* self);
void QLegendMarker_SetShape(QLegendMarker* self, int shape);
QAbstractSeries* QLegendMarker_Series(QLegendMarker* self);
void QLegendMarker_Clicked(QLegendMarker* self);
void QLegendMarker_Connect_Clicked(QLegendMarker* self, intptr_t slot);
void QLegendMarker_Hovered(QLegendMarker* self, bool status);
void QLegendMarker_Connect_Hovered(QLegendMarker* self, intptr_t slot);
void QLegendMarker_LabelChanged(QLegendMarker* self);
void QLegendMarker_Connect_LabelChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_LabelBrushChanged(QLegendMarker* self);
void QLegendMarker_Connect_LabelBrushChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_FontChanged(QLegendMarker* self);
void QLegendMarker_Connect_FontChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_PenChanged(QLegendMarker* self);
void QLegendMarker_Connect_PenChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_BrushChanged(QLegendMarker* self);
void QLegendMarker_Connect_BrushChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_VisibleChanged(QLegendMarker* self);
void QLegendMarker_Connect_VisibleChanged(QLegendMarker* self, intptr_t slot);
void QLegendMarker_ShapeChanged(QLegendMarker* self);
void QLegendMarker_Connect_ShapeChanged(QLegendMarker* self, intptr_t slot);
libqt_string QLegendMarker_Tr2(const char* s, const char* c);
libqt_string QLegendMarker_Tr3(const char* s, const char* c, int n);
void QLegendMarker_Delete(QLegendMarker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
