#pragma once
#ifndef SRC_RESTRICTED_EXTRAS_CHARTSC_LIBVIRTUALQHXYMODELMAPPER_H
#define SRC_RESTRICTED_EXTRAS_CHARTSC_LIBVIRTUALQHXYMODELMAPPER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../qtlibc.h"

// This class is a subclass of QHXYModelMapper so that we can call protected methods
class VirtualQHXYModelMapper final : public QHXYModelMapper {

  public:
    // Virtual class boolean flag
    bool isVirtualQHXYModelMapper = true;

    // Virtual class public types (including callbacks)
    using QHXYModelMapper_Metacall_Callback = int (*)(QHXYModelMapper*, int, int, void**);
    using QHXYModelMapper_Event_Callback = bool (*)(QHXYModelMapper*, QEvent*);
    using QHXYModelMapper_EventFilter_Callback = bool (*)(QHXYModelMapper*, QObject*, QEvent*);
    using QHXYModelMapper_TimerEvent_Callback = void (*)(QHXYModelMapper*, QTimerEvent*);
    using QHXYModelMapper_ChildEvent_Callback = void (*)(QHXYModelMapper*, QChildEvent*);
    using QHXYModelMapper_CustomEvent_Callback = void (*)(QHXYModelMapper*, QEvent*);
    using QHXYModelMapper_ConnectNotify_Callback = void (*)(QHXYModelMapper*, QMetaMethod*);
    using QHXYModelMapper_DisconnectNotify_Callback = void (*)(QHXYModelMapper*, QMetaMethod*);
    using QHXYModelMapper_First_Callback = int (*)();
    using QHXYModelMapper_SetFirst_Callback = void (*)(QHXYModelMapper*, int);
    using QHXYModelMapper_Count_Callback = int (*)();
    using QHXYModelMapper_SetCount_Callback = void (*)(QHXYModelMapper*, int);
    using QHXYModelMapper_Orientation_Callback = int (*)();
    using QHXYModelMapper_SetOrientation_Callback = void (*)(QHXYModelMapper*, int);
    using QHXYModelMapper_XSection_Callback = int (*)();
    using QHXYModelMapper_SetXSection_Callback = void (*)(QHXYModelMapper*, int);
    using QHXYModelMapper_YSection_Callback = int (*)();
    using QHXYModelMapper_SetYSection_Callback = void (*)(QHXYModelMapper*, int);
    using QHXYModelMapper_Sender_Callback = QObject* (*)();
    using QHXYModelMapper_SenderSignalIndex_Callback = int (*)();
    using QHXYModelMapper_Receivers_Callback = int (*)(const QHXYModelMapper*, const char*);
    using QHXYModelMapper_IsSignalConnected_Callback = bool (*)(const QHXYModelMapper*, QMetaMethod*);

  protected:
    // Instance callback storage
    QHXYModelMapper_Metacall_Callback qhxymodelmapper_metacall_callback = nullptr;
    QHXYModelMapper_Event_Callback qhxymodelmapper_event_callback = nullptr;
    QHXYModelMapper_EventFilter_Callback qhxymodelmapper_eventfilter_callback = nullptr;
    QHXYModelMapper_TimerEvent_Callback qhxymodelmapper_timerevent_callback = nullptr;
    QHXYModelMapper_ChildEvent_Callback qhxymodelmapper_childevent_callback = nullptr;
    QHXYModelMapper_CustomEvent_Callback qhxymodelmapper_customevent_callback = nullptr;
    QHXYModelMapper_ConnectNotify_Callback qhxymodelmapper_connectnotify_callback = nullptr;
    QHXYModelMapper_DisconnectNotify_Callback qhxymodelmapper_disconnectnotify_callback = nullptr;
    QHXYModelMapper_First_Callback qhxymodelmapper_first_callback = nullptr;
    QHXYModelMapper_SetFirst_Callback qhxymodelmapper_setfirst_callback = nullptr;
    QHXYModelMapper_Count_Callback qhxymodelmapper_count_callback = nullptr;
    QHXYModelMapper_SetCount_Callback qhxymodelmapper_setcount_callback = nullptr;
    QHXYModelMapper_Orientation_Callback qhxymodelmapper_orientation_callback = nullptr;
    QHXYModelMapper_SetOrientation_Callback qhxymodelmapper_setorientation_callback = nullptr;
    QHXYModelMapper_XSection_Callback qhxymodelmapper_xsection_callback = nullptr;
    QHXYModelMapper_SetXSection_Callback qhxymodelmapper_setxsection_callback = nullptr;
    QHXYModelMapper_YSection_Callback qhxymodelmapper_ysection_callback = nullptr;
    QHXYModelMapper_SetYSection_Callback qhxymodelmapper_setysection_callback = nullptr;
    QHXYModelMapper_Sender_Callback qhxymodelmapper_sender_callback = nullptr;
    QHXYModelMapper_SenderSignalIndex_Callback qhxymodelmapper_sendersignalindex_callback = nullptr;
    QHXYModelMapper_Receivers_Callback qhxymodelmapper_receivers_callback = nullptr;
    QHXYModelMapper_IsSignalConnected_Callback qhxymodelmapper_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qhxymodelmapper_metacall_isbase = false;
    mutable bool qhxymodelmapper_event_isbase = false;
    mutable bool qhxymodelmapper_eventfilter_isbase = false;
    mutable bool qhxymodelmapper_timerevent_isbase = false;
    mutable bool qhxymodelmapper_childevent_isbase = false;
    mutable bool qhxymodelmapper_customevent_isbase = false;
    mutable bool qhxymodelmapper_connectnotify_isbase = false;
    mutable bool qhxymodelmapper_disconnectnotify_isbase = false;
    mutable bool qhxymodelmapper_first_isbase = false;
    mutable bool qhxymodelmapper_setfirst_isbase = false;
    mutable bool qhxymodelmapper_count_isbase = false;
    mutable bool qhxymodelmapper_setcount_isbase = false;
    mutable bool qhxymodelmapper_orientation_isbase = false;
    mutable bool qhxymodelmapper_setorientation_isbase = false;
    mutable bool qhxymodelmapper_xsection_isbase = false;
    mutable bool qhxymodelmapper_setxsection_isbase = false;
    mutable bool qhxymodelmapper_ysection_isbase = false;
    mutable bool qhxymodelmapper_setysection_isbase = false;
    mutable bool qhxymodelmapper_sender_isbase = false;
    mutable bool qhxymodelmapper_sendersignalindex_isbase = false;
    mutable bool qhxymodelmapper_receivers_isbase = false;
    mutable bool qhxymodelmapper_issignalconnected_isbase = false;

  public:
    VirtualQHXYModelMapper() : QHXYModelMapper() {};
    VirtualQHXYModelMapper(QObject* parent) : QHXYModelMapper(parent) {};

    ~VirtualQHXYModelMapper() {
        qhxymodelmapper_metacall_callback = nullptr;
        qhxymodelmapper_event_callback = nullptr;
        qhxymodelmapper_eventfilter_callback = nullptr;
        qhxymodelmapper_timerevent_callback = nullptr;
        qhxymodelmapper_childevent_callback = nullptr;
        qhxymodelmapper_customevent_callback = nullptr;
        qhxymodelmapper_connectnotify_callback = nullptr;
        qhxymodelmapper_disconnectnotify_callback = nullptr;
        qhxymodelmapper_first_callback = nullptr;
        qhxymodelmapper_setfirst_callback = nullptr;
        qhxymodelmapper_count_callback = nullptr;
        qhxymodelmapper_setcount_callback = nullptr;
        qhxymodelmapper_orientation_callback = nullptr;
        qhxymodelmapper_setorientation_callback = nullptr;
        qhxymodelmapper_xsection_callback = nullptr;
        qhxymodelmapper_setxsection_callback = nullptr;
        qhxymodelmapper_ysection_callback = nullptr;
        qhxymodelmapper_setysection_callback = nullptr;
        qhxymodelmapper_sender_callback = nullptr;
        qhxymodelmapper_sendersignalindex_callback = nullptr;
        qhxymodelmapper_receivers_callback = nullptr;
        qhxymodelmapper_issignalconnected_callback = nullptr;
    }

    // Callback setters
    inline void setQHXYModelMapper_Metacall_Callback(QHXYModelMapper_Metacall_Callback cb) { qhxymodelmapper_metacall_callback = cb; }
    inline void setQHXYModelMapper_Event_Callback(QHXYModelMapper_Event_Callback cb) { qhxymodelmapper_event_callback = cb; }
    inline void setQHXYModelMapper_EventFilter_Callback(QHXYModelMapper_EventFilter_Callback cb) { qhxymodelmapper_eventfilter_callback = cb; }
    inline void setQHXYModelMapper_TimerEvent_Callback(QHXYModelMapper_TimerEvent_Callback cb) { qhxymodelmapper_timerevent_callback = cb; }
    inline void setQHXYModelMapper_ChildEvent_Callback(QHXYModelMapper_ChildEvent_Callback cb) { qhxymodelmapper_childevent_callback = cb; }
    inline void setQHXYModelMapper_CustomEvent_Callback(QHXYModelMapper_CustomEvent_Callback cb) { qhxymodelmapper_customevent_callback = cb; }
    inline void setQHXYModelMapper_ConnectNotify_Callback(QHXYModelMapper_ConnectNotify_Callback cb) { qhxymodelmapper_connectnotify_callback = cb; }
    inline void setQHXYModelMapper_DisconnectNotify_Callback(QHXYModelMapper_DisconnectNotify_Callback cb) { qhxymodelmapper_disconnectnotify_callback = cb; }
    inline void setQHXYModelMapper_First_Callback(QHXYModelMapper_First_Callback cb) { qhxymodelmapper_first_callback = cb; }
    inline void setQHXYModelMapper_SetFirst_Callback(QHXYModelMapper_SetFirst_Callback cb) { qhxymodelmapper_setfirst_callback = cb; }
    inline void setQHXYModelMapper_Count_Callback(QHXYModelMapper_Count_Callback cb) { qhxymodelmapper_count_callback = cb; }
    inline void setQHXYModelMapper_SetCount_Callback(QHXYModelMapper_SetCount_Callback cb) { qhxymodelmapper_setcount_callback = cb; }
    inline void setQHXYModelMapper_Orientation_Callback(QHXYModelMapper_Orientation_Callback cb) { qhxymodelmapper_orientation_callback = cb; }
    inline void setQHXYModelMapper_SetOrientation_Callback(QHXYModelMapper_SetOrientation_Callback cb) { qhxymodelmapper_setorientation_callback = cb; }
    inline void setQHXYModelMapper_XSection_Callback(QHXYModelMapper_XSection_Callback cb) { qhxymodelmapper_xsection_callback = cb; }
    inline void setQHXYModelMapper_SetXSection_Callback(QHXYModelMapper_SetXSection_Callback cb) { qhxymodelmapper_setxsection_callback = cb; }
    inline void setQHXYModelMapper_YSection_Callback(QHXYModelMapper_YSection_Callback cb) { qhxymodelmapper_ysection_callback = cb; }
    inline void setQHXYModelMapper_SetYSection_Callback(QHXYModelMapper_SetYSection_Callback cb) { qhxymodelmapper_setysection_callback = cb; }
    inline void setQHXYModelMapper_Sender_Callback(QHXYModelMapper_Sender_Callback cb) { qhxymodelmapper_sender_callback = cb; }
    inline void setQHXYModelMapper_SenderSignalIndex_Callback(QHXYModelMapper_SenderSignalIndex_Callback cb) { qhxymodelmapper_sendersignalindex_callback = cb; }
    inline void setQHXYModelMapper_Receivers_Callback(QHXYModelMapper_Receivers_Callback cb) { qhxymodelmapper_receivers_callback = cb; }
    inline void setQHXYModelMapper_IsSignalConnected_Callback(QHXYModelMapper_IsSignalConnected_Callback cb) { qhxymodelmapper_issignalconnected_callback = cb; }

    // Base flag setters
    inline void setQHXYModelMapper_Metacall_IsBase(bool value) const { qhxymodelmapper_metacall_isbase = value; }
    inline void setQHXYModelMapper_Event_IsBase(bool value) const { qhxymodelmapper_event_isbase = value; }
    inline void setQHXYModelMapper_EventFilter_IsBase(bool value) const { qhxymodelmapper_eventfilter_isbase = value; }
    inline void setQHXYModelMapper_TimerEvent_IsBase(bool value) const { qhxymodelmapper_timerevent_isbase = value; }
    inline void setQHXYModelMapper_ChildEvent_IsBase(bool value) const { qhxymodelmapper_childevent_isbase = value; }
    inline void setQHXYModelMapper_CustomEvent_IsBase(bool value) const { qhxymodelmapper_customevent_isbase = value; }
    inline void setQHXYModelMapper_ConnectNotify_IsBase(bool value) const { qhxymodelmapper_connectnotify_isbase = value; }
    inline void setQHXYModelMapper_DisconnectNotify_IsBase(bool value) const { qhxymodelmapper_disconnectnotify_isbase = value; }
    inline void setQHXYModelMapper_First_IsBase(bool value) const { qhxymodelmapper_first_isbase = value; }
    inline void setQHXYModelMapper_SetFirst_IsBase(bool value) const { qhxymodelmapper_setfirst_isbase = value; }
    inline void setQHXYModelMapper_Count_IsBase(bool value) const { qhxymodelmapper_count_isbase = value; }
    inline void setQHXYModelMapper_SetCount_IsBase(bool value) const { qhxymodelmapper_setcount_isbase = value; }
    inline void setQHXYModelMapper_Orientation_IsBase(bool value) const { qhxymodelmapper_orientation_isbase = value; }
    inline void setQHXYModelMapper_SetOrientation_IsBase(bool value) const { qhxymodelmapper_setorientation_isbase = value; }
    inline void setQHXYModelMapper_XSection_IsBase(bool value) const { qhxymodelmapper_xsection_isbase = value; }
    inline void setQHXYModelMapper_SetXSection_IsBase(bool value) const { qhxymodelmapper_setxsection_isbase = value; }
    inline void setQHXYModelMapper_YSection_IsBase(bool value) const { qhxymodelmapper_ysection_isbase = value; }
    inline void setQHXYModelMapper_SetYSection_IsBase(bool value) const { qhxymodelmapper_setysection_isbase = value; }
    inline void setQHXYModelMapper_Sender_IsBase(bool value) const { qhxymodelmapper_sender_isbase = value; }
    inline void setQHXYModelMapper_SenderSignalIndex_IsBase(bool value) const { qhxymodelmapper_sendersignalindex_isbase = value; }
    inline void setQHXYModelMapper_Receivers_IsBase(bool value) const { qhxymodelmapper_receivers_isbase = value; }
    inline void setQHXYModelMapper_IsSignalConnected_IsBase(bool value) const { qhxymodelmapper_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qhxymodelmapper_metacall_isbase) {
            qhxymodelmapper_metacall_isbase = false;
            return QHXYModelMapper::qt_metacall(param1, param2, param3);
        } else if (qhxymodelmapper_metacall_callback != nullptr) {
            int cbval1 = static_cast<int>(param1);
            int cbval2 = param2;
            void** cbval3 = param3;

            int callback_ret = qhxymodelmapper_metacall_callback(this, cbval1, cbval2, cbval3);
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qhxymodelmapper_event_isbase) {
            qhxymodelmapper_event_isbase = false;
            return QHXYModelMapper::event(event);
        } else if (qhxymodelmapper_event_callback != nullptr) {
            QEvent* cbval1 = event;

            bool callback_ret = qhxymodelmapper_event_callback(this, cbval1);
            return callback_ret;
        } else {
            return QHXYModelMapper::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qhxymodelmapper_eventfilter_isbase) {
            qhxymodelmapper_eventfilter_isbase = false;
            return QHXYModelMapper::eventFilter(watched, event);
        } else if (qhxymodelmapper_eventfilter_callback != nullptr) {
            QObject* cbval1 = watched;
            QEvent* cbval2 = event;

            bool callback_ret = qhxymodelmapper_eventfilter_callback(this, cbval1, cbval2);
            return callback_ret;
        } else {
            return QHXYModelMapper::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qhxymodelmapper_timerevent_isbase) {
            qhxymodelmapper_timerevent_isbase = false;
            QHXYModelMapper::timerEvent(event);
        } else if (qhxymodelmapper_timerevent_callback != nullptr) {
            QTimerEvent* cbval1 = event;

            qhxymodelmapper_timerevent_callback(this, cbval1);
        } else {
            QHXYModelMapper::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qhxymodelmapper_childevent_isbase) {
            qhxymodelmapper_childevent_isbase = false;
            QHXYModelMapper::childEvent(event);
        } else if (qhxymodelmapper_childevent_callback != nullptr) {
            QChildEvent* cbval1 = event;

            qhxymodelmapper_childevent_callback(this, cbval1);
        } else {
            QHXYModelMapper::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qhxymodelmapper_customevent_isbase) {
            qhxymodelmapper_customevent_isbase = false;
            QHXYModelMapper::customEvent(event);
        } else if (qhxymodelmapper_customevent_callback != nullptr) {
            QEvent* cbval1 = event;

            qhxymodelmapper_customevent_callback(this, cbval1);
        } else {
            QHXYModelMapper::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qhxymodelmapper_connectnotify_isbase) {
            qhxymodelmapper_connectnotify_isbase = false;
            QHXYModelMapper::connectNotify(signal);
        } else if (qhxymodelmapper_connectnotify_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            qhxymodelmapper_connectnotify_callback(this, cbval1);
        } else {
            QHXYModelMapper::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qhxymodelmapper_disconnectnotify_isbase) {
            qhxymodelmapper_disconnectnotify_isbase = false;
            QHXYModelMapper::disconnectNotify(signal);
        } else if (qhxymodelmapper_disconnectnotify_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            qhxymodelmapper_disconnectnotify_callback(this, cbval1);
        } else {
            QHXYModelMapper::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    int first() const {
        if (qhxymodelmapper_first_isbase) {
            qhxymodelmapper_first_isbase = false;
            return QHXYModelMapper::first();
        } else if (qhxymodelmapper_first_callback != nullptr) {
            int callback_ret = qhxymodelmapper_first_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::first();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setFirst(int first) {
        if (qhxymodelmapper_setfirst_isbase) {
            qhxymodelmapper_setfirst_isbase = false;
            QHXYModelMapper::setFirst(first);
        } else if (qhxymodelmapper_setfirst_callback != nullptr) {
            int cbval1 = first;

            qhxymodelmapper_setfirst_callback(this, cbval1);
        } else {
            QHXYModelMapper::setFirst(first);
        }
    }

    // Virtual method for C ABI access and custom callback
    int count() const {
        if (qhxymodelmapper_count_isbase) {
            qhxymodelmapper_count_isbase = false;
            return QHXYModelMapper::count();
        } else if (qhxymodelmapper_count_callback != nullptr) {
            int callback_ret = qhxymodelmapper_count_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::count();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setCount(int count) {
        if (qhxymodelmapper_setcount_isbase) {
            qhxymodelmapper_setcount_isbase = false;
            QHXYModelMapper::setCount(count);
        } else if (qhxymodelmapper_setcount_callback != nullptr) {
            int cbval1 = count;

            qhxymodelmapper_setcount_callback(this, cbval1);
        } else {
            QHXYModelMapper::setCount(count);
        }
    }

    // Virtual method for C ABI access and custom callback
    Qt::Orientation orientation() const {
        if (qhxymodelmapper_orientation_isbase) {
            qhxymodelmapper_orientation_isbase = false;
            return QHXYModelMapper::orientation();
        } else if (qhxymodelmapper_orientation_callback != nullptr) {
            int callback_ret = qhxymodelmapper_orientation_callback();
            return static_cast<Qt::Orientation>(callback_ret);
        } else {
            return QHXYModelMapper::orientation();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setOrientation(Qt::Orientation orientation) {
        if (qhxymodelmapper_setorientation_isbase) {
            qhxymodelmapper_setorientation_isbase = false;
            QHXYModelMapper::setOrientation(orientation);
        } else if (qhxymodelmapper_setorientation_callback != nullptr) {
            int cbval1 = static_cast<int>(orientation);

            qhxymodelmapper_setorientation_callback(this, cbval1);
        } else {
            QHXYModelMapper::setOrientation(orientation);
        }
    }

    // Virtual method for C ABI access and custom callback
    int xSection() const {
        if (qhxymodelmapper_xsection_isbase) {
            qhxymodelmapper_xsection_isbase = false;
            return QHXYModelMapper::xSection();
        } else if (qhxymodelmapper_xsection_callback != nullptr) {
            int callback_ret = qhxymodelmapper_xsection_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::xSection();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setXSection(int xSection) {
        if (qhxymodelmapper_setxsection_isbase) {
            qhxymodelmapper_setxsection_isbase = false;
            QHXYModelMapper::setXSection(xSection);
        } else if (qhxymodelmapper_setxsection_callback != nullptr) {
            int cbval1 = xSection;

            qhxymodelmapper_setxsection_callback(this, cbval1);
        } else {
            QHXYModelMapper::setXSection(xSection);
        }
    }

    // Virtual method for C ABI access and custom callback
    int ySection() const {
        if (qhxymodelmapper_ysection_isbase) {
            qhxymodelmapper_ysection_isbase = false;
            return QHXYModelMapper::ySection();
        } else if (qhxymodelmapper_ysection_callback != nullptr) {
            int callback_ret = qhxymodelmapper_ysection_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::ySection();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setYSection(int ySection) {
        if (qhxymodelmapper_setysection_isbase) {
            qhxymodelmapper_setysection_isbase = false;
            QHXYModelMapper::setYSection(ySection);
        } else if (qhxymodelmapper_setysection_callback != nullptr) {
            int cbval1 = ySection;

            qhxymodelmapper_setysection_callback(this, cbval1);
        } else {
            QHXYModelMapper::setYSection(ySection);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qhxymodelmapper_sender_isbase) {
            qhxymodelmapper_sender_isbase = false;
            return QHXYModelMapper::sender();
        } else if (qhxymodelmapper_sender_callback != nullptr) {
            QObject* callback_ret = qhxymodelmapper_sender_callback();
            return callback_ret;
        } else {
            return QHXYModelMapper::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qhxymodelmapper_sendersignalindex_isbase) {
            qhxymodelmapper_sendersignalindex_isbase = false;
            return QHXYModelMapper::senderSignalIndex();
        } else if (qhxymodelmapper_sendersignalindex_callback != nullptr) {
            int callback_ret = qhxymodelmapper_sendersignalindex_callback();
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qhxymodelmapper_receivers_isbase) {
            qhxymodelmapper_receivers_isbase = false;
            return QHXYModelMapper::receivers(signal);
        } else if (qhxymodelmapper_receivers_callback != nullptr) {
            const char* cbval1 = (const char*)signal;

            int callback_ret = qhxymodelmapper_receivers_callback(this, cbval1);
            return static_cast<int>(callback_ret);
        } else {
            return QHXYModelMapper::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qhxymodelmapper_issignalconnected_isbase) {
            qhxymodelmapper_issignalconnected_isbase = false;
            return QHXYModelMapper::isSignalConnected(signal);
        } else if (qhxymodelmapper_issignalconnected_callback != nullptr) {
            const QMetaMethod& signal_ret = signal;
            // Cast returned reference into pointer
            QMetaMethod* cbval1 = const_cast<QMetaMethod*>(&signal_ret);

            bool callback_ret = qhxymodelmapper_issignalconnected_callback(this, cbval1);
            return callback_ret;
        } else {
            return QHXYModelMapper::isSignalConnected(signal);
        }
    }

    // Friend functions
    friend void QHXYModelMapper_TimerEvent(QHXYModelMapper* self, QTimerEvent* event);
    friend void QHXYModelMapper_QBaseTimerEvent(QHXYModelMapper* self, QTimerEvent* event);
    friend void QHXYModelMapper_ChildEvent(QHXYModelMapper* self, QChildEvent* event);
    friend void QHXYModelMapper_QBaseChildEvent(QHXYModelMapper* self, QChildEvent* event);
    friend void QHXYModelMapper_CustomEvent(QHXYModelMapper* self, QEvent* event);
    friend void QHXYModelMapper_QBaseCustomEvent(QHXYModelMapper* self, QEvent* event);
    friend void QHXYModelMapper_ConnectNotify(QHXYModelMapper* self, const QMetaMethod* signal);
    friend void QHXYModelMapper_QBaseConnectNotify(QHXYModelMapper* self, const QMetaMethod* signal);
    friend void QHXYModelMapper_DisconnectNotify(QHXYModelMapper* self, const QMetaMethod* signal);
    friend void QHXYModelMapper_QBaseDisconnectNotify(QHXYModelMapper* self, const QMetaMethod* signal);
    friend int QHXYModelMapper_First(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseFirst(const QHXYModelMapper* self);
    friend void QHXYModelMapper_SetFirst(QHXYModelMapper* self, int first);
    friend void QHXYModelMapper_QBaseSetFirst(QHXYModelMapper* self, int first);
    friend int QHXYModelMapper_Count(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseCount(const QHXYModelMapper* self);
    friend void QHXYModelMapper_SetCount(QHXYModelMapper* self, int count);
    friend void QHXYModelMapper_QBaseSetCount(QHXYModelMapper* self, int count);
    friend int QHXYModelMapper_Orientation(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseOrientation(const QHXYModelMapper* self);
    friend void QHXYModelMapper_SetOrientation(QHXYModelMapper* self, int orientation);
    friend void QHXYModelMapper_QBaseSetOrientation(QHXYModelMapper* self, int orientation);
    friend int QHXYModelMapper_XSection(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseXSection(const QHXYModelMapper* self);
    friend void QHXYModelMapper_SetXSection(QHXYModelMapper* self, int xSection);
    friend void QHXYModelMapper_QBaseSetXSection(QHXYModelMapper* self, int xSection);
    friend int QHXYModelMapper_YSection(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseYSection(const QHXYModelMapper* self);
    friend void QHXYModelMapper_SetYSection(QHXYModelMapper* self, int ySection);
    friend void QHXYModelMapper_QBaseSetYSection(QHXYModelMapper* self, int ySection);
    friend QObject* QHXYModelMapper_Sender(const QHXYModelMapper* self);
    friend QObject* QHXYModelMapper_QBaseSender(const QHXYModelMapper* self);
    friend int QHXYModelMapper_SenderSignalIndex(const QHXYModelMapper* self);
    friend int QHXYModelMapper_QBaseSenderSignalIndex(const QHXYModelMapper* self);
    friend int QHXYModelMapper_Receivers(const QHXYModelMapper* self, const char* signal);
    friend int QHXYModelMapper_QBaseReceivers(const QHXYModelMapper* self, const char* signal);
    friend bool QHXYModelMapper_IsSignalConnected(const QHXYModelMapper* self, const QMetaMethod* signal);
    friend bool QHXYModelMapper_QBaseIsSignalConnected(const QHXYModelMapper* self, const QMetaMethod* signal);
};

#endif
