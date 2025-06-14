#include "object_zg.h"
#include "array_count.h"
#include "camera.h"
#include "z_math.h"

BgCamInfo gTowerCollapseBarsBgCamList[] = {
#include "assets/objects/object_zg/gTowerCollapseBarsBgCamList.inc.c"
};

SurfaceType gTowerCollapseBarsSurfaceTypes[] = {
#include "assets/objects/object_zg/gTowerCollapseBarsSurfaceTypes.inc.c"
};

CollisionPoly gTowerCollapseBarsPolyList[] = {
#include "assets/objects/object_zg/gTowerCollapseBarsPolyList.inc.c"
};

Vec3s gTowerCollapseBarsVtxList[] = {
#include "assets/objects/object_zg/gTowerCollapseBarsVtxList.inc.c"
};

CollisionHeader gTowerCollapseBarsCol = {
#include "assets/objects/object_zg/gTowerCollapseBarsCol.inc.c"
};
