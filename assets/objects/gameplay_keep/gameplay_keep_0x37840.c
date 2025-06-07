#include "gameplay_keep_0x37840.h"
#include "gfx.h"

Vtx gEffSparklesVtx[] = {
#include "assets/objects/gameplay_keep/gEffSparklesVtx.inc.c"
};

Gfx gEffSparklesDL[12] = {
#include "assets/objects/gameplay_keep/gEffSparklesDL.inc.c"
};

u64 gEffSparklesTex[TEX_LEN(u64, gEffSparklesTex_WIDTH, gEffSparklesTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gEffSparklesTex.i4.inc.c"
};
