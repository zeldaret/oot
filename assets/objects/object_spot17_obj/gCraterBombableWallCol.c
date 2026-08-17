#include "object_spot17_obj.h"
#include "array_count.h"
#include "camera.h"
#include "z_math.h"

BgCamInfo gCraterBombableWallBgCamList[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallBgCamList.inc.c"
};

SurfaceType gCraterBombableWallSurfaceTypes[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallSurfaceTypes.inc.c"
};

CollisionPoly gCraterBombableWallPolyList[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallPolyList.inc.c"
};

Vec3s gCraterBombableWallVtxList[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallVtxList.inc.c"
};

CollisionHeader gCraterBombableWallCol = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallCol.inc.c"
};
