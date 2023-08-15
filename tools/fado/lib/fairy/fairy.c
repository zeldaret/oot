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
    assert(fread(header, sizeof(char), 0x34, file) == 0x34);

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
    assert(fread(sectionTable, sizeof(char), tableSize, file) == tableSize);

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

size_t Fairy_ReadSymbolTable(FairySym** symbolTableOut, FILE* file, size_t tableOffset, size_t tableSize) {
    size_t number = tableSize / sizeof(FairySym);
    FairySym* symbolTable = malloc(tableSize);

    *symbolTableOut = NULL;

    if (symbolTable == NULL) {
        return 0;
    }
    if (fseek(file, tableOffset, SEEK_SET) != 0 || fread(symbolTable, sizeof(char), tableSize, file) != tableSize) {
        free(symbolTable);
        return 0;
    }

    /* Reend the variables that are wider than bytes */
    {
        size_t i;
        for (i = 0; i < number; i++) {
            symbolTable[i].st_name = REEND32(symbolTable[i].st_name);
            symbolTable[i].st_value = REEND32(symbolTable[i].st_value);
            symbolTable[i].st_size = REEND32(symbolTable[i].st_size);
            symbolTable[i].st_shndx = REEND16(symbolTable[i].st_shndx);
        }
    }

    *symbolTableOut = symbolTable;
    return number;
}

/* Can be used for both the section header string table and the strtab */
char* Fairy_ReadStringTable(char* stringTable, FILE* file, size_t tableOffset, size_t tableSize) {
    fseek(file, tableOffset, SEEK_SET);
    assert(fread(stringTable, sizeof(char), tableSize, file) == tableSize);
    return stringTable;
}

/* offset and number are attained from the section table, the returned pointer must be freed */
size_t Fairy_ReadRelocs(FairyRela** relocsOut, FILE* file, int type, size_t offset, size_t size) {
    /* Final size of the relocation table, relocations of type SHT_REL need more space for extra addend of 0 */
    size_t finalSize = (type == SHT_REL) ? ((size * sizeof(FairyRela)) / sizeof(FairyRel)) : size;
    void* readBuf = malloc(size);
    FairyRela* relocTable = malloc(finalSize);

    *relocsOut = NULL;

    if (readBuf == NULL) {
        return 0;
    }
    if (relocTable == NULL) {
        free(readBuf);
        return 0;
    }
    if (fseek(file, offset, SEEK_SET) != 0 || fread(readBuf, sizeof(char), size, file) != size) {
        free(readBuf);
        free(relocTable);
        return 0;
    }

    /* Reend the variables that are wider than bytes */
    {
        size_t i;
        uint32_t* data = (uint32_t*)readBuf;
        for (i = 0; i < size / sizeof(uint32_t); i++) {
            data[i] = REEND32(data[i]);
        }
    }

    /* Make the relocation table, for SHT_REL sections add an addend of 0 */
    if (type == SHT_REL) {
        size_t i;
        FairyRel* rel = (FairyRel*)readBuf;

        for (i = 0; i < size / sizeof(FairyRel); i++) {
            relocTable[i].r_info = rel[i].r_info;
            relocTable[i].r_offset = rel[i].r_offset;
            relocTable[i].r_addend = 0;
        }
    } else {
        memcpy(relocTable, readBuf, size);
    }
    free(readBuf);

    *relocsOut = relocTable;
    return finalSize / sizeof(FairyRela);
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
    assert(fread(shstrtab, sizeof(char), sectionTable[fileHeader.e_shstrndx].sh_size, file) ==
           sectionTable[fileHeader.e_shstrndx].sh_size);

    /* Search for the sections we need */
    {
        size_t currentIndex;
        FairySecHeader currentSection;
        for (currentIndex = 0; currentIndex < 3; currentIndex++) {
            fileInfo->relocTablesInfo[currentIndex].sectionData = NULL;
        }

        for (currentIndex = 0; currentIndex < fileHeader.e_shnum; currentIndex++) {
            size_t off = 0;

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
                        fileInfo->symtabInfo.sectionType = SHT_SYMTAB;
                        fileInfo->symtabInfo.sectionEntrySize = sizeof(FairySym);
                        fileInfo->symtabInfo.sectionEntryCount =
                            Fairy_ReadSymbolTable((FairySym**)&fileInfo->symtabInfo.sectionData, file,
                                                  currentSection.sh_offset, currentSection.sh_size);
                    }
                    break;

                case SHT_STRTAB:
                    if (strcmp(&shstrtab[currentSection.sh_name + 1], "strtab") == 0) {
                        FAIRY_DEBUG_PRINTF("%s", "strtab found\n");
                        fileInfo->strtab = malloc(currentSection.sh_size);
                        Fairy_ReadStringTable(fileInfo->strtab, file, currentSection.sh_offset, currentSection.sh_size);
                    }
                    break;

                case SHT_RELA:
                    off += 1;
                case SHT_REL:
                    off += 5;
                    /* This assumes only one reloc section of each name */
                    // TODO: is this a problem?
                    {
                        FairySection relocSection = FAIRY_SECTION_OTHER;

                        /* Ignore the first 5/6 chars, which will always be ".rel."/".rela." */
                        if (strcmp(&shstrtab[currentSection.sh_name + off], "text") == 0) {
                            relocSection = FAIRY_SECTION_TEXT;
                        } else if (strcmp(&shstrtab[currentSection.sh_name + off], "data") == 0) {
                            relocSection = FAIRY_SECTION_DATA;
                        } else if (strcmp(&shstrtab[currentSection.sh_name + off], "rodata") == 0) {
                            relocSection = FAIRY_SECTION_RODATA;
                        } else {
                            break;
                        }
                        FAIRY_DEBUG_PRINTF("Found %s section\n", &shstrtab[currentSection.sh_name]);

                        fileInfo->relocTablesInfo[relocSection].sectionType = SHT_RELA;
                        fileInfo->relocTablesInfo[relocSection].sectionEntrySize = sizeof(FairyRela);
                        fileInfo->relocTablesInfo[relocSection].sectionEntryCount =
                            Fairy_ReadRelocs((FairyRela**)&fileInfo->relocTablesInfo[relocSection].sectionData, file,
                                             currentSection.sh_type, currentSection.sh_offset, currentSection.sh_size);
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
