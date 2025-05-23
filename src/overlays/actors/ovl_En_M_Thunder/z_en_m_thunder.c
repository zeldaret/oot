#include "z_en_m_thunder.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "rumble.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64audio.h"
#include "z64light.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0

void EnMThunder_Init(Actor* thisx, PlayState* play2);
void EnMThunder_Destroy(Actor* thisx, PlayState* play);
void EnMThunder_Update(Actor* thisx, PlayState* play);
void EnMThunder_Draw(Actor* thisx, PlayState* play2);

void func_80A9F314(PlayState* play, f32 arg1);
void func_80A9F408(EnMThunder* this, PlayState* play);
void func_80A9F9B4(EnMThunder* this, PlayState* play);

ActorProfile En_M_Thunder_Profile = {
    /**/ ACTOR_EN_M_THUNDER,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnMThunder),
    /**/ EnMThunder_Init,
    /**/ EnMThunder_Destroy,
    /**/ EnMThunder_Update,
    /**/ EnMThunder_Draw,
};

static ColliderCylinderInit D_80AA0420 = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_PLAYER,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000001, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 200, 200, 0, { 0, 0, 0 } },
};

static u32 D_80AA044C[] = { DMG_SPIN_MASTER, DMG_SPIN_KOKIRI, DMG_SPIN_GIANT };
static u32 D_80AA0458[] = { DMG_JUMP_MASTER, DMG_JUMP_KOKIRI, DMG_JUMP_GIANT };

// Setup action
void func_80A9EFE0(EnMThunder* this, EnMThunderActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnMThunder_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnMThunder* this = (EnMThunder*)thisx;
    Player* player = GET_PLAYER(play);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &D_80AA0420);
    this->unk_1C7 = PARAMS_GET_S(this->actor.params, 0, 8) - 1;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                              this->actor.world.pos.z, 255, 255, 255, 0);
    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    this->collider.dim.radius = 0;
    this->collider.dim.height = 40;
    this->collider.dim.yShift = -20;
    this->unk_1C4 = 8;
    this->unk_1B4 = 0.0f;
    this->actor.world.pos = player->bodyPartsPos[PLAYER_BODYPART_WAIST];
    this->unk_1AC = 0.0f;
    this->unk_1BC = 0.0f;
    this->actor.shape.rot.y = player->actor.shape.rot.y + 0x8000;
    this->actor.room = -1;
    Actor_SetScale(&this->actor, 0.1f);
    this->unk_1CA = 0;

    if (player->stateFlags2 & PLAYER_STATE2_17) {
        if (!gSaveContext.save.info.playerData.isMagicAcquired || (gSaveContext.magicState != MAGIC_STATE_IDLE) ||
            (PARAMS_GET_S(this->actor.params, 8, 8) &&
             !(Magic_RequestChange(play, PARAMS_GET_S(this->actor.params, 8, 8), MAGIC_CONSUME_NOW)))) {
            Audio_PlaySfxGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            Actor_Kill(&this->actor);
            return;
        }

        player->stateFlags2 &= ~PLAYER_STATE2_17;
        this->unk_1CA = 1;
        this->collider.elem.atDmgInfo.dmgFlags = D_80AA044C[this->unk_1C7];
        this->unk_1C6 = 1;
        this->unk_1C9 = ((this->unk_1C7 == 1) ? 2 : 4);
        func_80A9EFE0(this, func_80A9F9B4);
        this->unk_1C4 = 8;
        Audio_PlaySfxGeneral(NA_SE_IT_ROLLING_CUT_LV1, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->unk_1AC = 1.0f;
    } else {
        func_80A9EFE0(this, func_80A9F408);
    }
    this->actor.child = NULL;
}

void EnMThunder_Destroy(Actor* thisx, PlayState* play) {
    EnMThunder* this = (EnMThunder*)thisx;

    if (this->unk_1CA != 0) {
        Magic_Reset(play);
    }

    Collider_DestroyCylinder(play, &this->collider);
    func_80A9F314(play, 0.0f);
    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
}

void func_80A9F314(PlayState* play, f32 arg1) {
    Environment_AdjustLights(play, arg1, 850.0f, 0.2f, 0.0f);
}

void func_80A9F350(EnMThunder* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->stateFlags2 & PLAYER_STATE2_17) {
        if (player->meleeWeaponAnimation >= PLAYER_MWA_SPIN_ATTACK_1H) {
            Audio_PlaySfxGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }

        Actor_Kill(&this->actor);
        return;
    }

    if (!(player->stateFlags1 & PLAYER_STATE1_CHARGING_SPIN_ATTACK)) {
        Actor_Kill(&this->actor);
    }
}

void func_80A9F408(EnMThunder* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Actor* child = this->actor.child;

    this->unk_1B8 = player->unk_858;
    this->actor.world.pos = player->bodyPartsPos[PLAYER_BODYPART_WAIST];
    this->actor.shape.rot.y = player->actor.shape.rot.y + 0x8000;

    if (this->unk_1CA == 0) {
        if (player->unk_858 >= 0.1f) {
            if ((gSaveContext.magicState != MAGIC_STATE_IDLE) ||
                (PARAMS_GET_S(this->actor.params, 8, 8) &&
                 !(Magic_RequestChange(play, PARAMS_GET_S(this->actor.params, 8, 8), MAGIC_CONSUME_WAIT_PREVIEW)))) {
                func_80A9F350(this, play);
                func_80A9EFE0(this, func_80A9F350);
                this->unk_1C8 = 0;
                this->unk_1BC = 0.0;
                this->unk_1AC = 0.0f;
                return;
            }

            this->unk_1CA = 1;
        }
    }

    if (player->unk_858 >= 0.1f) {
        Rumble_Request(0.0f, (s32)(player->unk_858 * 150.0f), 2, (s32)(player->unk_858 * 150.0f));
    }

    if (player->stateFlags2 & PLAYER_STATE2_17) {
        if ((child != NULL) && (child->update != NULL)) {
            child->parent = NULL;
        }

        if (player->unk_858 <= 0.15f) {
            if ((player->unk_858 >= 0.1f) && (player->meleeWeaponAnimation >= PLAYER_MWA_SPIN_ATTACK_1H)) {
                Audio_PlaySfxGeneral(NA_SE_IT_ROLLING_CUT, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                Audio_PlaySfxGeneral(NA_SE_IT_SWORD_SWING_HARD, &player->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            Actor_Kill(&this->actor);
            return;
        } else {
            player->stateFlags2 &= ~PLAYER_STATE2_17;
            if (PARAMS_GET_S(this->actor.params, 8, 8)) {
                gSaveContext.magicState = MAGIC_STATE_CONSUME_SETUP;
            }
            if (player->unk_858 < 0.85f) {
                this->collider.elem.atDmgInfo.dmgFlags = D_80AA044C[this->unk_1C7];
                this->unk_1C6 = 1;
                this->unk_1C9 = ((this->unk_1C7 == 1) ? 2 : 4);
            } else {
                this->collider.elem.atDmgInfo.dmgFlags = D_80AA0458[this->unk_1C7];
                this->unk_1C6 = 0;
                this->unk_1C9 = ((this->unk_1C7 == 1) ? 4 : 8);
            }

            func_80A9EFE0(this, func_80A9F9B4);
            this->unk_1C4 = 8;

            {
                static u16 sSfxIds[] = {
                    NA_SE_IT_ROLLING_CUT_LV2,
                    NA_SE_IT_ROLLING_CUT_LV1,
                    NA_SE_IT_ROLLING_CUT_LV2,
                    NA_SE_IT_ROLLING_CUT_LV1,
                };

                Audio_PlaySfxGeneral(sSfxIds[this->unk_1C6], &player->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }

            this->unk_1AC = 1.0f;
            return;
        }
    }

    if (!(player->stateFlags1 & PLAYER_STATE1_CHARGING_SPIN_ATTACK)) {
        if (this->actor.child != NULL) {
            this->actor.child->parent = NULL;
        }
        Actor_Kill(&this->actor);
        return;
    }

    if (player->unk_858 > 0.15f) {
        this->unk_1C8 = 255;
        if (this->actor.child == NULL) {
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EFF_DUST, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0,
                               this->unk_1C7 + 2);
        }
        this->unk_1BC += ((((player->unk_858 - 0.15f) * 1.5f) - this->unk_1BC) * 0.5f);

    } else if (player->unk_858 > .1f) {
        this->unk_1C8 = (s32)((player->unk_858 - .1f) * 255.0f * 20.0f);
        this->unk_1AC = (player->unk_858 - .1f) * 10.0f;
    } else {
        this->unk_1C8 = 0;
    }

    if (player->unk_858 > 0.85f) {
        func_800F4254(&player->actor.projectedPos, 2);
    } else if (player->unk_858 > 0.15f) {
        func_800F4254(&player->actor.projectedPos, 1);
    } else if (player->unk_858 > 0.1f) {
        func_800F4254(&player->actor.projectedPos, 0);
    }

    if (Play_InCsMode(play)) {
        Actor_Kill(&this->actor);
    }
}

void func_80A9F938(EnMThunder* this, PlayState* play) {
    if (this->unk_1C4 < 2) {
        if (this->unk_1C8 < 40) {
            this->unk_1C8 = 0;
        } else {
            this->unk_1C8 -= 40;
        }
    }

    this->unk_1B4 += 2.0f * this->unk_1B0;

    if (this->unk_1BC < this->unk_1AC) {
        this->unk_1BC += ((this->unk_1AC - this->unk_1BC) * 0.1f);
    } else {
        this->unk_1BC = this->unk_1AC;
    }
}

void func_80A9F9B4(EnMThunder* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Math_StepToF(&this->unk_1AC, 0.0f, 1 / 16.0f)) {
        Actor_Kill(&this->actor);
    } else {
        Math_SmoothStepToF(&this->actor.scale.x, (s32)this->unk_1C9, 0.6f, 0.8f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        this->collider.dim.radius = (this->actor.scale.x * 25.0f);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }

    if (this->unk_1C4 > 0) {
        this->actor.world.pos.x = player->bodyPartsPos[PLAYER_BODYPART_WAIST].x;
        this->actor.world.pos.z = player->bodyPartsPos[PLAYER_BODYPART_WAIST].z;
        this->unk_1C4--;
    }

    if (this->unk_1AC > 0.6f) {
        this->unk_1B0 = 1.0f;
    } else {
        this->unk_1B0 = this->unk_1AC * (5.0f / 3.0f);
    }

    func_80A9F938(this, play);

    if (Play_InCsMode(play)) {
        Actor_Kill(&this->actor);
    }
}

void EnMThunder_Update(Actor* thisx, PlayState* play) {
    EnMThunder* this = (EnMThunder*)thisx;
    f32 blueRadius;
    s32 redGreen;

    this->actionFunc(this, play);
    func_80A9F314(play, this->unk_1BC);
    blueRadius = this->unk_1AC;
    redGreen = (u32)(blueRadius * 255.0f) & 0xFF;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                              this->actor.world.pos.z, redGreen, redGreen, (u32)(blueRadius * 100.0f),
                              (s32)(blueRadius * 800.0f));
}

void EnMThunder_Draw(Actor* thisx, PlayState* play2) {
    static f32 D_80AA046C[] = { 0.1f, 0.15f, 0.2f, 0.25f, 0.3f, 0.25f, 0.2f, 0.15f };
    PlayState* play = play2;
    EnMThunder* this = (EnMThunder*)thisx;
    Player* player = GET_PLAYER(play);
    f32 phi_f14;
    s32 phi_t1;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_m_thunder.c", 844);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_Scale(0.02f, 0.02f, 0.02f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_m_thunder.c", 853);

    switch (this->unk_1C6) {
        case 0:
        case 1:
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE,
                                        0xFF - ((u8)(s32)(this->unk_1B4 * 30) & 0xFF), 0, 0x40, 0x20, 1,
                                        0xFF - ((u8)(s32)(this->unk_1B4 * 20) & 0xFF), 0, 8, 8));
            break;
    }

    switch (this->unk_1C6) {
        case 0:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 170, (u8)(this->unk_1B0 * 255));
            gSPDisplayList(POLY_XLU_DISP++, gSpinAttack3DL);
            gSPDisplayList(POLY_XLU_DISP++, gSpinAttack4DL);
            break;
        case 1:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 170, 255, 255, (u8)(this->unk_1B0 * 255));
            gSPDisplayList(POLY_XLU_DISP++, gSpinAttack1DL);
            gSPDisplayList(POLY_XLU_DISP++, gSpinAttack2DL);
            break;
    }

    Matrix_Mult(&player->mf_9E0, MTXMODE_NEW);

    switch (this->unk_1C7) {
        case 1:
            Matrix_Translate(0.0f, 220.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(-0.7f, -0.6f, -0.4f, MTXMODE_APPLY);
            Matrix_RotateX(16384.0f, MTXMODE_APPLY);
            break;
        case 0:
            Matrix_Translate(0.0f, 300.0f, -100.0f, MTXMODE_APPLY);
            Matrix_Scale(-1.2f, -1.0f, -0.7f, MTXMODE_APPLY);
            Matrix_RotateX(16384.0f, MTXMODE_APPLY);
            break;
        case 2:
            Matrix_Translate(200.0f, 350.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(-1.8f, -1.4f, -0.7f, MTXMODE_APPLY);
            Matrix_RotateX(16384.0f, MTXMODE_APPLY);
            break;
    }

    if (this->unk_1B8 >= 0.85f) {
        phi_f14 = (D_80AA046C[(play->gameplayFrames & 7)] * 6.0f) + 1.0f;
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 170, this->unk_1C8);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 100, 0, 128);
        phi_t1 = 0x28;
    } else {
        phi_f14 = (D_80AA046C[play->gameplayFrames & 7] * 2.0f) + 1.0f;
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 170, 255, 255, this->unk_1C8);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, 128);
        phi_t1 = 0x14;
    }
    Matrix_Scale(1.0f, phi_f14, phi_f14, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_m_thunder.c", 960);

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (play->gameplayFrames * 5) & 0xFF, 0, 0x20, 0x20,
                                1, (play->gameplayFrames * 20) & 0xFF, (play->gameplayFrames * phi_t1) & 0xFF, 8, 8));

    gSPDisplayList(POLY_XLU_DISP++, gSpinAttackChargingDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_m_thunder.c", 1031);
}
