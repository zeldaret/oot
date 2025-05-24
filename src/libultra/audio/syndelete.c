#include "libaudio.h"
#include "stddef.h"

void alSynDelete(ALSynth* drvr) {
    drvr->head = NULL;
}
