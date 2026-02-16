#include "eff_shockwave.h"
#include "gfx.h"

u64 gEffShockwaveTex[TEX_LEN(u64, gEffShockwaveTex_WIDTH, gEffShockwaveTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gEffShockwaveTex.i8.inc.c"
};

Gfx gEffShockwaveDL[14] = {
#include "assets/objects/gameplay_keep/gEffShockwaveDL.inc.c"
};

Vtx gGameplayKeepVtx_01A120[] = {
#include "assets/objects/gameplay_keep/gGameplayKeepVtx_01A120.inc.c"
};
