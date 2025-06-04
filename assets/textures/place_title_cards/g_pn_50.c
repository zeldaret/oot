#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gHappyMaskShopTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHappyMaskShopTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gHappyMaskShopTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHappyMaskShopTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gHappyMaskShopTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHappyMaskShopTitleCardGERTex.ia8.inc.c"
};

u64 gHappyMaskShopTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHappyMaskShopTitleCardFRATex.ia8.inc.c"
};
#endif
