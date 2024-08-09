/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef CONTAINER_H
#define CONTAINER_H

#include <stdbool.h>
#include <stdint.h>

#include "../codec/vadpcm.h"

typedef enum {
    // Uncompressed
    SAMPLE_TYPE_PCM16,
    SAMPLE_TYPE_PCM8,

    // Compressed
    SAMPLE_TYPE_VADPCM,
    SAMPLE_TYPE_VADPCM_HALF
} sample_data_type;

typedef struct {
    const char *fext;
    int (*read)(struct container_data *out, const char *path, bool matching);
    int (*write)(struct container_data *out, const char *path, bool matching);
} container_spec;

typedef enum {
    LOOP_NONE = 0,
    LOOP_FORWARD = 1,
    LOOP_FORWARD_BACKWARD = 2,
    LOOP_BACKWARD = 3
} loop_type;

typedef struct {
    uint16_t id;
    loop_type type;
    uint32_t start;
    uint32_t end;
    uint32_t fraction;
    uint32_t num;
} container_loop;

typedef struct {
    uint16_t id;
    uint32_t frame_number;
    char *name;
} container_marker;

typedef struct container_data {
    // Sample details
    double sample_rate;
    unsigned int num_channels;
    uint32_t byte_rate;
    uint16_t block_align;
    uint16_t bit_depth;   // also called sample_size
    uint32_t num_samples; // also apparently called num_frames? but that's wrong

    // Instrument details
    int8_t base_note;
    int8_t fine_tune;
    int8_t gain;
    int8_t key_low;
    int8_t key_hi;
    int8_t vel_low;
    int8_t vel_hi;

    // Sample data, possibly compressed
    sample_data_type data_type;
    void *data;
    size_t data_size;

    unsigned num_loops;
    container_loop *loops;

    // VADPCM-specific data
    struct {
        // VADPCM codebook
        int16_t book_version;
        ALADPCMbookhead book_header;
        int16_t *book_data;
        bool has_book;

        // VADPCM loop data
        int16_t loop_version;
        unsigned num_loops;
        ALADPCMloop *loops;
    } vadpcm;
} container_data;

int
container_destroy(container_data *data);

#endif
