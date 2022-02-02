#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

void print_usage(char* prog_name) {
    printf("USAGE: %s SPEC OVERLAY_SEGMENT_NAME\n"
           "Search the preprocessed spec for an overlay segment name, \n"
           "e.g. \"ovl_En_Firefly\", and return a space-separated list of the files it "
           "includes\n",
           prog_name);
}

int main(int argc, char** argv) {
    char* spec_path;
    char* overlay_name;
    char* spec;
    size_t size;
    Segment* segments = NULL;
    int segments_count = 0;
    Segment* found_segment = NULL;
    int exit_status = 0;

    if (argc != 3) {
        print_usage(argv[0]);
        return 1;
    }

    spec_path = argv[1];
    overlay_name = argv[2];

    // printf("spec path: %s\n", spec_path);
    // printf("overlay name: %s\n", overlay_name);

    spec = util_read_whole_file(spec_path, &size);
    parse_rom_spec(spec, &segments, &segments_count);

    {
        int i;
        for (i = 0; i < segments_count; i++) {
            if (strcmp(segments[i].name, overlay_name) == 0) {
                found_segment = &segments[i];
                break;
            }
        }
        if (i == segments_count) {
            fprintf(stderr, ERRMSG_START "no segment \"%s\" found\n" ERRMSG_END, overlay_name);
            goto error_out;
        }
        /* Relocation file must be the last `include` (so .ovl section is linked last) */
        if (strstr(found_segment->includes[found_segment->includesCount - 1].fpath, "_reloc.o") == NULL) {
            fprintf(stderr, ERRMSG_START "last include in overlay segment \"%s\" is not a `_reloc.o` file\n" ERRMSG_END, overlay_name);
            goto error_out;
        }
    }
    {
        int i;
        /* Skip `_reloc.o` include */
        for (i = 0; i < found_segment->includesCount - 1; i++) {
            printf("%s ", found_segment->includes[i].fpath);
        }
        putchar('\n');
    }

    if (0) {
        error_out:
        exit_status = 1;
    }

    free_rom_spec(segments, segments_count);
    free(spec);

    return exit_status;
}
