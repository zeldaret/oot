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
    /* 0x0230 */ char unk_230[0x78];
    /* 0x02A8 */ u8 unk_2A8;
    /* 0x02A9 */ u8 unk_2A9;
    /* 0x02AA */ u8 unk_2AA[4];
    /* 0x02AA */ u8 unk_2AE[4]; // Looks like 1 if vibration pack, 2 if (maybe controller pack)?
    /* 0x02B2 */ u8 unk_2B2[4];
    /* 0x02B6 */ u8 unk_2B6[4];
    /* 0x02BA */ char unk_2BA[0x02]; // probably padding
    /* 0x02BC */ unk_controller_t unk_controller[4];
    /* 0x045C */ u8 unk_45C;
    /* 0x045D */ u8 unk_45D;
    /* 0x045E */ u8 unk_45E;
    /* 0x045F */ u8 unk_45F;
    /* 0x0460 */ void(*unk_460)(s32 a, s32 b);
    /* 0x0464 */ s32 unk_464;
} PadMgr; // size = 0x468


#endif
