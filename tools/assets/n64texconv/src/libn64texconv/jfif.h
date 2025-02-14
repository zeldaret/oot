/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#ifndef JFIF_H
#define JFIF_H

#include <stddef.h>
#include <stdint.h>

struct JFIF {
    void *data;
    size_t data_size;
};

#define JFIF_BUFFER_SIZE (320 * 240 * sizeof(uint16_t))

struct JFIF *
jfif_fromfile(const char *path, size_t max_size);

void
jfif_free(struct JFIF *jfif);

int
jfif_to_c(char **out, size_t *size_out, struct JFIF *jfif, size_t pad_to_size);

int
jfif_to_c_file(const char *out_path, struct JFIF *jfif, size_t pad_to_size);

#endif
