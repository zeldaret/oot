/*
 * File: z_bg_spot01_idomizu.c
 * Overlay: ovl_Bg_Spot01_Idomizu
 * Description: Kakariko Village Well Water
 */

#include "z_bg_spot01_idomizu.h"
#include "assets/objects/object_spot01_objects/object_spot01_objects.h"

#define FLAGS ACTOR_FLAG_DRAW_CULLING_DISABLED

void BgSpot01Idomizu_Init(Actor* thisx, PlayState* play);
void BgSpot01Idomizu_Destroy(Actor* thisx, PlayState* play);
void BgSpot01Idomizu_Update(Actor* thisx, PlayState* play);
void BgSpot01Idomizu_Draw(Actor* thisx, PlayState* play);

void BgSpot01Idomizu_UpdateWaterLevel(BgSpot01Idomizu* this, PlayState* play);

ActorProfile Bg_Spot01_Idomizu_Profile = {
    /**/ ACTOR_BG_SPOT01_IDOMIZU,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT01_OBJECTS,
    /**/ sizeof(BgSpot01Idomizu),
    /**/ BgSpot01Idomizu_Init,
    /**/ BgSpot01Idomizu_Destroy,
    /**/ BgSpot01Idomizu_Update,
    /**/ BgSpot01Idomizu_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgSpot01Idomizu_Init(Actor* thisx, PlayState* play) {
    BgSpot01Idomizu* this = (BgSpot01Idomizu*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (GET_EVENTCHKINF(EVENTCHKINF_DRAINED_WELL) || LINK_AGE_IN_YEARS == YEARS_ADULT) {
        this->waterHeight = -550.0f;
    } else {
        this->waterHeight = 52.0f;
    }
    this->actionFunc = BgSpot01Idomizu_UpdateWaterLevel;
    this->actor.world.pos.y = this->waterHeight;
}

void BgSpot01Idomizu_Destroy(Actor* thisx, PlayState* play) {
}

void BgSpot01Idomizu_UpdateWaterLevel(BgSpot01Idomizu* this, PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_DRAINED_WELL)) {
        this->waterHeight = -550.0f;
    }
    play->colCtx.colHeader->waterBoxes[0].ySurface = this->actor.world.pos.y;
    if (this->waterHeight < this->actor.world.pos.y) {
        Audio_PlaySfxGeneral(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
    Math_ApproachF(&this->actor.world.pos.y, this->waterHeight, 1.0f, 2.0f);
}

void BgSpot01Idomizu_Update(Actor* thisx, PlayState* play) {
    BgSpot01Idomizu* this = (BgSpot01Idomizu*)thisx;

    this->actionFunc(this, play);
}

void BgSpot01Idomizu_Draw(Actor* thisx, PlayState* play) {
    u32 frames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot01_idomizu.c", 228);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_spot01_idomizu.c", 232);

    frames = play->state.frames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - frames % 128, frames & 0x7F, 32, 32, 1,
                                frames % 128, frames & 0x7F, 32, 32));

    gSPDisplayList(POLY_XLU_DISP++, gKakarikoWellWaterDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot01_idomizu.c", 244);
}
