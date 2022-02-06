#pragma once

#include <stdio.h>
#include "vc_vector/vc_vector.h"

int Mido_WriteDependencyFile(FILE* dependencyFile, const char* relocFile, vc_vector* inputFilesVector);
