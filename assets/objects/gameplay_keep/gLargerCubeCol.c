#include "gLargerCubeCol.h"
#include "array_count.h"
#include "camera.h"
#include "bgcheck.h"

BgCamInfo gLargerCubeBgCamList[] = {
#include "assets/objects/gameplay_keep/gLargerCubeBgCamList.inc.c"
};

SurfaceType gLargerCubeSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gLargerCubeSurfaceTypes.inc.c"
};

CollisionPoly gLargerCubePolyList[] = {
#include "assets/objects/gameplay_keep/gLargerCubePolyList.inc.c"
};

Vec3s gLargerCubeVtxList[] = {
#include "assets/objects/gameplay_keep/gLargerCubeVtxList.inc.c"
};

CollisionHeader gLargerCubeCol = {
#include "assets/objects/gameplay_keep/gLargerCubeCol.inc.c"
};
