#include <QQuaternion>
#include <QVariant>
#include <QVector3D>
#include <QVector4D>
#include <qquaternion.h>
#include "libqquaternion.h"
#include "libqquaternion.hxx"

QQuaternion* QQuaternion_new(const QQuaternion* other) {
    return new QQuaternion(*other);
}

QQuaternion* QQuaternion_new2(QQuaternion* other) {
    return new QQuaternion(std::move(*other));
}

QQuaternion* QQuaternion_new3() {
    return new QQuaternion();
}

QQuaternion* QQuaternion_new4(int param1) {
    return new QQuaternion(static_cast<Qt::Initialization>(param1));
}

QQuaternion* QQuaternion_new5(float scalar, float xpos, float ypos, float zpos) {
    return new QQuaternion(static_cast<float>(scalar), static_cast<float>(xpos), static_cast<float>(ypos), static_cast<float>(zpos));
}

QQuaternion* QQuaternion_new6(float scalar, const QVector3D* vector) {
    return new QQuaternion(static_cast<float>(scalar), *vector);
}

QQuaternion* QQuaternion_new7(const QVector4D* vector) {
    return new QQuaternion(*vector);
}

QQuaternion* QQuaternion_new8(const QQuaternion* param1) {
    return new QQuaternion(*param1);
}

void QQuaternion_CopyAssign(QQuaternion* self, QQuaternion* other) {
    *self = *other;
}

void QQuaternion_MoveAssign(QQuaternion* self, QQuaternion* other) {
    *self = std::move(*other);
}

bool QQuaternion_IsNull(const QQuaternion* self) {
    return self->isNull();
}

bool QQuaternion_IsIdentity(const QQuaternion* self) {
    return self->isIdentity();
}

QVector3D* QQuaternion_Vector(const QQuaternion* self) {
    return new QVector3D(self->vector());
}

void QQuaternion_SetVector(QQuaternion* self, const QVector3D* vector) {
    self->setVector(*vector);
}

void QQuaternion_SetVector2(QQuaternion* self, float x, float y, float z) {
    self->setVector(static_cast<float>(x), static_cast<float>(y), static_cast<float>(z));
}

float QQuaternion_X(const QQuaternion* self) {
    return self->x();
}

float QQuaternion_Y(const QQuaternion* self) {
    return self->y();
}

float QQuaternion_Z(const QQuaternion* self) {
    return self->z();
}

float QQuaternion_Scalar(const QQuaternion* self) {
    return self->scalar();
}

void QQuaternion_SetX(QQuaternion* self, float x) {
    self->setX(static_cast<float>(x));
}

void QQuaternion_SetY(QQuaternion* self, float y) {
    self->setY(static_cast<float>(y));
}

void QQuaternion_SetZ(QQuaternion* self, float z) {
    self->setZ(static_cast<float>(z));
}

void QQuaternion_SetScalar(QQuaternion* self, float scalar) {
    self->setScalar(static_cast<float>(scalar));
}

float QQuaternion_DotProduct(const QQuaternion* q1, const QQuaternion* q2) {
    return QQuaternion::dotProduct(*q1, *q2);
}

float QQuaternion_Length(const QQuaternion* self) {
    return self->length();
}

float QQuaternion_LengthSquared(const QQuaternion* self) {
    return self->lengthSquared();
}

QQuaternion* QQuaternion_Normalized(const QQuaternion* self) {
    return new QQuaternion(self->normalized());
}

void QQuaternion_Normalize(QQuaternion* self) {
    self->normalize();
}

QQuaternion* QQuaternion_Inverted(const QQuaternion* self) {
    return new QQuaternion(self->inverted());
}

QQuaternion* QQuaternion_Conjugated(const QQuaternion* self) {
    return new QQuaternion(self->conjugated());
}

QVector3D* QQuaternion_RotatedVector(const QQuaternion* self, const QVector3D* vector) {
    return new QVector3D(self->rotatedVector(*vector));
}

QQuaternion* QQuaternion_OperatorPlusAssign(QQuaternion* self, const QQuaternion* quaternion) {
    QQuaternion& _ret = self->operator+=(*quaternion);
    // Cast returned reference into pointer
    return &_ret;
}

QQuaternion* QQuaternion_OperatorMinusAssign(QQuaternion* self, const QQuaternion* quaternion) {
    QQuaternion& _ret = self->operator-=(*quaternion);
    // Cast returned reference into pointer
    return &_ret;
}

QQuaternion* QQuaternion_OperatorMultiplyAssign(QQuaternion* self, float factor) {
    QQuaternion& _ret = self->operator*=(static_cast<float>(factor));
    // Cast returned reference into pointer
    return &_ret;
}

QQuaternion* QQuaternion_OperatorMultiplyAssign2(QQuaternion* self, const QQuaternion* quaternion) {
    QQuaternion& _ret = self->operator*=(*quaternion);
    // Cast returned reference into pointer
    return &_ret;
}

QQuaternion* QQuaternion_OperatorDivideAssign(QQuaternion* self, float divisor) {
    QQuaternion& _ret = self->operator/=(static_cast<float>(divisor));
    // Cast returned reference into pointer
    return &_ret;
}

QVector4D* QQuaternion_ToVector4D(const QQuaternion* self) {
    return new QVector4D(self->toVector4D());
}

QVariant* QQuaternion_ToQVariant(const QQuaternion* self) {
    return new QVariant(self->operator QVariant());
}

void QQuaternion_GetAxisAndAngle(const QQuaternion* self, QVector3D* axis, float* angle) {
    self->getAxisAndAngle(axis, static_cast<float*>(angle));
}

QQuaternion* QQuaternion_FromAxisAndAngle(const QVector3D* axis, float angle) {
    return new QQuaternion(QQuaternion::fromAxisAndAngle(*axis, static_cast<float>(angle)));
}

void QQuaternion_GetAxisAndAngle2(const QQuaternion* self, float* x, float* y, float* z, float* angle) {
    self->getAxisAndAngle(static_cast<float*>(x), static_cast<float*>(y), static_cast<float*>(z), static_cast<float*>(angle));
}

QQuaternion* QQuaternion_FromAxisAndAngle2(float x, float y, float z, float angle) {
    return new QQuaternion(QQuaternion::fromAxisAndAngle(static_cast<float>(x), static_cast<float>(y), static_cast<float>(z), static_cast<float>(angle)));
}

QVector3D* QQuaternion_ToEulerAngles(const QQuaternion* self) {
    return new QVector3D(self->toEulerAngles());
}

QQuaternion* QQuaternion_FromEulerAngles(const QVector3D* eulerAngles) {
    return new QQuaternion(QQuaternion::fromEulerAngles(*eulerAngles));
}

void QQuaternion_GetEulerAngles(const QQuaternion* self, float* pitch, float* yaw, float* roll) {
    self->getEulerAngles(static_cast<float*>(pitch), static_cast<float*>(yaw), static_cast<float*>(roll));
}

QQuaternion* QQuaternion_FromEulerAngles2(float pitch, float yaw, float roll) {
    return new QQuaternion(QQuaternion::fromEulerAngles(static_cast<float>(pitch), static_cast<float>(yaw), static_cast<float>(roll)));
}

void QQuaternion_GetAxes(const QQuaternion* self, QVector3D* xAxis, QVector3D* yAxis, QVector3D* zAxis) {
    self->getAxes(xAxis, yAxis, zAxis);
}

QQuaternion* QQuaternion_FromAxes(const QVector3D* xAxis, const QVector3D* yAxis, const QVector3D* zAxis) {
    return new QQuaternion(QQuaternion::fromAxes(*xAxis, *yAxis, *zAxis));
}

QQuaternion* QQuaternion_FromDirection(const QVector3D* direction, const QVector3D* up) {
    return new QQuaternion(QQuaternion::fromDirection(*direction, *up));
}

QQuaternion* QQuaternion_RotationTo(const QVector3D* from, const QVector3D* to) {
    return new QQuaternion(QQuaternion::rotationTo(*from, *to));
}

QQuaternion* QQuaternion_Slerp(const QQuaternion* q1, const QQuaternion* q2, float t) {
    return new QQuaternion(QQuaternion::slerp(*q1, *q2, static_cast<float>(t)));
}

QQuaternion* QQuaternion_Nlerp(const QQuaternion* q1, const QQuaternion* q2, float t) {
    return new QQuaternion(QQuaternion::nlerp(*q1, *q2, static_cast<float>(t)));
}

void QQuaternion_Delete(QQuaternion* self) {
    delete self;
}
