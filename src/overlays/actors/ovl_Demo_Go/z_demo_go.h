#ifndef _Z_DEMO_GO_H_
#define _Z_DEMO_GO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x018C */ char unk_18C[0x4];
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ s32 action;
    /* 0x0198 */ s32 drawConfig;
    /* 0x019C */ f32 unk_19C;
} DemoGo; // size = 0x01A0

extern const ActorInit Demo_Go_InitVars;

#endif
