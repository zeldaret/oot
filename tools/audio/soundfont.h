/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef SOUNDFONT_H_
#define SOUNDFONT_H_

#include <stdint.h>

#include "aifc.h"
#include "samplebank.h"

// special delay values
#define ADSR_DISABLE 0
#define ADSR_HANG    -1
#define ADSR_GOTO    -2
#define ADSR_RESTART -3

#define INSTR_LO_NONE 0
#define INSTR_HI_NONE 127

typedef struct sample_data {
    struct sample_data *next;

    const char *name;
    double sample_rate;
    int8_t base_note;
    bool is_dd;
    bool cached;
    aifc_data aifc;
} sample_data;

typedef struct {
    int16_t delay;
    int16_t arg;
} envelope_point;

typedef struct envelope_data {
    struct envelope_data *next;

    const char *name;
    uint8_t release;
    envelope_point *points;
    size_t n_points;
    bool used;
} envelope_data;

typedef struct instr_data {
    struct instr_data *next;

    unsigned int program_number;
    const char *name;
    const char *envelope_name;

    // for matching only
    bool unused;

    // these are provided as-is for unused (name == NULL) otherwise they are read from the aifc file
    double sample_rate_mid;
    double sample_rate_lo;
    double sample_rate_hi;
    int8_t base_note_mid;
    int8_t base_note_lo;
    int8_t base_note_hi;

    envelope_data *envelope;
    uint16_t release;
    const char *sample_name_low;
    const char *sample_name_mid;
    const char *sample_name_high;
    int8_t sample_low_end;
    int8_t sample_high_start;
    sample_data *sample_low;
    sample_data *sample_mid;
    sample_data *sample_high;
    float sample_low_tuning;
    float sample_mid_tuning;
    float sample_high_tuning;
} instr_data;

typedef struct drum_data {
    struct drum_data *next;

    const char *name;
    const char *sample_name;
    const char *envelope_name;
    envelope_data *envelope;
    uint16_t release;
    int8_t note;
    int8_t note_start;
    int8_t note_end;
    int pan;
    sample_data *sample;
    double sample_rate;
    int8_t base_note;
} drum_data;

typedef struct sfx_data {
    struct sfx_data *next;

    const char *name;
    const char *sample_name;
    sample_data *sample;
    double sample_rate;
    int8_t base_note;
    float tuning;
} sfx_data;

typedef struct {
    bool matching;

    struct {
        const char *name;
        const char *symbol;
        int index;
        const char *medium;
        const char *cache_policy;
        const char *bank_path;
        int pointer_index;
        const char *bank_path_dd;
        int pointer_index_dd;
        unsigned int pad_to_size;
        unsigned int num_instruments; // or the maximum program number (+1), since this also includes empty slots
                                      // between instruments
        unsigned int num_drums;
        unsigned int num_effects;
        bool loops_have_frames;
    } info;

    uint32_t program_number_bitset[4];

    envelope_data *envelopes;
    envelope_data *envelope_last;

    samplebank sb;
    samplebank sbdd;

    sample_data *samples;
    sample_data *sample_last;

    instr_data *instruments;
    instr_data *instrument_last;

    drum_data *drums;
    drum_data *drums_last;

    sfx_data *sfx;
    sfx_data *sfx_last;

    uint8_t *match_padding;
    size_t match_padding_num;
} soundfont;

#define NOTE_UNSET    (INT8_MIN)
#define RELEASE_UNSET (UINT16_MAX)

envelope_data *
sf_get_envelope(soundfont *sf, const char *name);

sample_data *
sample_data_forname(soundfont *sf, const char *name);

void
read_soundfont_info(soundfont *sf, xmlNodePtr node);

#endif
