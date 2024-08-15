/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "samplebank.h"
#include "xml.h"
#include "util.h"

/* Utility */

static bool
is_xml(const char *path)
{
    size_t len = strlen(path);

    if (len < 4)
        return false;
    if (path[len - 4] == '.' && tolower(path[len - 3]) == 'x' && tolower(path[len - 2]) == 'm' &&
        tolower(path[len - 1]) == 'l')
        return true;

    return false;
}

/* Samplebanks */

static int
tablegen_samplebanks(const char *sb_hdr_out, const char **samplebanks_paths, int num_samplebank_files)
{
    // Read in all samplebank xml files

    samplebank *samplebanks = malloc(num_samplebank_files * sizeof(samplebank));

    for (int i = 0; i < num_samplebank_files; i++) {
        const char *path = samplebanks_paths[i];

        if (!is_xml(path))
            error("Not an xml file? (\"%s\")", path);

        xmlDocPtr document = xmlReadFile(path, NULL, XML_PARSE_NONET);
        if (document == NULL)
            error("Could not read xml file \"%s\"\n", path);

        read_samplebank_xml(&samplebanks[i], document);
    }

    // Find largest index, including pointer indices

    size_t index_max = 0;

    for (int i = 0; i < num_samplebank_files; i++) {
        samplebank *sb = &samplebanks[i];
        unsigned index = sb->index;
        if (index > index_max)
            index_max = index;

        for (size_t j = 0; j < sb->num_pointers; j++) {
            index = sb->pointer_indices[j];
            if (index > index_max)
                index_max = index;
        }
    }

    size_t indices_len = index_max + 1;

    // Classify indices and check that no two indices are the same

#define INDEX_NONE      0
#define INDEX_NOPOINTER 1
#define INDEX_POINTER   2

    struct sb_index_info {
        const char *name;
        unsigned index_type;
        unsigned ptr_index;
        const char *medium;
        const char *cache_policy;
    };
    struct sb_index_info *index_info = calloc(indices_len, sizeof(struct sb_index_info));

    for (int i = 0; i < num_samplebank_files; i++) {
        samplebank *sb = &samplebanks[i];
        unsigned index = sb->index;

        if (index_info[index].index_type != INDEX_NONE)
            error("Overlapping samplebank indices, saw index %u more than once", index);
        index_info[index].index_type = INDEX_NOPOINTER;

        index_info[index].name = sb->name;
        index_info[index].medium = sb->medium;
        index_info[index].cache_policy = sb->cache_policy;

        unsigned real_index = index;

        // Add pointers defined for this bank
        for (size_t j = 0; j < sb->num_pointers; j++) {
            index = sb->pointer_indices[j];

            if (index_info[index].index_type != INDEX_NONE)
                error("Overlapping samplebank indices, saw index %u more than once", index);
            index_info[index].index_type = INDEX_POINTER;

            index_info[index].ptr_index = real_index;
            index_info[index].medium = sb->medium;
            index_info[index].cache_policy = sb->cache_policy;
        }
    }

    // Check that we have no gaps in the indices

    for (size_t i = 0; i < indices_len; i++) {
        if (index_info[i].index_type == INDEX_NONE)
            error("Missing samplebank index %lu", i);
    }

    // Emit the table

    FILE *out = fopen(sb_hdr_out, "w");
    if (out == NULL)
        error("Failed to open samplebank header output");

    fprintf(out,
            // clang-format off
           "/**"                                                    "\n"
           " * DEFINE_SAMPLE_BANK(name, medium, cachePolicy)"       "\n"
           " * DEFINE_SAMPLE_BANK_PTR(index, medium, cachePolicy)"  "\n"
           " */"                                                    "\n"
            // clang-format on
    );

    for (size_t i = 0; i < indices_len; i++) {
        unsigned index_type = index_info[i].index_type;

        // By this point we shouldn't have any INDEX_NONEs, since it would have been caught before this
        // when we checked for gaps
        assert(index_type == INDEX_NOPOINTER || index_type == INDEX_POINTER);

        if (index_type == INDEX_NOPOINTER) {
            fprintf(out, "DEFINE_SAMPLE_BANK    (%s, %s, %s)\n", index_info[i].name, index_info[i].medium,
                    index_info[i].cache_policy);
        } else {
            fprintf(out, "DEFINE_SAMPLE_BANK_PTR(%u, %s, %s)\n", index_info[i].ptr_index, index_info[i].medium,
                    index_info[i].cache_policy);
        }
    }

    fclose(out);

    free(index_info);
    free(samplebanks);

    return EXIT_SUCCESS;
}

/* Common */

static int
usage(const char *progname)
{
    fprintf(stderr,
            // clang-format off
           "%s: Generate code tables for audio data"                            "\n"
           "Usage:"                                                             "\n"
           "    %s --banks    <samplebank_table.h> <samplebank xml files...>"   "\n",
            // clang-format on
            progname, progname);
    return EXIT_FAILURE;
}

int
main(int argc, char **argv)
{
    int ret = EXIT_SUCCESS;

    const char *progname = argv[0];

    if (argc < 2)
        return usage(progname);

    const char *mode = argv[1];

    if (strequ(mode, "--banks")) {
        if (argc < 4)
            return usage(progname);

        const char *sb_hdr_out = argv[2];
        const char **samplebanks_paths = (const char **)&argv[3];
        int num_samplebank_files = argc - 3;

        ret = tablegen_samplebanks(sb_hdr_out, samplebanks_paths, num_samplebank_files);
    } else {
        return usage(progname);
    }

    return ret;
}
