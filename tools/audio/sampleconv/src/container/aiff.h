/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef AIFF_H
#define AIFF_H

#include <stddef.h>
#include <stdint.h>

#include "../codec/vadpcm.h"
#include "container.h"

int
aifc_read(container_data *out, const char *path, bool matching);
int
aiff_read(container_data *out, const char *path, bool matching);

int
aifc_write(container_data *in, const char *path, bool matching);
int
aiff_write(container_data *in, const char *path, bool matching);

#endif
