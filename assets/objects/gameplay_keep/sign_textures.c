#include "sign_textures.h"

u64 gSignRectangularSideTex[TEX_LEN(u64, gSignRectangularSideTex_WIDTH, gSignRectangularSideTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gSignRectangularSideTex.rgba16.inc.c"
};

u64 gSignRectangularFrontTex[TEX_LEN(u64, gSignRectangularFrontTex_WIDTH, gSignRectangularFrontTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gSignRectangularFrontTex.rgba16.inc.c"
};

u64 gSignPostWoodTex[TEX_LEN(u64, gSignPostWoodTex_WIDTH, gSignPostWoodTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gSignPostWoodTex.rgba16.inc.c"
};

u64 gSignLetteringTex[TEX_LEN(u64, gSignLetteringTex_WIDTH, gSignLetteringTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gSignLetteringTex.rgba16.inc.c"
};
