#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "spec.h"
#include "util.h"

void print_usage(char* prog_name) {
    printf("USAGE: %s SPEC OVERLAY_SEGMENT_NAME\n"
           "Search the preprocessed SPEC for an overlay segment name, \n"
           "e.g. \"ovl_En_Firefly\", and return a space-separated list of the files it\n"
           "includes. The relocation file must be the last include in the segment\n"
           "OVERLAY_SEGMENT_NAME, and have the filename \"OVERLAY_SEGMENT_NAME_reloc.o\",\n"
           "but can be in a different directory from the other files.\n",
           prog_name);
}

int main(int argc, char** argv) {
    char* spec_path;
    char* overlay_name;
    char* spec;
    size_t size;
    Segment segment;
    int exit_status = 0;
    bool segmentFound = false;

    if (argc != 3) {
        print_usage(argv[0]);
        return 1;
    }

    spec_path = argv[1];
    overlay_name = argv[2];

    // printf("spec path: %s\n", spec_path);
    // printf("overlay name: %s\n", overlay_name);

    spec = util_read_whole_file(spec_path, &size);
    segmentFound = get_single_segment_by_name(&segment, spec, overlay_name);

    if (!segmentFound) {
        fprintf(stderr, ERRMSG_START "no segment \"%s\" found\n" ERRMSG_END, overlay_name);
        goto error_out;
    }

    {
        size_t overlay_name_length;
        const char* reloc_suffix = "_reloc.o";
        char* expected_filename;

        /* Relocation file must be the last `include` (so .ovl section is linked last) */
        if (strstr(segment.includes[segment.includesCount - 1].fpath, reloc_suffix) == NULL) {
            fprintf(stderr, ERRMSG_START "last include in overlay segment \"%s\" is not a `%s` file\n" ERRMSG_END,
                    overlay_name, reloc_suffix);
            goto error_out;
        }

        overlay_name_length = strlen(overlay_name);
        expected_filename = malloc(overlay_name_length + strlen(reloc_suffix) + 1);
        strcpy(expected_filename, overlay_name);
        strcat(expected_filename, reloc_suffix);

        if (strstr(segment.includes[segment.includesCount - 1].fpath, expected_filename) == NULL) {
            fprintf(stderr, ERRMSG_START "Relocation file \"%s\" should have filename \"%s\"\n" ERRMSG_END,
                    segment.includes[segment.includesCount - 1].fpath, expected_filename);
            goto error_out;
        }
        free(expected_filename);
    }
    {
        int i;
        /* Skip `_reloc.o` include */
        for (i = 0; i < segment.includesCount - 1; i++) {
            printf("%s ", segment.includes[i].fpath);
        }
        putchar('\n');
    }

    if (0) {
    error_out:
        exit_status = 1;
    }

    free_single_segment_elements(&segment);
    free(spec);

    return exit_status;
}
