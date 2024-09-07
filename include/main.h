#ifndef MAIN_H
#define MAIN_H

#include "ultra64.h"

#include "stdint.h"

extern s32 gScreenWidth;
extern s32 gScreenHeight;
extern u32 gSystemHeapSize;

extern OSThread gGraphThread;

void Main(void* arg);

#endif
