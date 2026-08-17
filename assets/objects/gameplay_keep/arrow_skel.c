#include "arrow_skel.h"
#include "hilite_textures.h"
#include "array_count.h"
#include "gfx.h"

u64 gArrowShaftTex[TEX_LEN(u64, gArrowShaftTex_WIDTH, gArrowShaftTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gArrowShaftTex.rgba16.inc.c"
};

u64 gArrowFletchingTex[TEX_LEN(u64, gArrowFletchingTex_WIDTH, gArrowFletchingTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gArrowFletchingTex.rgba16.inc.c"
};

Vtx gArrowNearVtx[] = {
#include "assets/objects/gameplay_keep/gArrowNearVtx.inc.c"
};

Gfx gArrowNearDL[60] = {
#include "assets/objects/gameplay_keep/gArrowNearDL.inc.c"
};

Vtx gArrowFarVtx[] = {
#include "assets/objects/gameplay_keep/gArrowFarVtx.inc.c"
};

Gfx gArrowFarDL[52] = {
#include "assets/objects/gameplay_keep/gArrowFarDL.inc.c"
};

LodLimb gArrowSkelLimb_0 = {
#include "assets/objects/gameplay_keep/gArrowSkelLimb_0.inc.c"
};

LodLimb gArrowSkelLimb_1 = {
#include "assets/objects/gameplay_keep/gArrowSkelLimb_1.inc.c"
};

LodLimb gArrowSkelLimb_2 = {
#include "assets/objects/gameplay_keep/gArrowSkelLimb_2.inc.c"
};

LodLimb gArrowSkelLimb_3 = {
#include "assets/objects/gameplay_keep/gArrowSkelLimb_3.inc.c"
};

void* gArrowLimbs[] = {
#include "assets/objects/gameplay_keep/gArrowLimbs.inc.c"
};

SkeletonHeader gArrowSkel = {
#include "assets/objects/gameplay_keep/gArrowSkel.inc.c"
};
