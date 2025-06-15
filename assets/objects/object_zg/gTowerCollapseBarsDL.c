#include "object_zg.h"
#include "gfx.h"
#include "tex_len.h"

#define gTowerCollapseBarMetalTex_WIDTH 32
#define gTowerCollapseBarMetalTex_HEIGHT 32
u64 gTowerCollapseBarMetalTex[TEX_LEN(u64, gTowerCollapseBarMetalTex_WIDTH, gTowerCollapseBarMetalTex_HEIGHT, 16)] = {
#include "assets/objects/object_zg/gTowerCollapseBarMetalTex.rgba16.inc.c"
};

#define gTowerCollapseBarFlameTex_WIDTH 32
#define gTowerCollapseBarFlameTex_HEIGHT 32
u64 gTowerCollapseBarFlameTex[TEX_LEN(u64, gTowerCollapseBarFlameTex_WIDTH, gTowerCollapseBarFlameTex_HEIGHT, 16)] = {
#include "assets/objects/object_zg/gTowerCollapseBarFlameTex.rgba16.inc.c"
};

Vtx gTowerCollapseBarsVtx[] = {
#include "assets/objects/object_zg/gTowerCollapseBarsVtx.inc.c"
};

Gfx gTowerCollapseBarsDL[28] = {
#include "assets/objects/object_zg/gTowerCollapseBarsDL.inc.c"
};
