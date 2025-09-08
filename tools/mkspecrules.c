#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

struct Segment* g_segments;
int g_segmentsCount;

static void write_progbits_section(FILE *fout, struct Segment *seg, const char *section_name)
{
    fprintf(fout, "    .%s :\n    {\n", section_name);

    for (int i = 0; i < seg->includesCount; i++)
        fprintf(fout, "        %s(.%s*)\n", seg->includes[i].fpath, section_name);

    fprintf(fout, "    }\n");
}

static void write_noload_section(FILE *fout, struct Segment *seg, const char *section_name)
{
    fprintf(fout, "    .%s (NOLOAD) :\n    {\n", section_name);

    for (int i = 0; i < seg->includesCount; i++)
        fprintf(fout, "        %s(.%s*)\n", seg->includes[i].fpath, section_name);

    fprintf(fout, "    }\n");
}

/**
 * Write a linker script for partial linking of a single segment.
 *
 * The original plan was to use a single linker script and pass the files over the command line to ld,
 * however in the iQue version we have bss files that are created partway through linking that need
 * special handling in the linker script.
 */
static void write_linker_script(FILE *fout, struct Segment *seg)
{
    fprintf(fout,
       "OUTPUT_ARCH (mips)\n"
       "SECTIONS {\n"
    );

    write_progbits_section(fout, seg, "text");
    write_progbits_section(fout, seg, "data");
    write_progbits_section(fout, seg, "rodata");
    write_noload_section(fout, seg, "bss");

    /* GNU ld assumes that the linker script always combines .gptab.data and
     * .gptab.sdata into .gptab.sdata, and likewise for .gptab.bss and .gptab.sbss.
     * To avoid dealing with this, we just discard all .gptab sections.
     */
    fprintf(fout,
       "    /DISCARD/ :\n"
       "    {\n"
       "        *(.gptab.*)\n"
       "    }\n"
       "}\n"
    );
}

static void write_overlay_rules(FILE *fout, const char *ovls_dir)
{
    for (int i = 0; i < g_segmentsCount; i++) {
        Segment *seg = &g_segments[i];

        /* Write rule for partial linkage of this segment */
        fprintf(fout, "%s/%s.plf:", ovls_dir, seg->name);
        for (int j = 0; j < seg->includesCount; j++) {
            if (seg->includes[j].fpath[0] != '*') /* Skip iQue bss files */
                fprintf(fout, " \\\n\t\t%s", seg->includes[j].fpath);
        }
        fprintf(fout, " \\\n\t\t$(SEGMENTS_DIR)/Makefile");
        fprintf(fout, "\n"
                      "\t@echo Linking \"%s\"\n"
                      "\t$(SEG_VERBOSE)$(LD) $(SEG_LDFLAGS) -o $@\n"
                      "\n", seg->name);
    }

    /* List every expected plf in a variable */
    fprintf(fout, "SEGMENT_FILES :=");
    for (int i = 0; i < g_segmentsCount; i++)
        fprintf(fout, " \\\n\t\t%s/%s.plf", ovls_dir, g_segments[i].name);

    /* List overlay plfs in a variable */
    fprintf(fout, "\n\nOVL_SEGMENT_FILES :=");
    for (int i = 0; i < g_segmentsCount; i++) {
        if (!(g_segments[i].flags & FLAG_OVL))
            continue;
        fprintf(fout, " \\\n\t\t%s/%s.plf", ovls_dir, g_segments[i].name);
    }
    fprintf(fout, "\n");
}

static void usage(const char *execname)
{
    fprintf(stderr, "zelda64 overlay rules generator v0.01\n"
                    "usage: %s SPEC_FILE OBJ_DIRECTORY MAKEFILE_OUT\n"
                    "SPEC_FILE      file describing the organization of object files into segments\n"
                    "OBJ_DIRECTORY  directory where object files will be stored\n"
                    "MAKEFILE_OUT   filename of output makefile to write linking rules\n",
                    execname);
}

int main(int argc, char **argv)
{
    FILE *makefile;
    void *spec;
    size_t size;

    if (argc != 4) {
        usage(argv[0]);
        return 1;
    }

    const char *spec_path = argv[1];
    const char *seg_dir = argv[2];
    const char *makefile_path = argv[3];

    if (seg_dir[0] == '\0') {
        usage(argv[0]);
        return 2;
    }

    spec = util_read_whole_file(spec_path, &size);
    parse_rom_spec(spec, &g_segments, &g_segmentsCount);

    makefile = fopen(makefile_path, "w");
    if (makefile == NULL)
        util_fatal_error("failed to open file '%s' for writing", makefile_path);
    write_overlay_rules(makefile, seg_dir);
    fclose(makefile);

    // Find the longest segment name
    size_t max_name = 1;
    for (int i = 0; i < g_segmentsCount; i++) {
        size_t namelen = strlen(g_segments[i].name);
        if (namelen > max_name)
            max_name = namelen;
    }

    size_t seg_dir_len = strlen(seg_dir);

    // Check if segments dir path needs a path separator appended
    bool needs_sep = seg_dir[seg_dir_len - 1] != '/';
    // Allocate a buffer large enough for the longest path
    char *ld_outpath = malloc(seg_dir_len + needs_sep + max_name + strlen(".ld") + 1);

    // Write segments dir path now since it's always the same
    strcpy(ld_outpath, seg_dir);
    if (needs_sep) {
        ld_outpath[seg_dir_len] = '/';
        seg_dir_len++;
    }

    for (int i = 0; i < g_segmentsCount; i++) {
        Segment *seg = &g_segments[i];

        // Form the full path for this segment's linker script
        strcpy(ld_outpath + seg_dir_len, seg->name);
        ld_outpath[seg_dir_len + strlen(seg->name) + 0] = '.';
        ld_outpath[seg_dir_len + strlen(seg->name) + 1] = 'l';
        ld_outpath[seg_dir_len + strlen(seg->name) + 2] = 'd';
        ld_outpath[seg_dir_len + strlen(seg->name) + 3] = '\0';

        FILE *ldf = fopen(ld_outpath, "w");
        write_linker_script(ldf, seg);
        fclose(ldf);
    }

    free(ld_outpath);


    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);

    return 0;
}
