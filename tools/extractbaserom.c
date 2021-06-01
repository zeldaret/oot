#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <byteswap.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>

#define DMA_ENTRY_SIZE 16

typedef enum Addresses {
    /* 0 */ virtualStart,
    /* 1 */ virtualEnd,
    /* 2 */ physicalStart,
    /* 3 */ physicalEnd
} Addresses;

#define NTSC_10 0xEC7011B7
#define NTSC_11 0xD43DA81F
#define NTSC_12 0x693BA2AE
#define PAL_10 0xB044B569
#define PAL_11 0xB2055FBD
#define NTSC_JP_GC_CE 0xF7F52DB8
#define NTSC_JP_GC 0xF611F4BA
#define NTSC_US_GC 0xF3DD35BA
#define PAL_GC 0x09465AC3
#define NTSC_JP_MQ 0xF43B45BA
#define NTSC_US_MQ 0xF034001A
#define PAL_MQ 0x1D4136F3
#define PAL_GC_DBG1 0x871E1C92 // 03-21-2002 build
#define PAL_GC_DBG2 0x87121EFE // 03-13-2002 build
#define PAL_GC_MQ_DBG 0x917D18F6
#define IQUE_TW 0x3D81FB3E
#define IQUE_CN 0xB1E1E07B

#define OFF_NTSC_10_RC 0x07430
#define OFF_NTSC_10 0x07430
#define OFF_NTSC_11 0x07430
#define OFF_PAL_10 0x07950
#define OFF_NTSC_12 0x07960
#define OFF_PAL_11 0x07950
#define OFF_JP_GC 0x07170
#define OFF_JP_MQ 0x07170
#define OFF_US_GC 0x07170
#define OFF_US_MQ 0x07170
#define OFF_PAL_GC_DBG1 0x12F70
#define OFF_PAL_MQ_DBG 0x12F70
#define OFF_PAL_GC_DBG2 0x12F70
#define OFF_PAL_GC 0x07170
#define OFF_PAL_MQ 0x07170
#define OFF_JP_GC_CE 0x07170
#define OFF_CN_IQUE 0x0B7A0
#define OFF_TW_IQUE 0x0B240

uint32_t dmaTableOffset;

void getVersion(FILE* rom, FILE** fileList) {
    uint32_t romCRC;
    fseek(rom, 0x10, SEEK_SET);

    if (fread_unlocked(&romCRC, sizeof(uint32_t), 1, rom) != 1) {
        fprintf(stderr, "Could not read rom CRC\n");
        exit(1);
    }

    romCRC = __bswap_32(romCRC);

    switch (romCRC) {
        case NTSC_10:
            puts("Detected version NTSC 1.0");
            *(fileList) = fopen("filelists/filelist_ntsc_n64.txt", "r");
            dmaTableOffset = OFF_NTSC_10;
            break;
        case NTSC_11:
            puts("Detected version NTSC 1.1");
            *(fileList) = fopen("filelists/filelist_ntsc_n64.txt", "r");
            dmaTableOffset = OFF_NTSC_11;
            break;
        case NTSC_12:
            puts("Detected version NTSC 1.2");
            *(fileList) = fopen("filelists/filelist_ntsc_n64.txt", "r");
            dmaTableOffset = OFF_NTSC_12;
            break;
        case PAL_10:
            puts("Detected version PAL N64");
            *(fileList) = fopen("filelists/filelist_pal_n64.txt", "r");
            dmaTableOffset = OFF_PAL_10;
            break;
        case PAL_11:
            puts("Detected version PAL N64");
            *(fileList) = fopen("filelists/filelist_pal_n64.txt", "r");
            dmaTableOffset = OFF_PAL_11;
            break;
        case NTSC_JP_GC:
            puts("Detected version JP GameCube (MQ Disk)");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_JP_GC;
            break;
        case NTSC_JP_GC_CE:
            puts("Detected version GameCube (Collectors Edition Disk)");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_JP_GC_CE;
            break;
        case NTSC_JP_MQ:
            puts("Detected version JP Master Quest");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_JP_MQ;
            break;
        case NTSC_US_MQ:
            puts("Detected version US Master Quest");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_JP_MQ;
            break;
        case NTSC_US_GC:
            puts("Detected version US GameCube");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_US_MQ;
            break;
        case PAL_GC:
            puts("Detected version PAL GameCube");
            *(fileList) = fopen("filelists/filelist_gamecube+mq.txt", "r");
            dmaTableOffset = OFF_PAL_GC;
            break;
        case PAL_MQ:
            puts("Detected version PAL Master Quest");
            *(fileList) = fopen("filelists/filelist_pal_mq.txt", "r");
            dmaTableOffset = OFF_PAL_MQ;
            break;
        case PAL_GC_DBG1:
            printf("Detecte version GameCube Debug\n");
            *(fileList) = fopen("filelists/filelist_dbg.txt", "r");
            dmaTableOffset = OFF_PAL_GC_DBG1;
            break;
        case PAL_GC_DBG2:
            printf("Detecte version GameCube Debug\n");
            *(fileList) = fopen("filelists/filelist_dbg.txt", "r");
            dmaTableOffset = OFF_PAL_GC_DBG2;
            break;
        case PAL_GC_MQ_DBG:
            printf("Detecte version Master Quest GameCube Debug\n");
            *(fileList) = fopen("filelists/filelist_dbg.txt", "r");
            dmaTableOffset = OFF_PAL_MQ_DBG;
            break;
        case IQUE_CN:
            puts("Detected version CN IQUE");
            *(fileList) = fopen("filelists/filelist_ique.txt", "r");
            dmaTableOffset = OFF_CN_IQUE;
            break;
        case IQUE_TW:
            puts("Detected version TW IQUE");
            *(fileList) = fopen("filelists/filelist_ique.txt", "r");
            dmaTableOffset = OFF_TW_IQUE;
            break;
        default:
            fprintf(stderr, "Unknown CRC %x given: \n", romCRC);
    }
    if (*(fileList) == NULL) {
        fprintf(stderr, "Could not open filelist\n");
        exit(1);
    }
}

int main(void) {
    FILE* rom = fopen("baserom.z64", "rb");
    FILE* outFile;
    FILE* fileList = NULL;
    uint32_t dataAddr[4];

    if (rom == NULL) {
        fprintf(stderr, "Could not open baserom.z64\n");
        exit(1);
    }

    getVersion(rom, &fileList);

    char currentFile[35];
    for (uint32_t i = 0; fgets(currentFile, 35, fileList) != NULL; i++) {
        char outFileName[45] = "baserom/";
        void* data;
        bool isCompressed;

        fseek(rom, dmaTableOffset + (DMA_ENTRY_SIZE * i), SEEK_SET);

        if (fread_unlocked(&dataAddr, sizeof(uint32_t), 4, rom) != 4) {
            fprintf(stderr, "Could not read addresses for file %s\n", currentFile);
            exit(1);
        }

        dataAddr[virtualStart] = bswap_32(dataAddr[virtualStart]);
        dataAddr[virtualEnd] = bswap_32(dataAddr[virtualEnd]);
        dataAddr[physicalStart] = bswap_32(dataAddr[physicalStart]);
        dataAddr[physicalEnd] = bswap_32(dataAddr[physicalEnd]);

        if (dataAddr[physicalEnd] == 0) {
            data = malloc(dataAddr[virtualEnd] - dataAddr[virtualStart]);
            isCompressed = false;
        } else {
            data = malloc(dataAddr[physicalEnd] - dataAddr[physicalStart]);
            isCompressed = true;
        }

        strcat(outFileName, currentFile);
        outFileName[strlen(outFileName) - 1] = 0;
        outFile = fopen(outFileName, "wb");

        if (data == NULL) {
            fprintf(stderr, "Could not allocate memory for %s\n", outFileName);
            exit(1);
        }

        if (outFile == NULL) {
            fprintf(stderr, "Could not open output file for %s\n", outFileName);
            exit(1);
        }

        if (!isCompressed) {
            fseek(rom, dataAddr[virtualStart], SEEK_SET);
            if (fread_unlocked(data, dataAddr[virtualEnd] - dataAddr[virtualStart], 1, rom) != 1) {
                fprintf(stderr, "Could not read rom file %s\n", currentFile);
                exit(1);
            }
        } else {
            fseek(rom, dataAddr[physicalStart], SEEK_SET);
            if (fread_unlocked(data, dataAddr[physicalEnd] - dataAddr[physicalStart], 1, rom) != 1) {
                fprintf(stderr, "Could not read rom file %s\n", currentFile);
                exit(1);
            }
        }

        if (!isCompressed) {
            if (fwrite(data, dataAddr[virtualEnd] - dataAddr[virtualStart], 1, outFile) != 1) {
                fprintf(stderr, "Could not write rom file %s\n", currentFile);
                exit(1);
            }
#ifndef NDEBUG
            else {
                printf("Extracting file: %s    0x%x-0x%x\n", currentFile, dataAddr[virtualStart], dataAddr[virtualEnd]);
            }
#endif
        } else {
            if (fwrite(data, dataAddr[physicalEnd] - dataAddr[physicalStart], 1, outFile) != 1) {
                fprintf(stderr, "Could not write rom file %s\n", currentFile);
                exit(1);
            }
#ifndef NDEBUG
            else {
                printf("Extracting file: %s    0x%x-0x%x\n", currentFile, dataAddr[physicalStart],
                       dataAddr[physicalEnd]);
            }
#endif
        }

        fclose(outFile);
        if (isCompressed) {
            char decompressionCommand[128] = "tools/yaz0 -d ";
            strcat(decompressionCommand, outFileName);
            strcat(decompressionCommand, " ");
            strcat(decompressionCommand, outFileName);
            if(system(decompressionCommand) == -1){
                fprintf(stderr, "Failed to decompress rom file: %s\n",currentFile);
            }
        }

        free(data);
        memset(currentFile, 0, sizeof(currentFile));
    }
    fclose(rom);
    return 0;
}
