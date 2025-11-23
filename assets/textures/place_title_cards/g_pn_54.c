#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gBottomOfTheWellTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBottomOfTheWellTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gBottomOfTheWellTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBottomOfTheWellTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gBottomOfTheWellTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBottomOfTheWellTitleCardGERTex.ia8.inc.c"
};

u64 gBottomOfTheWellTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBottomOfTheWellTitleCardFRATex.ia8.inc.c"
};
#endif
