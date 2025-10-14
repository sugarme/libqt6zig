#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkCookie>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineCookieStore>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebEngineCookieStore__FilterRequest
#include <qwebenginecookiestore.h>
#include "libqwebenginecookiestore.h"
#include "libqwebenginecookiestore.hxx"

QMetaObject* QWebEngineCookieStore_MetaObject(const QWebEngineCookieStore* self) {
    return (QMetaObject*)self->metaObject();
}

void* QWebEngineCookieStore_Metacast(QWebEngineCookieStore* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QWebEngineCookieStore_Metacall(QWebEngineCookieStore* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QWebEngineCookieStore_Tr(const char* s) {
    QString _ret = QWebEngineCookieStore::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QWebEngineCookieStore_SetCookie(QWebEngineCookieStore* self, const QNetworkCookie* cookie) {
    self->setCookie(*cookie);
}

void QWebEngineCookieStore_DeleteCookie(QWebEngineCookieStore* self, const QNetworkCookie* cookie) {
    self->deleteCookie(*cookie);
}

void QWebEngineCookieStore_DeleteSessionCookies(QWebEngineCookieStore* self) {
    self->deleteSessionCookies();
}

void QWebEngineCookieStore_DeleteAllCookies(QWebEngineCookieStore* self) {
    self->deleteAllCookies();
}

void QWebEngineCookieStore_LoadAllCookies(QWebEngineCookieStore* self) {
    self->loadAllCookies();
}

void QWebEngineCookieStore_CookieAdded(QWebEngineCookieStore* self, const QNetworkCookie* cookie) {
    self->cookieAdded(*cookie);
}

void QWebEngineCookieStore_Connect_CookieAdded(QWebEngineCookieStore* self, intptr_t slot) {
    void (*slotFunc)(QWebEngineCookieStore*, QNetworkCookie*) = reinterpret_cast<void (*)(QWebEngineCookieStore*, QNetworkCookie*)>(slot);
    QWebEngineCookieStore::connect(self, &QWebEngineCookieStore::cookieAdded, [self, slotFunc](const QNetworkCookie& cookie) {
        const QNetworkCookie& cookie_ret = cookie;
        // Cast returned reference into pointer
        QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
        slotFunc(self, sigval1);
    });
}

void QWebEngineCookieStore_CookieRemoved(QWebEngineCookieStore* self, const QNetworkCookie* cookie) {
    self->cookieRemoved(*cookie);
}

void QWebEngineCookieStore_Connect_CookieRemoved(QWebEngineCookieStore* self, intptr_t slot) {
    void (*slotFunc)(QWebEngineCookieStore*, QNetworkCookie*) = reinterpret_cast<void (*)(QWebEngineCookieStore*, QNetworkCookie*)>(slot);
    QWebEngineCookieStore::connect(self, &QWebEngineCookieStore::cookieRemoved, [self, slotFunc](const QNetworkCookie& cookie) {
        const QNetworkCookie& cookie_ret = cookie;
        // Cast returned reference into pointer
        QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
        slotFunc(self, sigval1);
    });
}

libqt_string QWebEngineCookieStore_Tr2(const char* s, const char* c) {
    QString _ret = QWebEngineCookieStore::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

libqt_string QWebEngineCookieStore_Tr3(const char* s, const char* c, int n) {
    QString _ret = QWebEngineCookieStore::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<const char*>(malloc(_str.len + 1));
    memcpy((void*)_str.data, _b.data(), _str.len);
    ((char*)_str.data)[_str.len] = '\0';
    return _str;
}

void QWebEngineCookieStore_SetCookie2(QWebEngineCookieStore* self, const QNetworkCookie* cookie, const QUrl* origin) {
    self->setCookie(*cookie, *origin);
}

void QWebEngineCookieStore_DeleteCookie2(QWebEngineCookieStore* self, const QNetworkCookie* cookie, const QUrl* origin) {
    self->deleteCookie(*cookie, *origin);
}

void QWebEngineCookieStore_Delete(QWebEngineCookieStore* self) {
    delete self;
}

QWebEngineCookieStore__FilterRequest* QWebEngineCookieStore__FilterRequest_new(const QWebEngineCookieStore__FilterRequest* param1) {
    return new QWebEngineCookieStore::FilterRequest(*param1);
}

QUrl* QWebEngineCookieStore__FilterRequest_FirstPartyUrl(const QWebEngineCookieStore__FilterRequest* self) {
    return new QUrl(self->firstPartyUrl);
}

void QWebEngineCookieStore__FilterRequest_SetFirstPartyUrl(QWebEngineCookieStore__FilterRequest* self, QUrl* firstPartyUrl) {
    self->firstPartyUrl = *firstPartyUrl;
}

QUrl* QWebEngineCookieStore__FilterRequest_Origin(const QWebEngineCookieStore__FilterRequest* self) {
    return new QUrl(self->origin);
}

void QWebEngineCookieStore__FilterRequest_SetOrigin(QWebEngineCookieStore__FilterRequest* self, QUrl* origin) {
    self->origin = *origin;
}

bool QWebEngineCookieStore__FilterRequest_ThirdParty(const QWebEngineCookieStore__FilterRequest* self) {
    return self->thirdParty;
}

void QWebEngineCookieStore__FilterRequest_SetThirdParty(QWebEngineCookieStore__FilterRequest* self, bool thirdParty) {
    self->thirdParty = thirdParty;
}

bool QWebEngineCookieStore__FilterRequest_ReservedFlag(const QWebEngineCookieStore__FilterRequest* self) {
    return self->_reservedFlag;
}

void QWebEngineCookieStore__FilterRequest_SetReservedFlag(QWebEngineCookieStore__FilterRequest* self, bool _reservedFlag) {
    self->_reservedFlag = _reservedFlag;
}

uint16_t QWebEngineCookieStore__FilterRequest_ReservedType(const QWebEngineCookieStore__FilterRequest* self) {
    return static_cast<uint16_t>(self->_reservedType);
}

void QWebEngineCookieStore__FilterRequest_SetReservedType(QWebEngineCookieStore__FilterRequest* self, uint16_t _reservedType) {
    self->_reservedType = static_cast<ushort>(_reservedType);
}

void QWebEngineCookieStore__FilterRequest_OperatorAssign(QWebEngineCookieStore__FilterRequest* self, const QWebEngineCookieStore__FilterRequest* param1) {
    self->operator=(*param1);
}

void QWebEngineCookieStore__FilterRequest_Delete(QWebEngineCookieStore__FilterRequest* self) {
    delete self;
}
