#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gDodongosCavernTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDodongosCavernTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gDodongosCavernTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDodongosCavernTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gDodongosCavernTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDodongosCavernTitleCardGERTex.ia8.inc.c"
};

u64 gDodongosCavernTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gDodongosCavernTitleCardFRATex.ia8.inc.c"
};
#endif
