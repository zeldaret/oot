/**
 * Functions for working with N64 ELF files.
 */
/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include "fairy.h"

#include <assert.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "vc_vector/vc_vector.h"
#include "macros.h"

VerbosityLevel gVerbosity = VERBOSITY_NONE;
bool gUseElfAlignment = false;

int Fairy_DebugPrintf(const char* file, int line, const char* func, VerbosityLevel level, const char* fmt, ...) {
    if (gVerbosity >= level) {
        int ret = 0;
        va_list args;
        va_start(args, fmt);

        if (gVerbosity >= VERBOSITY_DEBUG) {
            ret += fprintf(stderr, "%s:%d:%s: ", file, line, func);
        }

        ret += vfprintf(stderr, fmt, args);
        va_end(args);
        return ret;
    }
    return 0;
}

/* Endian readers. MIPS is BE, so only need these */
static Elf32_Half Fairy_ReadHalf(const uint8_t* data) {
    return data[0] << 8 | data[1] << 0;
}

static Elf32_Word Fairy_ReadWord(const uint8_t* data) {
    return data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3] << 0;
}

static bool Fairy_VerifyMagic(const uint8_t* data) {
    return (data[0] == 0x7F && data[1] == 'E' && data[2] == 'L' && data[3] == 'F');
}

static uint16_t Fairy_Swap16(uint16_t x) {
    return ((x & 0xFF) << 0x8) | ((x & 0xFF00) >> 0x8);
}

static uint32_t Fairy_Swap32(uint32_t x) {
    return ((x & 0xFF) << 0x18) | ((x & 0xFF00) << 0x8) | ((x & 0xFF0000) >> 0x8) | ((x & 0xFF000000) >> 0x18);
}

/* Both GCC and Clang define these, so we can avoid an endian header altogether */
#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
#define REEND16(x) Fairy_Swap16(x)
#define REEND32(x) Fairy_Swap32(x)
#else
#define REEND16(x) (x)
#define REEND32(x) (x)
#endif

const char* Fairy_StringFromDefine(const FairyDefineString* dict, int define) {
    size_t i;
    for (i = 0; dict[i].string != NULL; i++) {
        if (dict[i].define == define) {
            return dict[i].string;
        }
    }
    return NULL;
}

/**
 * Returns true if the string 'initial' is contained in the string 'string'
 * 'initial' must be null-terminated, 'string' ideally is.
 */
bool Fairy_StartsWith(const char* string, const char* initial) {
    char s;
    char i;
    do {
        s = *string++;
        i = *initial++;
        if (i == '\0') {
            return true;
        }
    } while (s == i);
    return false;
}

/* Reading functions */

/**
 * Every reading function:
 * - Returns the pointer to the struct
 * - Takes the ouput struct or array as its first argument. This must be pre-allocated
 * - Takes the input file as the second argument (At least until I am persuaded to read the whole file into RAM...)
 * - The rest of the arguments are important information about the struct it is reading (offset and size, usually)
 */

FairyFileHeader* Fairy_ReadFileHeader(FairyFileHeader* header, FILE* file) {
    fseek(file, 0, SEEK_SET);
    assert(fread(header, 0x34, 1, file) != 0);

    if (!Fairy_VerifyMagic(header->e_ident)) {
        fprintf(stderr, "Not a valid ELF file.\n");
        return NULL;
    }

    if (header->e_ident[EI_CLASS] != ELFCLASS32) {
        fprintf(stderr, "Not a 32-bit ELF file.\n");
        return NULL;
    }

    header->e_type = REEND16(header->e_type);
    if (header->e_type != ET_REL) {
        fprintf(stderr, "Not a relocatable object file.\n");
        return NULL;
    }

    header->e_machine = REEND16(header->e_machine);
    if (header->e_machine != EM_MIPS) {
        fprintf(stderr, "Not a MIPS object file.\n");
        return NULL;
    }

    header->e_version = REEND32(header->e_version);
    header->e_entry = REEND32(header->e_entry);
    header->e_phoff = REEND32(header->e_phoff);
    header->e_shoff = REEND32(header->e_shoff);
    header->e_flags = REEND32(header->e_flags);
    header->e_ehsize = REEND16(header->e_ehsize);
    header->e_phentsize = REEND16(header->e_phentsize);
    header->e_phnum = REEND16(header->e_phnum);
    header->e_shentsize = REEND16(header->e_shentsize);
    header->e_shnum = REEND16(header->e_shnum);
    header->e_shstrndx = REEND16(header->e_shstrndx);

    return header;
}

/* tableOffset and number should be obtained from the file header */
FairySecHeader* Fairy_ReadSectionTable(FairySecHeader* sectionTable, FILE* file, size_t tableOffset, size_t number) {
    size_t entrySize = sizeof(FairySecHeader);
    size_t tableSize = number * entrySize;

    fseek(file, tableOffset, SEEK_SET);
    assert(fread(sectionTable, tableSize, 1, file) != 0);

    /* Since the section table happens to only have entries of width 4, we can byteswap it by pretending it is a raw
     * uint32_t array */
    {
        size_t i;
        uint32_t* data = (uint32_t*)sectionTable;
        for (i = 0; i < tableSize / sizeof(uint32_t); i++) {
            data[i] = REEND32(data[i]);
        }
    }

    return sectionTable;
}

FairySym* Fairy_ReadSymbolTable(FairySym* symbolTable, FILE* file, size_t tableOffset, size_t tableSize) {
    size_t number = tableSize / sizeof(FairySym);

    fseek(file, tableOffset, SEEK_SET);
    assert(fread(symbolTable, tableSize, 1, file) != 0);

    /* Reend the variables that are larger than bytes */
    {
        size_t i;
        for (i = 0; i < number; i++) {
            symbolTable[i].st_name = REEND32(symbolTable[i].st_name);
            symbolTable[i].st_value = REEND32(symbolTable[i].st_value);
            symbolTable[i].st_size = REEND32(symbolTable[i].st_size);
            symbolTable[i].st_shndx = REEND16(symbolTable[i].st_shndx);
        }
    }

    return symbolTable;
}

/* Can be used for both the section header string table and the strtab */
char* Fairy_ReadStringTable(char* stringTable, FILE* file, size_t tableOffset, size_t tableSize) {
    fseek(file, tableOffset, SEEK_SET);
    assert(fread(stringTable, tableSize, 1, file) != 0);
    return stringTable;
}

/* offset and number are attained from the section table */
FairyRel* Fairy_ReadRelocs(FairyRel* relocTable, FILE* file, size_t offset, size_t size) {
    fseek(file, offset, SEEK_SET);
    assert(fread(relocTable, size, 1, file) != 0);

    /* Reend the variables that are larger than bytes */
    {
        size_t i;
        uint32_t* data = (uint32_t*)relocTable;
        for (i = 0; i < size / sizeof(uint32_t); i++) {
            data[i] = REEND32(data[i]);
        }
    }

    return relocTable;
}

char* Fairy_GetSectionName(FairySecHeader* sectionTable, char* shstrtab, size_t index) {
    return &shstrtab[sectionTable[index].sh_name];
}

/* Look up the index in the symbol table and return a pointer to the beginning of its string */
char* Fairy_GetSymbolName(FairySym* symtab, char* strtab, size_t index) {
    return &strtab[symtab[index].st_name];
}

/* FairyFileInfo functions */

void Fairy_InitFile(FairyFileInfo* fileInfo, FILE* file) {
    FairyFileHeader fileHeader;
    FairySecHeader* sectionTable;
    char* shstrtab;
    int i;

    assert(fileInfo != NULL);
    assert(file != NULL);

    fileInfo->progBitsSections = vc_vector_create(3, sizeof(Elf32_Section), NULL);
    for (i = 0; i < 3; i++) {
        fileInfo->progBitsSizes[i] = 0;
    }
    Fairy_ReadFileHeader(&fileHeader, file);

    sectionTable = malloc(fileHeader.e_shnum * fileHeader.e_shentsize);
    Fairy_ReadSectionTable(sectionTable, file, fileHeader.e_shoff, fileHeader.e_shnum);

    shstrtab = malloc(sectionTable[fileHeader.e_shstrndx].sh_size * sizeof(char));
    fseek(file, sectionTable[fileHeader.e_shstrndx].sh_offset, SEEK_SET);
    assert(fread(shstrtab, sectionTable[fileHeader.e_shstrndx].sh_size, 1, file) != 0);

    /* Search for the sections we need */
    {
        size_t currentIndex;
        FairySecHeader currentSection;
        for (currentIndex = 0; currentIndex < 3; currentIndex++) {
            fileInfo->relocTablesInfo[currentIndex].sectionData = NULL;
        }

        for (currentIndex = 0; currentIndex < fileHeader.e_shnum; currentIndex++) {
            currentSection = sectionTable[currentIndex];

            switch (currentSection.sh_type) {
                case SHT_PROGBITS:
                    assert(vc_vector_push_back(fileInfo->progBitsSections, &currentIndex));

                    {
                        FairySection sectionType = FAIRY_SECTION_OTHER;
                        const char* sectionName = &shstrtab[currentSection.sh_name + 1];
                        size_t alignedSize;

                        /* Ignore the leading "." */
                        if (strcmp(sectionName, "text") == 0) {
                            sectionType = FAIRY_SECTION_TEXT;
                        } else if (strcmp(sectionName, "data") == 0) {
                            sectionType = FAIRY_SECTION_DATA;
                        } else if (Fairy_StartsWith(sectionName, "rodata")) { /* May be several */
                            sectionType = FAIRY_SECTION_RODATA;
                        }

                        if (sectionType != FAIRY_SECTION_OTHER) {
                            if (gUseElfAlignment) {
                                /* Ensure the next file will start at its correct alignment */
                                fileInfo->progBitsSizes[sectionType] =
                                    ALIGN(fileInfo->progBitsSizes[sectionType], currentSection.sh_addralign);

                                alignedSize = ALIGN(currentSection.sh_size, currentSection.sh_addralign);

                                FAIRY_DEBUG_PRINTF("%s section alignment: 0x%X\n", sectionName,
                                                   currentSection.sh_addralign);
                                FAIRY_DEBUG_PRINTF("%s section size before align: 0x%X\n", sectionName,
                                                   currentSection.sh_size);
                                FAIRY_DEBUG_PRINTF("%s section size after align: 0x%X\n", sectionName, alignedSize);

                                fileInfo->progBitsSizes[sectionType] += alignedSize;
                            } else {
                                fileInfo->progBitsSizes[sectionType] += ALIGN(currentSection.sh_size, 0x10);
                            }

                            FAIRY_DEBUG_PRINTF("%s section size: 0x%X\n", sectionName,
                                               fileInfo->progBitsSizes[sectionType]);
                        }
                    }

                    break;

                case SHT_SYMTAB:
                    if (strcmp(&shstrtab[currentSection.sh_name + 1], "symtab") == 0) {
                        fileInfo->symtabInfo.sectionSize = currentSection.sh_size;
                        fileInfo->symtabInfo.sectionData = malloc(currentSection.sh_size);
                        Fairy_ReadSymbolTable(fileInfo->symtabInfo.sectionData, file, currentSection.sh_offset,
                                              currentSection.sh_size);
                    }
                    break;

                case SHT_STRTAB:
                    if (strcmp(&shstrtab[currentSection.sh_name + 1], "strtab") == 0) {
                        FAIRY_DEBUG_PRINTF("%s", "strtab found\n");
                        fileInfo->strtab = malloc(currentSection.sh_size);
                        Fairy_ReadStringTable(fileInfo->strtab, file, currentSection.sh_offset, currentSection.sh_size);
                    }
                    break;

                case SHT_REL:
                    /* This assumes only one reloc section of each name */
                    // TODO: is this a problem?
                    {
                        FairySection relocSection = FAIRY_SECTION_OTHER;

                        /* Ignore the first 5 chars, which will always be ".rel." */
                        if (strcmp(&shstrtab[currentSection.sh_name + 5], "text") == 0) {
                            relocSection = FAIRY_SECTION_TEXT;
                            FAIRY_DEBUG_PRINTF("%s", "Found rel.text section\n");
                        } else if (strcmp(&shstrtab[currentSection.sh_name + 5], "data") == 0) {
                            relocSection = FAIRY_SECTION_DATA;
                            FAIRY_DEBUG_PRINTF("%s", "Found rel.data section\n");
                        } else if (strcmp(&shstrtab[currentSection.sh_name + 5], "rodata") == 0) {
                            relocSection = FAIRY_SECTION_RODATA;
                            FAIRY_DEBUG_PRINTF("%s", "Found rel.rodata section\n");
                        } else {
                            break;
                        }

                        fileInfo->relocTablesInfo[relocSection].sectionSize = currentSection.sh_size;
                        fileInfo->relocTablesInfo[relocSection].sectionData = malloc(currentSection.sh_size);
                        Fairy_ReadRelocs(fileInfo->relocTablesInfo[relocSection].sectionData, file,
                                         currentSection.sh_offset, currentSection.sh_size);
                    }
                    break;

                default:
                    break;
            }
        }
    }

    free(sectionTable);
    free(shstrtab);
}

void Fairy_DestroyFile(FairyFileInfo* fileInfo) {
    size_t i;
    for (i = 0; i < ARRAY_COUNTU(fileInfo->relocTablesInfo); i++) {
        if (fileInfo->relocTablesInfo[i].sectionData != NULL) {
            FAIRY_DEBUG_PRINTF("Freeing reloc section %zd data\n", i);
            free(fileInfo->relocTablesInfo[i].sectionData);
        }
    }

    vc_vector_release(fileInfo->progBitsSections);

    FAIRY_DEBUG_PRINTF("%s", "Freeing symtab data\n");
    free(fileInfo->symtabInfo.sectionData);

    FAIRY_DEBUG_PRINTF("%s", "Freeing strtab data\n");
    free(fileInfo->strtab);
}
