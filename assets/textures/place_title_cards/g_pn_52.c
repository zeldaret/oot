#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gSacredForestMeadowTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSacredForestMeadowTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gSacredForestMeadowTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSacredForestMeadowTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gSacredForestMeadowTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSacredForestMeadowTitleCardGERTex.ia8.inc.c"
};

u64 gSacredForestMeadowTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gSacredForestMeadowTitleCardFRATex.ia8.inc.c"
};
#endif
