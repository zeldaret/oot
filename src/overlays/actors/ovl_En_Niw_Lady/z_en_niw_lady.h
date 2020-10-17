#ifndef _Z_EN_NIW_LADY_H_
#define _Z_EN_NIW_LADY_H_

#include "ultra64.h"
#include "global.h"

struct EnNiwLady;

typedef void (*EnNiwLadyActionFunc)(struct EnNiwLadyt*, GlobalContext*);

typedef struct EnNiwLady {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[16];//char unk_190[0xC0];
    /* 0x01F0 */ Vec3s transitionDrawTable[16];
    /* 0x0250 */ EnNiwLadyActionFunc actionFunc;
    /* 0x0254 */ char unk_254[0x1E];
    /* 0x0272 */ u8 unk_272;
    /* 0x0273 */ char unk_273[5];
    /* 0x0278 */ s16 unk_278;
    /* 0x027A */ char unk_27A[4];
    /* 0x027E */ u16 unk_27E;
    /* 0x0280 */ s8 ObjectAneIndex;
    /* 0x0281 */ s8 ObjectOsAnimeIndex;
    /* 0x0282 */ char unk_282[0x2E];
    /* 0x02B0 */ ColliderCylinder collider;
} EnNiwLady; // size = 0x02FC

extern const ActorInit En_Niw_Lady_InitVars;

#endif
