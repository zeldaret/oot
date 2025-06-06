/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#pragma once

#include <stddef.h>
#include <stdio.h>
#include "mips_elf.h"

#include "vc_vector/vc_vector.h"

#define FAIRY_DEF_STRING(prefix, x) \
    { prefix##x, #x }

typedef enum {
    VERBOSITY_NONE,
    VERBOSITY_INFO,
    VERBOSITY_DEBUG //,
} VerbosityLevel;

extern VerbosityLevel gVerbosity;
extern bool gUseElfAlignment;

typedef Elf32_Ehdr FairyFileHeader;
typedef Elf32_Shdr FairySecHeader;
typedef Elf32_Sym FairySym;
typedef Elf32_Rel FairyRel;
typedef Elf32_Rela FairyRela;

typedef struct {
    int define;
    const char* string;
} FairyDefineString;

typedef struct {
    void* sectionData;
    int sectionType;
    size_t sectionEntryCount;
    size_t sectionEntrySize;
} FairySectionInfo;

typedef struct {
    FairySectionInfo symtabInfo;
    char* strtab;
    Elf32_Word progBitsSizes[3];
    vc_vector* progBitsSections;
    FairySectionInfo relocTablesInfo[3];
} FairyFileInfo;

typedef enum {
    FAIRY_SECTION_TEXT,
    FAIRY_SECTION_DATA,
    FAIRY_SECTION_RODATA,
    FAIRY_SECTION_OTHER //,
} FairySection;

/* Prints debugging information to stderr. To be used via the macros. */
int Fairy_DebugPrintf(const char* file, int line, const char* func, VerbosityLevel level, const char* fmt, ...);
#define FAIRY_INFO_PRINTF(fmt, ...) Fairy_DebugPrintf(__FILE__, __LINE__, __func__, VERBOSITY_INFO, fmt, __VA_ARGS__)
#define FAIRY_DEBUG_PRINTF(fmt, ...) Fairy_DebugPrintf(__FILE__, __LINE__, __func__, VERBOSITY_DEBUG, fmt, __VA_ARGS__)

const char* Fairy_StringFromDefine(const FairyDefineString* dict, int define);
bool Fairy_StartsWith(const char* string, const char* initial);

FairyFileHeader* Fairy_ReadFileHeader(FairyFileHeader* header, FILE* file);
FairySecHeader* Fairy_ReadSectionTable(FairySecHeader* sectionTable, FILE* file, size_t tableOffset, size_t number);
char* Fairy_ReadStringTable(char* stringTable, FILE* file, size_t tableOffset, size_t tableSize);
size_t Fairy_ReadSymbolTable(FairySym** symbolTableOut, FILE* file, size_t tableOffset, size_t tableSize);
size_t Fairy_ReadRelocs(FairyRela** relocsOut, FILE* file, int type, size_t offset, size_t size);

char* Fairy_GetSectionName(FairySecHeader* sectionTable, char* shstrtab, size_t index);
char* Fairy_GetSymbolName(FairySym* symtab, char* strtab, size_t index);

void Fairy_InitFile(FairyFileInfo* fileInfo, FILE* file);
void Fairy_DestroyFile(FairyFileInfo* fileInfo);
