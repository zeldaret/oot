#include "object_zo.h"
#include "gfx.h"

#define gZoraBubblesTex_WIDTH 16
#define gZoraBubblesTex_HEIGHT 16
u64 gZoraBubblesTex[TEX_LEN(u64, gZoraBubblesTex_WIDTH, gZoraBubblesTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraBubblesTex.ia8.inc.c"
};

Vtx gZoraBubblesModelVtx[] = {
#include "assets/objects/object_zo/gZoraBubblesModelVtx.inc.c"
};

Gfx gZoraBubblesMaterialDL[12] = {
#include "assets/objects/object_zo/gZoraBubblesMaterialDL.inc.c"
};

Gfx gZoraBubblesModelDL[3] = {
#include "assets/objects/object_zo/gZoraBubblesModelDL.inc.c"
};
