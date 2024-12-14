/* SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET */
/* SPDX-License-Identifier: CC0-1.0 */
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

#include "elf32.h"
#include "util.h"

static int
usage(const char *progname)
{
    fprintf(stderr,
            // clang-format off
           "Generates a header containing definitions for the sizes of all the input object files and a"        "\n"
           "definition for the number of input files."                                                          "\n"
           "Usage: %s <header output path> <num define> <header guard> <section name> <object files...>"        "\n"
           "    header output path: Path to write the generated header to"                                      "\n"
           "            num define: The name of the definition for the number of input files"                   "\n"
           "          header guard: The header guard definition name to be used for the output header"          "\n"
           "          section name: The object file section to output the size of in each definition"           "\n"
           "          object files: List of paths to each object file to be processed, each input object file"  "\n"
           "                        must contain the section requested in the section name argument and must"   "\n"
           "                        also contain a .note.name section containing the null-terminated symbolic " "\n"
           "                        name of the object that is used to name the size definitions."              "\n",
            // clang-format on
            progname);
    return EXIT_FAILURE;
}

int
main(int argc, char **argv)
{
    const char *progname = argv[0];

    if (argc < 6) // progname, 4 required args, at least 1 input file
        return usage(progname);

    const char *header_out = argv[1];
    const char *num_def = argv[2];
    const char *header_guard = argv[3];
    const char *secname = argv[4];
    int num_files = argc - 5;
    char **files = &argv[5];

    // Open the header for writing, write the header guard

    FILE *out = fopen(header_out, "w");
    if (out == NULL)
        error("failed to open output file \"%s\" for writing: %s", header_out, strerror(errno));

    fprintf(out,
            // clang-format off
           "#ifndef %s_H_"      "\n"
           "#define %s_H_"      "\n"
                                "\n",
            // clang-format on
            header_guard, header_guard);

    // For each input elf file, write the size define

    for (int i = 0; i < num_files; i++) {
        const char *path = files[i];

        size_t data_size;
        void *data = elf32_read(path, &data_size);

        Elf32_Shdr *shstrtab = elf32_get_shstrtab(data, data_size);
        if (shstrtab == NULL)
            error("Input file \"%s\" has no shstrtab?", path);

        // Read in the .note.name section containing the object's symbolic name.
        // We run this on both soundfonts and sequences:
        // - Soundfont .note.name sections are added with objcopy
        // - Sequence .note.name sections are assembled as part of .startseq

        Elf32_Shdr *name_section = elf32_section_forname(".note.name", shstrtab, data, data_size);
        if (name_section == NULL)
            error("Input file \"%s\" has no name section?", path);

        uint32_t name_section_offset = elf32_read32(name_section->sh_offset);
        uint32_t name_section_size = elf32_read32(name_section->sh_size);
        validate_read(name_section_offset, name_section_size, data_size);

        const char *object_name = GET_PTR(data, name_section_offset);
        if (strnlen(object_name, name_section_size + 1) >= name_section_size)
            error("Input file \"%s\" name is not properly terminated?", path);

        // Read the section header for the data we're interested in, the name is given in the program args

        Elf32_Shdr *sec = elf32_section_forname(secname, shstrtab, data, data_size);
        if (sec == NULL)
            error("Input file \"%s\" has no section named \"%s\"?", path, secname);

        // Assumption: The section size matches the size in the <object_name>_Size symbol, this is always
        // true for soundfonts by nature of how they're built (cf. soundfont.ld) and should always be true
        // of sequences since writing anything that results in output data before .startseq and after .endseq
        // is essentially undefined.
        size_t object_size = elf32_read32(sec->sh_size);

        fprintf(out, "#define %s_SIZE 0x%lX\n", object_name, object_size);

        free(data);
    }

    // Write the total number of input files, end the header

    fprintf(out,
            // clang-format off
                                "\n"
           "#define %s %d"      "\n"
                                "\n"
           "#endif"             "\n",
            // clang-format on
            num_def, num_files);
    fclose(out);

    return EXIT_SUCCESS;
}
