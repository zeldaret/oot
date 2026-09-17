#include "object_timeblock.h"
#include "array_count.h"
#include "camera.h"
#include "z_math.h"

BgCamInfo gSongOfTimeBlockBgCamList[] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockBgCamList.inc.c"
};

SurfaceType gSongOfTimeBlockSurfaceTypes[] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockSurfaceTypes.inc.c"
};

CollisionPoly gSongOfTimeBlockPolyList[] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockPolyList.inc.c"
};

Vec3s gSongOfTimeBlockVtxList[] = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockVtxList.inc.c"
};

CollisionHeader gSongOfTimeBlockCol = {
#include "assets/objects/object_timeblock/gSongOfTimeBlockCol.inc.c"
};
