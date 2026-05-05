#include "lens_flare.h"
#include "gfx.h"

u64 gLensFlareCircleTex[TEX_LEN(u64, gLensFlareCircleTex_WIDTH, gLensFlareCircleTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gLensFlareCircleTex.i4.inc.c"
};

u64 gLensFlareRingTex[TEX_LEN(u64, gLensFlareRingTex_WIDTH, gLensFlareRingTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gLensFlareRingTex.i4.inc.c"
};

Gfx gLensFlareCircleDL[13] = {
#include "assets/objects/gameplay_keep/gLensFlareCircleDL.inc.c"
};

Gfx gLensFlareRingDL[13] = {
#include "assets/objects/gameplay_keep/gLensFlareRingDL.inc.c"
};

Vtx gLensFlareVtx[] = {
#include "assets/objects/gameplay_keep/gLensFlareVtx.inc.c"
};
