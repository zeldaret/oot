#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gDeathMountainTrailTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainTrailTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gDeathMountainTrailTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainTrailTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gDeathMountainTrailTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainTrailTitleCardGERTex.ia8.inc.c"
};

u64 gDeathMountainTrailTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDeathMountainTrailTitleCardFRATex.ia8.inc.c"
};
#endif
