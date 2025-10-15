#pragma once
#ifndef SRCC_LIBQMATRIX4X4_H
#define SRCC_LIBQMATRIX4X4_H

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
typedef struct QQuaternion QQuaternion;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QMatrix4x4* QMatrix4x4_new(const QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_new2(QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_new3();
QMatrix4x4* QMatrix4x4_new4(int param1);
QMatrix4x4* QMatrix4x4_new5(const float* values);
QMatrix4x4* QMatrix4x4_new6(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44);
QMatrix4x4* QMatrix4x4_new7(const float* values, int cols, int rows);
QMatrix4x4* QMatrix4x4_new8(const QTransform* transform);
QMatrix4x4* QMatrix4x4_new9(const QMatrix4x4* param1);
void QMatrix4x4_CopyAssign(QMatrix4x4* self, QMatrix4x4* other);
void QMatrix4x4_MoveAssign(QMatrix4x4* self, QMatrix4x4* other);
QVector4D* QMatrix4x4_Column(const QMatrix4x4* self, int index);
void QMatrix4x4_SetColumn(QMatrix4x4* self, int index, const QVector4D* value);
QVector4D* QMatrix4x4_Row(const QMatrix4x4* self, int index);
void QMatrix4x4_SetRow(QMatrix4x4* self, int index, const QVector4D* value);
bool QMatrix4x4_IsAffine(const QMatrix4x4* self);
bool QMatrix4x4_IsIdentity(const QMatrix4x4* self);
void QMatrix4x4_SetToIdentity(QMatrix4x4* self);
void QMatrix4x4_Fill(QMatrix4x4* self, float value);
double QMatrix4x4_Determinant(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_Inverted(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_Transposed(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_OperatorPlusAssign(QMatrix4x4* self, const QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_OperatorMinusAssign(QMatrix4x4* self, const QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_OperatorMultiplyAssign(QMatrix4x4* self, const QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_OperatorMultiplyAssign2(QMatrix4x4* self, float factor);
QMatrix4x4* QMatrix4x4_OperatorDivideAssign(QMatrix4x4* self, float divisor);
bool QMatrix4x4_OperatorEqual(const QMatrix4x4* self, const QMatrix4x4* other);
bool QMatrix4x4_OperatorNotEqual(const QMatrix4x4* self, const QMatrix4x4* other);
void QMatrix4x4_Scale(QMatrix4x4* self, const QVector3D* vector);
void QMatrix4x4_Translate(QMatrix4x4* self, const QVector3D* vector);
void QMatrix4x4_Rotate(QMatrix4x4* self, float angle, const QVector3D* vector);
void QMatrix4x4_Scale2(QMatrix4x4* self, float x, float y);
void QMatrix4x4_Scale3(QMatrix4x4* self, float x, float y, float z);
void QMatrix4x4_Scale4(QMatrix4x4* self, float factor);
void QMatrix4x4_Translate2(QMatrix4x4* self, float x, float y);
void QMatrix4x4_Translate3(QMatrix4x4* self, float x, float y, float z);
void QMatrix4x4_Rotate2(QMatrix4x4* self, float angle, float x, float y);
void QMatrix4x4_Rotate3(QMatrix4x4* self, const QQuaternion* quaternion);
void QMatrix4x4_Ortho(QMatrix4x4* self, const QRect* rect);
void QMatrix4x4_Ortho2(QMatrix4x4* self, const QRectF* rect);
void QMatrix4x4_Ortho3(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
void QMatrix4x4_Frustum(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
void QMatrix4x4_Perspective(QMatrix4x4* self, float verticalAngle, float aspectRatio, float nearPlane, float farPlane);
void QMatrix4x4_LookAt(QMatrix4x4* self, const QVector3D* eye, const QVector3D* center, const QVector3D* up);
void QMatrix4x4_Viewport(QMatrix4x4* self, const QRectF* rect);
void QMatrix4x4_Viewport2(QMatrix4x4* self, float left, float bottom, float width, float height);
void QMatrix4x4_FlipCoordinates(QMatrix4x4* self);
void QMatrix4x4_CopyDataTo(const QMatrix4x4* self, float* values);
QTransform* QMatrix4x4_ToTransform(const QMatrix4x4* self);
QTransform* QMatrix4x4_ToTransform2(const QMatrix4x4* self, float distanceToPlane);
QPoint* QMatrix4x4_Map(const QMatrix4x4* self, const QPoint* point);
QPointF* QMatrix4x4_Map2(const QMatrix4x4* self, const QPointF* point);
QVector3D* QMatrix4x4_Map3(const QMatrix4x4* self, const QVector3D* point);
QVector3D* QMatrix4x4_MapVector(const QMatrix4x4* self, const QVector3D* vector);
QVector4D* QMatrix4x4_Map4(const QMatrix4x4* self, const QVector4D* point);
QRect* QMatrix4x4_MapRect(const QMatrix4x4* self, const QRect* rect);
QRectF* QMatrix4x4_MapRect2(const QMatrix4x4* self, const QRectF* rect);
float* QMatrix4x4_Data(QMatrix4x4* self);
const float* QMatrix4x4_Data2(const QMatrix4x4* self);
const float* QMatrix4x4_ConstData(const QMatrix4x4* self);
void QMatrix4x4_Optimize(QMatrix4x4* self);
QVariant* QMatrix4x4_ToQVariant(const QMatrix4x4* self);
void QMatrix4x4_ProjectedRotate(QMatrix4x4* self, float angle, float x, float y, float z, float distanceToPlane);
void QMatrix4x4_ProjectedRotate2(QMatrix4x4* self, float angle, float x, float y, float z);
int QMatrix4x4_Flags(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_Inverted1(const QMatrix4x4* self, bool* invertible);
void QMatrix4x4_Rotate4(QMatrix4x4* self, float angle, float x, float y, float z);
void QMatrix4x4_Viewport5(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane);
void QMatrix4x4_Viewport6(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane, float farPlane);
void QMatrix4x4_Delete(QMatrix4x4* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
