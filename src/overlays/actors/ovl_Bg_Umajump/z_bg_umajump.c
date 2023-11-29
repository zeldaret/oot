/*
 * File: z_bg_umajump.c
 * Overlay: ovl_Bg_Umajump
 * Description: Hoppable horse fence
 */

#include "z_bg_umajump.h"
#include "assets/objects/object_umajump/object_umajump.h"

#define FLAGS 0

void BgUmaJump_Init(Actor* thisx, PlayState* play);
void BgUmaJump_Destroy(Actor* thisx, PlayState* play);
void BgUmaJump_Update(Actor* thisx, PlayState* play);
void BgUmaJump_Draw(Actor* thisx, PlayState* play);

ActorInit Bg_Umajump_InitVars = {
    /**/ ACTOR_BG_UMAJUMP,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_UMAJUMP,
    /**/ sizeof(BgUmaJump),
    /**/ BgUmaJump_Init,
    /**/ BgUmaJump_Destroy,
    /**/ BgUmaJump_Update,
    /**/ BgUmaJump_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgUmaJump_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgUmaJump* this = (BgUmaJump*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gJumpableHorseFenceCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.actor.params == 1) {
        if (!Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) && (DREG(1) == 0)) {
            Actor_Kill(&this->dyna.actor);
            return;
        }
        this->dyna.actor.flags |= ACTOR_FLAG_4 | ACTOR_FLAG_5;
    }
}

void BgUmaJump_Destroy(Actor* thisx, PlayState* play) {
    BgUmaJump* this = (BgUmaJump*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgUmaJump_Update(Actor* thisx, PlayState* play) {
}

void BgUmaJump_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gJumpableHorseFenceDL);
}
