#include <QBrush>
#include <QColor>
#include <QFont>
#include <QFontInfo>
#include <QFontMetrics>
#include <QGlyphRun>
#include <QImage>
#include <QLine>
#include <QLineF>
#include <QList>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPainter__PixmapFragment
#include <QPainterPath>
#include <QPen>
#include <QPicture>
#include <QPixmap>
#include <QPoint>
#include <QPointF>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QStaticText>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextItem>
#include <QTextOption>
#include <QTransform>
#include <qpainter.h>
#include "libqpainter.h"
#include "libqpainter.hxx"

QPainter* QPainter_new() {
    return new QPainter();
}

QPainter* QPainter_new2(QPaintDevice* param1) {
    return new QPainter(param1);
}

QPaintDevice* QPainter_Device(const QPainter* self) {
    return self->device();
}

bool QPainter_Begin(QPainter* self, QPaintDevice* param1) {
    return self->begin(param1);
}

bool QPainter_End(QPainter* self) {
    return self->end();
}

bool QPainter_IsActive(const QPainter* self) {
    return self->isActive();
}

void QPainter_SetCompositionMode(QPainter* self, int mode) {
    self->setCompositionMode(static_cast<QPainter::CompositionMode>(mode));
}

int QPainter_CompositionMode(const QPainter* self) {
    return static_cast<int>(self->compositionMode());
}

QFont* QPainter_Font(const QPainter* self) {
    const QFont& _ret = self->font();
    // Cast returned reference into pointer
    return const_cast<QFont*>(&_ret);
}

void QPainter_SetFont(QPainter* self, const QFont* f) {
    self->setFont(*f);
}

QFontMetrics* QPainter_FontMetrics(const QPainter* self) {
    return new QFontMetrics(self->fontMetrics());
}

QFontInfo* QPainter_FontInfo(const QPainter* self) {
    return new QFontInfo(self->fontInfo());
}

void QPainter_SetPen(QPainter* self, const QColor* color) {
    self->setPen(*color);
}

void QPainter_SetPen2(QPainter* self, const QPen* pen) {
    self->setPen(*pen);
}

void QPainter_SetPen3(QPainter* self, int style) {
    self->setPen(static_cast<Qt::PenStyle>(style));
}

QPen* QPainter_Pen(const QPainter* self) {
    const QPen& _ret = self->pen();
    // Cast returned reference into pointer
    return const_cast<QPen*>(&_ret);
}

void QPainter_SetBrush(QPainter* self, const QBrush* brush) {
    self->setBrush(*brush);
}

void QPainter_SetBrush2(QPainter* self, int style) {
    self->setBrush(static_cast<Qt::BrushStyle>(style));
}

QBrush* QPainter_Brush(const QPainter* self) {
    const QBrush& _ret = self->brush();
    // Cast returned reference into pointer
    return const_cast<QBrush*>(&_ret);
}

void QPainter_SetBackgroundMode(QPainter* self, int mode) {
    self->setBackgroundMode(static_cast<Qt::BGMode>(mode));
}

int QPainter_BackgroundMode(const QPainter* self) {
    return static_cast<int>(self->backgroundMode());
}

QPoint* QPainter_BrushOrigin(const QPainter* self) {
    return new QPoint(self->brushOrigin());
}

void QPainter_SetBrushOrigin(QPainter* self, int x, int y) {
    self->setBrushOrigin(static_cast<int>(x), static_cast<int>(y));
}

void QPainter_SetBrushOrigin2(QPainter* self, const QPoint* brushOrigin) {
    self->setBrushOrigin(*brushOrigin);
}

void QPainter_SetBrushOrigin3(QPainter* self, const QPointF* brushOrigin) {
    self->setBrushOrigin(*brushOrigin);
}

void QPainter_SetBackground(QPainter* self, const QBrush* bg) {
    self->setBackground(*bg);
}

QBrush* QPainter_Background(const QPainter* self) {
    const QBrush& _ret = self->background();
    // Cast returned reference into pointer
    return const_cast<QBrush*>(&_ret);
}

double QPainter_Opacity(const QPainter* self) {
    return static_cast<double>(self->opacity());
}

void QPainter_SetOpacity(QPainter* self, double opacity) {
    self->setOpacity(static_cast<qreal>(opacity));
}

QRegion* QPainter_ClipRegion(const QPainter* self) {
    return new QRegion(self->clipRegion());
}

QPainterPath* QPainter_ClipPath(const QPainter* self) {
    return new QPainterPath(self->clipPath());
}

void QPainter_SetClipRect(QPainter* self, const QRectF* param1) {
    self->setClipRect(*param1);
}

void QPainter_SetClipRect2(QPainter* self, const QRect* param1) {
    self->setClipRect(*param1);
}

void QPainter_SetClipRect3(QPainter* self, int x, int y, int w, int h) {
    self->setClipRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_SetClipRegion(QPainter* self, const QRegion* param1) {
    self->setClipRegion(*param1);
}

void QPainter_SetClipPath(QPainter* self, const QPainterPath* path) {
    self->setClipPath(*path);
}

void QPainter_SetClipping(QPainter* self, bool enable) {
    self->setClipping(enable);
}

bool QPainter_HasClipping(const QPainter* self) {
    return self->hasClipping();
}

QRectF* QPainter_ClipBoundingRect(const QPainter* self) {
    return new QRectF(self->clipBoundingRect());
}

void QPainter_Save(QPainter* self) {
    self->save();
}

void QPainter_Restore(QPainter* self) {
    self->restore();
}

void QPainter_SetTransform(QPainter* self, const QTransform* transform) {
    self->setTransform(*transform);
}

QTransform* QPainter_Transform(const QPainter* self) {
    const QTransform& _ret = self->transform();
    // Cast returned reference into pointer
    return const_cast<QTransform*>(&_ret);
}

QTransform* QPainter_DeviceTransform(const QPainter* self) {
    const QTransform& _ret = self->deviceTransform();
    // Cast returned reference into pointer
    return const_cast<QTransform*>(&_ret);
}

void QPainter_ResetTransform(QPainter* self) {
    self->resetTransform();
}

void QPainter_SetWorldTransform(QPainter* self, const QTransform* matrix) {
    self->setWorldTransform(*matrix);
}

QTransform* QPainter_WorldTransform(const QPainter* self) {
    const QTransform& _ret = self->worldTransform();
    // Cast returned reference into pointer
    return const_cast<QTransform*>(&_ret);
}

QTransform* QPainter_CombinedTransform(const QPainter* self) {
    return new QTransform(self->combinedTransform());
}

void QPainter_SetWorldMatrixEnabled(QPainter* self, bool enabled) {
    self->setWorldMatrixEnabled(enabled);
}

bool QPainter_WorldMatrixEnabled(const QPainter* self) {
    return self->worldMatrixEnabled();
}

void QPainter_Scale(QPainter* self, double sx, double sy) {
    self->scale(static_cast<qreal>(sx), static_cast<qreal>(sy));
}

void QPainter_Shear(QPainter* self, double sh, double sv) {
    self->shear(static_cast<qreal>(sh), static_cast<qreal>(sv));
}

void QPainter_Rotate(QPainter* self, double a) {
    self->rotate(static_cast<qreal>(a));
}

void QPainter_Translate(QPainter* self, const QPointF* offset) {
    self->translate(*offset);
}

void QPainter_Translate2(QPainter* self, const QPoint* offset) {
    self->translate(*offset);
}

void QPainter_Translate3(QPainter* self, double dx, double dy) {
    self->translate(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

QRect* QPainter_Window(const QPainter* self) {
    return new QRect(self->window());
}

void QPainter_SetWindow(QPainter* self, const QRect* window) {
    self->setWindow(*window);
}

void QPainter_SetWindow2(QPainter* self, int x, int y, int w, int h) {
    self->setWindow(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

QRect* QPainter_Viewport(const QPainter* self) {
    return new QRect(self->viewport());
}

void QPainter_SetViewport(QPainter* self, const QRect* viewport) {
    self->setViewport(*viewport);
}

void QPainter_SetViewport2(QPainter* self, int x, int y, int w, int h) {
    self->setViewport(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_SetViewTransformEnabled(QPainter* self, bool enable) {
    self->setViewTransformEnabled(enable);
}

bool QPainter_ViewTransformEnabled(const QPainter* self) {
    return self->viewTransformEnabled();
}

void QPainter_StrokePath(QPainter* self, const QPainterPath* path, const QPen* pen) {
    self->strokePath(*path, *pen);
}

void QPainter_FillPath(QPainter* self, const QPainterPath* path, const QBrush* brush) {
    self->fillPath(*path, *brush);
}

void QPainter_DrawPath(QPainter* self, const QPainterPath* path) {
    self->drawPath(*path);
}

void QPainter_DrawPoint(QPainter* self, const QPointF* pt) {
    self->drawPoint(*pt);
}

void QPainter_DrawPoint2(QPainter* self, const QPoint* p) {
    self->drawPoint(*p);
}

void QPainter_DrawPoint3(QPainter* self, int x, int y) {
    self->drawPoint(static_cast<int>(x), static_cast<int>(y));
}

void QPainter_DrawPoints(QPainter* self, const QPointF* points, int pointCount) {
    self->drawPoints(points, static_cast<int>(pointCount));
}

void QPainter_DrawPoints3(QPainter* self, const QPoint* points, int pointCount) {
    self->drawPoints(points, static_cast<int>(pointCount));
}

void QPainter_DrawLine(QPainter* self, const QLineF* line) {
    self->drawLine(*line);
}

void QPainter_DrawLine2(QPainter* self, const QLine* line) {
    self->drawLine(*line);
}

void QPainter_DrawLine3(QPainter* self, int x1, int y1, int x2, int y2) {
    self->drawLine(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(x2), static_cast<int>(y2));
}

void QPainter_DrawLine4(QPainter* self, const QPoint* p1, const QPoint* p2) {
    self->drawLine(*p1, *p2);
}

void QPainter_DrawLine5(QPainter* self, const QPointF* p1, const QPointF* p2) {
    self->drawLine(*p1, *p2);
}

void QPainter_DrawLines(QPainter* self, const QLineF* lines, int lineCount) {
    self->drawLines(lines, static_cast<int>(lineCount));
}

void QPainter_DrawLines2(QPainter* self, const libqt_list /* of QLineF* */ lines) {
    QList<QLineF> lines_QList;
    lines_QList.reserve(lines.len);
    QLineF** lines_arr = static_cast<QLineF**>(lines.data);
    for (size_t i = 0; i < lines.len; ++i) {
        lines_QList.push_back(*(lines_arr[i]));
    }
    self->drawLines(lines_QList);
}

void QPainter_DrawLines3(QPainter* self, const QPointF* pointPairs, int lineCount) {
    self->drawLines(pointPairs, static_cast<int>(lineCount));
}

void QPainter_DrawLines4(QPainter* self, const libqt_list /* of QPointF* */ pointPairs) {
    QList<QPointF> pointPairs_QList;
    pointPairs_QList.reserve(pointPairs.len);
    QPointF** pointPairs_arr = static_cast<QPointF**>(pointPairs.data);
    for (size_t i = 0; i < pointPairs.len; ++i) {
        pointPairs_QList.push_back(*(pointPairs_arr[i]));
    }
    self->drawLines(pointPairs_QList);
}

void QPainter_DrawLines5(QPainter* self, const QLine* lines, int lineCount) {
    self->drawLines(lines, static_cast<int>(lineCount));
}

void QPainter_DrawLines6(QPainter* self, const libqt_list /* of QLine* */ lines) {
    QList<QLine> lines_QList;
    lines_QList.reserve(lines.len);
    QLine** lines_arr = static_cast<QLine**>(lines.data);
    for (size_t i = 0; i < lines.len; ++i) {
        lines_QList.push_back(*(lines_arr[i]));
    }
    self->drawLines(lines_QList);
}

void QPainter_DrawLines7(QPainter* self, const QPoint* pointPairs, int lineCount) {
    self->drawLines(pointPairs, static_cast<int>(lineCount));
}

void QPainter_DrawLines8(QPainter* self, const libqt_list /* of QPoint* */ pointPairs) {
    QList<QPoint> pointPairs_QList;
    pointPairs_QList.reserve(pointPairs.len);
    QPoint** pointPairs_arr = static_cast<QPoint**>(pointPairs.data);
    for (size_t i = 0; i < pointPairs.len; ++i) {
        pointPairs_QList.push_back(*(pointPairs_arr[i]));
    }
    self->drawLines(pointPairs_QList);
}

void QPainter_DrawRect(QPainter* self, const QRectF* rect) {
    self->drawRect(*rect);
}

void QPainter_DrawRect2(QPainter* self, int x1, int y1, int w, int h) {
    self->drawRect(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_DrawRect3(QPainter* self, const QRect* rect) {
    self->drawRect(*rect);
}

void QPainter_DrawRects(QPainter* self, const QRectF* rects, int rectCount) {
    self->drawRects(rects, static_cast<int>(rectCount));
}

void QPainter_DrawRects2(QPainter* self, const libqt_list /* of QRectF* */ rectangles) {
    QList<QRectF> rectangles_QList;
    rectangles_QList.reserve(rectangles.len);
    QRectF** rectangles_arr = static_cast<QRectF**>(rectangles.data);
    for (size_t i = 0; i < rectangles.len; ++i) {
        rectangles_QList.push_back(*(rectangles_arr[i]));
    }
    self->drawRects(rectangles_QList);
}

void QPainter_DrawRects3(QPainter* self, const QRect* rects, int rectCount) {
    self->drawRects(rects, static_cast<int>(rectCount));
}

void QPainter_DrawRects4(QPainter* self, const libqt_list /* of QRect* */ rectangles) {
    QList<QRect> rectangles_QList;
    rectangles_QList.reserve(rectangles.len);
    QRect** rectangles_arr = static_cast<QRect**>(rectangles.data);
    for (size_t i = 0; i < rectangles.len; ++i) {
        rectangles_QList.push_back(*(rectangles_arr[i]));
    }
    self->drawRects(rectangles_QList);
}

void QPainter_DrawEllipse(QPainter* self, const QRectF* r) {
    self->drawEllipse(*r);
}

void QPainter_DrawEllipse2(QPainter* self, const QRect* r) {
    self->drawEllipse(*r);
}

void QPainter_DrawEllipse3(QPainter* self, int x, int y, int w, int h) {
    self->drawEllipse(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_DrawEllipse4(QPainter* self, const QPointF* center, double rx, double ry) {
    self->drawEllipse(*center, static_cast<qreal>(rx), static_cast<qreal>(ry));
}

void QPainter_DrawEllipse5(QPainter* self, const QPoint* center, int rx, int ry) {
    self->drawEllipse(*center, static_cast<int>(rx), static_cast<int>(ry));
}

void QPainter_DrawPolyline(QPainter* self, const QPointF* points, int pointCount) {
    self->drawPolyline(points, static_cast<int>(pointCount));
}

void QPainter_DrawPolyline3(QPainter* self, const QPoint* points, int pointCount) {
    self->drawPolyline(points, static_cast<int>(pointCount));
}

void QPainter_DrawPolygon(QPainter* self, const QPointF* points, int pointCount) {
    self->drawPolygon(points, static_cast<int>(pointCount));
}

void QPainter_DrawPolygon3(QPainter* self, const QPoint* points, int pointCount) {
    self->drawPolygon(points, static_cast<int>(pointCount));
}

void QPainter_DrawConvexPolygon(QPainter* self, const QPointF* points, int pointCount) {
    self->drawConvexPolygon(points, static_cast<int>(pointCount));
}

void QPainter_DrawConvexPolygon3(QPainter* self, const QPoint* points, int pointCount) {
    self->drawConvexPolygon(points, static_cast<int>(pointCount));
}

void QPainter_DrawArc(QPainter* self, const QRectF* rect, int a, int alen) {
    self->drawArc(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawArc2(QPainter* self, const QRect* param1, int a, int alen) {
    self->drawArc(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawArc3(QPainter* self, int x, int y, int w, int h, int a, int alen) {
    self->drawArc(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawPie(QPainter* self, const QRectF* rect, int a, int alen) {
    self->drawPie(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawPie2(QPainter* self, int x, int y, int w, int h, int a, int alen) {
    self->drawPie(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawPie3(QPainter* self, const QRect* param1, int a, int alen) {
    self->drawPie(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawChord(QPainter* self, const QRectF* rect, int a, int alen) {
    self->drawChord(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawChord2(QPainter* self, int x, int y, int w, int h, int a, int alen) {
    self->drawChord(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawChord3(QPainter* self, const QRect* param1, int a, int alen) {
    self->drawChord(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_DrawRoundedRect(QPainter* self, const QRectF* rect, double xRadius, double yRadius) {
    self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_DrawRoundedRect2(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius) {
    self->drawRoundedRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_DrawRoundedRect3(QPainter* self, const QRect* rect, double xRadius, double yRadius) {
    self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_DrawTiledPixmap(QPainter* self, const QRectF* rect, const QPixmap* pm) {
    self->drawTiledPixmap(*rect, *pm);
}

void QPainter_DrawTiledPixmap2(QPainter* self, int x, int y, int w, int h, const QPixmap* param5) {
    self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5);
}

void QPainter_DrawTiledPixmap3(QPainter* self, const QRect* param1, const QPixmap* param2) {
    self->drawTiledPixmap(*param1, *param2);
}

void QPainter_DrawPicture(QPainter* self, const QPointF* p, const QPicture* picture) {
    self->drawPicture(*p, *picture);
}

void QPainter_DrawPicture2(QPainter* self, int x, int y, const QPicture* picture) {
    self->drawPicture(static_cast<int>(x), static_cast<int>(y), *picture);
}

void QPainter_DrawPicture3(QPainter* self, const QPoint* p, const QPicture* picture) {
    self->drawPicture(*p, *picture);
}

void QPainter_DrawPixmap(QPainter* self, const QRectF* targetRect, const QPixmap* pixmap, const QRectF* sourceRect) {
    self->drawPixmap(*targetRect, *pixmap, *sourceRect);
}

void QPainter_DrawPixmap2(QPainter* self, const QRect* targetRect, const QPixmap* pixmap, const QRect* sourceRect) {
    self->drawPixmap(*targetRect, *pixmap, *sourceRect);
}

void QPainter_DrawPixmap3(QPainter* self, int x, int y, int w, int h, const QPixmap* pm, int sx, int sy, int sw, int sh) {
    self->drawPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *pm, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_DrawPixmap4(QPainter* self, int x, int y, const QPixmap* pm, int sx, int sy, int sw, int sh) {
    self->drawPixmap(static_cast<int>(x), static_cast<int>(y), *pm, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_DrawPixmap5(QPainter* self, const QPointF* p, const QPixmap* pm, const QRectF* sr) {
    self->drawPixmap(*p, *pm, *sr);
}

void QPainter_DrawPixmap6(QPainter* self, const QPoint* p, const QPixmap* pm, const QRect* sr) {
    self->drawPixmap(*p, *pm, *sr);
}

void QPainter_DrawPixmap7(QPainter* self, const QPointF* p, const QPixmap* pm) {
    self->drawPixmap(*p, *pm);
}

void QPainter_DrawPixmap8(QPainter* self, const QPoint* p, const QPixmap* pm) {
    self->drawPixmap(*p, *pm);
}

void QPainter_DrawPixmap9(QPainter* self, int x, int y, const QPixmap* pm) {
    self->drawPixmap(static_cast<int>(x), static_cast<int>(y), *pm);
}

void QPainter_DrawPixmap10(QPainter* self, const QRect* r, const QPixmap* pm) {
    self->drawPixmap(*r, *pm);
}

void QPainter_DrawPixmap11(QPainter* self, int x, int y, int w, int h, const QPixmap* pm) {
    self->drawPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *pm);
}

void QPainter_DrawPixmapFragments(QPainter* self, const QPainter__PixmapFragment* fragments, int fragmentCount, const QPixmap* pixmap) {
    self->drawPixmapFragments(fragments, static_cast<int>(fragmentCount), *pixmap);
}

void QPainter_DrawImage(QPainter* self, const QRectF* targetRect, const QImage* image, const QRectF* sourceRect) {
    self->drawImage(*targetRect, *image, *sourceRect);
}

void QPainter_DrawImage2(QPainter* self, const QRect* targetRect, const QImage* image, const QRect* sourceRect) {
    self->drawImage(*targetRect, *image, *sourceRect);
}

void QPainter_DrawImage3(QPainter* self, const QPointF* p, const QImage* image, const QRectF* sr) {
    self->drawImage(*p, *image, *sr);
}

void QPainter_DrawImage4(QPainter* self, const QPoint* p, const QImage* image, const QRect* sr) {
    self->drawImage(*p, *image, *sr);
}

void QPainter_DrawImage5(QPainter* self, const QRectF* r, const QImage* image) {
    self->drawImage(*r, *image);
}

void QPainter_DrawImage6(QPainter* self, const QRect* r, const QImage* image) {
    self->drawImage(*r, *image);
}

void QPainter_DrawImage7(QPainter* self, const QPointF* p, const QImage* image) {
    self->drawImage(*p, *image);
}

void QPainter_DrawImage8(QPainter* self, const QPoint* p, const QImage* image) {
    self->drawImage(*p, *image);
}

void QPainter_DrawImage9(QPainter* self, int x, int y, const QImage* image) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image);
}

void QPainter_SetLayoutDirection(QPainter* self, int direction) {
    self->setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

int QPainter_LayoutDirection(const QPainter* self) {
    return static_cast<int>(self->layoutDirection());
}

void QPainter_DrawGlyphRun(QPainter* self, const QPointF* position, const QGlyphRun* glyphRun) {
    self->drawGlyphRun(*position, *glyphRun);
}

void QPainter_DrawStaticText(QPainter* self, const QPointF* topLeftPosition, const QStaticText* staticText) {
    self->drawStaticText(*topLeftPosition, *staticText);
}

void QPainter_DrawStaticText2(QPainter* self, const QPoint* topLeftPosition, const QStaticText* staticText) {
    self->drawStaticText(*topLeftPosition, *staticText);
}

void QPainter_DrawStaticText3(QPainter* self, int left, int top, const QStaticText* staticText) {
    self->drawStaticText(static_cast<int>(left), static_cast<int>(top), *staticText);
}

void QPainter_DrawText(QPainter* self, const QPointF* p, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    self->drawText(*p, s_QString);
}

void QPainter_DrawText2(QPainter* self, const QPoint* p, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    self->drawText(*p, s_QString);
}

void QPainter_DrawText3(QPainter* self, int x, int y, const libqt_string s) {
    QString s_QString = QString::fromUtf8(s.data, s.len);
    self->drawText(static_cast<int>(x), static_cast<int>(y), s_QString);
}

void QPainter_DrawText4(QPainter* self, const QPointF* p, const libqt_string str, int tf, int justificationPadding) {
    QString str_QString = QString::fromUtf8(str.data, str.len);
    self->drawText(*p, str_QString, static_cast<int>(tf), static_cast<int>(justificationPadding));
}

void QPainter_DrawText5(QPainter* self, const QRectF* r, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, static_cast<int>(flags), text_QString);
}

void QPainter_DrawText6(QPainter* self, const QRect* r, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, static_cast<int>(flags), text_QString);
}

void QPainter_DrawText7(QPainter* self, int x, int y, int w, int h, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString);
}

void QPainter_DrawText8(QPainter* self, const QRectF* r, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, text_QString);
}

QRectF* QPainter_BoundingRect(QPainter* self, const QRectF* rect, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QRectF(self->boundingRect(*rect, static_cast<int>(flags), text_QString));
}

QRect* QPainter_BoundingRect2(QPainter* self, const QRect* rect, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QRect(self->boundingRect(*rect, static_cast<int>(flags), text_QString));
}

QRect* QPainter_BoundingRect3(QPainter* self, int x, int y, int w, int h, int flags, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QRect(self->boundingRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString));
}

QRectF* QPainter_BoundingRect4(QPainter* self, const QRectF* rect, const libqt_string text) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QRectF(self->boundingRect(*rect, text_QString));
}

void QPainter_DrawTextItem(QPainter* self, const QPointF* p, const QTextItem* ti) {
    self->drawTextItem(*p, *ti);
}

void QPainter_DrawTextItem2(QPainter* self, int x, int y, const QTextItem* ti) {
    self->drawTextItem(static_cast<int>(x), static_cast<int>(y), *ti);
}

void QPainter_DrawTextItem3(QPainter* self, const QPoint* p, const QTextItem* ti) {
    self->drawTextItem(*p, *ti);
}

void QPainter_FillRect(QPainter* self, const QRectF* param1, const QBrush* param2) {
    self->fillRect(*param1, *param2);
}

void QPainter_FillRect2(QPainter* self, int x, int y, int w, int h, const QBrush* param5) {
    self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5);
}

void QPainter_FillRect3(QPainter* self, const QRect* param1, const QBrush* param2) {
    self->fillRect(*param1, *param2);
}

void QPainter_FillRect4(QPainter* self, const QRectF* param1, const QColor* color) {
    self->fillRect(*param1, *color);
}

void QPainter_FillRect5(QPainter* self, int x, int y, int w, int h, const QColor* color) {
    self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *color);
}

void QPainter_FillRect6(QPainter* self, const QRect* param1, const QColor* color) {
    self->fillRect(*param1, *color);
}

void QPainter_FillRect7(QPainter* self, int x, int y, int w, int h, int c) {
    self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::GlobalColor>(c));
}

void QPainter_FillRect8(QPainter* self, const QRect* r, int c) {
    self->fillRect(*r, static_cast<Qt::GlobalColor>(c));
}

void QPainter_FillRect9(QPainter* self, const QRectF* r, int c) {
    self->fillRect(*r, static_cast<Qt::GlobalColor>(c));
}

void QPainter_FillRect10(QPainter* self, int x, int y, int w, int h, int style) {
    self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::BrushStyle>(style));
}

void QPainter_FillRect11(QPainter* self, const QRect* r, int style) {
    self->fillRect(*r, static_cast<Qt::BrushStyle>(style));
}

void QPainter_FillRect12(QPainter* self, const QRectF* r, int style) {
    self->fillRect(*r, static_cast<Qt::BrushStyle>(style));
}

void QPainter_FillRect13(QPainter* self, int x, int y, int w, int h, int preset) {
    self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<QGradient::Preset>(preset));
}

void QPainter_FillRect14(QPainter* self, const QRect* r, int preset) {
    self->fillRect(*r, static_cast<QGradient::Preset>(preset));
}

void QPainter_FillRect15(QPainter* self, const QRectF* r, int preset) {
    self->fillRect(*r, static_cast<QGradient::Preset>(preset));
}

void QPainter_EraseRect(QPainter* self, const QRectF* param1) {
    self->eraseRect(*param1);
}

void QPainter_EraseRect2(QPainter* self, int x, int y, int w, int h) {
    self->eraseRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_EraseRect3(QPainter* self, const QRect* param1) {
    self->eraseRect(*param1);
}

void QPainter_SetRenderHint(QPainter* self, int hint) {
    self->setRenderHint(static_cast<QPainter::RenderHint>(hint));
}

void QPainter_SetRenderHints(QPainter* self, int hints) {
    self->setRenderHints(static_cast<QPainter::RenderHints>(hints));
}

int QPainter_RenderHints(const QPainter* self) {
    return static_cast<int>(self->renderHints());
}

bool QPainter_TestRenderHint(const QPainter* self, int hint) {
    return self->testRenderHint(static_cast<QPainter::RenderHint>(hint));
}

QPaintEngine* QPainter_PaintEngine(const QPainter* self) {
    return self->paintEngine();
}

void QPainter_BeginNativePainting(QPainter* self) {
    self->beginNativePainting();
}

void QPainter_EndNativePainting(QPainter* self) {
    self->endNativePainting();
}

void QPainter_SetClipRect22(QPainter* self, const QRectF* param1, int op) {
    self->setClipRect(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_SetClipRect23(QPainter* self, const QRect* param1, int op) {
    self->setClipRect(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_SetClipRect5(QPainter* self, int x, int y, int w, int h, int op) {
    self->setClipRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::ClipOperation>(op));
}

void QPainter_SetClipRegion2(QPainter* self, const QRegion* param1, int op) {
    self->setClipRegion(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_SetClipPath2(QPainter* self, const QPainterPath* path, int op) {
    self->setClipPath(*path, static_cast<Qt::ClipOperation>(op));
}

void QPainter_SetTransform2(QPainter* self, const QTransform* transform, bool combine) {
    self->setTransform(*transform, combine);
}

void QPainter_SetWorldTransform2(QPainter* self, const QTransform* matrix, bool combine) {
    self->setWorldTransform(*matrix, combine);
}

void QPainter_DrawPolygon32(QPainter* self, const QPointF* points, int pointCount, int fillRule) {
    self->drawPolygon(points, static_cast<int>(pointCount), static_cast<Qt::FillRule>(fillRule));
}

void QPainter_DrawPolygon33(QPainter* self, const QPoint* points, int pointCount, int fillRule) {
    self->drawPolygon(points, static_cast<int>(pointCount), static_cast<Qt::FillRule>(fillRule));
}

void QPainter_DrawRoundedRect4(QPainter* self, const QRectF* rect, double xRadius, double yRadius, int mode) {
    self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_DrawRoundedRect7(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius, int mode) {
    self->drawRoundedRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_DrawRoundedRect42(QPainter* self, const QRect* rect, double xRadius, double yRadius, int mode) {
    self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_DrawTiledPixmap32(QPainter* self, const QRectF* rect, const QPixmap* pm, const QPointF* offset) {
    self->drawTiledPixmap(*rect, *pm, *offset);
}

void QPainter_DrawTiledPixmap6(QPainter* self, int x, int y, int w, int h, const QPixmap* param5, int sx) {
    self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5, static_cast<int>(sx));
}

void QPainter_DrawTiledPixmap7(QPainter* self, int x, int y, int w, int h, const QPixmap* param5, int sx, int sy) {
    self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5, static_cast<int>(sx), static_cast<int>(sy));
}

void QPainter_DrawTiledPixmap33(QPainter* self, const QRect* param1, const QPixmap* param2, const QPoint* param3) {
    self->drawTiledPixmap(*param1, *param2, *param3);
}

void QPainter_DrawPixmapFragments4(QPainter* self, const QPainter__PixmapFragment* fragments, int fragmentCount, const QPixmap* pixmap, int hints) {
    self->drawPixmapFragments(fragments, static_cast<int>(fragmentCount), *pixmap, static_cast<QPainter::PixmapFragmentHints>(hints));
}

void QPainter_DrawImage42(QPainter* self, const QRectF* targetRect, const QImage* image, const QRectF* sourceRect, int flags) {
    self->drawImage(*targetRect, *image, *sourceRect, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_DrawImage43(QPainter* self, const QRect* targetRect, const QImage* image, const QRect* sourceRect, int flags) {
    self->drawImage(*targetRect, *image, *sourceRect, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_DrawImage44(QPainter* self, const QPointF* p, const QImage* image, const QRectF* sr, int flags) {
    self->drawImage(*p, *image, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_DrawImage45(QPainter* self, const QPoint* p, const QImage* image, const QRect* sr, int flags) {
    self->drawImage(*p, *image, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_DrawImage46(QPainter* self, int x, int y, const QImage* image, int sx) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx));
}

void QPainter_DrawImage52(QPainter* self, int x, int y, const QImage* image, int sx, int sy) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy));
}

void QPainter_DrawImage62(QPainter* self, int x, int y, const QImage* image, int sx, int sy, int sw) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw));
}

void QPainter_DrawImage72(QPainter* self, int x, int y, const QImage* image, int sx, int sy, int sw, int sh) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_DrawImage82(QPainter* self, int x, int y, const QImage* image, int sx, int sy, int sw, int sh, int flags) {
    self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh), static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_DrawText42(QPainter* self, const QRectF* r, int flags, const libqt_string text, QRectF* br) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, static_cast<int>(flags), text_QString, br);
}

void QPainter_DrawText43(QPainter* self, const QRect* r, int flags, const libqt_string text, QRect* br) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, static_cast<int>(flags), text_QString, br);
}

void QPainter_DrawText72(QPainter* self, int x, int y, int w, int h, int flags, const libqt_string text, QRect* br) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString, br);
}

void QPainter_DrawText32(QPainter* self, const QRectF* r, const libqt_string text, const QTextOption* o) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    self->drawText(*r, text_QString, *o);
}

QRectF* QPainter_BoundingRect32(QPainter* self, const QRectF* rect, const libqt_string text, const QTextOption* o) {
    QString text_QString = QString::fromUtf8(text.data, text.len);
    return new QRectF(self->boundingRect(*rect, text_QString, *o));
}

void QPainter_SetRenderHint2(QPainter* self, int hint, bool on) {
    self->setRenderHint(static_cast<QPainter::RenderHint>(hint), on);
}

void QPainter_SetRenderHints2(QPainter* self, int hints, bool on) {
    self->setRenderHints(static_cast<QPainter::RenderHints>(hints), on);
}

void QPainter_Delete(QPainter* self) {
    delete self;
}

QPainter__PixmapFragment* QPainter__PixmapFragment_new() {
    return new QPainter::PixmapFragment();
}

QPainter__PixmapFragment* QPainter__PixmapFragment_new2(const QPainter__PixmapFragment* param1) {
    return new QPainter::PixmapFragment(*param1);
}

double QPainter__PixmapFragment_X(const QPainter__PixmapFragment* self) {
    return self->x;
}

void QPainter__PixmapFragment_SetX(QPainter__PixmapFragment* self, double x) {
    self->x = static_cast<double>(x);
}

double QPainter__PixmapFragment_Y(const QPainter__PixmapFragment* self) {
    return self->y;
}

void QPainter__PixmapFragment_SetY(QPainter__PixmapFragment* self, double y) {
    self->y = static_cast<double>(y);
}

double QPainter__PixmapFragment_SourceLeft(const QPainter__PixmapFragment* self) {
    return self->sourceLeft;
}

void QPainter__PixmapFragment_SetSourceLeft(QPainter__PixmapFragment* self, double sourceLeft) {
    self->sourceLeft = static_cast<double>(sourceLeft);
}

double QPainter__PixmapFragment_SourceTop(const QPainter__PixmapFragment* self) {
    return self->sourceTop;
}

void QPainter__PixmapFragment_SetSourceTop(QPainter__PixmapFragment* self, double sourceTop) {
    self->sourceTop = static_cast<double>(sourceTop);
}

double QPainter__PixmapFragment_Width(const QPainter__PixmapFragment* self) {
    return self->width;
}

void QPainter__PixmapFragment_SetWidth(QPainter__PixmapFragment* self, double width) {
    self->width = static_cast<double>(width);
}

double QPainter__PixmapFragment_Height(const QPainter__PixmapFragment* self) {
    return self->height;
}

void QPainter__PixmapFragment_SetHeight(QPainter__PixmapFragment* self, double height) {
    self->height = static_cast<double>(height);
}

double QPainter__PixmapFragment_ScaleX(const QPainter__PixmapFragment* self) {
    return self->scaleX;
}

void QPainter__PixmapFragment_SetScaleX(QPainter__PixmapFragment* self, double scaleX) {
    self->scaleX = static_cast<double>(scaleX);
}

double QPainter__PixmapFragment_ScaleY(const QPainter__PixmapFragment* self) {
    return self->scaleY;
}

void QPainter__PixmapFragment_SetScaleY(QPainter__PixmapFragment* self, double scaleY) {
    self->scaleY = static_cast<double>(scaleY);
}

double QPainter__PixmapFragment_Rotation(const QPainter__PixmapFragment* self) {
    return self->rotation;
}

void QPainter__PixmapFragment_SetRotation(QPainter__PixmapFragment* self, double rotation) {
    self->rotation = static_cast<double>(rotation);
}

double QPainter__PixmapFragment_Opacity(const QPainter__PixmapFragment* self) {
    return self->opacity;
}

void QPainter__PixmapFragment_SetOpacity(QPainter__PixmapFragment* self, double opacity) {
    self->opacity = static_cast<double>(opacity);
}

QPainter__PixmapFragment* QPainter__PixmapFragment_Create(const QPointF* pos, const QRectF* sourceRect) {
    return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_Create3(const QPointF* pos, const QRectF* sourceRect, double scaleX) {
    return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_Create4(const QPointF* pos, const QRectF* sourceRect, double scaleX, double scaleY) {
    return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_Create5(const QPointF* pos, const QRectF* sourceRect, double scaleX, double scaleY, double rotation) {
    return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY), static_cast<qreal>(rotation)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_Create6(const QPointF* pos, const QRectF* sourceRect, double scaleX, double scaleY, double rotation, double opacity) {
    return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY), static_cast<qreal>(rotation), static_cast<qreal>(opacity)));
}

void QPainter__PixmapFragment_Delete(QPainter__PixmapFragment* self) {
    delete self;
}
