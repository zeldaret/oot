#ifndef _Z_EN_BA_H_
#define _Z_EN_BA_H_

#include "ultra64.h"
#include "global.h"

struct EnBa;

typedef struct EnBa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk14C; //unk
    /* 0x014C */ s32 unk150; // unk
    /* 0x014C */ s16 unk154; 
    /* 0x014C */ s16 unk156; // unk
    /* 0x0158 */ Vec3f unk158[13];
    /* 0x01F4 */ char unk1F4[0xC];
    /* 0x0200 */ Vec3f unk200[13];
    /* 0x029C */ char unk_29C[0xC];
    /* 0x02A8 */ Vec3s unk2A8[13];
    /* 0x02F6 */ char unk_2F6[0x2A];
    /* 0x0340 */ ColliderJntSph unk320;
    /* 0x0340 */ ColliderJntSphElement unk340[2]; // 0x80
} EnBa; // size = 0x03C0

extern const ActorInit En_Ba_InitVars;

#endif
