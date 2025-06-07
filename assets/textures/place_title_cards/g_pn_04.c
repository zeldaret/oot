#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gWaterTempleTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gWaterTempleTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gWaterTempleTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gWaterTempleTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gWaterTempleTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gWaterTempleTitleCardGERTex.ia8.inc.c"
};

u64 gWaterTempleTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gWaterTempleTitleCardFRATex.ia8.inc.c"
};
#endif
