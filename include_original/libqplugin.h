#pragma once
#ifndef SRCC_LIBQPLUGIN_H
#define SRCC_LIBQPLUGIN_H

#include <stdbool.h>
#include <stddef.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__ElfNoteHeader)
typedef QPluginMetaData::ElfNoteHeader QPluginMetaData__ElfNoteHeader;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__Header)
typedef QPluginMetaData::Header QPluginMetaData__Header;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPluginMetaData__MagicHeader)
typedef QPluginMetaData::MagicHeader QPluginMetaData__MagicHeader;
#endif
#else
typedef struct QJsonObject QJsonObject;
typedef struct QPluginMetaData QPluginMetaData;
typedef struct QPluginMetaData__ElfNoteHeader QPluginMetaData__ElfNoteHeader;
typedef struct QPluginMetaData__Header QPluginMetaData__Header;
typedef struct QPluginMetaData__MagicHeader QPluginMetaData__MagicHeader;
typedef struct QStaticPlugin QStaticPlugin;
#endif

unsigned char QPluginMetaData_ArchRequirements();
size_t QPluginMetaData_Size(const QPluginMetaData* self);
void QPluginMetaData_SetSize(QPluginMetaData* self, size_t size);
void QPluginMetaData_Delete(QPluginMetaData* self);

QStaticPlugin* QStaticPlugin_new(const QStaticPlugin* other);
QStaticPlugin* QStaticPlugin_new2(QStaticPlugin* other);
QStaticPlugin* QStaticPlugin_new3(const QStaticPlugin* param1);
void QStaticPlugin_CopyAssign(QStaticPlugin* self, QStaticPlugin* other);
void QStaticPlugin_MoveAssign(QStaticPlugin* self, QStaticPlugin* other);
QJsonObject* QStaticPlugin_MetaData(const QStaticPlugin* self);
void QStaticPlugin_Delete(QStaticPlugin* self);

QPluginMetaData__Header* QPluginMetaData__Header_new(const QPluginMetaData__Header* other);
QPluginMetaData__Header* QPluginMetaData__Header_new2(QPluginMetaData__Header* other);
QPluginMetaData__Header* QPluginMetaData__Header_new3(const QPluginMetaData__Header* param1);
void QPluginMetaData__Header_CopyAssign(QPluginMetaData__Header* self, QPluginMetaData__Header* other);
void QPluginMetaData__Header_MoveAssign(QPluginMetaData__Header* self, QPluginMetaData__Header* other);
unsigned char QPluginMetaData__Header_Version(const QPluginMetaData__Header* self);
void QPluginMetaData__Header_SetVersion(QPluginMetaData__Header* self, unsigned char version);
unsigned char QPluginMetaData__Header_MajorVersion(const QPluginMetaData__Header* self);
void QPluginMetaData__Header_SetQtMajorVersion(QPluginMetaData__Header* self, unsigned char qt_major_version);
unsigned char QPluginMetaData__Header_MinorVersion(const QPluginMetaData__Header* self);
void QPluginMetaData__Header_SetQtMinorVersion(QPluginMetaData__Header* self, unsigned char qt_minor_version);
unsigned char QPluginMetaData__Header_PluginArchRequirements(const QPluginMetaData__Header* self);
void QPluginMetaData__Header_SetPluginArchRequirements(QPluginMetaData__Header* self, unsigned char plugin_arch_requirements);
void QPluginMetaData__Header_Delete(QPluginMetaData__Header* self);

QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new(const QPluginMetaData__MagicHeader* other);
QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new2(QPluginMetaData__MagicHeader* other);
QPluginMetaData__MagicHeader* QPluginMetaData__MagicHeader_new3();
void QPluginMetaData__MagicHeader_CopyAssign(QPluginMetaData__MagicHeader* self, QPluginMetaData__MagicHeader* other);
void QPluginMetaData__MagicHeader_MoveAssign(QPluginMetaData__MagicHeader* self, QPluginMetaData__MagicHeader* other);
QPluginMetaData__Header* QPluginMetaData__MagicHeader_Header(const QPluginMetaData__MagicHeader* self);
void QPluginMetaData__MagicHeader_SetHeader(QPluginMetaData__MagicHeader* self, QPluginMetaData__Header* header);
void QPluginMetaData__MagicHeader_Delete(QPluginMetaData__MagicHeader* self);

QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new(const QPluginMetaData__ElfNoteHeader* other);
QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new2(QPluginMetaData__ElfNoteHeader* other);
QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new3(unsigned int payloadSize);
QPluginMetaData__ElfNoteHeader* QPluginMetaData__ElfNoteHeader_new4(const QPluginMetaData__ElfNoteHeader* param1);
void QPluginMetaData__ElfNoteHeader_CopyAssign(QPluginMetaData__ElfNoteHeader* self, QPluginMetaData__ElfNoteHeader* other);
void QPluginMetaData__ElfNoteHeader_MoveAssign(QPluginMetaData__ElfNoteHeader* self, QPluginMetaData__ElfNoteHeader* other);
unsigned int QPluginMetaData__ElfNoteHeader_NNamesz(const QPluginMetaData__ElfNoteHeader* self);
void QPluginMetaData__ElfNoteHeader_SetNNamesz(QPluginMetaData__ElfNoteHeader* self, unsigned int n_namesz);
unsigned int QPluginMetaData__ElfNoteHeader_NDescsz(const QPluginMetaData__ElfNoteHeader* self);
void QPluginMetaData__ElfNoteHeader_SetNDescsz(QPluginMetaData__ElfNoteHeader* self, unsigned int n_descsz);
unsigned int QPluginMetaData__ElfNoteHeader_NType(const QPluginMetaData__ElfNoteHeader* self);
void QPluginMetaData__ElfNoteHeader_SetNType(QPluginMetaData__ElfNoteHeader* self, unsigned int n_type);
QPluginMetaData__Header* QPluginMetaData__ElfNoteHeader_Header(const QPluginMetaData__ElfNoteHeader* self);
void QPluginMetaData__ElfNoteHeader_SetHeader(QPluginMetaData__ElfNoteHeader* self, QPluginMetaData__Header* header);
void QPluginMetaData__ElfNoteHeader_Delete(QPluginMetaData__ElfNoteHeader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
