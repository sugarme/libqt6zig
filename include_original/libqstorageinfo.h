#pragma once
#ifndef SRCC_LIBQSTORAGEINFO_H
#define SRCC_LIBQSTORAGEINFO_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QDir QDir;
typedef struct QStorageInfo QStorageInfo;
#endif

QStorageInfo* QStorageInfo_new();
QStorageInfo* QStorageInfo_new2(const libqt_string path);
QStorageInfo* QStorageInfo_new3(const QDir* dir);
QStorageInfo* QStorageInfo_new4(const QStorageInfo* other);
void QStorageInfo_OperatorAssign(QStorageInfo* self, const QStorageInfo* other);
void QStorageInfo_Swap(QStorageInfo* self, QStorageInfo* other);
void QStorageInfo_SetPath(QStorageInfo* self, const libqt_string path);
libqt_string QStorageInfo_RootPath(const QStorageInfo* self);
libqt_string QStorageInfo_Device(const QStorageInfo* self);
libqt_string QStorageInfo_Subvolume(const QStorageInfo* self);
libqt_string QStorageInfo_FileSystemType(const QStorageInfo* self);
libqt_string QStorageInfo_Name(const QStorageInfo* self);
libqt_string QStorageInfo_DisplayName(const QStorageInfo* self);
long long QStorageInfo_BytesTotal(const QStorageInfo* self);
long long QStorageInfo_BytesFree(const QStorageInfo* self);
long long QStorageInfo_BytesAvailable(const QStorageInfo* self);
int QStorageInfo_BlockSize(const QStorageInfo* self);
bool QStorageInfo_IsRoot(const QStorageInfo* self);
bool QStorageInfo_IsReadOnly(const QStorageInfo* self);
bool QStorageInfo_IsReady(const QStorageInfo* self);
bool QStorageInfo_IsValid(const QStorageInfo* self);
void QStorageInfo_Refresh(QStorageInfo* self);
libqt_list /* of QStorageInfo* */ QStorageInfo_MountedVolumes();
QStorageInfo* QStorageInfo_Root();
void QStorageInfo_Delete(QStorageInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
