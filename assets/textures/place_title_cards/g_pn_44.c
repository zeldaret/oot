#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gRoyalFamilysTombTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gRoyalFamilysTombTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gRoyalFamilysTombTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gRoyalFamilysTombTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gRoyalFamilysTombTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gRoyalFamilysTombTitleCardGERTex.ia8.inc.c"
};

u64 gRoyalFamilysTombTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gRoyalFamilysTombTitleCardFRATex.ia8.inc.c"
};
#endif
