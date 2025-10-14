#include <QColorSpace>
#include <QPair>
#include <QSurfaceFormat>
#include <qsurfaceformat.h>
#include "libqsurfaceformat.h"
#include "libqsurfaceformat.hxx"

QSurfaceFormat* QSurfaceFormat_new() {
    return new QSurfaceFormat();
}

QSurfaceFormat* QSurfaceFormat_new2(int options) {
    return new QSurfaceFormat(static_cast<QSurfaceFormat::FormatOptions>(options));
}

QSurfaceFormat* QSurfaceFormat_new3(const QSurfaceFormat* other) {
    return new QSurfaceFormat(*other);
}

void QSurfaceFormat_OperatorAssign(QSurfaceFormat* self, const QSurfaceFormat* other) {
    self->operator=(*other);
}

void QSurfaceFormat_SetDepthBufferSize(QSurfaceFormat* self, int size) {
    self->setDepthBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_DepthBufferSize(const QSurfaceFormat* self) {
    return self->depthBufferSize();
}

void QSurfaceFormat_SetStencilBufferSize(QSurfaceFormat* self, int size) {
    self->setStencilBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_StencilBufferSize(const QSurfaceFormat* self) {
    return self->stencilBufferSize();
}

void QSurfaceFormat_SetRedBufferSize(QSurfaceFormat* self, int size) {
    self->setRedBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_RedBufferSize(const QSurfaceFormat* self) {
    return self->redBufferSize();
}

void QSurfaceFormat_SetGreenBufferSize(QSurfaceFormat* self, int size) {
    self->setGreenBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_GreenBufferSize(const QSurfaceFormat* self) {
    return self->greenBufferSize();
}

void QSurfaceFormat_SetBlueBufferSize(QSurfaceFormat* self, int size) {
    self->setBlueBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_BlueBufferSize(const QSurfaceFormat* self) {
    return self->blueBufferSize();
}

void QSurfaceFormat_SetAlphaBufferSize(QSurfaceFormat* self, int size) {
    self->setAlphaBufferSize(static_cast<int>(size));
}

int QSurfaceFormat_AlphaBufferSize(const QSurfaceFormat* self) {
    return self->alphaBufferSize();
}

void QSurfaceFormat_SetSamples(QSurfaceFormat* self, int numSamples) {
    self->setSamples(static_cast<int>(numSamples));
}

int QSurfaceFormat_Samples(const QSurfaceFormat* self) {
    return self->samples();
}

void QSurfaceFormat_SetSwapBehavior(QSurfaceFormat* self, int behavior) {
    self->setSwapBehavior(static_cast<QSurfaceFormat::SwapBehavior>(behavior));
}

int QSurfaceFormat_SwapBehavior(const QSurfaceFormat* self) {
    return static_cast<int>(self->swapBehavior());
}

bool QSurfaceFormat_HasAlpha(const QSurfaceFormat* self) {
    return self->hasAlpha();
}

void QSurfaceFormat_SetProfile(QSurfaceFormat* self, int profile) {
    self->setProfile(static_cast<QSurfaceFormat::OpenGLContextProfile>(profile));
}

int QSurfaceFormat_Profile(const QSurfaceFormat* self) {
    return static_cast<int>(self->profile());
}

void QSurfaceFormat_SetRenderableType(QSurfaceFormat* self, int typeVal) {
    self->setRenderableType(static_cast<QSurfaceFormat::RenderableType>(typeVal));
}

int QSurfaceFormat_RenderableType(const QSurfaceFormat* self) {
    return static_cast<int>(self->renderableType());
}

void QSurfaceFormat_SetMajorVersion(QSurfaceFormat* self, int majorVersion) {
    self->setMajorVersion(static_cast<int>(majorVersion));
}

int QSurfaceFormat_MajorVersion(const QSurfaceFormat* self) {
    return self->majorVersion();
}

void QSurfaceFormat_SetMinorVersion(QSurfaceFormat* self, int minorVersion) {
    self->setMinorVersion(static_cast<int>(minorVersion));
}

int QSurfaceFormat_MinorVersion(const QSurfaceFormat* self) {
    return self->minorVersion();
}

libqt_pair /* tuple of int and int */ QSurfaceFormat_Version(const QSurfaceFormat* self) {
    QPair<int, int> _ret = self->version();
    // Convert QPair<> from C++ memory to manually-managed C memory
    int* _first = static_cast<int*>(malloc(sizeof(int)));
    int* _second = static_cast<int*>(malloc(sizeof(int)));
    *_first = _ret.first;
    *_second = _ret.second;
    libqt_pair _out;
    _out.first = static_cast<void*>(_first);
    _out.second = static_cast<void*>(_second);
    return _out;
}

void QSurfaceFormat_SetVersion(QSurfaceFormat* self, int major, int minor) {
    self->setVersion(static_cast<int>(major), static_cast<int>(minor));
}

bool QSurfaceFormat_Stereo(const QSurfaceFormat* self) {
    return self->stereo();
}

void QSurfaceFormat_SetStereo(QSurfaceFormat* self, bool enable) {
    self->setStereo(enable);
}

void QSurfaceFormat_SetOptions(QSurfaceFormat* self, int options) {
    self->setOptions(static_cast<QSurfaceFormat::FormatOptions>(options));
}

void QSurfaceFormat_SetOption(QSurfaceFormat* self, int option) {
    self->setOption(static_cast<QSurfaceFormat::FormatOption>(option));
}

bool QSurfaceFormat_TestOption(const QSurfaceFormat* self, int option) {
    return self->testOption(static_cast<QSurfaceFormat::FormatOption>(option));
}

int QSurfaceFormat_Options(const QSurfaceFormat* self) {
    return static_cast<int>(self->options());
}

int QSurfaceFormat_SwapInterval(const QSurfaceFormat* self) {
    return self->swapInterval();
}

void QSurfaceFormat_SetSwapInterval(QSurfaceFormat* self, int interval) {
    self->setSwapInterval(static_cast<int>(interval));
}

QColorSpace* QSurfaceFormat_ColorSpace(const QSurfaceFormat* self) {
    const QColorSpace& _ret = self->colorSpace();
    // Cast returned reference into pointer
    return const_cast<QColorSpace*>(&_ret);
}

void QSurfaceFormat_SetColorSpace(QSurfaceFormat* self, const QColorSpace* colorSpace) {
    self->setColorSpace(*colorSpace);
}

void QSurfaceFormat_SetColorSpace2(QSurfaceFormat* self, int colorSpace) {
    self->setColorSpace(static_cast<QSurfaceFormat::ColorSpace>(colorSpace));
}

void QSurfaceFormat_SetDefaultFormat(const QSurfaceFormat* format) {
    QSurfaceFormat::setDefaultFormat(*format);
}

QSurfaceFormat* QSurfaceFormat_DefaultFormat() {
    return new QSurfaceFormat(QSurfaceFormat::defaultFormat());
}

void QSurfaceFormat_SetOption2(QSurfaceFormat* self, int option, bool on) {
    self->setOption(static_cast<QSurfaceFormat::FormatOption>(option), on);
}

void QSurfaceFormat_Delete(QSurfaceFormat* self) {
    delete self;
}
