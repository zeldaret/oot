/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <stdlib.h>

#include "container.h"

int
container_destroy(container_data *data)
{
    if (data->data != NULL)
        free(data->data);
    if (data->loops != NULL)
        free(data->loops);
    if (data->vadpcm.book_data != NULL)
        free(data->vadpcm.book_data);
    if (data->vadpcm.loops != NULL)
        free(data->vadpcm.loops);
    return 0;
}
