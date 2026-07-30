#include "z_bg_po_syokudai.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "light.h"
#include "play_state.h"

#include "assets/objects/gameplay_keep/eff_fire.h"
#include "assets/objects/object_syokudai/object_syokudai.h"

#define FLAGS 0

void BgPoSyokudai_Init(Actor* thisx, PlayState* play);
void BgPoSyokudai_Destroy(Actor* thisx, PlayState* play);
void BgPoSyokudai_Update(Actor* thisx, PlayState* play);
void BgPoSyokudai_Draw(Actor* thisx, PlayState* play);

static ColliderCylinderInit D_808A8960 = {
    { 9, 0, 0xD, 0x39, 0x20, 1 },
    { 0, { 0, 0, 0 }, { 0xFFCFFFFF, 0, 0 }, 0, 1, 1 },
    { 0xC, 0x3C, 0, { 0, 0, 0 } },
};
static Color_RGBA8 D_808A898C[4] = {
    { 0xFF, 0xAA, 0xFF, 0xFF },
    { 0xFF, 0xC8, 0x00, 0xFF },
    { 0x00, 0xAA, 0xFF, 0xFF },
    { 0xAA, 0xFF, 0x00, 0xFF },
};
static Color_RGBA8 D_808A899C[4] = {
    { 0x64, 0x00, 0xFF, 0xFF },
    { 0xFF, 0x00, 0x00, 0xFF },
    { 0x00, 0x00, 0xFF, 0xFF },
    { 0x00, 0x96, 0x00, 0xFF },
};

ActorProfile Bg_Po_Syokudai_Profile = {
    /**/ ACTOR_BG_PO_SYOKUDAI,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SYOKUDAI,
    /**/ sizeof(BgPoSyokudai),
    /**/ BgPoSyokudai_Init,
    /**/ BgPoSyokudai_Destroy,
    /**/ BgPoSyokudai_Update,
    /**/ BgPoSyokudai_Draw,
};

static InitChainEntry D_808A89CC[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgPoSyokudai_Init(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, D_808A89CC);
    this->unk14C = PARAMS_GET_U(thisx->params, 8, 8);
    this->actor.params &= 0x3F;
    this->actor.colChkInfo.mass = 0xFF;
    this->unk150 = LightContext_InsertLight(play, &play->lightCtx, &this->unk154);
    Lights_PointGlowSetInfo(&this->unk154, this->actor.world.pos.x, (s16)this->actor.world.pos.y + 65,
                            this->actor.world.pos.z, 0, 0, 0, 0);
    Collider_InitCylinder(play, &this->unk164);
    Collider_SetCylinder(play, &this->unk164, &this->actor, &D_808A8960);
    this->unk164.dim.pos.x = this->actor.world.pos.x;
    this->unk164.dim.pos.y = this->actor.world.pos.y;
    this->unk164.dim.pos.z = this->actor.world.pos.z;
    if ((this->unk14C == 0) && Flags_GetSwitch(play, 0x1F) && Flags_GetSwitch(play, 0x1E) &&
        Flags_GetSwitch(play, 0x1D) && !Flags_GetSwitch(play, this->actor.params)) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, 119.0f, 225.0f, -1566.0f, 0, 0, 0, this->actor.params);
        play->envCtx.lightSettingOverride = 4;
    } else if (!Flags_GetSwitch(play, 0x1C) && !Flags_GetSwitch(play, 0x1B)) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,
                    this->actor.world.pos.y + 52.0f, this->actor.world.pos.z, 0, 0, 0,
                    (this->unk14C << 8) + this->actor.params + 0x1000);
    } else if (!Flags_GetSwitch(play, this->actor.params) &&
               (play->envCtx.lightSettingOverride == LIGHT_SETTING_OVERRIDE_NONE)) {
        play->envCtx.lightSettingOverride = 4;
    }
    this->unk14E = Rand_ZeroOne() * 20.0f;
}

void BgPoSyokudai_Destroy(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->unk150);
    Collider_DestroyCylinder(play, &this->unk164);
    if (play->envCtx.lightSettingOverride != LIGHT_SETTING_OVERRIDE_NONE) {
        play->envCtx.lightSettingOverride = LIGHT_SETTING_OVERRIDE_NONE;
    }
}

void BgPoSyokudai_Update(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    s32 pad;

    CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk164.base);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk164.base);
    if (Flags_GetSwitch(play, this->actor.params)) {
        Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
    this->unk14E += 1;
}

void BgPoSyokudai_Draw(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    f32 temp_fv1;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_po_syokudai.c", 315);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_po_syokudai.c", 319);
    gSPDisplayList(POLY_OPA_DISP++, gGoldenTorchDL);
    if (Flags_GetSwitch(play, this->actor.params)) {
        Color_RGBA8* sp64;
        Color_RGBA8* sp60;

        sp64 = &D_808A898C[this->unk14C];
        sp60 = &D_808A899C[this->unk14C];
        temp_fv1 = (Rand_ZeroOne() * 0.3f) + 0.7f;
        Lights_PointSetColorAndRadius(&this->unk154, sp64->r * temp_fv1, sp64->g * temp_fv1, sp64->b * temp_fv1, 200);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 64, 1, 0,
                                    (this->unk14E * -0x14) & 0x1FF, 32, 128));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, sp64->r, sp64->g, sp64->b, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, sp60->r, sp60->g, sp60->b, 255);
        Matrix_Translate(0.0f, 52.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateY(
            BINANG_TO_RAD((s16)((Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) - this->actor.shape.rot.y) + 0x8000)),
            MTXMODE_APPLY);
        Matrix_Scale(0.0027f, 0.0027f, 0.0027f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_po_syokudai.c", 368);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_po_syokudai.c", 373);
}
