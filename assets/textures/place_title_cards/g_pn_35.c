#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gGERudoValleyTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoValleyTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gGERudoValleyTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoValleyTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gGERudoValleyTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoValleyTitleCardGERTex.ia8.inc.c"
};

u64 gGERudoValleyTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoValleyTitleCardFRATex.ia8.inc.c"
};
#endif
