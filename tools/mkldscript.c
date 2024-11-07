#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

struct Segment *g_segments;
int g_segmentsCount;

static void write_includes(const struct Segment *seg, FILE *fout, const char *segments_dir, const char *section)
{
    // Note sections contain a suffix wildcard as compilers other than IDO such as GCC may emit sections titled
    // e.g. .rodata.cstN, .rodata.strN.M, .text.FUNCNAME depending on their settings.
    fprintf(fout, "            %s/%s.plf (%s*)\n", segments_dir, seg->name, section);
}

static void write_ld_script(FILE *fout, const char *segments_dir)
{
    int i;

    fputs("OUTPUT_ARCH (mips)\n"
          "\n"
          "SECTIONS\n"
          "{\n"
          "    _RomPos = 0;\n"
          "\n",
          fout);

    for (i = 0; i < g_segmentsCount; i++) {
        const struct Segment *seg = &g_segments[i];

        fprintf(fout, "    /* %s */\n\n", seg->name);

        // align start of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomPos = ALIGN(_RomPos, %i);\n", seg->romalign);

        // Begin initialized data (.text, .data, .rodata)
        fprintf(fout, "    _%sSegmentRomStartTemp = _RomPos;\n"
                      "    _%sSegmentRomStart = _%sSegmentRomStartTemp;\n"
                      "    ..%s ", seg->name, seg->name, seg->name, seg->name);

        if (seg->fields & (1 << STMT_after))
            // Continue after the requested segment, aligning to the required alignment for the new segment.
            fprintf(fout, "ALIGN(_%sSegmentEnd, %i)", seg->after, seg->align);
        else if (seg->fields & (1 << STMT_number))
            // Start at a new segmented address.
            fprintf(fout, "0x%02X000000", seg->number);
        else if (seg->fields & (1 << STMT_address))
            // Start at a new absolute address.
            fprintf(fout, "0x%08X", seg->address);
        else
            // Continue after previous segment, aligning to the required alignment for the new segment.
            fprintf(fout, "ALIGN(0x%X)", seg->align);

        // AT(_RomPos) isn't necessary, but adds useful "load address" lines to the map file.
        // Also force an alignment of at least 0x10 at the start of any segment. This is especially important for
        // overlays as the final link step must not introduce alignment padding between the SegmentTextStart symbol
        // and the section contents as this would cause all generated relocations done prior to be wrong.
        fprintf(fout, " : AT(_RomPos)\n"
                      "    {\n"
                      "        . = ALIGN(0x10);\n"
                      "        _%sSegmentStart = .;\n"
                      "\n",
                  seg->name);

        // Write .text
        fprintf(fout, "        _%sSegmentTextStart = .;\n", seg->name);
        write_includes(seg, fout, segments_dir, ".text");
        fprintf(fout, "        . = ALIGN(0x10);\n"
                      "        _%sSegmentTextEnd = .;\n"
                      "        _%sSegmentTextSize = ABSOLUTE( _%sSegmentTextEnd - _%sSegmentTextStart );\n"
                      "\n", seg->name, seg->name, seg->name, seg->name);

        // Write .data
        fprintf(fout, "        _%sSegmentDataStart = .;\n", seg->name);
        write_includes(seg, fout, segments_dir, ".data");
        fprintf(fout, "        . = ALIGN(0x10);\n"
                      "        _%sSegmentDataEnd = .;\n"
                      "        _%sSegmentDataSize = ABSOLUTE( _%sSegmentDataEnd - _%sSegmentDataStart );\n"
                      "\n", seg->name, seg->name, seg->name, seg->name);

        // Write .rodata
        fprintf(fout, "        _%sSegmentRoDataStart = .;\n", seg->name);
        write_includes(seg, fout, segments_dir, ".rodata");
        fprintf(fout, "        . = ALIGN(0x10);\n"
                      "        _%sSegmentRoDataEnd = .;\n"
                      "        _%sSegmentRoDataSize = ABSOLUTE( _%sSegmentRoDataEnd - _%sSegmentRoDataStart );\n"
                      "\n", seg->name, seg->name, seg->name, seg->name);

        // Write an address increment if requested
        if (seg->fields & (1 << STMT_increment))
            fprintf(fout, "    . += 0x%08X;\n", seg->increment);

        if (seg->flags & FLAG_OVL) {
            // Write .ovl if the segment is an overlay.
            fprintf(fout, "        _%sSegmentOvlStart = .;\n"
                          "            %s/%s.reloc.o (.ovl)\n"
                          "        _%sSegmentOvlEnd = .;\n"
                          "        _%sSegmentOvlSize = ABSOLUTE( _%sSegmentOvlEnd - _%sSegmentOvlStart );\n"
                          "\n", seg->name, segments_dir, seg->name, seg->name, seg->name, seg->name, seg->name);
        }

        const char *last_loadable = (seg->flags & FLAG_OVL) ? "Ovl" : "RoData";

        // End initialized data.
        fprintf(fout, "    }\n"
                      "    _RomPos += ( _%sSegment%sEnd - _%sSegmentTextStart );\n"
                      "    _%sSegmentRomEndTemp = _RomPos;\n"
                      "    _%sSegmentRomEnd = _%sSegmentRomEndTemp;\n"
                      "    _%sSegmentRomSize = ABSOLUTE( _%sSegmentRomEnd - _%sSegmentRomStart );\n"
                      "\n",
                seg->name, last_loadable, seg->name, seg->name, seg->name, seg->name,
                seg->name, seg->name, seg->name);

        // Align end of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomPos = ALIGN(_RomPos, %i);\n", seg->romalign);

        // Begin uninitialized data (.bss, COMMON)
        // Note we must enforce a minimum alignment of at least 8 for
        // bss sections due to how bss is cleared in steps of 8 in
        // entry.s, and more widely it's more efficient.
        fprintf(fout, "    ..%s.bss (NOLOAD) :\n"
                      "    {\n"
                      "        . = ALIGN(8);\n"
                      "        _%sSegmentBssStart = .;\n",
                      seg->name, seg->name);

        // Write .bss and COMMON
        write_includes(seg, fout, segments_dir, ".bss");
        write_includes(seg, fout, segments_dir, "COMMON");

        // End uninitialized data
        fprintf(fout, "        . = ALIGN(8);\n"
                      "        _%sSegmentBssEnd = .;\n"
                      "        _%sSegmentBssSize = ABSOLUTE( _%sSegmentBssEnd - _%sSegmentBssStart );\n"
                      "\n"
                      "        _%sSegmentEnd = .;\n"
                      "    }\n"
                      "\n",
                      seg->name, seg->name, seg->name, seg->name, seg->name);
    }

    fputs("    _RomSize = _RomPos;\n\n", fout);

    // Debugging sections
    fputs(
        // mdebug sections
          "    .pdr                    : { *(.pdr) }"                                           "\n"
          "    .mdebug                 : { *(.mdebug) }"                                        "\n"
        // Stabs debugging sections
          "    .stab                 0 : { *(.stab) }"                                          "\n"
          "    .stabstr              0 : { *(.stabstr) }"                                       "\n"
          "    .stab.excl            0 : { *(.stab.excl) }"                                     "\n"
          "    .stab.exclstr         0 : { *(.stab.exclstr) }"                                  "\n"
          "    .stab.index           0 : { *(.stab.index) }"                                    "\n"
          "    .stab.indexstr        0 : { *(.stab.indexstr) }"                                 "\n"
          "    .comment              0 : { *(.comment) }"                                       "\n"
          "    .gnu.build.attributes   : { *(.gnu.build.attributes .gnu.build.attributes.*) }"  "\n"
        // DWARF debug sections
        // Symbols in the DWARF debugging sections are relative to the beginning of the section so we begin them at 0.
        // DWARF 1
          "    .debug                0 : { *(.debug) }"                                         "\n"
          "    .line                 0 : { *(.line) }"                                          "\n"
        // GNU DWARF 1 extensions
          "    .debug_srcinfo        0 : { *(.debug_srcinfo) }"                                 "\n"
          "    .debug_sfnames        0 : { *(.debug_sfnames) }"                                 "\n"
        // DWARF 1.1 and DWARF 2
          "    .debug_aranges        0 : { *(.debug_aranges) }"                                 "\n"
          "    .debug_pubnames       0 : { *(.debug_pubnames) }"                                "\n"
        // DWARF 2
          "    .debug_info           0 : { *(.debug_info .gnu.linkonce.wi.*) }"                 "\n"
          "    .debug_abbrev         0 : { *(.debug_abbrev) }"                                  "\n"
          "    .debug_line           0 : { *(.debug_line .debug_line.* .debug_line_end ) }"     "\n"
          "    .debug_frame          0 : { *(.debug_frame) }"                                   "\n"
          "    .debug_str            0 : { *(.debug_str) }"                                     "\n"
          "    .debug_loc            0 : { *(.debug_loc) }"                                     "\n"
          "    .debug_macinfo        0 : { *(.debug_macinfo) }"                                 "\n"
        // SGI/MIPS DWARF 2 extensions
          "    .debug_weaknames      0 : { *(.debug_weaknames) }"                               "\n"
          "    .debug_funcnames      0 : { *(.debug_funcnames) }"                               "\n"
          "    .debug_typenames      0 : { *(.debug_typenames) }"                               "\n"
          "    .debug_varnames       0 : { *(.debug_varnames) }"                                "\n"
        // DWARF 3
          "    .debug_pubtypes       0 : { *(.debug_pubtypes) }"                                "\n"
          "    .debug_ranges         0 : { *(.debug_ranges) }"                                  "\n"
        // DWARF 5
          "    .debug_addr           0 : { *(.debug_addr) }"                                    "\n"
          "    .debug_line_str       0 : { *(.debug_line_str) }"                                "\n"
          "    .debug_loclists       0 : { *(.debug_loclists) }"                                "\n"
          "    .debug_macro          0 : { *(.debug_macro) }"                                   "\n"
          "    .debug_names          0 : { *(.debug_names) }"                                   "\n"
          "    .debug_rnglists       0 : { *(.debug_rnglists) }"                                "\n"
          "    .debug_str_offsets    0 : { *(.debug_str_offsets) }"                             "\n"
          "    .debug_sup            0 : { *(.debug_sup) }"                                     "\n"
        // gnu attributes
          "    .gnu.attributes       0 : { KEEP (*(.gnu.attributes)) }"                         "\n"
        // Sections generated by GCC to inform GDB about the ABI
          "    .mdebug.abi32         0 : { KEEP (*(.mdebug.abi32)) }"                           "\n"
          "    .mdebug.abiN32        0 : { KEEP (*(.mdebug.abiN32)) }"                          "\n"
          "    .mdebug.abi64         0 : { KEEP (*(.mdebug.abi64)) }"                           "\n"
          "    .mdebug.abiO64        0 : { KEEP (*(.mdebug.abiO64)) }"                          "\n"
          "    .mdebug.eabi32        0 : { KEEP (*(.mdebug.eabi32)) }"                          "\n"
          "    .mdebug.eabi64        0 : { KEEP (*(.mdebug.eabi64)) }"                          "\n"
          "    .gcc_compiled_long32  0 : { KEEP (*(.gcc_compiled_long32)) }"                    "\n"
          "    .gcc_compiled_long64  0 : { KEEP (*(.gcc_compiled_long64)) }"                    "\n\n", fout);

    // Discard all other sections not mentioned above
    fputs("    /DISCARD/ :"                                                                     "\n"
          "    {"                                                                               "\n"
          "       *(*);"                                                                        "\n"
          "    }"                                                                               "\n"
          "}\n", fout);
}

static void usage(const char *execname)
{
    fprintf(stderr, "Nintendo 64 linker script generation tool v0.04\n"
                    "usage: %s SPEC_FILE LD_SCRIPT SEGMENTS_DIR\n"
                    "SPEC_FILE    file describing the organization of object files into segments\n"
                    "LD_SCRIPT    filename of output linker script\n"
                    "SEGMENTS_DIR dir name containing partially linked overlay segments\n",
                    execname);
}

int main(int argc, char **argv)
{
    FILE *ldout;
    void *spec;
    size_t size;

    if (argc != 4) {
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    spec = util_read_whole_file(argv[1], &size);
    parse_rom_spec(spec, &g_segments, &g_segmentsCount);

    ldout = fopen(argv[2], "w");
    if (ldout == NULL)
        util_fatal_error("failed to open file '%s' for writing", argv[2]);
    write_ld_script(ldout, argv[3]);
    fclose(ldout);

    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);
    return EXIT_SUCCESS;
}
