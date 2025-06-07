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

StandardLimb gFairySkelLimb0 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb0.inc.c"
};

StandardLimb gFairySkelLimb1 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb1.inc.c"
};

StandardLimb gFairySkelLimb2 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb2.inc.c"
};

StandardLimb gFairySkelLimb3 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb3.inc.c"
};

StandardLimb gFairySkelLimb4 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb4.inc.c"
};

StandardLimb gFairySkelLimb5 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb5.inc.c"
};

StandardLimb gFairySkelLimb6 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb6.inc.c"
};

StandardLimb gFairySkelLimb7 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb7.inc.c"
};

StandardLimb gFairySkelLimb8 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb8.inc.c"
};

StandardLimb gFairySkelLimb9 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb9.inc.c"
};

StandardLimb gFairySkelLimb10 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb10.inc.c"
};

StandardLimb gFairySkelLimb11 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb11.inc.c"
};

StandardLimb gFairySkelLimb12 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb12.inc.c"
};

StandardLimb gFairySkelLimb13 = {
#include "assets/objects/gameplay_keep/gFairySkelLimb13.inc.c"
};

void* gFairyLimbs[] = {
#include "assets/objects/gameplay_keep/gFairyLimbs.inc.c"
};

SkeletonHeader gFairySkel = {
#include "assets/objects/gameplay_keep/gFairySkel.inc.c"
};
