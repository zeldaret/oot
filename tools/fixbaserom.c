#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <byteswap.h>

#define ROM_SIZE 0x3600000

const char* expectedMd5 = "f0b7f35375f9cc8ca1b2d59d78e3540";

int main(void) {
    FILE* currentFile = fopen("baserom.z64", "rb");
    char md5[33];

    if (currentFile != NULL) {
        fclose(currentFile);
        FILE* pipe = popen("md5sum baserom.z64", "r");
        if (pipe == NULL) {
            fprintf(stderr,
                    "Could not verify MD5 sum of the existing baserom.  A rom was created but it might not be OK.  "
                    "Please verify it your self.\n");
        }
        if (fgets(md5, 32, pipe) == NULL) {
            fprintf(stderr, "Could not get MD5 sum of baserom.z64");
            exit(1);
        }
        pclose(pipe);
        if (strcmp(expectedMd5, md5) == 0) {
            puts("Detected valid baserom.z64.  Exiting early.");
            return 0;
        } else {
            printf("Detected baserom.z64 but MD5 didnt match expected %s but detected %s\n.  Attempting to make a new "
                   "one.\n",
                   expectedMd5, md5);
        }
    } else {
        currentFile = fopen("baserom_origina.n64", "rb");
        if (currentFile == NULL) {
            currentFile = fopen("baserom_original.v64", "rb");
        }
        if (currentFile == NULL) {
            currentFile = fopen("baserom_original.z64", "rb");
        }
        if (currentFile == NULL) {
            fprintf(stderr, "Could not find baserom_original.z64/n64/v64\n");
            exit(1);
        }
        if (currentFile != NULL) {
            uint8_t firstByte = 0x00;
            if(fread_unlocked(&firstByte, sizeof(uint8_t), 1, currentFile) != 1){
                fprintf(stderr, "Failed to read first byte of baserom_original.z64\n");
                exit(1);
            }
            fseek(currentFile, 0, SEEK_SET);
            FILE* outFile = fopen("baserom.z64", "wb");
            if (firstByte == 0x40) { // Little Endian
                uint32_t currentWord;
                for (uint32_t i = 0; i < ROM_SIZE / 4; i++) {
                    if (fread_unlocked(&currentWord, sizeof(uint32_t), 1, currentFile) != 1) {
                        fprintf(stderr, "Failed to read data from rom file\n");
                    }
                    currentWord = __bswap_32(currentWord);
                    if (fwrite_unlocked(&currentWord, sizeof(uint32_t), 1, outFile)) {
                        fprintf(stderr, "Failed to write to new rom file.\n");
                    }
                }
            } else if (firstByte == 0x37) { // Byte Swapped
                uint16_t currentShort;
                for (uint32_t i = 0; i < ROM_SIZE / 2; i++) {
                    if (fread_unlocked(&currentShort, sizeof(uint16_t), 1, currentFile) != 1) {
                        fprintf(stderr, "Failed to read data from rom file\n");
                        exit(1);
                    }
                    currentShort = __bswap_16(currentShort);
                    if (fwrite_unlocked(&currentShort, sizeof(uint16_t), 1, outFile) != 1) {
                        fprintf(stderr, "Failed to write to new rom file.\n");
                        exit(1);
                    }
                }
            } else { // Big Endian
                void* data = malloc(ROM_SIZE);
                if (data == NULL) {
                    fprintf(stderr, "Failed to allocate memory for new baserom.\n");
                    exit(1);
                }
                if (fread_unlocked(data, ROM_SIZE, 1, currentFile) != 1) {
                    fprintf(stderr, "Failed to read data from rom file\n");
                    exit(1);
                }
                if (fwrite_unlocked(data, ROM_SIZE, 1, outFile) != 1) {
                    fprintf(stderr, "Failed to write to new rom file.\n");
                }
                free(data);
            }
            fseek(outFile, 0x3E, SEEK_SET);
            fputc_unlocked('P', outFile); // Patch the rom header to be 'PAL'
            fclose(outFile);
            fclose(currentFile);

            FILE* pipe = popen("md5sum baserom.z64", "r");

            if (pipe == NULL) {
                fprintf(stderr, "Could not verify MD5 sum of new baserom.  A rom was created but it might not be OK.  "
                                "Please verify it your self.\n");
                return 0;
            }
            if (fgets(md5, 32, pipe) == NULL) {
                fprintf(stderr, "Could not get MD5 sum of baserom.z64");
            }
            pclose(pipe);
            if (strcmp(expectedMd5, md5) == 0) {
                puts("baserom.z64 MD5 sum valid");
                return 0;
            } else {
                fprintf(stderr,
                        "MD5 sum of baserom.z64 did not match expected.\nWas %s  expected %s\nYou should probably get "
                        "a new one\n",
                        md5, expectedMd5);
                exit(1);
            }
        }
    }
}
