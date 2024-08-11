/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "xml.h"
#include "aifc.h"
#include "samplebank.h"
#include "util.h"

NORETURN static void
usage(const char *progname)
{
    fprintf(stderr, "Usage: %s [--matching] [--makedepend <out.d>] <in.xml> <out.s>\n", progname);
    exit(EXIT_FAILURE);
}

int
main(int argc, char **argv)
{
    static uint8_t match_buf[BUG_BUF_SIZE];
    const char *filename = NULL;
    xmlDocPtr document;
    const char *outfilename = NULL;
    const char *mdfilename = NULL;
    FILE *mdfile;
    FILE *outf;
    samplebank sb;
    uint8_t *match_buf_ptr;
    size_t match_buf_pos;
    bool matching = false;

    // parse args

#define arg_error(fmt, ...)                       \
    do {                                          \
        fprintf(stderr, fmt "\n", ##__VA_ARGS__); \
        usage(argv[0]);                           \
    } while (0)

    int argn = 0;
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            // Optional args

            if (strequ(argv[i], "--matching")) {
                if (matching)
                    arg_error("Received --matching option twice");

                matching = true;
                continue;
            }
            if (strequ(argv[i], "--makedepend")) {
                if (mdfilename != NULL)
                    arg_error("Received --makedepend option twice");
                if (i + 1 == argc)
                    arg_error("--makedepend missing required argument");

                mdfilename = argv[++i];
                continue;
            }
            arg_error("Unknown option \"%s\"", argv[i]);
        } else {
            // Required args

            switch (argn) {
                case 0:
                    filename = argv[i];
                    break;
                case 1:
                    outfilename = argv[i];
                    break;
                default:
                    arg_error("Unknown positional argument \"%s\"", argv[i]);
                    break;
            }
            argn++;
        }
    }
    if (argn != 2)
        arg_error("Not enough positional arguments");

#undef arg_error

    // open xml
    document = xmlReadFile(filename, NULL, XML_PARSE_NONET);
    if (document == NULL)
        return EXIT_FAILURE;

    // parse xml
    read_samplebank_xml(&sb, document);

    // open output asm file
    outf = fopen(outfilename, "w");
    if (outf == NULL)
        error("Unable to open output file [%s] for writing", outfilename);

    // open output dep file if applicable
    if (mdfilename != NULL) {
        mdfile = fopen(mdfilename, "w");
        if (mdfile == NULL)
            error("Unable to open dependency file [%s] for writing", mdfilename);

        fprintf(mdfile, "%s: \\\n    %s", outfilename, filename);
    }

    // write output

    fprintf(outf,
            // clang-format off
           ".rdata"                 "\n"
           ".balign 16"             "\n"
                                    "\n"
           ".global %s_Start"       "\n"
           "%s_Start:"              "\n"
           "$start:"                "\n",
            // clang-format on
            sb.name, sb.name);

    // original tool appears to have a buffer clearing bug involving a buffer sized BUG_BUF_SIZE
    match_buf_ptr = (matching) ? match_buf : NULL;
    match_buf_pos = 0;

    for (size_t i = 0; i < sb.num_samples; i++) {
        const char *name = sb.sample_names[i];
        const char *path = sb.sample_paths[i];
        bool is_sample = sb.is_sample[i];

        if (mdfilename != NULL)
            fprintf(mdfile, " \\\n    %s", path);

        if (!is_sample) {
            // blob
            fprintf(outf,
                    // clang-format off
                                        "\n"
                   "# BLOB %s"          "\n"
                                        "\n"
                   ".incbin \"%s\""     "\n"
                                        "\n"
                   ".balign 16"         "\n"
                                        "\n",
                    // clang-format on
                    name, path);
            continue;
        }

        // aifc sample
        fprintf(outf,
                // clang-format off
                                                "\n"
               "# SAMPLE %lu"                   "\n"
                                                "\n"
               ".global %s_%s_Abs"              "\n"
               "%s_%s_Abs:"                     "\n"
               ".global %s_%s_Off"              "\n"
               ".set %s_%s_Off, . - $start"     "\n"
                                                "\n",
                // clang-format on
                i, sb.name, name, sb.name, name, sb.name, name, sb.name, name);

        aifc_data aifc;
        aifc_read(&aifc, path, match_buf_ptr, &match_buf_pos);

        fprintf(outf, ".incbin \"%s\", 0x%lX, 0x%lX\n", path, aifc.ssnd_offset, aifc.ssnd_size);

        if (matching && sb.buffer_bug && i == sb.num_samples - 1) {
            // emplace garbage
            size_t end = ALIGN16(match_buf_pos);

            fprintf(outf, "\n# Garbage data from buffer bug\n");
            for (; match_buf_pos < end; match_buf_pos++)
                fprintf(outf, ".byte 0x%02X\n", match_buf[match_buf_pos]);
        } else {
            fputs("\n.balign 16\n", outf);
        }

        aifc_dispose(&aifc);
    }

    if (mdfilename != NULL) {
        fputs("\n", mdfile);
        fclose(mdfile);
    }

    fprintf(outf,
            // clang-format off
           ".global %s_Size"            "\n"
           ".set %s_Size, . - $start"   "\n",
            // clang-format on
            sb.name, sb.name);

    fclose(outf);
    xmlFreeDoc(document);
    return EXIT_SUCCESS;
}
