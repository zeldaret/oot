/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#include <assert.h>
#include <errno.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bin2c.h"
#include "endian.h"

#define BYTES_PER_ROW 32
#define LINE_MASK     (BYTES_PER_ROW - 1)

int
bin2c(char **out, size_t *size_out, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width)
{
    assert(out != NULL);
    assert(size_out != NULL);
    assert(bin != NULL);

    if (byte_width != 1 && byte_width != 2 && byte_width != 4 && byte_width != 8)
        return -2;

    size_t end_size = (pad_to_size > size) ? pad_to_size : size;

    if ((end_size & (byte_width - 1)) != 0)
        return -3;

    size_t size_out_ = (1 + 1 + 2 * byte_width + 1 + 1) * ((end_size + byte_width - 1) / byte_width) + 2;
    char *out_ = malloc(size_out_);
    if (out_ == NULL)
        return -1;

    char *pos = out_;
    bool was_newline = false;
    for (size_t p = 0; p < size; p += byte_width) {
        size_t rem = byte_width;
        if (rem > size - p) // For any remaining unaligned data, rest will be padded with 0
            rem = size - p;

        // Read input
        uint64_t d = 0;
        memcpy(&d, &((uint8_t *)bin)[p], rem);

        // Byteswap + shift
        d = be64toh(d) >> (64 - 8 * byte_width);

        // Write output
        was_newline = (((p + byte_width) & LINE_MASK) == 0);
        char end = was_newline ? '\n' : ' ';
        pos += sprintf(pos, "0x%0*" PRIX64 ",%c", 2 * byte_width, d, end);
    }

    for (size_t p = (size + byte_width - 1) & ~(byte_width - 1); p < pad_to_size; p += byte_width) {
        was_newline = (((p + byte_width) & LINE_MASK) == 0);
        char end = was_newline ? '\n' : ' ';
        pos += sprintf(pos, "0x%0*" PRIX64 ",%c", 2 * byte_width, (uint64_t)0, end);
    }

    if (!was_newline)
        *pos++ = '\n';

    *pos++ = '\0';

    *out = out_;
    *size_out = size_out_;
    return 0;
}

int
bin2c_file(const char *out_path, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width)
{
    assert(out_path != NULL);
    assert(bin != NULL);

    if (byte_width != 1 && byte_width != 2 && byte_width != 4 && byte_width != 8)
        return -2;

    size_t end_size = (pad_to_size > size) ? pad_to_size : size;

    if ((end_size & (byte_width - 1)) != 0)
        return -3;

    FILE *of = fopen(out_path, "w");
    if (of == NULL)
        return -1;

    bool was_newline = false;
    for (size_t p = 0; p < size; p += byte_width) {
        size_t rem = byte_width;
        if (rem > size - p) // For any remaining unaligned data, rest will be padded with 0
            rem = size - p;

        // Read input
        uint64_t d = 0;
        memcpy(&d, &((uint8_t *)bin)[p], rem);

        // Byteswap + shift
        d = be64toh(d) >> (64 - 8 * byte_width);

        // Write output
        was_newline = (((p + byte_width) & LINE_MASK) == 0);
        char end = was_newline ? '\n' : ' ';

        if (fprintf(of, "0x%0*" PRIX64 ",%c", 2 * byte_width, d, end) < 0)
            goto error_post_open;
    }

    for (size_t p = (size + byte_width - 1) & ~(byte_width - 1); p < pad_to_size; p += byte_width) {
        was_newline = (((p + byte_width) & LINE_MASK) == 0);
        char end = was_newline ? '\n' : ' ';
        if (fprintf(of, "0x%0*" PRIX64 ",%c", 2 * byte_width, (uint64_t)0, end) < 0)
            goto error_post_open;
    }

    if (!was_newline)
        fputs("\n", of);

    fclose(of);
    return 0;
error_post_open:
    fclose(of);
    if (remove(out_path) != 0)
        fprintf(stderr, "error calling remove(\"%s\"): %s", out_path, strerror(errno));
    return -4;
}
