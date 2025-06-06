
// SPDX-FileCopyrightText: © 2024 ZeldaRET
// SPDX-License-Identifier: CC0-1.0

// Usage: preprocess_pragmas OOT_VERSION filename < source.c
// The filename argument is only used for linemarkers.
// Preprocess C source on stdin, writes to stdout
// Replace `#pragma increment_block_number` with fake structs for controlling BSS ordering.
// The names of these fake structs are expected to be increment_block_number_%d_%d with the first number indicating
// the line number of the #pragma in the original source file. (this is for use by fix_bss.py)

#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char str_pragma_increment_block_number[] = "#pragma increment_block_number";

int main(int argc, char** argv) {
    if (argc != 3) {
        fprintf(stderr, "Usage: preprocess_pragmas OOT_VERSION filename < source.c\n");
        return EXIT_FAILURE;
    }
    char* const version = argv[1];
    char* const filename = argv[2];

    const size_t len_version = strlen(version);
    char version_needle[len_version + 2];
    memcpy(version_needle, version, len_version);
    version_needle[len_version] = ':';
    version_needle[len_version + 1] = '\0';

    char buf[32 * 1024];
    char* const bufend = buf + sizeof(buf);
    char* bufp = buf;
    bool cont = true;
    int line_num = 1;
    // whether the current line follows a #pragma increment_block_number,
    // including continuation lines (lines after a \-ending line)
    bool is_in_pragma = false;
    // the line where the #pragma increment_block_number is
    int pragma_line_number;
    // how many fake structs to write to replace the current pragma
    int n_fake_structs;

    while (cont) {
        size_t nread = fread(bufp, 1, bufend - bufp, stdin);
        bufp += nread;
        if (nread == 0) {
            if (!feof(stdin)) {
                perror("fread");
                fprintf(stderr, "Failed to read from stdin\n");
                return EXIT_FAILURE;
            }
            cont = false;
            if (bufp == buf) {
                // All lines processed
                break;
            } else {
                // The buffer contains the last line and that line isn't terminated with a newline.
                // Add a final newline and do one last iteration.
                assert(bufp < bufend);
                *bufp = '\n';
                bufp++;
            }
        }

        char* last_newline = NULL;
        for (char* p = bufp - 1; p >= buf; p--) {
            if (*p == '\n') {
                last_newline = p;
                break;
            }
        }
        if (last_newline == NULL) {
            // No newline, read more data.
            // Assert there is space for it (there should be no line long enough to not fit in buf).
            assert(bufp < bufend);
            continue;
        }

        char* line = buf;
        while (true) {
            char* line_end = line;
            while (*line_end != '\n') {
                line_end++;
                assert(line_end <= last_newline);
            }
            if (!strncmp(line, str_pragma_increment_block_number, strlen(str_pragma_increment_block_number))) {
                is_in_pragma = true;
                pragma_line_number = line_num;
                n_fake_structs = 0;
            }
            if (is_in_pragma) {
                *line_end = '\0';
                char* version_amount_item = strstr(line, version_needle);
                if (version_amount_item != NULL) {
                    char* version_amount_str_start = &version_amount_item[len_version + 1];
                    char* version_amount_str_end;
                    long amount = strtol(version_amount_str_start, &version_amount_str_end, 10);
                    if (version_amount_str_start == version_amount_str_end) {
                        fprintf(stderr, "Found version %s in pragma line but no amount integer\n", version);
                        fprintf(stderr, "%s\n", line);
                        return EXIT_FAILURE;
                    }
                    n_fake_structs = (int)amount;
                }
            } else {
                char* p = line;
                size_t sz = line_end + 1 - line;
                while (sz != 0) {
                    size_t nwritten = fwrite(p, 1, sz, stdout);
                    if (nwritten == 0) {
                        fprintf(stderr, "Failed to write to stdout\n");
                        return EXIT_FAILURE;
                    }
                    p += nwritten;
                    sz -= nwritten;
                }
            }
            if (is_in_pragma && line_end[-1] != '\\') {
                is_in_pragma = false;

                // Always generate at least one struct,
                // so that fix_bss.py can know where the increment_block_number pragmas are
                if (n_fake_structs == 0) {
                    n_fake_structs = 256;
                }

                // Write fake structs for BSS ordering
                // pragma_line_number is used for symbol uniqueness,
                // and also by fix_bss.py to locate the pragma these symbols originate from.
                for (int i = 0; i < n_fake_structs; i++)
                    fprintf(stdout, "struct increment_block_number_%05d_%03d;\n", pragma_line_number, i);
                fprintf(stdout, "#line %d \"%s\"\n", line_num + 1, filename);
            }
            line_num++;
            if (line_end == last_newline)
                break;
            line = line_end + 1;
        }
        assert(bufp <= bufend);
        assert(bufp > last_newline);
        char* next_incomplete_line_start = last_newline + 1;
        ptrdiff_t next_incomplete_line_sz = bufp - next_incomplete_line_start;
        assert(next_incomplete_line_sz >= 0);
        memmove(buf, next_incomplete_line_start, next_incomplete_line_sz);
        bufp = buf + next_incomplete_line_sz;
    }

    return EXIT_SUCCESS;
}
