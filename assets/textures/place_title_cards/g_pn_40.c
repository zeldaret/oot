#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gDeathMountainCraterTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainCraterTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gDeathMountainCraterTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainCraterTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gDeathMountainCraterTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainCraterTitleCardGERTex.ia8.inc.c"
};

u64 gDeathMountainCraterTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainCraterTitleCardFRATex.ia8.inc.c"
};
#endif
