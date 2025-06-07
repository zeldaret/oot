#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gInsideGanonsCastleTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gInsideGanonsCastleTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gInsideGanonsCastleTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gInsideGanonsCastleTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gInsideGanonsCastleTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gInsideGanonsCastleTitleCardGERTex.ia8.inc.c"
};

u64 gInsideGanonsCastleTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gInsideGanonsCastleTitleCardFRATex.ia8.inc.c"
};
#endif
