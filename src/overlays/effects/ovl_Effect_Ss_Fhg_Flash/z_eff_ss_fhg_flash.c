/*
 * File: z_eff_ss_fhg_flash.c
 * Overlay: ovl_Effect_Ss_Fhg_Flash
 * Description: Shock and Light Ball Effect
 */

#include "z_eff_ss_fhg_flash.h"
#include "overlays/actors/ovl_Boss_Ganondrof/z_boss_ganondrof.h"
#include "assets/objects/object_fhg/object_fhg.h"

#define rAlpha regs[0]
#define rObjectSlot regs[2]
#define rXZRot regs[3]
#define rParam regs[4]
#define rScale regs[8]

u32 EffectSsFhgFlash_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFhgFlash_DrawLightBall(PlayState* play, u32 index, EffectSs* this);
void EffectSsFhgFlash_UpdateLightBall(PlayState* play, u32 index, EffectSs* this);
void EffectSsFhgFlash_DrawShock(PlayState* play, u32 index, EffectSs* this);
void EffectSsFhgFlash_UpdateShock(PlayState* play, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Fhg_Flash_InitVars = {
    EFFECT_SS_FHG_FLASH,
    EffectSsFhgFlash_Init,
};

// Should eventually come from assets/overlays/ovl_Effect_Ss_Fhg_Flash/ovl_Effect_Ss_Fhg_Flash.h
//! TODO: investigate having ZAPD forward declare static variables
static Gfx sShockDL[15];

u32 EffectSsFhgFlash_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsFhgFlashInitParams* initParams = (EffectSsFhgFlashInitParams*)initParamsx;
    s32 pad;
    s32 objectSlot;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f farAwayVec = { 0.0f, -1000.0f, 0.0f };
    uintptr_t prevSeg6;

    if (initParams->type == FHGFLASH_LIGHTBALL) {
        objectSlot = Object_GetSlot(&play->objectCtx, OBJECT_FHG);

        if ((objectSlot >= 0) && Object_IsLoaded(&play->objectCtx, objectSlot)) {
            prevSeg6 = gSegments[6];
            gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[objectSlot].segment);
            this->rObjectSlot = objectSlot;
            this->pos = initParams->pos;
            this->velocity = initParams->velocity;
            this->accel = initParams->accel;
            this->rParam = initParams->param;
            this->life = 100;
            this->rScale = initParams->scale;
            this->rAlpha = 255;
            this->draw = EffectSsFhgFlash_DrawLightBall;
            this->update = EffectSsFhgFlash_UpdateLightBall;
            this->gfx = SEGMENTED_TO_VIRTUAL(gPhantomEnergyBallDL);
            gSegments[6] = prevSeg6;
        } else {
            osSyncPrintf("Effect_Ss_Fhg_Flash_ct():pffd->modeエラー\n");
            return 0;
        }
    } else {
        this->actor = initParams->actor;
        this->velocity = this->accel = zeroVec;
        this->life = (s16)(Rand_ZeroOne() * 10.0f) + 111;
        this->rScale = (s16)Rand_ZeroFloat(initParams->scale) + initParams->scale;
        this->rAlpha = 255;
        this->draw = EffectSsFhgFlash_DrawShock;
        this->update = EffectSsFhgFlash_UpdateShock;
        this->rParam = initParams->param;

        if (initParams->param != FHGFLASH_SHOCK_NO_ACTOR) {
            this->pos = farAwayVec; // Set the initial position to where the effect cannot be seen
            this->gfx = SEGMENTED_TO_VIRTUAL(sShockDL);
        } else {
            this->pos = initParams->pos;
            this->gfx = SEGMENTED_TO_VIRTUAL(sShockDL);
        }
    }
    return 1;
}

static Color_RGB8 sLightBallColors[] = {
    { 165, 255, 61 }, { 0, 255, 255 }, { 255, 40, 0 }, { 255, 255, 0 }, { 0, 0, 255 },
    { 255, 0, 255 },  { 255, 150, 0 }, { 0, 0, 0 },    { 0, 0, 0 },
};

void EffectSsFhgFlash_DrawLightBall(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;
    f32 scale;
    void* objectPtr;

    scale = this->rScale / 100.0f;
    objectPtr = play->objectCtx.slots[this->rObjectSlot].segment;

    OPEN_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 268);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(objectPtr);
    gSPSegment(POLY_XLU_DISP++, 0x06, objectPtr);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, this->rAlpha);
    gDPSetEnvColor(POLY_XLU_DISP++, sLightBallColors[this->rParam].r, sLightBallColors[this->rParam].g,
                   sLightBallColors[this->rParam].b, 0);
    gDPPipeSync(POLY_XLU_DISP++);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    Matrix_RotateZ((this->rXZRot / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_eff_fhg_flash.c", 326),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 330);
}

void EffectSsFhgFlash_DrawShock(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;
    f32 scale;

    scale = this->rScale / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 346);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    if (this->rParam != FHGFLASH_SHOCK_NO_ACTOR) {
        Gfx_SetupDL_44Xlu(play->state.gfxCtx);
        Matrix_RotateX((this->rXZRot / (f32)0x8000) * 1.1416f, MTXMODE_APPLY);
        gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2);
    } else {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        Matrix_ReplaceRotation(&play->billboardMtxF);
        gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
    }

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, this->rAlpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 155, 0);
    Matrix_RotateZ((this->rXZRot / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_eff_fhg_flash.c", 395),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fhg_flash.c", 399);
}

void EffectSsFhgFlash_UpdateLightBall(PlayState* play, u32 index, EffectSs* this) {
    s16 rand = (Rand_ZeroOne() * 20000.0f);

    this->rXZRot = (this->rXZRot + rand) + 0x4000;

    if (this->rScale > 0) {
        this->rScale -= 10;

        if (this->rScale <= 0) {
            this->rScale = 0;
            this->life = 0;
        }
    }

    if (this->rAlpha > 0) {
        this->rAlpha -= 10;

        if (this->rAlpha <= 0) {
            this->rAlpha = 0;
        }
    }
}

void EffectSsFhgFlash_UpdateShock(PlayState* play, u32 index, EffectSs* this) {
    s16 randBodyPart;
    Player* player;
    BossGanondrof* phantomGanon;
    s16 rotStep;

    rotStep = Rand_ZeroOne() * 20000.0f;
    this->rXZRot += rotStep + 0x4000;

    if (this->rParam == FHGFLASH_SHOCK_PLAYER) {
        player = GET_PLAYER(play);
        randBodyPart = Rand_ZeroFloat(PLAYER_BODYPART_MAX - 0.1f);
        this->pos.x = player->bodyPartsPos[randBodyPart].x + Rand_CenteredFloat(10.0f);
        this->pos.y = player->bodyPartsPos[randBodyPart].y + Rand_CenteredFloat(15.0f);
        this->pos.z = player->bodyPartsPos[randBodyPart].z + Rand_CenteredFloat(10.0f);
    } else if (this->rParam == FHGFLASH_SHOCK_PG) {
        phantomGanon = (BossGanondrof*)this->actor;
        randBodyPart = Rand_ZeroFloat(23.9f);
        this->pos.x = phantomGanon->bodyPartsPos[randBodyPart].x + Rand_CenteredFloat(15.0f);
        this->pos.y = phantomGanon->bodyPartsPos[randBodyPart].y + Rand_CenteredFloat(20.0f);
        this->pos.z = phantomGanon->bodyPartsPos[randBodyPart].z + Rand_CenteredFloat(15.0f);
    }

    if (this->life < 100) {
        this->rAlpha -= 50;

        if (this->rAlpha < 0) {
            this->rAlpha = 0;
            this->life = 0;
        }
    }
}

#include "assets/overlays/ovl_Effect_Ss_Fhg_Flash/ovl_Effect_Ss_Fhg_Flash.c"
