#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gHyruleFieldTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleFieldTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gHyruleFieldTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleFieldTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gHyruleFieldTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleFieldTitleCardGERTex.ia8.inc.c"
};

u64 gHyruleFieldTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gHyruleFieldTitleCardFRATex.ia8.inc.c"
};
#endif
