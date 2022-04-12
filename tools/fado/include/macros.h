/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#pragma once

#include "vc_vector/vc_vector.h"

/* C macros */
#define ARRAY_COUNT(arr) (signed long long)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (unsigned long long)(sizeof(arr) / sizeof(arr[0]))

#define ALIGN(val, align) (((val) + (align - 1)) / (align) * (align))

/* Mathematical macros */
#define ABS(x) ((x) < 0 ? -(x) : (x))

#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))
#define CLAMP_MAX(x, max) ((x) > (max) ? (max) : (x))
#define CLAMP_MIN(x, min) ((x) < (min) ? (min) : (x))
#define MEDIAN3(a1, a2, a3) \
    ((a2 >= a1) ? ((a3 >= a2) ? a2 : ((a1 >= a3) ? a1 : a3)) : ((a2 >= a3) ? a2 : ((a3 >= a1) ? a1 : a3)))

/* vc_vector macros - really these should go in vc_vector.h, but not much choice without touching the library files */
#define VC_FOREACH(i, v) for (i = vc_vector_begin(v); i != vc_vector_end(v); i = vc_vector_next(v, i))
