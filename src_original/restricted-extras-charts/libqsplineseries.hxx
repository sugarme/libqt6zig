#pragma once
#ifndef SRC_RESTRICTED_EXTRAS_CHARTSC_LIBVIRTUALQSPLINESERIES_H
#define SRC_RESTRICTED_EXTRAS_CHARTSC_LIBVIRTUALQSPLINESERIES_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

// This class is a subclass of QSplineSeries so that we can call protected methods
class VirtualQSplineSeries final : public QSplineSeries {

  public:
    // Virtual class boolean flag
    bool isVirtualQSplineSeries = true;

    // Virtual class public types (including callbacks)
    using QSplineSeries_Metacall_Callback = int (*)(QSplineSeries*, int, int, void**);
    using QSplineSeries_Type_Callback = int (*)();
    using QSplineSeries_SetPen_Callback = void (*)(QSplineSeries*, QPen*);
    using QSplineSeries_SetBrush_Callback = void (*)(QSplineSeries*, QBrush*);
    using QSplineSeries_SetColor_Callback = void (*)(QSplineSeries*, QColor*);
    using QSplineSeries_Color_Callback = QColor* (*)();
    using QSplineSeries_Event_Callback = bool (*)(QSplineSeries*, QEvent*);
    using QSplineSeries_EventFilter_Callback = bool (*)(QSplineSeries*, QObject*, QEvent*);
    using QSplineSeries_TimerEvent_Callback = void (*)(QSplineSeries*, QTimerEvent*);
    using QSplineSeries_ChildEvent_Callback = void (*)(QSplineSeries*, QChildEvent*);
    using QSplineSeries_CustomEvent_Callback = void (*)(QSplineSeries*, QEvent*);
    using QSplineSeries_ConnectNotify_Callback = void (*)(QSplineSeries*, QMetaMethod*);
    using QSplineSeries_DisconnectNotify_Callback = void (*)(QSplineSeries*, QMetaMethod*);
    using QSplineSeries_Sender_Callback = QObject* (*)();
    using QSplineSeries_SenderSignalIndex_Callback = int (*)();
    using QSplineSeries_Receivers_Callback = int (*)(const QSplineSeries*, const char*);
    using QSplineSeries_IsSignalConnected_Callback = bool (*)(const QSplineSeries*, QMetaMethod*);

  protected:
    // Instance callback storage
    QSplineSeries_Metacall_Callback qsplineseries_metacall_callback = nullptr;
    QSplineSeries_Type_Callback qsplineseries_type_callback = nullptr;
    QSplineSeries_SetPen_Callback qsplineseries_setpen_callback = nullptr;
    QSplineSeries_SetBrush_Callback qsplineseries_setbrush_callback = nullptr;
    QSplineSeries_SetColor_Callback qsplineseries_setcolor_callback = nullptr;
    QSplineSeries_Color_Callback qsplineseries_color_callback = nullptr;
    QSplineSeries_Event_Callback qsplineseries_event_callback = nullptr;
    QSplineSeries_EventFilter_Callback qsplineseries_eventfilter_callback = nullptr;
    QSplineSeries_TimerEvent_Callback qsplineseries_timerevent_callback = nullptr;
    QSplineSeries_ChildEvent_Callback qsplineseries_childevent_callback = nullptr;
    QSplineSeries_CustomEvent_Callback qsplineseries_customevent_callback = nullptr;
    QSplineSeries_ConnectNotify_Callback qsplineseries_connectnotify_callback = nullptr;
    QSplineSeries_DisconnectNotify_Callback qsplineseries_disconnectnotify_callback = nullptr;
    QSplineSeries_Sender_Callback qsplineseries_sender_callback = nullptr;
    QSplineSeries_SenderSignalIndex_Callback qsplineseries_sendersignalindex_callback = nullptr;
    QSplineSeries_Receivers_Callback qsplineseries_receivers_callback = nullptr;
    QSplineSeries_IsSignalConnected_Callback qsplineseries_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qsplineseries_metacall_isbase = false;
    mutable bool qsplineseries_type_isbase = false;
    mutable bool qsplineseries_setpen_isbase = false;
    mutable bool qsplineseries_setbrush_isbase = false;
    mutable bool qsplineseries_setcolor_isbase = false;
    mutable bool qsplineseries_color_isbase = false;
    mutable bool qsplineseries_event_isbase = false;
    mutable bool qsplineseries_eventfilter_isbase = false;
    mutable bool qsplineseries_timerevent_isbase = false;
    mutable bool qsplineseries_childevent_isbase = false;
    mutable bool qsplineseries_customevent_isbase = false;
    mutable bool qsplineseries_connectnotify_isbase = false;
    mutable bool qsplineseries_disconnectnotify_isbase = false;
    mutable bool qsplineseries_sender_isbase = false;
    mutable bool qsplineseries_sendersignalindex_isbase = false;
    mutable bool qsplineseries_receivers_isbase = false;
    mutable bool qsplineseries_issignalconnected_isbase = false;

  public:
    VirtualQSplineSeries() : QSplineSeries() {};
    VirtualQSplineSeries(QObject* parent) : QSplineSeries(parent) {};

    ~VirtualQSplineSeries() {
        qsplineseries_metacall_callback = nullptr;
        qsplineseries_type_callback = nullptr;
        qsplineseries_setpen_callback = nullptr;
        qsplineseries_setbrush_callback = nullptr;
        qsplineseries_setcolor_callback = nullptr;
        qsplineseries_color_callback = nullptr;
        qsplineseries_event_callback = nullptr;
        qsplineseries_eventfilter_callback = nullptr;
        qsplineseries_timerevent_callback = nullptr;
        qsplineseries_childevent_callback = nullptr;
        qsplineseries_customevent_callback = nullptr;
        qsplineseries_connectnotify_callback = nullptr;
        qsplineseries_disconnectnotify_callback = nullptr;
        qsplineseries_sender_callback = nullptr;
        qsplineseries_sendersignalindex_callback = nullptr;
        qsplineseries_receivers_callback = nullptr;
        qsplineseries_issignalconnected_callback = nullptr;
    }

    // Callback setters
    inline void setQSplineSeries_Metacall_Callback(QSplineSeries_Metacall_Callback cb) { qsplineseries_metacall_callback = cb; }
    inline void setQSplineSeries_Type_Callback(QSplineSeries_Type_Callback cb) { qsplineseries_type_callback = cb; }
    inline void setQSplineSeries_SetPen_Callback(QSplineSeries_SetPen_Callback cb) { qsplineseries_setpen_callback = cb; }
    inline void setQSplineSeries_SetBrush_Callback(QSplineSeries_SetBrush_Callback cb) { qsplineseries_setbrush_callback = cb; }
    inline void setQSplineSeries_SetColor_Callback(QSplineSeries_SetColor_Callback cb) { qsplineseries_setcolor_callback = cb; }
    inline void setQSplineSeries_Color_Callback(QSplineSeries_Color_Callback cb) { qsplineseries_color_callback = cb; }
    inline void setQSplineSeries_Event_Callback(QSplineSeries_Event_Callback cb) { qsplineseries_event_callback = cb; }
    inline void setQSplineSeries_EventFilter_Callback(QSplineSeries_EventFilter_Callback cb) { qsplineseries_eventfilter_callback = cb; }
    inline void setQSplineSeries_TimerEvent_Callback(QSplineSeries_TimerEvent_Callback cb) { qsplineseries_timerevent_callback = cb; }
    inline void setQSplineSeries_ChildEvent_Callback(QSplineSeries_ChildEvent_Callback cb) { qsplineseries_childevent_callback = cb; }
    inline void setQSplineSeries_CustomEvent_Callback(QSplineSeries_CustomEvent_Callback cb) { qsplineseries_customevent_callback = cb; }
    inline void setQSplineSeries_ConnectNotify_Callback(QSplineSeries_ConnectNotify_Callback cb) { qsplineseries_connectnotify_callback = cb; }
    inline void setQSplineSeries_DisconnectNotify_Callback(QSplineSeries_DisconnectNotify_Callback cb) { qsplineseries_disconnectnotify_callback = cb; }
    inline void setQSplineSeries_Sender_Callback(QSplineSeries_Sender_Callback cb) { qsplineseries_sender_callback = cb; }
    inline void setQSplineSeries_SenderSignalIndex_Callback(QSplineSeries_SenderSignalIndex_Callback cb) { qsplineseries_sendersignalindex_callback = cb; }
    inline void setQSplineSeries_Receivers_Callback(QSplineSeries_Receivers_Callback cb) { qsplineseries_receivers_callback = cb; }
    inline void setQSplineSeries_IsSignalConnected_Callback(QSplineSeries_IsSignalConnected_Callback cb) { qsplineseries_issignalconnected_callback = cb; }

    // Base flag setters
    inline void setQSplineSeries_Metacall_IsBase(bool value) const { qsplineseries_metacall_isbase = value; }
    inline void setQSplineSeries_Type_IsBase(bool value) const { qsplineseries_type_isbase = value; }
    inline void setQSplineSeries_SetPen_IsBase(bool value) const { qsplineseries_setpen_isbase = value; }
    inline void setQSplineSeries_SetBrush_IsBase(bool value) const { qsplineseries_setbrush_isbase = value; }
    inline void setQSplineSeries_SetColor_IsBase(bool value) const { qsplineseries_setcolor_isbase = value; }
    inline void setQSplineSeries_Color_IsBase(bool value) const { qsplineseries_color_isbase = value; }
    inline void setQSplineSeries_Event_IsBase(bool value) const { qsplineseries_event_isbase = value; }
    inline void setQSplineSeries_EventFilter_IsBase(bool value) const { qsplineseries_eventfilter_isbase = value; }
    inline void setQSplineSeries_TimerEvent_IsBase(bool value) const { qsplineseries_timerevent_isbase = value; }
    inline void setQSplineSeries_ChildEvent_IsBase(bool value) const { qsplineseries_childevent_isbase = value; }
    inline void setQSplineSeries_CustomEvent_IsBase(bool value) const { qsplineseries_customevent_isbase = value; }
    inline void setQSplineSeries_ConnectNotify_IsBase(bool value) const { qsplineseries_connectnotify_isbase = value; }
    inline void setQSplineSeries_DisconnectNotify_IsBase(bool value) const { qsplineseries_disconnectnotify_isbase = value; }
    inline void setQSplineSeries_Sender_IsBase(bool value) const { qsplineseries_sender_isbase = value; }
    inline void setQSplineSeries_SenderSignalIndex_IsBase(bool value) const { qsplineseries_sendersignalindex_isbase = value; }
    inline void setQSplineSeries_Receivers_IsBase(bool value) const { qsplineseries_receivers_isbase = value; }
    inline void setQSplineSeries_IsSignalConnected_IsBase(bool value) const { qsplineseries_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qsplineseries_metacall_isbase) {
            qsplineseries_metacall_isbase = false;
            return QSplineSeries::qt_metacall(param1, param2, param3);
        } else if (qsplineseries_metacall_callback != nullptr) {
            int cbval1 = static_cast<int>(param1);
            int cbval2 = param2;
            void** cbval3 = param3;

            int callback_ret = qsplineseries_metacall_callback(this, cbval1, cbval2, cbval3);
            return static_cast<int>(callback_ret);
        } else {
            return QSplineSeries::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractSeries::SeriesType type() const override {
        if (qsplineseries_type_isbase) {
            qsplineseries_type_isbase = false;
            return QSplineSeries::type();
        } else if (qsplineseries_type_callback != nullptr) {
            int callback_ret = qsplineseries_type_callback();
            return static_cast<QAbstractSeries::SeriesType>(callback_ret);
        } else {
            return QSplineSeries::type();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setPen(const QPen& pen) override {
        if (qsplineseries_setpen_isbase) {
            qsplineseries_setpen_isbase = false;
            QSplineSeries::setPen(pen);
        } else if (qsplineseries_setpen_callback != nullptr) {
            const QPen& pen_ret = pen;
            // Cast returned reference into pointer
            QPen* cbval1 = const_cast<QPen*>(&pen_ret);

            qsplineseries_setpen_callback(this, cbval1);
        } else {
            QSplineSeries::setPen(pen);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setBrush(const QBrush& brush) override {
        if (qsplineseries_setbrush_isbase) {
            qsplineseries_setbrush_isbase = false;
            QSplineSeries::setBrush(brush);
        } else if (qsplineseries_setbrush_callback != nullptr) {
            const QBrush& brush_ret = brush;
            // Cast returned reference into pointer
            QBrush* cbval1 = const_cast<QBrush*>(&brush_ret);

            qsplineseries_setbrush_callback(this, cbval1);
        } else {
            QSplineSeries::setBrush(brush);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setColor(const QColor& color) override {
        if (qsplineseries_setcolor_isbase) {
            qsplineseries_setcolor_isbase = false;
            QSplineSeries::setColor(color);
        } else if (qsplineseries_setcolor_callback != nullptr) {
            const QColor& color_ret = color;
            // Cast returned reference into pointer
            QColor* cbval1 = const_cast<QColor*>(&color_ret);

            qsplineseries_setcolor_callback(this, cbval1);
        } else {
            QSplineSeries::setColor(color);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QColor color() const override {
        if (qsplineseries_color_isbase) {
            qsplineseries_color_isbase = false;
            return QSplineSeries::color();
        } else if (qsplineseries_color_callback != nullptr) {
            QColor* callback_ret = qsplineseries_color_callback();
            return *callback_ret;
        } else {
            return QSplineSeries::color();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qsplineseries_event_isbase) {
            qsplineseries_event_isbase = false;
            return QSplineSeries::event(event);
        } else if (qsplineseries_event_callback != nullptr) {
            QEvent* cbval1 = event;

            bool callback_ret = qsplineseries_event_callback(this, cbval1);
            return callback_ret;
        } else {
            return QSplineSeries::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qsplineseries_eventfilter_isbase) {
            qsplineseries_eventfilter_isbase = false;
            return QSplineSeries::eventFilter(watched, event);
        } else if (qsplineseries_eventfilter_callback != nullptr) {
            QObject* cbval1 = watched;
            QEvent* cbval2 = event;

            bool callback_ret = qsplineseries_eventfilter_callback(this, cbval1, cbval2);
            return callback_ret;
        } else {
            return QSplineSeries::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qsplineseries_timerevent_isbase) {
            qsplineseries_timerevent_isbase = false;
            QSplineSeries::timerEvent(event);
        } else if (qsplineseries_timerevent_callback != nullptr) {
            QTimerEvent* cbval1 = event;

            qsplineseries_timerevent_callback(this, cbval1);
        } else {
            QSplineSeries::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qsplineseries_childevent_isbase) {
            qsplineseries_childevent_isbase = false;
            QSplineSeries::childEvent(event);
        } else if (qsplineseries_childevent_callback != nullptr) {
            QChildEvent* cbval1 = event;

            qsplineseries_childevent_callback(this, cbval1);
        } else {
            QSplineSeries::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qsplineseries_customevent_isbase) {
            qsplineseries_customevent_isbase = false;
            QSplineSeries::customEvent(event);
        } else if (qsplineseries_customevent_callback != nullptr) {
            QEvent* cbval1 = event;

            qsplineseries_customevent_callback(this, cbval1);
        } else {
            QSplineSeries::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qsplineseries_connectnotify_isbase) {
            qsplineseries_connectnotify_isbase = false;
            QSplineSeries::connectNotify(signal);
        } else if (qsplineseries_connectnotify_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            qsplineseries_connectnotify_callback(this, cbval1);
        } else {
            QSplineSeries::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qsplineseries_disconnectnotify_isbase) {
            qsplineseries_disconnectnotify_isbase = false;
            QSplineSeries::disconnectNotify(signal);
        } else if (qsplineseries_disconnectnotify_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            qsplineseries_disconnectnotify_callback(this, cbval1);
        } else {
            QSplineSeries::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qsplineseries_sender_isbase) {
            qsplineseries_sender_isbase = false;
            return QSplineSeries::sender();
        } else if (qsplineseries_sender_callback != nullptr) {
            QObject* callback_ret = qsplineseries_sender_callback();
            return callback_ret;
        } else {
            return QSplineSeries::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qsplineseries_sendersignalindex_isbase) {
            qsplineseries_sendersignalindex_isbase = false;
            return QSplineSeries::senderSignalIndex();
        } else if (qsplineseries_sendersignalindex_callback != nullptr) {
            int callback_ret = qsplineseries_sendersignalindex_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QSplineSeries::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qsplineseries_receivers_isbase) {
            qsplineseries_receivers_isbase = false;
            return QSplineSeries::receivers(signal);
        } else if (qsplineseries_receivers_callback != nullptr) {
            const char* cbval1 = (const char*)signal;

            int callback_ret = qsplineseries_receivers_callback(this, cbval1);
            return static_cast<int>(callback_ret);
        } else {
            return QSplineSeries::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qsplineseries_issignalconnected_isbase) {
            qsplineseries_issignalconnected_isbase = false;
            return QSplineSeries::isSignalConnected(signal);
        } else if (qsplineseries_issignalconnected_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            bool callback_ret = qsplineseries_issignalconnected_callback(this, cbval1);
            return callback_ret;
        } else {
            return QSplineSeries::isSignalConnected(signal);
        }
    }

    // Friend functions
    friend void QSplineSeries_TimerEvent(QSplineSeries* self, QTimerEvent* event);
    friend void QSplineSeries_QBaseTimerEvent(QSplineSeries* self, QTimerEvent* event);
    friend void QSplineSeries_ChildEvent(QSplineSeries* self, QChildEvent* event);
    friend void QSplineSeries_QBaseChildEvent(QSplineSeries* self, QChildEvent* event);
    friend void QSplineSeries_CustomEvent(QSplineSeries* self, QEvent* event);
    friend void QSplineSeries_QBaseCustomEvent(QSplineSeries* self, QEvent* event);
    friend void QSplineSeries_ConnectNotify(QSplineSeries* self, const QMetaMethod* signal);
    friend void QSplineSeries_QBaseConnectNotify(QSplineSeries* self, const QMetaMethod* signal);
    friend void QSplineSeries_DisconnectNotify(QSplineSeries* self, const QMetaMethod* signal);
    friend void QSplineSeries_QBaseDisconnectNotify(QSplineSeries* self, const QMetaMethod* signal);
    friend QObject* QSplineSeries_Sender(const QSplineSeries* self);
    friend QObject* QSplineSeries_QBaseSender(const QSplineSeries* self);
    friend int QSplineSeries_SenderSignalIndex(const QSplineSeries* self);
    friend int QSplineSeries_QBaseSenderSignalIndex(const QSplineSeries* self);
    friend int QSplineSeries_Receivers(const QSplineSeries* self, const char* signal);
    friend int QSplineSeries_QBaseReceivers(const QSplineSeries* self, const char* signal);
    friend bool QSplineSeries_IsSignalConnected(const QSplineSeries* self, const QMetaMethod* signal);
    friend bool QSplineSeries_QBaseIsSignalConnected(const QSplineSeries* self, const QMetaMethod* signal);
};

#endif
