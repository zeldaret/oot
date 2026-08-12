#include "rupee.h"
#include "gfx.h"
#include "region.h"

u64 gRupeeGreenTex[TEX_LEN(u64, gRupeeGreenTex_WIDTH, gRupeeGreenTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeeGreenTex.rgba16.inc.c"
};

u64 gRupeeBlueTex[TEX_LEN(u64, gRupeeBlueTex_WIDTH, gRupeeBlueTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeeBlueTex.rgba16.inc.c"
};

u64 gRupeeRedTex[TEX_LEN(u64, gRupeeRedTex_WIDTH, gRupeeRedTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeeRedTex.rgba16.inc.c"
};

u64 gRupeeOrangeTex[TEX_LEN(u64, gRupeeOrangeTex_WIDTH, gRupeeOrangeTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeeOrangeTex.rgba16.inc.c"
};

u64 gRupeePinkTex[TEX_LEN(u64, gRupeePinkTex_WIDTH, gRupeePinkTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeePinkTex.rgba16.inc.c"
};

u64 gRupeeSilverTex[TEX_LEN(u64, gRupeeSilverTex_WIDTH, gRupeeSilverTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gRupeeSilverTex.rgba16.inc.c"
};

Vtx gRupeeVtx[] = {
#include "assets/objects/gameplay_keep/gRupeeVtx.inc.c"
};

Gfx gRupeeDL[26] = {
#include "assets/objects/gameplay_keep/gRupeeDL.inc.c"
};
