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
#include <regex.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "samplebank.h"
#include "soundfont.h"
#include "xml.h"
#include "elf32.h"
#include "util.h"

/* Samplebanks */

static int
tablegen_samplebanks(const char *sb_hdr_out, const char **samplebanks_paths, int num_samplebank_files)
{
    // Read in all samplebank xml files

    samplebank *samplebanks = malloc(num_samplebank_files * sizeof(samplebank));

    for (int i = 0; i < num_samplebank_files; i++) {
        const char *path = samplebanks_paths[i];
        size_t pathlen = strlen(path);

        if (!str_endswith(path, pathlen, ".xml"))
            error("Not an xml file? (\"%s\")", path);

        xmlDocPtr document = xmlReadFile(path, NULL, XML_PARSE_NONET);
        if (document == NULL)
            error("Could not read xml file \"%s\"", path);

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
            error("No samplebank for index %lu", i);
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

/* Soundfonts */

static int
validate_samplebank_index(soundfont *sf, samplebank *sb, int ptr_idx)
{
    if (ptr_idx != -1) {
        // Validate pointer index
        bool found = false;

        for (size_t i = 0; i < sb->num_pointers; i++) {
            if (ptr_idx == sb->pointer_indices[i]) {
                found = true;
                break;
            }
        }
        if (!found)
            warning("In Soundfont %s: Invalid pointer indirect %d for samplebank %s", sf->info.name, ptr_idx, sb->name);

        return ptr_idx;
    } else {
        return sb->index;
    }
}

static int
tablegen_soundfonts(const char *sf_hdr_out, char **soundfonts_paths, int num_soundfont_files)
{
    soundfont *soundfonts = malloc(num_soundfont_files * sizeof(soundfont));
    int max_index = 0;

    for (int i = 0; i < num_soundfont_files; i++) {
        char *path = soundfonts_paths[i];
        size_t pathlen = strlen(path);

        if (!str_endswith(path, pathlen, ".xml"))
            error("Not an xml file? (\"%s\")", path);

        xmlDocPtr document = xmlReadFile(path, NULL, XML_PARSE_NONET);
        if (document == NULL)
            error("Could not read xml file \"%s\"", path);

        xmlNodePtr root = xmlDocGetRootElement(document);
        if (!strequ(XMLSTR_TO_STR(root->name), "Soundfont"))
            error("Root node must be <Soundfont>");

        soundfont *sf = &soundfonts[i];

        // Transform the xml path into a header include path
        // Assumption: replacing .xml -> .h forms a valid header include path
        path[pathlen - 3] = 'h';
        path[pathlen - 2] = '\0';

        read_soundfont_info(sf, root);

        if (max_index < sf->info.index)
            max_index = sf->info.index;
    }

    struct soundfont_file_info {
        soundfont *soundfont;
        int normal_bank_index;
        int dd_bank_index;
        char *name;
    };
    struct soundfont_file_info *finfo = calloc(max_index + 1, sizeof(struct soundfont_file_info));

    for (int i = 0; i < num_soundfont_files; i++) {
        soundfont *sf = &soundfonts[i];

        // Resolve samplebank indices

        int normal_idx = validate_samplebank_index(sf, &sf->sb, sf->info.pointer_index);

        int dd_idx = 255;
        if (sf->info.bank_path_dd != NULL)
            dd_idx = validate_samplebank_index(sf, &sf->sbdd, sf->info.pointer_index_dd);

        // Add info

        if (finfo[sf->info.index].soundfont != NULL)
            error("Overlapping soundfont indices, saw index %u more than once", sf->info.index);

        finfo[sf->info.index].soundfont = &soundfonts[i];
        finfo[sf->info.index].normal_bank_index = normal_idx;
        finfo[sf->info.index].dd_bank_index = dd_idx;
        finfo[sf->info.index].name = soundfonts_paths[i];
    }

    // Make sure there are no gaps
    for (int i = 0; i < max_index + 1; i++) {
        if (finfo[i].soundfont == NULL)
            error("No soundfont for index %d", i);
    }

    FILE *out = fopen(sf_hdr_out, "w");

    fprintf(out,
            // clang-format off
           "/**"                                                                    "\n"
           " * DEFINE_SOUNDFONT(name, medium, cachePolicy, sampleBankNormal, "
                               "sampleBankDD, nInstruments, nDrums, nSfx)"          "\n"
           " */"                                                                    "\n"
            // clang-format on
    );

    for (int i = 0; i < max_index + 1; i++) {
        soundfont *sf = finfo[i].soundfont;

        fprintf(out,
                // clang-format off
               "#include \"%s\""                                                                            "\n"
               "DEFINE_SOUNDFONT(%s, %s, %s, %d, %d, SF%d_NUM_INSTRUMENTS, SF%d_NUM_DRUMS, SF%d_NUM_SFX)"   "\n",
                // clang-format on
                finfo[i].name, sf->info.name, sf->info.medium, sf->info.cache_policy, finfo[i].normal_bank_index,
                finfo[i].dd_bank_index, sf->info.index, sf->info.index, sf->info.index);
    }

    fclose(out);

    free(soundfonts);
    free(finfo);

    return EXIT_SUCCESS;
}

/* Sequences */

struct seq_order_entry {
    const char *name;
    const char *enum_name;
    bool isptr;
};

struct seq_order {
    size_t num_sequences;
    struct seq_order_entry *entries;
    void *filedata;
};

static void
read_seq_order(struct seq_order *order, const char *path)
{
    // Read from file, we assume the file has been preprocessed with cpp so that whitespace is collapsed and each line
    // has the form:
    // (name,enum_name) or *(name,enum_name)
    UNUSED size_t data_size;
    char *filedata = util_read_whole_file(path, &data_size);

    // We expect one entry per line, gather the total length
    size_t total_size = 0;
    for (char *p = filedata; *p != '\0'; p++) {
        if (*p == '\n') {
            total_size++;
        } else if (isspace(*p)) {
            // There should be no whitespace in the input file besides newlines
            goto malformed;
        }
    }

    // Alloc entries
    struct seq_order_entry *entries = malloc(total_size * sizeof(struct seq_order_entry));

    enum matchno {
        MATCH_ALL,
        MATCH_PTR,
        MATCH_NAME,
        MATCH_ENUM,
        MATCH_NUM
    };
    regmatch_t match[MATCH_NUM];
    regex_t re;
    // Matches either
    // (<c_identifier>,<c_identifier>)  for non-pointer entries
    // or
    // *(<c_identifier>,<c_identifier>) for pointer entries
    const char *line_regexp = "^(\\*?)\\(([_a-zA-Z][_a-zA-Z0-9]*),([_a-zA-Z][_a-zA-Z0-9]*)\\)$";

    int status = regcomp(&re, line_regexp, REG_EXTENDED);
    assert(status == 0 && "Failed to compile sequence order regular expression?");

    char *lstart = filedata;
    for (size_t i = 0; i < total_size; i++) {
        // find end of line
        char *p = lstart;
        while (*p != '\n') {
            assert(*p != '\0');
            p++;
        }
        char *lend = p;
        // null-terminate the line (replaces the newline)
        *lend = '\0';

        // try to match the regular expression
        status = regexec(&re, lstart, MATCH_NUM, match, 0);
        if (status != 0) {
            // failed to match, malformed input file
            char ebuf[128];
            regerror(status, &re, ebuf, sizeof(ebuf));
            fprintf(stderr, "Failed to match line %lu: \"%s\"\nregexec error: \"%s\"\n", i, lstart, ebuf);
            goto malformed;
        }

        // if the group is empty we're not a pointer, else we are
        entries[i].isptr = match[MATCH_PTR].rm_so != match[MATCH_PTR].rm_eo;

        // get the name
        entries[i].name = &lstart[match[MATCH_NAME].rm_so];
        lstart[match[MATCH_NAME].rm_eo] = '\0'; // replaces ,

        // get the enum name
        entries[i].enum_name = &lstart[match[MATCH_ENUM].rm_so];
        lstart[match[MATCH_ENUM].rm_eo] = '\0'; // replaces )

        // next line
        lstart = lend + 1;
    }
    assert(*lstart == '\0');

    // Write results
    order->num_sequences = total_size;
    order->entries = entries;
    order->filedata = filedata;
    return;
malformed:
    error("Malformed %s?", path);
}

struct seqdata {
    const char *elf_path;
    const char *name;
    uint32_t font_section_offset;
    size_t font_section_size;
};

static int
tablegen_sequences(const char *seq_font_tbl_out, const char *seq_order_path, const char **sequences_paths,
                   int num_sequence_files)
{
    struct seq_order order;
    read_seq_order(&order, seq_order_path);

#ifdef SEQ_DEBUG
    // Print the sequence order
    printf("Sequence order:\n");
    for (size_t i = 0; i < order.num_sequences; i++) {
        printf("    name=\"%s\" enum=\"%s\" ptr=%d\n", order.entries[i].name, order.entries[i].enum_name,
               order.entries[i].isptr);
    }
#endif

    struct seqdata *file_data = malloc(num_sequence_files * sizeof(struct seqdata));

    // Read and validate the sequence object files

    for (int i = 0; i < num_sequence_files; i++) {
        const char *path = sequences_paths[i];

        if (!str_endswith(path, strlen(path), ".o"))
            error("Not a .o file? (\"%s\")", path);

        // Open ELF file

        size_t data_size;
        void *data = elf32_read(path, &data_size);

        Elf32_Shdr *symtab = elf32_get_symtab(data, data_size);
        if (symtab == NULL)
            error("ELF file \"%s\" has no symbol table?", path);
        Elf32_Shdr *shstrtab = elf32_get_shstrtab(data, data_size);
        if (shstrtab == NULL)
            error("ELF file \"%s\" has no section header string table?", path);

        // The .note.fonts and .note.name sections are written when assembling the sequence:
        // The .note.fonts section contains a list of bytes for each soundfont the sequences uses
        // The .note.name section contains the null-terminated name of the sequence as set by .startseq

        Elf32_Shdr *font_section = elf32_section_forname(".note.fonts", shstrtab, data, data_size);
        if (font_section == NULL)
            error("Sequence file \"%s\" has no fonts section?", path);

        uint32_t font_section_offset = elf32_read32(font_section->sh_offset);
        uint32_t font_section_size = elf32_read32(font_section->sh_size);
        validate_read(font_section_offset, font_section_size, data_size);

        Elf32_Shdr *name_section = elf32_section_forname(".note.name", shstrtab, data, data_size);
        if (name_section == NULL)
            error("Sequence file \"%s\" has no name section?", path);

        uint32_t name_section_offset = elf32_read32(name_section->sh_offset);
        uint32_t name_section_size = elf32_read32(name_section->sh_size);
        validate_read(name_section_offset, name_section_size, data_size);

        const char *seq_name = GET_PTR(data, name_section_offset);
        if (strnlen(seq_name, name_section_size + 1) >= name_section_size)
            error("Sequence file \"%s\" name is not properly terminated?", path);

        // Populate new data
        struct seqdata *seqdata = &file_data[i];
        seqdata->elf_path = strdup(path);
        seqdata->name = strdup(seq_name);
        seqdata->font_section_offset = font_section_offset;
        seqdata->font_section_size = font_section_size;

        free(data);
    }

#ifdef SEQ_DEBUG
    // Debugging: Print the findings for each sequence object
    printf("\nNum files: %d\n\n", num_sequence_files);

    for (int i = 0; i < num_sequence_files; i++) {
        struct seqdata *seqdata = &file_data[i];

        printf(
            // clang-format off
           "    elf path    : \"%s\""   "\n"
           "    name        : \"%s\""   "\n"
           "    font offset : 0x%X"     "\n"
           "    num fonts   : %lu"      "\n\n",
            // clang-format on
            seqdata->elf_path, seqdata->name, seqdata->font_section_offset, seqdata->font_section_size);
    }
#endif

    // Link against the sequence order coming from the sequence table header

    struct seqdata **final_seqdata = calloc(order.num_sequences, sizeof(struct seqdata *));

    for (size_t i = 0; i < order.num_sequences; i++) {
        // Skip pointers for now
        if (order.entries[i].isptr)
            continue;

        // If it's not a pointer, "name" is the name as it appears in a sequence file, find it in the list of sequences
        const char *name = order.entries[i].name;

        // Find the object file with this name
        for (int j = 0; j < num_sequence_files; j++) {
            struct seqdata *seqdata = &file_data[j];

            if (strequ(name, seqdata->name)) {
                // Found name, done
                final_seqdata[i] = seqdata;
                break;
            }
        }
    }

    for (size_t i = 0; i < order.num_sequences; i++) {
        // Now we only care about pointers
        if (!order.entries[i].isptr)
            continue;

        // If it's a pointer, "name" is the ENUM name of the sequence it points to
        const char *name = order.entries[i].name;

        for (size_t j = 0; j < order.num_sequences; j++) {
            // Skip pointers, the system doesn't allow multiple indirection so this must point to a non-pointer entry.
            if (order.entries[j].isptr)
                continue;

            if (strequ(name, order.entries[j].enum_name)) {
                // For pointers, we just duplicate the fonts for the original into the pointer entry.
                // TODO ideally we would allow fonts to be different when a sequence is accessed by pointer, but how
                // to supply this info?
                final_seqdata[i] = final_seqdata[j];
                break;
            }
        }
    }

    // Make sure we found an object file for all declared sequences
    for (size_t i = 0; i < order.num_sequences; i++) {
        if (final_seqdata[i] == NULL)
            error("Could not find object file for sequence %lu : %s", i, order.entries[i].name);
    }

    // Write the sequence font table out

    FILE *out = fopen(seq_font_tbl_out, "w");
    if (out == NULL)
        error("Failed to open output file \"%s\" for writing", seq_font_tbl_out);

    fprintf(out,
            // clang-format off
                                            "\n"
           ".section .rodata"               "\n"
                                            "\n"
           ".global gSequenceFontTable"     "\n"
           "gSequenceFontTable:"            "\n"
            // clang-format on
    );

    // Write the 16-bit offsets for each sequence
    for (size_t i = 0; i < order.num_sequences; i++) {
        fprintf(out, "    .half Fonts_%lu - gSequenceFontTable\n", i);
    }
    fprintf(out, "\n");

    // Write the fonts for each sequence: number of fonts followed by an incbin for the rest.
    for (size_t i = 0; i < order.num_sequences; i++) {
        fprintf(out,
                // clang-format off
               "Fonts_%lu:"                         "\n"
               "    .byte %ld"                      "\n"
               "    .incbin \"%s\", 0x%X, %lu"      "\n"
                                                    "\n",
                // clang-format on
                i, final_seqdata[i]->font_section_size, final_seqdata[i]->elf_path,
                final_seqdata[i]->font_section_offset, final_seqdata[i]->font_section_size);
    }
    fprintf(out, ".balign 16\n");

    fclose(out);
    return EXIT_SUCCESS;
}

/* Common */

static int
usage(const char *progname)
{
    fprintf(stderr,
            // clang-format off
           "%s: Generate code tables for audio data"                                                "\n"
           "Usage:"                                                                                 "\n"
           "    %s --banks      <samplebank_table.h> <samplebank xml files...>"                     "\n"
           "    %s --fonts      <soundfont_table.h> <soundfont xml files...>"                       "\n"
           "    %s --sequences  <seq_font_table.s> <sequence_order.in> <sequence object files...>"  "\n",
            // clang-format on
            progname, progname, progname, progname);
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
    } else if (strequ(mode, "--fonts")) {
        if (argc < 4)
            return usage(progname);

        const char *sf_hdr_out = argv[2];
        char **soundfonts_paths = &argv[3];
        int num_soundfont_files = argc - 3;

        ret = tablegen_soundfonts(sf_hdr_out, soundfonts_paths, num_soundfont_files);
    } else if (strequ(mode, "--sequences")) {
        if (argc < 5)
            return usage(progname);

        const char *seq_font_tbl_out = argv[2];
        const char *seq_order_path = argv[3];
        const char **sequences_paths = (const char **)&argv[4];
        int num_sequence_files = argc - 4;

        ret = tablegen_sequences(seq_font_tbl_out, seq_order_path, sequences_paths, num_sequence_files);
    } else {
        return usage(progname);
    }

    return ret;
}
