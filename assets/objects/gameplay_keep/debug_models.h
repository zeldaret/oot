#ifndef GAMEPLAY_KEEP_DEBUG_MODELS_H
#define GAMEPLAY_KEEP_DEBUG_MODELS_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gDebugPyramidVtx[];
extern Gfx gDebugPyramidDL[6];
#define gDebugCircleTex_WIDTH 16
#define gDebugCircleTex_HEIGHT 16
extern u64 gDebugCircleTex[TEX_LEN(u64, gDebugCircleTex_WIDTH, gDebugCircleTex_HEIGHT, 8)];
#define gDebugBallTex_WIDTH 16
#define gDebugBallTex_HEIGHT 16
extern u64 gDebugBallTex[TEX_LEN(u64, gDebugBallTex_WIDTH, gDebugBallTex_HEIGHT, 8)];
#define gDebugCursorTex_WIDTH 16
#define gDebugCursorTex_HEIGHT 16
extern u64 gDebugCursorTex[TEX_LEN(u64, gDebugCursorTex_WIDTH, gDebugCursorTex_HEIGHT, 8)];
#define gDebugCrossTex_WIDTH 16
#define gDebugCrossTex_HEIGHT 16
extern u64 gDebugCrossTex[TEX_LEN(u64, gDebugCrossTex_WIDTH, gDebugCrossTex_HEIGHT, 8)];
extern Gfx gDebugArrowDL[12];
extern Vtx gDebugArrowVtx[];
extern Gfx gDebugCameraDL[15];
extern Vtx gDebugCameraVtx[];
extern Vtx gDebugCheckeredFloorVtx[];
extern Gfx gDebugCheckeredFloorDL[18];
#define gDebugCheckeredFloorTex_WIDTH 32
#define gDebugCheckeredFloorTex_HEIGHT 32
extern u64 gDebugCheckeredFloorTex[TEX_LEN(u64, gDebugCheckeredFloorTex_WIDTH, gDebugCheckeredFloorTex_HEIGHT, 4)];
extern Vtx gDebugSpriteVtx[];
extern Gfx gDebugSpriteDL[3];

#endif
