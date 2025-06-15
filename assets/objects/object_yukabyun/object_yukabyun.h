#ifndef OBJECT_YUKABYUN_H
#define OBJECT_YUKABYUN_H

#include "ultra64.h"
#include "tex_len.h"

#define gFloorTileEnemyBottomTex_WIDTH 32
#define gFloorTileEnemyBottomTex_HEIGHT 32
extern u64 gFloorTileEnemyBottomTex[TEX_LEN(u64, gFloorTileEnemyBottomTex_WIDTH, gFloorTileEnemyBottomTex_HEIGHT, 16)];

extern Gfx gFloorTileEnemyDL[23];

extern Gfx gFloorTileEnemyFragmentDL[18];

#define gFloorTileEnemyTopTex_WIDTH 32
#define gFloorTileEnemyTopTex_HEIGHT 32
extern u64 gFloorTileEnemyTopTex[TEX_LEN(u64, gFloorTileEnemyTopTex_WIDTH, gFloorTileEnemyTopTex_HEIGHT, 16)];

#define gFloorTileEnemyFragmentTex_WIDTH 16
#define gFloorTileEnemyFragmentTex_HEIGHT 16
extern u64 gFloorTileEnemyFragmentTex[TEX_LEN(u64, gFloorTileEnemyFragmentTex_WIDTH, gFloorTileEnemyFragmentTex_HEIGHT, 16)];

#endif
