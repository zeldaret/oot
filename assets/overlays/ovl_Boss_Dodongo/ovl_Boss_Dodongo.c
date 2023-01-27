#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Boss_Dodongo.h"
static u64 sLavaFloorLavaTex[1024];
static u64 sLavaFloorRockTex[512];

static u64 sLavaFloorLavaTex[1024] = {
#include "assets/overlays/ovl_Boss_Dodongo/lava_floor_lava.rgba16.inc.c"
};

static u64 sLavaFloorRockTex[512] = {
#include "assets/overlays/ovl_Boss_Dodongo/lava_floor_rock.rgba16.inc.c"
};

