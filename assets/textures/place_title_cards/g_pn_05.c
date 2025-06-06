#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gSpiritTempleTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSpiritTempleTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gSpiritTempleTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSpiritTempleTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gSpiritTempleTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSpiritTempleTitleCardGERTex.ia8.inc.c"
};

u64 gSpiritTempleTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSpiritTempleTitleCardFRATex.ia8.inc.c"
};
#endif
