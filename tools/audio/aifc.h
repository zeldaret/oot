/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef AIFC_H_
#define AIFC_H_

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

typedef struct {
    int32_t order;
    int32_t npredictors;
} ALADPCMbookhead;

typedef int16_t ALADPCMbookstate[];

typedef struct {
    uint32_t start;
    uint32_t end;
    uint32_t count;
    int16_t state[16];
} ALADPCMloop;

typedef struct {
    int16_t id;
    uint32_t pos;
    char *label;
} aifc_marker;

typedef struct {
    const char *path; // for debugging
    // COMM
    uint32_t num_frames;
    int16_t num_channels;
    int16_t sample_size;
    double sample_rate;
    uint32_t compression_type;
    char *compression_name;
    // SSND
    long ssnd_offset;
    size_t ssnd_size;
    // INST
    bool has_inst;
    int8_t basenote;
    int8_t detune;
    // MARK
    size_t num_markers;
    aifc_marker (*markers)[];
    // APPL::stoc::VADPCMCODES
    bool has_book;
    ALADPCMbookhead book;
    ALADPCMbookstate *book_state;
    // APPL::stoc::VADPCMLOOPS
    bool has_loop;
    ALADPCMloop loop;
} aifc_data;

#define BUG_BUF_SIZE 0x10000

void
aifc_read(aifc_data *af, const char *path, uint8_t *match_buf, size_t *match_buf_pos);

void
aifc_dispose(aifc_data *af);

// Subtract 21, if negative wrap into [0, 128)
#define NOTE_MIDI_TO_Z64(b) (((b)-21 < 0) ? ((b)-21 + 128) : ((b)-21))

#endif
