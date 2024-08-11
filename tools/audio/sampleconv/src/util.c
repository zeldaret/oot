/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include "util.h"

NORETURN void
error(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    fprintf(stderr, "\x1b[91m"
                    "Error: "
                    "\x1b[97m");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\x1b[0m"
                    "\n");
    va_end(ap);

    exit(EXIT_FAILURE);
}

void
warning(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    fprintf(stderr, "\x1b[95m"
                    "Warning: "
                    "\x1b[97m");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\x1b[0m"
                    "\n");
    va_end(ap);
}
