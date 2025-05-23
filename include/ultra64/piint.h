#ifndef ULTRA64_PIINT_H
#define ULTRA64_PIINT_H

#include "ultratypes.h"
#include "pi.h"

extern OSPiHandle* __osCurrentHandle[];
extern OSMesgQueue __osPiAccessQueue;
extern u32 __osPiAccessQueueEnabled;

#endif
