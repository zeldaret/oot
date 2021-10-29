/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>

#include "macros.h"
#include "help.h"
#include "fairy/fairy.h"
#include "fado.h"
#include "vc_vector/vc_vector.h"

#include "version.inc"

void PrintVersion() {
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

/* (Bad) filename-parsing idea to get the overlay name from the filename. output must be freed separately. */
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

#define OPTSTR "n:o:v:hV"
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
    { { "name", required_argument, NULL, 'n' }, "NAME", "Use NAME as the overlay name. Uses the deepest folder name in the input file's path if not specified" },
    { { "output-file", required_argument, NULL, 'o' }, "FILE", "Output to FILE. Will use stdout if none is specified" },
    { { "verbosity", required_argument, NULL, 'v' }, "N", "Verbosity level, one of 0 (None, default), 1 (Info), 2 (Debug)" },

    { { "help", no_argument, NULL, 'h' }, NULL, "Display this message and exit" },
    { { "version", no_argument, NULL, 'V' }, NULL, "Display version information" },

    { { NULL, 0, NULL, '\0' }, NULL, NULL },
};
// clang-format on

static size_t posArgCount = ARRAY_COUNT(optInfo);
static size_t optCount = ARRAY_COUNT(optInfo);
static struct option longOptions[ARRAY_COUNT(optInfo)];

void ConstructLongOpts() {
    size_t i;

    for (i = 0; i < optCount; i++) {
        longOptions[i] = optInfo[i].longOpt;
    }
}

int main(int argc, char** argv) {
    // int verbosityLevel = VERBOSITY_NONE;
    int opt;
    int inputFilesCount;
    FILE** inputFiles;
    FILE* outputFile = stdout;
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
            case 'n':
                ovlName = optarg;
                break;

            case 'o':
                outputFile = fopen(optarg, "wb");
                break;

            case 'v':
                if (sscanf(optarg, "%u", &gVerbosity) == 0) {
                    fprintf(stderr, "warning: verbosity argument '%s' should be a nonnegative decimal integer", optarg);
                }
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
        }

        FAIRY_INFO_PRINTF("Found %d input file%s\n", inputFilesCount, (inputFilesCount == 1 ? "" : "s"));

        if (ovlName == NULL) {
            ovlName = GetOverlayNameFromFilename(argv[optind]);
        }

        Fado_Relocs(outputFile, inputFilesCount, inputFiles, ovlName);

        free(ovlName);

        for (i = 0; i < inputFilesCount; i++) {
            fclose(inputFiles[i]);
        }
        free(inputFiles);
        if (outputFile != stdout) {
            fclose(outputFile);
        }
    }

    return EXIT_SUCCESS;
}
