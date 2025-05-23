/*
 * File: z_bg_spot01_fusya.c
 * Overlay: Bg_Spot01_Fusya
 * Description: Windmill Sails
 */

#include "z_bg_spot01_fusya.h"
#include "assets/objects/object_spot01_objects/object_spot01_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgSpot01Fusya_Init(Actor* thisx, PlayState* play);
void BgSpot01Fusya_Destroy(Actor* thisx, PlayState* play);
void BgSpot01Fusya_Update(Actor* thisx, PlayState* play);
void BgSpot01Fusya_Draw(Actor* thisx, PlayState* play);

void func_808AAA50(BgSpot01Fusya* this, PlayState* play);

ActorProfile Bg_Spot01_Fusya_Profile = {
    /**/ ACTOR_BG_SPOT01_FUSYA,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT01_OBJECTS,
    /**/ sizeof(BgSpot01Fusya),
    /**/ BgSpot01Fusya_Init,
    /**/ BgSpot01Fusya_Destroy,
    /**/ BgSpot01Fusya_Update,
    /**/ BgSpot01Fusya_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 12800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1300, ICHAIN_STOP),
};

void BgSpot01Fusya_SetupAction(BgSpot01Fusya* this, BgSpot01FusyaActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot01Fusya_Init(Actor* thisx, PlayState* play) {
    BgSpot01Fusya* this = (BgSpot01Fusya*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->unk_154 = 100.0f;
    this->unk_158 = 100.0f;
    this->unk_15C = 0.5f;
    if (!IS_CUTSCENE_LAYER) {
        CLEAR_EVENTCHKINF(EVENTCHKINF_65);
    }
    BgSpot01Fusya_SetupAction(this, func_808AAA50);
}

void BgSpot01Fusya_Destroy(Actor* thisx, PlayState* play) {
}

void func_808AAA50(BgSpot01Fusya* this, PlayState* play) {
    f32 temp;
    Actor* thisx = &this->actor;

    if (GET_EVENTCHKINF(EVENTCHKINF_65)) {
        this->unk_158 = 1800.0f;
    }
    thisx->shape.rot.z += this->unk_154;
    temp = ((this->unk_154 - 100.0f) / 1700.0f) + 1.0f;
    func_800F436C(&thisx->projectedPos, 0x2085, temp);
    Math_ApproachF(&this->unk_154, this->unk_158, this->unk_15C, 100.0f);
}

void BgSpot01Fusya_Update(Actor* thisx, PlayState* play) {
    BgSpot01Fusya* this = (BgSpot01Fusya*)thisx;

    this->actionFunc(this, play);
}

void BgSpot01Fusya_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot01_fusya.c", 210);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_spot01_fusya.c", 214);
    gSPDisplayList(POLY_OPA_DISP++, gKakarikoWindmillSailsDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot01_fusya.c", 219);
}
