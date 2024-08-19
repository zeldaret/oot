/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include "../util.h"

#include "codec.h"
#include "../container/container.h"

int
pcm16_enc_dec(UNUSED container_data *ctnr, UNUSED const codec_spec *codec, UNUSED const enc_dec_opts *opts)
{
    // Since we decode to and encode from pcm16, there's nothing to do.
    return 0;
}

// TODO
int
pcm8_dec(UNUSED container_data *ctnr, UNUSED const codec_spec *codec, UNUSED const enc_dec_opts *opts)
{
#if 0
    for (size_t i = 0; i < num_samples; i++) {
        uint8_t insamp = ((uint8_t *)in)[i];

        int16_t outsamp = insamp << 8; // - 0x80 before shift ?

        ((int16_t *)out)[i] = outsamp;
    }
#endif
    return 0;
}

// TODO
int
pcm8_enc(UNUSED container_data *ctnr, UNUSED const codec_spec *codec, UNUSED const enc_dec_opts *opts)
{
#if 0
    for (size_t i = 0; i < num_samples; i++) {
        uint16_t insamp = ((uint16_t *)in)[i];

        uint8_t outsamp = insamp >> 8;

        ((uint8_t *)out)[i] = outsamp;
    }
#endif
    return 0;
}
