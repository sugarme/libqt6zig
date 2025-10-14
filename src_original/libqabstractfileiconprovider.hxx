#pragma once
#ifndef SRCC_LIBVIRTUALQABSTRACTFILEICONPROVIDER_H
#define SRCC_LIBVIRTUALQABSTRACTFILEICONPROVIDER_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

// This class is a subclass of QAbstractFileIconProvider so that we can call protected methods
class VirtualQAbstractFileIconProvider final : public QAbstractFileIconProvider {

  public:
    // Virtual class boolean flag
    bool isVirtualQAbstractFileIconProvider = true;

    // Virtual class public types (including callbacks)
    using QAbstractFileIconProvider_Icon_Callback = QIcon* (*)(const QAbstractFileIconProvider*, int);
    using QAbstractFileIconProvider_Icon2_Callback = QIcon* (*)(const QAbstractFileIconProvider*, QFileInfo*);
    using QAbstractFileIconProvider_Type_Callback = const char* (*)(const QAbstractFileIconProvider*, QFileInfo*);
    using QAbstractFileIconProvider_SetOptions_Callback = void (*)(QAbstractFileIconProvider*, int);
    using QAbstractFileIconProvider_Options_Callback = int (*)();

  protected:
    // Instance callback storage
    QAbstractFileIconProvider_Icon_Callback qabstractfileiconprovider_icon_callback = nullptr;
    QAbstractFileIconProvider_Icon2_Callback qabstractfileiconprovider_icon2_callback = nullptr;
    QAbstractFileIconProvider_Type_Callback qabstractfileiconprovider_type_callback = nullptr;
    QAbstractFileIconProvider_SetOptions_Callback qabstractfileiconprovider_setoptions_callback = nullptr;
    QAbstractFileIconProvider_Options_Callback qabstractfileiconprovider_options_callback = nullptr;

    // Instance base flags
    mutable bool qabstractfileiconprovider_icon_isbase = false;
    mutable bool qabstractfileiconprovider_icon2_isbase = false;
    mutable bool qabstractfileiconprovider_type_isbase = false;
    mutable bool qabstractfileiconprovider_setoptions_isbase = false;
    mutable bool qabstractfileiconprovider_options_isbase = false;

  public:
    VirtualQAbstractFileIconProvider() : QAbstractFileIconProvider() {};

    ~VirtualQAbstractFileIconProvider() {
        qabstractfileiconprovider_icon_callback = nullptr;
        qabstractfileiconprovider_icon2_callback = nullptr;
        qabstractfileiconprovider_type_callback = nullptr;
        qabstractfileiconprovider_setoptions_callback = nullptr;
        qabstractfileiconprovider_options_callback = nullptr;
    }

    // Callback setters
    inline void setQAbstractFileIconProvider_Icon_Callback(QAbstractFileIconProvider_Icon_Callback cb) { qabstractfileiconprovider_icon_callback = cb; }
    inline void setQAbstractFileIconProvider_Icon2_Callback(QAbstractFileIconProvider_Icon2_Callback cb) { qabstractfileiconprovider_icon2_callback = cb; }
    inline void setQAbstractFileIconProvider_Type_Callback(QAbstractFileIconProvider_Type_Callback cb) { qabstractfileiconprovider_type_callback = cb; }
    inline void setQAbstractFileIconProvider_SetOptions_Callback(QAbstractFileIconProvider_SetOptions_Callback cb) { qabstractfileiconprovider_setoptions_callback = cb; }
    inline void setQAbstractFileIconProvider_Options_Callback(QAbstractFileIconProvider_Options_Callback cb) { qabstractfileiconprovider_options_callback = cb; }

    // Base flag setters
    inline void setQAbstractFileIconProvider_Icon_IsBase(bool value) const { qabstractfileiconprovider_icon_isbase = value; }
    inline void setQAbstractFileIconProvider_Icon2_IsBase(bool value) const { qabstractfileiconprovider_icon2_isbase = value; }
    inline void setQAbstractFileIconProvider_Type_IsBase(bool value) const { qabstractfileiconprovider_type_isbase = value; }
    inline void setQAbstractFileIconProvider_SetOptions_IsBase(bool value) const { qabstractfileiconprovider_setoptions_isbase = value; }
    inline void setQAbstractFileIconProvider_Options_IsBase(bool value) const { qabstractfileiconprovider_options_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual QIcon icon(QAbstractFileIconProvider::IconType param1) const override {
        if (qabstractfileiconprovider_icon_isbase) {
            qabstractfileiconprovider_icon_isbase = false;
            return QAbstractFileIconProvider::icon(param1);
        } else if (qabstractfileiconprovider_icon_callback != nullptr) {
            int cbval1 = static_cast<int>(param1);

            QIcon* callback_ret = qabstractfileiconprovider_icon_callback(this, cbval1);
            return *callback_ret;
        } else {
            return QAbstractFileIconProvider::icon(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QIcon icon(const QFileInfo& param1) const override {
        if (qabstractfileiconprovider_icon2_isbase) {
            qabstractfileiconprovider_icon2_isbase = false;
            return QAbstractFileIconProvider::icon(param1);
        } else if (qabstractfileiconprovider_icon2_callback != nullptr) {
            const QFileInfo& param1_ret = param1;
            // Cast returned reference into pointer
            QFileInfo* cbval1 = const_cast<QFileInfo*>(&param1_ret);

            QIcon* callback_ret = qabstractfileiconprovider_icon2_callback(this, cbval1);
            return *callback_ret;
        } else {
            return QAbstractFileIconProvider::icon(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QString type(const QFileInfo& param1) const override {
        if (qabstractfileiconprovider_type_isbase) {
            qabstractfileiconprovider_type_isbase = false;
            return QAbstractFileIconProvider::type(param1);
        } else if (qabstractfileiconprovider_type_callback != nullptr) {
            const QFileInfo& param1_ret = param1;
            // Cast returned reference into pointer
            QFileInfo* cbval1 = const_cast<QFileInfo*>(&param1_ret);

            const char* callback_ret = qabstractfileiconprovider_type_callback(this, cbval1);
            QString callback_ret_QString = QString::fromUtf8(callback_ret);
            return callback_ret_QString;
        } else {
            return QAbstractFileIconProvider::type(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setOptions(QFlags<QAbstractFileIconProvider::Option> options) override {
        if (qabstractfileiconprovider_setoptions_isbase) {
            qabstractfileiconprovider_setoptions_isbase = false;
            QAbstractFileIconProvider::setOptions(options);
        } else if (qabstractfileiconprovider_setoptions_callback != nullptr) {
            int cbval1 = static_cast<int>(options);

            qabstractfileiconprovider_setoptions_callback(this, cbval1);
        } else {
            QAbstractFileIconProvider::setOptions(options);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractFileIconProvider::Options options() const override {
        if (qabstractfileiconprovider_options_isbase) {
            qabstractfileiconprovider_options_isbase = false;
            return QAbstractFileIconProvider::options();
        } else if (qabstractfileiconprovider_options_callback != nullptr) {
            int callback_ret = qabstractfileiconprovider_options_callback();
            return static_cast<QAbstractFileIconProvider::Options>(callback_ret);
        } else {
            return QAbstractFileIconProvider::options();
        }
    }
};

#endif
