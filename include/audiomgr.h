#ifndef _AUDIOMGR_H_
#define _AUDIOMGR_H_

#include <global.h>
#include "sched.h"

typedef struct {
    struct {
    /* 0x0000 */ s32          unk_0[0x10]; // not char to avoid generating lwl/lwr swl/swr in a struct copy
    } unk_0;
    /* 0x0040 */ OSMesgQueue*  unk_40;
} Sub_AudioMgr_18; // size = 0x44

typedef struct {
    /* 0x0000 */ IrqMgr*       irqMgr;
    /* 0x0004 */ SchedContext* sched;
    /* 0x0008 */ OSMesg        unk_8;
    /* 0x000C */ char          unk_C[0x04];
    /* 0x0010 */ s32           unk_10;
    /* 0x0014 */ s32           unk_14;
    /* 0x0018 */ Sub_AudioMgr_18 unk_18;
    /* 0x005C */ UNK_PTR       unk_5C;
    /* 0x0060 */ char          unk_60[0x10];
    /* 0x0070 */ Sub_AudioMgr_18* unk_70;
    /* 0x0074 */ OSMesgQueue   unk_74;
    /* 0x008C */ OSMesg        unk_8C;
    /* 0x0090 */ OSMesgQueue   unk_90;
    /* 0x00A8 */ OSMesg        unk_A8;
    /* 0x00AC */ OSMesgQueue   unk_AC;
    /* 0x00C4 */ OSMesg        unk_C4;
    /* 0x00C8 */ OSMesgQueue   unk_C8;
    /* 0x00E0 */ OSMesg        unk_E0;
    /* 0x00E4 */ char          unk_E4[0x04];
    /* 0x00E8 */ OSThread      unk_E8;
} AudioMgr; // size = 0x298

#endif
