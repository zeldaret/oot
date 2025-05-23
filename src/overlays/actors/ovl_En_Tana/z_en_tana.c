/*
 * File: z_en_tana.c
 * Overlay: ovl_En_Tana
 * Description: Shop Shelves
 */

#include "z_en_tana.h"
#include "assets/objects/object_shop_dungen/object_shop_dungen.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnTana_Init(Actor* thisx, PlayState* play);
void EnTana_Destroy(Actor* thisx, PlayState* play);
void EnTana_Update(Actor* thisx, PlayState* play);
void EnTana_DrawWoodenShelves(Actor* thisx, PlayState* play);
void EnTana_DrawStoneShelves(Actor* thisx, PlayState* play);

ActorProfile En_Tana_Profile = {
    /**/ ACTOR_EN_TANA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SHOP_DUNGEN,
    /**/ sizeof(EnTana),
    /**/ EnTana_Init,
    /**/ EnTana_Destroy,
    /**/ EnTana_Update,
    /**/ NULL,
};

#if DEBUG_FEATURES
//! @bug A third entry is missing here. When printing the string indexed by `params` for type 2, the
//! next data entry will be dereferenced and print garbage, stopping any future printing.
//! In a non-matching context, this can cause a crash if the next item isn't a valid pointer.
static const char* sShelfTypes[] = {
    "木の棚", // "Wooden Shelves"
    "石の棚", // "Stone Shelves"
#ifdef AVOID_UB
    "",
#endif
};
#endif

static const ActorFunc sDrawFuncs[] = {
    EnTana_DrawWoodenShelves,
    EnTana_DrawStoneShelves,
    EnTana_DrawStoneShelves,
};

static Gfx* sShelfDLists[] = {
    gShopDungenWoodenShelvesDL,
    gShopDungenStoneShelvesDL,
    gShopDungenStoneShelvesDL,
};

static void* sStoneTextures[] = {
    NULL,
    gShopDungenStone1Tex,
    gShopDungenStone2Tex,
};

void EnTana_Init(Actor* thisx, PlayState* play) {
    EnTana* this = (EnTana*)thisx;

    PRINTF("☆☆☆ %s ☆☆☆\n", sShelfTypes[thisx->params]);
    Actor_SetScale(thisx, 1.0f);
    thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    thisx->draw = sDrawFuncs[thisx->params];
}

void EnTana_Destroy(Actor* thisx, PlayState* play) {
}

void EnTana_Update(Actor* thisx, PlayState* play) {
}

void EnTana_DrawWoodenShelves(Actor* thisx, PlayState* play) {
    EnTana* this = (EnTana*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tana.c", 148);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_tana.c", 152);
    gSPDisplayList(POLY_OPA_DISP++, sShelfDLists[thisx->params]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tana.c", 157);
}

void EnTana_DrawStoneShelves(Actor* thisx, PlayState* play) {
    EnTana* this = (EnTana*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tana.c", 163);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sStoneTextures[thisx->params]));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_tana.c", 169);
    gSPDisplayList(POLY_OPA_DISP++, sShelfDLists[thisx->params]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tana.c", 174);
}
