#pragma once
#ifndef SRCC_LIBQVECTORND_H
#define SRCC_LIBQVECTORND_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QVariant QVariant;
typedef struct QVector2D QVector2D;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QVector2D* QVector2D_new(const QVector2D* other);
QVector2D* QVector2D_new2(QVector2D* other);
QVector2D* QVector2D_new3();
QVector2D* QVector2D_new4(int param1);
QVector2D* QVector2D_new5(float xpos, float ypos);
QVector2D* QVector2D_new6(QPoint* point);
QVector2D* QVector2D_new7(QPointF* point);
QVector2D* QVector2D_new8(QVector3D* vector);
QVector2D* QVector2D_new9(QVector4D* vector);
QVector2D* QVector2D_new10(const QVector2D* param1);
void QVector2D_CopyAssign(QVector2D* self, QVector2D* other);
void QVector2D_MoveAssign(QVector2D* self, QVector2D* other);
bool QVector2D_IsNull(const QVector2D* self);
float QVector2D_X(const QVector2D* self);
float QVector2D_Y(const QVector2D* self);
void QVector2D_SetX(QVector2D* self, float x);
void QVector2D_SetY(QVector2D* self, float y);
float QVector2D_OperatorSubscript(const QVector2D* self, int i);
float QVector2D_Length(const QVector2D* self);
float QVector2D_LengthSquared(const QVector2D* self);
QVector2D* QVector2D_Normalized(const QVector2D* self);
void QVector2D_Normalize(QVector2D* self);
float QVector2D_DistanceToPoint(const QVector2D* self, QVector2D* point);
float QVector2D_DistanceToLine(const QVector2D* self, QVector2D* point, QVector2D* direction);
QVector2D* QVector2D_OperatorPlusAssign(QVector2D* self, QVector2D* vector);
QVector2D* QVector2D_OperatorMinusAssign(QVector2D* self, QVector2D* vector);
QVector2D* QVector2D_OperatorMultiplyAssign(QVector2D* self, float factor);
QVector2D* QVector2D_OperatorMultiplyAssign2(QVector2D* self, QVector2D* vector);
QVector2D* QVector2D_OperatorDivideAssign(QVector2D* self, float divisor);
QVector2D* QVector2D_OperatorDivideAssign2(QVector2D* self, QVector2D* vector);
float QVector2D_DotProduct(QVector2D* v1, QVector2D* v2);
QVector3D* QVector2D_ToVector3D(const QVector2D* self);
QVector4D* QVector2D_ToVector4D(const QVector2D* self);
QPoint* QVector2D_ToPoint(const QVector2D* self);
QPointF* QVector2D_ToPointF(const QVector2D* self);
QVariant* QVector2D_ToQVariant(const QVector2D* self);
void QVector2D_Delete(QVector2D* self);

QVector3D* QVector3D_new(const QVector3D* other);
QVector3D* QVector3D_new2(QVector3D* other);
QVector3D* QVector3D_new3();
QVector3D* QVector3D_new4(int param1);
QVector3D* QVector3D_new5(float xpos, float ypos, float zpos);
QVector3D* QVector3D_new6(QPoint* point);
QVector3D* QVector3D_new7(QPointF* point);
QVector3D* QVector3D_new8(QVector2D* vector);
QVector3D* QVector3D_new9(QVector2D* vector, float zpos);
QVector3D* QVector3D_new10(QVector4D* vector);
QVector3D* QVector3D_new11(const QVector3D* param1);
void QVector3D_CopyAssign(QVector3D* self, QVector3D* other);
void QVector3D_MoveAssign(QVector3D* self, QVector3D* other);
bool QVector3D_IsNull(const QVector3D* self);
float QVector3D_X(const QVector3D* self);
float QVector3D_Y(const QVector3D* self);
float QVector3D_Z(const QVector3D* self);
void QVector3D_SetX(QVector3D* self, float x);
void QVector3D_SetY(QVector3D* self, float y);
void QVector3D_SetZ(QVector3D* self, float z);
float QVector3D_OperatorSubscript(const QVector3D* self, int i);
float QVector3D_Length(const QVector3D* self);
float QVector3D_LengthSquared(const QVector3D* self);
QVector3D* QVector3D_Normalized(const QVector3D* self);
void QVector3D_Normalize(QVector3D* self);
QVector3D* QVector3D_OperatorPlusAssign(QVector3D* self, QVector3D* vector);
QVector3D* QVector3D_OperatorMinusAssign(QVector3D* self, QVector3D* vector);
QVector3D* QVector3D_OperatorMultiplyAssign(QVector3D* self, float factor);
QVector3D* QVector3D_OperatorMultiplyAssign2(QVector3D* self, QVector3D* vector);
QVector3D* QVector3D_OperatorDivideAssign(QVector3D* self, float divisor);
QVector3D* QVector3D_OperatorDivideAssign2(QVector3D* self, QVector3D* vector);
float QVector3D_DotProduct(QVector3D* v1, QVector3D* v2);
QVector3D* QVector3D_CrossProduct(QVector3D* v1, QVector3D* v2);
QVector3D* QVector3D_Normal(QVector3D* v1, QVector3D* v2);
QVector3D* QVector3D_Normal2(QVector3D* v1, QVector3D* v2, QVector3D* v3);
QVector3D* QVector3D_Project(const QVector3D* self, const QMatrix4x4* modelView, const QMatrix4x4* projection, const QRect* viewport);
QVector3D* QVector3D_Unproject(const QVector3D* self, const QMatrix4x4* modelView, const QMatrix4x4* projection, const QRect* viewport);
float QVector3D_DistanceToPoint(const QVector3D* self, QVector3D* point);
float QVector3D_DistanceToPlane(const QVector3D* self, QVector3D* plane, QVector3D* normal);
float QVector3D_DistanceToPlane2(const QVector3D* self, QVector3D* plane1, QVector3D* plane2, QVector3D* plane3);
float QVector3D_DistanceToLine(const QVector3D* self, QVector3D* point, QVector3D* direction);
QVector2D* QVector3D_ToVector2D(const QVector3D* self);
QVector4D* QVector3D_ToVector4D(const QVector3D* self);
QPoint* QVector3D_ToPoint(const QVector3D* self);
QPointF* QVector3D_ToPointF(const QVector3D* self);
QVariant* QVector3D_ToQVariant(const QVector3D* self);
void QVector3D_Delete(QVector3D* self);

QVector4D* QVector4D_new(const QVector4D* other);
QVector4D* QVector4D_new2(QVector4D* other);
QVector4D* QVector4D_new3();
QVector4D* QVector4D_new4(int param1);
QVector4D* QVector4D_new5(float xpos, float ypos, float zpos, float wpos);
QVector4D* QVector4D_new6(QPoint* point);
QVector4D* QVector4D_new7(QPointF* point);
QVector4D* QVector4D_new8(QVector2D* vector);
QVector4D* QVector4D_new9(QVector2D* vector, float zpos, float wpos);
QVector4D* QVector4D_new10(QVector3D* vector);
QVector4D* QVector4D_new11(QVector3D* vector, float wpos);
QVector4D* QVector4D_new12(const QVector4D* param1);
void QVector4D_CopyAssign(QVector4D* self, QVector4D* other);
void QVector4D_MoveAssign(QVector4D* self, QVector4D* other);
bool QVector4D_IsNull(const QVector4D* self);
float QVector4D_X(const QVector4D* self);
float QVector4D_Y(const QVector4D* self);
float QVector4D_Z(const QVector4D* self);
float QVector4D_W(const QVector4D* self);
void QVector4D_SetX(QVector4D* self, float x);
void QVector4D_SetY(QVector4D* self, float y);
void QVector4D_SetZ(QVector4D* self, float z);
void QVector4D_SetW(QVector4D* self, float w);
float QVector4D_OperatorSubscript(const QVector4D* self, int i);
float QVector4D_Length(const QVector4D* self);
float QVector4D_LengthSquared(const QVector4D* self);
QVector4D* QVector4D_Normalized(const QVector4D* self);
void QVector4D_Normalize(QVector4D* self);
QVector4D* QVector4D_OperatorPlusAssign(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_OperatorMinusAssign(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_OperatorMultiplyAssign(QVector4D* self, float factor);
QVector4D* QVector4D_OperatorMultiplyAssign2(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_OperatorDivideAssign(QVector4D* self, float divisor);
QVector4D* QVector4D_OperatorDivideAssign2(QVector4D* self, QVector4D* vector);
float QVector4D_DotProduct(QVector4D* v1, QVector4D* v2);
QVector2D* QVector4D_ToVector2D(const QVector4D* self);
QVector2D* QVector4D_ToVector2DAffine(const QVector4D* self);
QVector3D* QVector4D_ToVector3D(const QVector4D* self);
QVector3D* QVector4D_ToVector3DAffine(const QVector4D* self);
QPoint* QVector4D_ToPoint(const QVector4D* self);
QPointF* QVector4D_ToPointF(const QVector4D* self);
QVariant* QVector4D_ToQVariant(const QVector4D* self);
void QVector4D_Delete(QVector4D* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
