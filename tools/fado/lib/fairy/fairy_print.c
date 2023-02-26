/**
 * Functions for printing various sections of an N64 ELF file using the functions in Fairy, similarly to readelf
 */
/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include "fairy.h"

#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "fairy_data.inc"

void Fairy_PrintSymbolTable(FILE* inputFile) {
    FairyFileHeader fileHeader;
    FairySecHeader* sectionTable;
    size_t shstrndx;
    char* shstrtab;
    FairySym* symbolTable = NULL;
    size_t symbolTableNum = 0;
    char* strtab = NULL;

    Fairy_ReadFileHeader(&fileHeader, inputFile);
    sectionTable = malloc(fileHeader.e_shentsize * fileHeader.e_shnum);
    shstrndx = fileHeader.e_shstrndx;

    Fairy_ReadSectionTable(sectionTable, inputFile, fileHeader.e_shoff, fileHeader.e_shnum);

    shstrtab = malloc(sectionTable[shstrndx].sh_size * sizeof(char));

    fseek(inputFile, sectionTable[shstrndx].sh_offset, SEEK_SET);
    assert(fread(shstrtab, sizeof(char), sectionTable[shstrndx].sh_size, inputFile) == sectionTable[shstrndx].sh_size);

    {
        size_t currentIndex;
        size_t strtabndx = 0;
        for (currentIndex = 0; currentIndex < fileHeader.e_shnum; currentIndex++) {
            FairySecHeader currentHeader = sectionTable[currentIndex];

            switch (currentHeader.sh_type) {
                case SHT_SYMTAB:
                    if (strcmp(&shstrtab[currentHeader.sh_name], ".symtab") == 0) {
                        printf("symtab found\n");
                        symbolTableNum = Fairy_ReadSymbolTable(&symbolTable, inputFile, currentHeader.sh_offset,
                                                               currentHeader.sh_size);
                    }
                    break;

                case SHT_STRTAB:
                    if (strcmp(&shstrtab[currentHeader.sh_name], ".strtab") == 0) {
                        strtabndx = currentIndex;
                    }
                    break;

                default:
                    break;
            }
        }

        if (symbolTable == NULL) {
            puts("No symtab found.");
            free(sectionTable);
            return;
        }

        if (strtabndx != 0) {
            printf("strtab found\n");
            printf("Size: %X bytes\n", sectionTable[strtabndx].sh_size);
            strtab = malloc(sectionTable[strtabndx].sh_size);
            printf("and mallocked\n");
            fseek(inputFile, sectionTable[strtabndx].sh_offset, SEEK_SET);
            printf("file offset sought: %X\n", sectionTable[strtabndx].sh_offset);
            assert(fread(strtab, sizeof(char), sectionTable[strtabndx].sh_size, inputFile) ==
                   sectionTable[strtabndx].sh_size);
            printf("file read\n");
        }
    }

    {
        size_t currentIndex;
        printf("Symbol table\n");
        printf(" Num: Value    Size Type        Bind       Vis         Ndx  Name\n");
        for (currentIndex = 0; currentIndex < symbolTableNum; currentIndex++) {
            FairySym currentSymbol = symbolTable[currentIndex];
            printf("%4zd: ", currentIndex);
            printf("%08X ", currentSymbol.st_value);
            printf("%4X ", currentSymbol.st_size);
            printf("%-11s ", Fairy_StringFromDefine(stTypes, ELF32_ST_TYPE(currentSymbol.st_info)));
            printf("%-10s ", Fairy_StringFromDefine(stBinds, ELF32_ST_BIND(currentSymbol.st_info)));
            printf("%-11s ", Fairy_StringFromDefine(stVisibilities, ELF32_ST_VISIBILITY(currentSymbol.st_other)));

            if (currentSymbol.st_shndx != 0) {
                printf("%3X ", currentSymbol.st_shndx);
            } else {
                printf("UND ");
            }

            if (strtab != NULL) {
                printf("%s", &strtab[currentSymbol.st_name]);
            } else {
                printf("%4X ", currentSymbol.st_name);
            }
            putchar('\n');
        }
    }

    free(sectionTable);
    free(symbolTable);
    if (strtab != NULL) {
        free(strtab);
    }
}

void Fairy_PrintRelocs(FILE* inputFile) {
    FairyFileHeader fileHeader;
    FairySecHeader* sectionTable;
    FairyRela* relocs;
    size_t shstrndx;
    char* shstrtab;
    size_t currentSection;

    Fairy_ReadFileHeader(&fileHeader, inputFile);
    sectionTable = malloc(fileHeader.e_shentsize * fileHeader.e_shnum);
    shstrndx = fileHeader.e_shstrndx;

    Fairy_ReadSectionTable(sectionTable, inputFile, fileHeader.e_shoff, fileHeader.e_shnum);

    shstrtab = malloc(sectionTable[shstrndx].sh_size * sizeof(char));

    fseek(inputFile, sectionTable[shstrndx].sh_offset, SEEK_SET);
    assert(fread(shstrtab, sizeof(char), sectionTable[shstrndx].sh_size, inputFile) == sectionTable[shstrndx].sh_size);

    for (currentSection = 0; currentSection < fileHeader.e_shnum; currentSection++) {
        size_t nRelocs;

        if (sectionTable[currentSection].sh_type != SHT_REL || sectionTable[currentSection].sh_type != SHT_RELA) {
            continue;
        }
        printf("Section size: %d\n", sectionTable[currentSection].sh_size);

        nRelocs = Fairy_ReadRelocs(&relocs, inputFile, sectionTable[currentSection].sh_type,
                                   sectionTable[currentSection].sh_offset, sectionTable[currentSection].sh_size);

        // fseek(inputFile, sectionTable[currentSection].sh_offset, SEEK_SET);
        // assert(fread(relocs, sizeof(char), sectionTable[currentSection].sh_size, inputFile) ==
        // sectionTable[currentSection].sh_size);

        printf("Relocs in section [%2zd]: %s:\n", currentSection, shstrtab + sectionTable[currentSection].sh_name);
        printf("Offset   Info     Type     Symbol\n");
        {
            size_t currentReloc;
            for (currentReloc = 0; currentReloc < nRelocs; currentReloc++) {
                printf("%08X,%08X ", relocs[currentReloc].r_offset, relocs[currentReloc].r_info);

                switch (ELF32_R_TYPE(relocs[currentReloc].r_info)) {
                    case R_MIPS_NONE:
                        printf("%-15s", "R_MIPS_NONE");
                        break;
                    case R_MIPS_16:
                        printf("%-15s", "R_MIPS_16");
                        break;
                    case R_MIPS_32:
                        printf("%-15s", "R_MIPS_32");
                        break;
                    case R_MIPS_REL32:
                        printf("%-15s", "R_MIPS_REL32");
                        break;
                    case R_MIPS_26:
                        printf("%-15s", "R_MIPS_26");
                        break;
                    case R_MIPS_HI16:
                        printf("%-15s", "R_MIPS_HI16");
                        break;
                    case R_MIPS_LO16:
                        printf("%-15s", "R_MIPS_LO16");
                        break;
                    default:
                        break;
                }

                printf("%X", ELF32_R_SYM(relocs[currentReloc].r_info));

                putchar('\n');
            }
            putchar('\n');
        }
        putchar('\n');

        free(relocs);
    }
    free(sectionTable);
    free(shstrtab);
}

void Fairy_PrintSectionTable(FILE* inputFile) {
    FairyFileHeader fileHeader;
    FairySecHeader* sectionTable;
    size_t shstrndx;
    char* shstrtab;
    size_t currentSection;

    Fairy_ReadFileHeader(&fileHeader, inputFile);
    sectionTable = malloc(fileHeader.e_shentsize * fileHeader.e_shnum);
    shstrndx = fileHeader.e_shstrndx;

    Fairy_ReadSectionTable(sectionTable, inputFile, fileHeader.e_shoff, fileHeader.e_shnum);

    shstrtab = malloc(sectionTable[shstrndx].sh_size * sizeof(char));

    fseek(inputFile, sectionTable[shstrndx].sh_offset, SEEK_SET);
    assert(fread(shstrtab, sizeof(char), sectionTable[shstrndx].sh_size, inputFile) == sectionTable[shstrndx].sh_size);

    printf("[Nr] Name           Type           Addr     Off    Size   ES Flg Lk Inf Al\n");
    for (currentSection = 0; currentSection < fileHeader.e_shnum; currentSection++) {
        FairySecHeader entry = sectionTable[currentSection];
        printf("[%2zd] ", currentSection);
        printf("%-15s", shstrtab + entry.sh_name);

        printf("%-15s", Fairy_StringFromDefine(shTypes, entry.sh_type));

        // printf("%08X ", entry.sh_type);
        printf("%08X ", entry.sh_addr);
        printf("%06X ", entry.sh_offset);
        printf("%06X ", entry.sh_size);
        printf("%02X ", entry.sh_entsize);
        // printf("%08X ", entry.sh_flags);

        {
            char flagChars[] = { 'W', 'A', 'X', 'M', 'S', 'I', 'L', 'O', 'G', 'T', 'C', 'x', 'o', 'E', 'p' };
            uint32_t flags = entry.sh_flags;
            size_t shift;
            int pad = 4;
            for (shift = 0; shift < sizeof(flagChars); shift++) {
                if ((flags >> shift) & 1) {
                    putchar(flagChars[shift]);
                    pad--;
                }
            }
            if (pad > 0) {
                printf("%*s", pad, "");
            }
        }

        printf("%2X ", entry.sh_link);
        printf("%3X ", entry.sh_info);
        printf("%2X", entry.sh_addralign);
        putchar('\n');
    }
}

typedef enum { REL_SECTION_NONE, REL_SECTION_TEXT, REL_SECTION_DATA, REL_SECTION_RODATA } FairyOverlayRelSection;

const char* relSectionStrings[] = {
    NULL,
    ".text",
    ".data",
    ".rodata",
};

static uint32_t Fairy_PackReloc(FairyOverlayRelSection sec, FairyRela rel) {
    return (sec << 0x1E) | (ELF32_R_TYPE(rel.r_info) << 0x18) | rel.r_offset;
}

void Fairy_PrintSectionSizes(FairySecHeader* sectionTable, FILE* inputFile, size_t tableSize, char* shstrtab) {
    size_t number = tableSize / sizeof(FairySecHeader);
    FairySecHeader currentHeader;
    char* sectionName;
    size_t relocSectionsCount = 0;
    size_t* relocSectionIndices;
    int* relocSectionSection;
    size_t currentRelocSection = 0;
    FairySecHeader symtabHeader;
    FairySym* symtab;
    FairySecHeader strtabHeader;
    char* strtab = NULL;
    // size_t symtabSize;

    uint32_t textSize = 0;
    uint32_t dataSize = 0;
    uint32_t rodataSize = 0;
    uint32_t bssSize = 0;
    uint32_t relocCount = 0;

    size_t currentSection;
    bool symtabFound = false;
    bool strtabFound = false;
    /* Count the reloc sections */
    for (currentSection = 0; currentSection < number; currentSection++) {
        if (sectionTable[currentSection].sh_type == SHT_REL || sectionTable[currentSection].sh_type == SHT_RELA) {
            relocSectionsCount++;
        }
    }
    printf("relocSectionsCount: %zd\n", relocSectionsCount);

    relocSectionIndices = malloc(relocSectionsCount * sizeof(int));
    relocSectionSection = malloc(relocSectionsCount * sizeof(int));

    /* Find the section sizes and the reloc sections */
    for (currentSection = 0; currentSection < number; currentSection++) {
        size_t off = 0;

        currentHeader = sectionTable[currentSection];
        sectionName = &shstrtab[currentHeader.sh_name + 1]; /* ignore the initial '.' */
        switch (currentHeader.sh_type) {
            case SHT_PROGBITS:
                if (Fairy_StartsWith(sectionName, "rodata")) {
                    printf("rodata\n");
                    rodataSize += currentHeader.sh_size;
                    break;
                }
                if (Fairy_StartsWith(sectionName, "data")) {
                    printf("data\n");
                    dataSize += currentHeader.sh_size;
                    break;
                }
                if (Fairy_StartsWith(sectionName, "text")) {
                    printf("text\n");
                    textSize += currentHeader.sh_size;
                    break;
                }
                break;

            case SHT_NOBITS:
                if (Fairy_StartsWith(sectionName, "bss")) {
                    printf("bss\n");
                    bssSize += currentHeader.sh_size;
                }
                break;

            case SHT_RELA:
                off += 1;
            case SHT_REL:
                relocSectionIndices[currentRelocSection] = currentSection;
                off += 4; /* ignore the "rel."/"rela." part */
                if (Fairy_StartsWith(&sectionName[off], "rodata")) {
                    printf("%s\n", sectionName);
                    relocSectionSection[currentRelocSection] = REL_SECTION_RODATA;
                } else if (Fairy_StartsWith(&sectionName[off], "data")) {
                    printf("%s\n", sectionName);
                    relocSectionSection[currentRelocSection] = REL_SECTION_DATA;
                } else if (Fairy_StartsWith(&sectionName[off], "text")) {
                    printf("%s\n", sectionName);
                    relocSectionSection[currentRelocSection] = REL_SECTION_TEXT;
                }

                currentRelocSection++;
                break;

            case SHT_SYMTAB:
                if (Fairy_StartsWith(sectionName, "symtab")) {
                    symtabHeader = currentHeader;
                    symtabFound = true;
                }
                break;

            case SHT_STRTAB:
                if (Fairy_StartsWith(sectionName, "strtab")) {
                    strtabHeader = currentHeader;
                    strtabFound = true;
                }
                break;

            default:
                break;
        }
    }
    /* Can use symbols here too */
    puts(".section .ovl");
    printf("# OverlayInfo\n");
    printf(".word 0x%08X # .text size\n", textSize);
    printf(".word 0x%08X # .data size\n", dataSize);
    printf(".word 0x%08X # .rodata size\n", rodataSize);
    printf(".word 0x%08X # .bss size\n\n", bssSize);

    if (!symtabFound) {
        fprintf(stderr, "Symbol table not found\n");
        return;
    }
    /* Obtain the symbol table */
    // TODO: Consider replacing this with a lighter-weight read: sufficient to get the name, shndx
    Fairy_ReadSymbolTable(&symtab, inputFile, symtabHeader.sh_offset, symtabHeader.sh_size);

    if (!strtabFound) {
        fprintf(stderr, "String table not found\n");
    } else {
        /* Obtain the string table */
        strtab = malloc(strtabHeader.sh_size);
        fseek(inputFile, strtabHeader.sh_offset, SEEK_SET);
        assert(fread(strtab, sizeof(char), strtabHeader.sh_size, inputFile) == strtabHeader.sh_size);
    }

    /* Do single-file relocs */
    {
        FairyRela* relocs;
        for (currentSection = 0; currentSection < relocSectionsCount; currentSection++) {
            size_t currentReloc;
            size_t nRelocs;

            currentHeader = sectionTable[relocSectionIndices[currentSection]];
            nRelocs = Fairy_ReadRelocs(&relocs, inputFile, currentHeader.sh_type, currentHeader.sh_offset,
                                       currentHeader.sh_size);

            for (currentReloc = 0; currentReloc < nRelocs; currentReloc++) {
                FairySym symbol = symtab[ELF32_R_SYM(relocs[currentReloc].r_info)];
                if (symbol.st_shndx == SHN_UNDEF) {
                    continue; // TODO: this is where multifile has to look elsewhere
                }

                printf(".word 0x%08X", Fairy_PackReloc(relocSectionSection[currentSection], relocs[currentReloc]));
                printf(" # %X (%s), %X, 0x%06X", relocSectionSection[currentSection], &shstrtab[currentHeader.sh_name],
                       ELF32_R_TYPE(relocs[currentReloc].r_info), relocs[currentReloc].r_offset);
                if (strtab != NULL) {
                    printf(", %s", &strtab[symbol.st_name]);
                }
                putchar('\n');

                relocCount++;
            }

            free(relocs);
        }
    }

    printf(".word %d # relocCount\n", relocCount);

    {
        uint32_t ovlSectionSize = ((relocCount + 8) & ~0x03) * sizeof(uint32_t);

        printf("\n.word 0x%08X # Overlay section size\n", ovlSectionSize);
    }

    free(relocSectionIndices);
    free(relocSectionSection);
    if (strtab != NULL) {
        free(strtab);
    }
}

void PrintZeldaReloc(FILE* inputFile) {
    FairyFileHeader fileHeader;
    FairySecHeader* sectionTable;
    size_t shstrndx;
    char* shstrtab;

    Fairy_ReadFileHeader(&fileHeader, inputFile);
    sectionTable = malloc(fileHeader.e_shentsize * fileHeader.e_shnum);
    shstrndx = fileHeader.e_shstrndx;

    Fairy_ReadSectionTable(sectionTable, inputFile, fileHeader.e_shoff, fileHeader.e_shnum);

    shstrtab = malloc(sectionTable[shstrndx].sh_size * sizeof(char));

    fseek(inputFile, sectionTable[shstrndx].sh_offset, SEEK_SET);
    assert(fread(shstrtab, sizeof(char), sectionTable[shstrndx].sh_size, inputFile) == sectionTable[shstrndx].sh_size);

    Fairy_PrintSectionSizes(sectionTable, inputFile, fileHeader.e_shentsize * fileHeader.e_shnum, shstrtab);

    free(sectionTable);
    free(shstrtab);
}
