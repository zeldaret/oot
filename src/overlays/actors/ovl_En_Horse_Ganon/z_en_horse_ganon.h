#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ u8 unk_000[0x28];
    /* 0x0028 */ Vec3s unk_028;
    /* 0x002E */ s16 unk_02E;
    /* 0x0030 */ Vec3s unk_030;
    /* 0x0036 */ s16 unk_036;
    /* 0x0038 */ f32 unk_038;
    /* 0x003C */ u8 unk_03C;
    /* 0x003D */ u8 unk_03D[0x03];
} unk_struct_80A68FA8; // size is , might actually be a ColliderBodyEntry struct depending on what the lower 28 bytes look like

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    /* 0x0158 */ char unk_158[0x48];
    /* 0x01a0 */ SkelAnime skelAnime;
    /* 0x01e4 */ char unk_1e4[0x04];
    /* 0x01e8 */ s32 unk_1e8;
    /* 0x01ec */ s32 unk_1ec; // presumed 32 bits
    /* 0x01f0 */ char unk_1f0[0x04];
    /* 0x01f4 */ f32 unk_1f4;
    /* 0x01f8 */ char unk_1f8[0x04];
    /* 0x01FC */ ColliderCylinderMain collider;
    /* 0x0248 */ s32 unk_248; // not sure what this is supposed to be, maybe ColliderCustomMain from z_bg_bdan_switch.c or another ColliderCylinderMain
    /* 0x024C */ char unk_24C[0x14];
    /* 0x0260 */ s32 unk_260;
    /* 0x0264 */ unk_struct_80A68FA8* unk_264; // seems to point to an array of this struct
    /* 0x0268 */ s32 unk_268;
    /* 0x026C */ char unk_26C[0x3C];
} EnHorseGanon; // size = 0x02A8

extern const ActorInit En_Horse_Ganon_InitVars;

#endif
