#include "object_timeblock.h"
#include "gfx.h"
#include "tex_len.h"

#define gSongOfTimeBlockTex_WIDTH 64
#define gSongOfTimeBlockTex_HEIGHT 64
u64 gSongOfTimeBlockTex[TEX_LEN(u64, gSongOfTimeBlockTex_WIDTH, gSongOfTimeBlockTex_HEIGHT, 4)] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockTex.i4.inc.c"
};

Vtx gSongOfTimeBlockVtx[] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockVtx.inc.c"
};

Gfx gSongOfTimeBlockDL[22] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockDL.inc.c"
};
