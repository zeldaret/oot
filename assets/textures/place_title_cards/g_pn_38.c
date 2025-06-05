#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gHyruleCastleTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleCastleTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gHyruleCastleTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleCastleTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gHyruleCastleTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleCastleTitleCardGERTex.ia8.inc.c"
};

u64 gHyruleCastleTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleCastleTitleCardFRATex.ia8.inc.c"
};
#endif
