/**
 * Code specific to reading and outputting Zelda 64 relocations
 */
/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include "fado.h"

#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "fairy/fairy.h"
#include "macros.h"
#include "vc_vector/vc_vector.h"

/* String-finding-related functions */

bool Fado_CheckInProgBitsSections(Elf32_Section section, vc_vector* progBitsSections) {
    Elf32_Section* i;
    VC_FOREACH(i, progBitsSections) {
        if (*i == section) {
            return true;
        }
    }
    return false;
}

/**
 * For each input file, construct a vector of pointers to the starts of the strings defined in that file.
 */
void Fado_ConstructStringVectors(vc_vector** stringVectors, FairyFileInfo* fileInfo, int numFiles) {
    int currentFile;
    size_t currentSym;

    for (currentFile = 0; currentFile < numFiles; currentFile++) {
        FairySym* symtab = fileInfo[currentFile].symtabInfo.sectionData;

        stringVectors[currentFile] = vc_vector_create(0x40, sizeof(char**), NULL);

        /* Build a vector of pointers to defined symbols' names */
        for (currentSym = 0; currentSym < fileInfo[currentFile].symtabInfo.sectionEntryCount; currentSym++) {
            if ((symtab[currentSym].st_shndx != STN_UNDEF) &&
                Fado_CheckInProgBitsSections(symtab[currentSym].st_shndx, fileInfo[currentFile].progBitsSections)) {
                /* Have to pass a double pointer so it copies the pointer instead of the start of the string */
                char* stringPtr = &fileInfo[currentFile].strtab[symtab[currentSym].st_name];
                assert(vc_vector_push_back(stringVectors[currentFile], &stringPtr));
            }
        }
    }
}

bool Fado_FindSymbolNameInOtherFiles(const char* name, int thisFile, vc_vector** stringVectors, int numFiles) {
    int currentFile;
    char** currentString;

    for (currentFile = 0; currentFile < numFiles; currentFile++) {
        if (currentFile == thisFile) {
            continue;
        }
        VC_FOREACH(currentString, stringVectors[currentFile]) {
            if (strcmp(name, *currentString) == 0) {
                FAIRY_DEBUG_PRINTF("Match found for %s\n", name);
                return true;
            }
        }
    }
    FAIRY_DEBUG_PRINTF("No match found for %s\n", name);
    return false;
}

void Fado_DestroyStringVectors(vc_vector** stringVectors, int numFiles) {
    int currentFile;
    for (currentFile = 0; currentFile < numFiles; currentFile++) {
        vc_vector_release(stringVectors[currentFile]);
    }
    free(stringVectors);
}

typedef struct {
    size_t symbolIndex;
    int file;
    uint32_t relocWord;
} FadoRelocInfo;

/* Construct the Zelda64ovl-compatible reloc word from an ELF reloc */
FadoRelocInfo Fado_MakeReloc(int file, FairySection section, FairyRela* data) {
    FadoRelocInfo relocInfo = { 0 };
    uint32_t sectionPrefix = 0;

    relocInfo.symbolIndex = ELF32_R_SYM(data->r_info);
    relocInfo.file = file;

    switch (section) {
        case FAIRY_SECTION_TEXT:
            sectionPrefix = 1;
            break;

        case FAIRY_SECTION_DATA:
            sectionPrefix = 2;
            break;

        case FAIRY_SECTION_RODATA:
            sectionPrefix = 3;
            break;

        default:
            fprintf(stderr, "warning: Relocation section is invalid.\n");
            break;
    }
    relocInfo.relocWord =
        ((sectionPrefix & 3) << 0x1E) | (ELF32_R_TYPE(data->r_info) << 0x18) | (data->r_offset & 0xFFFFFF);

    return relocInfo;
}

static const FairyDefineString relSectionNames[] = {
    FAIRY_DEF_STRING(FAIRY_SECTION_, TEXT),
    FAIRY_DEF_STRING(FAIRY_SECTION_, DATA),
    FAIRY_DEF_STRING(FAIRY_SECTION_, RODATA),
    { 0 },
};

/* Taken from elf.h/mips_elf.h */
static const FairyDefineString relTypeNames[] = {
    FAIRY_DEF_STRING(, R_MIPS_NONE),    /* No reloc */
    FAIRY_DEF_STRING(, R_MIPS_16),      /* Direct 16 bit */
    FAIRY_DEF_STRING(, R_MIPS_32),      /* Direct 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_REL32),   /* PC relative 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_26),      /* Direct 26 bit shifted */
    FAIRY_DEF_STRING(, R_MIPS_HI16),    /* High 16 bit */
    FAIRY_DEF_STRING(, R_MIPS_LO16),    /* Low 16 bit */
    FAIRY_DEF_STRING(, R_MIPS_GPREL16), /* GP relative 16 bit */
    FAIRY_DEF_STRING(, R_MIPS_LITERAL), /* 16 bit literal entry */
    FAIRY_DEF_STRING(, R_MIPS_GOT16),   /* 16 bit GOT entry */
    FAIRY_DEF_STRING(, R_MIPS_PC16),    /* PC relative 16 bit */
    FAIRY_DEF_STRING(, R_MIPS_CALL16),  /* 16 bit GOT entry for function */
    FAIRY_DEF_STRING(, R_MIPS_GPREL32), /* GP relative 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_SHIFT5),
    FAIRY_DEF_STRING(, R_MIPS_SHIFT6),
    FAIRY_DEF_STRING(, R_MIPS_64),
    FAIRY_DEF_STRING(, R_MIPS_GOT_DISP),
    FAIRY_DEF_STRING(, R_MIPS_GOT_PAGE),
    FAIRY_DEF_STRING(, R_MIPS_GOT_OFST),
    FAIRY_DEF_STRING(, R_MIPS_GOT_HI16),
    FAIRY_DEF_STRING(, R_MIPS_GOT_LO16),
    FAIRY_DEF_STRING(, R_MIPS_SUB),
    FAIRY_DEF_STRING(, R_MIPS_INSERT_A),
    FAIRY_DEF_STRING(, R_MIPS_INSERT_B),
    FAIRY_DEF_STRING(, R_MIPS_DELETE),
    FAIRY_DEF_STRING(, R_MIPS_HIGHER),
    FAIRY_DEF_STRING(, R_MIPS_HIGHEST),
    FAIRY_DEF_STRING(, R_MIPS_CALL_HI16),
    FAIRY_DEF_STRING(, R_MIPS_CALL_LO16),
    FAIRY_DEF_STRING(, R_MIPS_SCN_DISP),
    FAIRY_DEF_STRING(, R_MIPS_REL16),
    FAIRY_DEF_STRING(, R_MIPS_ADD_IMMEDIATE),
    FAIRY_DEF_STRING(, R_MIPS_PJUMP),
    FAIRY_DEF_STRING(, R_MIPS_RELGOT),
    FAIRY_DEF_STRING(, R_MIPS_JALR),
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPMOD32),    /* Module number 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPREL32),    /* Module-relative offset 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPMOD64),    /* Module number 64 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPREL64),    /* Module-relative offset 64 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_GD),          /* 16 bit GOT offset for GD */
    FAIRY_DEF_STRING(, R_MIPS_TLS_LDM),         /* 16 bit GOT offset for LDM */
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPREL_HI16), /* Module-relative offset, high 16 bits */
    FAIRY_DEF_STRING(, R_MIPS_TLS_DTPREL_LO16), /* Module-relative offset, low 16 bits */
    FAIRY_DEF_STRING(, R_MIPS_TLS_GOTTPREL),    /* 16 bit GOT offset for IE */
    FAIRY_DEF_STRING(, R_MIPS_TLS_TPREL32),     /* TP-relative offset, 32 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_TPREL64),     /* TP-relative offset, 64 bit */
    FAIRY_DEF_STRING(, R_MIPS_TLS_TPREL_HI16),  /* TP-relative offset, high 16 bits */
    FAIRY_DEF_STRING(, R_MIPS_TLS_TPREL_LO16),  /* TP-relative offset, low 16 bits */
    FAIRY_DEF_STRING(, R_MIPS_GLOB_DAT),
    FAIRY_DEF_STRING(, R_MIPS_COPY),
    FAIRY_DEF_STRING(, R_MIPS_JUMP_SLOT),
    FAIRY_DEF_STRING(, R_MIPS_NUM),
};

/**
 * Find all the necessary relocations to retain (those defined in any input file), and print them in the appropriate
 * format.
 */
void Fado_Relocs(FILE* outputFile, int inputFilesCount, FILE** inputFiles, const char* ovlName) {
    /* General information structs */
    FairyFileInfo* fileInfos = malloc(inputFilesCount * sizeof(FairyFileInfo));

    /* Symbol tables for each file */
    FairySym** symtabs = malloc(inputFilesCount * sizeof(FairySym*));

    /* Lists of names of symbols defined in files of the overlay */
    vc_vector** stringVectors = malloc(inputFilesCount * sizeof(vc_vector*));

    /* The relocs in the format we will print */
    vc_vector* relocList[FAIRY_SECTION_OTHER]; /* Maximum number of reloc sections */

    /* Offset of current file's current section into the overlay's whole section */
    uint32_t sectionOffset[FAIRY_SECTION_OTHER] = { 0 };

    /* Total number of relocs */
    uint32_t relocCount = 0;

    /* iterators */
    int currentFile;
    FairySection section;
    size_t relocIndex;

    for (currentFile = 0; currentFile < inputFilesCount; currentFile++) {
        FAIRY_INFO_PRINTF("Begin initialising file %d info.\n", currentFile);
        Fairy_InitFile(&fileInfos[currentFile], inputFiles[currentFile]);
        FAIRY_INFO_PRINTF("Initialising file %d info complete.\n", currentFile);

        symtabs[currentFile] = fileInfos[currentFile].symtabInfo.sectionData;
    }

    Fado_ConstructStringVectors(stringVectors, fileInfos, inputFilesCount);
    FAIRY_INFO_PRINTF("%s", "symtabs set\n");

    /* Construct relocList of all relevant relocs */
    for (section = FAIRY_SECTION_TEXT; section < FAIRY_SECTION_OTHER; section++) {
        relocList[section] = vc_vector_create(0x100, sizeof(FadoRelocInfo), NULL);

        for (currentFile = 0; currentFile < inputFilesCount; currentFile++) {
            FairyRela* relSection = fileInfos[currentFile].relocTablesInfo[section].sectionData;

            if (relSection != NULL) {
                for (relocIndex = 0; relocIndex < fileInfos[currentFile].relocTablesInfo[section].sectionEntryCount;
                     relocIndex++) {
                    FadoRelocInfo currentReloc = Fado_MakeReloc(currentFile, section, &relSection[relocIndex]);

                    if ((symtabs[currentFile][currentReloc.symbolIndex].st_shndx != STN_UNDEF) ||
                        Fado_FindSymbolNameInOtherFiles(
                            &fileInfos[currentFile].strtab[symtabs[currentFile][currentReloc.symbolIndex].st_name],
                            currentFile, stringVectors, inputFilesCount)) {

                        currentReloc.relocWord += sectionOffset[section];
                        FAIRY_DEBUG_PRINTF("current section offset: %d\n", sectionOffset[section]);
                        vc_vector_push_back(relocList[section], &currentReloc);
                        relocCount++;
                    }
                }
            } else {
                FAIRY_INFO_PRINTF("%s", "Ignoring empty reloc section\n");
            }

            sectionOffset[section] += fileInfos[currentFile].progBitsSizes[section];
            FAIRY_INFO_PRINTF("section offset: %d\n", sectionOffset[section]);
        }
    }

    {
        /* Write header */
        fprintf(outputFile, ".section .ovl\n");
        fprintf(outputFile, "# %sOverlayInfo\n", ovlName);
        fprintf(outputFile, ".word _%sSegmentTextSize\n", ovlName);
        fprintf(outputFile, ".word _%sSegmentDataSize\n", ovlName);
        fprintf(outputFile, ".word _%sSegmentRoDataSize\n", ovlName);
        fprintf(outputFile, ".word _%sSegmentBssSize\n", ovlName);

        fprintf(outputFile, "\n.word %d # relocCount\n", relocCount);

        /* Write reloc table */
        for (section = FAIRY_SECTION_TEXT; section < FAIRY_SECTION_OTHER; section++) {
            if (vc_vector_count(relocList[section]) == 0) {
                FAIRY_INFO_PRINTF("%s", "Ignoring empty reloc section\n");
                continue;
            }

            fprintf(outputFile, "\n# %s RELOCS\n", Fairy_StringFromDefine(relSectionNames, section));

            {
                FadoRelocInfo* currentReloc;
                VC_FOREACH(currentReloc, relocList[section]) {
                    fprintf(outputFile, ".word 0x%X # %-11s 0x%06X %s\n", currentReloc->relocWord,
                            Fairy_StringFromDefine(relTypeNames, (currentReloc->relocWord >> 0x18) & 0x3F),
                            currentReloc->relocWord & 0xFFFFFF,
                            Fairy_GetSymbolName(symtabs[currentReloc->file], fileInfos[currentReloc->file].strtab,
                                                currentReloc->symbolIndex));
                }
            }
        }

        /* print pads and section size */
        for (relocCount += 5; ((relocCount + 1) & 3) != 0; relocCount++) {
            fprintf(outputFile, ".word 0\n");
        }
        fprintf(outputFile, "\n.word 0x%08X # %sOverlayInfoOffset\n", 4 * (relocCount + 1), ovlName);
    }

    for (currentFile = 0; currentFile < inputFilesCount; currentFile++) {
        Fairy_DestroyFile(&fileInfos[currentFile]);
        FAIRY_INFO_PRINTF("Freed file %d\n", currentFile);
    }

    for (section = FAIRY_SECTION_TEXT; section < FAIRY_SECTION_OTHER; section++) {
        if (relocList[section] != NULL) {
            vc_vector_release(relocList[section]);
        }
        FAIRY_INFO_PRINTF("Freed relocList[%d]\n", section);
    }

    Fado_DestroyStringVectors(stringVectors, inputFilesCount);
    FAIRY_INFO_PRINTF("%s", "Freed string vectors\n");
    free(symtabs);
    FAIRY_INFO_PRINTF("%s", "Freed symtabs\n");
    free(fileInfos);
}
