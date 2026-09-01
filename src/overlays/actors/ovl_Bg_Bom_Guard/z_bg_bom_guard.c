/*
 * File: z_bg_bom_guard.c
 * Overlay: Bg_Bom_Guard
 * Description: Bombchu Bowling Alley invisible wall locking the player in the game area
 */

#include "z_bg_bom_guard.h"
#include "src/overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.h"

#include "printf.h"
#include "regs.h"
#include "terminal.h"
#include "translation.h"
#include "play_state.h"

#include "assets/objects/object_bowl/object_bowl.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgBomGuard_Init(Actor* thisx, PlayState* play);
void BgBomGuard_Destroy(Actor* thisx, PlayState* play);
void BgBomGuard_Update(Actor* thisx, PlayState* play);

void BgBomGuard_UpdateImpl(BgBomGuard* this, PlayState* play);

ActorProfile Bg_Bom_Guard_Profile = {
    /**/ ACTOR_BG_BOM_GUARD,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_BOWL,
    /**/ sizeof(BgBomGuard),
    /**/ BgBomGuard_Init,
    /**/ BgBomGuard_Destroy,
    /**/ BgBomGuard_Update,
    /**/ NULL,
};

void BgBomGuard_SetupAction(BgBomGuard* this, BgBomGuardActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgBomGuard_Init(Actor* thisx, PlayState* play) {
    BgBomGuard* this = (BgBomGuard*)thisx;
    s32 pad[2];
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gBowlingBgBomGuardCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) T(" ☆☆☆☆☆ 透明ガード出現 ☆☆☆☆☆ \n", " ☆☆☆☆☆ Transparent guard appears ☆☆☆☆☆ \n") VT_RST);

    this->dyna.actor.scale.x = 1.0f;
    this->dyna.actor.scale.y = 1.0f;
    this->dyna.actor.scale.z = 1.0f;
    this->homePos = this->dyna.actor.world.pos;
    BgBomGuard_SetupAction(this, BgBomGuard_UpdateImpl);
}

void BgBomGuard_Destroy(Actor* thisx, PlayState* play) {
    BgBomGuard* this = (BgBomGuard*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgBomGuard_UpdateImpl(BgBomGuard* this, PlayState* play) {
    Actor* it = play->actorCtx.actorLists[ACTORCAT_NPC].head;

    this->isActive = false;

    while (it != NULL) {
        if (it->id == ACTOR_EN_BOM_BOWL_MAN) {
            if ((((EnBomBowlMan*)it)->gameStartStatus != EN_BOM_BOWL_MAN_GAME_START_STATUS_INACTIVE) &&
                (fabsf(play->view.eye.x) > -20.0f) && (fabsf(play->view.eye.y) > 110.0f)) {
                this->isActive = true;
            }
            break;
        }
        it = it->next;
    }

    if (!this->isActive) {
        // Move under ground
        this->dyna.actor.world.pos.y = sREG(64) + -200.0f;
    } else {
        this->dyna.actor.world.pos.y = 0.0f;
    }
}

void BgBomGuard_Update(Actor* thisx, PlayState* play) {
    BgBomGuard* this = (BgBomGuard*)thisx;

    this->actionFunc(this, play);
}
