#ifndef _Z_EN_BB_H_
#define _Z_EN_BB_H_

#include "ultra64.h"
#include "global.h"

struct EnBb;

typedef void (*EnBbActionFunc)(struct EnBb*, GlobalContext*);

typedef struct EnBb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTbl[16];
    /* 0x01F0 */ Vec3s transitionDrawTbl[16];
    /* 0x0250 */ s32 unk_250;
    /* 0x0254 */ s32 unk_254;
    /* 0x0258 */ EnBbActionFunc actionFunc;
    /* 0x025C */ s32 unk_25C;
    /* 0x0260 */ s32 unk_260;
    /* 0x0264 */ s32 unk_264;
    /* 0x0268 */ s16 unk_268;
    /* 0x026A */ s16 unk_26A;
    /* 0x026C */ s16 unk_26C;
    /* 0x026E */ s16 unk_26E;
    /* 0x0270 */ s16 unk_270;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ f32 unk_280;
    /* 0x027C */ f32 unk_284;
    /* 0x0288 */ f32 unk_288;
    /* 0x028C */ f32 unk_28C;
    /* 0x0290 */ Vec3f unk_290;
    /* 0x029C */ u8 unk_29C;
    /* 0x029D */ u8 unk_29D;
    /* 0x029E */ u8 unk_29E;
    /* 0x029F */ u8 unk_29F;
    /* 0x02A0 */ u8 unk_2A0;
    /* 0x02A1 */ u8 unk_2A1;
    /* 0x02A2 */ u8 unk_2A2;
    /* 0x02A4 */ s32 blureIdx;
    /* 0x02A8 */ s16 unk_2A8;
    /* 0x02AA */ u8 unk_2AA;  
    /* 0x02AC */ ColliderJntSph collider;
    /* 0x02CC */ ColliderJntSphItem elements[1];
    /* 0x030C */ struct_80032E24 unk_30C;
    /* 0x0324 */ struct EnBb* unk_324;
} EnBb; // size = 0x0328

extern const ActorInit En_Bb_InitVars;

#endif
