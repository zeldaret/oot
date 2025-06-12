#include "object_zo.h"
#include "gfx.h"

#define gZoraSplashesTex_WIDTH 16
#define gZoraSplashesTex_HEIGHT 16
u64 gZoraSplashesTex[TEX_LEN(u64, gZoraSplashesTex_WIDTH, gZoraSplashesTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraSplashesTex.i8.inc.c"
};

Vtx gZoraSplashesModelVtx[] = {
#include "assets/objects/object_zo/gZoraSplashesModelVtx.inc.c"
};

Gfx gZoraSplashesMaterialDL[14] = {
#include "assets/objects/object_zo/gZoraSplashesMaterialDL.inc.c"
};

Gfx gZoraSplashesModelDL[3] = {
#include "assets/objects/object_zo/gZoraSplashesModelDL.inc.c"
};
