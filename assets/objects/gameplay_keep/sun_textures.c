#include "sun_textures.h"

u64 gSun1Tex[TEX_LEN(u64, gSun1Tex_WIDTH, gSun1Tex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gSun1Tex.i4.inc.c"
};

u64 gSun2Tex[TEX_LEN(u64, gSun2Tex_WIDTH, gSun2Tex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gSun2Tex.i4.inc.c"
};

u64 gSun3Tex[TEX_LEN(u64, gSun3Tex_WIDTH, gSun3Tex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gSun3Tex.i4.inc.c"
};

u8 gameplay_keep_zeros_04C940[32] = { 0 };
