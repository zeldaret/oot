#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gGravekeepersHutTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGravekeepersHutTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gGravekeepersHutTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGravekeepersHutTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gGravekeepersHutTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGravekeepersHutTitleCardGERTex.ia8.inc.c"
};

u64 gGravekeepersHutTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGravekeepersHutTitleCardFRATex.ia8.inc.c"
};
#endif
