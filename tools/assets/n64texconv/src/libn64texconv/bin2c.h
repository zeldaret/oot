/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#ifndef BIN2C_H
#define BIN2C_H

#include <stddef.h>

int
bin2c(char **out, size_t *size_out, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width);

int
bin2c_file(const char *out_path, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width);

#endif
