/*
 * File: z_bg_dy_yoseizo.c
 * Overlay: ovl_Bg_Dy_Yoseizo
 * Description: Great Fairy
 */

#include "z_bg_dy_yoseizo.h"
#include "overlays/actors/ovl_En_Dy_Extra/z_en_dy_extra.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"

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

void func_80872D20(BgDyYoseizo* this, PlayState* play);
void func_80872DE4(BgDyYoseizo* this, PlayState* play);
void func_8087328C(BgDyYoseizo* this, PlayState* play);
void func_80873380(BgDyYoseizo* this, PlayState* play);
void func_808734DC(BgDyYoseizo* this, PlayState* play);
void func_8087358C(BgDyYoseizo* this, PlayState* play);
void func_808736A4(BgDyYoseizo* this, PlayState* play);
void func_80873780(BgDyYoseizo* this, PlayState* play);
void func_80873868(BgDyYoseizo* this, PlayState* play);
void func_80873B3C(BgDyYoseizo* this, PlayState* play);
void func_80873C14(BgDyYoseizo* this, PlayState* play);
void func_80873D14(BgDyYoseizo* this, PlayState* play);
void func_80873E04(BgDyYoseizo* this, PlayState* play);
void func_80873EA4(BgDyYoseizo* this, PlayState* play);
void func_80873FD8(BgDyYoseizo* this, PlayState* play);
void func_80874304(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_Draw(Actor* thisx, PlayState* play);
void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f*, Vec3f*, Vec3f*, Color_RGB8*, Color_RGB8*, f32, s16, s16);
void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play);
void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play);

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
static Color_RGB8 D_8087546C[9] = {
    { 0xFF, 0xFF, 0xFF }, { 0xFF, 0xFF, 0x64 }, { 0x64, 0xFF, 0x64 }, { 0xFF, 0x64, 0x64 }, { 0xFF, 0xFF, 0xAA },
    { 0xFF, 0xFF, 0x64 }, { 0x64, 0xFF, 0x64 }, { 0xFF, 0x64, 0x64 }, { 0xFF, 0xFF, 0xAA },
};
static Color_RGB8 D_80875488[9] = {
    { 0x9B, 0xFF, 0xFF }, { 0xFF, 0xFF, 0x64 }, { 0x64, 0xFF, 0x64 }, { 0xFF, 0x64, 0x64 }, { 0xFF, 0x64, 0xFF },
    { 0xFF, 0xFF, 0x64 }, { 0x64, 0xFF, 0x64 }, { 0xFF, 0x64, 0x64 }, { 0x64, 0xFF, 0xFF },
};
static Vec3f D_808754A4 = { 0.0f, 0.0f, 0.0f };
static s16 D_808754B0[4] = { 2, 0, 1, 0 };
static s16 D_808754B8[4] = { 0x11, 0x10, 0x12, 0 };
static s16 D_808754C0[] = { ITEMGETINF_MASK(ITEMGETINF_18), ITEMGETINF_MASK(ITEMGETINF_19),
                            ITEMGETINF_MASK(ITEMGETINF_1A) };
static u8 D_808754C8[4] = { 0xD, 5, 0x13, 0 };

static void* D_808754CC[] = {
    gGreatFairyEyeOpenTex,
    gGreatFairyEyeHalfTex,
    gGreatFairyEyeClosedTex,
};

static void* D_808754D8[] = {
    gGreatFairyMouthClosedTex,
    gGreatFairyMouthOpenTex,
};

void BgDyYoseizo_Init(Actor* thisx, PlayState* play2) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;
    PlayState* play = play2;

    this->unk2EC = (s16)play->spawn;
    if (this->unk2EC < 0) {
        this->unk2EC = 0;
    }
    this->unk310 = this->actor.world.pos.y;
    this->unk30C = this->actor.world.pos.y + 40.0f;
    this->actor.focus.pos = this->actor.world.pos;
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        PRINTF("\x1b[32m☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n\x1b[m", play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairySittingTransitionAnim, this->unk194,
                           this->unk23C, 28);
#if OOT_VERSION < NTSC_1_1
        if (!gSaveContext.save.info.playerData.isMagicAcquired && (this->unk2EC != 0)) {
            Actor_Kill(&this->actor);
            return;
        }
#endif
    } else {
        PRINTF("\x1b[32m☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n\x1b[m", play->spawn);
        SkelAnime_InitFlex(play, &this->skelAnime, &gGreatFairySkel, &gGreatFairyLayingDownTransitionAnim, this->unk194,
                           this->unk23C, 28);
#if OOT_VERSION < NTSC_1_1
        if (!gSaveContext.save.info.playerData.isMagicAcquired) {
            Actor_Kill(&this->actor);
            return;
        }
#endif
    }
#if OOT_VERSION < NTSC_1_1
    this->actionFunc = func_80872DE4;
#else
    this->actionFunc = func_80872D20;
#endif
}

void BgDyYoseizo_Destroy(Actor* thisx, PlayState* play) {
}

void func_80872960(BgDyYoseizo* this, PlayState* play, s16 arg2) {
    Vec3f spC4;
    Vec3f spB8;
    Vec3f spAC;
    Color_RGB8 spA8;
    Color_RGB8 spA4;
    f32 temp_fs0;
    f32 var_fs2;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;

    spC4 = D_808754A4;
    if (!(this->unk308 < 0.01f)) {
        temp_fs0 = this->unk308 * 3500.0f;
        spB8.x = Rand_ZeroOne() - 0.5f;
        spB8.y = Rand_ZeroOne() - 0.5f;
        spB8.z = Rand_ZeroOne() - 0.5f;
        for (var_s3 = 0; var_s3 < 2; var_s3++) {
            if (arg2 == 0) {
                var_s1 = 0;
                var_fs2 = 0.4f;
                var_s2 = 0x5A;
                spAC.x = this->actor.world.pos.x;
                spAC.y = this->actor.world.pos.y + temp_fs0 + (temp_fs0 * 0.5f * (Rand_ZeroOne() - 0.5f));
                spAC.z = this->actor.world.pos.z + 30.0f;
            } else {
                var_fs2 = 0.2f;
                var_s2 = 0x32;
                var_s1 = arg2;
                spAC.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
                if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                    spAC.y = this->actor.world.pos.y + temp_fs0 + 50.0f + (temp_fs0 * 0.1f * (Rand_ZeroOne() - 0.5f));
                    spAC.z = this->actor.world.pos.z + 30.0f;
                } else {
                    spAC.y = this->actor.world.pos.y + temp_fs0 - 30.0f + (temp_fs0 * 0.1f * (Rand_ZeroOne() - 0.5f));
                    spAC.z = this->actor.world.pos.z + 60.0f;
                }
                if (LINK_IS_ADULT) {
                    spAC.y += 20.0f;
                }
            }
            spA8.r = D_8087546C[var_s1].r;
            spA8.g = D_8087546C[var_s1].g;
            spA8.b = D_8087546C[var_s1].b;
            spA4.r = D_80875488[var_s1].r;
            spA4.g = D_80875488[var_s1].g;
            spA4.b = D_80875488[var_s1].b;
            BgDyYoseizo_SpawnEffect(this, &spAC, &spC4, &spB8, &spA8, &spA4, var_fs2, var_s2, var_s1);
        }
    }
}

void func_80872C58(BgDyYoseizo* this, PlayState* play) {
    this->unk31C = this->unk30C + this->unk320;
    Math_ApproachF(&this->actor.world.pos.y, this->unk31C, 0.1f, 10.0f);
    Math_ApproachF(&this->unk320, 10.0f, 0.1f, 0.5f);
    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actor.velocity.y = Math_SinS((s16)(s32)this->unk324);
    } else {
        this->actor.velocity.y = Math_SinS((s16)(s32)this->unk324) * 0.4f;
    }
}

#if OOT_VERSION >= NTSC_1_1
void func_80872D20(BgDyYoseizo* this, PlayState* play) {
    if (Flags_GetSwitch(play, 0x38)) {
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if (!gSaveContext.save.info.playerData.isMagicAcquired && (this->unk2EC != 0)) {
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
        this->actionFunc = func_80872DE4;
    }
}
#endif

void func_80872DE4(BgDyYoseizo* this, PlayState* play) {
    s32 var_v1;

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
    PRINTF("\x1b[33m☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n\x1b[m", play->msgCtx.ocarinaMode);
    var_v1 = 0;
    if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        switch (this->unk2EC) {
            case 0:
                if (!GET_ITEMGETINF(ITEMGETINF_18)) {
                    var_v1 = 1;
                }
                break;

            case 1:
                if (!GET_ITEMGETINF(ITEMGETINF_19)) {
                    var_v1 = 1;
                }
                break;

            case 2:
                if (!GET_ITEMGETINF(ITEMGETINF_1A)) {
                    var_v1 = 1;
                }
                break;
        }
    } else {
        switch (this->unk2EC) {
            case 0:
                if (!gSaveContext.save.info.playerData.isMagicAcquired || (gRegEditor->data[0x962] != 0)) {
                    PRINTF("\x1b[32m ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n\x1b[m");
                    var_v1 = 1;
                    this->unk2EA = 1;
                }
                break;

            case 1:
                if (!gSaveContext.save.info.playerData.isDoubleMagicAcquired) {
                    PRINTF("\x1b[33m ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n\x1b[m");
                    this->unk2EA = 1;
                    var_v1 = 1;
                }
                break;

            case 2:
                if (!gSaveContext.save.info.playerData.isDoubleDefenseAcquired) {
                    PRINTF("\x1b[35m ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n\x1b[m");
                    this->unk2EA = 1;
                    var_v1 = 1;
                }
                break;
        }
    }
    if (var_v1 != 0) {
        if (!IS_CUTSCENE_LAYER || !DEBUG_FEATURES) {
            if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                switch (this->unk2EC) {
                    case 0:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyFaroresWindCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case 1:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDinsFireCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case 2:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyNayrusLoveCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            } else {
                switch (this->unk2EC) {
                    case 0:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case 1:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleMagicCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;

                    case 2:
                        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gGreatFairyDoubleDefenseCs);
                        gSaveContext.cutsceneTrigger = 1;
                        break;
                }
            }
        }
        this->actionFunc = func_80873EA4;
    } else {
        play->envCtx.lightSettingOverride = 2;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            OnePointCutscene_Init(play, 8603, -99, NULL, CAM_ID_MAIN);
        } else {
            OnePointCutscene_Init(play, 8604, -99, NULL, CAM_ID_MAIN);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
        this->actor.draw = BgDyYoseizo_Draw;
        this->actionFunc = func_8087328C;
    }
}

void func_8087328C(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->unk32C = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_ONCE,
                         -10.0f);
    } else {
        this->unk32C = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->unk32C,
                         ANIMMODE_ONCE, -10.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    this->actionFunc = func_80873380;
}

void func_80873380(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    Math_ApproachF(&this->actor.world.pos.y, this->unk30C, this->unk314, 100.0f);
    Math_ApproachF(&this->unk308, 0.035f, this->unk318, 0.005f);
    Math_ApproachF(&this->unk314, 0.8f, 0.1f, 0.02f);
    Math_ApproachF(&this->unk318, 0.2f, 0.03f, 0.05f);
    if (this->unk308 >= 0.034f) {
        if ((this->actor.shape.rot.y >= -0x1F3F) && (this->actor.shape.rot.y < 0x3E8)) {
            SkelAnime_Update(&this->skelAnime);
            Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 5, 0x3E8, 0);
            if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                this->actionFunc = func_808734DC;
            }
        } else {
            this->actor.shape.rot.y += 0xBB8;
        }
    } else {
        this->actor.shape.rot.y += 0xBB8;
    }
    func_80872960(this, play, 0);
}

void func_808734DC(BgDyYoseizo* this, PlayState* play) {
    f32 sp1C;

    sp1C = this->skelAnime.curFrame;
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    if ((this->unk32C * 1273.0f) <= this->unk324) {
        this->unk324 = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk32C <= sp1C) && (this->unk2FC == 0)) {
        this->actionFunc = func_8087358C;
    }
}

void func_8087358C(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->unk32C = Animation_GetLastFrame(&gGreatFairySittingAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP, -10.0f);
    } else {
        this->unk32C = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                         -10.0f);
    }
    this->actor.textId = 0xDB;
    this->unk2EE = TEXT_STATE_EVENT;
    Message_StartTextbox(play, this->actor.textId, NULL);
    func_80872960(this, play, 0);
    this->actionFunc = func_808736A4;
}

void func_808736A4(BgDyYoseizo* this, PlayState* play) {
#if OOT_VERSION >= NTSC_1_1
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#endif
    this->unk324 = this->skelAnime.curFrame * 1273.0f;
    if (this->unk324 >= (this->unk32C * 1273.0f)) {
        this->unk324 = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk2EE == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE);
        this->actionFunc = func_80873780;
    }
    func_80872C58(this, play);
    func_80872960(this, play, 0);
}

void func_80873780(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->unk32C = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_ONCE,
                         -10.0f);
    } else {
        this->unk32C = Animation_GetLastFrame(&gGreatFairyAnim_005810);
        Animation_Change(&this->skelAnime, &gGreatFairyAnim_005810, 1.0f, 0.0f, this->unk32C, ANIMMODE_ONCE, -10.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_SMILE_0);
    this->unk2F6 = 1;
    this->actionFunc = func_80873868;
}

void func_80873868(BgDyYoseizo* this, PlayState* play) {
    Player* player;
    f32 temp_fv1;
    s16 var_v0;
    Vec3f vec;

    player = GET_PLAYER(play);
    temp_fv1 = this->skelAnime.curFrame;
    if (this->unk2FC != 0) {
        this->unk324 = this->skelAnime.curFrame * 1300.0f;
        if ((this->unk32C * 1300.0f) <= this->unk324) {
            this->unk324 = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk32C <= temp_fv1) && (this->unk2FC == 0)) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->unk32C = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                             -10.0f);
        } else {
            this->unk32C = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                             -10.0f);
        }
        this->unk302 = 0x96;
        this->unk2FC = 1;
        if (this->unk2EA == 0) {
            vec.x = player->actor.world.pos.x;
            vec.y = player->actor.world.pos.y + 200.0f;
            vec.z = player->actor.world.pos.z;
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                var_v0 = 0;
            } else {
                var_v0 = 1;
            }
            this->unk340 = (EnDyExtra*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_DY_EXTRA, vec.x,
                                                          vec.y, vec.z, 0, 0, 0, var_v0);
        }
    }
    if (this->unk306 >= 2) {
        this->unk306--;
    }
    if (this->unk302 >= 0x6E) {
        this->unk302--;
    }
    if (this->unk302 == 0x6E) {
        gSaveContext.healthAccumulator = 0x140;
        Magic_Fill(play);
        this->unk306 = 0xC8;
    }
    if (((gSaveContext.save.info.playerData.healthCapacity == gSaveContext.save.info.playerData.health) &&
         (gSaveContext.save.info.playerData.magic == gSaveContext.magicCapacity)) ||
        (this->unk306 == 1)) {
        this->unk302--;
        if (this->unk302 == 0x5A) {
            if (this->unk2EA == 0) {
                this->unk340->unk_152 = 1;
            }
            this->unk2EA = 0;
        }
    }
    if (this->unk302 == 1) {
        this->actor.textId = 0xDA;
        this->unk2EE = TEXT_STATE_EVENT;
        Message_ContinueTextbox(play, this->actor.textId);
        this->actionFunc = func_80873B3C;
    } else {
        func_80872C58(this, play);
    }
}

void func_80873B3C(BgDyYoseizo* this, PlayState* play) {
    this->unk324 = this->skelAnime.curFrame * 1400.0f;
    if (this->unk324 >= (this->unk32C * 1400.0f)) {
        this->unk324 = 0.0f;
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk2EE == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->unk2F6 = 0;
        this->actionFunc = func_80873C14;
        Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
    }
    func_80872C58(this, play);
    func_80872960(this, play, 0);
}

void func_80873C14(BgDyYoseizo* this, PlayState* play) {
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        this->unk32C = Animation_GetLastFrame(&gGreatFairyJewelFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairyJewelFountainSpinShrinkAnim, 1.0f, 0.0f, this->unk32C,
                         ANIMMODE_ONCE, -10.0f);
    } else {
        this->unk32C = Animation_GetLastFrame(&gGreatFairySpellFountainSpinShrinkAnim);
        Animation_Change(&this->skelAnime, &gGreatFairySpellFountainSpinShrinkAnim, 1.0f, 0.0f, this->unk32C,
                         ANIMMODE_ONCE, -10.0f);
    }
    this->unk2E8 = 5;
    this->unk318 = 0.0f;
    this->unk314 = 0.0f;
    Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
    Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_VANISH);
    this->actionFunc = func_80873D14;
}

void func_80873D14(BgDyYoseizo* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk2E8 == 0) {
        if (this->unk308 < 0.003f) {
            this->unk2E8 = 0x1E;
            this->actionFunc = func_80873E04;
        } else {
            Math_ApproachF(&this->actor.world.pos.y, this->unk310, this->unk314, 100.0f);
            Math_ApproachZeroF(&this->unk308, this->unk318, 0.005f);
            Math_ApproachF(&this->unk314, 0.8f, 0.1f, 0.02f);
            Math_ApproachF(&this->unk318, 0.2f, 0.03f, 0.05f);
            this->actor.shape.rot.y += 0xBB8;
            func_80872960(this, play, 0);
        }
    }
}

void func_80873E04(BgDyYoseizo* this, PlayState* play) {
    Actor* var_a0;

    if (this->unk2E8 == 0) {
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
        play->envCtx.lightSettingOverride = 0;
        var_a0 = play->actorCtx.actorLists[ACTORCAT_PROP].head;
        while (var_a0 != NULL) {
            if (var_a0->id != ACTOR_EN_OKARINA_TAG) {
                var_a0 = var_a0->next;
            } else {
                Actor_Kill(var_a0);
                break;
            }
        }
        Flags_UnsetSwitch(play, 0x38);
        Actor_Kill(&this->actor);
    }
}

void func_80873EA4(BgDyYoseizo* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[0] != NULL) &&
        (play->csCtx.actorCues[0]->id == 2)) {
        this->actor.draw = BgDyYoseizo_Draw;
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
        this->unk2FE = 0;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->unk32C = Animation_GetLastFrame(&gGreatFairySittingTransitionAnim);
            Animation_Change(&this->skelAnime, &gGreatFairySittingTransitionAnim, 1.0f, 0.0f, this->unk32C,
                             ANIMMODE_ONCE, -10.0f);
        } else {
            this->unk32C = Animation_GetLastFrame(&gGreatFairyLayingDownTransitionAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyLayingDownTransitionAnim, 1.0f, 0.0f, this->unk32C,
                             ANIMMODE_ONCE, -10.0f);
        }
        Actor_PlaySfx(&this->actor, NA_SE_EV_GREAT_FAIRY_APPEAR);
        this->actionFunc = func_80873FD8;
    }
}

void func_80873FD8(BgDyYoseizo* this, PlayState* play) {
    f32 temp_fv0;

    temp_fv0 = this->skelAnime.curFrame;
    if (this->unk2FE == 0) {
        Math_ApproachF(&this->actor.world.pos.y, this->unk30C, this->unk314, 100.0f);
        Math_ApproachF(&this->unk308, 0.035f, this->unk318, 0.005f);
        Math_ApproachF(&this->unk314, 0.8f, 0.1f, 0.02f);
        Math_ApproachF(&this->unk318, 0.2f, 0.03f, 0.05f);
        if (this->unk308 >= 0.034f) {
            if ((this->actor.shape.rot.y >= -0x1F3F) && (this->actor.shape.rot.y < 0x3E8)) {
                SkelAnime_Update(&this->skelAnime);
                Math_ApproachS(&this->actor.shape.rot.y, 0, 5, 0x3E8);
                if (fabsf(this->actor.shape.rot.y) < 50.0f) {
                    this->unk2FE = 1;
                }
            } else {
                this->actor.shape.rot.y += 0xBB8;
            }
        } else {
            this->actor.shape.rot.y += 0xBB8;
        }
    } else {
        SkelAnime_Update(&this->skelAnime);
        if ((this->unk32C <= temp_fv0) && (this->unk2FC == 0)) {
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->unk32C = Animation_GetLastFrame(&gGreatFairySittingAnim);
                Animation_Change(&this->skelAnime, &gGreatFairySittingAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                                 -10.0f);
            } else {
                this->unk32C = Animation_GetLastFrame(&gGreatFairyLayingSidewaysAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyLayingSidewaysAnim, 1.0f, 0.0f, this->unk32C,
                                 ANIMMODE_LOOP, -10.0f);
            }
            this->unk2FC = 1;
        }
        if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[0] != NULL) &&
            (play->csCtx.actorCues[0]->id == 3)) {
            this->unk2FE = this->unk2FC = 0;
            if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
                this->unk32C = Animation_GetLastFrame(&gGreatFairyGivingUpgradeAnim);
                Animation_Change(&this->skelAnime, &gGreatFairyGivingUpgradeAnim, 1.0f, 0.0f, this->unk32C,
                                 ANIMMODE_ONCE, -10.0f);
            } else {
                this->unk32C = Animation_GetLastFrame(&gGreatFairyAnim_005810);
                Animation_Change(&this->skelAnime, &gGreatFairyAnim_005810, 1.0f, 0.0f, this->unk32C, ANIMMODE_ONCE,
                                 -10.0f);
            }
            this->unk2F6 = 1;
            this->actionFunc = func_80874304;
        }
    }
    func_80872960(this, play, 0);
}

void func_80874304(BgDyYoseizo* this, PlayState* play) {
    f32 temp_fv1_sp5C;
    Player* player;
    s16 var_v1;
    s16 sp56;
    Vec3f var_fv1;

    temp_fv1_sp5C = this->skelAnime.curFrame;
    player = GET_PLAYER(play);
    if (this->unk2FC != 0) {
        this->unk324 = this->skelAnime.curFrame * 1400.0f;
        if (this->unk324 >= (this->unk32C * 1400.0f)) {
            this->unk324 = 0.0f;
        }
    }
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk32C <= temp_fv1_sp5C) && (this->unk2FC == 0)) {
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            this->unk32C = Animation_GetLastFrame(&gGreatFairyAfterUpgradeAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterUpgradeAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                             -10.0f);
        } else {
            this->unk32C = Animation_GetLastFrame(&gGreatFairyAfterSpellAnim);
            Animation_Change(&this->skelAnime, &gGreatFairyAfterSpellAnim, 1.0f, 0.0f, this->unk32C, ANIMMODE_LOOP,
                             -10.0f);
        }
        this->unk2FC = 1;
    }
    if (play->csCtx.actorCues[0]->id == 0xD) {
        this->actionFunc = func_80873C14;
        return;
    }
    if ((play->csCtx.actorCues[0]->id >= 4) && (play->csCtx.actorCues[0]->id < 7)) {
        var_v1 = play->csCtx.actorCues[0]->id - 4;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            var_v1 += 1;
            func_80872960(this, play, var_v1);
        } else if (this->unk2E4 == 0) {
            sp56 = D_808754B0[var_v1] << 0xC;
            sp56 |= 0x12;
            Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_EFFECT, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, 0, 0, sp56);
            this->unk2E4 = 1;
        }
    } else {
        func_80872960(this, play, 0);
    }
    if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        if ((play->csCtx.actorCues[0]->id >= 0xA) && (play->csCtx.actorCues[0]->id < 0xD)) {
            var_v1 = play->csCtx.actorCues[0]->id - 0xA;
            switch (var_v1) {
                case 0:
                    gSaveContext.save.info.playerData.isMagicAcquired = 1;
                    gSaveContext.magicFillTarget = 0x30;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;

                case 1:
                    if (gSaveContext.save.info.playerData.isMagicAcquired == 0) {
                        gSaveContext.save.info.playerData.isMagicAcquired = 1;
                    }
                    gSaveContext.save.info.playerData.isDoubleMagicAcquired = 1;
                    gSaveContext.magicFillTarget = 0x60;
                    gSaveContext.save.info.playerData.magicLevel = 0;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;

                case 2:
                    gSaveContext.save.info.playerData.isDoubleDefenseAcquired = 1;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    break;
            }
            if (this->unk2E6 == 0) {
                gSaveContext.healthAccumulator = 0x140;
                this->unk2E6 = 1;
                if (var_v1 == 2) {
                    Magic_Fill(play);
                }
            }
        }
    }
    if (play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
        if ((play->csCtx.actorCues[0]->id >= 0xE) && (play->csCtx.actorCues[0]->id < 0x11)) {
            var_v1 = play->csCtx.actorCues[0]->id - 0xE;
            if (this->unk300 == 0) {
                var_fv1.x = player->actor.world.pos.x;
                if (LINK_IS_ADULT) {
                    var_fv1.y = player->actor.world.pos.y + 73.0f;
                } else {
                    var_fv1.y = player->actor.world.pos.y + 53.0f;
                }
                var_fv1.z = player->actor.world.pos.z;
                this->unk344 =
                    (EnExItem*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_ITEM, var_fv1.x,
                                                  var_fv1.y, var_fv1.z, 0, 0, 0, D_808754B8[var_v1]);
                if (this->unk344 != NULL) {
                    if (!gSaveContext.save.info.playerData.isMagicAcquired) {
                        gSaveContext.save.info.playerData.isMagicAcquired = true;
                    } else {
                        Magic_Fill(play);
                    }
                    this->unk300 = 1;
                    gSaveContext.healthAccumulator = 0x140;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_HEARTS_MAGIC);
                    gSaveContext.save.info.itemGetInf[ITEMGETINF_INDEX_18_19_1A] |= D_808754C0[var_v1];
                    Item_Give(play, D_808754C8[var_v1]);
                }
            } else {
                this->unk344->actor.world.pos.x = player->actor.world.pos.x;
                if (LINK_IS_ADULT) {
                    this->unk344->actor.world.pos.y = player->actor.world.pos.y + 73.0f;
                } else {
                    this->unk344->actor.world.pos.y = player->actor.world.pos.y + 53.0f;
                }
                this->unk344->actor.world.pos.z = player->actor.world.pos.z;
                this->unk344->scale = 0.3f;
            }
        }
    }
    if ((play->sceneId != SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.actorCues[0]->id == 0x11)) {
        if (this->unk344 != NULL) {
            Actor_Kill(&this->unk344->actor);
            this->unk344 = NULL;
        }
    }
    if ((play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) && (play->csCtx.actorCues[0]->id == 0x12)) {
        this->unk2E5 = 1;
    }
    if (this->unk2E5 != 0) {
        if (gSaveContext.save.info.inventory.defenseHearts < 20) {
            gSaveContext.save.info.inventory.defenseHearts += 1;
        }
    }
    if ((play->csCtx.actorCues[0]->id >= 0x13) && (play->csCtx.actorCues[0]->id < 0x16) && (this->unk304 == 0)) {
        var_v1 = play->csCtx.actorCues[0]->id - 0xB;
        Actor_Spawn(&play->actorCtx, play, ACTOR_DOOR_WARP1, player->actor.world.pos.x, player->actor.world.pos.y,
                    player->actor.world.pos.z, 0, 0, 0, var_v1);
        this->unk304 = 1;
    }
    func_80872C58(this, play);
}

void BgDyYoseizo_Update(Actor* thisx, PlayState* play2) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;
    PlayState* play = play2;
    s32 var_v1;

    this->unk2F0 += 1;
    if (this->unk2E8 != 0) {
        this->unk2E8--;
    }
    if (this->unk2F8 != 0) {
        this->unk2F8--;
    }
    if (this->unk2FA != 0) {
        this->unk2FA--;
    }
    this->actionFunc(this, play);
    if (play->csCtx.state != CS_STATE_IDLE) {
        var_v1 = 0;
        if (play->sceneId == SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC) {
            if ((play->csCtx.curFrame == 32) || (play->csCtx.curFrame == 291) || (play->csCtx.curFrame == 426) ||
                (play->csCtx.curFrame == 851)) {
                var_v1 = 1;
            }
            if (play->csCtx.curFrame == 101) {
                var_v1 = 2;
            }
        } else {
            if ((play->csCtx.curFrame == 35) || (play->csCtx.curFrame == 181) || (play->csCtx.curFrame == 462) ||
                (play->csCtx.curFrame == 795)) {
                var_v1 = 1;
            }
            if (play->csCtx.curFrame == 90) {
                var_v1 = 2;
            }
        }
        if (var_v1 == 1) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_FR_SMILE_0);
        }
        if (var_v1 == 2) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_FR_LAUGH_0);
        }
    }
    if ((this->unk2F8 == 0) && (this->actionFunc != func_80873868)) {
        this->unk2F2 += 1;
        this->unk2F4 += 1;
        if (this->unk2F2 >= 3) {
            this->unk2F4 = 0;
            this->unk2F2 = this->unk2F4;
            this->unk2F8 = (s16)Rand_ZeroFloat(60.0f) + 0x14;
        }
    }
    Actor_MoveXZGravity(&this->actor);
    this->unk328 = this->unk308 * 7500.0f;
    Actor_SetFocus(&this->actor, this->unk328);
    this->actor.focus.pos.y = this->unk328;
    Actor_TrackPlayer(play, &this->actor, &this->unk334, &this->unk33A, this->actor.focus.pos);
    BgDyYoseizo_UpdateEffects(this, play);
    Actor_SetScale(&this->actor, this->unk308);
}

s32 func_80874B7C(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BgDyYoseizo* this = thisx;

    if (limbIndex == 8) {
        rot->x += this->unk33A.y;
    }
    if (limbIndex == 15) {
        rot->x += this->unk334.y;
        rot->z += this->unk334.z;
    }
    return 0;
}

void BgDyYoseizo_Draw(Actor* thisx, PlayState* play) {
    BgDyYoseizo* this = (BgDyYoseizo*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1609);
    if (this->actionFunc != func_80873E04) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_808754CC[this->unk2F2]));
        gSPSegment(POLY_OPA_DISP++, 9, SEGMENTED_TO_VIRTUAL(D_808754CC[this->unk2F4]));
        gSPSegment(POLY_OPA_DISP++, 10, SEGMENTED_TO_VIRTUAL(D_808754D8[this->unk2F6]));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              func_80874B7C, NULL, this);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_dy_yoseizo.c", 1629);
    BgDyYoseizo_DrawEffects(this, play);
}

void BgDyYoseizo_SpawnEffect(BgDyYoseizo* this, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Color_RGB8* arg4,
                             Color_RGB8* arg5, f32 arg6, s16 arg7, s16 arg8) {
    BgDyYoseizoEffect* effect;
    s16 var_v1;

    effect = this->effects;
    for (var_v1 = 0; var_v1 < BG_DY_YOSEIZO_EFFECT_COUNT; var_v1++, effect++) {
        if (effect->unk0 == 0) {
            effect->unk0 = 1;
            effect->unk4 = *arg1;
            effect->unk10 = *arg2;
            effect->unk1C = *arg3;
            effect->unk28 = *arg4;
            effect->unk2E = 0;
            effect->unk2B = *arg5;
            effect->unk30 = arg6;
            effect->unk34 = arg7;
            effect->unk36 = arg8;
            effect->unk38 = 0.0f;
            effect->unk3C = Rand_CenteredFloat(30000.0f);
            effect->unk40 = 0.0f;
            break;
        }
    }
}

void BgDyYoseizo_UpdateEffects(BgDyYoseizo* this, PlayState* play) {
    s16 var_s5;
    Player* player;
    Vec3f sp94;
    Vec3f sp88;
    BgDyYoseizoEffect* effect;
    f32 temp_fs0;
    f32 temp_fs1;

    effect = this->effects;
    player = GET_PLAYER(play);
    for (var_s5 = 0; var_s5 < BG_DY_YOSEIZO_EFFECT_COUNT; var_s5++, effect++) {
        if (effect->unk0 != 0) {
            effect->unk40 += 3000.0f;
            if (effect->unk36 == 0) {
                effect->unk4.x += effect->unk10.x;
                effect->unk4.y += effect->unk10.y;
                effect->unk4.z += effect->unk10.z;
                effect->unk10.x += effect->unk1C.x;
                effect->unk10.y += effect->unk1C.y;
                effect->unk10.z += effect->unk1C.z;
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EV_HEALING - SFX_FLAG);
                sp94 = player->actor.world.pos;
                sp94.y = player->actor.world.pos.y - 150.0f;
                sp94.z = player->actor.world.pos.z - 50.0f;
                temp_fs0 = Math_Vec3f_Pitch(&effect->unk4, &sp94);
                temp_fs1 = Math_Vec3f_Yaw(&effect->unk4, &sp94);
                Math_ApproachF(&effect->unk38, temp_fs0, 0.9f, 5000.0f);
                Math_ApproachF(&effect->unk3C, temp_fs1, 0.9f, 5000.0f);
                Matrix_Push();
                Matrix_RotateY(BINANG_TO_RAD_ALT(effect->unk3C), MTXMODE_NEW);
                Matrix_RotateX(BINANG_TO_RAD_ALT(effect->unk38), MTXMODE_APPLY);
                sp94.z = 3.0f;
                sp94.y = 3.0f;
                sp94.x = 3.0f;
                Matrix_MultVec3f(&sp94, &sp88);
                Matrix_Pop();
                effect->unk4.x += sp88.x;
                effect->unk4.y += sp88.y;
                effect->unk4.z += sp88.z;
            }
        }
        if (effect->unk34 != 0) {
            effect->unk34 -= 1;
            effect->unk2E += 0x1E;
            if (effect->unk2E >= 0x100) {
                effect->unk2E = 0xFF;
            }
        } else {
            effect->unk2E -= 0x1E;
            if (effect->unk2E <= 0) {
                effect->unk0 = 0;
                effect->unk2E = effect->unk0;
            }
        }
    }
}

void BgDyYoseizo_DrawEffects(BgDyYoseizo* this, PlayState* play) {
    GraphicsContext* gfxCtx;
    s16 var_s4;
    BgDyYoseizoEffect* effect;
    u8 materialFlag;

    gfxCtx = play->state.gfxCtx;
    materialFlag = 0;
    effect = this->effects;
    OPEN_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1767);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    for (var_s4 = 0; var_s4 < BG_DY_YOSEIZO_EFFECT_COUNT; var_s4++, effect++) {
        if (effect->unk0 == 1) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleMaterialDL));
                gDPPipeSync(POLY_XLU_DISP++);
                materialFlag++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, effect->unk28.r, effect->unk28.g, effect->unk28.b,
                            effect->unk2E);
            gDPSetEnvColor(POLY_XLU_DISP++, effect->unk2B.r, effect->unk2B.g, effect->unk2B.b, 0);
            Matrix_Translate(effect->unk4.x, effect->unk4.y, effect->unk4.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->unk30, effect->unk30, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(effect->unk40, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_bg_dy_yoseizo.c", 1810);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gGreatFairyParticleModelDL));
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_bg_dy_yoseizo.c", 1819);
}
