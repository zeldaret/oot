#include "fairy_skel.h"
#include "circle_glow_textures.h"
#include "animation.h"
#include "array_count.h"
#include "gfx.h"

u64 gFairyWingTex[TEX_LEN(u64, gFairyWingTex_WIDTH, gFairyWingTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gFairyWingTex.i8.inc.c"
};

Vtx gFairyWing1Vtx[] = {
#include "assets/objects/gameplay_keep/gFairyWing1Vtx.inc.c"
};

Gfx gFairyWing1DL[17] = {
#include "assets/objects/gameplay_keep/gFairyWing1DL.inc.c"
};

Vtx gFairyWing2Vtx[] = {
#include "assets/objects/gameplay_keep/gFairyWing2Vtx.inc.c"
};

Gfx gFairyWing2DL[17] = {
#include "assets/objects/gameplay_keep/gFairyWing2DL.inc.c"
};

Vtx gFairyWing3Vtx[] = {
#include "assets/objects/gameplay_keep/gFairyWing3Vtx.inc.c"
};

Gfx gFairyWing3DL[17] = {
#include "assets/objects/gameplay_keep/gFairyWing3DL.inc.c"
};

Vtx gFairyWing4Vtx[] = {
#include "assets/objects/gameplay_keep/gFairyWing4Vtx.inc.c"
};

Gfx gFairyWing4DL[17] = {
#include "assets/objects/gameplay_keep/gFairyWing4DL.inc.c"
};

Vtx gGlowCircleVtx[] = {
#include "assets/objects/gameplay_keep/gGlowCircleVtx.inc.c"
};

Gfx gGlowCircleTextureLoadDL[8] = {
#include "assets/objects/gameplay_keep/gGlowCircleTextureLoadDL.inc.c"
};

Gfx gGlowCircleDL[4] = {
#include "assets/objects/gameplay_keep/gGlowCircleDL.inc.c"
};

Gfx gGlowCircleSmallDL[45] = {
#include "assets/objects/gameplay_keep/gGlowCircleSmallDL.inc.c"
};

Vtx gGlowCircleSmallVtx[] = {
#include "assets/objects/gameplay_keep/gGlowCircleSmallVtx.inc.c"
};

u64 gUnusedFairyWingTex[TEX_LEN(u64, gUnusedFairyWingTex_WIDTH, gUnusedFairyWingTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gUnusedFairyWingTex.rgba16.inc.c"
};

StandardLimb gFairySkelLimb_0 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_0.inc.c"
};

StandardLimb gFairySkelLimb_1 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_1.inc.c"
};

StandardLimb gFairySkelLimb_2 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_2.inc.c"
};

StandardLimb gFairySkelLimb_3 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_3.inc.c"
};

StandardLimb gFairySkelLimb_4 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_4.inc.c"
};

StandardLimb gFairySkelLimb_5 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_5.inc.c"
};

StandardLimb gFairySkelLimb_6 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_6.inc.c"
};

StandardLimb gFairySkelLimb_7 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_7.inc.c"
};

StandardLimb gFairySkelLimb_8 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_8.inc.c"
};

StandardLimb gFairySkelLimb_9 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_9.inc.c"
};

StandardLimb gFairySkelLimb_10 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_10.inc.c"
};

StandardLimb gFairySkelLimb_11 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_11.inc.c"
};

StandardLimb gFairySkelLimb_12 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_12.inc.c"
};

StandardLimb gFairySkelLimb_13 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb_13.inc.c"
};

void* gFairyLimbs[] = {
#include "assets/objects/gameplay_keep/gFairyLimbs.inc.c"
};

SkeletonHeader gFairySkel = {
#include "assets/objects/gameplay_keep/gFairySkel.inc.c"
};
