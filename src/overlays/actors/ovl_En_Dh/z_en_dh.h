#ifndef _Z_EN_DH_H_
#define _Z_EN_DH_H_

#include "ultra64.h"
#include "global.h"

struct EnDh;

typedef void (*EnDhActionFunc)(struct EnDh*, GlobalContext*);

typedef struct EnDh {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0170 */ Vec3s limbDrawTable[16];
    /* 0x01F0 */ Vec3s unk_1F0[16];
    /* 0x0250 */ u8 actionState; 
    /* 0x0251 */ u8 unk_251; 
    /* 0x0252 */ u8 unk_252;
    /* 0x0254 */ EnDhActionFunc actionFunc;
    /* 0x0258 */ u8 unk_258;
    /* 0x0259 */ u8 unk_259;
    /* 0x025A */ u8 alpha;
    /* 0x025B */ u8 curAction;
    /* 0x025C */ s16 timer;
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ ColliderCylinder collider1;
    /* 0x02AC */ ColliderJntSph collider2;
    /* 0x02CC */ ColliderJntSphItem elements[1];
    /* 0x030C */ Vec3f headPos;
    /* 0x0318 */ f32 unk_318;
    /* 0x031C */ f32 unk_31C;
    /* 0x0320 */ f32 unk_320;
} EnDh; // size = 0x0324

extern const ActorInit En_Dh_InitVars;

#endif
