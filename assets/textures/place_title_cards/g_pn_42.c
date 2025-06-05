#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gLonLonRanchTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLonLonRanchTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gLonLonRanchTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLonLonRanchTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gLonLonRanchTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLonLonRanchTitleCardGERTex.ia8.inc.c"
};

u64 gLonLonRanchTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLonLonRanchTitleCardFRATex.ia8.inc.c"
};
#endif
