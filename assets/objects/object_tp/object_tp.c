#include "object_tp.h"
#include "gfx.h"

Gfx gTailpasaranTailSegmentDL[14] = {
#include "assets/objects/object_tp/gTailpasaranTailSegmentDL.inc.c"
};

Vtx gTailpasaranTailSegmentVtx[] = {
#include "assets/objects/object_tp/gTailpasaranTailSegmentVtx.inc.c"
};

Vtx gTailpasaranHeadClawVtx[] = {
#include "assets/objects/object_tp/gTailpasaranHeadClawVtx.inc.c"
};

Vtx gTailpasaranHeadMouthpartsVtx[] = {
#include "assets/objects/object_tp/gTailpasaranHeadMouthpartsVtx.inc.c"
};

Gfx gTailpasaranHeadClawDL[54] = {
#include "assets/objects/object_tp/gTailpasaranHeadClawDL.inc.c"
};

Gfx gTailpasaranHeadMouthpartsDL[18] = {
#include "assets/objects/object_tp/gTailpasaranHeadMouthpartsDL.inc.c"
};

Gfx gTailpasaranHeadDL[3] = {
#include "assets/objects/object_tp/gTailpasaranHeadDL.inc.c"
};

u64 gTailpasaranHeadRearTex[TEX_LEN(u64, gTailpasaranHeadRearTex_WIDTH, gTailpasaranHeadRearTex_HEIGHT, 16)] = {
#include "assets/objects/object_tp/gTailpasaranHeadRearTex.rgba16.inc.c"
};

u64 gTailpasaranHeadClawBaseTex[TEX_LEN(u64, gTailpasaranHeadClawBaseTex_WIDTH, gTailpasaranHeadClawBaseTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_tp/gTailpasaranHeadClawBaseTex.rgba16.inc.c"
};

u64 gTailpasaranHeadClawTex[TEX_LEN(u64, gTailpasaranHeadClawTex_WIDTH, gTailpasaranHeadClawTex_HEIGHT, 16)] = {
#include "assets/objects/object_tp/gTailpasaranHeadClawTex.rgba16.inc.c"
};

u64 gTailpasaranTailSegmentTex[TEX_LEN(u64, gTailpasaranTailSegmentTex_WIDTH, gTailpasaranTailSegmentTex_HEIGHT, 8)] = {
#include "assets/objects/object_tp/gTailpasaranTailSegmentTex.ia8.inc.c"
};

u64 gTailpasaranHeadMouthpartsTex[TEX_LEN(u64, gTailpasaranHeadMouthpartsTex_WIDTH,
                                          gTailpasaranHeadMouthpartsTex_HEIGHT, 16)] = {
#include "assets/objects/object_tp/gTailpasaranHeadMouthpartsTex.rgba16.inc.c"
};
