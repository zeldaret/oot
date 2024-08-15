/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef CODEC_UNCOMPRESSED_H
#define CODEC_UNCOMPRESSED_H

int
pcm16_dec(struct container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);

int
pcm16_enc(struct container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);

int
pcm16_enc_dec(struct container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);

#endif
