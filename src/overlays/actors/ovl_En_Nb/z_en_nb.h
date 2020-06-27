#ifndef _Z_EN_NB_H_
#define _Z_EN_NB_H_

#include <ultra64.h>
#include <global.h>

struct EnNb;

typedef void (*EnNbActionFunc)(struct EnNb*, GlobalContext*);
typedef void (*EnNbDrawFunc)(struct EnNb*, GlobalContext*);

typedef struct EnNb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[19];
    /* 0x0202 */ Vec3s transitionDrawTable[19];
    /* 0x0274 */ s16 unk_274;
    /* 0x0276 */ s16 unk_276;
    /* 0x0278 */ s32 action;
    /* 0x027C */ s32 drawConfig;
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ u32 unk_284;
    /* 0x0288 */ s32 unk_288;
    /* 0x028C */ s32 unk_28C;
    /* 0x0290 */ f32 unk_290;
    /* 0x0294 */ ColliderCylinder collider;
    /* 0x02E0 */ s32 unk_2E0;
    /* 0x02E4 */ Vec3f vec_2E4;
    /* 0x02F0 */ Vec3f vec_2F0;
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ char unk_2FE[0x2];
    /* 0x0300 */ struct_80034A14_arg1 struct_300;
} EnNb; // size = 0x0328

extern const ActorInit En_Nb_InitVars;

#endif
