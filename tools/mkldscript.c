#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

// Note: *SECTION ALIGNMENT* Object files built with a compiler such as GCC can, by default, use narrower
// alignment for sections size, compared to IDO padding sections to a 0x10-aligned size.
// To properly generate relocations relative to section starts, sections currently need to be aligned
// explicitly (to 0x10 currently, a narrower alignment might work), otherwise the linker does implicit alignment
// and inserts padding between the address indicated by section start symbols (such as *SegmentRoDataStart) and
// the actual aligned start of the section.
// With IDO, the padding of sections to an aligned size makes the section start at aligned addresses out of the box,
// so the explicit alignment has no further effect.

struct Segment *g_segments;
int g_segmentsCount;

static void write_ld_script(FILE *fout)
{
    int i;
    int j;

    fputs("OUTPUT_ARCH (mips)\n\n"
          "SECTIONS {\n"
          "    _RomSize = 0;\n"
          "    _RomStart = _RomSize;\n\n",
          fout);

    for (i = 0; i < g_segmentsCount; i++)
    {
        const struct Segment *seg = &g_segments[i];

        // align start of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomSize = (_RomSize + %i) & ~ %i;\n", seg->romalign - 1, seg->romalign - 1);

        // initialized data (.text, .data, .rodata, .sdata)

        // Increment the start of the section
        //if (seg->fields & (1 << STMT_increment))
            //fprintf(fout, "    . += 0x%08X;\n", seg->increment);

        fprintf(fout, "    _%sSegmentRomStartTemp = _RomSize;\n"
                  "    _%sSegmentRomStart = _%sSegmentRomStartTemp;\n"
                  "    ..%s ", seg->name, seg->name, seg->name, seg->name);

        if (seg->fields & (1 << STMT_after))
            fprintf(fout, "_%sSegmentEnd ", seg->after);
        else if (seg->fields & (1 << STMT_number))
            fprintf(fout, "0x%02X000000 ", seg->number);
        else if (seg->fields & (1 << STMT_address))
            fprintf(fout, "0x%08X ", seg->address);

        // (AT(_RomSize) isn't necessary, but adds useful "load address" lines to the map file)
        fprintf(fout, ": AT(_RomSize)\n    {\n"
                  "        _%sSegmentStart = .;\n"
                  "        . = ALIGN(0x10);\n"
                  "        _%sSegmentTextStart = .;\n",
                  seg->name, seg->name);

        if (seg->fields & (1 << STMT_align))
            fprintf(fout, "        . = ALIGN(0x%X);\n", seg->align);

        for (j = 0; j < seg->includesCount; j++)
        {
            fprintf(fout, "            %s (.text)\n", seg->includes[j].fpath);
            if (seg->includes[j].linkerPadding != 0)
                fprintf(fout, "            . += 0x%X;\n", seg->includes[j].linkerPadding);
            fprintf(fout, "        . = ALIGN(0x10);\n");
        }

        fprintf(fout, "        _%sSegmentTextEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentTextSize = ABSOLUTE( _%sSegmentTextEnd - _%sSegmentTextStart );\n", seg->name, seg->name, seg->name);

        fprintf(fout, "        _%sSegmentDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
        {
            if (!seg->includes[j].dataWithRodata)
                fprintf(fout, "            %s (.data)\n"
                              "        . = ALIGN(0x10);\n", seg->includes[j].fpath);
        }

        /*
         for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.rodata)\n", seg->includes[j].fpath);

          for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sdata)\n", seg->includes[j].fpath);
        */

        //fprintf(fout, "        . = ALIGN(0x10);\n");
        fprintf(fout, "        _%sSegmentDataEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentDataSize = ABSOLUTE( _%sSegmentDataEnd - _%sSegmentDataStart );\n", seg->name, seg->name, seg->name);

        fprintf(fout, "        _%sSegmentRoDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
        {
            if (seg->includes[j].dataWithRodata)
                fprintf(fout, "            %s (.data)\n"
                              "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

            fprintf(fout, "            %s (.rodata)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);
            // Compilers other than IDO, such as GCC, produce different sections such as
            // the ones named directly below. These sections do not contain values that
            // need relocating, but we need to ensure that the base .rodata section
            // always comes first. The reason this is important is due to relocs assuming
            // the base of .rodata being the offset for the relocs and thus needs to remain
            // the beginning of the entire rodata area in order to remain consistent.
            // Inconsistencies will lead to various .rodata reloc crashes as a result of
            // either missing relocs or wrong relocs.
            fprintf(fout, "            %s (.rodata.str1.4)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);
            fprintf(fout, "            %s (.rodata.cst4)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);
            fprintf(fout, "            %s (.rodata.cst8)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);
        }

        fprintf(fout, "        _%sSegmentRoDataEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentRoDataSize = ABSOLUTE( _%sSegmentRoDataEnd - _%sSegmentRoDataStart );\n", seg->name, seg->name, seg->name);

        fprintf(fout, "        _%sSegmentSDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sdata)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

        fprintf(fout, "        _%sSegmentSDataEnd = .;\n", seg->name);

        fprintf(fout, "        _%sSegmentOvlStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.ovl)\n", seg->includes[j].fpath);

        fprintf(fout, "        _%sSegmentOvlEnd = .;\n", seg->name);

        if (seg->fields & (1 << STMT_increment))
            fprintf(fout, "    . += 0x%08X;\n", seg->increment);

        fputs("    }\n", fout);

        fprintf(fout, "    _RomSize += ( _%sSegmentOvlEnd - _%sSegmentTextStart );\n", seg->name, seg->name);

        fprintf(fout, "    _%sSegmentRomEndTemp = _RomSize;\n"
                  "_%sSegmentRomEnd = _%sSegmentRomEndTemp;\n\n",
                  seg->name, seg->name, seg->name);

        // align end of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomSize = (_RomSize + %i) & ~ %i;\n", seg->romalign - 1, seg->romalign - 1);

        // uninitialized data (.sbss, .scommon, .bss, COMMON)
        fprintf(fout, "    ..%s.bss ADDR(..%s) + SIZEOF(..%s) (NOLOAD) :\n"
                      /*"    ..%s.bss :\n"*/
                      "    {\n"
                      "        . = ALIGN(0x10);\n"
                      "        _%sSegmentBssStart = .;\n",
                      seg->name, seg->name, seg->name, seg->name);

        if (seg->fields & (1 << STMT_align))
            fprintf(fout, "        . = ALIGN(0x%X);\n", seg->align);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sbss)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.scommon)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.bss)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (COMMON)\n"
                          "        . = ALIGN(0x10);\n", seg->includes[j].fpath);

        fprintf(fout, "        . = ALIGN(0x10);\n"
                      "        _%sSegmentBssEnd = .;\n"
                      "        _%sSegmentEnd = .;\n"
                      "    }\n"
                      "    _%sSegmentBssSize = ABSOLUTE( _%sSegmentBssEnd - _%sSegmentBssStart );\n\n",
                      seg->name, seg->name, seg->name, seg->name, seg->name);

        // Increment the end of the segment
        //if (seg->fields & (1 << STMT_increment))
            //fprintf(fout, "    . += 0x%08X;\n", seg->increment);

        //fprintf(fout, "    ..%s.ovl ADDR(..%s) + SIZEOF(..%s) :\n"
        //    /*"    ..%s.bss :\n"*/
        //    "    {\n",
        //    seg->name, seg->name, seg->name);
        //fprintf(fout, "        _%sSegmentOvlStart = .;\n", seg->name);

        //for (j = 0; j < seg->includesCount; j++)
        //    fprintf(fout, "            %s (.ovl)\n", seg->includes[j].fpath);

        ////fprintf(fout, "        . = ALIGN(0x10);\n");

        //fprintf(fout, "        _%sSegmentOvlEnd = .;\n", seg->name);

        //fprintf(fout, "\n    }\n");
    }

    fputs("    _RomEnd = _RomSize;\n\n", fout);

    // Debugging sections
    fputs(
        // mdebug sections
          "    .pdr              : { *(.pdr) }"                                             "\n"
          "    .mdebug           : { *(.mdebug) }"                                          "\n"
          "    .mdebug.abi32     : { *(.mdebug.abi32) }"                                    "\n"
        // DWARF debug sections
        // Symbols in the DWARF debugging sections are relative to the beginning of the section so we begin them at 0.
        // DWARF 1
          "    .debug          0 : { *(.debug) }"                                           "\n"
          "    .line           0 : { *(.line) }"                                            "\n"
        // GNU DWARF 1 extensions
          "    .debug_srcinfo  0 : { *(.debug_srcinfo) }"                                   "\n"
          "    .debug_sfnames  0 : { *(.debug_sfnames) }"                                   "\n"
        // DWARF 1.1 and DWARF 2
          "    .debug_aranges  0 : { *(.debug_aranges) }"                                   "\n"
          "    .debug_pubnames 0 : { *(.debug_pubnames) }"                                  "\n"
        // DWARF 2
          "    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }"                   "\n"
          "    .debug_abbrev   0 : { *(.debug_abbrev) }"                                    "\n"
          "    .debug_line     0 : { *(.debug_line .debug_line.* .debug_line_end ) }"       "\n"
          "    .debug_frame    0 : { *(.debug_frame) }"                                     "\n"
          "    .debug_str      0 : { *(.debug_str) }"                                       "\n"
          "    .debug_loc      0 : { *(.debug_loc) }"                                       "\n"
          "    .debug_macinfo  0 : { *(.debug_macinfo) }"                                   "\n"
        // SGI/MIPS DWARF 2 extensions
          "    .debug_weaknames 0 : { *(.debug_weaknames) }"                                "\n"
          "    .debug_funcnames 0 : { *(.debug_funcnames) }"                                "\n"
          "    .debug_typenames 0 : { *(.debug_typenames) }"                                "\n"
          "    .debug_varnames  0 : { *(.debug_varnames) }"                                 "\n"
        // DWARF 3
          "    .debug_pubtypes 0 : { *(.debug_pubtypes) }"                                  "\n"
          "    .debug_ranges   0 : { *(.debug_ranges) }"                                    "\n"
        // DWARF 5
          "    .debug_addr     0 : { *(.debug_addr) }"                                      "\n"
          "    .debug_line_str 0 : { *(.debug_line_str) }"                                  "\n"
          "    .debug_loclists 0 : { *(.debug_loclists) }"                                  "\n"
          "    .debug_macro    0 : { *(.debug_macro) }"                                     "\n"
          "    .debug_names    0 : { *(.debug_names) }"                                     "\n"
          "    .debug_rnglists 0 : { *(.debug_rnglists) }"                                  "\n"
          "    .debug_str_offsets 0 : { *(.debug_str_offsets) }"                            "\n"
          "    .debug_sup      0 : { *(.debug_sup) }\n"
        // gnu attributes
          "    .gnu.attributes 0 : { KEEP (*(.gnu.attributes)) }"                           "\n", fout);

    // Discard all other sections not mentioned above
    fputs("    /DISCARD/ :"                                                                 "\n"
          "    {"                                                                           "\n"
          "       *(*);"                                                                    "\n"
          "    }"                                                                           "\n", fout);
    fputs("}\n", fout);
}

static void usage(const char *execname)
{
    fprintf(stderr, "Nintendo 64 linker script generation tool v0.03\n"
                    "usage: %s SPEC_FILE LD_SCRIPT\n"
                    "SPEC_FILE  file describing the organization of object files into segments\n"
                    "LD_SCRIPT  filename of output linker script\n",
                    execname);
}

int main(int argc, char **argv)
{
    FILE *ldout;
    void *spec;
    size_t size;

    if (argc != 3)
    {
        usage(argv[0]);
        return 1;
    }

    spec = util_read_whole_file(argv[1], &size);
    parse_rom_spec(spec, &g_segments, &g_segmentsCount);

    ldout = fopen(argv[2], "w");
    if (ldout == NULL)
        util_fatal_error("failed to open file '%s' for writing", argv[2]);
    write_ld_script(ldout);
    fclose(ldout);

    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);

    return 0;
}
