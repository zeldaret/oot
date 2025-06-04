#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gHouseOfSkulltulaTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHouseOfSkulltulaTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gHouseOfSkulltulaTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHouseOfSkulltulaTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gHouseOfSkulltulaTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHouseOfSkulltulaTitleCardGERTex.ia8.inc.c"
};

u64 gHouseOfSkulltulaTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHouseOfSkulltulaTitleCardFRATex.ia8.inc.c"
};
#endif
