/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "endian.h"
#include "bin2c.h"
#include "jfif.h"

struct JFIF *
jfif_fromfile(const char *path, size_t max_size)
{
    assert(path != NULL);
    FILE *f = fopen(path, "rb");
    if (f == NULL)
        return NULL;

    fseek(f, 0, SEEK_END);
    size_t data_size = ftell(f);
    fseek(f, 0, SEEK_SET);

    struct JFIF *jfif = malloc(((sizeof(struct JFIF) + 3) & ~3) + data_size);
    if (jfif != NULL) {
        jfif->data = (void *)(jfif + 1);
        jfif->data_size = data_size;

        if (fread(jfif->data, 1, data_size, f) != data_size) {
            free(jfif);
            jfif = NULL;
        } else {
            uint8_t *data8 = jfif->data;
            uint16_t *data16 = jfif->data;
            uint32_t *data32 = jfif->data;

            if (be32toh(data32[0]) != 0xFFD8FFE0)
                printf("[Warning] Missing JPEG marker\n");
            if (data8[6] != 'J' || data8[7] != 'F' || data8[8] != 'I' || data8[9] != 'F')
                printf("[Warning] Not JFIF\n");
            if (data8[11] != 0x01 || data8[12] != 0x01)
                printf("[Warning] Not JFIF version 1.01\n");
            if (be16toh(data16[10]) != 0xFFDB)
                printf("[Warning] Data before DQT\n");
            if (jfif->data_size > max_size)
                printf("[Warning] JFIF image too large\n");
        }
    }

    fclose(f);
    return jfif;
}

void
jfif_free(struct JFIF *jfif)
{
    assert(jfif != NULL);
    free(jfif);
}

int
jfif_to_c(char **out, size_t *size_out, struct JFIF *jfif, size_t pad_to_size)
{
    assert(out != NULL);
    assert(size_out != NULL);
    return bin2c(out, size_out, jfif->data, jfif->data_size, pad_to_size, 8);
}

int
jfif_to_c_file(const char *out_path, struct JFIF *jfif, size_t pad_to_size)
{
    assert(out_path != NULL);
    assert(jfif != NULL);
    return bin2c_file(out_path, jfif->data, jfif->data_size, pad_to_size, 8);
}
