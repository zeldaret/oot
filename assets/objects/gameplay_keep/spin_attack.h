#ifndef GAMEPLAY_KEEP_SPIN_ATTACK_H
#define GAMEPLAY_KEEP_SPIN_ATTACK_H

#include "tex_len.h"
#include "ultra64.h"

#define gSpinAttackFireTex_WIDTH 64
#define gSpinAttackFireTex_HEIGHT 32
extern u64 gSpinAttackFireTex[TEX_LEN(u64, gSpinAttackFireTex_WIDTH, gSpinAttackFireTex_HEIGHT, 8)];
#define gSpinAttackMagicTex_WIDTH 64
#define gSpinAttackMagicTex_HEIGHT 32
extern u64 gSpinAttackMagicTex[TEX_LEN(u64, gSpinAttackMagicTex_WIDTH, gSpinAttackMagicTex_HEIGHT, 8)];
extern Vtx gSpinAttack1Vtx[];
extern Vtx gSpinAttack2Vtx[];
extern Gfx gSpinAttack1DL[36];
extern Gfx gSpinAttack2DL[36];
extern Vtx gSpinAttack3Vtx[];
extern Vtx gSpinAttack4Vtx[];
extern Gfx gSpinAttack3DL[36];
extern Gfx gSpinAttack4DL[36];
#define gSpinAttackCharging1Tex_WIDTH 32
#define gSpinAttackCharging1Tex_HEIGHT 32
extern u64 gSpinAttackCharging1Tex[TEX_LEN(u64, gSpinAttackCharging1Tex_WIDTH, gSpinAttackCharging1Tex_HEIGHT, 8)];
#define gSpinAttackCharging2Tex_WIDTH 32
#define gSpinAttackCharging2Tex_HEIGHT 32
extern u64 gSpinAttackCharging2Tex[TEX_LEN(u64, gSpinAttackCharging2Tex_WIDTH, gSpinAttackCharging2Tex_HEIGHT, 8)];
extern Vtx gSpinAttackChargingVtx[];
extern Gfx gSpinAttackChargingDL[29];

#endif
