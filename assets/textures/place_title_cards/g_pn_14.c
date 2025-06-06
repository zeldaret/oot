#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gChamberOfTheSagesTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gChamberOfTheSagesTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gChamberOfTheSagesTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gChamberOfTheSagesTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gChamberOfTheSagesTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gChamberOfTheSagesTitleCardGERTex.ia8.inc.c"
};

u64 gChamberOfTheSagesTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gChamberOfTheSagesTitleCardFRATex.ia8.inc.c"
};
#endif
