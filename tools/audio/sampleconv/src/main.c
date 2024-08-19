/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>
#include <math.h>
#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#include "util.h"

#include "codec/codec.h"
#include "codec/uncompressed.h"
#include "codec/vadpcm.h"

#include "container/container.h"
#include "container/wav.h"
#include "container/aiff.h"

static const codec_spec codecs[] = {
    {"pcm16",        SAMPLE_TYPE_PCM16,       16, false, pcm16_enc_dec, pcm16_enc_dec},
    { "vadpcm",      SAMPLE_TYPE_VADPCM,      9,  true,  vadpcm_dec,    vadpcm_enc   },
    { "vadpcm-half", SAMPLE_TYPE_VADPCM_HALF, 5,  true,  vadpcm_dec,    vadpcm_enc   },
 // { "pcm8",        SAMPLE_TYPE_PCM8,        TODO, TODO,  pcm8_dec, pcm8_enc },
};

static const container_spec containers[] = {
    {".wav",   wav_read,  wav_write },
    { ".aiff", aiff_read, aiff_write},
    { ".aifc", aifc_read, aifc_write},
};

static bool
str_endswith(const char *str1, const char *str2)
{
    size_t len1 = strlen(str1);
    size_t len2 = strlen(str2);

    if (len2 > len1)
        return false;
    return strequ(str1 + len1 - len2, str2);
}

NORETURN static void
help(const char *progname)
{
    fprintf(stderr, "%s [--matching] out_codec_name in_path out_path\n", progname);
    fprintf(stderr, "Supported codecs:\n");
    fprintf(stderr, "    pcm16\n");
    fprintf(stderr, "    vadpcm\n");
    fprintf(stderr, "    vadpcm-half\n");
    fprintf(stderr, "Possible input/output formats with supported codecs, automatically selected by file extension:\n");
    fprintf(stderr, "    wav  [pcm16]\n");
    fprintf(stderr, "    aiff [pcm16]\n");
    fprintf(stderr, "    aifc [vadpcm, vadpcm-half]\n");
    exit(EXIT_FAILURE);
}

NORETURN static void
usage(const char *progname)
{
    fprintf(stderr, "%s [--matching] out_codec_name in_path out_path\n", progname);
    exit(EXIT_FAILURE);
}

static const codec_spec *
codec_from_name(const char *name)
{
    for (size_t i = 0; i < ARRAY_COUNT(codecs); i++) {
        if (strequ(name, codecs[i].name))
            return &codecs[i];
    }
    return NULL;
}

static const codec_spec *
codec_from_type(sample_data_type type)
{
    for (size_t i = 0; i < ARRAY_COUNT(codecs); i++) {
        if (type == codecs[i].type)
            return &codecs[i];
    }
    return NULL;
}

static const container_spec *
container_from_name(const char *name)
{
    for (size_t i = 0; i < ARRAY_COUNT(containers); i++) {
        if (str_endswith(name, containers[i].fext))
            return &containers[i];
    }
    return NULL;
}

int
main(int argc, char **argv)
{
    const char *progname = argv[0];
    // Required arguments
    const char *in_path = NULL;
    const char *out_path = NULL;
    const char *out_codec_name = NULL;
    // Optional arguments
    enc_dec_opts opts = {
        .matching = false,
        // VADPCM
        .truncate = false,
        .min_loop_length = 800,
        .design.order = 2,
        .design.bits = 2,
        .design.refine_iters = 2,
        .design.thresh = 10.0,
        .design.frame_size = 16,
    };

    // parse args

#define arg_error(fmt, ...)                       \
    do {                                          \
        fprintf(stderr, fmt "\n", ##__VA_ARGS__); \
        usage(progname);                          \
    } while (0)

    int argn = 0;
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            // Optional args

            if (strequ(argv[i], "--help")) {
                help(progname);
            } else if (strequ(argv[i], "--matching")) {
                if (opts.matching)
                    arg_error("Received --matching option twice");

                opts.matching = true;
                continue;
            }
            arg_error("Unknown option \"%s\"", argv[i]);
        } else {
            // Required args

            switch (argn) {
                case 0:
                    out_codec_name = argv[i];
                    break;
                case 1:
                    in_path = argv[i];
                    break;
                case 2:
                    out_path = argv[i];
                    break;
                default:
                    arg_error("Unknown positional argument \"%s\"", argv[i]);
                    break;
            }
            argn++;
        }
    }
    if (argn != 3)
        arg_error("Not enough positional arguments");

#undef arg_error

    const container_spec *in_container = container_from_name(in_path);
    if (in_container == NULL)
        error("Unsupported input format");

    const container_spec *out_container = container_from_name(out_path);
    if (out_container == NULL)
        error("Unsupported output format");

    const codec_spec *out_codec = codec_from_name(out_codec_name);
    if (out_codec == NULL)
        error("Unrecognized output codec: \"%s\"", out_codec_name);

    container_data ctnr;

    // Read input from container
    if (in_container->read(&ctnr, in_path, opts.matching))
        error("Error reading input file");

    // Determine input codec from input container automatically
    const codec_spec *in_codec = codec_from_type(ctnr.data_type);
    if (in_codec == NULL)
        error("Unrecognized input codec: type=%d", ctnr.data_type);

    // Decode to PCM16 (this does nothing if in_codec is PCM16)
    if (in_codec->decode(&ctnr, in_codec, &opts))
        error("Error in decoding");

    // Encode to output (this does nothing if out_codec is PCM16)
    if (out_codec->encode(&ctnr, out_codec, &opts))
        error("Error in encoding");

    // Write output to container
    if (out_container->write(&ctnr, out_path, opts.matching))
        error("Error reading output file");

    container_destroy(&ctnr);
    return EXIT_SUCCESS;
}
