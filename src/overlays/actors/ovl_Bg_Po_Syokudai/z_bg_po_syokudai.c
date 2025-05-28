/*
 * File: z_bg_po_syokudai.c
 * Overlay: ovl_Bg_Po_Syokudai
 * Description: Golden Torch Stand (Poe Sisters)
 */

#include "z_bg_po_syokudai.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z64light.h"
#include "z64play.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_syokudai/object_syokudai.h"

#define FLAGS 0

typedef enum PoeFlameColor {
    POE_FLAME_PURPLE, // Meg
    POE_FLAME_RED,    // Joelle
    POE_FLAME_BLUE,   // Beth
    POE_FLAME_GREEN   // Amy
} PoeFlameColor;

#define POE_TORCH_FLAG 0x1C

void BgPoSyokudai_Init(Actor* thisx, PlayState* play);
void BgPoSyokudai_Destroy(Actor* thisx, PlayState* play);
void BgPoSyokudai_Update(Actor* thisx, PlayState* play);
void BgPoSyokudai_Draw(Actor* thisx, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 12, 60, 0, { 0, 0, 0 } },
};

static Color_RGBA8 sPrimColors[] = {
    { 255, 170, 255, 255 },
    { 255, 200, 0, 255 },
    { 0, 170, 255, 255 },
    { 170, 255, 0, 255 },
};

static Color_RGBA8 sEnvColors[] = {
    { 100, 0, 255, 255 },
    { 255, 0, 0, 255 },
    { 0, 0, 255, 255 },
    { 0, 150, 0, 255 },
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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgPoSyokudai_Init(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    s32 pad;

    Actor_ProcessInitChain(thisx, sInitChain);

    this->flameColor = PARAMS_GET_U(thisx->params, 8, 8);
    thisx->params &= 0x3F;

    thisx->colChkInfo.mass = MASS_IMMOVABLE;

    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, thisx->world.pos.x, (s16)thisx->world.pos.y + 65, thisx->world.pos.z, 0,
                            0, 0, 0);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, thisx, &sCylinderInit);

    this->collider.dim.pos.x = thisx->world.pos.x;
    this->collider.dim.pos.y = thisx->world.pos.y;
    this->collider.dim.pos.z = thisx->world.pos.z;

    if (this->flameColor == POE_FLAME_PURPLE && Flags_GetSwitch(play, POE_TORCH_FLAG + POE_FLAME_GREEN) &&
        Flags_GetSwitch(play, POE_TORCH_FLAG + POE_FLAME_BLUE) &&
        Flags_GetSwitch(play, POE_TORCH_FLAG + POE_FLAME_RED) && !Flags_GetSwitch(play, thisx->params)) {

        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, 119.0f, 225.0f, -1566.0f, 0, 0, 0, thisx->params);
        play->envCtx.lightSettingOverride = 4;

    } else if (!Flags_GetSwitch(play, POE_TORCH_FLAG + POE_FLAME_PURPLE) && !Flags_GetSwitch(play, 0x1B)) {

        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_PO_SISTERS, thisx->world.pos.x, thisx->world.pos.y + 52.0f,
                    thisx->world.pos.z, 0, 0, 0, (this->flameColor << 8) + thisx->params + 0x1000);

    } else if (!Flags_GetSwitch(play, thisx->params)) {
        if (play->envCtx.lightSettingOverride == LIGHT_SETTING_OVERRIDE_NONE) {
            play->envCtx.lightSettingOverride = 4;
        }
    }

    this->flameTextureScroll = (s16)(Rand_ZeroOne() * 20.0f);
}

void BgPoSyokudai_Destroy(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    Collider_DestroyCylinder(play, &this->collider);

    if (play->envCtx.lightSettingOverride != LIGHT_SETTING_OVERRIDE_NONE) {
        play->envCtx.lightSettingOverride = LIGHT_SETTING_OVERRIDE_NONE;
    }
}

void BgPoSyokudai_Update(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    s32 pad;

    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    if (Flags_GetSwitch(play, this->actor.params)) {
        Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
    this->flameTextureScroll++;
}

void BgPoSyokudai_Draw(Actor* thisx, PlayState* play) {
    BgPoSyokudai* this = (BgPoSyokudai*)thisx;
    f32 lightBrightness;
    u8 red;
    u8 green;
    u8 blue;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_po_syokudai.c", 315);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_po_syokudai.c", 319);
    gSPDisplayList(POLY_OPA_DISP++, gGoldenTorchDL);

    if (Flags_GetSwitch(play, this->actor.params)) {
        Color_RGBA8* primColor = &sPrimColors[this->flameColor];
        Color_RGBA8* envColor = &sEnvColors[this->flameColor];

        lightBrightness = (0.3f * Rand_ZeroOne()) + 0.7f;

        red = (u8)(primColor->r * lightBrightness);
        green = (u8)(primColor->g * lightBrightness);
        blue = (u8)(primColor->b * lightBrightness);

        Lights_PointSetColorAndRadius(&this->lightInfo, red, green, blue, 200);

        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 64, 1, 0,
                                    (this->flameTextureScroll * -20) & 0x1FF, 32, 128));

        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, primColor->r, primColor->g, primColor->b, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, envColor->r, envColor->g, envColor->b, 255);

        Matrix_Translate(0.0f, 52.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateY(
            BINANG_TO_RAD((s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) - this->actor.shape.rot.y + 0x8000)),
            MTXMODE_APPLY);
        Matrix_Scale(0.0027f, 0.0027f, 0.0027f, MTXMODE_APPLY);

        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_po_syokudai.c", 368);
        gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_po_syokudai.c", 373);
}
