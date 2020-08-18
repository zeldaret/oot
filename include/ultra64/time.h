#ifndef _ULTRA64_TIME_H_
#define _ULTRA64_TIME_H_

#include "ultra64/message.h"

typedef u64 OSTime;

typedef struct OSTimer {
    /* 0x00 */ struct OSTimer* next;
    /* 0x04 */ struct OSTimer* prev;
    /* 0x08 */ OSTime interval;
    /* 0x10 */ OSTime value;
    /* 0x18 */ OSMesgQueue* mq;
    /* 0x1C */ OSMesg msg;
} OSTimer; // size = 0x20

#endif
