/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */

// Note: this is statically linked with GPL binaries, making the binary GPL-licensed

#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#define NORETURN __attribute__((noreturn))

#include "../n64texconv/src/libn64texconv/jfif.h"

static bool is_regular_file(const char* path) {
    struct stat sb;
    stat(path, &sb);
    return S_ISREG(sb.st_mode);
}

static NORETURN void usage(const char* progname) {
    fprintf(stderr,
            "build_jfif: Validate an input JFIF and convert to a C array.\n"
            "Usage: %s <in.jpg> <out.c>\n",
            progname);
    exit(EXIT_FAILURE);
}

int main(int argc, char** argv) {
    const char* progname = argv[0];
    const char* in;
    const char* out;

    if (argc != 3)
        usage(progname);

    in = argv[1];
    out = argv[2];

    if (!is_regular_file(in)) {
        fprintf(stderr, "Could not open input file %s\n", in);
        return EXIT_FAILURE;
    }

    struct JFIF* jfif = jfif_fromfile(in, JFIF_BUFFER_SIZE);
    if (jfif == NULL) {
        fprintf(stderr, "Could not open input file %s\n", in);
        return EXIT_FAILURE;
    }
    if (jfif_to_c_file(out, jfif, JFIF_BUFFER_SIZE)) {
        fprintf(stderr, "Could not save output C file %s\n", out);
        return EXIT_FAILURE;
    }
    jfif_free(jfif);

    return EXIT_SUCCESS;
}
