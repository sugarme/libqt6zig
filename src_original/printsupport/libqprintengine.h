#pragma once
#ifndef SRC_PRINTSUPPORTC_LIBQPRINTENGINE_H
#define SRC_PRINTSUPPORTC_LIBQPRINTENGINE_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QPrintEngine QPrintEngine;
typedef struct QVariant QVariant;
#endif

void QPrintEngine_SetProperty(QPrintEngine* self, int key, const QVariant* value);
QVariant* QPrintEngine_Property(const QPrintEngine* self, int key);
bool QPrintEngine_NewPage(QPrintEngine* self);
bool QPrintEngine_Abort(QPrintEngine* self);
int QPrintEngine_Metric(const QPrintEngine* self, int param1);
int QPrintEngine_PrinterState(const QPrintEngine* self);
void QPrintEngine_OperatorAssign(QPrintEngine* self, const QPrintEngine* param1);
void QPrintEngine_Delete(QPrintEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
