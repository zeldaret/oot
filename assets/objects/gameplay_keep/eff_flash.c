#include "eff_flash.h"
#include "gfx.h"

Vtx gEffFlashVtx[] = {
#include "assets/objects/gameplay_keep/gEffFlashVtx.inc.c"
};

Gfx gEffFlash1DL[15] = {
#include "assets/objects/gameplay_keep/gEffFlash1DL.inc.c"
};

Gfx gEffFlash2DL[16] = {
#include "assets/objects/gameplay_keep/gEffFlash2DL.inc.c"
};

u64 gFlashTex[TEX_LEN(u64, gFlashTex_WIDTH, gFlashTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gFlashTex.i8.inc.c"
};
