/*
 * File: z_bg_dy_yoseizo.c
 * Overlay: ovl_Bg_Dy_Yoseizo
 * Description: Great Fairy
 */

#include "z_bg_dy_yoseizo.h"
#include "assets/objects/object_dy_obj/object_dy_obj.h"
#include "terminal.h"
#include "overlays/actors/ovl_Demo_Effect/z_demo_effect.h"
#include "assets/scenes/indoors/yousei_izumi_yoko/yousei_izumi_yoko_scene.h"
#include "assets/scenes/indoors/daiyousei_izumi/daiyousei_izumi_scene.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5 | ACTOR_FLAG_25)

typedef enum {
    /* 0 */ FAIRY_UPGRADE_MAGIC,
    /* 1 */ FAIRY_UPGRADE_DOUBLE_MAGIC,
    /* 2 */ FAIRY_UPGRADE_DOUBLE_DEFENSE
} BgDyYoseizoRewardType;

typedef enum {
    /* 0 */ FAIRY_SPELL_FARORES_WIND,
    /* 1 */ FAIRY_SPELL_DINS_FIRE,
    /* 2 */ FAIRY_SPELL_NAYRUS_LOVE
} BgDyYoseizoSpellType;

void BgDyYoseizo_Init(Actor* thisx, PlayState* play2);
void BgDyYoseizo_Destroy(Actor* thisx, PlayState* play);
void BgDyYoseizo_Update(Actor* thisx, PlayState* play2);
void BgDyYoseizo_Draw(Actor* thisx, PlayState* play);

void BgDyYoseizo_CheckMagicAcquired(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_ChooseType(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupSpinGrow_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SpinGrow_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_CompleteSpinGrow_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupGreetPlayer_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_GreetPlayer_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupHealPlayer_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_HealPlayer_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SayFarewell_NoReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupSpinShrink(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SpinShrink(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Vanish(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupSpinGrow_Reward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SpinGrowSetupGive_Reward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Give_Reward(BgDyYoseizo* this, PlayState* play);

void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f* initPos, Vec3f* initVelocity, Vec3f* accel,
                             Color_RGB8* primColor, Color_RGB8* envColor, f32 scale, s16 life, s16 type);
void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play);

static s32 sUnusedGetItemIds[] = { GI_FARORES_WIND, GI_NAYRUS_LOVE, GI_DINS_FIRE };

ActorInit Bg_Dy_Yoseizo_InitVars = {
    ACTOR_BG_DY_YOSEIZO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(BgDyYoseizo),
    (ActorFunc)BgDyYoseizo_Init,
    (ActorFunc)BgDyYoseizo_Destroy,
    (ActorFunc)BgDyYoseizo_Update,
    NULL,
};

void BgDyYoseizo_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    this->fountainType = play->spawn;

    if (this->fountainType < 0) {
        this->fountainType = 0;
    }

    this->vanishHeight = this->actor.world.pos.y;
    this->grownHeight = this->vanishHeight + 40.0f;
    this->actor.focus.pos = this->actor.world.pos;

    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        // "Great Fairy Fountain"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairySittingTransitionAnim,
                           this->jointTable, this->morphTable, 28);
    } else {
        // "Stone/Jewel Fairy Fountain"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairyLayingDownTransitionAnim,
                           this->jointTable, this->morphTable, 28);
    }
    this->actionFunc = BgDyYoseizo_CheckMagicAcquired;
}

void BgDyYoseizo_Destroy(Actor* thisx, PlayState* play) {
}

static Color_RGB8 sEffectPrimColors[] = {
    { 255, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
};

static Color_RGB8 sEffectEnvColors[] = {
    { 155, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 100, 255 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 100, 255, 255 },
};

void BgDyYoseizo_SpawnEffects(BgDyYoseizo* this, PlayState* play, s16 type) {
    Vec3f vel = { 0.0f, 0.0f, 0.0f };
    Vec3f accel;
    Vec3f pos;
    Color_RGB8 primColor;
    Color_RGB8 envColor;
    f32 spawnPosVariation;
    s32 effectType;
    f32 scale;
    s32 i;
    s16 life;

    if (!(this->scale < 0.01f)) {
        spawnPosVariation = this->scale * 3500.0f;
        accel.x = Rand_ZeroOne() - 0.5f;
        accel.y = Rand_ZeroOne() - 0.5f;
        accel.z = Rand_ZeroOne() - 0.5f;
        for (i = 0; i < 2; i++) {
            if (type == 0) {
                effectType = 0;
                scale = 0.4f;
                life = 90;
                pos.x = this->actor.world.pos.x;
                pos.y = this->actor.world.pos.y + spawnPosVariation +
                        ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.5f));
                pos.z = this->actor.world.pos.z + 30.0f;
            } else {
                life = 50;
                effectType = type;
                scale = 0.2f;
                pos.x = this->actor.world.pos.x + Rand_CenteredFloat(10.0f);

                if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                    pos.y = this->actor.world.pos.y + spawnPosVariation + 50.0f +
                            ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.1f));
                    pos.z = this->actor.world.pos.z + 30.0f;
                } else {
                    pos.y = this->actor.world.pos.y + spawnPosVariation - 30.0f +
                            ((Rand_ZeroOne() - 0.5f) * (spawnPosVariation * 0.1f));
                    pos.z = this->actor.world.pos.z + 60.0f;
                }

                if (LINK_IS_ADULT) {
                    pos.y += 20.0f;
                }
            }

            primColor.r = sEffectPrimColors[effectType].r;
            primColor.g = sEffectPrimColors[effectType].g;
            primColor.b = sEffectPrimColors[effectType].b;
            envColor.r = sEffectEnvColors[effectType].r;
            envColor.g = sEffectEnvColors[effectType].g;
            envColor.b = sEffectEnvColors[effectType].b;
            BgDyYoseizo_SpawnEffect(this, &pos, &vel, &accel, &primColor, &envColor, scale, life, effectType);
        }
    }
}

void BgDyYoseizo_Bob(BgDyYoseizo* this, PlayState* play) {
    this->targetHeight = this->grownHeight + this->bobOffset;
    Math_ApproachF(&this->actor.world.pos.y, this->targetHeight, 0.1f, 10.0f);
    Math_ApproachF(&this->bobOffset, 10.0f, 0.1f, 0.5f);

    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actor.velocity.y = Math_SinS(this->bobTimer);
    } else {
        this->actor.velocity.y = Math_SinS(this->bobTimer) * 0.4f;
    }
}

void BgDyYoseizo_CheckMagicAcquired(BgDyYoseizo* this, PlayState* play) {
    if (Flags_GetSwitch(play, 0x38)) {
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if (!gSaveContext.isMagicAcquired && (this->fountainType != FAIRY_UPGRADE_MAGIC)) {
                Actor_Kill(&this->actor);
                return;
            }
        } else {
            if (!gSaveContext.isMagicAcquired) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        func_8002DF54(play, &this->actor, 1);
        this->actionFunc = BgDyYoseizo_ChooseType;
    }
}

void BgDyYoseizo_ChooseType(BgDyYoseizo* this, PlayState* play) {
    s32 givingReward;

    func_8002DF54(play, &this->actor, 1);
    // "Mode"
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n" VT_RST, play->msgCtx.ocarinaMode);
    givingReward = false;

    if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        switch (this->fountainType) {
            case FAIRY_SPELL_FARORES_WIND:
                if (!GET_ITEMGETINF(ITEMGETINF_18)) {
                    givingReward = true;
                }
                break;
            case FAIRY_SPELL_DINS_FIRE:
                if (!GET_ITEMGETINF(ITEMGETINF_19)) {
                    givingReward = true;
                }
                break;
            case FAIRY_SPELL_NAYRUS_LOVE:
                if (!GET_ITEMGETINF(ITEMGETINF_1A)) {
                    givingReward = true;
                }
                break;
        }
    } else {
        switch (this->fountainType) {
            case FAIRY_UPGRADE_MAGIC:
                if (!gSaveContext.isMagicAcquired || BREG(2)) {
                    // "Spin Attack speed UP"
                    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n" VT_RST);
                    this->givingSpell = true;
                    givingReward = true;
                }
                break;
            case FAIRY_UPGRADE_DOUBLE_MAGIC:
                if (!gSaveContext.isDoubleMagicAcquired) {
                    // "Magic Meter doubled"
                    osSyncPrintf(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n" VT_RST);
                    this->givingSpell = true;
                    givingReward = true;
                }
                break;
            case FAIRY_UPGRADE_DOUBLE_DEFENSE:
                if (!gSaveContext.isDoubleDefenseAcquired) {
                    // "Damage halved"
                    osSyncPrintf(VT_FGCOL(MAGENTA) " ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n" VT_RST);
                    this->givingSpell = true;
                    givingReward = true;
                }
                break;
        }
    }

    if (givingReward) {
        if (!IS_CUTSCENE_LAYER) {
            if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                switch (this->fountainType) {
                    case FAIRY_SPELL_FARORES_WIND:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyFaroresWindCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_SPELL_DINS_FIRE:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyDinsFireCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_SPELL_NAYRUS_LOVE:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyNayrusLoveCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            } else {
                switch (this->fountainType) {
                    case FAIRY_UPGRADE_MAGIC:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_UPGRADE_DOUBLE_MAGIC:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                    case FAIRY_UPGRADE_DOUBLE_DEFENSE:
                        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleDefenseCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            }
        }
        this->actionFunc = BgDyYoseizo_SetupSpinGrow_Reward;
        return;
    }

    play->envCtx.lightSettingOverride = 2;

    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        OnePointCutscene_Init(play, 8603, -99, NULL, CAM_ID_MAIN);
    } else {
        OnePointCutscene_Init(play, 8604, -99, NULL, CAM_ID_MAIN);
    };

    Audio_PlayActorSfx2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
    this->actor.draw = BgDyYoseizo_Draw;
    this->actionFunc = BgDyYoseizo_SetupSpinGrow_NoReward;
}

// Sets animations for spingrow
void BgDyYoseizo_SetupSpinGrow_NoReward(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->frameCount = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->frameCount,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->frameCount,
                         ANIMMODE_ONCE, -10.0f);
    }

    Audio_PlayActorSfx2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    func_8002DF54(play, &this->actor, 1);
    this->actionFunc = BgDyYoseizo_SpinGrow_NoReward;
}

void BgDyYoseizo_SpinGrow_NoReward(BgDyYoseizo* this, PlayState* play) {
    func_8002DF54(play, &this->actor, 1);
    Math_ApproachF(&this->actor.world.pos.y, this->grownHeight, this->heightFraction, 100.0f);
    Math_ApproachF(&this->scale, 0.035f, this->scaleFraction, 0.005f);
    Math_ApproachF(&this->heightFraction, 0.8f, 0.1f, 0.02f);
    Math_ApproachF(&this->scaleFraction, 0.2f, 0.03f, 0.05f);
    // Finished growing
    if (this->scale >= 0.034f) {
        if ((this->actor.shape.rot.y > -8000) && (this->actor.shape.rot.y < 1000)) {
            SkelAnime_Update(&this->skelAnime);
            // Turn to front
            Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 5, 1000, 0);
            if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                this->actionFunc = BgDyYoseizo_CompleteSpinGrow_NoReward;
            }
        } else {
            this->actor.shape.rot.y += 3000;
        }
    } else {
        this->actor.shape.rot.y += 3000;
    }
    BgDyYoseizo_SpawnEffects(this, play, 0);
}

void BgDyYoseizo_CompleteSpinGrow_NoReward(BgDyYoseizo* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    func_8002DF54(play, &this->actor, 1);

    if ((this->frameCount * 1273.0f) <= this->bobTimer) {
        this->bobTimer = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->frameCount <= curFrame) && !this->animationChanged) {
        this->actionFunc = BgDyYoseizo_SetupGreetPlayer_NoReward;
    }
}

void BgDyYoseizo_SetupGreetPlayer_NoReward(BgDyYoseizo* this, PlayState* play) {
    func_8002DF54(play, &this->actor, 1);

    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->frameCount = Animation_GetLastFrame(&gGreatFairySittingAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_LOOP,
                         -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_LOOP,
                         -10.0f);
    }

    this->actor.textId = 0xDB;
    this->dialogState = TEXT_STATE_EVENT;
    Message_StartTextbox(play, this->actor.textId, NULL);
    BgDyYoseizo_SpawnEffects(this, play, 0);
    this->actionFunc = BgDyYoseizo_GreetPlayer_NoReward;
}

void BgDyYoseizo_GreetPlayer_NoReward(BgDyYoseizo* this, PlayState* play) {
    func_8002DF54(play, &this->actor, 1);
    this->bobTimer = this->skelAnime.curFrame * 1273.0f;

    if ((this->frameCount * 1273.0f) <= this->bobTimer) {
        this->bobTimer = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->dialogState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE);
        this->actionFunc = BgDyYoseizo_SetupHealPlayer_NoReward;
    }

    BgDyYoseizo_Bob(this, play);
    BgDyYoseizo_SpawnEffects(this, play, 0);
}

void BgDyYoseizo_SetupHealPlayer_NoReward(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->frameCount = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_ONCE,
                         -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&gGreatFairyAnim_005810);
        Animation_Change(&this->skelAnime, &gGreatFairyAnim_005810, 1.0f, 0.0f, this->frameCount, ANIMMODE_ONCE,
                         -10.0f);
    }

    Audio_PlayActorSfx2(&this->actor, NA_SE_VO_FR_SMILE_0);
    this->mouthState = 1;
    this->actionFunc = BgDyYoseizo_HealPlayer_NoReward;
}

void BgDyYoseizo_HealPlayer_NoReward(BgDyYoseizo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 curFrame = this->skelAnime.curFrame;
    Vec3f beamPos;
    s16 beamParams;

    if (this->animationChanged) {
        this->bobTimer = this->skelAnime.curFrame * 1300.0f;
        if ((this->frameCount * 1300.0f) <= this->bobTimer) {
            this->bobTimer = 0.0f;
        }
    }

    SkelAnime_Update(&this->skelAnime);
    if ((this->frameCount <= curFrame) && !(this->animationChanged)) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->frameCount = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->frameCount,
                             ANIMMODE_LOOP, -10.0f);
        } else {
            this->frameCount = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_LOOP,
                             -10.0f);
        }
        this->healingTimer = 150;
        this->animationChanged = true;
        if (!this->givingSpell) {
            beamPos.x = player->actor.world.pos.x;
            beamPos.y = player->actor.world.pos.y + 200.0f;
            beamPos.z = player->actor.world.pos.z;

            beamParams = ((play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) ? 0 : 1);

            this->beam = (EnDyExtra*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_DY_EXTRA,
                                                        beamPos.x, beamPos.y, beamPos.z, 0, 0, 0, beamParams);
        }
    }
    if (this->refillTimer > 1) {
        this->refillTimer--;
    }

    if (this->healingTimer >= 110) {
        this->healingTimer--;
    }

    if (this->healingTimer == 110) {
        gSaveContext.healthAccumulator = 0x140;
        Magic_Fill(play);
        this->refillTimer = 200;
    }

    if (((gSaveContext.healthCapacity == gSaveContext.health) && (gSaveContext.magic == gSaveContext.magicCapacity)) ||
        (this->refillTimer == 1)) {
        this->healingTimer--;
        if (this->healingTimer == 90) {
            if (!this->givingSpell) {
                this->beam->trigger = 1;
            }
            this->givingSpell = false;
        }
    }

    if (this->healingTimer == 1) {
        this->actor.textId = 0xDA;
        this->dialogState = TEXT_STATE_EVENT;
        Message_ContinueTextbox(play, this->actor.textId);
        this->actionFunc = BgDyYoseizo_SayFarewell_NoReward;
        return;
    }
    BgDyYoseizo_Bob(this, play);
}

void BgDyYoseizo_SayFarewell_NoReward(BgDyYoseizo* this, PlayState* play) {
    this->bobTimer = this->skelAnime.curFrame * 1400.0f;

    if (this->bobTimer >= (this->frameCount * 1400.0f)) {
        this->bobTimer = 0.0f;
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->dialogState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->mouthState = 0;
        this->actionFunc = BgDyYoseizo_SetupSpinShrink;
        func_8005B1A4(GET_ACTIVE_CAM(play));
    }

    BgDyYoseizo_Bob(this, play);
    BgDyYoseizo_SpawnEffects(this, play, 0);
}

void BgDyYoseizo_SetupSpinShrink(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->frameCount = Animation_GetLastFrame(&gGreatFairyJewelFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyJewelFountainSpinShrinkAnim, 1.0f, 0.0f, this->frameCount,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->frameCount = Animation_GetLastFrame(&gGreatFairySpellFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySpellFountainSpinShrinkAnim, 1.0f, 0.0f, this->frameCount,
                         ANIMMODE_ONCE, -10.0f);
    }

    this->vanishTimer = 5;
    this->scaleFraction = 0.0f;
    this->heightFraction = 0.0f;
    Audio_PlayActorSfx2(&this->actor, NA_SE_VO_FR_LAUGH_0);
    Audio_PlayActorSfx2(&this->actor, NA_SE_EV_GREAT_FAIRY_VANISH);
    this->actionFunc = BgDyYoseizo_SpinShrink;
}

void BgDyYoseizo_SpinShrink(BgDyYoseizo* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->vanishTimer == 0) {
        if (this->scale < 0.003f) {
            this->vanishTimer = 30;
            this->actionFunc = BgDyYoseizo_Vanish;
        } else {
            Math_ApproachF(&this->actor.world.pos.y, this->vanishHeight, this->heightFraction, 100.0f);
            Math_ApproachZeroF(&this->scale, this->scaleFraction, 0.005f);
            Math_ApproachF(&this->heightFraction, 0.8f, 0.1f, 0.02f);
            Math_ApproachF(&this->scaleFraction, 0.2f, 0.03f, 0.05f);
            this->actor.shape.rot.y += 3000;
            BgDyYoseizo_SpawnEffects(this, play, 0);
        }
    }
}

void BgDyYoseizo_Vanish(BgDyYoseizo* this, PlayState* play) {
    Actor* findOcarinaSpot;

    if (this->vanishTimer == 0) {
        func_8002DF54(play, &this->actor, 7);
        play->envCtx.lightSettingOverride = 0;
        findOcarinaSpot = play->actorCtx.actorLists[ACTORCAT_PROP].head;

        while (findOcarinaSpot != NULL) {
            if (findOcarinaSpot->id != ACTOR_EN_OKARINA_TAG) {
                findOcarinaSpot = findOcarinaSpot->next;
                continue;
            }
            Actor_Kill(findOcarinaSpot);
            break;
        }

        Flags_UnsetSwitch(play, 0x38);
        Actor_Kill(&this->actor);
    }
}

void BgDyYoseizo_SetupSpinGrow_Reward(BgDyYoseizo* this, PlayState* play) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        if ((play->csCtx.npcActions[0] != NULL) && (play->csCtx.npcActions[0]->action == 2)) {
            this->actor.draw = BgDyYoseizo_Draw;
            func_8002DF54(play, &this->actor, 1);
            this->finishedSpinGrow = false;

            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->frameCount = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
                Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->frameCount,
                                 ANIMMODE_ONCE, -10.0f);
            } else {
                this->frameCount = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->frameCount,
                                 ANIMMODE_ONCE, -10.0f);
            }

            Audio_PlayActorSfx2(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
            this->actionFunc = BgDyYoseizo_SpinGrowSetupGive_Reward;
        }
    }
}

void BgDyYoseizo_SpinGrowSetupGive_Reward(BgDyYoseizo* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    if (!this->finishedSpinGrow) {
        Math_ApproachF(&this->actor.world.pos.y, this->grownHeight, this->heightFraction, 100.0f);
        Math_ApproachF(&this->scale, 0.035f, this->scaleFraction, 0.005f);
        Math_ApproachF(&this->heightFraction, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->scaleFraction, 0.2f, 0.03f, 0.05f);
        // Finished growing
        if (this->scale >= 0.034f) {
            if ((this->actor.shape.rot.y > -8000) && (this->actor.shape.rot.y < 1000)) {
                SkelAnime_Update(&this->skelAnime);
                // Spin until facing front
                Math_ApproachS(&this->actor.shape.rot.y, 0, 5, 1000);
                if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                    this->finishedSpinGrow = true;
                }
            } else {
                this->actor.shape.rot.y += 3000;
            }
        } else {
            this->actor.shape.rot.y += 3000;
        }
    } else {
        SkelAnime_Update(&this->skelAnime);

        if ((this->frameCount <= curFrame) && !this->animationChanged) {
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->frameCount = Animation_GetLastFrame(&gGreatFairySittingAnim);
                Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_LOOP,
                                 -10.0f);
            } else {
                this->frameCount = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->frameCount,
                                 ANIMMODE_LOOP, -10.0f);
            }
            this->animationChanged = true;
        }

        if ((play->csCtx.state != CS_STATE_IDLE) &&
            ((play->csCtx.npcActions[0] != NULL) && (play->csCtx.npcActions[0]->action == 3))) {
            this->finishedSpinGrow = this->animationChanged = false;
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->frameCount = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->frameCount,
                                 ANIMMODE_ONCE, -10.0f);
            } else {
                this->frameCount = Animation_GetLastFrame(&gGreatFairyAnim_005810);
                Animation_Change(&this->skelAnime, &gGreatFairyAnim_005810, 1.0f, 0.0f, this->frameCount, ANIMMODE_ONCE,
                                 -10.0f);
            }
            this->mouthState = 1;
            this->actionFunc = BgDyYoseizo_Give_Reward;
        }
    }
    BgDyYoseizo_SpawnEffects(this, play, 0);
}

static s16 sDemoEffectLightColors[] = { DEMO_EFFECT_LIGHT_GREEN, DEMO_EFFECT_LIGHT_RED, DEMO_EFFECT_LIGHT_BLUE };

static s16 sExItemTypes[] = { EXITEM_MAGIC_WIND, EXITEM_MAGIC_FIRE, EXITEM_MAGIC_DARK };

static s16 sItemGetFlags[] = { ITEMGETINF_18_MASK, ITEMGETINF_19_MASK, ITEMGETINF_1A_MASK };

static u8 sItemIds[] = { ITEM_FARORES_WIND, ITEM_DINS_FIRE, ITEM_NAYRUS_LOVE };

void BgDyYoseizo_Give_Reward(BgDyYoseizo* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;
    Player* player = GET_PLAYER(play);
    s16 actionIndex;
    s16 demoEffectParams;
    Vec3f itemPos;

    if (this->animationChanged) {
        this->bobTimer = this->skelAnime.curFrame * 1400.0f;
        if ((this->frameCount * 1400.0f) <= this->bobTimer) {
            this->bobTimer = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);

    if ((this->frameCount <= curFrame) && !this->animationChanged) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->frameCount = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->frameCount,
                             ANIMMODE_LOOP, -10.0f);
        } else {
            this->frameCount = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->frameCount, ANIMMODE_LOOP,
                             -10.0f);
        }
        this->animationChanged = true;
    }

    if (play->csCtx.npcActions[0]->action == 13) {
        this->actionFunc = BgDyYoseizo_SetupSpinShrink;
        return;
    }

    if ((play->csCtx.npcActions[0]->action >= 4) && (play->csCtx.npcActions[0]->action < 7)) {
        actionIndex = play->csCtx.npcActions[0]->action - 4;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            actionIndex++;
            BgDyYoseizo_SpawnEffects(this, play, actionIndex);

        } else if (!this->lightBallSpawned) {
            demoEffectParams = ((s16)(sDemoEffectLightColors[actionIndex] << 0xC) | DEMO_EFFECT_LIGHT);
            Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, 0, 0, (s32)demoEffectParams);
            this->lightBallSpawned = true;
        }
    } else {
        BgDyYoseizo_SpawnEffects(this, play, 0);
    }

    if ((play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.npcActions[0]->action >= 10) &&
        (play->csCtx.npcActions[0]->action < 13)) {
        actionIndex = play->csCtx.npcActions[0]->action - 10;

        switch (actionIndex) {
            case FAIRY_UPGRADE_MAGIC:
                gSaveContext.isMagicAcquired = true;
                gSaveContext.magicFillTarget = MAGIC_NORMAL_METER;
                // magicLevel is already 0, setting isMagicAcquired to true triggers magicCapacity to grow
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                break;
            case FAIRY_UPGRADE_DOUBLE_MAGIC:
                if (!gSaveContext.isMagicAcquired) {
                    gSaveContext.isMagicAcquired = true;
                }
                gSaveContext.isDoubleMagicAcquired = true;
                gSaveContext.magicFillTarget = MAGIC_DOUBLE_METER;
                // Setting magicLevel to 0 triggers magicCapacity to grow
                gSaveContext.magicLevel = 0;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                break;
            case FAIRY_UPGRADE_DOUBLE_DEFENSE:
                gSaveContext.isDoubleDefenseAcquired = true;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                break;
        }

        if (!this->healing) {
            gSaveContext.healthAccumulator = 0x140;
            this->healing = true;
            if (actionIndex == 2) {
                Magic_Fill(play);
            }
        }
    }

    if ((play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.npcActions[0]->action >= 14) &&
        (play->csCtx.npcActions[0]->action < 17)) {
        actionIndex = play->csCtx.npcActions[0]->action - 14;

        if (!this->itemSpawned) {
            itemPos.x = player->actor.world.pos.x;
            itemPos.y = (LINK_IS_ADULT ? player->actor.world.pos.y + 73.0f : player->actor.world.pos.y + 53.0f);
            itemPos.z = player->actor.world.pos.z;

            this->item = (EnExItem*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, itemPos.x,
                                                       itemPos.y, itemPos.z, 0, 0, 0, sExItemTypes[actionIndex]);

            if (this->item != NULL) {
                if (!gSaveContext.isMagicAcquired) {
                    gSaveContext.isMagicAcquired = true;
                } else {
                    Magic_Fill(play);
                }

                this->itemSpawned = true;
                gSaveContext.healthAccumulator = 0x140;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                gSaveContext.itemGetInf[ITEMGETINF_18_19_1A_INDEX] |= sItemGetFlags[actionIndex];
                Item_Give(play, sItemIds[actionIndex]);
            }
        } else {
            this->item->actor.world.pos.x = player->actor.world.pos.x;
            this->item->actor.world.pos.y =
                (LINK_IS_ADULT ? player->actor.world.pos.y + 73.0f : player->actor.world.pos.y + 53.0f);
            this->item->actor.world.pos.z = player->actor.world.pos.z;
            this->item->scale = 0.3f;
        }
    }

    if ((play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.npcActions[0]->action == 17) &&
        (this->item != NULL)) {
        Actor_Kill(&this->item->actor);
        this->item = NULL;
    }

    if ((play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.npcActions[0]->action == 18)) {
        this->giveDefenseHearts = true;
    }

    if (this->giveDefenseHearts) {
        if (gSaveContext.inventory.defenseHearts < 20) {
            gSaveContext.inventory.defenseHearts++;
        }
    }

    if ((play->csCtx.npcActions[0]->action >= 19) && (play->csCtx.npcActions[0]->action < 22) &&
        !this->warpEffectSpawned) {
        actionIndex = play->csCtx.npcActions[0]->action - 11;
        Actor_Spawn(&play->actorCtx, play, ACTOR_DOOR_WARP1, player->actor.world.pos.x, player->actor.world.pos.y,
                    player->actor.world.pos.z, 0, 0, 0, actionIndex);
        this->warpEffectSpawned = true;
    }
    BgDyYoseizo_Bob(this, play);
}

void BgDyYoseizo_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;
    s32 sfx;

    this->absoluteTimer++;

    if (this->vanishTimer != 0) {
        this->vanishTimer--;
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    if (this->unusedTimer != 0) {
        this->unusedTimer--;
    }

    this->actionFunc(this, play);

    if (play->csCtx.state != CS_STATE_IDLE) {
        sfx = 0;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if ((play->csCtx.frames == 32) || (play->csCtx.frames == 291) || (play->csCtx.frames == 426) ||
                (play->csCtx.frames == 851)) {
                sfx = 1;
            }
            if (play->csCtx.frames == 101) {
                sfx = 2;
            }
        } else {
            if ((play->csCtx.frames == 35) || (play->csCtx.frames == 181) || (play->csCtx.frames == 462) ||
                (play->csCtx.frames == 795)) {
                sfx = 1;
            }
            if (play->csCtx.frames == 90) {
                sfx = 2;
            }
        }

        if (sfx == 1) {
            Audio_PlayActorSfx2(&this->actor, NA_SE_VO_FR_SMILE_0);
        }
        if (sfx == 2) {
            Audio_PlayActorSfx2(&this->actor, NA_SE_VO_FR_LAUGH_0);
        }
    }

    if ((this->blinkTimer == 0) && (this->actionFunc != BgDyYoseizo_HealPlayer_NoReward)) {
        this->eyeState++;
        this->eyeState2++;
        if (this->eyeState >= 3) {
            this->eyeState = this->eyeState2 = 0;
            this->blinkTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }

    Actor_MoveForward(&this->actor);
    this->heightOffset = this->scale * 7500.0f;
    Actor_SetFocus(&this->actor, this->heightOffset);
    this->actor.focus.pos.y = this->heightOffset;
    Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    BgDyYoseizo_UpdateEffects(this, play);
    Actor_SetScale(&this->actor, this->scale);
}

s32 BgDyYoseizo_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    if (limbIndex == 8) { // Torso
        rot->x += this->torsoRot.y;
    }
    if (limbIndex == 15) { // Head
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }
    return 0;
}

static void* sEyeTextures[] = {
    gGreatFairyEyeOpenTex,   // Open
    gGreatFairyEyeHalfTex,   // Half
    gGreatFairyEyeClosedTex, // Closed
};

static void* sMouthTextures[] = {
    gGreatFairyMouthClosedTex, // Closed
    gGreatFairyMouthOpenTex,   // Open
};

void BgDyYoseizo_Draw(Actor* thisx, PlayState* play) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1609);
    if (this->actionFunc != BgDyYoseizo_Vanish) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);

        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeState]));

        // This was probably intended to allow this actor to wink, but segment 09 is not used in the dList for the head,
        // so it can only blink
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeState2]));

        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthState]));

        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              BgDyYoseizo_OverrideLimbDraw, NULL, this);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1629);
    BgDyYoseizo_DrawEffects(this, play);
}

void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f* initPos, Vec3f* initVelocity, Vec3f* accel,
                             Color_RGB8* primColor, Color_RGB8* envColor, f32 scale, s16 life, s16 type) {
    BgDyYoseizoEffect* effect;
    s16 i;

    effect = this->effects;

    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->alive == 0) {
            effect->alive = 1;
            effect->pos = *initPos;
            effect->velocity = *initVelocity;
            effect->accel = *accel;
            effect->primColor = *primColor;
            effect->alpha = 0;
            effect->envColor = *envColor;
            effect->scale = scale;
            effect->timer = life;
            effect->type = type;
            effect->pitch = 0.0f;
            effect->yaw = Rand_CenteredFloat(30000.0f);
            effect->roll = 0.0f;
            return;
        }
    }
}

void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play) {
    BgDyYoseizoEffect* effect = this->effects;
    Player* player = GET_PLAYER(play);
    Vec3f sp94;
    Vec3f sp88;
    f32 goalPitch;
    f32 goalYaw;
    s16 i = 0;

    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->alive != 0) {
            effect->roll += 3000.0f;

            if (effect->type == 0) {
                effect->pos.x += effect->velocity.x;
                effect->pos.y += effect->velocity.y;
                effect->pos.z += effect->velocity.z;
                effect->velocity.x += effect->accel.x;
                effect->velocity.y += effect->accel.y;
                effect->velocity.z += effect->accel.z;
            } else {
                Audio_PlayActorSfx2(&this->actor, NA_SE_EV_HEALING - SFX_FLAG);

                sp94 = player->actor.world.pos;
                sp94.y = player->actor.world.pos.y - 150.0f;
                sp94.z = player->actor.world.pos.z - 50.0f;

                goalPitch = Math_Vec3f_Pitch(&effect->pos, &sp94);
                goalYaw = Math_Vec3f_Yaw(&effect->pos, &sp94);

                Math_ApproachF(&effect->pitch, goalPitch, 0.9f, 5000.0f);
                Math_ApproachF(&effect->yaw, goalYaw, 0.9f, 5000.0f);
                Matrix_Push();
                Matrix_RotateY(BINANG_TO_RAD_ALT(effect->yaw), MTXMODE_NEW);
                Matrix_RotateX(BINANG_TO_RAD_ALT(effect->pitch), MTXMODE_APPLY);

                sp94.x = sp94.y = sp94.z = 3.0f;

                Matrix_MultVec3f(&sp94, &sp88);
                Matrix_Pop();
                effect->pos.x += sp88.x;
                effect->pos.y += sp88.y;
                effect->pos.z += sp88.z;
            }
        }

        // fade up, fade down, vanish and reset
        if (effect->timer != 0) {
            effect->timer--;
            effect->alpha += 30;

            if (effect->alpha > 255) {
                effect->alpha = 255;
            }
        } else {
            effect->alpha -= 30;

            if (effect->alpha <= 0) {
                effect->alpha = effect->alive = 0;
            }
        }
    }
}

void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    u8 materialFlag = 0;
    BgDyYoseizoEffect* effect = this->effects;
    s16 i;

    OPEN_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1767);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->alive == 1) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleMaterialDL));
                gDPPipeSync(POLY_XLU_DISP++);

                materialFlag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, effect->primColor.r, effect->primColor.g, effect->primColor.b,
                            effect->alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, effect->envColor.r, effect->envColor.g, effect->envColor.b, 0);

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(effect->roll, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_bg_dy_yoseizo.c", 1810),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleModelDL));
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1819);
}
