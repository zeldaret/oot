#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gBombchuBowlingAlleyCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBombchuBowlingAlleyCardJPNTex.ia8.inc.c"
};
#endif

u64 gBombchuBowlingAlleyCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBombchuBowlingAlleyCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gBombchuBowlingAlleyCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBombchuBowlingAlleyCardGERTex.ia8.inc.c"
};

u64 gBombchuBowlingAlleyCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gBombchuBowlingAlleyCardFRATex.ia8.inc.c"
};
#endif
