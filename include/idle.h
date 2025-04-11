#ifndef IDLE_H
#define IDLE_H

#include "ultra64.h"

void Idle_ThreadEntry(void* arg);

extern OSMesgQueue gPiMgrCmdQueue;
extern OSViMode gViConfigMode;
extern u8 gViConfigModeType;

#endif
