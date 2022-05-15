#ifndef PADMGR_H
#define PADMGR_H

#include "irqmgr.h"

typedef struct {
    /* 0x00 */ OSContPad cur;
    /* 0x06 */ OSContPad prev;
    /* 0x0C */ OSContPad press; // X/Y store delta from last frame
    /* 0x12 */ OSContPad rel; // X/Y store adjusted
} Input; // size = 0x18

typedef struct PadMgr {
    /* 0x0000 */ OSContStatus padStatus[4];
    /* 0x0010 */ OSMesg serialLockMsgBuf[1];
    /* 0x0014 */ OSMesg lockMsgBuf[1];
    /* 0x0018 */ OSMesg interruptMsgBuf[4];
    /* 0x0028 */ OSMesgQueue serialLockQueue;
    /* 0x0040 */ OSMesgQueue lockQueue;
    /* 0x0058 */ OSMesgQueue interruptQueue;
    /* 0x0070 */ IrqMgrClient irqClient;
    /* 0x0078 */ IrqMgr* irqMgr;
    /* 0x0080 */ OSThread thread;
    /* 0x0230 */ Input inputs[4];
    /* 0x0290 */ OSContPad pads[4];
    /* 0x02A8 */ vu8 validCtrlrsMask;
    /* 0x02A9 */ u8 nControllers;
    /* 0x02AA */ u8 ctrlrIsConnected[4]; // "Key_switch" originally
    /* 0x02AE */ u8 pakType[4]; // 1 if rumble pack, 2 if mempak?
    /* 0x02B2 */ vu8 rumbleEnable[4];
    /* 0x02B6 */ u8 rumbleCounter[4]; // not clear exact meaning
    /* 0x02BC */ OSPfs pfs[4];
    /* 0x045C */ vu8 rumbleOffFrames;
    /* 0x045D */ vu8 rumbleOnFrames;
    /* 0x045E */ u8 preNMIShutdown;
    /* 0x0460 */ void (*retraceCallback)(struct PadMgr* padmgr, s32 unk464);
    /* 0x0464 */ u32 retraceCallbackValue;
} PadMgr; // size = 0x468

#endif
