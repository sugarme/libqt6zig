#pragma once
#ifndef SRCC_LIBQIMAGEREADER_H
#define SRCC_LIBQIMAGEREADER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QColor QColor;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageReader QImageReader;
typedef struct QRect QRect;
typedef struct QSize QSize;
#endif

QImageReader* QImageReader_new();
QImageReader* QImageReader_new2(QIODevice* device);
QImageReader* QImageReader_new3(const libqt_string fileName);
QImageReader* QImageReader_new4(QIODevice* device, const libqt_string format);
QImageReader* QImageReader_new5(const libqt_string fileName, const libqt_string format);
libqt_string QImageReader_Tr(const char* sourceText);
void QImageReader_SetFormat(QImageReader* self, const libqt_string format);
libqt_string QImageReader_Format(const QImageReader* self);
void QImageReader_SetAutoDetectImageFormat(QImageReader* self, bool enabled);
bool QImageReader_AutoDetectImageFormat(const QImageReader* self);
void QImageReader_SetDecideFormatFromContent(QImageReader* self, bool ignored);
bool QImageReader_DecideFormatFromContent(const QImageReader* self);
void QImageReader_SetDevice(QImageReader* self, QIODevice* device);
QIODevice* QImageReader_Device(const QImageReader* self);
void QImageReader_SetFileName(QImageReader* self, const libqt_string fileName);
libqt_string QImageReader_FileName(const QImageReader* self);
QSize* QImageReader_Size(const QImageReader* self);
int QImageReader_ImageFormat(const QImageReader* self);
libqt_list /* of libqt_string */ QImageReader_TextKeys(const QImageReader* self);
libqt_string QImageReader_Text(const QImageReader* self, const libqt_string key);
void QImageReader_SetClipRect(QImageReader* self, const QRect* rect);
QRect* QImageReader_ClipRect(const QImageReader* self);
void QImageReader_SetScaledSize(QImageReader* self, const QSize* size);
QSize* QImageReader_ScaledSize(const QImageReader* self);
void QImageReader_SetQuality(QImageReader* self, int quality);
int QImageReader_Quality(const QImageReader* self);
void QImageReader_SetScaledClipRect(QImageReader* self, const QRect* rect);
QRect* QImageReader_ScaledClipRect(const QImageReader* self);
void QImageReader_SetBackgroundColor(QImageReader* self, const QColor* color);
QColor* QImageReader_BackgroundColor(const QImageReader* self);
bool QImageReader_SupportsAnimation(const QImageReader* self);
int QImageReader_Transformation(const QImageReader* self);
void QImageReader_SetAutoTransform(QImageReader* self, bool enabled);
bool QImageReader_AutoTransform(const QImageReader* self);
libqt_string QImageReader_SubType(const QImageReader* self);
libqt_list /* of libqt_string */ QImageReader_SupportedSubTypes(const QImageReader* self);
bool QImageReader_CanRead(const QImageReader* self);
QImage* QImageReader_Read(QImageReader* self);
bool QImageReader_Read2(QImageReader* self, QImage* image);
bool QImageReader_JumpToNextImage(QImageReader* self);
bool QImageReader_JumpToImage(QImageReader* self, int imageNumber);
int QImageReader_LoopCount(const QImageReader* self);
int QImageReader_ImageCount(const QImageReader* self);
int QImageReader_NextImageDelay(const QImageReader* self);
int QImageReader_CurrentImageNumber(const QImageReader* self);
QRect* QImageReader_CurrentImageRect(const QImageReader* self);
int QImageReader_Error(const QImageReader* self);
libqt_string QImageReader_ErrorString(const QImageReader* self);
bool QImageReader_SupportsOption(const QImageReader* self, int option);
libqt_string QImageReader_ImageFormat2(const libqt_string fileName);
libqt_string QImageReader_ImageFormat3(QIODevice* device);
libqt_list /* of libqt_string */ QImageReader_SupportedImageFormats();
libqt_list /* of libqt_string */ QImageReader_SupportedMimeTypes();
libqt_list /* of libqt_string */ QImageReader_ImageFormatsForMimeType(const libqt_string mimeType);
int QImageReader_AllocationLimit();
void QImageReader_SetAllocationLimit(int mbLimit);
libqt_string QImageReader_Tr2(const char* sourceText, const char* disambiguation);
libqt_string QImageReader_Tr3(const char* sourceText, const char* disambiguation, int n);
void QImageReader_Delete(QImageReader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
