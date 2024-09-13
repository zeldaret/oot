/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef SAMPLEBANK_H_
#define SAMPLEBANK_H_

#include "xml.h"

typedef struct {
    const char *name;
    int index;
    const char *medium;
    const char *cache_policy;
    bool buffer_bug;

    size_t num_samples;
    const char **sample_paths;
    const char **sample_names;
    bool *is_sample;

    size_t num_pointers;
    int *pointer_indices;
} samplebank;

const char *
samplebank_path_forname(samplebank *sb, const char *name);

void
read_samplebank_xml(samplebank *sb, xmlDocPtr doc);

#endif
