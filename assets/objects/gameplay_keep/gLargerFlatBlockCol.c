#include "gLargerFlatBlockCol.h"
#include "array_count.h"
#include "camera.h"

BgCamInfo gLargerFlatBlockBgCamList[] = {
#include "assets/objects/gameplay_keep/gLargerFlatBlockBgCamList.inc.c"
};

SurfaceType gLargerFlatBlockSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gLargerFlatBlockSurfaceTypes.inc.c"
};

CollisionPoly gLargerFlatBlockPolyList[] = {
#include "assets/objects/gameplay_keep/gLargerFlatBlockPolyList.inc.c"
};

Vec3s gLargerFlatBlockVtxList[] = {
#include "assets/objects/gameplay_keep/gLargerFlatBlockVtxList.inc.c"
};

CollisionHeader gLargerFlatBlockCol = {
#include "assets/objects/gameplay_keep/gLargerFlatBlockCol.inc.c"
};
