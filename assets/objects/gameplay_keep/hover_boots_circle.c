#include "hover_boots_circle.h"
#include "gfx.h"

u64 gEffUnknown13Tex[TEX_LEN(u64, gEffUnknown13Tex_WIDTH, gEffUnknown13Tex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gEffUnknown13Tex.i8.inc.c"
};

u64 gEffUnknown14Tex[TEX_LEN(u64, gEffUnknown14Tex_WIDTH, gEffUnknown14Tex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gEffUnknown14Tex.i8.inc.c"
};

Vtx gHoverBootsCircleVtx[] = {
#include "assets/objects/gameplay_keep/gHoverBootsCircleVtx.inc.c"
};

Gfx gHoverBootsCircleDL[26] = {
#include "assets/objects/gameplay_keep/gHoverBootsCircleDL.inc.c"
};
