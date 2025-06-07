#include "gameplay_keep_0x39940.h"
#include "array_count.h"
#include "camera.h"
#include "bgcheck.h"

BgCamInfo gWideTallBlockBgCamList[] = {
#include "assets/objects/gameplay_keep/gWideTallBlockBgCamList.inc.c"
};

SurfaceType gWideTallBlockSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gWideTallBlockSurfaceTypes.inc.c"
};

CollisionPoly gWideTallBlockPolyList[] = {
#include "assets/objects/gameplay_keep/gWideTallBlockPolyList.inc.c"
};

Vec3s gWideTallBlockVtxList[] = {
#include "assets/objects/gameplay_keep/gWideTallBlockVtxList.inc.c"
};

CollisionHeader gWideTallBlockCol = {
#include "assets/objects/gameplay_keep/gWideTallBlockCol.inc.c"
};
