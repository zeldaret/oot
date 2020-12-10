#ifndef _Z_MIR_RAY_H_
#define _Z_MIR_RAY_H_

#include "ultra64.h"
#include "global.h"

struct MirRay;

typedef struct {
    /* 0x00 */ s16 unk_0;
    /* 0x02 */ s16 unk_2;
    /* 0x04 */ s16 unk_4;
    /* 0x06 */ s16 unk_6;
    /* 0x08 */ s16 unk_8;
    /* 0x0A */ s16 unk_A;
    /* 0x0C */ s16 unk_C;
    /* 0x0E */ s16 unk_E;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ u8 unk_1C; // r
    /* 0x1C */ u8 unk_1D; // g
    /* 0x1C */ u8 unk_1E; // b
    /* 0x1F */ u8 unk_1F;
} MirRayDataEntry; // size = 0x20

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ MtxF mtx;
    /* 0x4C */ CollisionPoly* unk_4C;
    /* 0x50 */ u8 unk_50;
} MirRayImage; // size = 0x54

typedef struct MirRay {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderJntSph colliderSph;
    /* 0x016C */ ColliderJntSphItem colliderSphItem;
    /* 0x01AC */ ColliderQuad shieldRay;
    /* 0x022C */ f32 unk_22C;
    /* 0x0230 */ Vec3f unk_230[6];
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ Vec3f unk_27C;
    /* 0x0288 */ Vec3f unk_288;
    /* 0x0294 */ s16 unk_294;
    /* 0x0296 */ s16 unk_296;
    /* 0x0298 */ s16 unk_298; // radius
    /* 0x029C */ LightNode* lightNode;
    /* 0x02A0 */ LightInfo lightInfo;
    /* 0x02AE */ u8 unk_2AE;
    /* 0x02AF */ char unk_2AF;
} MirRay; // size = 0x02B0

extern const ActorInit Mir_Ray_InitVars;

#endif
