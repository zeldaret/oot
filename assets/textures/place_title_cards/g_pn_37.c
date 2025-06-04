#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gHauntedWastelandTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHauntedWastelandTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gHauntedWastelandTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHauntedWastelandTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gHauntedWastelandTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHauntedWastelandTitleCardGERTex.ia8.inc.c"
};

u64 gHauntedWastelandTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHauntedWastelandTitleCardFRATex.ia8.inc.c"
};
#endif
