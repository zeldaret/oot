#include "debug_models.h"
#include "gfx.h"

Vtx gDebugPyramidVtx[] = {
#include "assets/objects/gameplay_keep/gDebugPyramidVtx.inc.c"
};

Gfx gDebugPyramidDL[6] = {
#include "assets/objects/gameplay_keep/gDebugPyramidDL.inc.c"
};

u64 gDebugCircleTex[TEX_LEN(u64, gDebugCircleTex_WIDTH, gDebugCircleTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDebugCircleTex.i8.inc.c"
};

u64 gDebugBallTex[TEX_LEN(u64, gDebugBallTex_WIDTH, gDebugBallTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDebugBallTex.i8.inc.c"
};

u64 gDebugCursorTex[TEX_LEN(u64, gDebugCursorTex_WIDTH, gDebugCursorTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDebugCursorTex.i8.inc.c"
};

u64 gDebugCrossTex[TEX_LEN(u64, gDebugCrossTex_WIDTH, gDebugCrossTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDebugCrossTex.i8.inc.c"
};

Gfx gDebugArrowDL[12] = {
#include "assets/objects/gameplay_keep/gDebugArrowDL.inc.c"
};

Vtx gDebugArrowVtx[] = {
#include "assets/objects/gameplay_keep/gDebugArrowVtx.inc.c"
};

Gfx gDebugCameraDL[15] = {
#include "assets/objects/gameplay_keep/gDebugCameraDL.inc.c"
};

Vtx gDebugCameraVtx[] = {
#include "assets/objects/gameplay_keep/gDebugCameraVtx.inc.c"
};

Vtx gDebugCheckeredFloorVtx[] = {
#include "assets/objects/gameplay_keep/gDebugCheckeredFloorVtx.inc.c"
};

Gfx gDebugCheckeredFloorDL[18] = {
#include "assets/objects/gameplay_keep/gDebugCheckeredFloorDL.inc.c"
};

u64 gDebugCheckeredFloorTex[TEX_LEN(u64, gDebugCheckeredFloorTex_WIDTH, gDebugCheckeredFloorTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gDebugCheckeredFloorTex.ia4.inc.c"
};

Vtx gDebugSpriteVtx[] = {
#include "assets/objects/gameplay_keep/gDebugSpriteVtx.inc.c"
};

Gfx gDebugSpriteDL[3] = {
#include "assets/objects/gameplay_keep/gDebugSpriteDL.inc.c"
};
