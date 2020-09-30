#ifndef _Z_EN_IK_H_
#define _Z_EN_IK_H_

#include <ultra64.h>
#include <global.h>

struct EnIk;

typedef struct EnIk {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[30];
    /* 0x0244 */ Vec3s transitionDrawTable[30];
    /* 0x02F8 */ char unk_2F8[0x04];
    /* 0x02FC */ s8 unk_2FC;
    /* 0x02FD */ char unk_2FD[0x05];
    /* 0x0302 */ s16 switchFlags;
    /* 0x0304 */ char unk_304[0x1C];
    /* 0x0320 */ ColliderCylinder unk_320;
    /* 0x036C */ ColliderQuad unk_36C;
    /* 0x03EC */ ColliderTris unk_3EC;
    /* 0x040C */ char unk_40C[0xB8];
    /* 0x04C4 */ s32 blureIdx;
    /* 0x04C8 */ s32 action;
    /* 0x04CC */ s32 drawMode;
    /* 0x04D0 */ char unk_4D0[0x0C];
} EnIk; // size = 0x04DC

extern const ActorInit En_Ik_InitVars;

#endif
