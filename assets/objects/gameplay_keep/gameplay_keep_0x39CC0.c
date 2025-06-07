#include "gameplay_keep_0x39CC0.h"
#include "bgcheck.h"
#include "array_count.h"
#include "camera.h"

BgCamInfo gTallBlockBgCamList[] = {
#include "assets/objects/gameplay_keep/gTallBlockBgCamList.inc.c"
};

SurfaceType gTallBlockSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gTallBlockSurfaceTypes.inc.c"
};

CollisionPoly gTallBlockPolyList[] = {
#include "assets/objects/gameplay_keep/gTallBlockPolyList.inc.c"
};

Vec3s gTallBlockVtxList[] = {
#include "assets/objects/gameplay_keep/gTallBlockVtxList.inc.c"
};

CollisionHeader gTallBlockCol = {
#include "assets/objects/gameplay_keep/gTallBlockCol.inc.c"
};
