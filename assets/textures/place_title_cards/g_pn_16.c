#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gTempleOfTimeTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTempleOfTimeTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gTempleOfTimeTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTempleOfTimeTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gTempleOfTimeTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTempleOfTimeTitleCardGERTex.ia8.inc.c"
};

u64 gTempleOfTimeTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gTempleOfTimeTitleCardFRATex.ia8.inc.c"
};
#endif
