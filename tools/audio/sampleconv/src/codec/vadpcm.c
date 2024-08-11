/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: CC0-1.0
 */
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>

#include "../util.h"

#include "codec.h"

int
expand_codebook(int16_t *book_data, int32_t ****table_out, int32_t order, int32_t npredictors)
{
    int32_t ***table = MALLOC_CHECKED_INFO(npredictors * sizeof(int32_t **), "npredictors=%d", npredictors);

    for (int32_t i = 0; i < npredictors; i++) {
        table[i] = MALLOC_CHECKED(8 * sizeof(int32_t *));
        for (int32_t j = 0; j < 8; j++)
            table[i][j] = MALLOC_CHECKED_INFO((order + 8) * sizeof(int32_t), "order=%d", order);
    }

    for (int32_t i = 0; i < npredictors; i++) {
        int32_t **table_entry = table[i];

        for (int32_t j = 0; j < order; j++) {
            for (int32_t k = 0; k < 8; k++)
                table_entry[k][j] = *(book_data++);
        }

        for (int32_t k = 1; k < 8; k++)
            table_entry[k][order] = table_entry[k - 1][order - 1];

        table_entry[0][order] = 1 << 11;

        for (int32_t k = 1; k < 8; k++) {
            int32_t j = 0;

            for (; j < k; j++)
                table_entry[j][k + order] = 0;
            for (; j < 8; j++)
                table_entry[j][k + order] = table_entry[j - k][order];
        }
    }

    *table_out = table;
    return 0;
}

int
compressed_expanded_codebook(int16_t **book_data_out, int32_t ***table, int order, int npredictors)
{
    int16_t *book_data =
        MALLOC_CHECKED_INFO(sizeof(int16_t) * 8 * order * npredictors, "order=%d, npredictors=%d", order, npredictors);

    int n = 0;
    for (int32_t i = 0; i < npredictors; i++) {
        for (int32_t j = 0; j < order; j++) {
            for (int32_t k = 0; k < 8; k++)
                book_data[n++] = table[i][k][j];
        }
    }
    *book_data_out = book_data;
    return 0;
}

int
destroy_expanded_codebook(int32_t ***table, int npredictors)
{
    for (int i = 0; i < npredictors; i++) {
        for (int j = 0; j < 8; j++)
            free(table[i][j]);
        free(table[i]);
    }
    free(table);
    return 0;
}

static uint32_t
myrand(void)
{
    static uint64_t state = 1619236481962341ull;
    state *= 3123692312237ull;
    state++;
    return state >> 33;
}

static int16_t
qsample(float x, int32_t scale)
{
    if (x > 0.0f)
        return (int16_t)((x / scale) + 0.4999999);
    else
        return (int16_t)((x / scale) - 0.4999999);
}

/**
 * Round all ('fs' many) values in 'e' to the nearest 'bits'-bit integer,
 * outputting to 'ie'.
 */
static void
clamp(int32_t fs, float *e, int32_t *ie, int32_t bits)
{
    int32_t i;
    float ulevel;
    float llevel;

    llevel = -(float)(1 << (bits - 1));
    ulevel = -llevel - 1.0f;
    for (i = 0; i < fs; i++) {
        if (e[i] > ulevel)
            e[i] = ulevel;
        if (e[i] < llevel)
            e[i] = llevel;

        if (e[i] > 0.0f)
            ie[i] = (int32_t)(e[i] + 0.5);
        else
            ie[i] = (int32_t)(e[i] - 0.5);
    }
}

static void
clamp_to_s16(float *in, int32_t *out)
{
    for (int i = 0; i < 16; i++) {
        if (in[i] > 0x7fff)
            in[i] = 0x7fff;
        if (in[i] < -0x8000)
            in[i] = -0x8000;

        if (in[i] > 0.0f)
            out[i] = (int32_t)(in[i] + 0.5);
        else
            out[i] = (int32_t)(in[i] - 0.5);
    }
}

static int16_t
clamp_bits(int32_t x, int32_t bits)
{
    int32_t lim = 1 << (bits - 1);

    if (x < -lim)
        return -lim;
    if (x > lim - 1)
        return lim - 1;
    return x;
}

static int32_t
inner_product(int32_t length, int32_t *v1, int32_t *v2)
{
    int32_t out = 0;
    for (int32_t i = 0; i < length; i++)
        out += v1[i] * v2[i];

    // Compute "out / 2^11", rounded down.
    int32_t dout = out / (1 << 11);
    int32_t fiout = dout * (1 << 11);
    return dout - (out - fiout < 0);
}

static void
vdecodeframe(uint8_t *frame, int32_t *prescaled, int32_t *state, int32_t order, int32_t ***coef_tbl, int frame_size)
{
    uint8_t header = frame[0];
    int32_t scale = 1 << ((header >> 4) & 0xF);
    int32_t optimalp = (header >> 0) & 0xF;

    int32_t ix[16];

    // Unpack
    if (frame_size == 5) {
        for (int32_t i = 0; i < 16; i += 4) {
            uint8_t c = frame[1 + i / 4];
            ix[i + 0] = (c >> 6) & 0b11;
            ix[i + 1] = (c >> 4) & 0b11;
            ix[i + 2] = (c >> 2) & 0b11;
            ix[i + 3] = (c >> 0) & 0b11;
        }
    } else {
        for (int32_t i = 0; i < 16; i += 2) {
            uint8_t c = frame[1 + i / 2];
            ix[i + 0] = (c >> 4) & 0xF;
            ix[i + 1] = (c >> 0) & 0xF;
        }
    }

    // Sign-extend and scale
    for (int32_t i = 0; i < 16; i++) {
        if (frame_size == 5) {
            if (ix[i] >= 2) // 2-bit sign extension
                ix[i] -= 4;
        } else {
            if (ix[i] >= 8) // 4-bit sign extension
                ix[i] -= 16;
        }
        prescaled[i] = ix[i]; // save decompressed frame data before scaling
        ix[i] *= scale;
    }

    int32_t **coef_page = coef_tbl[optimalp];

    // Inner product with predictor coefficients
    for (int32_t j = 0; j < 2; j++) {
        int32_t in_vec[16];

        for (int32_t i = 0; i < order; i++)
            in_vec[i] = state[(2 - j) * 8 - order + i];

        for (int32_t i = 0; i < 8; i++) {
            int32_t ind = j * 8 + i;

            in_vec[order + i] = ix[ind];
            state[ind] = inner_product(order + i, coef_page[i], in_vec) + ix[ind];
        }
    }
}

/**
 * Similar to vencodeframe but sources data differently and doubles up certain operations. This is used during
 * brute-force decoding of compressed data to decompressed data that matches on round-trip.
 */
static void
my_encodeframe(uint8_t *out, int16_t *in_buf, int32_t *orig_state, int32_t ***coef_tbl, int32_t order,
               int32_t npredictors, int frame_size)
{
    int16_t ix[16];
    int32_t prediction[16];
    int32_t in_vec[16];
    int32_t optimalp = 0;
    int32_t scale;
    int32_t encBits = (frame_size == 5) ? 2 : 4;
    int32_t llevel = -(1 << (encBits - 1));
    int32_t ulevel = -llevel - 1;
    int32_t ie[16];
    float e[16];

    // Determine the best-fitting predictor.
    float min = 1e30;
    int32_t scale_factor = 16 - encBits;

    for (int32_t k = 0; k < npredictors; k++) {
        for (int32_t j = 0; j < 2; j++) {
            // Copy over the last 'order' samples from the previous output.
            for (int32_t i = 0; i < order; i++)
                in_vec[i] = (j == 0) ? orig_state[16 - order + i] : in_buf[8 - order + i];

            // For 8 samples...
            for (int32_t i = 0; i < 8; i++) {
                // Compute a prediction based on 'order' values from the old state,
                // plus previous errors in this chunk, as an inner product with the
                // coefficient table.
                prediction[j * 8 + i] = inner_product(order + i, coef_tbl[k][i], in_vec);
                // Record the error in in_vec (thus, its first 'order' samples
                // will contain actual values, the rest will be error terms), and
                // in floating point form in e (for no particularly good reason).
                in_vec[i + order] = in_buf[j * 8 + i] - prediction[j * 8 + i];
                e[j * 8 + i] = (float)in_vec[i + order];
            }
        }

        // Compute the L2 norm of the errors; the lowest norm decides which
        // predictor to use.
        float se = 0.0f;
        for (int32_t j = 0; j < 16; j++)
            se += e[j] * e[j];

        if (se < min) {
            min = se;
            optimalp = k;
        }
    }

    // Do exactly the same thing again, for real.
    for (int32_t j = 0; j < 2; j++) {
        for (int32_t i = 0; i < order; i++)
            in_vec[i] = (j == 0) ? orig_state[16 - order + i] : in_buf[8 - order + i];

        for (int32_t i = 0; i < 8; i++) {
            prediction[j * 8 + i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);
            e[j * 8 + i] = in_vec[i + order] = in_buf[j * 8 + i] - prediction[j * 8 + i];
        }
    }

    // Clamp the errors to 16-bit signed ints, and put them in ie.
    clamp_to_s16(e, ie);

    // Find a value with highest absolute value.
    // @bug If this first finds -2^n and later 2^n, it should set 'max' to the
    // latter, which needs a higher value for 'scale'.
    int32_t max = 0;
    for (int32_t i = 0; i < 16; i++) {
        if (abs(ie[i]) > abs(max))
            max = ie[i];
    }

    // Compute which power of two we need to scale down by in order to make
    // all values representable as 4-bit signed integers (i.e. be in [-8, 7]).
    // The worst-case 'max' is -2^15, so this will be at most 12.
    for (scale = 0; scale <= scale_factor; scale++) {
        if (max <= ulevel && max >= llevel)
            break;
        max /= 2;
    }

    int32_t state[16];
    for (int32_t i = 0; i < 16; i++)
        state[i] = orig_state[i];

    // Try with the computed scale, but if it turns out we don't fit in 4 bits
    // (if some |cV| >= 2), use scale + 1 instead (i.e. downscaling by another
    // factor of 2).
    bool again = true;
    for (int32_t nIter = 0; nIter < 2 && again; nIter++) {
        again = false;

        if (nIter == 1)
            scale++;

        if (scale > scale_factor)
            scale = scale_factor;

        for (int32_t j = 0; j < 2; j++) {
            int32_t base = j * 8;

            // Copy over the last 'order' samples from the previous output.
            for (int32_t i = 0; i < order; i++)
                in_vec[i] = (j == 0) ? orig_state[16 - order + i] : state[8 - order + i];

            // For 8 samples...
            for (int32_t i = 0; i < 8; i++) {
                // Compute a prediction based on 'order' values from the old state,
                // plus previous *quantized* errors in this chunk (because that's
                // all the decoder will have available).
                prediction[base + i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);

                // Compute the error, and divide it by 2^scale, rounding to the
                // nearest integer. This should ideally result in a 4-bit integer.
                float se = (float)in_buf[base + i] - (float)prediction[base + i];
                ix[base + i] = qsample(se, 1 << scale);

                // Clamp the error to a 4-bit signed integer, and record what delta
                // was needed for that.
                int32_t cV = clamp_bits(ix[base + i], encBits) - ix[base + i];
                if (cV > 1 || cV < -1)
                    again = true;
                ix[base + i] += cV;

                // Record the quantized error in in_vec for later predictions,
                // and the quantized (decoded) output in state (for use in the next
                // batch of 8 samples).
                in_vec[i + order] = ix[base + i] * (1 << scale);
                state[base + i] = prediction[base + i] + in_vec[i + order];
            }
        }
    }

    // Write 1-byte header
    out[0] = ((scale & 0xF) << 4) | ((optimalp & 0xF) << 0);

    // Write 4/8-byte frame
    if (frame_size == 5) {
        for (int32_t i = 0; i < 16; i += 4) {
            uint8_t c = ((ix[i + 0] & 0b11) << 6) | ((ix[i + 1] & 0b11) << 4) | ((ix[i + 2] & 0b11) << 2) |
                        ((ix[i + 3] & 0b11) << 0);
            out[1 + i / 4] = c;
        }
    } else {
        for (int32_t i = 0; i < 16; i += 2) {
            uint8_t c = ((ix[i + 0] & 0xF) << 4) | ((ix[i + 1] & 0xF) << 0);
            out[1 + i / 2] = c;
        }
    }
}

static void
permute(int32_t *out, int32_t *in, int32_t *prescaled, int32_t scale, int frame_size)
{
    bool normal = myrand() % 3 == 0;

    for (int32_t i = 0; i < 16; i++) {
        int32_t lo = in[i] - scale / 2;
        int32_t hi = in[i] + scale / 2;

        if (frame_size == 9) {
            if (prescaled[i] == -8 && myrand() % 10 == 0)
                lo -= scale * 3 / 2;
            else if (prescaled[i] == 7 && myrand() % 10 == 0)
                hi += scale * 3 / 2;
        } else if (prescaled[i] == -2 && myrand() % 7 == 0) {
            lo -= scale * 3 / 2;
        } else if (prescaled[i] == 1 && myrand() % 10 == 0) {
            hi += scale * 3 / 2;
        } else if (normal) {
            //
        } else if (prescaled[i] == 0) {
            if (myrand() % 3) {
                lo = in[i] - scale / 5;
                hi = in[i] + scale / 5;
            } else if (myrand() % 2) {
                lo = in[i] - scale / 3;
                hi = in[i] + scale / 3;
            }
        } else if (myrand() % 3) {
            if (prescaled[i] < 0)
                lo = in[i] + scale / 4;
            if (prescaled[i] > 0)
                hi = in[i] - scale / 4;
        } else if (myrand() % 2) {
            if (prescaled[i] < 0)
                lo = in[i] - scale / 4;
            if (prescaled[i] > 0)
                hi = in[i] + scale / 4;
        }

        out[i] = clamp_bits(lo + myrand() % (hi - lo + 1), 16);
    }
}

/**
 * Like vencodeframe/my_encodeframe but assigns a score to the output for informing brute-force decoding
 */
static int64_t
scored_encode(int32_t *in_buf, int32_t *orig_state, int32_t ***coef_tbl, int32_t order, int32_t npredictors,
              int32_t wanted_predictor, int32_t wanted_scale, int32_t wanted_ix[16], int frame_size)
{
    int32_t prediction[16];
    int32_t in_vec[16];
    int32_t optimalp = 0;
    int32_t scale;
    int32_t enc_bits = (frame_size == 5) ? 2 : 4;
    int32_t llevel = -(1 << (enc_bits - 1));
    int32_t ulevel = -llevel - 1;
    int32_t ie[16];
    float e[16];
    float errs[4];

    // Determine the best-fitting predictor.
    float min = 1e30;
    int32_t scale_factor = 16 - enc_bits;

    int64_t scoreA = 0, scoreB = 0, scoreC = 0;

    for (int32_t k = 0; k < npredictors; k++) {
        for (int32_t j = 0; j < 2; j++) {
            // Copy over the last 'order' samples from the previous output.
            for (int32_t i = 0; i < order; i++)
                in_vec[i] = (j == 0) ? orig_state[16 - order + i] : in_buf[8 - order + i];

            // For 8 samples...
            for (int32_t i = 0; i < 8; i++) {
                // Compute a prediction based on 'order' values from the old state,
                // plus previous errors in this chunk, as an inner product with the
                // coefficient table.
                prediction[j * 8 + i] = inner_product(order + i, coef_tbl[k][i], in_vec);
                // Record the error in in_vec (thus, its first 'order' samples
                // will contain actual values, the rest will be error terms), and
                // in floating point form in e (for no particularly good reason).
                in_vec[i + order] = in_buf[j * 8 + i] - prediction[j * 8 + i];
                e[j * 8 + i] = (float)in_vec[i + order];
            }
        }

        // Compute the L2 norm of the errors; the lowest norm decides which
        // predictor to use.
        float se = 0.0f;
        for (int32_t j = 0; j < 16; j++)
            se += e[j] * e[j];

        errs[k] = se;

        if (se < min) {
            min = se;
            optimalp = k;
        }
    }

    for (int32_t k = 0; k < npredictors; k++) {
        if (errs[k] < errs[wanted_predictor])
            scoreA += (int64_t)(errs[wanted_predictor] - errs[k]);
    }

    if (optimalp != wanted_predictor) {
        // probably penalized above, but add extra penalty in case the error
        // values were the exact same
        scoreA++;
    }
    optimalp = wanted_predictor;

    int32_t **coefPage = coef_tbl[optimalp];

    // Do exactly the same thing again, for real.
    for (int32_t j = 0; j < 2; j++) {
        for (int32_t i = 0; i < order; i++)
            in_vec[i] = (j == 0 ? orig_state[16 - order + i] : in_buf[8 - order + i]);

        for (int32_t i = 0; i < 8; i++) {
            prediction[j * 8 + i] = inner_product(order + i, coefPage[i], in_vec);
            e[j * 8 + i] = in_vec[i + order] = in_buf[j * 8 + i] - prediction[j * 8 + i];
        }
    }

    // Clamp the errors to 16-bit signed ints, and put them in ie.
    clamp_to_s16(e, ie);

    // Find a value with highest absolute value.
    // @bug If this first finds -2^n and later 2^n, it should set 'max' to the
    // latter, which needs a higher value for 'scale'.
    int32_t max = 0;
    for (int32_t i = 0; i < 16; i++) {
        if (abs(ie[i]) > abs(max))
            max = ie[i];
    }

    // Compute which power of two we need to scale down by in order to make
    // all values representable as 4-bit signed integers (i.e. be in [-8, 7]).
    // The worst-case 'max' is -2^15, so this will be at most 12.
    for (scale = 0; scale <= scale_factor; scale++) {
        if (max <= ulevel && max >= llevel)
            break;
        max /= 2;
    }

    // Preliminary ix computation, computes whether scale needs to be incremented
    int32_t state[16];

    // Try with the computed scale, but if it turns out we don't fit in 4 bits
    // (if some |cV| >= 2), use scale + 1 instead (i.e. downscaling by another
    // factor of 2).
    bool again = false;
    for (int32_t j = 0; j < 2; j++) {
        int32_t base = j * 8;

        // Copy over the last 'order' samples from the previous output.
        for (int32_t i = 0; i < order; i++)
            in_vec[i] = (j == 0) ? orig_state[16 - order + i] : state[8 - order + i];

        // For 8 samples...
        for (int32_t i = 0; i < 8; i++) {
            // Compute a prediction based on 'order' values from the old state,
            // plus previous *quantized* errors in this chunk (because that's
            // all the decoder will have available).
            prediction[base + i] = inner_product(order + i, coefPage[i], in_vec);

            // Compute the error, and divide it by 2^scale, rounding to the
            // nearest integer. This should ideally result in a 4-bit integer.
            float se = (float)in_buf[base + i] - (float)prediction[base + i];
            int32_t ix = qsample(se, 1 << scale);
            int32_t clampedIx = clamp_bits(ix, enc_bits);

            // Clamp the error to a 4-bit signed integer, and record what delta
            // was needed for that.
            int32_t cV = clampedIx - ix;
            if (cV > 1 || cV < -1)
                again = true;

            // Record the quantized error in in_vec for later predictions,
            // and the quantized (decoded) output in state (for use in the next
            // batch of 8 samples).
            in_vec[i + order] = clampedIx * (1 << scale);
            state[base + i] = prediction[base + i] + in_vec[i + order];
        }
    }

    if (again && scale < scale_factor)
        scale++;

    if (scale != wanted_scale) {
        // We could do math to penalize scale mismatches accurately, but it's
        // simpler to leave it as a constraint by setting an infinite penalty.
        scoreB += 100000000;
        scale = wanted_scale;
    }

    // Then again for real, but now also with penalty computation
    for (int32_t j = 0; j < 2; j++) {
        int32_t base = j * 8;

        // Copy over the last 'order' decoded samples from the above chunk.
        for (int32_t i = 0; i < order; i++)
            in_vec[i] = (j == 0) ? orig_state[16 - order + i] : state[8 - order + i];

        // ... and do the same thing as before.
        for (int32_t i = 0; i < 8; i++) {
            prediction[base + i] = inner_product(order + i, coefPage[i], in_vec);

            int64_t ise = (int64_t)in_buf[base + i] - (int64_t)prediction[base + i];
            float se = (float)in_buf[base + i] - (float)prediction[base + i];
            int32_t ix = qsample(se, 1 << scale);
            int32_t clampedIx = clamp_bits(ix, enc_bits);
            int32_t val = wanted_ix[base + i] * (1 << scale);

            if (clampedIx != wanted_ix[base + i]) {
                assert(ix != wanted_ix[base + i]);

                int32_t lo = val - (1 << scale) / 2;
                int32_t hi = val + (1 << scale) / 2;

                int64_t diff = 0;
                if (ise < lo)
                    diff = lo - ise;
                else if (ise > hi)
                    diff = ise - hi;

                scoreC += diff * diff + 1;
            }
            in_vec[i + order] = val;
            state[base + i] = prediction[base + i] + val;
        }
    }

    // Penalties for going outside int16_t
    for (int32_t i = 0; i < 16; i++) {
        int64_t diff = 0;

        if (in_buf[i] < -0x8000)
            diff = -0x8000 - in_buf[i];
        if (in_buf[i] > 0x7fff)
            diff = in_buf[i] - 0x7fff;

        scoreC += diff * diff;
    }

    return scoreA + scoreB + 10 * scoreC;
}

static bool
descent(int32_t guess[16], int32_t min_vals[16], int32_t max_vals[16], int32_t prev_state[16], int32_t ***coef_tbl,
        int32_t order, int32_t npredictors, int32_t wanted_predictor, int32_t wanted_scale, int32_t wanted_ix[16],
        int frame_size)
{
    const double inf = 1e100;

    int64_t curScore = scored_encode(guess, prev_state, coef_tbl, order, npredictors, wanted_predictor, wanted_scale,
                                     wanted_ix, frame_size);

    while (true) {
        double delta[16];

        if (curScore == 0)
            return true;

        // Compute gradient, and how far to move along it at most.
        double maxMove = inf;
        for (int32_t i = 0; i < 16; i++) {
            guess[i]++;
            int64_t scoreUp = scored_encode(guess, prev_state, coef_tbl, order, npredictors, wanted_predictor,
                                            wanted_scale, wanted_ix, frame_size);
            guess[i] -= 2;
            int64_t scoreDown = scored_encode(guess, prev_state, coef_tbl, order, npredictors, wanted_predictor,
                                              wanted_scale, wanted_ix, frame_size);
            guess[i]++;

            if (scoreUp >= curScore && scoreDown >= curScore) {
                // Don't touch this coordinate
                delta[i] = 0;
                continue;
            }

            int32_t val = (scoreDown < scoreUp) ? min_vals[i] : max_vals[i];
            double ds = (scoreDown < scoreUp) ? (scoreDown - curScore) : (curScore - scoreUp);

            if (guess[i] == val) {
                delta[i] = 0;
            } else {
                delta[i] = ds;
                maxMove = fmin(maxMove, (val - guess[i]) / delta[i]);
            }
        }
        if (maxMove == inf || maxMove <= 0) {
            return false;
        }

        // Try exponentially spaced candidates along the gradient.
        int32_t nguess[16];
        int32_t bestGuess[16];
        int64_t bestScore = curScore;
        while (true) {
            bool changed = false;

            for (int32_t i = 0; i < 16; i++) {
                nguess[i] = (int32_t)round(guess[i] + delta[i] * maxMove);

                if (nguess[i] != guess[i])
                    changed = true;
            }

            if (!changed)
                break;

            int64_t score = scored_encode(nguess, prev_state, coef_tbl, order, npredictors, wanted_predictor,
                                          wanted_scale, wanted_ix, frame_size);
            if (score < bestScore) {
                bestScore = score;
                memcpy(bestGuess, nguess, sizeof(nguess));
            }
            maxMove *= 0.7;
        }

        if (bestScore == curScore)
            return false; // No improvements along that line, give up.

        curScore = bestScore;
        memcpy(guess, bestGuess, sizeof(bestGuess));
    }
}

static void
get_bounds(int32_t *in, int32_t *prescaled, int32_t scale, int32_t *min_vals, int32_t *max_vals, int frame_size)
{
    int32_t minv, maxv;

    if (frame_size == 9) {
        minv = -8;
        maxv = 8 - 1;
    } else {
        minv = -2;
        maxv = 2 - 1;
    }

    for (int32_t i = 0; i < 16; i++) {
        int32_t lo = in[i] - scale / 2 - scale;
        int32_t hi = in[i] + scale / 2 + scale;

        if (prescaled[i] == minv)
            lo -= scale;
        else if (prescaled[i] == maxv)
            hi += scale;

        min_vals[i] = lo;
        max_vals[i] = hi;
    }
}

#define VADPCM_BRUTEFORCE_LIMIT 100000

static int32_t
bruteforce(int32_t guess[16], uint8_t input[9], int32_t decoded[16], int32_t prescaled[16], int32_t prev_state[16],
           int32_t ***coef_tbl, int32_t order, int32_t npredictors, int frame_size)
{
    int32_t scale = (input[0] >> 4) & 0xF;
    int32_t predictor = (input[0] >> 0) & 0xF;

    int32_t min_vals[16];
    int32_t max_vals[16];
    get_bounds(decoded, prescaled, 1 << scale, min_vals, max_vals, frame_size);

    int i = 0;
    while (true) {
        int64_t bestScore = -1;
        int32_t bestGuess[16];

        for (int tries = 0; tries < 100; tries++) {
            permute(guess, decoded, prescaled, 1 << scale, frame_size);

            int64_t score =
                scored_encode(guess, prev_state, coef_tbl, order, npredictors, predictor, scale, prescaled, frame_size);
            if (score == 0)
                return true;

            if (bestScore == -1 || score < bestScore) {
                bestScore = score;
                memcpy(bestGuess, guess, sizeof(bestGuess));
            }
        }

        memcpy(guess, bestGuess, sizeof(bestGuess));

        if (descent(guess, min_vals, max_vals, prev_state, coef_tbl, order, npredictors, predictor, scale, prescaled,
                    frame_size))
            return true;

        i++;
        if (i == VADPCM_BRUTEFORCE_LIMIT)
            error("Bruteforce decoding failed");
    }
}

/**
 * vadpcm encoder used when encoding data
 */
static void
vencodeframe(uint8_t *out_buf, int16_t *in_buf, int32_t *state, int32_t ***coef_tbl, int32_t order, int32_t npredictors,
             int frame_size)
{
    int32_t in_vec[16];
    int32_t prediction[16];
    int32_t optimalp;
    float e[16];
    float se;
    float min = 1e30;
    int32_t i;
    int32_t j;
    int32_t k;

    // Determine the best-fitting predictor.

    optimalp = 0;
    for (k = 0; k < npredictors; k++) {
        // Copy over the last 'order' samples from the previous output.
        for (i = 0; i < order; i++)
            in_vec[i] = state[16 - order + i];

        // For 8 samples...
        for (i = 0; i < 8; i++) {
            // Compute a prediction based on 'order' values from the old state,
            // plus previous *quantized* errors in this chunk (because that's
            // all the decoder will have available).
            prediction[i] = inner_product(order + i, coef_tbl[k][i], in_vec);

            // Record the error in in_vec (thus, its first 'order' samples
            // will contain actual values, the rest will be error terms), and
            // in floating point form in e (for no particularly good reason).
            in_vec[i + order] = in_buf[i] - prediction[i];
            e[i] = (float)in_vec[i + order];
        }

        // For the next 8 samples, start with 'order' values from the end of
        // the previous 8-sample chunk of in_buf. (The code is equivalent to
        // in_vec[i] = in_buf[8 - order + i].)
        for (i = 0; i < order; i++)
            in_vec[i] = prediction[8 - order + i] + in_vec[8 + i];

        // ... and do the same thing as before to get predictions.
        for (i = 0; i < 8; i++) {
            prediction[8 + i] = inner_product(order + i, coef_tbl[k][i], in_vec);
            in_vec[i + order] = in_buf[8 + i] - prediction[8 + i];
            e[8 + i] = (float)in_vec[i + order];
        }

        // Compute the L2 norm of the errors; the lowest norm decides which predictor to use.
        se = 0.0f;
        for (j = 0; j < 16; j++)
            se += e[j] * e[j];

        if (se < min) {
            min = se;
            optimalp = k;
        }
    }

    // Do exactly the same thing again, for real.

    for (i = 0; i < order; i++)
        in_vec[i] = state[16 - order + i];

    for (i = 0; i < 8; i++) {
        prediction[i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);
        in_vec[i + order] = in_buf[i] - prediction[i];
        e[i] = (float)in_vec[i + order];
    }

    for (i = 0; i < order; i++)
        in_vec[i] = prediction[8 - order + i] + in_vec[8 + i];

    for (i = 0; i < 8; i++) {
        prediction[8 + i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);
        in_vec[i + order] = in_buf[8 + i] - prediction[8 + i];
        e[8 + i] = (float)in_vec[i + order];
    }

    int32_t ie[16];
    int32_t max = 0;

    // Clamp the errors to 16-bit signed ints, and put them in ie.
    clamp(16, e, ie, 16);

    // Find a value with highest absolute value.
    // Reproduce original tool bug:
    //      If this first finds -2^n and later 2^n, it should set 'max' to the
    //      latter, which needs a higher value for 'scale'.
    for (i = 0; i < 16; i++) {
        if (abs(ie[i]) > abs(max))
            max = ie[i];
    }

    // Compute which power of two we need to scale down by in order to make
    // all values representable as 4-bit (resp. 2-bit) signed integers
    // (i.e. be in [-8, 7] (resp. [-2, 1])).
    // The worst-case 'max' is -2^15, so this will be at most 12 (resp. 14).
    // Depends on whether we are encoding for long or short VADPCM.

    int32_t enc_bits = (frame_size == 5) ? 2 : 4;
    int32_t scale_factor = 16 - enc_bits;
    int32_t llevel = -(1 << (enc_bits - 1));
    int32_t ulevel = -llevel - 1;
    int32_t scale;

    for (scale = 0; scale <= scale_factor; scale++) {
        if (max <= ulevel && max >= llevel)
            break;
        max /= 2;
    }

    int32_t saveState[16];
    memcpy(saveState, state, sizeof(saveState));

    int16_t ix[16];
    int32_t nIter;
    int32_t cV;
    int32_t maxClip;

    // Try with the computed scale, but if it turns out we don't fit in 4 bits
    // (if some |cV| >= 2), use scale + 1 instead (i.e. downscaling by another
    // factor of 2).
    scale--;
    nIter = 0;
    do {
        nIter++;
        maxClip = 0;
        scale++;

        if (scale > scale_factor)
            scale = scale_factor;

        // Copy over the last 'order' samples from the previous output.
        for (i = 0; i < order; i++)
            in_vec[i] = saveState[16 - order + i];

        // For 8 samples...
        for (i = 0; i < 8; i++) {
            // Compute a prediction based on 'order' values from the old state,
            // plus previous *quantized* errors in this chunk (because that's
            // all the decoder will have available).
            prediction[i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);

            // Compute the error, and divide it by 2^scale, rounding to the
            // nearest integer. This should ideally result in a 4-bit integer.
            se = (float)in_buf[i] - (float)prediction[i];
            ix[i] = qsample(se, 1 << scale);

            // Clamp the error to a 4-bit signed integer, and record what delta
            // was needed for that.
            cV = clamp_bits(ix[i], enc_bits) - ix[i];
            if (maxClip < abs(cV))
                maxClip = abs(cV);
            ix[i] += cV;

            // Record the quantized error in in_vec for later predictions,
            // and the quantized (decoded) output in state (for use in the next
            // batch of 8 samples).
            in_vec[i + order] = ix[i] * (1 << scale);
            state[i] = prediction[i] + in_vec[i + order];
        }

        // Copy over the last 'order' decoded samples from the above chunk.
        for (i = 0; i < order; i++)
            in_vec[i] = state[8 - order + i];

        // ... and do the same thing as before.
        for (i = 0; i < 8; i++) {
            prediction[8 + i] = inner_product(order + i, coef_tbl[optimalp][i], in_vec);

            se = (float)in_buf[8 + i] - (float)prediction[8 + i];
            ix[8 + i] = qsample(se, 1 << scale);

            cV = clamp_bits(ix[8 + i], enc_bits) - ix[8 + i];
            if (maxClip < abs(cV))
                maxClip = abs(cV);

            ix[8 + i] += cV;
            in_vec[i + order] = ix[8 + i] * (1 << scale);
            state[8 + i] = prediction[8 + i] + in_vec[i + order];
        }
    } while (maxClip >= 2 && nIter < 2);

    // The scale, the predictor index, and the 16 computed outputs are now all
    // 4-bit numbers. Write them out as either 1 + 8 bytes or 1 + 4 bytes depending
    // on whether we are encoding for long or short VADPCM.

    *(out_buf++) = ((scale & 0b1111) << 4) | ((optimalp & 0b1111) << 0);

    switch (frame_size) {
        case 5:
            for (i = 0; i < 16; i += 4)
                *(out_buf++) = ((ix[i + 0] & 0b11) << 6) | ((ix[i + 1] & 0b11) << 4) | ((ix[i + 2] & 0b11) << 2) |
                               ((ix[i + 3] & 0b11) << 0);
            break;
        case 9:
            for (i = 0; i < 16; i += 2)
                *(out_buf++) = ((ix[i + 0] & 0b1111) << 4) | ((ix[i + 1] & 0b1111) << 0);
            break;
    }
}

int
vadpcm_enc(container_data *ctnr, const codec_spec *codec, const enc_dec_opts *opts)
{
    if (ctnr->num_channels != 1)
        error("Only mono input can be converted to vadpcm, was %u-channel", ctnr->num_channels);
    if (ctnr->bit_depth != 16)
        error("Only 16-bit samples can be converted to vadpcm, was %u-bit", ctnr->bit_depth);

    int frame_size = codec->frame_size;

    int32_t state[16];
    memset(state, 0, sizeof(state));

    unsigned int nloops = ctnr->num_loops;
    if (nloops > 1)
        error("Only 1 loop supported");

    unsigned i;
    unsigned j;

    // synthesize ADPCM loop structures, state will be filled later
    ALADPCMloop *aloops = NULL;
    if (nloops != 0) {
        container_loop *loops = ctnr->loops;
        aloops = MALLOC_CHECKED_INFO(nloops * sizeof(ALADPCMloop), "nloops=%u", nloops);

        for (i = 0; i < nloops; i++) {
            aloops[i].start = loops[i].start;
            aloops[i].end = loops[i].end;
            aloops[i].count = loops[i].num;
        }
        ctnr->vadpcm.loop_version = 1;
        ctnr->vadpcm.loops = aloops;
        ctnr->vadpcm.num_loops = nloops;
    }

    ctnr->vadpcm.book_version = 1;
    if (!ctnr->vadpcm.has_book) {
        // If there is no prediction codebook embedded in the input file, design one for the data
        tabledesign_run(&ctnr->vadpcm.book_header.order, &ctnr->vadpcm.book_header.npredictors, &ctnr->vadpcm.book_data,
                        ctnr->data, ctnr->num_samples, &opts->design);
        ctnr->vadpcm.has_book = true;
    }

    uint32_t currentPos = 0;
    int nRepeats;
    uint32_t nBytes = 0;

    int order = ctnr->vadpcm.book_header.order;
    int npredictors = ctnr->vadpcm.book_header.npredictors;

    int32_t ***coef_tbl;
    expand_codebook(ctnr->vadpcm.book_data, &coef_tbl, ctnr->vadpcm.book_header.order,
                    ctnr->vadpcm.book_header.npredictors);

    int16_t in_buf[16];

    uint16_t *indata = ctnr->data;
    uint8_t *outdata = MALLOC_CHECKED_INFO(ctnr->data_size, "data_size=%lu", ctnr->data_size);

    unsigned nFrames = ctnr->num_samples;
    /* printf("Num samples: %u\n", nFrames); */

    for (i = 0; i < nloops; i++) {
        // printf("Process loop: start=%u end=%u count=%u\n", aloops[i].start, aloops[i].end, aloops[i].count);

        // Duplicate the loop until it's longer than the minimum loop length
        nRepeats = 0;
        uint32_t newEnd = aloops[i].end;
        while (newEnd - aloops[i].start < opts->min_loop_length) {
            newEnd += aloops[i].end - aloops[i].start;
            nRepeats++;
        }

        // Encode [current, loop_start)
        while (currentPos <= aloops[i].start) {
            // printf("    pre-loop %u / %u\n", currentPos, aloops[i].start);

            memcpy(in_buf, &indata[currentPos], sizeof(in_buf));
            currentPos += 16;

            vencodeframe(&outdata[nBytes], in_buf, state, coef_tbl, order, npredictors, frame_size);
            nBytes += frame_size;
        }

        // Emplace loop state
        // printf("    wr loop state\n");
        for (j = 0; j < 16; j++) {
            if (state[j] > 0x7FFF)
                state[j] = 0x7FFF;
            if (state[j] < -0x7FFF)
                state[j] = -0x7FFF;
            aloops[i].state[j] = state[j];
        }

        aloops[i].count = -1;

        // Encode the loop for n repeats
        while (nRepeats > 0) {
            // printf("    repeat #%u\n", nRepeats);
            // Encode [loop_start, loop_end]
            while (currentPos + 16 < aloops[i].end) {
                // printf("    loop-repeat %u / %u\n", currentPos, aloops[i].end);

                memcpy(in_buf, &indata[currentPos], sizeof(in_buf));
                currentPos += 16;

                vencodeframe(&outdata[nBytes], in_buf, state, coef_tbl, order, npredictors, frame_size);
                nBytes += frame_size;
            }

            // Handling for when loop_end is halfway through a frame

            uint32_t left = aloops[i].end - currentPos;
            // printf("    rem=%u\n", left);

            memcpy(in_buf, &indata[currentPos], left * sizeof(int16_t));

            currentPos = aloops[i].start * 2;

            memcpy(in_buf + left, &indata[currentPos], (16 - left) * sizeof(int16_t));

            vencodeframe(&outdata[nBytes], in_buf, state, coef_tbl, order, npredictors, frame_size);
            nBytes += frame_size;

            // Return to loop start

            currentPos = aloops[i].start - left + 16;
            nRepeats--;
        }
        aloops[i].end = newEnd;
    }

    // Get frame count, truncate to loop end if desired
    if (nloops > 0 && opts->truncate)
        nFrames = MIN(aloops[nloops - 1].end + 16, nFrames);

    // Encode remaining data

    while (currentPos < nFrames) {
        uint32_t nsam = MIN(nFrames - currentPos, 16);
        // printf("    post-loop: %u / %u (%u)\n", currentPos, nFrames, nsam);

        memcpy(in_buf, &indata[currentPos], sizeof(int16_t) * nsam);
        currentPos += nsam;

        memset(in_buf, 0, (16 - nsam) * sizeof(int16_t));

        vencodeframe(&outdata[nBytes], in_buf, state, coef_tbl, order, npredictors, frame_size);
        nBytes += frame_size;
    }

    // Pad to even number
    if (nBytes % 2 != 0)
        outdata[nBytes++] = 0;

    assert(nBytes <= ctnr->data_size);

    // Write out

    ctnr->num_loops = 0;
    if (ctnr->loops != NULL)
        free(ctnr->loops);
    ctnr->loops = NULL;

    free(ctnr->data);

    ctnr->data = outdata;
    ctnr->data_size = nBytes;
    ctnr->data_type = (frame_size == 5) ? SAMPLE_TYPE_VADPCM_HALF : SAMPLE_TYPE_VADPCM;

    destroy_expanded_codebook(coef_tbl, npredictors);

    return 0;
}

int
vadpcm_dec(container_data *ctnr, UNUSED const codec_spec *codec, const enc_dec_opts *opts)
{
    if (ctnr->num_channels != 1)
        error("vadpcm can only be mono, was %u-channel", ctnr->num_channels);
    if (ctnr->bit_depth != 16)
        error("vadpcm can only be converted to 16-bit samples, was %u-bit", ctnr->bit_depth);

    if (!ctnr->vadpcm.has_book)
        error("Codebook missing from bitstream");

    int16_t order = ctnr->vadpcm.book_header.order;
    int16_t npredictors = ctnr->vadpcm.book_header.npredictors;
    int16_t nloops = ctnr->vadpcm.num_loops;

    if (nloops > 1)
        error("AIFC should only have at most 1 loop");

    ALADPCMloop *aloops = ctnr->vadpcm.loops;

    int32_t ***coef_tbl = NULL;
    expand_codebook(ctnr->vadpcm.book_data, &coef_tbl, order, npredictors);

    int32_t state[16];
    int32_t prescaled[16];
    int32_t in_pos = 0;
    int32_t cur_pos = 0;
    uint32_t nSamples = (ctnr->num_samples + 15) & ~15;

    int frame_size = (ctnr->data_type == SAMPLE_TYPE_VADPCM_HALF) ? 5 : 9;

    uint8_t *input_buf = ctnr->data;

    for (int32_t i = 0; i < order; i++)
        state[15 - i] = 0;

    // Align to (decoded) frame size, the original undecompressed sample may have had only a fraction of a frame at the
    // end but we always decompress to entire frames.
    size_t output_size = nSamples * sizeof(int16_t);
    uint8_t *output_buf = MALLOC_CHECKED_INFO(output_size, "output_size=%lu", output_size);

    int fails = 0;

    for (size_t frame_number = 0; frame_number * 16 < nSamples; frame_number++) {
        uint8_t input[9];
        uint8_t encoded[9];
        int32_t prev_state[16];
        int32_t decoded[16];
        int16_t guess[16];
        int16_t origGuess[16];

        memcpy(prev_state, state, sizeof(state));

        memcpy(input, &input_buf[in_pos], frame_size);
        in_pos += frame_size;

        // Initial decode using the standard decoder
        vdecodeframe(input, prescaled, state, order, coef_tbl, frame_size);

        // Create a guess from that, by clamping to 16 bits
        for (int32_t i = 0; i < 16; i++)
            guess[i] = clamp_bits(state[i], 16);

        // If we aren't going for matching, the initial decode is sufficient and we skip re-encoding and bruteforcing
        if (opts->matching) {
            memcpy(decoded, state, sizeof(state));
            memcpy(origGuess, guess, sizeof(guess));

            // Encode the guess
            my_encodeframe(encoded, guess, prev_state, coef_tbl, order, npredictors, frame_size);

            if (memcmp(input, encoded, frame_size) != 0) {
                // If it doesn't match, bruteforce the matching.

                int32_t guess32[16];
                if (bruteforce(guess32, input, decoded, prescaled, prev_state, coef_tbl, order, npredictors,
                               frame_size)) {
                    for (int i = 0; i < 16; i++) {
                        assert(-0x8000 <= guess32[i] && guess32[i] <= 0x7fff);
                        guess[i] = guess32[i];
                    }

                    my_encodeframe(encoded, guess, prev_state, coef_tbl, order, npredictors, frame_size);
                    assert(memcmp(input, encoded, frame_size) == 0);
                } else {
                    fails++;
                    error("FAIL [%d/%d]\n", cur_pos, nSamples);
                }

                // Bring the match closer to the original decode (not strictly
                // necessary, but it will move us closer to the target on average).
                for (int32_t failures = 0; failures < 50; failures++) {
                    int32_t ind = myrand() % 16;
                    int32_t old = guess[ind];

                    if (old == origGuess[ind])
                        continue;

                    guess[ind] = origGuess[ind];

                    if (myrand() % 2)
                        guess[ind] += (old - origGuess[ind]) / 2;

                    my_encodeframe(encoded, guess, prev_state, coef_tbl, order, npredictors, frame_size);

                    if (memcmp(input, encoded, frame_size) == 0)
                        failures = -1;
                    else
                        guess[ind] = old;
                }
            }
        }

        memcpy(output_buf + cur_pos * 2, guess, sizeof(guess));
        cur_pos += 16;
    }

    if (fails != 0)
        error("Decoding failures: %d\n", fails);

    // Convert VADPCM loop to regular loop, if it exists

    if (nloops != 0) {
        container_loop *loop = MALLOC_CHECKED(sizeof(container_loop));
        *loop = (container_loop){
            .id = 0,
            .type = LOOP_FORWARD,
            .start = aloops[0].start,
            .end = aloops[0].end,
            .fraction = 0,
            .num = aloops[0].count,
        };
        ctnr->num_loops = 1;
        ctnr->loops = loop;

        ctnr->vadpcm.num_loops = 0;
        free(ctnr->vadpcm.loops);
        ctnr->vadpcm.loops = NULL;
    }

    // Assign new data

    free(ctnr->data);
    ctnr->data = output_buf;
    ctnr->data_size = output_size;
    ctnr->data_type = SAMPLE_TYPE_PCM16;
    ctnr->num_samples = nSamples;

    destroy_expanded_codebook(coef_tbl, npredictors);
    return 0;
}
