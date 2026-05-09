#include "door_skel.h"
#include "array_count.h"
#include "gfx.h"

Vtx gDoorLeftVtx[] = {
#include "assets/objects/gameplay_keep/gDoorLeftVtx.inc.c"
};

Vtx gDoorRightVtx[] = {
#include "assets/objects/gameplay_keep/gDoorRightVtx.inc.c"
};

Vtx gDoorFrameVtx[] = {
#include "assets/objects/gameplay_keep/gDoorFrameVtx.inc.c"
};

Gfx gDoorFrameDL[17] = {
#include "assets/objects/gameplay_keep/gDoorFrameDL.inc.c"
};

Gfx gDoorLeftDL[41] = {
#include "assets/objects/gameplay_keep/gDoorLeftDL.inc.c"
};

Gfx gDoorRightDL[39] = {
#include "assets/objects/gameplay_keep/gDoorRightDL.inc.c"
};

u64 gWoodenDoorTex[TEX_LEN(u64, gWoodenDoorTex_WIDTH, gWoodenDoorTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gWoodenDoorTex.rgba16.inc.c"
};

StandardLimb gDoorSkelLimb_0 = {
#include "assets/objects/gameplay_keep/gDoorSkelLimb_0.inc.c"
};

StandardLimb gDoorSkelLimb_1 = {
#include "assets/objects/gameplay_keep/gDoorSkelLimb_1.inc.c"
};

StandardLimb gDoorSkelLimb_2 = {
#include "assets/objects/gameplay_keep/gDoorSkelLimb_2.inc.c"
};

StandardLimb gDoorSkelLimb_3 = {
#include "assets/objects/gameplay_keep/gDoorSkelLimb_3.inc.c"
};

void* gDoorLimbs[] = {
#include "assets/objects/gameplay_keep/gDoorLimbs.inc.c"
};

SkeletonHeader gDoorSkel = {
#include "assets/objects/gameplay_keep/gDoorSkel.inc.c"
};
