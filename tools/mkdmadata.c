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

    for (i = 0; i < g_segmentsCount; i++) {
        // Don't emit dma entry for segments set with NOLOAD
        if (g_segments[i].flags & FLAG_NOLOAD) {
            continue;
        }

        fprintf(fout, "DEFINE_DMA_ENTRY(%s, \"%s\")\n", g_segments[i].name, g_segments[i].name);
    }
}

static void write_compress_ranges(FILE *fout)
{
    int i;
    int rom_index = 0;
    bool continue_list = false;
    int stride_first = -1;

    for (i = 0; i < g_segmentsCount; i++) {
        bool compress = g_segments[i].compress;

        // Don't consider segments set with NOLOAD when calculating indices
        if (g_segments[i].flags & FLAG_NOLOAD) {
            continue;
        }

        if (compress) {
            if (stride_first == -1)
                stride_first = rom_index;
        }
        if (!compress || i == g_segmentsCount - 1) {
            if (stride_first != -1) {
                int stride_last = compress ? rom_index : rom_index - 1;
                if (continue_list) {
                    fprintf(fout, ",");
                }
                if (stride_first == stride_last) {
                    fprintf(fout, "%d", stride_first);
                } else {
                    fprintf(fout, "%d-%d", stride_first, stride_last);
                }
                continue_list = true;
                stride_first = -1;
            }
        }

        rom_index++;
    }
}

static void usage(const char *execname)
{
    fprintf(stderr, "zelda64 dmadata generation tool v0.01\n"
                    "usage: %s SPEC_FILE DMADATA_TABLE COMPRESS_RANGES\n"
                    "SPEC_FILE      file describing the organization of object files into segments\n"
                    "DMADATA_TABLE  filename of output dmadata table header\n"
                    "COMPRESS_RANGES filename to write which files are compressed (e.g. 0-5,7,10-20)\n",
                    execname);
}

int main(int argc, char **argv)
{
    FILE *dmaout;
    FILE *compress_ranges_out;
    void *spec;
    size_t size;

    if (argc != 4)
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

    compress_ranges_out = fopen(argv[3], "w");
    if (compress_ranges_out == NULL)
        util_fatal_error("failed to open file '%s' for writing", argv[3]);
    write_compress_ranges(compress_ranges_out);
    fclose(compress_ranges_out);

    free_rom_spec(g_segments, g_segmentsCount);
    free(spec);

    return 0;
}
