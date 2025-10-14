#pragma once
#ifndef SRCC_LIBQSTYLEHINTS_H
#define SRCC_LIBQSTYLEHINTS_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QChar QChar;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QStyleHints QStyleHints;
#endif

QMetaObject* QStyleHints_MetaObject(const QStyleHints* self);
void* QStyleHints_Metacast(QStyleHints* self, const char* param1);
int QStyleHints_Metacall(QStyleHints* self, int param1, int param2, void** param3);
libqt_string QStyleHints_Tr(const char* s);
void QStyleHints_SetMouseDoubleClickInterval(QStyleHints* self, int mouseDoubleClickInterval);
int QStyleHints_MouseDoubleClickInterval(const QStyleHints* self);
int QStyleHints_MouseDoubleClickDistance(const QStyleHints* self);
int QStyleHints_TouchDoubleTapDistance(const QStyleHints* self);
void QStyleHints_SetMousePressAndHoldInterval(QStyleHints* self, int mousePressAndHoldInterval);
int QStyleHints_MousePressAndHoldInterval(const QStyleHints* self);
void QStyleHints_SetStartDragDistance(QStyleHints* self, int startDragDistance);
int QStyleHints_StartDragDistance(const QStyleHints* self);
void QStyleHints_SetStartDragTime(QStyleHints* self, int startDragTime);
int QStyleHints_StartDragTime(const QStyleHints* self);
int QStyleHints_StartDragVelocity(const QStyleHints* self);
void QStyleHints_SetKeyboardInputInterval(QStyleHints* self, int keyboardInputInterval);
int QStyleHints_KeyboardInputInterval(const QStyleHints* self);
int QStyleHints_KeyboardAutoRepeatRate(const QStyleHints* self);
double QStyleHints_KeyboardAutoRepeatRateF(const QStyleHints* self);
void QStyleHints_SetCursorFlashTime(QStyleHints* self, int cursorFlashTime);
int QStyleHints_CursorFlashTime(const QStyleHints* self);
bool QStyleHints_ShowIsFullScreen(const QStyleHints* self);
bool QStyleHints_ShowIsMaximized(const QStyleHints* self);
bool QStyleHints_ShowShortcutsInContextMenus(const QStyleHints* self);
void QStyleHints_SetShowShortcutsInContextMenus(QStyleHints* self, bool showShortcutsInContextMenus);
int QStyleHints_ContextMenuTrigger(const QStyleHints* self);
void QStyleHints_SetContextMenuTrigger(QStyleHints* self, int contextMenuTrigger);
int QStyleHints_PasswordMaskDelay(const QStyleHints* self);
QChar* QStyleHints_PasswordMaskCharacter(const QStyleHints* self);
double QStyleHints_FontSmoothingGamma(const QStyleHints* self);
bool QStyleHints_UseRtlExtensions(const QStyleHints* self);
bool QStyleHints_SetFocusOnTouchRelease(const QStyleHints* self);
int QStyleHints_TabFocusBehavior(const QStyleHints* self);
void QStyleHints_SetTabFocusBehavior(QStyleHints* self, int tabFocusBehavior);
bool QStyleHints_SingleClickActivation(const QStyleHints* self);
bool QStyleHints_UseHoverEffects(const QStyleHints* self);
void QStyleHints_SetUseHoverEffects(QStyleHints* self, bool useHoverEffects);
int QStyleHints_WheelScrollLines(const QStyleHints* self);
void QStyleHints_SetWheelScrollLines(QStyleHints* self, int scrollLines);
void QStyleHints_SetMouseQuickSelectionThreshold(QStyleHints* self, int threshold);
int QStyleHints_MouseQuickSelectionThreshold(const QStyleHints* self);
int QStyleHints_ColorScheme(const QStyleHints* self);
void QStyleHints_SetColorScheme(QStyleHints* self, int scheme);
void QStyleHints_UnsetColorScheme(QStyleHints* self);
void QStyleHints_CursorFlashTimeChanged(QStyleHints* self, int cursorFlashTime);
void QStyleHints_Connect_CursorFlashTimeChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_KeyboardInputIntervalChanged(QStyleHints* self, int keyboardInputInterval);
void QStyleHints_Connect_KeyboardInputIntervalChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_MouseDoubleClickIntervalChanged(QStyleHints* self, int mouseDoubleClickInterval);
void QStyleHints_Connect_MouseDoubleClickIntervalChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_MousePressAndHoldIntervalChanged(QStyleHints* self, int mousePressAndHoldInterval);
void QStyleHints_Connect_MousePressAndHoldIntervalChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_StartDragDistanceChanged(QStyleHints* self, int startDragDistance);
void QStyleHints_Connect_StartDragDistanceChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_StartDragTimeChanged(QStyleHints* self, int startDragTime);
void QStyleHints_Connect_StartDragTimeChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_TabFocusBehaviorChanged(QStyleHints* self, int tabFocusBehavior);
void QStyleHints_Connect_TabFocusBehaviorChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_UseHoverEffectsChanged(QStyleHints* self, bool useHoverEffects);
void QStyleHints_Connect_UseHoverEffectsChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_ShowShortcutsInContextMenusChanged(QStyleHints* self, bool param1);
void QStyleHints_Connect_ShowShortcutsInContextMenusChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_ContextMenuTriggerChanged(QStyleHints* self, int contextMenuTrigger);
void QStyleHints_Connect_ContextMenuTriggerChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_WheelScrollLinesChanged(QStyleHints* self, int scrollLines);
void QStyleHints_Connect_WheelScrollLinesChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_MouseQuickSelectionThresholdChanged(QStyleHints* self, int threshold);
void QStyleHints_Connect_MouseQuickSelectionThresholdChanged(QStyleHints* self, intptr_t slot);
void QStyleHints_ColorSchemeChanged(QStyleHints* self, int colorScheme);
void QStyleHints_Connect_ColorSchemeChanged(QStyleHints* self, intptr_t slot);
libqt_string QStyleHints_Tr2(const char* s, const char* c);
libqt_string QStyleHints_Tr3(const char* s, const char* c, int n);
void QStyleHints_Delete(QStyleHints* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
