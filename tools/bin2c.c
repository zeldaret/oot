/* SPDX-FileCopyrightText: (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#include <assert.h>
#include <errno.h>
#include <inttypes.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "endian.h"

#define NORETURN __attribute__((noreturn))

static void NORETURN
verror(const char *fmt, va_list args)
{
    fputs("\x1b[91merror\x1b[97m: ", stderr);
    vfprintf(stderr, fmt, args);
    fputs("\x1b[0m", stderr);
    exit(EXIT_FAILURE);
}

static void NORETURN
error(const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    verror(fmt, args);
    va_end(args);
}

static void NORETURN
error_post_open(const char *path_to_rm, FILE *file_to_rm, const char *fmt, ...)
{
    // cleanup output file
    fclose(file_to_rm);
    if (remove(path_to_rm) != 0)
        fprintf(stderr, "error calling remove(): %s", strerror(errno));

    // error as normal
    va_list args;
    va_start(args, fmt);
    verror(fmt, args);
    va_end(args);
}

static void NORETURN
usage(const char *progname)
{
    fprintf(stderr,
       "usage: %s -t <fmt> [-pad] input.bin output.inc.c"                                       "\n"
       "    fmt must be one of { 1, 2, 4, 8 }"                                                  "\n"
       "    if pad, align to fmt by filling with 0s, otherwise error if input is not aligned"   "\n",
        progname);
    exit(EXIT_FAILURE);
}

#define BYTES_PER_ROW 32
#define LINE_MASK (BYTES_PER_ROW - 1)

int
main(int argc, char **argv)
{
    const char *progname = argv[0];
    const char *inpath = NULL;
    const char *outpath = NULL;
    const char *fmt_opt = NULL;
    int fmt = 0;
    bool pad = false;

    // Collect arguments

    int narg = 0;
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            if (strcmp(argv[i], "-t") == 0) {
                if (++i == argc)
                    usage(progname);
                fmt_opt = argv[i];
                char *end;
                fmt = strtol(argv[i], &end, 10);
                if (end != &argv[i][strlen(argv[i])])
                    error("Invalid base 10 integer %s\n", argv[i]);
            } else if (strcmp(argv[i], "-pad") == 0) {
                pad = true;
            } else {
                usage(progname);
            }
        } else {
            switch (narg) {
                case 0:
                    inpath = argv[i];
                    break;
                case 1:
                    outpath = argv[i];
                    break;
                default:
                    usage(progname);
                    break;
            }
            narg++;
        }
    }

    // Check arguments

    if (inpath == NULL || outpath == NULL || fmt_opt == NULL)
        usage(progname);
    
    if (fmt != 1 && fmt != 2 && fmt != 4 && fmt != 8)
        error("Invalid fmt option '%s'. Valid options: [1, 2, 4, 8]\n", fmt_opt);

    // Open the input binary file

    FILE *infile = fopen(inpath, "rb");
    if (infile == NULL)
        error("Failed to open input file '%s' for reading: %s\n", inpath, strerror(errno));

    // Get size

    if (fseek(infile, 0, SEEK_END) != 0)
        error("Could not ascertain input file size, could not seek to end: %s\n", strerror(errno));
    size_t file_size = ftell(infile);
    if (fseek(infile, 0, SEEK_SET) != 0)
        error("Could not ascertain input file size, could not seek to start: %s\n", strerror(errno));

    // Check alignment

    if ((file_size & (fmt - 1)) != 0 && !pad) {
        // Not aligned to data size and don't pad, error
        error("Input file '%s' size (%lu) is not aligned to %d bytes\n", inpath, file_size, fmt);
    }

    // Open the output text file

    FILE *outfile = fopen(outpath, "w");
    if (outfile == NULL)
        error("Failed to open output file '%s' for writing: %s\n", outpath, strerror(errno));

    // Write data. If the input binary size was not aligned we either don't get this far or the option
    // to pad with 0s is set.

    bool was_newline = false;
    for (size_t p = 0; p < file_size; p += fmt) {
        size_t rem = fmt;
        if (rem > file_size - p) // For any remaining unaligned data, rest will be padded with 0
            rem = file_size - p;

        // Read input
        uint64_t d = 0;
        if (fread(&d, 1, rem, infile) != rem)
            error_post_open(outpath, outfile, "Error reading from input file '%s': %s\n", inpath, strerror(errno));

        // Byteswap + shift
        d = be64toh(d) >> (64 - 8 * fmt);

        // Write output
        bool was_newline = (((p + fmt) & LINE_MASK) == 0);
        char end = was_newline ? '\n' : ' ';
        if (fprintf(outfile, "0x%0*" PRIX64 ",%c", 2 * fmt, d, end) < 0)
            error_post_open(outpath, outfile, "Error writing to output file '%s': %s\n", outpath, strerror(errno));
    }
    if (!was_newline) {
        if (fputs("\n", outfile) == EOF)
            error_post_open(outpath, outfile, "Error writing to output file '%s': %s\n", outpath, strerror(errno));
    }

    fclose(infile);
    fclose(outfile);
    return EXIT_SUCCESS;
}
