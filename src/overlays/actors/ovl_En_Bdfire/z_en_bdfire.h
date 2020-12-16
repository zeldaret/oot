#ifndef _Z_EN_BDFIRE_H_
#define _Z_EN_BDFIRE_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_Boss_Dodongo/z_boss_dodongo.h"
struct EnBdfire;

typedef void (*EnBdfireActionFunc)(struct EnBdfire*, GlobalContext*);

typedef struct EnBdfire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnBdfireActionFunc actionFunc2;
    /* 0x0150 */ EnBdfireActionFunc actionFunc;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ char unk_158[0x30];
    /* 0x0188 */ f32 unk_188;
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ f32 unk_190;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ char unk_198[0x38];
    /* 0x01D0 */ LightInfo* lightInfo2;
    /* 0x01D4 */ LightInfo lightInfoNoGlow;
    /* 0x01E2 */ char unk_1E2[0x2]; //Probably padding
} EnBdfire; // size = 0x01E4

extern const ActorInit En_Bdfire_InitVars;

#endif
