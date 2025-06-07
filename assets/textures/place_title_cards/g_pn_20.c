#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gGoronShopTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGoronShopTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gGoronShopTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGoronShopTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gGoronShopTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGoronShopTitleCardGERTex.ia8.inc.c"
};

u64 gGoronShopTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGoronShopTitleCardFRATex.ia8.inc.c"
};
#endif
