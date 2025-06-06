#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gGreatFairysFountainTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGreatFairysFountainTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gGreatFairysFountainTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGreatFairysFountainTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gGreatFairysFountainTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGreatFairysFountainTitleCardGERTex.ia8.inc.c"
};

u64 gGreatFairysFountainTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGreatFairysFountainTitleCardFRATex.ia8.inc.c"
};
#endif
