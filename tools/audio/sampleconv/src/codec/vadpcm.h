/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: CC0-1.0
 */
#ifndef CODEC_VADPCM_H
#define CODEC_VADPCM_H

#include <stdbool.h>
#include <stdint.h>

#define VADPCM_BOOK_SIZE(order, npredictors)       (8 * (order) * (npredictors))
#define VADPCM_BOOK_SIZE_BYTES(order, npredictors) (sizeof(int16_t) * VADPCM_BOOK_SIZE(order, npredictors))

typedef struct {
    int16_t order;
    int16_t npredictors;
} ALADPCMbookhead;

typedef int16_t ALADPCMbookstate[];

typedef struct {
    uint32_t start;
    uint32_t end;
    uint32_t count;
    int16_t state[16];
} ALADPCMloop;

typedef struct {
    unsigned int order;
    unsigned int bits;
    unsigned int refine_iters;
    double thresh;
    unsigned int frame_size;
} table_design_spec;

int
tabledesign_run(int16_t *order_out, int16_t *npredictors_out, int16_t **book_data_out, void *sample_data,
                size_t num_samples, const table_design_spec *design);

struct container_data;
struct codec_spec;
struct enc_dec_opts;

int
vadpcm_enc(struct container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);

int
vadpcm_dec(struct container_data *ctnr, const struct codec_spec *codec, const struct enc_dec_opts *opts);

#endif
