#pragma once
#ifndef SRCC_LIBQICON_H
#define SRCC_LIBQICON_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QIcon QIcon;
typedef struct QIconEngine QIconEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

QIcon* QIcon_new();
QIcon* QIcon_new2(const QPixmap* pixmap);
QIcon* QIcon_new3(const QIcon* other);
QIcon* QIcon_new4(const libqt_string fileName);
QIcon* QIcon_new5(QIconEngine* engine);
void QIcon_OperatorAssign(QIcon* self, const QIcon* other);
void QIcon_Swap(QIcon* self, QIcon* other);
QVariant* QIcon_ToQVariant(const QIcon* self);
QPixmap* QIcon_Pixmap(const QIcon* self, const QSize* size);
QPixmap* QIcon_Pixmap2(const QIcon* self, int w, int h);
QPixmap* QIcon_Pixmap3(const QIcon* self, int extent);
QPixmap* QIcon_Pixmap4(const QIcon* self, const QSize* size, double devicePixelRatio);
QPixmap* QIcon_Pixmap5(const QIcon* self, QWindow* window, const QSize* size);
QSize* QIcon_ActualSize(const QIcon* self, const QSize* size);
QSize* QIcon_ActualSize2(const QIcon* self, QWindow* window, const QSize* size);
libqt_string QIcon_Name(const QIcon* self);
void QIcon_Paint(const QIcon* self, QPainter* painter, const QRect* rect);
void QIcon_Paint2(const QIcon* self, QPainter* painter, int x, int y, int w, int h);
bool QIcon_IsNull(const QIcon* self);
bool QIcon_IsDetached(const QIcon* self);
void QIcon_Detach(QIcon* self);
long long QIcon_CacheKey(const QIcon* self);
void QIcon_AddPixmap(QIcon* self, const QPixmap* pixmap);
void QIcon_AddFile(QIcon* self, const libqt_string fileName);
libqt_list /* of QSize* */ QIcon_AvailableSizes(const QIcon* self);
void QIcon_SetIsMask(QIcon* self, bool isMask);
bool QIcon_IsMask(const QIcon* self);
QIcon* QIcon_FromTheme(const libqt_string name);
QIcon* QIcon_FromTheme2(const libqt_string name, const QIcon* fallback);
bool QIcon_HasThemeIcon(const libqt_string name);
QIcon* QIcon_FromTheme3(int icon);
QIcon* QIcon_FromTheme4(int icon, const QIcon* fallback);
bool QIcon_HasThemeIcon2(int icon);
libqt_list /* of libqt_string */ QIcon_ThemeSearchPaths();
void QIcon_SetThemeSearchPaths(const libqt_list /* of libqt_string */ searchpath);
libqt_list /* of libqt_string */ QIcon_FallbackSearchPaths();
void QIcon_SetFallbackSearchPaths(const libqt_list /* of libqt_string */ paths);
libqt_string QIcon_ThemeName();
void QIcon_SetThemeName(const libqt_string path);
libqt_string QIcon_FallbackThemeName();
void QIcon_SetFallbackThemeName(const libqt_string name);
QPixmap* QIcon_Pixmap22(const QIcon* self, const QSize* size, int mode);
QPixmap* QIcon_Pixmap32(const QIcon* self, const QSize* size, int mode, int state);
QPixmap* QIcon_Pixmap33(const QIcon* self, int w, int h, int mode);
QPixmap* QIcon_Pixmap42(const QIcon* self, int w, int h, int mode, int state);
QPixmap* QIcon_Pixmap23(const QIcon* self, int extent, int mode);
QPixmap* QIcon_Pixmap34(const QIcon* self, int extent, int mode, int state);
QPixmap* QIcon_Pixmap35(const QIcon* self, const QSize* size, double devicePixelRatio, int mode);
QPixmap* QIcon_Pixmap43(const QIcon* self, const QSize* size, double devicePixelRatio, int mode, int state);
QPixmap* QIcon_Pixmap36(const QIcon* self, QWindow* window, const QSize* size, int mode);
QPixmap* QIcon_Pixmap44(const QIcon* self, QWindow* window, const QSize* size, int mode, int state);
QSize* QIcon_ActualSize22(const QIcon* self, const QSize* size, int mode);
QSize* QIcon_ActualSize3(const QIcon* self, const QSize* size, int mode, int state);
QSize* QIcon_ActualSize32(const QIcon* self, QWindow* window, const QSize* size, int mode);
QSize* QIcon_ActualSize4(const QIcon* self, QWindow* window, const QSize* size, int mode, int state);
void QIcon_Paint3(const QIcon* self, QPainter* painter, const QRect* rect, int alignment);
void QIcon_Paint4(const QIcon* self, QPainter* painter, const QRect* rect, int alignment, int mode);
void QIcon_Paint5(const QIcon* self, QPainter* painter, const QRect* rect, int alignment, int mode, int state);
void QIcon_Paint6(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment);
void QIcon_Paint7(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode);
void QIcon_Paint8(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode, int state);
void QIcon_AddPixmap2(QIcon* self, const QPixmap* pixmap, int mode);
void QIcon_AddPixmap3(QIcon* self, const QPixmap* pixmap, int mode, int state);
void QIcon_AddFile2(QIcon* self, const libqt_string fileName, const QSize* size);
void QIcon_AddFile3(QIcon* self, const libqt_string fileName, const QSize* size, int mode);
void QIcon_AddFile4(QIcon* self, const libqt_string fileName, const QSize* size, int mode, int state);
libqt_list /* of QSize* */ QIcon_AvailableSizes1(const QIcon* self, int mode);
libqt_list /* of QSize* */ QIcon_AvailableSizes2(const QIcon* self, int mode, int state);
void QIcon_Delete(QIcon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
