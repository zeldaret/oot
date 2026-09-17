/*
 * File: z_bg_dy_yoseizo.c
 * Overlay: ovl_Bg_Dy_Yoseizo
 * Description: Great Fairy
 */

#include "z_bg_dy_yoseizo.h"
#include "src/overlays/actors/ovl_Demo_Effect/z_demo_effect.h"
#include "src/overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "src/overlays/actors/ovl_En_Dy_Extra/z_en_dy_extra.h"
#include "src/overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "rand.h"
#include "regs.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_lib.h"
#include "ocarina.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_dy_obj/object_dy_obj.h"
#include "assets/scenes/indoors/yousei_izumi_yoko/yousei_izumi_yoko_scene.h"
#include "assets/scenes/indoors/daiyousei_izumi/daiyousei_izumi_scene.h"

#if OOT_VERSION < NTSC_1_1
#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)
#else
#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)
#endif

void BgDyYoseizo_Init(Actor* thisx, PlayState* play2);
void BgDyYoseizo_Destroy(Actor* thisx, PlayState* play);
void BgDyYoseizo_Update(Actor* thisx, PlayState* play2);

void BgDyYoseizo_WaitSong(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupCutscene(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_SetupAppear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_Appear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_FinishAppear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_SetupTalk(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_Talk(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_SetupRefillPlayerEnergy(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_RefillPlayerEnergy(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Revisit_WaitTalkEnd(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_SetupDisappear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Disappear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Kill(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Reward_WaitCutscene(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Reward_Appear(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Reward_GiveReward(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Draw(Actor* thisx, PlayState* play);
void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f*, Vec3f*, Vec3f*, Color_RGB8*, Color_RGB8*, f32, s16, s16);
void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play);

typedef enum BgDyYoseizoRewardSpell {
    BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND,
    BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE,
    BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE
} BgDyYoseizoRewardSpell;

typedef enum BgDyYoseizoRewardMagic {
    BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC,
    BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_MAGIC,
    BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_DEFENSE
} BgDyYoseizoRewardMagic;

// This unused data is probably { GI_FARORES_WIND, GI_NAYRUS_LOVE, GI_DINS_FIRE }
static s32 D_80875440[3] = { 0x5D, 0x5E, 0x5C };

ActorProfile Bg_Dy_Yoseizo_Profile = {
    /**/ ACTOR_BG_DY_YOSEIZO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_DY_OBJ,
    /**/ sizeof(BgDyYoseizo),
    /**/ BgDyYoseizo_Init,
    /**/ BgDyYoseizo_Destroy,
    /**/ BgDyYoseizo_Update,
    /**/ NULL,
};

void BgDyYoseizo_Init(Actor* thisx, PlayState* play2) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;
    PlayState* play = play2;

    this->reward = play->spawn;
    if (this->reward < 0) {
        this->reward = 0;
    }
    this->homePosY = this->actor.world.pos.y;
    this->aboveFountainY = this->actor.world.pos.y + 40.0f;
    this->actor.focus.pos = this->actor.world.pos;
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairySittingTransitionAnim,
                           this->jointTable, this->morphTable, 28);
#if OOT_VERSION < NTSC_1_1
        if (!gSaveContext.save.info.playerData.isMagicAcquired && (this->reward != BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC)) {
            Actor_Kill(&this->actor);
            return;
        }
#endif
    } else {
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n" VT_RST, play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairyLayingDownTransitionAnim,
                           this->jointTable, this->morphTable, 28);
#if OOT_VERSION < NTSC_1_1
        if (!gSaveContext.save.info.playerData.isMagicAcquired) {
            Actor_Kill(&this->actor);
            return;
        }
#endif
    }
#if OOT_VERSION < NTSC_1_1
    this->actionFunc = BgDyYoseizo_SetupCutscene;
#else
    this->actionFunc = BgDyYoseizo_WaitSong;
#endif
}

void BgDyYoseizo_Destroy(Actor* thisx, PlayState* play) {
}

static Color_RGB8 sInnerColors[9] = {
    { 255, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 255, 170 },
};
static Color_RGB8 sOuterColors[9] = {
    { 155, 255, 255 }, { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 255, 100, 255 },
    { 255, 255, 100 }, { 100, 255, 100 }, { 255, 100, 100 }, { 100, 255, 255 },
};

void BgDyYoseizo_SpawnEffectsType(BgDyYoseizo* this, PlayState* play, s16 effType) {
    Vec3f vel = { 0.0f, 0.0f, 0.0f };
    Vec3f accel;
    Vec3f pos;
    Color_RGB8 innerColor;
    Color_RGB8 outerColor;
    f32 yOffset;
    f32 scale;
    s32 type;
    s32 life;
    s32 i;

    if (!(this->scale < 0.01f)) {
        yOffset = this->scale * 3500.0f;
        accel.x = Rand_ZeroOne() - 0.5f;
        accel.y = Rand_ZeroOne() - 0.5f;
        accel.z = Rand_ZeroOne() - 0.5f;
        for (i = 0; i < 2; i++) {
            if (effType == 0) {
                type = 0;
                scale = 0.4f;
                life = 90;
                pos.x = this->actor.world.pos.x;
                pos.y = this->actor.world.pos.y + yOffset + (yOffset * 0.5f * (Rand_ZeroOne() - 0.5f));
                pos.z = this->actor.world.pos.z + 30.0f;
            } else {
                scale = 0.2f;
                life = 50;
                type = effType;
                pos.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
                if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                    pos.y = this->actor.world.pos.y + yOffset + 50.0f + (yOffset * 0.1f * (Rand_ZeroOne() - 0.5f));
                    pos.z = this->actor.world.pos.z + 30.0f;
                } else {
                    pos.y = this->actor.world.pos.y + yOffset - 30.0f + (yOffset * 0.1f * (Rand_ZeroOne() - 0.5f));
                    pos.z = this->actor.world.pos.z + 60.0f;
                }
                if (LINK_IS_ADULT) {
                    pos.y += 20.0f;
                }
            }
            innerColor.r = sInnerColors[type].r;
            innerColor.g = sInnerColors[type].g;
            innerColor.b = sInnerColors[type].b;
            outerColor.r = sOuterColors[type].r;
            outerColor.g = sOuterColors[type].g;
            outerColor.b = sOuterColors[type].b;
            BgDyYoseizo_SpawnEffect(this, &pos, &vel, &accel, &innerColor, &outerColor, scale, life, type);
        }
    }
}

static s16 sSpellRewardsDemoEffectLightColor[3] = {
    DEMO_EFFECT_LIGHT_GREEN, // BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND
    DEMO_EFFECT_LIGHT_RED,   // BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE
    DEMO_EFFECT_LIGHT_BLUE,  // BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE
};
static s16 sSpellRewardsEnExItemParams[3] = {
    EXITEM_MAGIC_WIND, // BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND
    EXITEM_MAGIC_FIRE, // BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE
    EXITEM_MAGIC_DARK, // BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE
};
static s16 sSpellRewardsItemGetInfMask[3] = {
    ITEMGETINF_MASK(ITEMGETINF_FARORES_WIND), // BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND
    ITEMGETINF_MASK(ITEMGETINF_DINS_FIRE),    // BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE
    ITEMGETINF_MASK(ITEMGETINF_NAYRUS_LOVE),  // BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE
};
static u8 sSpellRewardsItem[3] = {
    ITEM_FARORES_WIND, // BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND
    ITEM_DINS_FIRE,    // BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE
    ITEM_NAYRUS_LOVE,  // BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE
};

static void* sEyeTextures[] = {
    gGreatFairyEyeOpenTex,
    gGreatFairyEyeHalfTex,
    gGreatFairyEyeClosedTex,
};

static void* sMouthTextures[] = {
    gGreatFairyMouthClosedTex,
    gGreatFairyMouthOpenTex,
};

void BgDyYoseizo_UpdatePosY(BgDyYoseizo* this, PlayState* play) {
    this->targetPosY = this->aboveFountainY + this->offsetY;
    Math_ApproachF(&this->actor.world.pos.y, this->targetPosY, 0.1f, 10.0f);
    Math_ApproachF(&this->offsetY, 10.0f, 0.1f, 0.5f);
    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actor.velocity.y = Math_SinS(TRUNCF_BINANG(this->yVelocityPhase));
    } else {
        this->actor.velocity.y = Math_SinS(TRUNCF_BINANG(this->yVelocityPhase)) * 0.4f;
    }
}

#if OOT_VERSION >= NTSC_1_1
void BgDyYoseizo_WaitSong(BgDyYoseizo* this, PlayState* play) {
    if (Flags_GetSwitch(play, 0x38)) {
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if (!gSaveContext.save.info.playerData.isMagicAcquired &&
                (this->reward != BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC)) {
                Actor_Kill(&this->actor);
                return;
            }
        } else {
            if (!gSaveContext.save.info.playerData.isMagicAcquired) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
        this->actionFunc = BgDyYoseizo_SetupCutscene;
    }
}
#endif

void BgDyYoseizo_SetupCutscene(BgDyYoseizo* this, PlayState* play) {
    s32 isNewAcquire;

#if OOT_VERSION < NTSC_1_1
    if (!Flags_GetSwitch(play, 0x38)) {
        return;
    }

    if (play->msgCtx.ocarinaMode != OCARINA_MODE_04) {
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
        return;
    }
#endif

    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n" VT_RST, play->msgCtx.ocarinaMode);
    isNewAcquire = false;
    if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        switch (this->reward) {
            case BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND:
                if (!GET_ITEMGETINF(ITEMGETINF_FARORES_WIND)) {
                    isNewAcquire = true;
                }
                break;

            case BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE:
                if (!GET_ITEMGETINF(ITEMGETINF_DINS_FIRE)) {
                    isNewAcquire = true;
                }
                break;

            case BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE:
                if (!GET_ITEMGETINF(ITEMGETINF_NAYRUS_LOVE)) {
                    isNewAcquire = true;
                }
                break;
        }
    } else {
        switch (this->reward) {
            case BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC:
                if (!gSaveContext.save.info.playerData.isMagicAcquired || (BREG(2) != 0)) {
                    PRINTF(VT_FGCOL(GREEN) " ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n" VT_RST);
                    isNewAcquire = true;
                    this->isNewAcquireMagic = true;
                }
                break;

            case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_MAGIC:
                if (!gSaveContext.save.info.playerData.isDoubleMagicAcquired) {
                    PRINTF(VT_FGCOL(YELLOW) " ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n" VT_RST);
                    this->isNewAcquireMagic = true;
                    isNewAcquire = true;
                }
                break;

            case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_DEFENSE:
                if (!gSaveContext.save.info.playerData.isDoubleDefenseAcquired) {
                    PRINTF(VT_FGCOL(MAGENTA) " ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n" VT_RST);
                    this->isNewAcquireMagic = true;
                    isNewAcquire = true;
                }
                break;
        }
    }
    if (isNewAcquire) {
        if (!IS_CUTSCENE_LAYER || !DEBUG_FEATURES) {
            if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                switch (this->reward) {
                    case BG_DY_YOSEIZO_REWARD_SPELL_FARORES_WIND:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyFaroresWindCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case BG_DY_YOSEIZO_REWARD_SPELL_DINS_FIRE:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDinsFireCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case BG_DY_YOSEIZO_REWARD_SPELL_NAYRUS_LOVE:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyNayrusLoveCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            } else {
                switch (this->reward) {
                    case BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_MAGIC:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_DEFENSE:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleDefenseCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            }
        }
        this->actionFunc = BgDyYoseizo_Reward_WaitCutscene;
    } else {
        play->envCtx.lightSettingOverride = 2;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            OnePointCutscene_Init(play, 8603, -99, NULL, CAM_ID_MAIN);
        } else {
            OnePointCutscene_Init(play, 8604, -99, NULL, CAM_ID_MAIN);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
        this->actor.draw = BgDyYoseizo_Draw;
        this->actionFunc = BgDyYoseizo_Revisit_SetupAppear;
    }
}

void BgDyYoseizo_Revisit_SetupAppear(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    this->actionFunc = BgDyYoseizo_Revisit_Appear;
}

void BgDyYoseizo_Revisit_Appear(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    Math_ApproachF(&this->actor.world.pos.y, this->aboveFountainY, this->yApproachFraction, 100.0f);
    Math_ApproachF(&this->scale, 0.035f, this->scaleApproachFraction, 0.005f);
    Math_ApproachF(&this->yApproachFraction, 0.8f, 0.1f, 0.02f);
    Math_ApproachF(&this->scaleApproachFraction, 0.2f, 0.03f, 0.05f);
    if (this->scale >= 0.034f) {
        if ((this->actor.shape.rot.y > -0x1F40) && (this->actor.shape.rot.y < 0x3E8)) {
            SkelAnime_Update(&this->skelAnime);
            Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 5, 0x3E8, 0);
            if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                this->actionFunc = BgDyYoseizo_Revisit_FinishAppear;
            }
        } else {
            this->actor.shape.rot.y += 0xBB8;
        }
    } else {
        this->actor.shape.rot.y += 0xBB8;
    }
    BgDyYoseizo_SpawnEffectsType(this, play, 0);
}

void BgDyYoseizo_Revisit_FinishAppear(BgDyYoseizo* this, PlayState* play) {
    f32 animPrevFrame = this->skelAnime.curFrame;

#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    if ((this->curAnimLastFrame * 1273.0f) <= this->yVelocityPhase) {
        this->yVelocityPhase = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->curAnimLastFrame <= animPrevFrame) && !this->hasSwitchedAnim) {
        this->actionFunc = BgDyYoseizo_Revisit_SetupTalk;
    }
}

void BgDyYoseizo_Revisit_SetupTalk(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairySittingAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->curAnimLastFrame, ANIMMODE_LOOP,
                         -10.0f);
    } else {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_LOOP, -10.0f);
    }
    this->actor.textId = 0xDB;
    this->waitMessageState = TEXT_STATE_EVENT;
    Message_StartTextbox(play, this->actor.textId, NULL);
    BgDyYoseizo_SpawnEffectsType(this, play, 0);
    this->actionFunc = BgDyYoseizo_Revisit_Talk;
}

void BgDyYoseizo_Revisit_Talk(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    this->yVelocityPhase = this->skelAnime.curFrame * 1273.0f;
    if (this->yVelocityPhase >= (this->curAnimLastFrame * 1273.0f)) {
        this->yVelocityPhase = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE);
        this->actionFunc = BgDyYoseizo_Revisit_SetupRefillPlayerEnergy;
    }
    BgDyYoseizo_UpdatePosY(this, play);
    BgDyYoseizo_SpawnEffectsType(this, play, 0);
}

void BgDyYoseizo_Revisit_SetupRefillPlayerEnergy(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyGivingSpellAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyGivingSpellAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_SMILE_0);
    this->mouthTexIndex = 1;
    this->actionFunc = BgDyYoseizo_Revisit_RefillPlayerEnergy;
}

void BgDyYoseizo_Revisit_RefillPlayerEnergy(BgDyYoseizo* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 animPrevFrame = this->skelAnime.curFrame;
    s16 beamType;
    Vec3f beamPos;

    if (this->hasSwitchedAnim) {
        this->yVelocityPhase = this->skelAnime.curFrame * 1300.0f;
        if ((this->curAnimLastFrame * 1300.0f) <= this->yVelocityPhase) {
            this->yVelocityPhase = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->curAnimLastFrame <= animPrevFrame) && !this->hasSwitchedAnim) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_LOOP, -10.0f);
        } else {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_LOOP, -10.0f);
        }
        this->refillTimer = 150;
        this->hasSwitchedAnim = true;
        if (!this->isNewAcquireMagic) {
            beamPos.x = player->actor.world.pos.x;
            beamPos.y = player->actor.world.pos.y + 200.0f;
            beamPos.z = player->actor.world.pos.z;
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                beamType = 0;
            } else {
                beamType = 1;
            }
            this->refillBeam = (EnDyExtra*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_DY_EXTRA,
                                                              beamPos.x, beamPos.y, beamPos.z, 0, 0, 0, beamType);
        }
    }
    if (this->refillTimeoutTimer > 1) {
        this->refillTimeoutTimer--;
    }
    if (this->refillTimer >= 110) {
        this->refillTimer--;
    }
    if (this->refillTimer == 110) {
        gSaveContext.healthAccumulator = 0x140;
        Magic_Fill(play);
        this->refillTimeoutTimer = 200;
    }
    if (((gSaveContext.save.info.playerData.healthCapacity == gSaveContext.save.info.playerData.health) &&
         (gSaveContext.save.info.playerData.magic == gSaveContext.magicCapacity)) ||
        (this->refillTimeoutTimer == 1)) {
        this->refillTimer--;
        if (this->refillTimer == 90) {
            if (!this->isNewAcquireMagic) {
                this->refillBeam->startDisappearing = true;
            }
            this->isNewAcquireMagic = false;
        }
    }
    if (this->refillTimer == 1) {
        this->actor.textId = 0xDA;
        this->waitMessageState = TEXT_STATE_EVENT;
        Message_ContinueTextbox(play, this->actor.textId);
        this->actionFunc = BgDyYoseizo_Revisit_WaitTalkEnd;
    } else {
        BgDyYoseizo_UpdatePosY(this, play);
    }
}

void BgDyYoseizo_Revisit_WaitTalkEnd(BgDyYoseizo* this, PlayState* play) {
    this->yVelocityPhase = this->skelAnime.curFrame * 1400.0f;
    if (this->yVelocityPhase >= (this->curAnimLastFrame * 1400.0f)) {
        this->yVelocityPhase = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->waitMessageState == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->mouthTexIndex = 0;
        this->actionFunc = BgDyYoseizo_SetupDisappear;
        Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
    }
    BgDyYoseizo_UpdatePosY(this, play);
    BgDyYoseizo_SpawnEffectsType(this, play, 0);
}

void BgDyYoseizo_SetupDisappear(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyJewelFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyJewelFountainSpinShrinkAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairySpellFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySpellFountainSpinShrinkAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                         ANIMMODE_ONCE, -10.0f);
    }
    this->disappearTimer = 5;
    this->scaleApproachFraction = 0.0f;
    this->yApproachFraction = 0.0f;
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
    Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_VANISH);
    this->actionFunc = BgDyYoseizo_Disappear;
}

void BgDyYoseizo_Disappear(BgDyYoseizo* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->disappearTimer == 0) {
        if (this->scale < 0.003f) {
            this->disappearTimer = 30;
            this->actionFunc = BgDyYoseizo_Kill;
        } else {
            Math_ApproachF(&this->actor.world.pos.y, this->homePosY, this->yApproachFraction, 100.0f);
            Math_ApproachZeroF(&this->scale, this->scaleApproachFraction, 0.005f);
            Math_ApproachF(&this->yApproachFraction, 0.8f, 0.1f, 0.02f);
            Math_ApproachF(&this->scaleApproachFraction, 0.2f, 0.03f, 0.05f);
            this->actor.shape.rot.y += 0xBB8;
            BgDyYoseizo_SpawnEffectsType(this, play, 0);
        }
    }
}

void BgDyYoseizo_Kill(BgDyYoseizo* this, PlayState* play) {
    Actor* actor;

    if (this->disappearTimer == 0) {
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
        play->envCtx.lightSettingOverride = 0;
        actor = play->actorCtx.actorLists[ACTORCAT_PROP].head;
        while (actor != NULL) {
            if (actor->id != ACTOR_EN_OKARINA_TAG) {
                actor = actor->next;
            } else {
                Actor_Kill(actor);
                break;
            }
        }
        Flags_UnsetSwitch(play, 0x38);
        Actor_Kill(&this->actor);
    }
}

void BgDyYoseizo_Reward_WaitCutscene(BgDyYoseizo* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[0] != NULL) &&
        (play->csCtx.actorCues[0]->id == 2)) {
        this->actor.draw = BgDyYoseizo_Draw;
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
        this->isDoneAppearing = false;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
            Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_ONCE, -10.0f);
        } else {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_ONCE, -10.0f);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
        this->actionFunc = BgDyYoseizo_Reward_Appear;
    }
}

void BgDyYoseizo_Reward_Appear(BgDyYoseizo* this, PlayState* play) {
    f32 animPrevFrame = this->skelAnime.curFrame;

    if (!this->isDoneAppearing) {
        Math_ApproachF(&this->actor.world.pos.y, this->aboveFountainY, this->yApproachFraction, 100.0f);
        Math_ApproachF(&this->scale, 0.035f, this->scaleApproachFraction, 0.005f);
        Math_ApproachF(&this->yApproachFraction, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->scaleApproachFraction, 0.2f, 0.03f, 0.05f);
        if (this->scale >= 0.034f) {
            if ((this->actor.shape.rot.y >= -0x1F3F) && (this->actor.shape.rot.y < 0x3E8)) {
                SkelAnime_Update(&this->skelAnime);
                Math_ApproachS(&this->actor.shape.rot.y, 0, 5, 0x3E8);
                if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                    this->isDoneAppearing = true;
                }
            } else {
                this->actor.shape.rot.y += 0xBB8;
            }
        } else {
            this->actor.shape.rot.y += 0xBB8;
        }
    } else {
        SkelAnime_Update(&this->skelAnime);
        if ((this->curAnimLastFrame <= animPrevFrame) && !this->hasSwitchedAnim) {
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairySittingAnim);
                Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                                 ANIMMODE_LOOP, -10.0f);
            } else {
                this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                                 ANIMMODE_LOOP, -10.0f);
            }
            this->hasSwitchedAnim = true;
        }
        if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[0] != NULL) &&
            (play->csCtx.actorCues[0]->id == 3)) {
            this->isDoneAppearing = this->hasSwitchedAnim = false;
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                                 ANIMMODE_ONCE, -10.0f);
            } else {
                this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyGivingSpellAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyGivingSpellAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                                 ANIMMODE_ONCE, -10.0f);
            }
            this->mouthTexIndex = 1;
            this->actionFunc = BgDyYoseizo_Reward_GiveReward;
        }
    }
    BgDyYoseizo_SpawnEffectsType(this, play, 0);
}

void BgDyYoseizo_Reward_GiveReward(BgDyYoseizo* this, PlayState* play) {
    f32 animPrevFrame = this->skelAnime.curFrame;
    Player* player = GET_PLAYER(play);
    s16 n;
    s16 demoEffectParams;
    Vec3f itemPos;

    if (this->hasSwitchedAnim) {
        this->yVelocityPhase = this->skelAnime.curFrame * 1400.0f;
        if (this->yVelocityPhase >= (this->curAnimLastFrame * 1400.0f)) {
            this->yVelocityPhase = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->curAnimLastFrame <= animPrevFrame) && !this->hasSwitchedAnim) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_LOOP, -10.0f);
        } else {
            this->curAnimLastFrame = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->curAnimLastFrame,
                             ANIMMODE_LOOP, -10.0f);
        }
        this->hasSwitchedAnim = true;
    }
    if (play->csCtx.actorCues[0]->id == 13) {
        this->actionFunc = BgDyYoseizo_SetupDisappear;
        return;
    }
    if ((play->csCtx.actorCues[0]->id >= 4) && (play->csCtx.actorCues[0]->id <= 6)) {
        n = play->csCtx.actorCues[0]->id - 4;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            n += 1;
            BgDyYoseizo_SpawnEffectsType(this, play, n);
        } else if (!this->hasSpawnedDemoEffect) {
            demoEffectParams = sSpellRewardsDemoEffectLightColor[n] << 12;
            demoEffectParams |= DEMO_EFFECT_LIGHT;
            Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, 0, 0, demoEffectParams);
            this->hasSpawnedDemoEffect = true;
        }
    } else {
        BgDyYoseizo_SpawnEffectsType(this, play, 0);
    }
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        if ((play->csCtx.actorCues[0]->id >= 10) && (play->csCtx.actorCues[0]->id <= 12)) {
            n = play->csCtx.actorCues[0]->id - 10;
            switch (n) {
                case BG_DY_YOSEIZO_REWARD_MAGIC_MAGIC:
                    gSaveContext.save.info.playerData.isMagicAcquired = true;
                    gSaveContext.magicFillTarget = 0x30;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;

                case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_MAGIC:
                    if (!gSaveContext.save.info.playerData.isMagicAcquired) {
                        gSaveContext.save.info.playerData.isMagicAcquired = true;
                    }
                    gSaveContext.save.info.playerData.isDoubleMagicAcquired = true;
                    gSaveContext.magicFillTarget = 0x60;
                    gSaveContext.save.info.playerData.magicLevel = 0;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;

                case BG_DY_YOSEIZO_REWARD_MAGIC_DOUBLE_DEFENSE:
                    gSaveContext.save.info.playerData.isDoubleDefenseAcquired = true;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;
            }
            if (!this->energyRefilled) {
                gSaveContext.healthAccumulator = 0x140;
                this->energyRefilled = true;
                if (n == 2) {
                    Magic_Fill(play);
                }
            }
        }
    }
    if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        if ((play->csCtx.actorCues[0]->id >= 14) && (play->csCtx.actorCues[0]->id <= 16)) {
            n = play->csCtx.actorCues[0]->id - 14;
            if (!this->hasSpawnedItem) {
                itemPos.x = player->actor.world.pos.x;
                if (LINK_IS_ADULT) {
                    itemPos.y = player->actor.world.pos.y + 73.0f;
                } else {
                    itemPos.y = player->actor.world.pos.y + 53.0f;
                }
                itemPos.z = player->actor.world.pos.z;
                this->item =
                    (EnExItem*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, itemPos.x,
                                                  itemPos.y, itemPos.z, 0, 0, 0, sSpellRewardsEnExItemParams[n]);
                if (this->item != NULL) {
                    if (!gSaveContext.save.info.playerData.isMagicAcquired) {
                        gSaveContext.save.info.playerData.isMagicAcquired = true;
                    } else {
                        Magic_Fill(play);
                    }
                    this->hasSpawnedItem = true;
                    gSaveContext.healthAccumulator = 0x140;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    gSaveContext.save.info.itemGetInf[ITEMGETINF_INDEX_SPELLS] |= sSpellRewardsItemGetInfMask[n];
                    Item_Give(play, sSpellRewardsItem[n]);
                }
            } else {
                this->item->actor.world.pos.x = player->actor.world.pos.x;
                if (LINK_IS_ADULT) {
                    this->item->actor.world.pos.y = player->actor.world.pos.y + 73.0f;
                } else {
                    this->item->actor.world.pos.y = player->actor.world.pos.y + 53.0f;
                }
                this->item->actor.world.pos.z = player->actor.world.pos.z;
                this->item->scale = 0.3f;
            }
        }
    }
    if ((play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.actorCues[0]->id == 17)) {
        if (this->item != NULL) {
            Actor_Kill(&this->item->actor);
            this->item = NULL;
        }
    }
    if ((play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.actorCues[0]->id == 18)) {
        this->giveDoubleDefense = true;
    }
    if (this->giveDoubleDefense) {
        if (gSaveContext.save.info.inventory.defenseHearts < 20) {
            gSaveContext.save.info.inventory.defenseHearts += 1;
        }
    }
    if ((play->csCtx.actorCues[0]->id >= 19) && (play->csCtx.actorCues[0]->id <= 21) && (this->unk304 == 0)) {
        n = play->csCtx.actorCues[0]->id - (19 - WARP_ORANGE);
        Actor_Spawn(&play->actorCtx, play, ACTOR_DOOR_WARP1, player->actor.world.pos.x, player->actor.world.pos.y,
                    player->actor.world.pos.z, 0, 0, 0, n);
        this->unk304 = 1;
    }
    BgDyYoseizo_UpdatePosY(this, play);
}

void BgDyYoseizo_Update(Actor* thisx, PlayState* play2) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;
    PlayState* play = play2;
    s32 sfx;

    this->unk_2F0++;
    if (this->disappearTimer != 0) {
        this->disappearTimer--;
    }
    if (this->eyeTimer != 0) {
        this->eyeTimer--;
    }
    if (this->unk_2FA != 0) {
        this->unk_2FA--;
    }
    this->actionFunc(this, play);
    if (play->csCtx.state != CS_STATE_IDLE) {
        sfx = 0;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if ((play->csCtx.curFrame == 32) || (play->csCtx.curFrame == 291) || (play->csCtx.curFrame == 426) ||
                (play->csCtx.curFrame == 851)) {
                sfx = 1;
            }
            if (play->csCtx.curFrame == 101) {
                sfx = 2;
            }
        } else {
            if ((play->csCtx.curFrame == 35) || (play->csCtx.curFrame == 181) || (play->csCtx.curFrame == 462) ||
                (play->csCtx.curFrame == 795)) {
                sfx = 1;
            }
            if (play->csCtx.curFrame == 90) {
                sfx = 2;
            }
        }
        if (sfx == 1) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_FR_SMILE_0);
        }
        if (sfx == 2) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
        }
    }
    if ((this->eyeTimer == 0) && (this->actionFunc != BgDyYoseizo_Revisit_RefillPlayerEnergy)) {
        this->eyeTexIndex += 1;
        this->unusedEyeTexIndex += 1;
        if (this->eyeTexIndex >= 3) {
            this->eyeTexIndex = this->unusedEyeTexIndex = 0;
            this->eyeTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    Actor_MoveXZGravity(&this->actor);
    this->focusY = this->scale * 7500.0f;
    Actor_SetFocus(&this->actor, this->focusY);
    this->actor.focus.pos.y = this->focusY;
    Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    BgDyYoseizo_UpdateEffects(this, play);
    Actor_SetScale(&this->actor, this->scale);
}

s32 BgDyYoseizo_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    if (limbIndex == 8) {
        rot->x += this->torsoRot.y;
    }
    if (limbIndex == 15) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }
    return false;
}

void BgDyYoseizo_Draw(Actor* thisx, PlayState* play) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1609);
    if (this->actionFunc != BgDyYoseizo_Kill) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
        // The model doesn't access segment 9
        gSPSegment(POLY_OPA_DISP++, 9, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->unusedEyeTexIndex]));
        gSPSegment(POLY_OPA_DISP++, 10, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthTexIndex]));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              BgDyYoseizo_OverrideLimbDraw, NULL, this);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1629);
    BgDyYoseizo_DrawEffects(this, play);
}

void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, Color_RGB8* innerColor,
                             Color_RGB8* outerColor, f32 scale, s16 life, s16 type) {
    BgDyYoseizoEffect* effect;
    s16 i;

    effect = this->effects;
    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->active == 0) {
            effect->active = 1;
            effect->pos = *pos;
            effect->vel = *vel;
            effect->accel = *accel;
            effect->innerColor = *innerColor;
            effect->alpha = 0;
            effect->outerColor = *outerColor;
            effect->scale = scale;
            effect->life = life;
            effect->type = type;
            effect->pitch = 0.0f;
            effect->yaw = Rand_CenteredFloat(30000.0f);
            effect->rot = 0.0f;
            break;
        }
    }
}

void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play) {
    s16 i;
    Player* player;
    Vec3f offset;
    Vec3f vel;
    BgDyYoseizoEffect* effect;
    f32 targetPitch;
    f32 targetYaw;

    effect = this->effects;
    player = GET_PLAYER(play);
    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->active != 0) {
            effect->rot += 3000.0f;
            if (effect->type == 0) {
                effect->pos.x += effect->vel.x;
                effect->pos.y += effect->vel.y;
                effect->pos.z += effect->vel.z;
                effect->vel.x += effect->accel.x;
                effect->vel.y += effect->accel.y;
                effect->vel.z += effect->accel.z;
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EV_HEALING - SFX_FLAG);
                offset = player->actor.world.pos;
                offset.y = player->actor.world.pos.y - 150.0f;
                offset.z = player->actor.world.pos.z - 50.0f;
                targetPitch = Math_Vec3f_Pitch(&effect->pos, &offset);
                targetYaw = Math_Vec3f_Yaw(&effect->pos, &offset);
                Math_ApproachF(&effect->pitch, targetPitch, 0.9f, 5000.0f);
                Math_ApproachF(&effect->yaw, targetYaw, 0.9f, 5000.0f);
                Matrix_Push();
                Matrix_RotateY(BINANG_TO_RAD_ALT(effect->yaw), MTXMODE_NEW);
                Matrix_RotateX(BINANG_TO_RAD_ALT(effect->pitch), MTXMODE_APPLY);
                offset.x = offset.y = offset.z = 3.0f;
                Matrix_MultVec3f(&offset, &vel);
                Matrix_Pop();
                effect->pos.x += vel.x;
                effect->pos.y += vel.y;
                effect->pos.z += vel.z;
            }
        }
        if (effect->life != 0) {
            effect->life--;
            effect->alpha += 30;
            if (effect->alpha > 255) {
                effect->alpha = 255;
            }
        } else {
            effect->alpha -= 30;
            if (effect->alpha <= 0) {
                effect->alpha = effect->active = 0;
            }
        }
    }
}

void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s16 i;
    BgDyYoseizoEffect* effect;
    u8 materialFlag = 0;

    effect = this->effects;
    OPEN_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1767);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    for (i = 0; i < BG_DY_YOSEIZO_EFFECT_COUNT; i++, effect++) {
        if (effect->active == 1) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleMaterialDL));
                gDPPipeSync(POLY_XLU_DISP++);
                materialFlag++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, effect->innerColor.r, effect->innerColor.g,
                            effect->innerColor.b, effect->alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, effect->outerColor.r, effect->outerColor.g, effect->outerColor.b, 0);
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(effect->rot, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_bg_dy_yoseizo.c", 1810);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleModelDL));
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1819);
}
