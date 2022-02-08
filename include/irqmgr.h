#ifndef IRQMGR_H
#define IRQMGR_H

#include "ultra64.h"

typedef struct {
    /* 0x00 */ s16 type;
    /* 0x02 */ char misc[0x1E];
} OSScMsg; // size = 0x20

typedef struct IrqMgrClient {
    /* 0x00 */ struct IrqMgrClient* prev;
    /* 0x04 */ OSMesgQueue* queue;
} IrqMgrClient;

typedef struct {
    /* 0x000 */ OSScMsg retraceMsg; // this apparently got moved from OSSched
    /* 0x020 */ OSScMsg prenmiMsg; // this apparently got moved from OSSched
    /* 0x040 */ OSScMsg nmiMsg;
    /* 0x060 */ OSMesgQueue queue;
    /* 0x078 */ OSMesg msgBuf[8];
    /* 0x098 */ OSThread thread;
    /* 0x248 */ IrqMgrClient* clients;
    /* 0x24C */ u8 resetStatus;
    /* 0x250 */ OSTime resetTime;
    /* 0x258 */ OSTimer timer;
    /* 0x278 */ OSTime retraceTime;
} IrqMgr; // size = 0x280

#endif
