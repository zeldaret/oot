#include "object_spot16_obj.h"
#include "gfx.h"
#include "tex_len.h"

#define gDodongosCavernRockTex_WIDTH 64
#define gDodongosCavernRockTex_HEIGHT 64
u64 gDodongosCavernRockTex[TEX_LEN(u64, gDodongosCavernRockTex_WIDTH, gDodongosCavernRockTex_HEIGHT, 4)] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRockTex.i4.inc.c"
};

Vtx gDodongosCavernRockVtx[] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRockVtx.inc.c"
};

Vtx gDodongosCavernRock2Vtx[] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRock2Vtx.inc.c"
};

Gfx gDodongosCavernRockDL[32] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRockDL.inc.c"
};

Gfx gDodongosCavernRock2DL[4] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRock2DL.inc.c"
};

Gfx gDodongosCavernRock3DL[2] = {
#include "assets/objects/object_spot16_obj/gDodongosCavernRock3DL.inc.c"
};
