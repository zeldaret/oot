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

#include "aifc.h"
#include "util.h"

#define CC4_CHECK(buf, str) \
    ((buf)[0] == (str)[0] && (buf)[1] == (str)[1] && (buf)[2] == (str)[2] && (buf)[3] == (str)[3])

#define CC4(c1, c2, c3, c4) (((c1) << 24) | ((c2) << 16) | ((c3) << 8) | (c4))

#define FREAD(file, data, size)                                                                      \
    do {                                                                                             \
        if (fread((data), (size), 1, (file)) != 1) {                                                 \
            error("[%s:%d] Could not read %lu bytes from file", __FILE__, __LINE__, (size_t)(size)); \
        }                                                                                            \
    } while (0)

#define VADPCM_VER ((int16_t)1)

#if 0
#define DEBUGF(fmt, ...) printf(fmt, ##__VA_ARGS__)
#else
#define DEBUGF(fmt, ...) (void)0
#endif

typedef struct {
    int16_t numChannels;
    uint16_t numFramesH;
    uint16_t numFramesL;
    int16_t sampleSize;
    uint8_t sampleRate[10]; // 80-bit float
    // followed by compression type + compression name pstring
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

static_assert(sizeof(double) == sizeof(uint64_t), "Double is assumed to be 64-bit");

#define F64_GET_SGN(bits)    (((bits) >> 63) & 1)               //  1-bit
#define F64_GET_EXP(bits)    ((((bits) >> 52) & 0x7FF) - 0x3FF) // 15-bit
#define F64_GET_MANT_H(bits) (((bits) >> 32) & 0xFFFFF)         // 20-bit
#define F64_GET_MANT_L(bits) ((bits)&0xFFFFFFFF)                // 32-bit

static UNUSED void
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
    char *out = malloc(len + 1);

    // read string and null-terminate it
    FREAD(f, out, len);
    out[len] = '\0';

    // pad to 2-byte boundary
    if (!(len & 1))
        FREAD(f, &len, 1);

    return out;
}

void
aifc_read(aifc_data *af, const char *path, uint8_t *match_buf, size_t *match_buf_pos)
{
    FILE *in;
    bool has_comm = false;
    bool has_ssnd = false;

    memset(af, 0, sizeof(aifc_data));

    DEBUGF("[aifc] path [%s]\n", path);

    if (path == NULL)
        return;

    in = fopen(path, "rb");
    if (in == NULL)
        error("Failed to open \"%s\" for reading", path);

    char form[4];
    uint32_t size;
    char aifc[4];

    FREAD(in, form, 4);
    FREAD(in, &size, 4);
    size = be32toh(size);
    FREAD(in, aifc, 4);

    DEBUGF("total size = 0x%X\n", size);

    if (!CC4_CHECK(form, "FORM") || !CC4_CHECK(aifc, "AIFC"))
        error("Not an aifc file?");

    af->path = path;

    while (true) {
        char cc4[4];
        uint32_t chunk_size;

        long start = ftell(in);
        if (start > 8 + size) {
            error("Overran file");
        }
        if (start == 8 + size) {
            break;
        }

        FREAD(in, cc4, 4);
        FREAD(in, &chunk_size, 4);
        chunk_size = be32toh(chunk_size);

        chunk_size++;
        chunk_size &= ~1;

        DEBUGF("%c%c%c%c\n", cc4[0], cc4[1], cc4[2], cc4[3]);

        switch (CC4(cc4[0], cc4[1], cc4[2], cc4[3])) {
            case CC4('C', 'O', 'M', 'M'): {
                aiff_COMM comm;
                FREAD(in, &comm, sizeof(comm));
                comm.numChannels = be16toh(comm.numChannels);
                comm.numFramesH = be16toh(comm.numFramesH);
                comm.numFramesL = be16toh(comm.numFramesL);
                comm.sampleSize = be16toh(comm.sampleSize);

                assert(comm.numChannels == 1); // mono
                assert(comm.sampleSize == 16); // 16-bit samples

                af->num_channels = comm.numChannels;
                af->sample_size = comm.sampleSize;
                af->num_frames = (comm.numFramesH << 16) | comm.numFramesL;
                f80_to_f64(&af->sample_rate, comm.sampleRate);

                uint32_t comp_type = CC4('N', 'O', 'N', 'E');
                if (chunk_size > sizeof(aiff_COMM)) {
                    uint32_t compressionType;
                    FREAD(in, &compressionType, sizeof(compressionType));
                    comp_type = be32toh(compressionType);
                }
                af->compression_type = comp_type;

                af->compression_name = NULL;
                if (chunk_size > sizeof(aiff_COMM) + 4) {
                    af->compression_name = read_pstring_alloc(in);
                }

                DEBUGF("    numChannels %d\n"
                       "    numFrames %u\n"
                       "    sampleSize %d\n"
                       "    sampleRate %f\n"
                       "    compressionType %c%c%c%c (%s)\n",
                       af->num_channels, af->num_frames, af->sample_size, af->sample_rate, af->compression_type >> 24,
                       af->compression_type >> 16, af->compression_type >> 8, af->compression_type,
                       af->compression_name);

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

                // basenote

                DEBUGF("    baseNote    = %d (%d)\n"
                       "    detune      = %d\n"
                       "    lowNote     = %d\n"
                       "    highNote    = %d\n"
                       "    lowVelocity = %d\n"
                       "    highVelocity= %d\n"
                       "    gain        = %d\n"
                       "    sustainLoop = %d [%d:%d]\n"
                       "    releaseLoop = %d [%d:%d]\n",
                       inst.baseNote, NOTE_MIDI_TO_Z64(inst.baseNote), inst.detune, inst.lowNote, inst.highNote,
                       inst.lowVelocity, inst.highVelocity, inst.gain, inst.sustainLoop.playMode,
                       inst.sustainLoop.beginLoop, inst.sustainLoop.endLoop, inst.releaseLoop.playMode,
                       inst.releaseLoop.beginLoop, inst.releaseLoop.endLoop);

                af->basenote = inst.baseNote;
                af->detune = inst.detune;
                af->has_inst = true;
            } break;

            case CC4('M', 'A', 'R', 'K'): {
                aiff_MARK mark;
                FREAD(in, &mark, sizeof(mark));
                mark.nMarkers = be16toh(mark.nMarkers);

                af->num_markers = mark.nMarkers;
                af->markers = malloc(mark.nMarkers * sizeof(aifc_marker));

                for (size_t i = 0; i < mark.nMarkers; i++) {
                    Marker marker;
                    FREAD(in, &marker, sizeof(marker));
                    marker.MarkerID = be16toh(marker.MarkerID);
                    marker.positionH = be16toh(marker.positionH);
                    marker.positionL = be16toh(marker.positionL);

                    (*af->markers)[i].id = marker.MarkerID;
                    (*af->markers)[i].pos = (marker.positionH << 16) | marker.positionL;
                    (*af->markers)[i].label = read_pstring_alloc(in);

                    DEBUGF("    MARKER: %d @ %u [%s]\n", (*af->markers)[i].id, (*af->markers)[i].pos,
                           (*af->markers)[i].label);
                }
            } break;

            case CC4('A', 'P', 'P', 'L'): {
                char subcc4[4];

                FREAD(in, subcc4, 4);

                DEBUGF("    %c%c%c%c\n", subcc4[0], subcc4[1], subcc4[2], subcc4[3]);

                switch (CC4(subcc4[0], subcc4[1], subcc4[2], subcc4[3])) {
                    case CC4('s', 't', 'o', 'c'): {
                        char chunk_name[257];
                        read_pstring(in, chunk_name);

                        DEBUGF("    %s\n", chunk_name);

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

                            if (version != VADPCM_VER)
                                error("Non-identical codebook chunk versions");

                            size_t book_size = 8 * order * npredictors;

                            af->book.order = order;
                            af->book.npredictors = npredictors;
                            af->book_state = malloc(book_size * sizeof(int16_t));
                            FREAD(in, af->book_state, book_size * sizeof(int16_t));

                            for (size_t i = 0; i < book_size; i++)
                                (*af->book_state)[i] = be16toh((*af->book_state)[i]);

                            af->has_book = true;

                            // DEBUG

                            DEBUGF("        order       = %d\n"
                                   "        npredictors = %d\n",
                                   af->book.order, af->book.npredictors);

                            for (size_t i = 0; i < book_size; i++) {
                                if (i % 8 == 0)
                                    DEBUGF("\n        ");
                                DEBUGF("%04X ", (uint16_t)(*af->book_state)[i]);
                            }
                            DEBUGF("\n");
                        } else if (strequ(chunk_name, "VADPCMLOOPS")) {
                            int16_t version;
                            int16_t nloops;

                            FREAD(in, &version, sizeof(version));
                            version = be16toh(version);
                            FREAD(in, &nloops, sizeof(nloops));
                            nloops = be16toh(nloops);

                            if (version != VADPCM_VER)
                                error("Non-identical loop chunk versions");

                            if (nloops != 1)
                                error("Only one loop is supported, got %d", nloops);

                            FREAD(in, &af->loop, sizeof(ALADPCMloop));
                            af->loop.start = be32toh(af->loop.start);
                            af->loop.end = be32toh(af->loop.end);
                            af->loop.count = be32toh(af->loop.count);
                            for (size_t i = 0; i < ARRAY_COUNT(af->loop.state); i++)
                                af->loop.state[i] = be16toh(af->loop.state[i]);

                            af->has_loop = true;

                            // DEBUG

                            DEBUGF("        start = %d\n"
                                   "        end   = %d\n"
                                   "        count = %d\n",
                                   af->loop.start, af->loop.end, af->loop.count);

                            for (size_t i = 0; i < ARRAY_COUNT(af->loop.state); i++) {
                                if (i % 8 == 0)
                                    DEBUGF("\n        ");
                                DEBUGF("%04X ", (uint16_t)af->loop.state[i]);
                            }
                            DEBUGF("\n");
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

                assert(ssnd.offset == 0);
                assert(ssnd.blockSize == 0);

                af->ssnd_offset = ftell(in);
                // TODO use numFrames instead?
                af->ssnd_size = chunk_size - sizeof(ssnd);

                // Skip reading the rest of the chunk
                fseek(in, af->ssnd_size, SEEK_CUR);

                DEBUGF("    offset = 0x%lX size = 0x%lX\n", af->ssnd_offset, af->ssnd_size);

                has_ssnd = true;
            } break;

            default: // skip it
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
    if (!has_ssnd)
        error("aiff/aifc has no SSND chunk");

    // replicate buffer bug in original tool
    if (match_buf != NULL && match_buf_pos != NULL) {
        size_t buf_pos = ALIGN16(*match_buf_pos) % BUG_BUF_SIZE;
        size_t rem = af->ssnd_size;
        long seek_offset = 0;

        if (rem > BUG_BUF_SIZE) {
            // The sample is so large that it will cover the buffer more than once, let's only read as much as we
            // need to.

            // Advance to the buffer position to read only the final data into
            buf_pos = (buf_pos + rem - BUG_BUF_SIZE) % BUG_BUF_SIZE;
            // We need to seek to the actual data in the file that would be read at this point
            seek_offset = rem - BUG_BUF_SIZE;
            // The remaining data to read is just 1 buffer's worth of data
            rem = BUG_BUF_SIZE;
        }

        fseek(in, af->ssnd_offset + seek_offset, SEEK_SET);

        if (rem > BUG_BUF_SIZE - buf_pos) {
            // rem will circle around in the buffer

            // Fill up to the end of the buffer
            FREAD(in, &match_buf[buf_pos], BUG_BUF_SIZE - buf_pos);
            rem -= BUG_BUF_SIZE - buf_pos;
            // Return to the start of the buffer
            buf_pos = 0;
        }
        // rem fits in the buffer without circling back, fill buffer
        FREAD(in, &match_buf[buf_pos], rem);

        *match_buf_pos = (buf_pos + rem) % BUG_BUF_SIZE;
    }

    fclose(in);
}

void
aifc_dispose(aifc_data *af)
{
    free(af->book_state);
    af->has_book = false;

    af->has_loop = false;

    free(af->compression_name);

    for (size_t i = 0; i < af->num_markers; i++)
        free((*af->markers)[i].label);
    free(af->markers);
}
