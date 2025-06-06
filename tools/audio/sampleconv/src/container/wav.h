/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef WAV_H
#define WAV_H

#include "../codec/vadpcm.h"
#include "container.h"

int
wav_write(container_data *in, const char *path, bool matching);
int
wav_read(container_data *out, const char *path, bool matching);

#endif
