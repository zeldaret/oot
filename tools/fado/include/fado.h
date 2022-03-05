/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#pragma once

#include <stdio.h>

void Fado_Relocs(FILE* outputFile, int inputFilesCount, FILE** inputFiles, const char* ovlName);
// void Fado_WriteRelocFile(FILE* outputFile, FILE** inputFiles, int inputFilesCount);
