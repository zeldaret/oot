#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

int main(int argc, char** argv) {
    if (argc != 2) {
    usage:
        fprintf(stderr, "%s <u8|u32|u64>\n", argv[0]);
        return EXIT_FAILURE;
    }

    char* bytes_per_elem_str = argv[1];
    struct {
        size_t num;
        char* str;
    } bytes_per_elem_arg_info[] = {
        { 1, "u8" },
        { 4, "u32" },
        { 8, "u64" },
    };
    size_t bytes_per_elem = 0;
    for (int i = 0; i < 3; i++) {
        if (strcmp(bytes_per_elem_arg_info[i].str, bytes_per_elem_str) == 0) {
            bytes_per_elem = bytes_per_elem_arg_info[i].num;
        }
    }
    if (bytes_per_elem == 0) {
        goto usage;
    }

    FILE* in_bin = stdin;
    FILE* out_c = stdout;

    fprintf(out_c, "{\n");

    int cur_line_nelems = 0;

    while (true) {
        uint8_t buffer[bytes_per_elem];
        size_t nread = fread(buffer, 1, bytes_per_elem, in_bin);

        if (nread == 0 && feof(in_bin)) {
            break;
        }

        if (nread != bytes_per_elem) {
            if (feof(in_bin)) {
                fprintf(stderr, "Input has unaligned size\n");
            } else {
                fprintf(stderr, "Error reading from input\n");
            }
            return EXIT_FAILURE;
        }

        if (cur_line_nelems == 0) {
            fprintf(out_c, "    ");
        }

        fprintf(out_c, "0x");
        for (size_t i = 0; i < bytes_per_elem; i++) {
            fprintf(out_c, "%02X", buffer[i]);
        }
        fprintf(out_c, ",");

        cur_line_nelems++;

        int bytes_per_line = bytes_per_elem == 1 ? 0x10 : 0x20;

        if (cur_line_nelems * bytes_per_elem >= bytes_per_line) {
            fprintf(out_c, "\n");
            cur_line_nelems = 0;
        } else {
            fprintf(out_c, " ");
        }
    }

    if (cur_line_nelems != 0) {
        fprintf(out_c, "\n");
    }

    fprintf(out_c, "}\n");

    return EXIT_SUCCESS;
}
