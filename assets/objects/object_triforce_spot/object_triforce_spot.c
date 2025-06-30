#include "object_triforce_spot.h"
#include "gfx.h"

Vtx gTriforceVtx[] = {
#include "assets/objects/object_triforce_spot/gTriforceVtx.inc.c"
};

Vtx gTriforceLightColumnVtx[] = {
#include "assets/objects/object_triforce_spot/gTriforceLightColumnVtx.inc.c"
};

Gfx gTriforceDL[72] = {
#include "assets/objects/object_triforce_spot/gTriforceDL.inc.c"
};

Gfx gTriforceLightColumnDL[26] = {
#include "assets/objects/object_triforce_spot/gTriforceLightColumnDL.inc.c"
};

u64 gTriforceTex[TEX_LEN(u64, gTriforceTex_WIDTH, gTriforceTex_HEIGHT, 8)] = {
#include "assets/objects/object_triforce_spot/gTriforceTex.i8.inc.c"
};

u64 gTriforceColumnSide1Tex[TEX_LEN(u64, gTriforceColumnSide1Tex_WIDTH, gTriforceColumnSide1Tex_HEIGHT, 8)] = {
#include "assets/objects/object_triforce_spot/gTriforceColumnSide1Tex.i8.inc.c"
};

u64 gTriforceColumnSide2Tex[TEX_LEN(u64, gTriforceColumnSide2Tex_WIDTH, gTriforceColumnSide2Tex_HEIGHT, 8)] = {
#include "assets/objects/object_triforce_spot/gTriforceColumnSide2Tex.i8.inc.c"
};
