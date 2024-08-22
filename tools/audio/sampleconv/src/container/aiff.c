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
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "../util.h"
#include "../codec/vadpcm.h"
#include "aiff.h"

typedef struct {
    int16_t numChannels;
    uint16_t numFramesH;
    uint16_t numFramesL;
    int16_t sampleSize;
    uint8_t sampleRate[10]; // 80-bit float
    // Followed by compression type + compression name pstring
} aiff_COMM;

typedef struct {
    uint16_t nMarkers;
} aiff_MARK;

typedef struct {
    uint16_t MarkerID;
    uint16_t positionH;
    uint16_t positionL;
} Marker;

typedef enum {
    LOOP_PLAYMODE_NONE = 0,
    LOOP_PLAYMODE_FWD = 1,
    LOOP_PLAYMODE_FWD_BWD = 2
} aiff_loop_playmode;

typedef struct {
    int16_t playMode; // aiff_loop_playmode
    // Marker IDs
    int16_t beginLoop;
    int16_t endLoop;
} Loop;

typedef struct {
    int8_t baseNote;
    int8_t detune;
    int8_t lowNote;
    int8_t highNote;
    int8_t lowVelocity;
    int8_t highVelocity;
    int16_t gain;
    Loop sustainLoop;
    Loop releaseLoop;
} aiff_INST;

typedef struct {
    int32_t offset;
    int32_t blockSize;
} aiff_SSND;

static void
read_pstring(FILE *f, char *out)
{
    unsigned char len;

    // read string length
    FREAD(f, &len, sizeof(len));

    // read string and null-terminate it
    FREAD(f, out, len);
    out[len] = '\0';

    // pad to 2-byte boundary
    if (!(len & 1))
        FREAD(f, &len, 1);
}

static char *
read_pstring_alloc(FILE *f)
{
    unsigned char len;

    // read string length
    FREAD(f, &len, sizeof(len));

    // alloc
    char *out = MALLOC_CHECKED_INFO(len + 1, "len=%u", len);

    // read string and null-terminate it
    FREAD(f, out, len);
    out[len] = '\0';

    // pad to 2-byte boundary
    if (!(len & 1))
        FREAD(f, &len, 1);

    return out;
}

static void
write_pstring(FILE *f, const char *in)
{
    unsigned char zr = 0;
    size_t inlen = strlen(in);

    if (inlen > 255)
        error("Invalid pstring length.");

    unsigned char len = inlen;

    CHUNK_WRITE(f, &len);
    CHUNK_WRITE_RAW(f, in, len);
    if (!(len & 1))
        CHUNK_WRITE(f, &zr);
}

static_assert(sizeof(double) == sizeof(uint64_t), "Double is assumed to be 64-bit");

#define F64_GET_SGN(bits)    (((bits) >> 63) & 1)               //  1-bit
#define F64_GET_EXP(bits)    ((((bits) >> 52) & 0x7FF) - 0x3FF) // 15-bit
#define F64_GET_MANT_H(bits) (((bits) >> 32) & 0xFFFFF)         // 20-bit
#define F64_GET_MANT_L(bits) ((bits)&0xFFFFFFFF)                // 32-bit

static void
f64_to_f80(double f64, uint8_t *f80)
{
    union {
        uint32_t w[3];
        uint8_t b[12];
    } f80tmp;

    // get f64 bits

    uint64_t f64_bits = *(uint64_t *)&f64;

    int f64_sgn = F64_GET_SGN(f64_bits);
    int f64_exponent = F64_GET_EXP(f64_bits);
    uint32_t f64_mantissa_hi = F64_GET_MANT_H(f64_bits);
    uint32_t f64_mantissa_lo = F64_GET_MANT_L(f64_bits);

    // build f80 words

    f80tmp.w[0] = (f64_sgn << 15) | (f64_exponent + 0x3FFF);
    f80tmp.w[1] = (1 << 31) | (f64_mantissa_hi << 11) | (f64_mantissa_lo >> 21);
    f80tmp.w[2] = f64_mantissa_lo << 11;

    // byteswap to BE

    f80tmp.w[0] = htobe32(f80tmp.w[0]);
    f80tmp.w[1] = htobe32(f80tmp.w[1]);
    f80tmp.w[2] = htobe32(f80tmp.w[2]);

    // write bytes

    for (size_t i = 0; i < 10; i++)
        f80[i] = f80tmp.b[i + 2];
}

static void
f80_to_f64(double *f64, uint8_t *f80)
{
    union {
        uint32_t w[3];
        uint8_t b[12];
    } f80tmp;

    // read bytes

    f80tmp.b[0] = f80tmp.b[1] = 0;
    for (size_t i = 0; i < 10; i++)
        f80tmp.b[i + 2] = f80[i];

    // byteswap from BE

    f80tmp.w[0] = be32toh(f80tmp.w[0]);
    f80tmp.w[1] = be32toh(f80tmp.w[1]);
    f80tmp.w[2] = be32toh(f80tmp.w[2]);

    // get f64 parts

    int f64_sgn = (f80tmp.w[0] >> 15) & 1;
    int f64_exponent = (f80tmp.w[0] & 0x7FFF) - 0x3FFF;
    uint32_t f64_mantissa_hi = (f80tmp.w[1] >> 11) & 0xFFFFF;
    uint32_t f64_mantissa_lo = ((f80tmp.w[1] & 0x7FF) << 21) | (f80tmp.w[2] >> 11);

    // build bitwise f64

    uint64_t f64_bits = ((uint64_t)f64_sgn << 63) | ((((uint64_t)f64_exponent + 0x3FF) & 0x7FF) << 52) |
                        ((uint64_t)f64_mantissa_hi << 32) | ((uint64_t)f64_mantissa_lo);

    // write double

    *f64 = *(double *)&f64_bits;
}

int
aiff_aifc_common_read(container_data *out, FILE *in, UNUSED bool matching, uint32_t size)
{
    bool has_comm = false;
    bool has_inst = false;
    bool has_ssnd = false;

    size_t num_markers = 0;
    container_marker *markers = NULL;

    memset(out, 0, sizeof(*out));

    while (true) {
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
        chunk_size = be32toh(chunk_size);

        chunk_size++;
        chunk_size &= ~1;

        switch (CC4(cc4[0], cc4[1], cc4[2], cc4[3])) {
            case CC4('C', 'O', 'M', 'M'): {
                aiff_COMM comm;
                FREAD(in, &comm, sizeof(comm));
                comm.numChannels = be16toh(comm.numChannels);
                comm.numFramesH = be16toh(comm.numFramesH);
                comm.numFramesL = be16toh(comm.numFramesL);
                comm.sampleSize = be16toh(comm.sampleSize);

                uint32_t num_samples = (comm.numFramesH << 16) | comm.numFramesL;
                double sample_rate;
                f80_to_f64(&sample_rate, comm.sampleRate);

                uint32_t comp_type = CC4('N', 'O', 'N', 'E');
                if (chunk_size > sizeof(aiff_COMM)) {
                    uint32_t compressionType;
                    FREAD(in, &compressionType, sizeof(compressionType));
                    comp_type = be32toh(compressionType);
                }

                out->num_channels = comm.numChannels;
                out->sample_rate = sample_rate;
                out->bit_depth = comm.sampleSize;
                out->num_samples = num_samples;

                switch (comp_type) {
                    case CC4('N', 'O', 'N', 'E'):
                        out->data_type = SAMPLE_TYPE_PCM16;
                        break;

                    case CC4('H', 'P', 'C', 'M'):
                        out->data_type = SAMPLE_TYPE_PCM8;
                        break;

                    case CC4('A', 'D', 'P', '9'):
                        out->data_type = SAMPLE_TYPE_VADPCM;
                        break;

                    case CC4('A', 'D', 'P', '5'):
                        out->data_type = SAMPLE_TYPE_VADPCM_HALF;
                        break;

                    default:
                        error("Unrecognized aiff/aifc compression type");
                        break;
                }

                if (chunk_size > sizeof(aiff_COMM) + 4) {
                    char compression_name[257];
                    read_pstring(in, compression_name);
                }
                has_comm = true;
            } break;

            case CC4('I', 'N', 'S', 'T'): {
                aiff_INST inst;
                FREAD(in, &inst, sizeof(inst));
                inst.gain = be16toh(inst.gain);
                inst.sustainLoop.playMode = be16toh(inst.sustainLoop.playMode);
                inst.sustainLoop.beginLoop = be16toh(inst.sustainLoop.beginLoop);
                inst.sustainLoop.endLoop = be16toh(inst.sustainLoop.endLoop);
                inst.releaseLoop.playMode = be16toh(inst.releaseLoop.playMode);
                inst.releaseLoop.beginLoop = be16toh(inst.releaseLoop.beginLoop);
                inst.releaseLoop.endLoop = be16toh(inst.releaseLoop.endLoop);

                out->base_note = inst.baseNote;
                out->fine_tune = inst.detune;
                out->key_low = inst.lowNote;
                out->key_hi = inst.highNote;
                out->vel_low = inst.lowVelocity;
                out->vel_hi = inst.highVelocity;
                out->gain = inst.gain;

                size_t nloops = 0;
                nloops += inst.sustainLoop.playMode != LOOP_PLAYMODE_NONE;
                nloops += inst.releaseLoop.playMode != LOOP_PLAYMODE_NONE;

                if (nloops != 0) {
                    out->loops = MALLOC_CHECKED_INFO(nloops * sizeof(container_loop), "nloops=%lu", nloops);

                    size_t i = 0;

                    if (inst.sustainLoop.playMode != LOOP_PLAYMODE_NONE) {
                        out->loops[i].id = 0;

                        switch (inst.sustainLoop.playMode) {
                            case LOOP_PLAYMODE_FWD:
                                out->loops[i].type = LOOP_FORWARD;
                                break;

                            case LOOP_PLAYMODE_FWD_BWD:
                                out->loops[i].type = LOOP_FORWARD_BACKWARD;
                                break;

                            default:
                                error("Unrecognized PlayMode in sustainLoop");
                                break;
                        }
                        out->loops[i].start = inst.sustainLoop.beginLoop;
                        out->loops[i].end = inst.sustainLoop.endLoop;
                        out->loops[i].num = 0xFFFFFFFF;
                        out->loops[i].fraction = 0;

                        i++;
                    }

                    if (inst.releaseLoop.playMode != LOOP_PLAYMODE_NONE) {
                        out->loops[i].id = 1;

                        switch (inst.sustainLoop.playMode) {
                            case LOOP_PLAYMODE_FWD:
                                out->loops[i].type = LOOP_FORWARD;
                                break;

                            case LOOP_PLAYMODE_FWD_BWD:
                                out->loops[i].type = LOOP_FORWARD_BACKWARD;
                                break;

                            default:
                                error("Unrecognized PlayMode in releaseLoop");
                                break;
                        }
                        out->loops[i].start = inst.releaseLoop.beginLoop;
                        out->loops[i].end = inst.releaseLoop.endLoop;
                        out->loops[i].num = 0xFFFFFFFF;
                        out->loops[i].fraction = 0;

                        i++;
                    }
                }

                has_inst = true;
            } break;

            case CC4('M', 'A', 'R', 'K'): {
                aiff_MARK mark;
                FREAD(in, &mark, sizeof(mark));
                mark.nMarkers = be16toh(mark.nMarkers);

                num_markers = mark.nMarkers;
                markers = MALLOC_CHECKED_INFO(num_markers * sizeof(container_marker), "num_markers=%lu", num_markers);

                for (size_t i = 0; i < num_markers; i++) {
                    Marker marker;
                    char *name;
                    FREAD(in, &marker, sizeof(marker));
                    name = read_pstring_alloc(in);

                    markers[i].id = be16toh(marker.MarkerID);
                    markers[i].frame_number = (be16toh(marker.positionH) << 16) | be16toh(marker.positionL);
                    markers[i].name = name;
                }
            } break;

            case CC4('A', 'P', 'P', 'L'): {
                char subcc4[4];

                FREAD(in, subcc4, 4);

                switch (CC4(subcc4[0], subcc4[1], subcc4[2], subcc4[3])) {
                    case CC4('s', 't', 'o', 'c'): {
                        char chunk_name[257];
                        read_pstring(in, chunk_name);

                        if (strequ(chunk_name, "VADPCMCODES")) {
                            int16_t version;
                            uint16_t order;
                            uint16_t npredictors;

                            FREAD(in, &version, sizeof(version));
                            version = be16toh(version);
                            FREAD(in, &order, sizeof(order));
                            order = be16toh(order);
                            FREAD(in, &npredictors, sizeof(npredictors));
                            npredictors = be16toh(npredictors);

                            size_t book_size_bytes = VADPCM_BOOK_SIZE_BYTES(order, npredictors);
                            int16_t *book_state =
                                MALLOC_CHECKED_INFO(book_size_bytes, "order=%u, npredictors=%u", order, npredictors);
                            FREAD(in, book_state, book_size_bytes);

                            out->vadpcm.book_version = version;
                            out->vadpcm.book_header.order = order;
                            out->vadpcm.book_header.npredictors = npredictors;
                            out->vadpcm.book_data = book_state;

                            for (size_t i = 0; i < VADPCM_BOOK_SIZE(order, npredictors); i++)
                                out->vadpcm.book_data[i] = be16toh(out->vadpcm.book_data[i]);

                            out->vadpcm.has_book = true;
                        } else if (strequ(chunk_name, "VADPCMLOOPS")) {
                            int16_t version;
                            int16_t nloops;

                            FREAD(in, &version, sizeof(version));
                            version = be16toh(version);
                            FREAD(in, &nloops, sizeof(nloops));
                            nloops = be16toh(nloops);

                            out->vadpcm.loop_version = version;
                            out->vadpcm.num_loops = nloops;

                            if (out->vadpcm.num_loops)
                                out->vadpcm.loops = MALLOC_CHECKED_INFO(out->vadpcm.num_loops * sizeof(ALADPCMloop),
                                                                        "num_loops=%u", out->vadpcm.num_loops);

                            for (size_t i = 0; i < out->vadpcm.num_loops; i++) {
                                FREAD(in, &out->vadpcm.loops[i], sizeof(ALADPCMloop));
                                out->vadpcm.loops[i].start = be32toh(out->vadpcm.loops[i].start);
                                out->vadpcm.loops[i].end = be32toh(out->vadpcm.loops[i].end);
                                out->vadpcm.loops[i].count = be32toh(out->vadpcm.loops[i].count);
                                for (size_t j = 0; j < ARRAY_COUNT(out->vadpcm.loops[i].state); j++)
                                    out->vadpcm.loops[i].state[j] = be16toh(out->vadpcm.loops[i].state[j]);
                            }
                        } else {
                            warning("Skipping unknown APPL::stoc subchunk: \"%s\"", chunk_name);
                        }
                    } break;

                    default:
                        warning("Skipping unknown APPL subchunk: \"%c%c%c%c\"", subcc4[0], subcc4[1], subcc4[2],
                                subcc4[3]);
                        break;
                }
            } break;

            case CC4('S', 'S', 'N', 'D'): {
                aiff_SSND ssnd;
                FREAD(in, &ssnd, sizeof(ssnd));
                ssnd.offset = be32toh(ssnd.offset);
                ssnd.blockSize = be32toh(ssnd.blockSize);

                size_t data_size = chunk_size - sizeof(ssnd);

                void *data = MALLOC_CHECKED_INFO(data_size, "SSND chunk size = %lu", data_size);
                FREAD(in, data, data_size);

                if (ssnd.offset != 0 || ssnd.blockSize != 0)
                    error("Bad SSND chunk in aiff/aifc, offset/blockSize != 0");

                out->data = data;
                out->data_size = data_size;

                has_ssnd = true;
            } break;

            default:
                warning("Skipping unknown aiff chunk: \"%c%c%c%c\"", cc4[0], cc4[1], cc4[2], cc4[3]);
                break;
        }

        long read_size = ftell(in) - start - 8;

        if (read_size > chunk_size)
            error("overran chunk: %lu vs %u\n", read_size, chunk_size);
        else if (read_size < chunk_size)
            warning("did not read entire %.*s chunk: %lu vs %u", 4, cc4, read_size, chunk_size);

        fseek(in, start + 8 + chunk_size, SEEK_SET);
    }

    if (!has_comm)
        error("aiff/aifc has no COMM chunk");
    if (!has_inst)
        error("aiff/aifc has no INST chunk");
    if (!has_ssnd)
        error("aiff/aifc has no SSND chunk");

    if (out->data_type == SAMPLE_TYPE_PCM16) {
        assert(out->data_size % 2 == 0);
        assert(out->bit_depth == 16);

        for (size_t i = 0; i < out->data_size / 2; i++)
            ((uint16_t *)(out->data))[i] = be16toh(((uint16_t *)(out->data))[i]);
    }

    for (size_t i = 0; i < out->num_loops; i++) {
        container_marker *marker;

        marker = NULL;
        for (size_t j = 0; j < num_markers; j++) {
            if (markers[j].id == out->loops[i].start) {
                marker = &markers[j];
                break;
            }
        }
        if (marker == NULL)
            error("AIFF/C loop references non-existent marker");

        out->loops[i].start = marker->frame_number;

        marker = NULL;
        for (size_t j = 0; j < num_markers; j++) {
            if (markers[j].id == out->loops[i].end) {
                marker = &markers[j];
                break;
            }
        }
        if (marker == NULL)
            error("AIFF/C loop references non-existent marker");

        out->loops[i].end = marker->frame_number;
    }

    fclose(in);
    return 0;
}

int
aifc_read(container_data *out, const char *path, bool matching)
{
    FILE *in = fopen(path, "rb");
    if (in == NULL)
        error("Failed to open \"%s\" for reading", path);

    char form[4];
    uint32_t size;
    char aifc[4];

    FREAD(in, form, 4);
    FREAD(in, &size, 4);
    size = be32toh(size);
    FREAD(in, aifc, 4);

    if (!CC4_CHECK(form, "FORM") || !CC4_CHECK(aifc, "AIFC"))
        error("Not an aifc file?");

    return aiff_aifc_common_read(out, in, matching, size);
}

int
aiff_read(container_data *out, const char *path, bool matching)
{
    FILE *in = fopen(path, "rb");
    if (in == NULL)
        error("Failed to open \"%s\" for reading", path);

    char form[4];
    uint32_t size;
    char aiff[4];

    FREAD(in, form, 4);
    FREAD(in, &size, 4);
    size = be32toh(size);
    FREAD(in, aiff, 4);

    if (!CC4_CHECK(form, "FORM") || !CC4_CHECK(aiff, "AIFF"))
        error("Not an aiff file?");

    return aiff_aifc_common_read(out, in, matching, size);
}

static int
aiff_aifc_common_write(container_data *in, const char *path, bool aifc, bool matching)
{
    FILE *out = fopen(path, "wb");
    if (out == NULL)
        error("Failed to open %s for writing\n", path);

    const char *aifc_head = "FORM\0\0\0\0AIFC";
    const char *aiff_head = "FORM\0\0\0\0AIFF";
    FWRITE(out, (aifc) ? aifc_head : aiff_head, 12);

    long chunk_start;

    uint32_t compression_type;
    const char *compression_name;

    switch (in->data_type) {
        case SAMPLE_TYPE_PCM16:
            compression_type = CC4('N', 'O', 'N', 'E');
            compression_name = NULL;
            break;

        case SAMPLE_TYPE_PCM8:
            compression_type = CC4('H', 'P', 'C', 'M');
            compression_name = "Half-frame PCM";
            break;

        case SAMPLE_TYPE_VADPCM:
            compression_type = CC4('A', 'D', 'P', '9');
            compression_name = "Nintendo/SGI VADPCM 9-bytes/frame";
            break;

        case SAMPLE_TYPE_VADPCM_HALF:
            compression_type = CC4('A', 'D', 'P', '5');
            compression_name = "Nintendo/SGI VADPCM 5-bytes/frame";
            break;

        default:
            error("Unhandled data type for aiff/aifc container");
            break;
    }

    if (compression_type != CC4('N', 'O', 'N', 'E') && !aifc) {
        error("Compressed data types must use aifc output");
    }

    aiff_COMM comm = {
        .numChannels = htobe16(in->num_channels),
        .numFramesH = htobe16(in->num_samples >> 16),
        .numFramesL = htobe16(in->num_samples),
        .sampleSize = htobe16(in->bit_depth),
        .sampleRate = { 0 },
    };
    f64_to_f80(in->sample_rate, comm.sampleRate);
    CHUNK_BEGIN(out, "COMM", &chunk_start);
    CHUNK_WRITE(out, &comm);
    if (compression_name != NULL) {
        uint32_t compressionType = htobe32(compression_type);
        CHUNK_WRITE(out, &compressionType);
        write_pstring(out, compression_name);
    }
    CHUNK_END(out, chunk_start, htobe32);

    if (in->num_loops > 2)
        error("Only up to two loops are supported for AIFF/C");

    size_t num_markers = 0;
    container_marker markers[4];
    static char *marker_names[4] = {
        "start",
        "end",
        "start",
        "end",
    };
    Loop sustainLoop = { 0 };
    Loop releaseLoop = { 0 };

    for (size_t i = 0; i < in->num_loops; i++) {
        Loop *target;

        switch (in->loops[i].id) {
            case 0:
                target = &sustainLoop;
                break;

            case 1:
                target = &releaseLoop;
                break;

            default:
                continue;
        }

        unsigned type;
        switch (in->loops[i].type) {
            case LOOP_FORWARD:
                type = LOOP_PLAYMODE_FWD;
                break;

            case LOOP_FORWARD_BACKWARD:
                type = LOOP_PLAYMODE_FWD_BWD;
                break;

            default:
                error("Unsupported loop type in aiff/aifc");
                break;
        }

        target->playMode = htobe16(type);

        markers[num_markers].id = num_markers + 1;
        markers[num_markers].name = marker_names[num_markers];
        markers[num_markers].frame_number = in->loops[i].start;
        target->beginLoop = htobe16(1 + num_markers++);

        markers[num_markers].id = num_markers + 1;
        markers[num_markers].name = marker_names[num_markers];
        markers[num_markers].frame_number = in->loops[i].end;
        target->endLoop = htobe16(1 + num_markers++);
    }

    if (num_markers != 0) {
        CHUNK_BEGIN(out, "MARK", &chunk_start);

        aiff_MARK mark = {
            .nMarkers = htobe16(num_markers),
        };
        CHUNK_WRITE(out, &mark);

        for (size_t i = 0; i < num_markers; i++) {
            Marker marker = {
                .MarkerID = htobe16(markers[i].id),
                .positionH = htobe16(markers[i].frame_number >> 16),
                .positionL = htobe16(markers[i].frame_number),
            };
            CHUNK_WRITE(out, &marker);
            write_pstring(out, markers[i].name);
        }

        CHUNK_END(out, chunk_start, htobe32);
    }

    aiff_INST inst = {
        .baseNote = in->base_note,
        .detune = in->fine_tune,
        .lowNote = in->key_low,
        .highNote = in->key_hi,
        .lowVelocity = in->vel_low,
        .highVelocity = in->vel_hi,
        .gain = htobe16(in->gain),
        .sustainLoop = sustainLoop,
        .releaseLoop = releaseLoop,
    };
    CHUNK_BEGIN(out, "INST", &chunk_start);
    CHUNK_WRITE(out, &inst);
    CHUNK_END(out, chunk_start, htobe32);

    if (aifc || matching) {
        // If we're writing an aifc, or we want to match on round-trip, emit an application-specific chunk for the
        // vadpcm codebook.
        if (in->vadpcm.has_book) {
            // APPL::stoc::VADPCMCODES
            CHUNK_BEGIN(out, "APPL", &chunk_start);
            CHUNK_WRITE_RAW(out, "stoc", 4);
            write_pstring(out, "VADPCMCODES");

            int16_t version = htobe16(in->vadpcm.book_version);
            int16_t order = htobe16(in->vadpcm.book_header.order);
            int16_t npredictors = htobe16(in->vadpcm.book_header.npredictors);

            CHUNK_WRITE(out, &version);
            CHUNK_WRITE(out, &order);
            CHUNK_WRITE(out, &npredictors);

            size_t book_size = VADPCM_BOOK_SIZE(in->vadpcm.book_header.order, in->vadpcm.book_header.npredictors);

            int16_t book_data_out[book_size];
            for (size_t i = 0; i < book_size; i++)
                book_data_out[i] = htobe16(in->vadpcm.book_data[i]);

            CHUNK_WRITE_RAW(out, book_data_out, sizeof(int16_t) * book_size);

            CHUNK_END(out, chunk_start, htobe32);
        }

        // Only write a vadpcm loop structure for compressed output. Loop states match on round-trip so we need not
        // save them in uncompressed output.
        if (aifc && in->vadpcm.num_loops != 0) {
            // APPL::stoc::VADPCMLOOPS
            CHUNK_BEGIN(out, "APPL", &chunk_start);
            CHUNK_WRITE_RAW(out, "stoc", 4);
            write_pstring(out, "VADPCMLOOPS");

            int16_t version = htobe16(in->vadpcm.loop_version);
            int16_t nloops = htobe16(in->vadpcm.num_loops);

            CHUNK_WRITE(out, &version);
            CHUNK_WRITE(out, &nloops);

            for (size_t i = 0; i < in->vadpcm.num_loops; i++) {
                ALADPCMloop outloop = in->vadpcm.loops[i];
                outloop.start = htobe32(outloop.start);
                outloop.end = htobe32(outloop.end);
                outloop.count = htobe32(outloop.count);
                for (size_t i = 0; i < ARRAY_COUNT(outloop.state); i++)
                    outloop.state[i] = htobe16(outloop.state[i]);

                CHUNK_WRITE(out, &outloop);
            }

            CHUNK_END(out, chunk_start, htobe32);
        }
    }

    if (in->data_type == SAMPLE_TYPE_PCM16) {
        assert(in->data_size % 2 == 0);
        assert(in->bit_depth == 16);

        for (size_t i = 0; i < in->data_size / 2; i++) {
            ((uint16_t *)in->data)[i] = htobe16(((uint16_t *)in->data)[i]);
        }
    }

    aiff_SSND ssnd = {
        .offset = 0,
        .blockSize = 0,
    };
    CHUNK_BEGIN(out, "SSND", &chunk_start);
    CHUNK_WRITE(out, &ssnd);
    CHUNK_WRITE_RAW(out, in->data, in->data_size);
    CHUNK_END(out, chunk_start, htobe32);

    uint32_t size = htobe32(ftell(out) - 8);
    fseek(out, 4, SEEK_SET);
    fwrite(&size, 4, 1, out);
    fclose(out);

    return 0;
}

int
aifc_write(container_data *data, const char *path, bool matching)
{
    return aiff_aifc_common_write(data, path, true, matching);
}

int
aiff_write(container_data *data, const char *path, bool matching)
{
    return aiff_aifc_common_write(data, path, false, matching);
}
