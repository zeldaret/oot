#include "object_umajump.h"
#include "array_count.h"
#include "camera.h"
#include "z_math.h"

BgCamInfo gJumpableHorseFenceBgCamList[] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceBgCamList.inc.c"
};

SurfaceType gJumpableHorseFenceSurfaceTypes[] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceSurfaceTypes.inc.c"
};

CollisionPoly gJumpableHorseFencePolyList[] = {
#include "assets/objects/object_umajump/gJumpableHorseFencePolyList.inc.c"
};

Vec3s gJumpableHorseFenceVtxList[] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceVtxList.inc.c"
};

CollisionHeader gJumpableHorseFenceCol = {
#include "assets/objects/object_umajump/gJumpableHorseFenceCol.inc.c"
};
