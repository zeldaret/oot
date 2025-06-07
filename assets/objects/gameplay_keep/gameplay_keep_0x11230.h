#ifndef GAMEPLAY_KEEP_0x11230_H
#define GAMEPLAY_KEEP_0x11230_H

#include "tex_len.h"
#include "ultra64.h"

#define gTorchFlameTex_WIDTH 64
#define gTorchFlameTex_HEIGHT 32
extern u64 gTorchFlameTex[TEX_LEN(u64, gTorchFlameTex_WIDTH, gTorchFlameTex_HEIGHT, 8)];
#define gEffUnknown1Tex_WIDTH 64
#define gEffUnknown1Tex_HEIGHT 32
extern u64 gEffUnknown1Tex[TEX_LEN(u64, gEffUnknown1Tex_WIDTH, gEffUnknown1Tex_HEIGHT, 8)];
extern Vtx gSpinAttack1Vtx[];
extern Vtx gSpinAttack2Vtx[];
extern Gfx gSpinAttack1DL[36];
extern Gfx gSpinAttack2DL[36];
extern Vtx gSpinAttack3Vtx[];
extern Vtx gSpinAttack4Vtx[];
extern Gfx gSpinAttack3DL[36];
extern Gfx gSpinAttack4DL[36];
#define gFlameWall1Tex_WIDTH 32
#define gFlameWall1Tex_HEIGHT 32
extern u64 gFlameWall1Tex[TEX_LEN(u64, gFlameWall1Tex_WIDTH, gFlameWall1Tex_HEIGHT, 8)];
#define gFlameWall2Tex_WIDTH 32
#define gFlameWall2Tex_HEIGHT 32
extern u64 gFlameWall2Tex[TEX_LEN(u64, gFlameWall2Tex_WIDTH, gFlameWall2Tex_HEIGHT, 8)];
extern Vtx gSpinAttackChargingVtx[];
extern Gfx gSpinAttackChargingDL[29];

#endif
