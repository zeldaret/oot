#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "spec.h"
#include "util.h"

/**
 * Note: *SECTION ALIGNMENT*
 * 
 * Object files built with a compiler other than IDO such as GCC can, by default, use narrower alignment
 * for sections than 0x10. Currently in order to generate correct relocations, each section must be
 * aligned to 0x10, so we explicitly align sections in the linker script. Without this, the linker may
 * implicitly align and insert padding between the section start symbol (such as *SegmentRoDataStart)
 * and the actual aligned start of the section.
 * This has no effect with IDO as sections are already properly aligned after compilation.
 * 
 * We can't use the ALIGN and SUBALIGN expressions on the sections because they might impose a narrower
 * alignment then the input sections require. We align sections manually instead.
 */
#define SUBALIGN 0x10

static void write_text_sections(FILE *f, const struct Segment *seg)
{
    int i;

    fprintf(f, "\t\t_%sSegmentTextStart = .;\n\n", seg->name);

    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f, "\t\t%s (.text)\n", seg->includes[i].fpath);

        if (seg->includes[i].linkerPadding != 0)
            fprintf(f, "\t\t. += 0x%X;\n", seg->includes[i].linkerPadding);

        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }

    fprintf(f,
        "\n"
        "\t\t. = ALIGN(0x%X);\n"
        "\t\t_%sSegmentTextEnd = .;\n"
        "\t\t_%sSegmentTextSize = ABSOLUTE(_%sSegmentTextEnd - _%sSegmentTextStart);\n",
        seg->align,
        seg->name,
        seg->name, seg->name, seg->name
    );
}

static void write_data_sections(FILE *f, const struct Segment *seg)
{
    int i;

    fprintf(f, "\t\t_%sSegmentDataStart = .;\n\n", seg->name);

    for (i = 0; i < seg->includesCount; i++)
    {
        if (!seg->includes[i].dataWithRodata)
        {
            fprintf(f, "\t\t%s (.data)\n", seg->includes[i].fpath);
            fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
        }
    }

    fprintf(f,
        "\n"
        "\t\t. = ALIGN(0x%X);\n"
        "\t\t_%sSegmentDataEnd = .;\n"
        "\t\t_%sSegmentDataSize = ABSOLUTE(_%sSegmentDataEnd - _%sSegmentDataStart);\n",
        seg->align,
        seg->name,
        seg->name, seg->name, seg->name
    );
}

static void write_rodata_sections(FILE *f, const struct Segment *seg)
{
    int i;

    fprintf(f, "\t\t_%sSegmentRoDataStart = .;\n\n", seg->name);

    for (i = 0; i < seg->includesCount; i++)
    {
        if (seg->includes[i].dataWithRodata)
        {
            fprintf(f, "\t\t%s (.data)\n", seg->includes[i].fpath);
            fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
        }
        fprintf(f, "\t\t%s (.rodata)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
        fprintf(f, "\t\t%s (.rodata.str1.4)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
        fprintf(f, "\t\t%s (.rodata.cst4)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
        fprintf(f, "\t\t%s (.rodata.cst8)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }

    fprintf(f,
        "\n"
        "\t\t. = ALIGN(0x%X);\n"
        "\t\t_%sSegmentRoDataEnd = .;\n"
        "\t\t_%sSegmentRoDataSize = ABSOLUTE(_%sSegmentRoDataEnd - _%sSegmentRoDataStart);\n",
        seg->align,
        seg->name,
        seg->name, seg->name, seg->name
    );
}

static void write_bss_sections(FILE *f, const struct Segment *seg)
{
    int i;

    fprintf(f, "\t\t_%sSegmentBssStart = .;\n\n", seg->name);

    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f, "\t\t%s (.sbss)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }
    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f, "\t\t%s (.scommon)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }
    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f, "\t\t%s (.bss)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }
    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f, "\t\t%s (COMMON)\n", seg->includes[i].fpath);
        fprintf(f, "\t\t. = ALIGN(0x%X);\n", SUBALIGN);
    }

    fprintf(f,
        "\n"
        "\t\t. = ALIGN(0x%X);\n"
        "\t\t_%sSegmentBssEnd = .;\n"
        "\t\t_%sSegmentBssSize = ABSOLUTE(_%sSegmentBssEnd - _%sSegmentBssStart);\n",
        seg->align,
        seg->name,
        seg->name, seg->name, seg->name
    );
}

static void write_sections_finale(FILE *f)
{
    fprintf(f,
        /* Debugging Sections */

        "\t.reginfo          : { *(.reginfo) }\n"
        "\t.pdr              : { *(.pdr) }\n"
        "\n"
        "\t.comment        0 : { *(.comment) }\n"
        "\t.gnu.build.attributes 0 : { *(.gnu.build.attributes) }\n"
        "\n"
        /* DWARF debug sections */
        /* DWARF 1 */
        "\t.debug          0 : { *(.debug) }\n"
        "\t.line           0 : { *(.line) }\n"
        "\n"
        /* GNU DWARF 1 extensions */
        "\t.debug_srcinfo  0 : { *(.debug_srcinfo) }\n"
        "\t.debug_sfnames  0 : { *(.debug_sfnames) }\n"
        "\n"
        /* DWARF 1.1 and DWARF 2 */
        "\t.debug_aranges  0 : { *(.debug_aranges) }\n"
        "\t.debug_pubnames 0 : { *(.debug_pubnames) }\n"
        "\n"
        /* DWARF 2 */
        "\t.debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }\n"
        "\t.debug_abbrev   0 : { *(.debug_abbrev) }\n"
        "\t.debug_line     0 : { *(.debug_line .debug_line.* .debug_line_end ) }\n"
        "\t.debug_frame    0 : { *(.debug_frame) }\n"
        "\t.debug_str      0 : { *(.debug_str) }\n"
        "\t.debug_loc      0 : { *(.debug_loc) }\n"
        "\t.debug_macinfo  0 : { *(.debug_macinfo) }\n"
        "\n"
        /* SGI/MIPS DWARF 2 extensions */
        "\t.debug_weaknames 0 : { *(.debug_weaknames) }\n"
        "\t.debug_funcnames 0 : { *(.debug_funcnames) }\n"
        "\t.debug_typenames 0 : { *(.debug_typenames) }\n"
        "\t.debug_varnames 0 : { *(.debug_varnames) }\n"
        "\n"
        /* DWARF 3 */
        "\t.debug_pubtypes 0 : { *(.debug_pubtypes) }\n"
        "\t.debug_ranges   0 : { *(.debug_ranges) }\n"
        "\n"
        /* DWARF extensions */
        "\t.debug_addr     0 : { *(.debug_addr) }\n"
        "\t.debug_line_str 0 : { *(.debug_line_str) }\n"
        "\t.debug_loclists 0 : { *(.debug_loclists) }\n"
        "\t.debug_macro    0 : { *(.debug_macro) }\n"
        "\t.debug_names    0 : { *(.debug_names) }\n"
        "\t.debug_rnglists 0 : { *(.debug_rnglists) }\n"
        "\t.debug_str_offsets 0 : { *(.debug_str_offsets) }\n"
        "\t.debug_sup      0 : { *(.debug_sup) }\n"
        "\n"
        /* gnu attributes */
        "\t.gnu.attributes 0 : { KEEP (*(.gnu.attributes)) }\n"
        /* mdebug debug sections */
        "\t.mdebug         0 : { KEEP (*(.mdebug)) }\n"
        "\t.mdebug.abi32   0 : { KEEP (*(.mdebug.abi32)) }\n"
        "\n"

        /* Discard all other sections not mentioned above */

        "\t/DISCARD/ :\n"
        "\t{\n"
        "\t\t*(*);\n"
        "\t}\n"
    );
}

static void write_segment_script(const char *dir, const struct Segment *seg)
{
    char fname[1024];
    FILE *f;

    snprintf(fname, sizeof(fname), "%s/%s.ld", dir, seg->name);
    f = fopen(fname, "w");
    if (f == NULL)
        util_fatal_error("failed to open file '%s' for writing", fname);

    /* start */
    fprintf(f,
        "OUTPUT_ARCH (mips)\n"
        "\n"
        "SECTIONS\n"
        "{\n"
    );

    /* .text */
    fprintf(f, "\t.text :");

    if (seg->fields & (1 << STMT_align))
        fprintf(f, " ALIGN(0x%X)", seg->align);

    fprintf(f, "\n\t{\n");
    write_text_sections(f, seg);
    fprintf(f, "\t}\n\n");

    /* .data */
    fprintf(f, "\t.data :");

    if (seg->fields & (1 << STMT_align))
        fprintf(f, " ALIGN(0x%X)", seg->align);

    fprintf(f, "\n\t{\n");
    write_data_sections(f, seg);
    fprintf(f, "\t}\n\n");

    /* .rodata */
    fprintf(f, "\t.rodata :");

    if (seg->fields & (1 << STMT_align))
        fprintf(f, " ALIGN(0x%X)", seg->align);

    fprintf(f, "\n\t{\n");
    write_rodata_sections(f, seg);
    fprintf(f, "\t}\n\n");

    /* .bss */
    fprintf(f, "\t.bss (NOLOAD) :");

    if (seg->fields & (1 << STMT_align))
        fprintf(f, " ALIGN(0x%X)", seg->align);

    fprintf(f, "\n\t{\n");
    write_bss_sections(f, seg);
    fprintf(f, "\t}\n\n");

    write_sections_finale(f);
    fprintf(f, "}\n");

    fclose(f);
}

static void write_segment_deps(const char *dir, const struct Segment *seg)
{
    char fname[1024];
    FILE *f;
    int i;

    snprintf(fname, sizeof(fname), "%s/%s.d", dir, seg->name);
    f = fopen(fname, "w");
    if (f == NULL)
        util_fatal_error("failed to open file '%s' for writing", fname);

    for (i = 0; i < seg->includesCount; i++)
    {
        fprintf(f,
            "%s/%s.o: %s\n",
            dir, seg->name, seg->includes[i].fpath
        );
    }

    fclose(f);
}

static void write_rom_script(const char *dir, const char *fname, const struct Segment *segments, int segment_count)
{
    FILE *f;
    int i;

    f = fopen(fname, "w");
    if (f == NULL)
        util_fatal_error("failed to open file '%s' for writing", fname);

    /* start */
    fprintf(f,
        "OUTPUT_ARCH (mips)\n"
        "\n"
        "SECTIONS\n"
        "{\n"
        "\t_RomStart = 0;\n"
        "\t_RomSize = 0;\n"
        "\n"
    );

    for (i = 0; i < segment_count; i++)
    {
        const struct Segment *seg = &segments[i];

        /* begin segment */
        if (seg->fields & (1 << STMT_romalign))
            fprintf(f, "\t_RomSize = ALIGN(_RomSize, %i);\n", seg->romalign);

        fprintf(f,
            "\t_%sSegmentRomStartTemp = _RomSize;\n"
            "\t_%sSegmentRomStart = _%sSegmentRomStartTemp;\n",
            seg->name,
            seg->name, seg->name
        );

        /* placement */
        fprintf(f, "\t..%s ", seg->name);
        if (seg->fields & (1 << STMT_after))
            fprintf(f, "_%sSegmentEnd ", seg->after);
        else if (seg->fields & (1 << STMT_number))
            fprintf(f, "0x%02X000000 ", seg->number);
        else if (seg->fields & (1 << STMT_address))
            fprintf(f, "0x%08X ", seg->address);
        fprintf(f, ": AT(_%sSegmentRomStart)\n\t{\n", seg->name);
    
        /* content sections */
        fprintf(f, "\t\t_%sSegmentStart = .;\n\n", seg->name);
        fprintf(f, "\t\t%s/%s.o (.text)\n", dir, seg->name);
        fprintf(f, "\t\t%s/%s.o (.data)\n", dir, seg->name);
        fprintf(f, "\t\t%s/%s.o (.rodata)\n", dir, seg->name);

        /* overlay relocation section */
        fprintf(f, "\t\t_%sSegmentOvlStart = .;\n", seg->name);

        if (strncmp(seg->name, "ovl_", 4) == 0)
            fprintf(f, "\t\t%s/%s.reloc.o (.ovl)\n", dir, seg->name);

        fprintf(f,
            "\t\t_%sSegmentOvlEnd = .;\n"
            "\t\t_%sSegmentOvlSize = ABSOLUTE(_%sSegmentOvlEnd - _%sSegmentOvlStart);\n",
            seg->name,
            seg->name, seg->name, seg->name
        );

        /* loadable sections done */
        if (seg->fields & (1 << STMT_increment))
            fprintf(f, "\n\t. += 0x%08X;\n", seg->increment);

        fprintf(f,
            "\t}\n"
            "\t_%sSegmentRomSize = ABSOLUTE(_%sSegmentOvlEnd - _%sSegmentTextStart);\n"
            "\t_RomSize += _%sSegmentRomSize;\n"
            "\t_%sSegmentRomEndTemp = _RomSize;\n"
            "\t_%sSegmentRomEnd = _%sSegmentRomEndTemp;\n",
            seg->name, seg->name, seg->name,
            seg->name,
            seg->name,
            seg->name, seg->name
        );

        if (seg->fields & (1 << STMT_romalign))
            fprintf(f, "\t_RomSize = ALIGN(_RomSize, %i);\n", seg->romalign);

        /* .bss sections */
        fprintf(f,
            "\t..%s.bss (NOLOAD) :\n"
            "\t{\n"
            "\t\t%s/%s.o (.bss)\n"
            "\t}\n",
            seg->name,
            dir, seg->name
        );

        /* end segment */
        fprintf(f,
            "\t\t_%sSegmentEnd = .;\n"
            "\t\t_%sSegmentSize = ABSOLUTE(_%sSegmentEnd - _%sSegmentStart);\n"
            "\n\n",
            seg->name,
            seg->name, seg->name, seg->name
        );
    }

    fprintf(f, "\t_RomEnd = _RomSize;\n\n");

    /* end */
    write_sections_finale(f);
    fprintf(f, "}\n");

    fclose(f);
}

static void usage(const char *execname)
{
    fprintf(stderr,
        "Ocarina of Time linker script generator\n"
        "usage:\n"
        "\t%s -s <spec-file> <segment-dir> <segment-name>\n"
        "\t%s -r <spec-file> <segment-dir> <output-file>\n",
        execname,
        execname
    );
}

int main(int argc, char **argv)
{
    void *spec;
    size_t size;

    if (argc == 5 && strcmp(argv[1], "-s") == 0)
    {
        struct Segment seg;

        spec = util_read_whole_file(argv[2], &size);
        if (!get_single_segment_by_name(&seg, spec, argv[4]))
            util_fatal_error("failed to find segment '%s' in '%s'", argv[4], argv[2]);

        write_segment_script(argv[3], &seg);
        write_segment_deps(argv[3], &seg);

        free_single_segment_elements(&seg);
        free(spec);
        return EXIT_SUCCESS;
    }
    else if (argc == 5 && strcmp(argv[1], "-r") == 0)
    {
        struct Segment *segments = NULL;
        int segment_count = 0;

        spec = util_read_whole_file(argv[2], &size);
        parse_rom_spec(spec, &segments, &segment_count);

        write_rom_script(argv[3], argv[4], segments, segment_count);

        free_rom_spec(segments, segment_count);
        free(spec);
        return EXIT_SUCCESS;
    }
    else
    {
        usage(argv[0]);
        return EXIT_FAILURE;
    }
}
