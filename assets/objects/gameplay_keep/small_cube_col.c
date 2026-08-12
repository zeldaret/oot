#include "small_cube_col.h"
#include "array_count.h"
#include "camera.h"

BgCamInfo gSmallerCubeBgCamList[] = {
#include "assets/objects/gameplay_keep/gSmallerCubeBgCamList.inc.c"
};

SurfaceType gSmallerCubeSurfaceTypes[] = {
#include "assets/objects/gameplay_keep/gSmallerCubeSurfaceTypes.inc.c"
};

CollisionPoly gSmallerCubePolyList[] = {
#include "assets/objects/gameplay_keep/gSmallerCubePolyList.inc.c"
};

Vec3s gSmallerCubeVtxList[] = {
#include "assets/objects/gameplay_keep/gSmallerCubeVtxList.inc.c"
};

CollisionHeader gSmallerCubeCol = {
#include "assets/objects/gameplay_keep/gSmallerCubeCol.inc.c"
};
