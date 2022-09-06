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

const ActorInit Bg_Umajump_InitVars = {
    ACTOR_BG_UMAJUMP,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_UMAJUMP,
    sizeof(BgUmaJump),
    (ActorFunc)BgUmaJump_Init,
    (ActorFunc)BgUmaJump_Destroy,
    (ActorFunc)BgUmaJump_Update,
    (ActorFunc)BgUmaJump_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgUmaJump_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgUmaJump* this = (BgUmaJump*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->bg.actor, sInitChain);
    BgActor_Init(&this->bg, DPM_UNK);
    CollisionHeader_GetVirtual(&gJumpableHorseFenceCol, &colHeader);
    this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);

    if (this->bg.actor.params == 1) {
        if (!Flags_GetEventChkInf(EVENTCHKINF_18) && (DREG(1) == 0)) {
            Actor_Kill(&this->bg.actor);
            return;
        }
        this->bg.actor.flags |= ACTOR_FLAG_4 | ACTOR_FLAG_5;
    }
}

void BgUmaJump_Destroy(Actor* thisx, PlayState* play) {
    BgUmaJump* this = (BgUmaJump*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
}

void BgUmaJump_Update(Actor* thisx, PlayState* play) {
}

void BgUmaJump_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gJumpableHorseFenceDL);
}
