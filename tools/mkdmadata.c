#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

struct Segment* g_segments;
int g_segmentsCount;

static void write_dmadata_table(FILE *fout)
{
    int i;

    for (i = 0; i < g_segmentsCount; i++)
        fprintf(fout, "DEFINE_DMA_ENTRY(%s, \"%s\")\n", g_segments[i].name, g_segments[i].name);
}

static void usage(const char *execname)
{
    fprintf(stderr, "zelda64 dmadata generation tool v0.01\n"
                    "usage: %s SPEC_FILE DMADATA_TABLE\n"
                    "SPEC_FILE      file describing the organization of object files into segments\n"
                    "DMADATA_TABLE  filename of output dmadata table header\n",
                    execname);
}

int main(int argc, char **argv)
{
    FILE *dmaout;
    void *spec;
    size_t size;

    if (argc != 3)
    {
        usage(argv[0]);
        return 1;
    }

    spec = util_read_whole_file(argv[1], &size);
    parse_rom_spec(spec, &g_segments, &g_segmentsCount);

    dmaout = fopen(argv[2], "w");
    if (dmaout == NULL)
        util_fatal_error("failed to open file '%s' for writing", argv[2]);
    write_dmadata_table(dmaout);
    fclose(dmaout);
    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);

    return 0;
}
