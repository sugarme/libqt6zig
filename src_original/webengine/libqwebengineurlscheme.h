#pragma once
#ifndef SRC_WEBENGINEC_LIBQWEBENGINEURLSCHEME_H
#define SRC_WEBENGINEC_LIBQWEBENGINEURLSCHEME_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QWebEngineUrlScheme QWebEngineUrlScheme;
#endif

QWebEngineUrlScheme* QWebEngineUrlScheme_new();
QWebEngineUrlScheme* QWebEngineUrlScheme_new2(const libqt_string name);
QWebEngineUrlScheme* QWebEngineUrlScheme_new3(const QWebEngineUrlScheme* that);
void QWebEngineUrlScheme_OperatorAssign(QWebEngineUrlScheme* self, const QWebEngineUrlScheme* that);
bool QWebEngineUrlScheme_OperatorEqual(const QWebEngineUrlScheme* self, const QWebEngineUrlScheme* that);
bool QWebEngineUrlScheme_OperatorNotEqual(const QWebEngineUrlScheme* self, const QWebEngineUrlScheme* that);
libqt_string QWebEngineUrlScheme_Name(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_SetName(QWebEngineUrlScheme* self, const libqt_string newValue);
int QWebEngineUrlScheme_Syntax(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_SetSyntax(QWebEngineUrlScheme* self, int newValue);
int QWebEngineUrlScheme_DefaultPort(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_SetDefaultPort(QWebEngineUrlScheme* self, int newValue);
int QWebEngineUrlScheme_Flags(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_SetFlags(QWebEngineUrlScheme* self, int newValue);
void QWebEngineUrlScheme_RegisterScheme(const QWebEngineUrlScheme* scheme);
QWebEngineUrlScheme* QWebEngineUrlScheme_SchemeByName(const libqt_string name);
void QWebEngineUrlScheme_Delete(QWebEngineUrlScheme* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
