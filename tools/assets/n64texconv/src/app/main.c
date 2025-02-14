/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#define NORETURN       __attribute__((noreturn))
#define ARRLEN(a)      (sizeof(a) / sizeof((a)[0]))
#define strequ(s1, s2) (strcmp((s1), (s2)) == 0)

#include "../libn64texconv/n64texconv.h"
#include "../libn64texconv/jfif.h"

static bool
is_regular_file(const char *path)
{
    struct stat sb;
    stat(path, &sb);
    return S_ISREG(sb.st_mode);
}

static NORETURN void
usage(const char *progname)
{
    fprintf(stderr,
            "n64texconv: Convert an input png to N64 data in the desired format.\n"
            "Usage: %s <type> <in.png> <out.c> [pal_out.c]\n"
            "    Valid types: i4 / i8 / ci4 / ci8 / ia4 / ia8 / ia16 / rgba16 / rgba32 / JFIF\n",
            progname);
    exit(EXIT_FAILURE);
}

static const struct fmt_info {
    const char *name;
    int fmt;
    int siz;
} fmt_map[] = {
  // clang-format off
    { "i4",     G_IM_FMT_I,    G_IM_SIZ_4b,  },
    { "i8",     G_IM_FMT_I,    G_IM_SIZ_8b,  },
    { "ci4",    G_IM_FMT_CI,   G_IM_SIZ_4b,  },
    { "ci8",    G_IM_FMT_CI,   G_IM_SIZ_8b,  },
    { "ia4",    G_IM_FMT_IA,   G_IM_SIZ_4b,  },
    { "ia8",    G_IM_FMT_IA,   G_IM_SIZ_8b,  },
    { "ia16",   G_IM_FMT_IA,   G_IM_SIZ_16b, },
    { "rgba16", G_IM_FMT_RGBA, G_IM_SIZ_16b, },
    { "rgba32", G_IM_FMT_RGBA, G_IM_SIZ_32b, },
  // clang-format on
};

int
main(int argc, char **argv)
{
    const char *progname = argv[0];
    const char *fmt;
    const char *array_fmt;
    const char *in;
    const char *out;
    const char *pal_out;

    if (argc < 5)
        usage(progname);

    fmt = argv[1];
    array_fmt = argv[2];
    in = argv[3];
    out = argv[4];
    pal_out = (argc > 5) ? argv[5] : NULL;

    unsigned int byte_width = (strequ(array_fmt, "u32") ? 4 : 8);

    if (!is_regular_file(in)) {
        fprintf(stderr, "Could not open input file %s\n", in);
        return EXIT_FAILURE;
    }

    if (strequ(fmt, "JFIF")) {
        struct JFIF *jfif = jfif_fromfile(in, JFIF_BUFFER_SIZE);
        if (jfif == NULL) {
            fprintf(stderr, "Could not open input file %s\n", in);
            return EXIT_FAILURE;
        }
        if (jfif_to_c_file(out, jfif, JFIF_BUFFER_SIZE)) {
            fprintf(stderr, "Could not save output C file %s\n", out);
            return EXIT_FAILURE;
        }
        jfif_free(jfif);
    } else {
        int rv;
        const struct fmt_info *fmt_info = NULL;
        for (size_t i = 0; i < ARRLEN(fmt_map); i++) {
            if (strequ(fmt, fmt_map[i].name)) {
                fmt_info = &fmt_map[i];
                break;
            }
        }
        if (fmt_info == NULL) {
            fprintf(stderr, "Error: Invalid fmt %s\n", fmt);
            return EXIT_FAILURE;
        }

        struct n64_image *img = n64texconv_image_from_png(in, fmt_info->fmt, fmt_info->siz, G_IM_FMT_RGBA);
        if (img == NULL) {
            fprintf(stderr, "Could not open input file %s\n", in);
            return EXIT_FAILURE;
        }

        if (img->pal != NULL) {
            if (pal_out == NULL) {
                fprintf(stderr, "Input file %s is color indexed, a palette output C file must be provided.\n", in);
                usage(progname);
            }

            if (rv = n64texconv_palette_to_c_file(pal_out, img->pal, false, byte_width), rv != 0) {
                fprintf(stderr, "Could not save output C file %s (error %d)\n", pal_out, rv);
                return EXIT_FAILURE;
            }
        }

        if (rv = n64texconv_image_to_c_file(out, img, false, false, byte_width), rv != 0) {
            fprintf(stderr, "Could not save output C file %s (error %d)\n", out, rv);
            return EXIT_FAILURE;
        }

        if (img->pal != NULL)
            n64texconv_palette_free(img->pal);
        n64texconv_image_free(img);
    }

    return EXIT_SUCCESS;
}
