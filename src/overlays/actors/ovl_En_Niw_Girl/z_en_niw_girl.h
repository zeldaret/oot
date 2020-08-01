#ifndef _Z_EN_NIW_GIRL_H_
#define _Z_EN_NIW_GIRL_H_

#include <ultra64.h>
#include <global.h>
#include "../ovl_En_Niw/z_en_niw.h"

struct EnNiwGirl;

typedef void (*EnNiwGirlActionFunc)(struct EnNiwGirl*, GlobalContext*);

typedef struct EnNiwGirl {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnNiwGirlActionFunc actionFunc;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ s16 unk_264;
    /* 0x0266 */ s16 unk_266;
    /* 0x0268 */ s16 unk_268;
    /* 0x026A */ s16 unk_26A;
    /* 0x026C*/ s16 unk_26C;
    /* 0x026E*/ s16 unk_26E;
    /* 0x0270 */ s16 unk_270;
    /* 0x0272 */ s16 unk_272;
    /* 0x0274 */ s16 unk_274;
    /* 0x0276 */ s16 unkFlag;
    /* 0x0278 */ char unk_278[0x2];
    /* 0x027A */ s16 unk_27A;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ EnNiw* attachedActor;
    /* 0x0288 */ ColliderCylinder collider;
    /* 0x02D4 */ struct_80034A14_arg1 unk_2D4;
   // /* 0x02D4 */ char unk_2D4[0x28];
} EnNiwGirl; // size = 0x02FC

extern const ActorInit En_Niw_Girl_InitVars;

#endif
