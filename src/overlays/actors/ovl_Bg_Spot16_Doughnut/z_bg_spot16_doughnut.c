/*
 * File: z_bg_spot16_doughnut.c
 * Overlay: ovl_Bg_Spot16_Doughnut
 * Description: Death Mountain cloud circle
 */

#include "z_bg_spot16_doughnut.h"
#include "assets/objects/object_efc_doughnut/object_efc_doughnut.h"
#include "terminal.h"

#define FLAGS 0

void BgSpot16Doughnut_Init(Actor* thisx, PlayState* play);
void BgSpot16Doughnut_Destroy(Actor* thisx, PlayState* play);
void BgSpot16Doughnut_Update(Actor* thisx, PlayState* play);
void BgSpot16Doughnut_Draw(Actor* thisx, PlayState* play);

void BgSpot16Doughnut_UpdateExpanding(Actor* thisx, PlayState* play);
void BgSpot16Doughnut_DrawExpanding(Actor* thisx, PlayState* play);

ActorProfile Bg_Spot16_Doughnut_Profile = {
    /**/ ACTOR_BG_SPOT16_DOUGHNUT,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_EFC_DOUGHNUT,
    /**/ sizeof(BgSpot16Doughnut),
    /**/ BgSpot16Doughnut_Init,
    /**/ BgSpot16Doughnut_Destroy,
    /**/ BgSpot16Doughnut_Update,
    /**/ BgSpot16Doughnut_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 5500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 5000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 5000, ICHAIN_STOP),
};

static s16 sScales[] = {
    0, 0, 70, 210, 300,
};

void BgSpot16Doughnut_Init(Actor* thisx, PlayState* play) {
    BgSpot16Doughnut* this = (BgSpot16Doughnut*)thisx;
    s32 params;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.1f);
    this->fireFlag = 0;
    this->envColorAlpha = 255;
    params = this->actor.params;
    if (params == 1 || params == 2 || params == 3 || params == 4) {
        Actor_SetScale(&this->actor, sScales[this->actor.params] * 1.0e-4f);
        this->actor.draw = BgSpot16Doughnut_DrawExpanding;
        this->actor.update = BgSpot16Doughnut_UpdateExpanding;
    } else {
        // Scales this actor for scenes where it is featured in the background,
        // Death Mountain itself falls into the default case.
        switch (play->sceneId) {
            case SCENE_KAKARIKO_VILLAGE:
                Actor_SetScale(&this->actor, 0.04f);
                break;
            case SCENE_TEMPLE_OF_TIME_EXTERIOR_DAY:
            case SCENE_TEMPLE_OF_TIME_EXTERIOR_NIGHT:
            case SCENE_TEMPLE_OF_TIME_EXTERIOR_RUINS:
                Actor_SetScale(&this->actor, 0.018f);
                break;
            default:
                Actor_SetScale(&this->actor, 0.1f);
                break;
        }
        PRINTF(VT_FGCOL(CYAN) "%f" VT_RST "\n", this->actor.scale.x);
        if (!LINK_IS_ADULT || GET_EVENTCHKINF(EVENTCHKINF_2F)) {
            this->fireFlag &= ~1;
        } else {
            this->fireFlag |= 1;
        }
        PRINTF("(ｓｐｏｔ１６ ドーナツ雲)(arg_data 0x%04x)\n", this->actor.params);
    }
}

void BgSpot16Doughnut_Destroy(Actor* thisx, PlayState* play) {
}

void BgSpot16Doughnut_Update(Actor* thisx, PlayState* play) {
    BgSpot16Doughnut* this = (BgSpot16Doughnut*)thisx;

    if (!(this->fireFlag & 1)) {
        this->actor.shape.rot.y -= 0x20;
        if (this->envColorAlpha < 255) {
            this->envColorAlpha += 5;
        } else {
            this->envColorAlpha = 255;
        }
    } else if (play->csCtx.state != CS_STATE_IDLE && play->csCtx.actorCues[2] != NULL &&
               play->csCtx.actorCues[2]->id == 2) {
        if (this->envColorAlpha >= 6) {
            this->envColorAlpha -= 5;
        } else {
            this->envColorAlpha = 0;
            this->fireFlag &= ~1;
        }
    }
}

// Update function for outwardly expanding and dissipating
void BgSpot16Doughnut_UpdateExpanding(Actor* thisx, PlayState* play) {
    BgSpot16Doughnut* this = (BgSpot16Doughnut*)thisx;

    if (this->envColorAlpha >= 6) {
        this->envColorAlpha -= 5;
    } else {
        Actor_Kill(&this->actor);
    }
    this->actor.shape.rot.y -= 0x20;
    Actor_SetScale(&this->actor, this->actor.scale.x + 0.0019999998f);
}

void BgSpot16Doughnut_Draw(Actor* thisx, PlayState* play) {
    BgSpot16Doughnut* this = (BgSpot16Doughnut*)thisx;
    u32 scroll = play->gameplayFrames & 0xFFFF;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 210);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 213);
    if (this->fireFlag & 1) {
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, scroll * (-1), 0, 16, 32, 1, scroll,
                                    scroll * (-2), 16, 32));
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, this->envColorAlpha);
        gSPDisplayList(POLY_XLU_DISP++, gDeathMountainCloudCircleFieryDL);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->envColorAlpha);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
        gSPDisplayList(POLY_XLU_DISP++, gDeathMountainCloudCircleNormalDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 238);
}

// Draw function for outwardly expanding and dissipating
void BgSpot16Doughnut_DrawExpanding(Actor* thisx, PlayState* play) {
    BgSpot16Doughnut* this = (BgSpot16Doughnut*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 245);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 248);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->envColorAlpha);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
    gSPDisplayList(POLY_XLU_DISP++, gDeathMountainCloudCircleNormalDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot16_doughnut.c", 256);
}
