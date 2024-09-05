/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef CODEC_H_
#define CODEC_H_

#include <stdint.h>

#include "../container/container.h"

#include "vadpcm.h"
#include "uncompressed.h"

typedef struct enc_dec_opts {
    // Matching
    bool matching;

    // VADPCM options
    bool truncate;
    uint32_t min_loop_length;
    table_design_spec design;
} enc_dec_opts;

typedef struct codec_spec {
    const char *name;
    sample_data_type type;
    int frame_size;
    bool compressed;
    int (*decode)(container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);
    int (*encode)(container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);
} codec_spec;

#endif
