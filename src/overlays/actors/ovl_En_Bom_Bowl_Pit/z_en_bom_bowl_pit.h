#ifndef Z_EN_BOM_BOWL_PIT_H
#define Z_EN_BOM_BOWL_PIT_H

#include "ultra64.h"
#include "actor.h"

struct EnBomBowlPit;

typedef void (*EnBomBowlPitActionFunc)(struct EnBomBowlPit*, struct PlayState*);

typedef struct EnBomBowlPit {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnBomBowlPitActionFunc unk14C;
    /* 0x0150 */ char pad150[2];
    /* 0x0152 */ s16 subCamId;
    /* 0x0154 */ s16 unk154;
    /* 0x0156 */ s16 unk156;
    /* 0x0158 */ s16 unk158;
    /* 0x015A */ s16 unk15A;
    /* 0x015C */ s16 unk15C;
    /* 0x0160 */ s32 unk160;
    /* 0x0164 */ u8 unk164;
    /* 0x0168 */ Vec3f viewAt;
    /* 0x0174 */ Vec3f viewEye;
    /* 0x0180 */ Vec3f subCamAt;
    /* 0x018C */ Vec3f subCamEye;
    /* 0x0198 */ Vec3f subCamEyeNext;
    /* 0x01A4 */ Vec3f subCamEyeMaxVelFrac;
    /* 0x01B0 */ Vec3f subCamEyeVel;
    /* 0x01BC */ Vec3f subCamAtNext;
    /* 0x01C8 */ Vec3f subCamAtMaxVelFrac;
    /* 0x01D4 */ Vec3f subCamAtVel;
    /* 0x01E0 */ Actor* unk1E0;
    /* 0x01E4 */ char pad1E4[0x3520];
} EnBomBowlPit; // size = 0x3704

#endif
