/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#pragma once

#include <getopt.h>
#include <unistd.h>

typedef struct {
    struct option longOpt;
    char* helpArg;
    char* helpMsg;
} OptInfo;

typedef struct {
    char* helpArg;
    char* helpMsg;
} PosArgInfo;

/* Formatting sizes used by Help_PrintHelp. Change them before calling Help_PrintHelp to use custom values */
extern size_t helpTextWidth;
extern size_t helpDtIndent;
extern size_t helpDdIndent;

void Help_PrintHelp(const char* prologue, size_t posArgCount, const PosArgInfo* posArgInfo, size_t optCount,
                    const OptInfo* optInfo, const char* epilogue);
