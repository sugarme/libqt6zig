#pragma once
#ifndef SRCC_LIBQPDFWRITER_H
#define SRCC_LIBQPDFWRITER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMarginsF QMarginsF;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPdfOutputIntent QPdfOutputIntent;
typedef struct QPdfWriter QPdfWriter;
typedef struct QPoint QPoint;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUuid QUuid;
#endif

QPdfWriter* QPdfWriter_new(const libqt_string filename);
QPdfWriter* QPdfWriter_new2(QIODevice* device);
QMetaObject* QPdfWriter_MetaObject(const QPdfWriter* self);
void* QPdfWriter_Metacast(QPdfWriter* self, const char* param1);
int QPdfWriter_Metacall(QPdfWriter* self, int param1, int param2, void** param3);
libqt_string QPdfWriter_Tr(const char* s);
void QPdfWriter_SetPdfVersion(QPdfWriter* self, int version);
int QPdfWriter_PdfVersion(const QPdfWriter* self);
libqt_string QPdfWriter_Title(const QPdfWriter* self);
void QPdfWriter_SetTitle(QPdfWriter* self, const libqt_string title);
libqt_string QPdfWriter_Creator(const QPdfWriter* self);
void QPdfWriter_SetCreator(QPdfWriter* self, const libqt_string creator);
QUuid* QPdfWriter_DocumentId(const QPdfWriter* self);
void QPdfWriter_SetDocumentId(QPdfWriter* self, QUuid* documentId);
bool QPdfWriter_NewPage(QPdfWriter* self);
void QPdfWriter_SetResolution(QPdfWriter* self, int resolution);
int QPdfWriter_Resolution(const QPdfWriter* self);
void QPdfWriter_SetDocumentXmpMetadata(QPdfWriter* self, const libqt_string xmpMetadata);
libqt_string QPdfWriter_DocumentXmpMetadata(const QPdfWriter* self);
void QPdfWriter_AddFileAttachment(QPdfWriter* self, const libqt_string fileName, const libqt_string data);
int QPdfWriter_ColorModel(const QPdfWriter* self);
void QPdfWriter_SetColorModel(QPdfWriter* self, int model);
QPdfOutputIntent* QPdfWriter_OutputIntent(const QPdfWriter* self);
void QPdfWriter_SetOutputIntent(QPdfWriter* self, const QPdfOutputIntent* intent);
QPaintEngine* QPdfWriter_PaintEngine(const QPdfWriter* self);
int QPdfWriter_Metric(const QPdfWriter* self, int id);
libqt_string QPdfWriter_Tr2(const char* s, const char* c);
libqt_string QPdfWriter_Tr3(const char* s, const char* c, int n);
void QPdfWriter_AddFileAttachment3(QPdfWriter* self, const libqt_string fileName, const libqt_string data, const libqt_string mimeType);
void QPdfWriter_OnMetacall(QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseMetacall(QPdfWriter* self, int param1, int param2, void** param3);
void QPdfWriter_OnNewPage(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseNewPage(QPdfWriter* self);
void QPdfWriter_OnPaintEngine(const QPdfWriter* self, intptr_t slot);
QPaintEngine* QPdfWriter_QBasePaintEngine(const QPdfWriter* self);
void QPdfWriter_OnMetric(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseMetric(const QPdfWriter* self, int id);
bool QPdfWriter_Event(QPdfWriter* self, QEvent* event);
void QPdfWriter_OnEvent(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseEvent(QPdfWriter* self, QEvent* event);
bool QPdfWriter_EventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
void QPdfWriter_OnEventFilter(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseEventFilter(QPdfWriter* self, QObject* watched, QEvent* event);
void QPdfWriter_TimerEvent(QPdfWriter* self, QTimerEvent* event);
void QPdfWriter_OnTimerEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseTimerEvent(QPdfWriter* self, QTimerEvent* event);
void QPdfWriter_ChildEvent(QPdfWriter* self, QChildEvent* event);
void QPdfWriter_OnChildEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseChildEvent(QPdfWriter* self, QChildEvent* event);
void QPdfWriter_CustomEvent(QPdfWriter* self, QEvent* event);
void QPdfWriter_OnCustomEvent(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseCustomEvent(QPdfWriter* self, QEvent* event);
void QPdfWriter_ConnectNotify(QPdfWriter* self, const QMetaMethod* signal);
void QPdfWriter_OnConnectNotify(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseConnectNotify(QPdfWriter* self, const QMetaMethod* signal);
void QPdfWriter_DisconnectNotify(QPdfWriter* self, const QMetaMethod* signal);
void QPdfWriter_OnDisconnectNotify(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseDisconnectNotify(QPdfWriter* self, const QMetaMethod* signal);
bool QPdfWriter_SetPageLayout(QPdfWriter* self, const QPageLayout* pageLayout);
void QPdfWriter_OnSetPageLayout(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseSetPageLayout(QPdfWriter* self, const QPageLayout* pageLayout);
bool QPdfWriter_SetPageSize(QPdfWriter* self, const QPageSize* pageSize);
void QPdfWriter_OnSetPageSize(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseSetPageSize(QPdfWriter* self, const QPageSize* pageSize);
bool QPdfWriter_SetPageOrientation(QPdfWriter* self, int orientation);
void QPdfWriter_OnSetPageOrientation(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseSetPageOrientation(QPdfWriter* self, int orientation);
bool QPdfWriter_SetPageMargins(QPdfWriter* self, const QMarginsF* margins, int units);
void QPdfWriter_OnSetPageMargins(QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseSetPageMargins(QPdfWriter* self, const QMarginsF* margins, int units);
void QPdfWriter_SetPageRanges(QPdfWriter* self, const QPageRanges* ranges);
void QPdfWriter_OnSetPageRanges(QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseSetPageRanges(QPdfWriter* self, const QPageRanges* ranges);
int QPdfWriter_DevType(const QPdfWriter* self);
void QPdfWriter_OnDevType(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseDevType(const QPdfWriter* self);
void QPdfWriter_InitPainter(const QPdfWriter* self, QPainter* painter);
void QPdfWriter_OnInitPainter(const QPdfWriter* self, intptr_t slot);
void QPdfWriter_QBaseInitPainter(const QPdfWriter* self, QPainter* painter);
QPaintDevice* QPdfWriter_Redirected(const QPdfWriter* self, QPoint* offset);
void QPdfWriter_OnRedirected(const QPdfWriter* self, intptr_t slot);
QPaintDevice* QPdfWriter_QBaseRedirected(const QPdfWriter* self, QPoint* offset);
QPainter* QPdfWriter_SharedPainter(const QPdfWriter* self);
void QPdfWriter_OnSharedPainter(const QPdfWriter* self, intptr_t slot);
QPainter* QPdfWriter_QBaseSharedPainter(const QPdfWriter* self);
QObject* QPdfWriter_Sender(const QPdfWriter* self);
void QPdfWriter_OnSender(const QPdfWriter* self, intptr_t slot);
QObject* QPdfWriter_QBaseSender(const QPdfWriter* self);
int QPdfWriter_SenderSignalIndex(const QPdfWriter* self);
void QPdfWriter_OnSenderSignalIndex(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseSenderSignalIndex(const QPdfWriter* self);
int QPdfWriter_Receivers(const QPdfWriter* self, const char* signal);
void QPdfWriter_OnReceivers(const QPdfWriter* self, intptr_t slot);
int QPdfWriter_QBaseReceivers(const QPdfWriter* self, const char* signal);
bool QPdfWriter_IsSignalConnected(const QPdfWriter* self, const QMetaMethod* signal);
void QPdfWriter_OnIsSignalConnected(const QPdfWriter* self, intptr_t slot);
bool QPdfWriter_QBaseIsSignalConnected(const QPdfWriter* self, const QMetaMethod* signal);
double QPdfWriter_GetDecodedMetricF(const QPdfWriter* self, int metricA, int metricB);
void QPdfWriter_OnGetDecodedMetricF(const QPdfWriter* self, intptr_t slot);
double QPdfWriter_QBaseGetDecodedMetricF(const QPdfWriter* self, int metricA, int metricB);
void QPdfWriter_Delete(QPdfWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
