/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>

#include "macros.h"
#include "fairy/fairy.h"
#include "fado.h"
#include "help.h"
#include "mido.h"
#include "vc_vector/vc_vector.h"

#include "version.inc"

void PrintVersion(void) {
    printf("Fado (Fairy-Assisted relocations for Decompiled Overlays), version %s\n", versionNumber);
    printf("Copyright (C) 2021 Elliptic Ellipsis\n");
    printf("%s\n", credits);
    printf("Repository available at %s.\n", repo);
}

#if defined _WIN32 || defined __CYGWIN__
#define PATH_SEPARATOR '\\'
#else
#define PATH_SEPARATOR '/'
#endif

/**
 * (Bad) filename-parsing idea to get the overlay name from the filename. Output must be freed separately.
 */
char* GetOverlayNameFromFilename(const char* src) {
    char* ret;
    const char* ptr;
    const char* start = src;
    const char* end = src;

    for (ptr = src; *ptr != '\0'; ptr++) {
        if (*ptr == PATH_SEPARATOR) {
            start = end + 1;
            end = ptr;
        }
    }

    if (end == src) {
        return NULL;
    }

    ret = malloc((end - start + 1) * sizeof(char));
    memcpy(ret, start, end - start);
    ret[end - start] = '\0';

    return ret;
}

#define OPTSTR "M:n:o:v:ahV"
#define USAGE_STRING "Usage: %s [-hV] [-n name] [-o output_file] [-v level] input_files ...\n"

#define HELP_PROLOGUE                                            \
    "Fado (Fairy-Assisted relocations for Decompiled Overlays\n" \
    "Extract relocations from object files and convert them into the format required by Zelda 64 overlays.\n"
#define HELP_EPILOGUE repo

// clang-format off
static const PosArgInfo posArgInfo[] = {
    { "INPUT_FILE", "Every positional argument is an input file, and there should be at least one input file. All inputs are relocatable .o (object) ELF files" },
    { NULL, NULL }
};

static const OptInfo optInfo[] = {
    { { "make-dependency", required_argument, NULL, 'M' }, "FILE", "Write the output file's Makefile dependencies to FILE" },
    { { "name", required_argument, NULL, 'n' }, "NAME", "Use NAME as the overlay name. Will use the deepest folder name in the input file's path if not specified" },
    { { "output-file", required_argument, NULL, 'o' }, "FILE", "Output to FILE. Will use stdout if none is specified" },
    { { "verbosity", required_argument, NULL, 'v' }, "N", "Verbosity level, one of 0 (None, default), 1 (Info), 2 (Debug)" },

    { { "alignment", no_argument, NULL, 'a' }, NULL, "Experimental. Use the alignment declared by each section in the elf file instead of padding to 0x10 bytes. NOTE: It has not been properly tested because the tools we currently have are not compatible non 0x10 alignment" },

    { { "help", no_argument, NULL, 'h' }, NULL, "Display this message and exit" },
    { { "version", no_argument, NULL, 'V' }, NULL, "Display version information" },

    { { NULL, 0, NULL, '\0' }, NULL, NULL },
};
// clang-format on

static size_t posArgCount = ARRAY_COUNT(posArgInfo);
static size_t optCount = ARRAY_COUNT(optInfo);
static struct option longOptions[ARRAY_COUNT(optInfo)];

void ConstructLongOpts(void) {
    size_t i;

    for (i = 0; i < optCount; i++) {
        longOptions[i] = optInfo[i].longOpt;
    }
}

int main(int argc, char** argv) {
    int opt;
    int inputFilesCount;
    FILE** inputFiles;
    FILE* outputFile = stdout;
    char* outputFileName;
    char* dependencyFileName = NULL;
    char* ovlName = NULL;

    ConstructLongOpts();

    if (argc < 2) {
        printf(USAGE_STRING, argv[0]);
        fprintf(stderr, "No input file specified\n");
        return EXIT_FAILURE;
    }

    while (true) {
        int optionIndex = 0;

        if ((opt = getopt_long(argc, argv, OPTSTR, longOptions, &optionIndex)) == -1) {
            break;
        }

        switch (opt) {
            case 'M':
                dependencyFileName = optarg;
                break;

            case 'n':
                ovlName = optarg;
                break;

            case 'o':
                outputFileName = optarg;
                outputFile = fopen(optarg, "wb");
                if (outputFile == NULL) {
                    fprintf(stderr, "error: unable to open output file '%s' for writing\n", optarg);
                    return EXIT_FAILURE;
                }
                break;

            case 'v':
                if (sscanf(optarg, "%u", &gVerbosity) == 0) {
                    fprintf(stderr, "warning: verbosity argument '%s' should be a nonnegative decimal integer\n",
                            optarg);
                }
                break;

            case 'a':
#ifndef EXPERIMENTAL
                goto not_experimental_err;
#endif
                gUseElfAlignment = true;
                break;

            case 'h':
                printf(USAGE_STRING, argv[0]);
                Help_PrintHelp(HELP_PROLOGUE, posArgCount, posArgInfo, optCount, optInfo, HELP_EPILOGUE);
                return EXIT_FAILURE;

            case 'V':
                PrintVersion();
                return EXIT_FAILURE;

            default:
                fprintf(stderr, "?? getopt returned character code 0x%X ??\n", opt);
                break;
        }
    }

    FAIRY_INFO_PRINTF("%s", "Options processed\n");

    {
        int i;

        inputFilesCount = argc - optind;
        if (inputFilesCount == 0) {
            fprintf(stderr, "No input files specified. Exiting.\n");
            return EXIT_FAILURE;
        }

        inputFiles = malloc(inputFilesCount * sizeof(FILE*));
        for (i = 0; i < inputFilesCount; i++) {
            FAIRY_INFO_PRINTF("Using input file %s\n", argv[optind + i]);
            inputFiles[i] = fopen(argv[optind + i], "rb");
            if (inputFiles[i] == NULL) {
                fprintf(stderr, "error: unable to open input file '%s' for reading\n", argv[optind + i]);
                return EXIT_FAILURE;
            }
        }

        FAIRY_INFO_PRINTF("Found %d input file%s\n", inputFilesCount, (inputFilesCount == 1 ? "" : "s"));

        if (ovlName == NULL) { // If a name has not been set using an arg
            ovlName = GetOverlayNameFromFilename(argv[optind]);
            Fado_Relocs(outputFile, inputFilesCount, inputFiles, ovlName);
            free(ovlName);
        } else {
            Fado_Relocs(outputFile, inputFilesCount, inputFiles, ovlName);
        }

        for (i = 0; i < inputFilesCount; i++) {
            fclose(inputFiles[i]);
        }
        free(inputFiles);
        if (outputFile != stdout) {
            fclose(outputFile);
        }
    }

    if (dependencyFileName != NULL) {
        int fileNameLength = strlen(outputFileName);
        char* objectFile = malloc((strlen(outputFileName) + 1) * sizeof(char));
        vc_vector* inputFilesVector = vc_vector_create(inputFilesCount, sizeof(char*), NULL);
        char* extensionStart;
        FILE* dependencyFile = fopen(dependencyFileName, "w");

        if (dependencyFile == NULL) {
            fprintf(stderr, "error: unable to open dependency file '%s' for writing\n", dependencyFileName);
            return EXIT_FAILURE;
        }

        strcpy(objectFile, outputFileName);
        extensionStart = strrchr(objectFile, '.');
        if (extensionStart == objectFile + fileNameLength) {
            fprintf(stderr, "error: file name should not end in a '.'\n");
            return EXIT_FAILURE;
        }
        strcpy(extensionStart, ".o");
        vc_vector_append(inputFilesVector, &argv[optind], inputFilesCount);

        Mido_WriteDependencyFile(dependencyFile, objectFile, inputFilesVector);

        free(objectFile);
        vc_vector_release(inputFilesVector);
        fclose(dependencyFile);
    }

    return EXIT_SUCCESS;

    goto not_experimental_err; // silences a warning
not_experimental_err:
    fprintf(
        stderr,
        "Experimental option '-%c' passed in a non-EXPERIMENTAL build. Rebuild with 'make EXPERIMENTAL=1' to enable.\n",
        opt);
    return EXIT_FAILURE;
}
