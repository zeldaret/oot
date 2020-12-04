#ifndef _Z_EN_HS_H_
#define _Z_EN_HS_H_

#include "ultra64.h"
#include "global.h"

struct EnHs;

typedef void (*EnHsActionFunc)(struct EnHs*, GlobalContext*);

typedef struct EnHs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTbl[16];
    /* 0x023C */ Vec3s morphTbl[16];
    /* 0x029C */ Vec3s unk_29C;
    /* 0x02A2 */ Vec3s unk_2A2;
    /* 0x02A8 */ u16 unk_2A8;
    /* 0x02AA */ s16 unk_2AA;
    /* 0x02AC */ EnHsActionFunc actionFunc;
} EnHs; // size = 0x02B0

extern const ActorInit En_Hs_InitVars;

#endif
