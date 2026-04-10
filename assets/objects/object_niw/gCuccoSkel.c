#include "gCuccoSkel.h"

#include "animation.h"
#include "tex_len.h"
#include "array_count.h"
#include "gfx.h"
#include "sys_matrix.h"
#include "ultra64.h"

Vtx gCuccoHeadVtx[] = {
#include "assets/objects/object_niw/gCuccoHeadVtx.inc.c"
};

Vtx gCuccoNeckVtx[] = {
#include "assets/objects/object_niw/gCuccoNeckVtx.inc.c"
};

Vtx gCuccoRightWingVtx[] = {
#include "assets/objects/object_niw/gCuccoRightWingVtx.inc.c"
};

Vtx gCuccoLeftWingVtx[] = {
#include "assets/objects/object_niw/gCuccoLeftWingVtx.inc.c"
};

Vtx gCuccoLeftFootVtx[] = {
#include "assets/objects/object_niw/gCuccoLeftFootVtx.inc.c"
};

Vtx gCuccoRightFootVtx[] = {
#include "assets/objects/object_niw/gCuccoRightFootVtx.inc.c"
};

Vtx gCuccoTailAndUndersideVtx[] = {
#include "assets/objects/object_niw/gCuccoTailAndUndersideVtx.inc.c"
};

Gfx gCuccoNeckDL[27] = {
#include "assets/objects/object_niw/gCuccoNeckDL.inc.c"
};

Gfx gCuccoHeadDL[107] = {
#include "assets/objects/object_niw/gCuccoHeadDL.inc.c"
};

Gfx gCuccoTailAndUndersideDL[60] = {
#include "assets/objects/object_niw/gCuccoTailAndUndersideDL.inc.c"
};

Gfx gCuccoRightWingDL[23] = {
#include "assets/objects/object_niw/gCuccoRightWingDL.inc.c"
};

Gfx gCuccoRightFootDL[20] = {
#include "assets/objects/object_niw/gCuccoRightFootDL.inc.c"
};

Gfx gCuccoLeftWingDL[23] = {
#include "assets/objects/object_niw/gCuccoLeftWingDL.inc.c"
};

Gfx gCuccoLeftFootDL[20] = {
#include "assets/objects/object_niw/gCuccoLeftFootDL.inc.c"
};

u64 gCuccoEyeTex[TEX_LEN(u64, gCuccoEyeTex_WIDTH, gCuccoEyeTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoEyeTex.rgba16.inc.c"
};

u64 gCuccoHeadFeathersTex[TEX_LEN(u64, gCuccoHeadFeathersTex_WIDTH, gCuccoHeadFeathersTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoHeadFeathersTex.rgba16.inc.c"
};

u64 gCuccoBaseFeathersTex[TEX_LEN(u64, gCuccoBaseFeathersTex_WIDTH, gCuccoBaseFeathersTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoBaseFeathersTex.rgba16.inc.c"
};

u64 gCuccoBeakTex[TEX_LEN(u64, gCuccoBeakTex_WIDTH, gCuccoBeakTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoBeakTex.rgba16.inc.c"
};

u64 gCuccoCombTex[TEX_LEN(u64, gCuccoCombTex_WIDTH, gCuccoCombTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoCombTex.rgba16.inc.c"
};

u64 gCuccoTailFeathersTex[TEX_LEN(u64, gCuccoTailFeathersTex_WIDTH, gCuccoTailFeathersTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoTailFeathersTex.rgba16.inc.c"
};

u64 gCuccoClawTex[TEX_LEN(u64, gCuccoClawTex_WIDTH, gCuccoClawTex_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoClawTex.rgba16.inc.c"
};

u64 gCuccoTex_2180[TEX_LEN(u64, gCuccoTex_2180_WIDTH, gCuccoTex_2180_HEIGHT, 16)] = {
#include "assets/objects/object_niw/gCuccoTex_2180.rgba16.inc.c"
};

// Feather Model

Vtx gCuccoEffectFeatherModelVtx[] = {
#include "assets/objects/object_niw/gCuccoEffectFeatherModelVtx.inc.c"
};

Gfx gCuccoEffectFeatherMaterialDL[15] = {
#include "assets/objects/object_niw/gCuccoEffectFeatherMaterialDL.inc.c"
};

Gfx gCuccoEffectFeatherModelDL[3] = {
#include "assets/objects/object_niw/gCuccoEffectFeatherModelDL.inc.c"
};

StandardLimb gCuccoRootLimb = {
#include "assets/objects/object_niw/gCuccoRootLimb.inc.c"
};

StandardLimb gCuccoLimb_244C = {
#include "assets/objects/object_niw/gCuccoLimb_244C.inc.c"
};

StandardLimb gCuccoLimb_2458 = {
#include "assets/objects/object_niw/gCuccoLimb_2458.inc.c"
};

StandardLimb gCuccoTailAndUndersideLimb = {
#include "assets/objects/object_niw/gCuccoTailAndUndersideLimb.inc.c"
};

StandardLimb gCuccoLeftFootRootLimb = {
#include "assets/objects/object_niw/gCuccoLeftFootRootLimb.inc.c"
};

StandardLimb gCuccoLeftFootLimb = {
#include "assets/objects/object_niw/gCuccoLeftFootLimb.inc.c"
};

StandardLimb gCuccoLeftWingRootLimb = {
#include "assets/objects/object_niw/gCuccoLeftWingRootLimb.inc.c"
};

StandardLimb gCuccoLeftWingLimb = {
#include "assets/objects/object_niw/gCuccoLeftWingLimb.inc.c"
};

StandardLimb gCuccoRightFootRootLimb = {
#include "assets/objects/object_niw/gCuccoRightFootRootLimb.inc.c"
};

StandardLimb gCuccoRightFootLimb = {
#include "assets/objects/object_niw/gCuccoRightFootLimb.inc.c"
};

StandardLimb gCuccoRightWingRootLimb = {
#include "assets/objects/object_niw/gCuccoRightWingRootLimb.inc.c"
};

StandardLimb gCuccoRightWingLimb = {
#include "assets/objects/object_niw/gCuccoRightWingLimb.inc.c"
};

StandardLimb gCuccoUpperBodyRootLimb = {
#include "assets/objects/object_niw/gCuccoUpperBodyRootLimb.inc.c"
};

StandardLimb gCuccoNeckLimb = {
#include "assets/objects/object_niw/gCuccoNeckLimb.inc.c"
};

StandardLimb gCuccoHeadLimb = {
#include "assets/objects/object_niw/gCuccoHeadLimb.inc.c"
};

void* gCuccoLimbs[] = {
    &gCuccoRootLimb,             // 0
    &gCuccoLimb_244C,            // 1
    &gCuccoLimb_2458,            // 2
    &gCuccoTailAndUndersideLimb, // 3
    &gCuccoLeftFootRootLimb,     // 4
    &gCuccoLeftFootLimb,         // 5
    &gCuccoLeftWingRootLimb,     // 6
    &gCuccoLeftWingLimb,         // 7
    &gCuccoRightFootRootLimb,    // 8
    &gCuccoRightFootLimb,        // 9
    &gCuccoRightWingRootLimb,    // 10
    &gCuccoRightWingLimb,        // 11
    &gCuccoUpperBodyRootLimb,    // 12
    &gCuccoNeckLimb,             // 13
    &gCuccoHeadLimb,             // 14
};

FlexSkeletonHeader gCuccoSkel = {
    {
        gCuccoLimbs,              // segment
        ARRAY_COUNT(gCuccoLimbs), // limbCount
    },                            // sh
    7,                            // dListCount
};
