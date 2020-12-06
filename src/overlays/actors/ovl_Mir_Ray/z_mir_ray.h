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
    /* 0x00 */ f32 unk_0;
    /* 0x04 */ f32 unk_4;
    /* 0x08 */ f32 unk_8;
    /* 0x0C */ f32 unk_C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ f32 unk_44;
    /* 0x48 */ f32 unk_48;
    /* 0x4C */ MirRayDataEntry* unk_4C;
    /* 0x50 */ u8 unk_50;
    /* 0x51 */ char unk_51[0x3];
} MirRayMysteryStruct; // size = 0x54

typedef struct MirRay {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderJntSph colliderSph;
    /* 0x016C */ ColliderJntSphItem colliderSphItem;
    /* 0x01AC */ ColliderQuad colliderQuad;
    /* 0x022C */ f32 unk_22C;
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ f32 unk_234;
    /* 0x0238 */ char unk_238[0x4];
    /* 0x023C */ f32 unk_23C;
    /* 0x0240 */ f32 unk_240;
    /* 0x0244 */ char unk_244[0x4];
    /* 0x0248 */ f32 unk_248;
    /* 0x024C */ f32 unk_24C;
    /* 0x0250 */ char unk_250[0x4];
    /* 0x0254 */ f32 unk_254;
    /* 0x0258 */ f32 unk_258;
    /* 0x025C */ char unk_25C[0x4];
    /* 0x0260 */ f32 unk_260;
    /* 0x0264 */ f32 unk_264;
    /* 0x0268 */ char unk_268[0x4];
    /* 0x026C */ f32 unk_26C;
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ char unk_274[0x4];
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ Vec3f unk_27C;
    /* 0x0288 */ Vec3f unk_288;
    /* 0x0294 */ s16 unk_294;
    /* 0x0296 */ s16 unk_296;
    /* 0x0298 */ s16 unk_298;
    /* 0x029A */ char unk_29A[0x2];
    /* 0x029C */ LightNode* lightNode;
    /* 0x02A0 */ LightInfo lightInfo;
    /* 0x02AE */ u8 unk_2AE;
    /* 0x02AF */ char unk_2AF;
} MirRay; // size = 0x02B0

extern const ActorInit Mir_Ray_InitVars;

#endif
