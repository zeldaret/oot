#include "code.h"

Vtx sTransWipeVtx[25] = {
#include "assets/code/fbdemo_wipe1/sTransWipeVtx.inc.c"
};

u64 sTransWipeTex[TEX_LEN(u64, sTransWipeTex_WIDTH, sTransWipeTex_HEIGHT, 4)] = {
#include "assets/code/fbdemo_wipe1/sTransWipeTex.i4.inc.c"
};

Gfx sTransWipeDL[31] = {
#include "assets/code/fbdemo_wipe1/sTransWipeDL.inc.c"
};

