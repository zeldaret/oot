/*
 * File: z_bg_haka_water.c
 * Overlay: ovl_Bg_Haka_Water
 * Description: Bottom of the Well water level changer
 */

#include "z_bg_haka_water.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64play.h"

#include "assets/objects/object_hakach_objects/object_hakach_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgHakaWater_Init(Actor* thisx, PlayState* play);
void BgHakaWater_Destroy(Actor* thisx, PlayState* play);
void BgHakaWater_Update(Actor* thisx, PlayState* play);
void BgHakaWater_Draw(Actor* thisx, PlayState* play);

void BgHakaWater_LowerWater(BgHakaWater* this, PlayState* play);
void BgHakaWater_Wait(BgHakaWater* this, PlayState* play);
void BgHakaWater_ChangeWaterLevel(BgHakaWater* this, PlayState* play);

ActorProfile Bg_Haka_Water_Profile = {
    /**/ ACTOR_BG_HAKA_WATER,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_HAKACH_OBJECTS,
    /**/ sizeof(BgHakaWater),
    /**/ BgHakaWater_Init,
    /**/ BgHakaWater_Destroy,
    /**/ BgHakaWater_Update,
    /**/ BgHakaWater_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaWater_Init(Actor* thisx, PlayState* play) {
    BgHakaWater* this = (BgHakaWater*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (Flags_GetSwitch(play, this->actor.params)) {
        this->isLowered = true;
        this->actor.home.pos.y -= 200.0f;
        this->actor.world.pos.y = this->actor.home.pos.y;
    } else {
        this->isLowered = false;
    }
    BgHakaWater_LowerWater(this, play);
    this->actionFunc = BgHakaWater_Wait;
}

void BgHakaWater_Destroy(Actor* thisx, PlayState* play) {
}

void BgHakaWater_LowerWater(BgHakaWater* this, PlayState* play) {
    s32 i;

    for (i = 0; i < 9; i++) {
        play->colCtx.colHeader->waterBoxes[i].ySurface = (s16)this->actor.world.pos.y - 8;
    }
}

void BgHakaWater_Wait(BgHakaWater* this, PlayState* play) {
    if ((!this->isLowered && Flags_GetSwitch(play, this->actor.params)) ||
        (this->isLowered && !Flags_GetSwitch(play, this->actor.params))) {
        if (this->isLowered) {
            this->isLowered = false;
            this->actor.draw = BgHakaWater_Draw;
            this->actor.home.pos.y += 200.0f;
        } else {
            this->isLowered = true;
            this->actor.home.pos.y -= 200.0f;
        }
        this->actionFunc = BgHakaWater_ChangeWaterLevel;
    }
}

void BgHakaWater_ChangeWaterLevel(BgHakaWater* this, PlayState* play) {
    if (!this->isLowered && Flags_GetSwitch(play, this->actor.params)) {
        this->isLowered = true;
        this->actor.home.pos.y -= 200.0f;
    } else if (this->isLowered && !Flags_GetSwitch(play, this->actor.params)) {
        this->isLowered = false;
        this->actor.home.pos.y += 200.0f;
    }

    if (this->actor.home.pos.y < this->actor.world.pos.y) {
        Actor_PlaySfx_FlaggedCentered2(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else {
        Actor_PlaySfx_FlaggedCentered2(&this->actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }

    if (Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.5f) != 0) {
        this->actionFunc = BgHakaWater_Wait;
        if (this->isLowered) {
            this->actor.draw = NULL;
        }
    }
    BgHakaWater_LowerWater(this, play);
}

void BgHakaWater_Update(Actor* thisx, PlayState* play) {
    BgHakaWater* this = (BgHakaWater*)thisx;

    this->actionFunc(this, play);
}

void BgHakaWater_Draw(Actor* thisx, PlayState* play) {
    BgHakaWater* this = (BgHakaWater*)thisx;
    s32 pad;
    f32 temp;
    s32 pad2;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka_water.c", 287);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    if (this->isLowered) {
        temp = this->actor.world.pos.y - this->actor.home.pos.y;
    } else {
        temp = this->actor.world.pos.y - (this->actor.home.pos.y - 200.0f);
    }

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (u8)(0.765f * temp));
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, play->gameplayFrames % 128,
                                play->gameplayFrames % 128, 32, 32, 1, 0, (0 - play->gameplayFrames) % 128, 32, 32));

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_haka_water.c", 312);
    gSPDisplayList(POLY_XLU_DISP++, gBotwWaterRingDL);

    Matrix_Translate(0.0f, 92.0f, -1680.0f, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    temp -= 170.0f;
    if (temp < 0.0f) {
        temp = 0.0f;
    }

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (u8)(5.1f * temp));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_haka_water.c", 328);
    gSPDisplayList(POLY_XLU_DISP++, gBotwWaterFallDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka_water.c", 332);
}
