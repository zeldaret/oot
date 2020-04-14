#ifndef _PADMGR_H_
#define _PADMGR_H_

#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

typedef struct {
    /* 0x0000 */ OSContStatus pad_status[4];
    /* 0x0010 */ OSMesg msgbuf1[1];
    /* 0x0014 */ OSMesg msgbuf2[1];
    /* 0x0018 */ OSMesg msgbuf3[4];
    /* 0x0028 */ OSMesgQueue queue1;
    /* 0x0040 */ OSMesgQueue queue2;
    /* 0x0058 */ OSMesgQueue queue3;
    /* 0x0070 */ UNK_TYPE unk_70;
    /* 0x0074 */ UNK_TYPE unk_74;
    /* 0x0078 */ UNK_TYPE unk_78;
    /* 0x007C */ UNK_TYPE unk_7C;
    /* 0x0080 */ OSThread thread;
    /* 0x0230 */ Input inputs[4]; // 0x18 each = 0x60 total
    /* 0x0290 */ PadState pads[4]; // 0x6 each = 0x18 total
    /* 0x02A8 */ volatile u8 validCtrlrsMask;
    /* 0x02A9 */ s8 ncontrollers;
    /* 0x02AA */ u8 ctrlrIsConnected[4]; // Key_switch in original code
    /* 0x02AE */ u8 pakType[4]; // 1 if rumble pack, 2 if mempak?
    /* 0x02B2 */ volatile u8 rumbleEnable[4];
    /* 0x02B6 */ u8 rumbleCounter[4]; // not clear exact meaning
    /* 0x02BC */ unk_controller_t unk_controller[4];
    /* 0x045C */ volatile u8 rumbleOffFrames;
    /* 0x045D */ volatile u8 rumbleOnFrames;
    /* 0x045E */ u8 preNMIShutdown;
    /* 0x0460 */ void (*retraceCallback)(void* padmgr, u32 unk464);
    /* 0x0464 */ u32 retraceCallbackValue;
} PadMgr; // size = 0x468


#endif
