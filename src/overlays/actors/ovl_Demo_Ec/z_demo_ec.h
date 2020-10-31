#ifndef _Z_DEMO_EC_H_
#define _Z_DEMO_EC_H_

#include "ultra64.h"
#include "global.h"

struct DemoEc;

typedef void (*DemoEcActionFunc)(struct DemoEc*, GlobalContext*);

typedef struct DemoEc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ s32 unk_194;
    /* 0x0198 */ s32 unk_198;
    /* 0x019C */ s32 action;
    /* 0x01A0 */ s32 unk_1A0;
    /* 0x01A4 */ s32 unk_1A4;
} DemoEc; // size = 0x01A8

extern const ActorInit Demo_Ec_InitVars;

#endif
