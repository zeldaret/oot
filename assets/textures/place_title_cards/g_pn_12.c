#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gCastleCourtyardTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gCastleCourtyardTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gCastleCourtyardTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gCastleCourtyardTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gCastleCourtyardTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gCastleCourtyardTitleCardGERTex.ia8.inc.c"
};

u64 gCastleCourtyardTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gCastleCourtyardTitleCardFRATex.ia8.inc.c"
};
#endif
