#pragma once
#ifndef SRCC_LIBQPROPERTY_H
#define SRCC_LIBQPROPERTY_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QMetaType QMetaType;
typedef struct QPropertyBindingError QPropertyBindingError;
typedef struct QPropertyBindingSourceLocation QPropertyBindingSourceLocation;
typedef struct QPropertyNotifier QPropertyNotifier;
typedef struct QPropertyObserver QPropertyObserver;
typedef struct QPropertyObserverBase QPropertyObserverBase;
typedef struct QScopedPropertyUpdateGroup QScopedPropertyUpdateGroup;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QUntypedPropertyBinding QUntypedPropertyBinding;
#endif

QScopedPropertyUpdateGroup* QScopedPropertyUpdateGroup_new();
void QScopedPropertyUpdateGroup_Delete(QScopedPropertyUpdateGroup* self);

QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new(const QPropertyBindingSourceLocation* other);
QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new2(QPropertyBindingSourceLocation* other);
QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new3();
QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new4(const QPropertyBindingSourceLocation* param1);
void QPropertyBindingSourceLocation_CopyAssign(QPropertyBindingSourceLocation* self, QPropertyBindingSourceLocation* other);
void QPropertyBindingSourceLocation_MoveAssign(QPropertyBindingSourceLocation* self, QPropertyBindingSourceLocation* other);
const char* QPropertyBindingSourceLocation_FileName(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_SetFileName(QPropertyBindingSourceLocation* self, const char* fileName);
const char* QPropertyBindingSourceLocation_FunctionName(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_SetFunctionName(QPropertyBindingSourceLocation* self, const char* functionName);
unsigned int QPropertyBindingSourceLocation_Line(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_SetLine(QPropertyBindingSourceLocation* self, unsigned int line);
unsigned int QPropertyBindingSourceLocation_Column(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_SetColumn(QPropertyBindingSourceLocation* self, unsigned int column);
void QPropertyBindingSourceLocation_Delete(QPropertyBindingSourceLocation* self);

QPropertyBindingError* QPropertyBindingError_new();
QPropertyBindingError* QPropertyBindingError_new2(int typeVal);
QPropertyBindingError* QPropertyBindingError_new3(const QPropertyBindingError* other);
QPropertyBindingError* QPropertyBindingError_new4(int typeVal, const libqt_string description);
void QPropertyBindingError_OperatorAssign(QPropertyBindingError* self, const QPropertyBindingError* other);
bool QPropertyBindingError_HasError(const QPropertyBindingError* self);
int QPropertyBindingError_Type(const QPropertyBindingError* self);
libqt_string QPropertyBindingError_Description(const QPropertyBindingError* self);
void QPropertyBindingError_Delete(QPropertyBindingError* self);

QUntypedPropertyBinding* QUntypedPropertyBinding_new();
QUntypedPropertyBinding* QUntypedPropertyBinding_new2(const QUntypedPropertyBinding* other);
void QUntypedPropertyBinding_OperatorAssign(QUntypedPropertyBinding* self, const QUntypedPropertyBinding* other);
bool QUntypedPropertyBinding_IsNull(const QUntypedPropertyBinding* self);
QPropertyBindingError* QUntypedPropertyBinding_Error(const QUntypedPropertyBinding* self);
QMetaType* QUntypedPropertyBinding_ValueMetaType(const QUntypedPropertyBinding* self);
void QUntypedPropertyBinding_Delete(QUntypedPropertyBinding* self);

QPropertyObserverBase* QPropertyObserverBase_new();
QPropertyObserverBase* QPropertyObserverBase_new2(const QPropertyObserverBase* param1);
void QPropertyObserverBase_Delete(QPropertyObserverBase* self);

QPropertyObserver* QPropertyObserver_new();
void QPropertyObserver_Delete(QPropertyObserver* self);

QPropertyNotifier* QPropertyNotifier_new();
void QPropertyNotifier_Delete(QPropertyNotifier* self);

QUntypedBindable* QUntypedBindable_new(const QUntypedBindable* other);
QUntypedBindable* QUntypedBindable_new2(QUntypedBindable* other);
QUntypedBindable* QUntypedBindable_new3();
QUntypedBindable* QUntypedBindable_new4(const QUntypedBindable* param1);
void QUntypedBindable_CopyAssign(QUntypedBindable* self, QUntypedBindable* other);
void QUntypedBindable_MoveAssign(QUntypedBindable* self, QUntypedBindable* other);
bool QUntypedBindable_IsValid(const QUntypedBindable* self);
bool QUntypedBindable_IsBindable(const QUntypedBindable* self);
bool QUntypedBindable_IsReadOnly(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_MakeBinding(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_TakeBinding(QUntypedBindable* self);
void QUntypedBindable_Observe(const QUntypedBindable* self, QPropertyObserver* observer);
QUntypedPropertyBinding* QUntypedBindable_Binding(const QUntypedBindable* self);
bool QUntypedBindable_SetBinding(QUntypedBindable* self, const QUntypedPropertyBinding* binding);
bool QUntypedBindable_HasBinding(const QUntypedBindable* self);
QMetaType* QUntypedBindable_MetaType(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_MakeBinding1(const QUntypedBindable* self, const QPropertyBindingSourceLocation* location);
void QUntypedBindable_Delete(QUntypedBindable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
