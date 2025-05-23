/*
 * File: z_bg_jya_block.c
 * Overlay: ovl_Bg_Jya_Block
 * Description: Silver Block (Child Link)
 */

#include "z_bg_jya_block.h"
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"

#define FLAGS 0

void BgJyaBlock_Init(Actor* thisx, PlayState* play);
void BgJyaBlock_Destroy(Actor* thisx, PlayState* play);
void BgJyaBlock_Update(Actor* thisx, PlayState* play);
void BgJyaBlock_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Jya_Block_Profile = {
    /**/ ACTOR_BG_JYA_BLOCK,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_DANGEON_KEEP,
    /**/ sizeof(BgJyaBlock),
    /**/ BgJyaBlock_Init,
    /**/ BgJyaBlock_Destroy,
    /**/ BgJyaBlock_Update,
    /**/ BgJyaBlock_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 333, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1500, ICHAIN_STOP),
};

void BgJyaBlock_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgJyaBlock* this = (BgJyaBlock*)thisx;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gPushBlockCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if ((LINK_AGE_IN_YEARS != YEARS_CHILD) || !Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6))) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgJyaBlock_Destroy(Actor* thisx, PlayState* play) {
    BgJyaBlock* this = (BgJyaBlock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgJyaBlock_Update(Actor* thisx, PlayState* play) {
    BgJyaBlock* this = (BgJyaBlock*)thisx;
    Player* player = GET_PLAYER(play);

    player->stateFlags2 &= ~PLAYER_STATE2_4;
    this->dyna.unk_150 = 0.0f;
}

void BgJyaBlock_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_block.c", 145);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gPushBlockGrayTex));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_jya_block.c", 153);
    gDPSetEnvColor(POLY_OPA_DISP++, 232, 210, 176, 255);
    gSPDisplayList(POLY_OPA_DISP++, gPushBlockDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_block.c", 158);
}
