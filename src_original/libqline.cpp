#include <QLine>
#include <QLineF>
#include <QPoint>
#include <QPointF>
#include <qline.h>
#include "libqline.h"
#include "libqline.hxx"

QLine* QLine_new(const QLine* other) {
    return new QLine(*other);
}

QLine* QLine_new2(QLine* other) {
    return new QLine(std::move(*other));
}

QLine* QLine_new3() {
    return new QLine();
}

QLine* QLine_new4(const QPoint* pt1, const QPoint* pt2) {
    return new QLine(*pt1, *pt2);
}

QLine* QLine_new5(int x1, int y1, int x2, int y2) {
    return new QLine(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(x2), static_cast<int>(y2));
}

QLine* QLine_new6(const QLine* param1) {
    return new QLine(*param1);
}

void QLine_CopyAssign(QLine* self, QLine* other) {
    *self = *other;
}

void QLine_MoveAssign(QLine* self, QLine* other) {
    *self = std::move(*other);
}

bool QLine_IsNull(const QLine* self) {
    return self->isNull();
}

QPoint* QLine_P1(const QLine* self) {
    return new QPoint(self->p1());
}

QPoint* QLine_P2(const QLine* self) {
    return new QPoint(self->p2());
}

int QLine_X1(const QLine* self) {
    return self->x1();
}

int QLine_Y1(const QLine* self) {
    return self->y1();
}

int QLine_X2(const QLine* self) {
    return self->x2();
}

int QLine_Y2(const QLine* self) {
    return self->y2();
}

int QLine_Dx(const QLine* self) {
    return self->dx();
}

int QLine_Dy(const QLine* self) {
    return self->dy();
}

void QLine_Translate(QLine* self, const QPoint* p) {
    self->translate(*p);
}

void QLine_Translate2(QLine* self, int dx, int dy) {
    self->translate(static_cast<int>(dx), static_cast<int>(dy));
}

QLine* QLine_Translated(const QLine* self, const QPoint* p) {
    return new QLine(self->translated(*p));
}

QLine* QLine_Translated2(const QLine* self, int dx, int dy) {
    return new QLine(self->translated(static_cast<int>(dx), static_cast<int>(dy)));
}

QPoint* QLine_Center(const QLine* self) {
    return new QPoint(self->center());
}

void QLine_SetP1(QLine* self, const QPoint* p1) {
    self->setP1(*p1);
}

void QLine_SetP2(QLine* self, const QPoint* p2) {
    self->setP2(*p2);
}

void QLine_SetPoints(QLine* self, const QPoint* p1, const QPoint* p2) {
    self->setPoints(*p1, *p2);
}

void QLine_SetLine(QLine* self, int x1, int y1, int x2, int y2) {
    self->setLine(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(x2), static_cast<int>(y2));
}

QLineF* QLine_ToLineF(const QLine* self) {
    return new QLineF(self->toLineF());
}

void QLine_Delete(QLine* self) {
    delete self;
}

QLineF* QLineF_new(const QLineF* other) {
    return new QLineF(*other);
}

QLineF* QLineF_new2(QLineF* other) {
    return new QLineF(std::move(*other));
}

QLineF* QLineF_new3() {
    return new QLineF();
}

QLineF* QLineF_new4(const QPointF* pt1, const QPointF* pt2) {
    return new QLineF(*pt1, *pt2);
}

QLineF* QLineF_new5(double x1, double y1, double x2, double y2) {
    return new QLineF(static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

QLineF* QLineF_new6(const QLine* line) {
    return new QLineF(*line);
}

QLineF* QLineF_new7(const QLineF* param1) {
    return new QLineF(*param1);
}

void QLineF_CopyAssign(QLineF* self, QLineF* other) {
    *self = *other;
}

void QLineF_MoveAssign(QLineF* self, QLineF* other) {
    *self = std::move(*other);
}

QLineF* QLineF_FromPolar(double length, double angle) {
    return new QLineF(QLineF::fromPolar(static_cast<qreal>(length), static_cast<qreal>(angle)));
}

bool QLineF_IsNull(const QLineF* self) {
    return self->isNull();
}

QPointF* QLineF_P1(const QLineF* self) {
    return new QPointF(self->p1());
}

QPointF* QLineF_P2(const QLineF* self) {
    return new QPointF(self->p2());
}

double QLineF_X1(const QLineF* self) {
    return static_cast<double>(self->x1());
}

double QLineF_Y1(const QLineF* self) {
    return static_cast<double>(self->y1());
}

double QLineF_X2(const QLineF* self) {
    return static_cast<double>(self->x2());
}

double QLineF_Y2(const QLineF* self) {
    return static_cast<double>(self->y2());
}

double QLineF_Dx(const QLineF* self) {
    return static_cast<double>(self->dx());
}

double QLineF_Dy(const QLineF* self) {
    return static_cast<double>(self->dy());
}

double QLineF_Length(const QLineF* self) {
    return static_cast<double>(self->length());
}

void QLineF_SetLength(QLineF* self, double lenVal) {
    self->setLength(static_cast<qreal>(lenVal));
}

double QLineF_Angle(const QLineF* self) {
    return static_cast<double>(self->angle());
}

void QLineF_SetAngle(QLineF* self, double angle) {
    self->setAngle(static_cast<qreal>(angle));
}

double QLineF_AngleTo(const QLineF* self, const QLineF* l) {
    return static_cast<double>(self->angleTo(*l));
}

QLineF* QLineF_UnitVector(const QLineF* self) {
    return new QLineF(self->unitVector());
}

QLineF* QLineF_NormalVector(const QLineF* self) {
    return new QLineF(self->normalVector());
}

int QLineF_Intersects(const QLineF* self, const QLineF* l) {
    return static_cast<int>(self->intersects(*l));
}

QPointF* QLineF_PointAt(const QLineF* self, double t) {
    return new QPointF(self->pointAt(static_cast<qreal>(t)));
}

void QLineF_Translate(QLineF* self, const QPointF* p) {
    self->translate(*p);
}

void QLineF_Translate2(QLineF* self, double dx, double dy) {
    self->translate(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

QLineF* QLineF_Translated(const QLineF* self, const QPointF* p) {
    return new QLineF(self->translated(*p));
}

QLineF* QLineF_Translated2(const QLineF* self, double dx, double dy) {
    return new QLineF(self->translated(static_cast<qreal>(dx), static_cast<qreal>(dy)));
}

QPointF* QLineF_Center(const QLineF* self) {
    return new QPointF(self->center());
}

void QLineF_SetP1(QLineF* self, const QPointF* p1) {
    self->setP1(*p1);
}

void QLineF_SetP2(QLineF* self, const QPointF* p2) {
    self->setP2(*p2);
}

void QLineF_SetPoints(QLineF* self, const QPointF* p1, const QPointF* p2) {
    self->setPoints(*p1, *p2);
}

void QLineF_SetLine(QLineF* self, double x1, double y1, double x2, double y2) {
    self->setLine(static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

QLine* QLineF_ToLine(const QLineF* self) {
    return new QLine(self->toLine());
}

int QLineF_Intersects2(const QLineF* self, const QLineF* l, QPointF* intersectionPoint) {
    return static_cast<int>(self->intersects(*l, intersectionPoint));
}

void QLineF_Delete(QLineF* self) {
    delete self;
}
