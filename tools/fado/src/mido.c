#include "mido.h"

#include <stdio.h>
#include "macros.h"
#include "vc_vector/vc_vector.h"

int Mido_WriteDependencyFile(FILE* dependencyFile, const char* relocFile, vc_vector* inputFilesVector) {
    char** inputFile;

    fprintf(dependencyFile, "%s:", relocFile);

    VC_FOREACH(inputFile, inputFilesVector) {
        fprintf(dependencyFile, " %s", *inputFile);
    }
    fputs("\n\n", dependencyFile);
    VC_FOREACH(inputFile, inputFilesVector) {
        fprintf(dependencyFile, "%s:\n\n", *inputFile);
    }
    return 0;
}
