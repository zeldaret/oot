/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../util.h"
#include "../codec/vadpcm.h"
#include "wav.h"

typedef enum {
    WAVE_TYPE_PCM = 1,
    WAVE_TYPE_FLOAT = 3,
    WAVE_TYPE_ALAW = 6,
    WAVE_TYPE_MULAW = 7,
    WAVE_TYPE_EXTENSIBLE = 0xFFFE,
} wav_type;

typedef struct {
    uint16_t type;
    uint16_t num_channels;
    uint32_t sample_rate;
    uint32_t byte_rate;
    uint16_t block_align;
    uint16_t bit_depth;
} wav_fmt;

typedef struct {
    uint32_t num_samples;
} wav_fact;

typedef struct {
    int8_t base_note;
    int8_t fine_tune;
    int8_t gain;
    int8_t key_low;
    int8_t key_hi;
    int8_t vel_low;
    int8_t vel_hi;
    char _pad[1];
} wav_inst;

typedef struct {
    uint32_t manufacturer;
    uint32_t product;
    uint32_t sample_period;
    uint32_t unity_note;
    char _pad[3];
    uint8_t fine_tune;
    uint32_t format;
    uint32_t offset;
    uint32_t num_sample_loops;
    uint32_t sampler_data;
} wav_smpl;

typedef struct {
    uint32_t cue_point_index;
    uint32_t type;
    uint32_t start;
    uint32_t end;
    uint32_t fraction;
    uint32_t num;
} wav_loop;

static const char *
wav_type_name(int type)
{
    switch (type) {
        case WAVE_TYPE_PCM:
            return "PCM";
        case WAVE_TYPE_FLOAT:
            return "Float";
        case WAVE_TYPE_ALAW:
            return "ALAW";
        case WAVE_TYPE_MULAW:
            return "MULAW";
        case WAVE_TYPE_EXTENSIBLE:
            return "Extensible";
        default:
            return "Unknown (should never be here)";
    }
}

int
wav_read(container_data *out, const char *path, UNUSED bool matching)
{
    bool has_fmt = false;
    bool has_fact = false;
    bool has_data = false;
    bool has_inst = false;
    bool has_smpl = false;
    memset(out, 0, sizeof(*out));

    FILE *in = fopen(path, "rb");
    if (in == NULL)
        error("Failed to open \"%s\" for reading", path);

    char riff[4];
    uint32_t size;
    char wave[4];

    FREAD(in, riff, 4);
    FREAD(in, &size, 4);
    size = le32toh(size);
    FREAD(in, wave, 4);

    if (!CC4_CHECK(riff, "RIFF") || !CC4_CHECK(wave, "WAVE"))
        error("Not a wav file?");

    while (true) {
        bool skipped = false;

        long start = ftell(in);
        if (start > 8 + size) {
            error("Overran file");
        }
        if (start == 8 + size) {
            break;
        }

        char cc4[4];
        uint32_t chunk_size;

        FREAD(in, cc4, 4);
        FREAD(in, &chunk_size, 4);
        chunk_size = le32toh(chunk_size);

        switch (CC4(cc4[0], cc4[1], cc4[2], cc4[3])) {
            case CC4('f', 'm', 't', ' '): {
                wav_fmt fmt;
                FREAD(in, &fmt, sizeof(fmt));
                fmt.type = le16toh(fmt.type);
                fmt.num_channels = le16toh(fmt.num_channels);
                fmt.sample_rate = le32toh(fmt.sample_rate);
                fmt.byte_rate = le32toh(fmt.byte_rate);
                fmt.block_align = le16toh(fmt.block_align);
                fmt.bit_depth = le16toh(fmt.bit_depth);

                if (fmt.bit_depth != 16)
                    error("Wav input format should be 16-bit PCM, was %u-bit", fmt.bit_depth);

                switch (fmt.type) {
                    case WAVE_TYPE_PCM:
                        out->data_type = SAMPLE_TYPE_PCM16;
                        break;

                    case WAVE_TYPE_FLOAT:
                    case WAVE_TYPE_MULAW:
                    case WAVE_TYPE_ALAW:
                    case WAVE_TYPE_EXTENSIBLE:
                        error("Unhandled sample type: %s, should be PCM", wav_type_name(fmt.type));
                        break;

                    default:
                        error("Unrecognized sample type: %d, should be PCM", fmt.type);
                        break;
                }

                out->num_channels = fmt.num_channels;
                out->sample_rate = fmt.sample_rate;
                out->byte_rate = fmt.byte_rate;
                out->block_align = fmt.block_align;
                out->bit_depth = fmt.bit_depth;

                has_fmt = true;
            } break;

            case CC4('f', 'a', 'c', 't'): {
                wav_fact fact;
                FREAD(in, &fact, sizeof(fact));
                fact.num_samples = le32toh(fact.num_samples);

                out->num_samples = fact.num_samples;

                has_fact = true;
            } break;

            case CC4('d', 'a', 't', 'a'): {
                void *data = MALLOC_CHECKED_INFO(chunk_size, "data size = %u", chunk_size);
                FREAD(in, data, chunk_size);

                out->data = data;
                out->data_size = chunk_size;

                has_data = true;
            } break;

            case CC4('i', 'n', 's', 't'): {
                wav_inst inst;
                FREAD(in, &inst, sizeof(inst));

                out->base_note = inst.base_note;
                out->fine_tune = inst.fine_tune;
                out->gain = inst.gain;
                out->key_low = inst.key_low;
                out->key_hi = inst.key_hi;
                out->vel_low = inst.vel_low;
                out->vel_hi = inst.vel_hi;

                has_inst = true;
            } break;

            case CC4('s', 'm', 'p', 'l'): {
                wav_smpl smpl;
                FREAD(in, &smpl, sizeof(smpl));
                smpl.manufacturer = le32toh(smpl.manufacturer);
                smpl.product = le32toh(smpl.product);
                smpl.sample_period = le32toh(smpl.sample_period);
                smpl.unity_note = le32toh(smpl.unity_note);
                smpl.format = le32toh(smpl.format);
                smpl.offset = le32toh(smpl.offset);
                smpl.num_sample_loops = le32toh(smpl.num_sample_loops);
                smpl.sampler_data = le32toh(smpl.sampler_data);

                out->num_loops = smpl.num_sample_loops;
                if (out->num_loops != 0) {
                    out->loops =
                        MALLOC_CHECKED_INFO(out->num_loops * sizeof(container_loop), "num_loops=%u", out->num_loops);

                    for (size_t i = 0; i < out->num_loops; i++) {
                        wav_loop loop;
                        FREAD(in, &loop, sizeof(loop));
                        loop.cue_point_index = le32toh(loop.cue_point_index);
                        loop.type = le32toh(loop.type);
                        loop.start = le32toh(loop.start);
                        loop.end = le32toh(loop.end);
                        loop.fraction = le32toh(loop.fraction);
                        loop.num = le32toh(loop.num);

                        loop_type type;
                        switch (loop.type) {
                            case 0:
                                type = LOOP_FORWARD;
                                break;

                            case 1:
                                type = LOOP_FORWARD_BACKWARD;
                                break;

                            case 2:
                                type = LOOP_BACKWARD;
                                break;

                            default:
                                error("Unrecognized loop type in wav");
                        }

                        out->loops[i].id = i;
                        out->loops[i].type = type;
                        out->loops[i].start = loop.start;
                        out->loops[i].end = loop.end;
                        out->loops[i].fraction = loop.fraction;
                        out->loops[i].num = loop.num;
                    }
                }
                has_smpl = true;
            } break;

            case CC4('z', 'z', 'b', 'k'): {
                char vadpcmcodes[12];
                uint16_t version;
                uint16_t order;
                uint16_t npredictors;

                FREAD(in, vadpcmcodes, sizeof(vadpcmcodes));
                FREAD(in, &version, sizeof(version));
                version = le16toh(version);
                FREAD(in, &order, sizeof(order));
                order = le16toh(order);
                FREAD(in, &npredictors, sizeof(npredictors));
                npredictors = le16toh(npredictors);

                size_t book_size = VADPCM_BOOK_SIZE(order, npredictors);
                size_t book_data_size = sizeof(int16_t) * book_size;
                int16_t *book_data =
                    MALLOC_CHECKED_INFO(book_data_size, "order=%u, npredictors=%u", order, npredictors);
                FREAD(in, book_data, book_data_size);

                out->vadpcm.book_header.order = order;
                out->vadpcm.book_header.npredictors = npredictors;
                out->vadpcm.book_data = book_data;

                for (size_t i = 0; i < book_size; i++) {
                    out->vadpcm.book_data[i] = le16toh(out->vadpcm.book_data[i]);
                }

                out->vadpcm.has_book = true;
            } break;

            case CC4('z', 'z', 'l', 'p'): {
                uint16_t version;
                uint16_t nloops;

                FREAD(in, &version, sizeof(version));
                version = le16toh(version);
                FREAD(in, &nloops, sizeof(nloops));
                nloops = le16toh(nloops);

                if (nloops != 0)
                    out->vadpcm.loops = MALLOC_CHECKED_INFO(nloops * sizeof(ALADPCMloop), "nloops=%u", nloops);

                for (size_t i = 0; i < nloops; i++) {
                    uint32_t loop_start;
                    uint32_t loop_end;
                    uint32_t loop_num;

                    FREAD(in, &loop_start, sizeof(loop_start));
                    loop_start = le32toh(loop_start);
                    FREAD(in, &loop_end, sizeof(loop_end));
                    loop_end = le32toh(loop_end);
                    FREAD(in, &loop_num, sizeof(loop_num));
                    loop_num = le32toh(loop_num);

                    out->vadpcm.loops[i].start = loop_start;
                    out->vadpcm.loops[i].end = loop_end;
                    out->vadpcm.loops[i].count = loop_num;

                    if (out->vadpcm.loops[i].count != 0) {
                        FREAD(in, out->vadpcm.loops[i].state, sizeof(out->vadpcm.loops[i].state));

                        for (size_t j = 0; j < ARRAY_COUNT(out->vadpcm.loops[i].state); j++) {
                            out->vadpcm.loops[i].state[j] = le16toh(out->vadpcm.loops[i].state[j]);
                        }
                    }
                }
            } break;

            default:
                warning("Skipping unknown wav chunk: \"%c%c%c%c\"", cc4[0], cc4[1], cc4[2], cc4[3]);
                skipped = true;
                break;
        }

        long read_size = ftell(in) - start - 8;

        if (read_size > chunk_size)
            error("overran chunk");
        else if (!skipped && read_size < chunk_size)
            warning("did not read entire %*s chunk: %lu vs %u", 4, cc4, read_size, chunk_size);

        fseek(in, start + 8 + chunk_size, SEEK_SET);
    }

    if (!has_fmt)
        error("wav has no fmt chunk");
    if (!has_data)
        error("wav has no data chunk");

    if (!has_fact) {
        out->num_samples = out->data_size / (out->bit_depth / 8);
    }

    if (!has_inst) {
        out->base_note = 60; // C4
        out->fine_tune = 0;
        out->gain = 0;
        out->key_low = 0;
        out->key_hi = 0;
        out->vel_low = 0;
        out->vel_hi = 0;
    }

    if (!has_smpl) {
        out->num_loops = 0;
        out->loops = NULL;
    }

    if (out->data_type == SAMPLE_TYPE_PCM16) {
        if (out->data_size % 2 != 0)
            error("wav data size is not a multiple of 2 despite being pcm16-formatted?");

        for (size_t i = 0; i < out->data_size / 2; i++)
            ((uint16_t *)(out->data))[i] = le16toh(((uint16_t *)(out->data))[i]);
    }

    fclose(in);
    return 0;
}

int
wav_write(container_data *in, const char *path, bool matching)
{
    long chunk_start;

    FILE *out = fopen(path, "wb");
    FWRITE(out, "RIFF\0\0\0\0WAVE", 12);

    uint16_t fmt_type;
    switch (in->data_type) {
        case SAMPLE_TYPE_PCM16:
            fmt_type = WAVE_TYPE_PCM;
            break;

        default:
            error("Unrecognized sample type for wav output");
            break;
    }

    wav_fmt fmt = {
        .type = htole16(fmt_type),
        .num_channels = htole16(in->num_channels),
        .sample_rate = htole32(in->sample_rate),
        .byte_rate = htole32(in->sample_rate * (in->bit_depth / 8)),
        .block_align = htole16(in->num_channels * (in->bit_depth / 8)),
        .bit_depth = htole16(in->bit_depth),
    };
    CHUNK_BEGIN(out, "fmt ", &chunk_start);
    CHUNK_WRITE(out, &fmt);
    CHUNK_END(out, chunk_start, htole32);

    wav_fact fact = {
        .num_samples = htole32(in->num_samples),
    };
    CHUNK_BEGIN(out, "fact", &chunk_start);
    CHUNK_WRITE(out, &fact);
    CHUNK_END(out, chunk_start, htole32);

    if (in->data_type == SAMPLE_TYPE_PCM16) {
        assert(in->bit_depth == 16);
        assert(in->data_size % 2 == 0);

        for (size_t i = 0; i < in->data_size / 2; i++) {
            ((uint16_t *)in->data)[i] = htole16(((uint16_t *)in->data)[i]);
        }
    }

    CHUNK_BEGIN(out, "data", &chunk_start);
    CHUNK_WRITE_RAW(out, in->data, in->data_size);
    CHUNK_END(out, chunk_start, htole32);

    wav_inst inst = {
        .base_note = in->base_note,
        .fine_tune = in->fine_tune,
        .gain = in->gain,
        .key_low = in->key_low,
        .key_hi = in->key_hi,
        .vel_low = in->vel_low,
        .vel_hi = in->vel_hi,
        ._pad = { 0 },
    };
    CHUNK_BEGIN(out, "inst", &chunk_start);
    CHUNK_WRITE(out, &inst);
    CHUNK_END(out, chunk_start, htole32);

    wav_smpl smpl = {
        .manufacturer = 0,
        .product = 0,
        .sample_period = 0,
        .unity_note = 0,
        ._pad = {0, 0, 0},
        .fine_tune = 0,
        .format = 0,
        .offset = 0,
        .num_sample_loops = htole32(in->num_loops),
        .sampler_data = 0,
    };
    CHUNK_BEGIN(out, "smpl", &chunk_start);
    CHUNK_WRITE(out, &smpl);
    for (size_t i = 0; i < in->num_loops; i++) {
        uint32_t wav_loop_type;
        switch (in->loops[i].type) {
            case LOOP_FORWARD:
                wav_loop_type = 0;
                break;

            case LOOP_FORWARD_BACKWARD:
                wav_loop_type = 1;
                break;

            case LOOP_BACKWARD:
                wav_loop_type = 2;
                break;

            default:
                error("Unrecognized loop type for wav output");
        }

        wav_loop loop = {
            .cue_point_index = 0,
            .type = htole32(wav_loop_type),
            .start = htole32(in->loops[i].start),
            .end = htole32(in->loops[i].end),
            .fraction = htole32(in->loops[i].fraction),
            .num = htole32(in->loops[i].num),
        };
        CHUNK_WRITE(out, &loop);
    }
    CHUNK_END(out, chunk_start, htole32);

    // Books generally don't match on round-trip, if matching we should write a vadpcm book chunk to the uncompressed
    // output so it may be read back when re-encoding.
    if (in->vadpcm.has_book && matching) {
        uint32_t book_size = VADPCM_BOOK_SIZE(in->vadpcm.book_header.order, in->vadpcm.book_header.npredictors);

        uint16_t version = htole16(in->vadpcm.book_version);
        uint16_t order = htole16(in->vadpcm.book_header.order);
        uint16_t npredictors = htole16(in->vadpcm.book_header.npredictors);

        int16_t book_state[book_size];
        for (size_t i = 0; i < book_size; i++) {
            book_state[i] = htole16(in->vadpcm.book_data[i]);
        }

        CHUNK_BEGIN(out, "zzbk", &chunk_start);
        CHUNK_WRITE_RAW(out, "VADPCMCODES", sizeof("VADPCMCODES"));
        CHUNK_WRITE(out, &version);
        CHUNK_WRITE(out, &order);
        CHUNK_WRITE(out, &npredictors);
        CHUNK_WRITE_RAW(out, book_state, sizeof(int16_t) * book_size);
        CHUNK_END(out, chunk_start, htole32);
    }

    // Loop states match on round-trip while books don't, so don't write a vadpcm loop chunk if the output format
    // is uncompressed.
    if (in->vadpcm.num_loops != 0 && in->data_type != SAMPLE_TYPE_PCM16) {
        CHUNK_BEGIN(out, "zzlp", &chunk_start);

        for (size_t i = 0; i < in->vadpcm.num_loops; i++) {
            uint32_t loop_start = htole32(in->vadpcm.loops[i].start);
            uint32_t loop_end = htole32(in->vadpcm.loops[i].end);
            uint32_t loop_count = htole32(in->vadpcm.loops[i].count);

            int16_t loop_state[16];
            for (size_t j = 0; j < ARRAY_COUNT(in->vadpcm.loops[i].state); j++) {
                loop_state[j] = htole16(in->vadpcm.loops[i].state[j]);
            }

            CHUNK_WRITE(out, &loop_start);
            CHUNK_WRITE(out, &loop_end);
            CHUNK_WRITE(out, &loop_count);
            CHUNK_WRITE_RAW(out, loop_state, sizeof(loop_state));
        }

        CHUNK_END(out, chunk_start, htole32);
    }

    uint32_t size = htole32(ftell(out) - 8);
    fseek(out, 4, SEEK_SET);
    fwrite(&size, 4, 1, out);
    fclose(out);

    return 0;
}
