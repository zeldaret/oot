#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#include "spec.h"
#include "util.h"

struct Segment* g_segments;
int g_segmentsCount;

static void write_overlay_rules(FILE *fout, const char *ovls_dir)
{
    int i, j;

    for (i = 0; i < g_segmentsCount; i++) {
        Segment *seg = &g_segments[i];

        /* Write rule for partial linkage of this segment */
        fprintf(fout, "%s/%s.plf:", ovls_dir, seg->name);
        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, " \\\n\t\t%s", seg->includes[j].fpath);
        fprintf(fout, "\n"
                      "\t@echo Linking \"%s\"\n"
                      "\t$(SEG_VERBOSE)$(LD) $(SEG_LDFLAGS) $^ -o $@\n"
                      "\n", seg->name);
    }

    /* List every expected plf in a variable */
    fprintf(fout, "SEGMENT_FILES :=");
    for (i = 0; i < g_segmentsCount; i++) {
        fprintf(fout, " \\\n\t\t%s/%s.plf", ovls_dir, g_segments[i].name);
    }

    /* List overlay plfs in a variable */
    fprintf(fout, "\n\nOVL_SEGMENT_FILES :=");
    for (i = 0; i < g_segmentsCount; i++) {
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

    spec = util_read_whole_file(argv[1], &size);
    parse_rom_spec(spec, &g_segments, &g_segmentsCount);

    makefile = fopen(argv[3], "w");
    if (makefile == NULL)
        util_fatal_error("failed to open file '%s' for writing", argv[2]);
    write_overlay_rules(makefile, argv[2]);
    fclose(makefile);

    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);

    return 0;
}
