#include "small_flat_block_col.h"
#include "array_count.h"
#include "camera.h"

BgCamInfo gSmallerFlatBlockBgCamList[] = {
#include "assets/objects/gameplay_keep/gSmallerFlatBlockBgCamList.inc.c"
};

SurfaceType gSmallerFlatBlockSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gSmallerFlatBlockSurfaceTypes.inc.c"
};

CollisionPoly gSmallerFlatBlockPolyList[] = {
#include "assets/objects/gameplay_keep/gSmallerFlatBlockPolyList.inc.c"
};

Vec3s gSmallerFlatBlockVtxList[] = {
#include "assets/objects/gameplay_keep/gSmallerFlatBlockVtxList.inc.c"
};

CollisionHeader gSmallerFlatBlockCol = {
#include "assets/objects/gameplay_keep/gSmallerFlatBlockCol.inc.c"
};
