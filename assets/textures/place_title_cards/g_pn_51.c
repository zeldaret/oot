#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gTreasureBoxShopTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTreasureBoxShopTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gTreasureBoxShopTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTreasureBoxShopTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gTreasureBoxShopTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTreasureBoxShopTitleCardGERTex.ia8.inc.c"
};

u64 gTreasureBoxShopTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTreasureBoxShopTitleCardFRATex.ia8.inc.c"
};
#endif
