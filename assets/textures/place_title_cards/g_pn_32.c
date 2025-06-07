#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gLakeHyliaTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakeHyliaTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gLakeHyliaTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakeHyliaTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gLakeHyliaTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakeHyliaTitleCardGERTex.ia8.inc.c"
};

u64 gLakeHyliaTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakeHyliaTitleCardFRATex.ia8.inc.c"
};
#endif
