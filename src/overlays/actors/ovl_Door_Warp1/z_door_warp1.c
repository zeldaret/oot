#include "z_door_warp1.h"
#include "assets/objects/object_warp1/object_warp1.h"

#define FLAGS 0

void DoorWarp1_Init(Actor* thisx, PlayState* play);
void DoorWarp1_Destroy(Actor* thisx, PlayState* play);
void DoorWarp1_Update(Actor* thisx, PlayState* play);
void DoorWarp1_Draw(Actor* thisx, PlayState* play);

void DoorWarp1_WarpAppear(DoorWarp1* this, PlayState* play);
void DoorWarp1_Destination(DoorWarp1* this, PlayState* play);
void func_8099B020(DoorWarp1* this, PlayState* play);
void DoorWarp1_AwaitClearFlag(DoorWarp1* this, PlayState* play);
void func_8099A3A4(DoorWarp1* this, PlayState* play);
void DoorWarp1_BlueCrystal(DoorWarp1* this, PlayState* play);
void DoorWarp1_PurpleCrystal(DoorWarp1* this, PlayState* play);
void func_80999214(DoorWarp1* this, PlayState* play);
void func_80999348(DoorWarp1* this, PlayState* play);
void func_809995D4(DoorWarp1* this, PlayState* play);
void func_809998A4(DoorWarp1* this, PlayState* play);
void DoorWarp1_ChildWarpIdle(DoorWarp1* this, PlayState* play);
void DoorWarp1_RutoWarpIdle(DoorWarp1* this, PlayState* play);
void DoorWarp1_ChildWarpOut(DoorWarp1* this, PlayState* play);
void func_80999EE0(DoorWarp1* this, PlayState* play);
void func_80999FE4(DoorWarp1* this, PlayState* play);
void DoorWarp1_RutoWarpOut(DoorWarp1* this, PlayState* play);
void DoorWarp1_AdultWarpIdle(DoorWarp1* this, PlayState* play);
void func_8099A508(DoorWarp1* this, PlayState* play);
void DoorWarp1_AdultWarpOut(DoorWarp1* this, PlayState* play);
void DoorWarp1_DoNothing(DoorWarp1* this, PlayState* play);
void DoorWarp1_ChooseInitialAction(DoorWarp1* this, PlayState* play);
void DoorWarp1_FloatPlayer(DoorWarp1* this, PlayState* play);

ActorProfile Door_Warp1_Profile = {
    /**/ ACTOR_DOOR_WARP1,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_WARP1,
    /**/ sizeof(DoorWarp1),
    /**/ DoorWarp1_Init,
    /**/ DoorWarp1_Destroy,
    /**/ DoorWarp1_Update,
    /**/ DoorWarp1_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 4000, ICHAIN_STOP),
};

static s16 sWarpTimerTarget;

void DoorWarp1_SetupAction(DoorWarp1* this, DoorWarp1ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DoorWarp1_Init(Actor* thisx, PlayState* play) {
    DoorWarp1* this = (DoorWarp1*)thisx;
    PlayState* play2 = play;

    this->unk_1B8 = 0;
    this->unk_1B4 = 0.0f;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);

    if (this->actor.params != WARP_SAGES && this->actor.params != WARP_BLUE_CRYSTAL &&
        this->actor.params != WARP_YELLOW && this->actor.params != WARP_DESTINATION) {
        Lights_PointNoGlowSetInfo(&this->upperLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 0, 0, 0, 0);
        this->upperLight = LightContext_InsertLight(play2, &play2->lightCtx, &this->upperLightInfo);

        Lights_PointNoGlowSetInfo(&this->lowerLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 0, 0, 0, 0);
        this->lowerLight = LightContext_InsertLight(play2, &play2->lightCtx, &this->lowerLightInfo);
    }
    PRINTF("\nBOSSWARP arg_data=[%d]", this->actor.params);

    DoorWarp1_ChooseInitialAction(this, play2);
}

void DoorWarp1_Destroy(Actor* thisx, PlayState* play) {
    u8 i;
    DoorWarp1* this = (DoorWarp1*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->upperLight);
    LightContext_RemoveLight(play, &play->lightCtx, this->lowerLight);

    for (i = 0; i < 3; i++) {
        play->envCtx.adjAmbientColor[i] = play->envCtx.adjFogColor[i] = play->envCtx.adjLight1Color[i] = 0;
    }
    //! @bug SkelAnime_Free is not called for crystal variants
}

void DoorWarp1_SetupWarp(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->scale = 0;
    this->unk_1AE = -140;
    this->unk_1B0 = -80;
    sWarpTimerTarget = 100;
    this->unk_1BC = 1.0f;
    this->lightRayAlpha = 0.0f;
    this->warpAlpha = 0.0f;
    this->crystalAlpha = 0.0f;

    switch (this->actor.params) {
        case WARP_YELLOW:
        case WARP_ORANGE:
        case WARP_GREEN:
        case WARP_RED:
            this->unk_194 = 0.23f;
            this->unk_198 = 0.6f;
            break;
        case WARP_DESTINATION:
            this->unk_194 = 0.0f;
            this->unk_198 = 0.0f;
            break;
        case WARP_UNK_7:
            this->scale = 100;
            this->unk_1AE = 120;
            this->unk_1B0 = 230;
            this->unk_194 = 0.3f;
            this->unk_198 = 0.3f;
            break;
        case WARP_BLUE_RUTO:
        default:
            this->unk_194 = 0.3f;
            this->unk_198 = 0.3f;
            break;
    }

    this->unk_19C = 0.0f;
    this->actor.shape.yOffset = 1.0f;
    this->warpTimer = 0;

    switch (this->actor.params) {
        case WARP_PURPLE_CRYSTAL:
        case WARP_BLUE_RUTO:
        case WARP_UNK_7:
        default:
            Lights_PointNoGlowSetInfo(&this->upperLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                      this->actor.world.pos.z, 200, 255, 255, 255);
            Lights_PointNoGlowSetInfo(&this->lowerLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                      this->actor.world.pos.z, 200, 255, 255, 255);
            break;
        case WARP_CLEAR_FLAG:
        case WARP_SAGES:
        case WARP_YELLOW:
        case WARP_DESTINATION:
        case WARP_ORANGE:
        case WARP_GREEN:
        case WARP_RED:
            break;
    }

    switch (this->actor.params) {
        case WARP_CLEAR_FLAG:
            DoorWarp1_SetupAction(this, DoorWarp1_AwaitClearFlag);
            break;
        case WARP_DESTINATION:
            if ((!(gSaveContext.save.entranceIndex == ENTR_SACRED_FOREST_MEADOW_3 ||
                   gSaveContext.save.entranceIndex == ENTR_DEATH_MOUNTAIN_CRATER_5 ||
                   gSaveContext.save.entranceIndex == ENTR_LAKE_HYLIA_9 ||
                   gSaveContext.save.entranceIndex == ENTR_DESERT_COLOSSUS_8 ||
                   gSaveContext.save.entranceIndex == ENTR_GRAVEYARD_8) &&
                 !IS_CUTSCENE_LAYER) ||
                PARAMS_GET_NOSHIFT(GET_PLAYER(play)->actor.params, 8, 4) != 0x200) {
                Actor_Kill(&this->actor);
            }
            if (Actor_WorldDistXZToActor(&player->actor, &this->actor) > 100.0f) {
                Actor_Kill(&this->actor);
            }
            DoorWarp1_SetupAction(this, DoorWarp1_Destination);
            break;
        case WARP_UNK_7:
            DoorWarp1_SetupAction(this, func_8099B020);
            break;
        default:
            DoorWarp1_SetupAction(this, DoorWarp1_WarpAppear);
            break;
    }
}

void DoorWarp1_SetupAdultDungeonWarp(DoorWarp1* this, PlayState* play) {
    SkelAnime_Init(play, &this->skelAnime, &gWarpCrystalSkel, &gWarpCrystalAnim, NULL, NULL, 0);
    Animation_ChangeImpl(&this->skelAnime, &gWarpCrystalAnim, 1.0f, 1.0f, 1.0f, ANIMMODE_ONCE, 40.0f, ANIMTAPER_ACCEL);

    this->scale = 0;
    this->unk_1AE = -140;
    this->unk_1B0 = -80;
    sWarpTimerTarget = 160;
    this->actor.shape.yOffset = -400.0f;
    this->warpTimer = 0;
    this->unk_1BC = 1.0f;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->lightRayAlpha = 0.0f;
    this->warpAlpha = 0.0f;
    this->crystalAlpha = 0.0f;
    this->unk_19C = 0.0f;

    Lights_PointNoGlowSetInfo(&this->upperLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                              this->actor.world.pos.z, 200, 255, 255, 255);
    Lights_PointNoGlowSetInfo(&this->lowerLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                              this->actor.world.pos.z, 200, 255, 255, 255);

    DoorWarp1_SetupAction(this, func_8099A3A4);
}

void DoorWarp1_SetupBlueCrystal(DoorWarp1* this, PlayState* play) {
    s16 i;

    SkelAnime_Init(play, &this->skelAnime, &gWarpCrystalSkel, &gWarpCrystalAnim, NULL, NULL, 0);
    Animation_ChangeImpl(&this->skelAnime, &gWarpCrystalAnim, 0, Animation_GetLastFrame(&gWarpCrystalAnim),
                         Animation_GetLastFrame(&gWarpCrystalAnim), ANIMMODE_ONCE, 0.0f, ANIMTAPER_ACCEL);

    this->skelAnime.curFrame = Animation_GetLastFrame(&gWarpCrystalAnim);
    this->scale = 10;
    this->unk_1AE = 120;
    this->unk_1B0 = 230;
    this->warpTimer = 0;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->lightRayAlpha = 0.0f;
    this->warpAlpha = 0.0f;
    this->crystalAlpha = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.0f;
    this->actor.shape.yOffset = 800.0f;

    for (i = 0; i < 3; i++) {
        play->envCtx.adjAmbientColor[i] = play->envCtx.adjFogColor[i] = play->envCtx.adjLight1Color[i] = -255;
    }

    play->envCtx.adjFogNear = -500;
    this->warpTimer = 30;
    this->unk_1B8 = 4000;
    DoorWarp1_SetupAction(this, DoorWarp1_BlueCrystal);
}

void DoorWarp1_SetupPurpleCrystal(DoorWarp1* this, PlayState* play) {
    SkelAnime_Init(play, &this->skelAnime, &gWarpCrystalSkel, &gWarpCrystalAnim, NULL, NULL, 0);
    Animation_ChangeImpl(&this->skelAnime, &gWarpCrystalAnim, 0, Animation_GetLastFrame(&gWarpCrystalAnim),
                         Animation_GetLastFrame(&gWarpCrystalAnim), ANIMMODE_ONCE, 0.0f, ANIMTAPER_ACCEL);

    this->skelAnime.curFrame = Animation_GetLastFrame(&gWarpCrystalAnim);
    this->unk_1AE = 120;
    this->unk_1B0 = 230;
    this->warpTimer = 200;
    this->unk_1B8 = 4000;
    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->lightRayAlpha = 0.0f;
    this->warpAlpha = 0.0f;
    this->crystalAlpha = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.f;
    this->actor.shape.yOffset = 800.0f;

    if (gSaveContext.save.entranceIndex != ENTR_TEMPLE_OF_TIME_0) {
        this->actor.scale.x = 0.0499f;
        this->actor.scale.y = 0.077f;
        this->actor.scale.z = 0.09f;
        this->crystalAlpha = 255.0f;
    } else {
        Actor_PlaySfx(&this->actor, NA_SE_EV_SHUT_BY_CRYSTAL);
    }
    DoorWarp1_SetupAction(this, DoorWarp1_PurpleCrystal);
}

void DoorWarp1_SetPlayerPos(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    player->actor.velocity.y = 0.0f;
    player->actor.world.pos.x = this->actor.world.pos.x;
    player->actor.world.pos.y = this->actor.world.pos.y + 55.0f;
    player->actor.world.pos.z = this->actor.world.pos.z;
}

void DoorWarp1_BlueCrystal(DoorWarp1* this, PlayState* play) {
    if (this->warpTimer != 0) {
        this->warpTimer--;
    } else {
        DoorWarp1_SetupAction(this, func_80999214);
    }
    DoorWarp1_SetPlayerPos(this, play);
}

void func_80999214(DoorWarp1* this, PlayState* play) {
    s32 temp_f4;
    f32 darkness;
    s16 i;

    Math_SmoothStepToF(&this->crystalAlpha, 255.0f, 0.2f, 5.0f, 0.1f);

    darkness = (f32)(40 - this->warpTimer) / 40.0f;
    darkness = CLAMP_MIN(darkness, 0);

    for (i = 0; i < 3; i++) {
        play->envCtx.adjAmbientColor[i] = play->envCtx.adjFogColor[i] = play->envCtx.adjLight1Color[i] =
            -255.0f * darkness;
    }
    play->envCtx.adjFogNear = -500.0f * darkness;

    this->warpTimer++;
    if (darkness <= 0) {
        DoorWarp1_SetupAction(this, func_80999348);
    }
    this->actor.shape.rot.y += 0x320;
    DoorWarp1_SetPlayerPos(this, play);
}

void func_80999348(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    DoorWarp1_SetPlayerPos(this, play);

    if (this->warpTimer == 0) {
        Math_SmoothStepToF(&this->crystalAlpha, 0.0f, 0.1f, 4.0f, 1.0f);
        if (this->crystalAlpha <= 150.0f) {
            player->actor.gravity = -0.1f;
        }
        if (this->crystalAlpha <= 0.0f) {
            DoorWarp1_SetupAction(this, DoorWarp1_FloatPlayer);
        }
    } else {
        this->warpTimer--;
    }
    this->actor.shape.rot.y += 0x320;
}

void DoorWarp1_FloatPlayer(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    player->actor.gravity = -0.1f;
}

void DoorWarp1_PurpleCrystal(DoorWarp1* this, PlayState* play) {
    if (this->warpTimer != 0) {
        this->warpTimer--;
        Math_SmoothStepToF(&this->actor.scale.x, 0.0499f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->actor.scale.y, 0.077f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->actor.scale.z, 0.09f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->crystalAlpha, 255.0f, 0.2f, 5.0f, 0.1f);
    }
}

void DoorWarp1_ChooseInitialAction(DoorWarp1* this, PlayState* play) {
    switch (this->actor.params) {
        case WARP_DUNGEON_CHILD:
        case WARP_CLEAR_FLAG:
        case WARP_SAGES:
        case WARP_YELLOW:
        case WARP_BLUE_RUTO:
        case WARP_DESTINATION:
        case WARP_UNK_7:
        case WARP_ORANGE:
        case WARP_GREEN:
        case WARP_RED:
            DoorWarp1_SetupWarp(this, play);
            break;
        case WARP_DUNGEON_ADULT:
            DoorWarp1_SetupAdultDungeonWarp(this, play);
            break;
        case WARP_BLUE_CRYSTAL:
            DoorWarp1_SetupBlueCrystal(this, play);
            break;
        case WARP_PURPLE_CRYSTAL:
            DoorWarp1_SetupPurpleCrystal(this, play);
            break;
    }
}

void DoorWarp1_AwaitClearFlag(DoorWarp1* this, PlayState* play) {
    if (Flags_GetTempClear(play, this->actor.room)) {
        this->warpTimer = 200;
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS_CLEAR);
        DoorWarp1_SetupAction(this, func_809995D4);
    }
}

void func_809995D4(DoorWarp1* this, PlayState* play) {
    if (this->warpTimer == 0) {
        if (this->actor.xzDistToPlayer < 100.0f) {
            this->actor.world.pos.x = -98.0f;
            this->actor.world.pos.y = 827.0f;
            this->actor.world.pos.z = -3228.0f;
        }
        Lights_PointNoGlowSetInfo(&this->upperLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 200, 255, 255, 255);
        Lights_PointNoGlowSetInfo(&this->lowerLightInfo, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 200, 255, 255, 255);
        DoorWarp1_SetupAction(this, DoorWarp1_WarpAppear);
    }
    this->warpTimer--;
}

void DoorWarp1_WarpAppear(DoorWarp1* this, PlayState* play) {
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    Math_SmoothStepToF(&this->lightRayAlpha, 255.0f, 0.4f, 10.0f, 0.01f);
    Math_SmoothStepToF(&this->warpAlpha, 255.0f, 0.4f, 10.0f, 0.01f);

    if (this->actor.params != WARP_YELLOW && this->actor.params != WARP_ORANGE && this->actor.params != WARP_GREEN &&
        this->actor.params != WARP_RED) {
        if (this->scale < 100) {
            this->scale += 2;
        }
        if (this->unk_1AE < 120) {
            this->unk_1AE += 4;
        }
        if (this->unk_1B0 < 230) {
            this->unk_1B0 += 4;
        } else if (this->actor.params == WARP_BLUE_RUTO) {
            DoorWarp1_SetupAction(this, DoorWarp1_RutoWarpIdle);
        } else if (this->actor.params != WARP_SAGES && this->actor.params != WARP_YELLOW) {
            DoorWarp1_SetupAction(this, DoorWarp1_ChildWarpIdle);
        } else {
            DoorWarp1_SetupAction(this, func_809998A4);
        }
    } else {
        if (this->unk_1AE < -50) {
            this->unk_1AE += 4;
        }
        if (this->unk_1B0 < 70) {
            this->unk_1B0 += 4;
        } else {
            DoorWarp1_SetupAction(this, func_809998A4);
        }
    }
}

void func_809998A4(DoorWarp1* this, PlayState* play) {
    if (this->lightRayAlpha != 0.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    }
    Math_SmoothStepToF(&this->lightRayAlpha, 0.0f, 0.1f, 2.0f, 0.01f);
    Math_SmoothStepToF(&this->warpAlpha, 0.0f, 0.1f, 2.0f, 0.01f);
}

s32 DoorWarp1_PlayerInRange(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 ret = false;

    if (fabsf(this->actor.xzDistToPlayer) < 60.0f) {
        if ((player->actor.world.pos.y - 20.0f) < this->actor.world.pos.y) {
            if (this->actor.world.pos.y < (player->actor.world.pos.y + 20.0f)) {
                ret = true;
            }
        }
    }
    return ret;
}

void DoorWarp1_ChildWarpIdle(DoorWarp1* this, PlayState* play) {
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);

    if (DoorWarp1_PlayerInRange(this, play)) {
        Player* player = GET_PLAYER(play);

        Audio_PlaySfxGeneral(NA_SE_EV_LINK_WARP, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        OnePointCutscene_Init(play, 0x25E7, 999, &this->actor, CAM_ID_MAIN);
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_10);

        player->unk_450.x = this->actor.world.pos.x;
        player->unk_450.z = this->actor.world.pos.z;
        this->unk_1B2 = 1;
        DoorWarp1_SetupAction(this, DoorWarp1_ChildWarpOut);
    }
}

void DoorWarp1_ChildWarpOut(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->unk_1B2 >= 101) {
        if (player->actor.velocity.y < 10.0f) {
            player->actor.gravity = 0.1f;
        } else {
            player->actor.gravity = 0.0f;
        }
    } else {
        this->unk_1B2++;
    }

    Math_SmoothStepToF(&this->lightRayAlpha, 0.0f, 0.2f, 6.0f, 0.01f);
    this->warpTimer++;

    if (sWarpTimerTarget < this->warpTimer && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        PRINTF("\n\n\nじかんがきたからおーしまい fade_direction=[%d]", play->transitionTrigger, TRANS_TRIGGER_START);

        if (play->sceneId == SCENE_DODONGOS_CAVERN_BOSS) {
            if (!Flags_GetEventChkInf(EVENTCHKINF_25)) {
                Flags_SetEventChkInf(EVENTCHKINF_25);
                Item_Give(play, ITEM_GORON_RUBY);
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_0;
                gSaveContext.nextCutsceneIndex = 0xFFF1;
            } else {
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_5;
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_DEKU_TREE_BOSS) {
            if (!Flags_GetEventChkInf(EVENTCHKINF_07)) {
                Flags_SetEventChkInf(EVENTCHKINF_07);
                Flags_SetEventChkInf(EVENTCHKINF_09);
                Item_Give(play, ITEM_KOKIRI_EMERALD);
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.nextCutsceneIndex = 0xFFF1;
            } else {
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_11;
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_JABU_JABU_BOSS) {
            play->nextEntranceIndex = ENTR_ZORAS_FOUNTAIN_0;
            gSaveContext.nextCutsceneIndex = 0;
        }
        PRINTF("\n\n\nおわりおわり");
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE_SLOW;
        gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
    }

    Math_StepToF(&this->unk_194, 2.0f, 0.01f);
    Math_StepToF(&this->unk_198, 10.0f, 0.02f);
    Lights_PointNoGlowSetInfo(&this->upperLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f, 235, 255,
                              255, 255);
    Lights_PointNoGlowSetInfo(&this->lowerLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y - 10.0f, (s16)player->actor.world.pos.z - 10.0f, 235, 255,
                              255, 255);
    Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 0.5f, 2.0f, 0.1f);
}

void DoorWarp1_RutoWarpIdle(DoorWarp1* this, PlayState* play) {
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);

    if (this->rutoWarpState != WARP_BLUE_RUTO_STATE_INITIAL && DoorWarp1_PlayerInRange(this, play)) {
        this->rutoWarpState = WARP_BLUE_RUTO_STATE_ENTERED;
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_10);
        this->unk_1B2 = 1;
        DoorWarp1_SetupAction(this, func_80999EE0);
    }
}

static s16 sRutoWarpSubCamId;

void func_80999EE0(DoorWarp1* this, PlayState* play) {
    Vec3f at;
    Vec3f eye;
    Player* player = GET_PLAYER(play);

    if (this->rutoWarpState == WARP_BLUE_RUTO_STATE_3) {
        Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
        sRutoWarpSubCamId = Play_CreateSubCamera(play);

        Play_ChangeCameraStatus(play, sRutoWarpSubCamId, CAM_STAT_ACTIVE);
        at.x = this->actor.world.pos.x;
        at.y = 49.0f;
        at.z = this->actor.world.pos.z;
        eye.x = player->actor.world.pos.x;
        eye.y = 43.0f;
        eye.z = player->actor.world.pos.z;

        Play_SetCameraAtEye(play, sRutoWarpSubCamId, &at, &eye);
        Play_SetCameraFov(play, sRutoWarpSubCamId, 90.0f);
        this->rutoWarpState = WARP_BLUE_RUTO_STATE_TALKING;
        Message_StartTextbox(play, 0x4022, NULL);
        DoorWarp1_SetupAction(this, func_80999FE4);
    }
}

void func_80999FE4(DoorWarp1* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_NONE) {
        Audio_PlaySfxGeneral(NA_SE_EV_LINK_WARP, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        OnePointCutscene_Init(play, 0x25E9, 999, &this->actor, CAM_ID_MAIN);
        // Using `CAM_ID_NONE` here defaults to the active camera
        Play_CopyCamera(play, CAM_ID_NONE, sRutoWarpSubCamId);
        Play_ChangeCameraStatus(play, sRutoWarpSubCamId, CAM_STAT_WAIT);
        this->rutoWarpState = WARP_BLUE_RUTO_STATE_WARPING;
        DoorWarp1_SetupAction(this, DoorWarp1_RutoWarpOut);
    }
}

void DoorWarp1_RutoWarpOut(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->unk_1B2 >= 61) {
        if (player->actor.velocity.y < 10.f) {
            player->actor.gravity = 0.02f;
        } else {
            player->actor.gravity = 0.0f;
        }
    } else {
        this->unk_1B2++;
    }
    Math_SmoothStepToF(&this->lightRayAlpha, 0.0f, 0.2f, 6.0f, 0.01f);
    this->warpTimer++;

    if (this->warpTimer > sWarpTimerTarget && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        SET_EVENTCHKINF(EVENTCHKINF_37);
        Item_Give(play, ITEM_ZORA_SAPPHIRE);
        play->nextEntranceIndex = ENTR_ZORAS_FOUNTAIN_0;
        gSaveContext.nextCutsceneIndex = 0xFFF0;
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE_SLOW;
    }

    Math_StepToF(&this->unk_194, 2.0f, 0.01f);
    Math_StepToF(&this->unk_198, 10.f, 0.02f);
    Lights_PointNoGlowSetInfo(&this->upperLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f, 235, 255,
                              255, 255);
    Lights_PointNoGlowSetInfo(&this->lowerLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y - 10.0f, (s16)player->actor.world.pos.z - 10.0f, 235, 255,
                              255, 255);
    Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 0.5f, 2.0f, 0.1f);
}

void func_8099A3A4(DoorWarp1* this, PlayState* play) {
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    Math_SmoothStepToF(&this->lightRayAlpha, 255.0f, 0.2f, 2.0f, 0.1f);
    Math_SmoothStepToF(&this->warpAlpha, 255.0f, 0.2f, 2.0f, 0.1f);

    if (this->scale < 10) {
        this->scale += 2;
    }
    if (this->unk_1AE < 120) {
        this->unk_1AE += 4;
    }
    if (this->unk_1B0 < 230) {
        this->unk_1B0 += 4;
    } else {
        DoorWarp1_SetupAction(this, DoorWarp1_AdultWarpIdle);
    }
}

void DoorWarp1_AdultWarpIdle(DoorWarp1* this, PlayState* play) {
    Player* player;

    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);

    if (DoorWarp1_PlayerInRange(this, play)) {
        player = GET_PLAYER(play);

        OnePointCutscene_Init(play, 0x25E8, 999, &this->actor, CAM_ID_MAIN);
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_10);
        player->unk_450.x = this->actor.world.pos.x;
        player->unk_450.z = this->actor.world.pos.z;
        this->unk_1B2 = 20;
        DoorWarp1_SetupAction(this, func_8099A508);
    }
}

void func_8099A508(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->unk_1B2 != 0) {
        this->unk_1B2--;
        return;
    }
    Audio_PlaySfxGeneral(NA_SE_EV_LINK_WARP, &player->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    Animation_ChangeImpl(&this->skelAnime, &gWarpCrystalAnim, 1.0f, Animation_GetLastFrame(&gWarpCrystalAnim),
                         Animation_GetLastFrame(&gWarpCrystalAnim), ANIMMODE_ONCE, 40.0f, ANIMTAPER_ACCEL);

    this->unk_1B2 = 0x32;
    DoorWarp1_SetupAction(this, DoorWarp1_AdultWarpOut);
}

void DoorWarp1_AdultWarpOut(DoorWarp1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 temp_f0_2;

    if (this->unk_1B2 != 0) {
        this->unk_1B2--;
    }

    if (this->unk_1B2 < 31) {
        u32 phi_v0 = (LINK_IS_ADULT) ? 35 : 45;

        if ((player->actor.world.pos.y - this->actor.world.pos.y) <= phi_v0) {
            player->actor.gravity = 0.0139999995f;
        } else {
            player->actor.gravity = 0.0f;
            player->actor.velocity.y = 0.0f;
        }
        if (this->unk_1B2 <= 0) {
            if (this->unk_1B8 < 4000) {
                this->unk_1B8 += 40;
            }
            player->actor.world.rot.y -= this->unk_1B8;
            player->actor.shape.rot.y -= this->unk_1B8;
        }
        Math_SmoothStepToF(&player->actor.world.pos.x, this->actor.world.pos.x, 0.5f, 0.1f, 0.01f);
        Math_SmoothStepToF(&player->actor.world.pos.z, this->actor.world.pos.z, 0.5f, 0.1f, 0.01f);
    }
    this->warpTimer++;

    if (this->warpTimer > sWarpTimerTarget && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        if (play->sceneId == SCENE_FOREST_TEMPLE_BOSS) {
            if (!GET_EVENTCHKINF(EVENTCHKINF_48)) {
                SET_EVENTCHKINF(EVENTCHKINF_48);
                Item_Give(play, ITEM_MEDALLION_FOREST);
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_FOREST;
            } else {
                if (!LINK_IS_ADULT) {
                    play->nextEntranceIndex = ENTR_SACRED_FOREST_MEADOW_2;
                } else {
                    play->nextEntranceIndex = ENTR_SACRED_FOREST_MEADOW_3;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_FIRE_TEMPLE_BOSS) {
            if (!GET_EVENTCHKINF(EVENTCHKINF_49)) {
                SET_EVENTCHKINF(EVENTCHKINF_49);
                Item_Give(play, ITEM_MEDALLION_FIRE);
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_0;
                gSaveContext.nextCutsceneIndex = 0xFFF3;
            } else {
                if (!LINK_IS_ADULT) {
                    play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_CRATER_4;
                } else {
                    play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_CRATER_5;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_WATER_TEMPLE_BOSS) {
            if (!GET_EVENTCHKINF(EVENTCHKINF_4A)) {
                SET_EVENTCHKINF(EVENTCHKINF_4A);
                Item_Give(play, ITEM_MEDALLION_WATER);
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_WATER;
            } else {
                if (!LINK_IS_ADULT) {
                    play->nextEntranceIndex = ENTR_LAKE_HYLIA_8;
                } else {
                    play->nextEntranceIndex = ENTR_LAKE_HYLIA_9;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_SPIRIT_TEMPLE_BOSS) {
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                Item_Give(play, ITEM_MEDALLION_SPIRIT);
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_SPIRIT;
            } else {
                if (!LINK_IS_ADULT) {
                    play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_5;
                } else {
                    play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_8;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (play->sceneId == SCENE_SHADOW_TEMPLE_BOSS) {
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                Item_Give(play, ITEM_MEDALLION_SHADOW);
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_SHADOW;
            } else {
                if (!LINK_IS_ADULT) {
                    play->nextEntranceIndex = ENTR_GRAVEYARD_7;
                } else {
                    play->nextEntranceIndex = ENTR_GRAVEYARD_8;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        }
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE;
        gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE_SLOW;
    }
    if (this->warpTimer >= 141) {
        f32 screenFillAlpha;

        play->envCtx.fillScreen = true;
        screenFillAlpha = (f32)(this->warpTimer - 140) / 20.0f;

        if (screenFillAlpha > 1.0f) {
            screenFillAlpha = 1.0f;
        }
        play->envCtx.screenFillColor[0] = 160;
        play->envCtx.screenFillColor[1] = 160;
        play->envCtx.screenFillColor[2] = 160;
        play->envCtx.screenFillColor[3] = (u32)(255.0f * screenFillAlpha);

        PRINTF("\nparcent=[%f]", screenFillAlpha);
    }
    Lights_PointNoGlowSetInfo(&this->upperLightInfo, (s16)player->actor.world.pos.x + 10.0f,
                              (s16)player->actor.world.pos.y + 10.0f, (s16)player->actor.world.pos.z + 10.0f, 235, 255,
                              255, 255);
    Lights_PointNoGlowSetInfo(&this->lowerLightInfo, (s16)player->actor.world.pos.x - 10.0f,
                              (s16)player->actor.world.pos.y - 10.0f, (s16)player->actor.world.pos.z - 10.0f, 235, 255,
                              255, 255);

    Math_SmoothStepToF(&this->actor.shape.yOffset, 800.0f, 0.5f, 15.0f, 0.1f);
    this->actor.shape.rot.y += 0x320;

    Math_SmoothStepToF(&this->unk_1BC, 1.13f, 0.2f, 0.1f, 0.01f);
    Math_StepToF(&this->unk_194, 2.0f, 0.003f);
    Math_StepToF(&this->unk_198, 10.0f, 0.006f);
    Math_SmoothStepToF(&this->lightRayAlpha, 0.0f, 0.2f, 3.0f, 0.01f);
    Math_SmoothStepToF(&this->warpAlpha, 0.0f, 0.2f, 2.0f, 0.01f);
    Math_SmoothStepToF(&this->crystalAlpha, 255.0f, 0.1f, 1.0f, 0.01f);

    temp_f0_2 = 1.0f - (f32)(sWarpTimerTarget - this->warpTimer) / (sWarpTimerTarget - (sWarpTimerTarget - 100));
    if (temp_f0_2 > 0.0f) {
        s16 i;

        for (i = 0; i < 3; i++) {
            play->envCtx.adjAmbientColor[i] = play->envCtx.adjFogColor[i] = play->envCtx.adjLight1Color[i] =
                -255.0f * temp_f0_2;
        }

        play->envCtx.adjFogNear = -500.0f * temp_f0_2;
        if (play->envCtx.adjFogNear < -300) {
            play->roomCtx.curRoom.segment = NULL;
        }
    }
}

void DoorWarp1_Destination(DoorWarp1* this, PlayState* play) {
    f32 alphaFrac = 1.0f;

    this->unk_194 = 5.0f;
    this->warpTimer++;
    if (this->warpTimer < 20) {
        alphaFrac = this->warpTimer / 20.f;
    } else if (this->warpTimer >= 60) {
        alphaFrac = 1.0f - ((this->warpTimer - 60.0f) / 20.f);
    }
    this->warpAlpha = 255.0f * alphaFrac;
    this->lightRayAlpha = 0.0f;

    if (this->warpTimer >= 80.0f) {
        this->warpAlpha = 0.0f;
        DoorWarp1_SetupAction(this, DoorWarp1_DoNothing);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
}

void DoorWarp1_DoNothing(DoorWarp1* this, PlayState* play) {
}

void func_8099B020(DoorWarp1* this, PlayState* play) {
    Math_SmoothStepToF(&this->lightRayAlpha, 128.0f, 0.2f, 2.0f, 0.1f);
    Math_SmoothStepToF(&this->warpAlpha, 128.0f, 0.2f, 2.0f, 0.1f);

    if (this->lightRayAlpha >= 128.0f) {
        Math_StepToF(&this->unk_194, 2.0f, 0.01f);
        Math_StepToF(&this->unk_198, 10.0f, 0.02f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
}

void DoorWarp1_Update(Actor* thisx, PlayState* play) {
    DoorWarp1* this = (DoorWarp1*)thisx;

    this->actionFunc(this, play);

    if (this->actor.params != WARP_PURPLE_CRYSTAL) {
        Actor_SetScale(&this->actor, this->scale / 100.0f);
    }
}

void DoorWarp1_DrawBlueCrystal(DoorWarp1* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2078);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0xFF, 0xFF, 200, 255, 255, (u8)this->crystalAlpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, (u8)this->crystalAlpha);

    POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, &this->actor,
                                   POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2098);

    SkelAnime_Update(&this->skelAnime);
}

void DoorWarp1_DrawPurpleCrystal(DoorWarp1* this, PlayState* play) {
    s32 pad[2];
    Vec3f eye;

    eye.x = -(Math_SinS(play->state.frames * 200) * 120.0f) * 80.0f;
    eye.y = (Math_CosS(play->state.frames * 200) * 120.0f) * 80.0f;
    eye.z = (Math_CosS(play->state.frames * 200) * 120.0f) * 80.0f;

    OPEN_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2122);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    func_8002EB44(&this->actor.world.pos, &eye, &eye, play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (u8)this->crystalAlpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 150, 0, 100, (u8)this->crystalAlpha);

    POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, &this->actor,
                                   POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2152);

    SkelAnime_Update(&this->skelAnime);
}

void DoorWarp1_DrawWarp(DoorWarp1* this, PlayState* play) {
    s32 pad;
    u32 pad1;
    u32 spEC = play->state.frames * 10;
    f32 spE8 = (this->unk_194 >= 1.0f) ? 0.0f : 1.0f - this->unk_194;
    f32 spE4 = (this->unk_198 >= 1.0f) ? 0.0f : 1.0f - this->unk_198;
    f32 xzScale;
    f32 temp_f0;

    OPEN_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2173);

    temp_f0 = 1.0f - (2.0f - this->unk_194) / 1.7f;
    if (this->actor.params != WARP_YELLOW && this->actor.params != WARP_DESTINATION &&
        this->actor.params != WARP_ORANGE && this->actor.params != WARP_GREEN && this->actor.params != WARP_RED) {
        this->unk_19C += (s16)(temp_f0 * 15.0f);
    }
    if (this->actor.params == WARP_DESTINATION) {
        this->unk_19C -= (s16)(temp_f0 * 2.0f);
    }
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    switch (this->actor.params) {
        case WARP_YELLOW:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 255);
            break;
        case WARP_ORANGE:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 150, 0, 255);
            break;
        case WARP_GREEN:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 200, 0, 255);
            break;
        case WARP_RED:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 0, 255);
            break;
        default:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255 * temp_f0, 255, 255, (u8)this->warpAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255 * temp_f0, 255, 255);
            break;
    }
    gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
    gDPSetColorDither(POLY_XLU_DISP++, G_AD_NOTPATTERN | G_CD_MAGICSQ);

    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y + 1.0f, this->actor.world.pos.z, MTXMODE_NEW);
    gSPSegment(POLY_XLU_DISP++, 0x0A, MATRIX_FINALIZE(play->state.gfxCtx, "../z_door_warp1.c", 2247));
    Matrix_Push();

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, spEC & 0xFF,
                                -((s16)(this->unk_19C + this->unk_19C) & 511), 0x100, 0x100, 1, spEC & 0xFF,
                                -((s16)(this->unk_19C + this->unk_19C) & 511), 0x100, 0x100));

    Matrix_Translate(0.0f, this->unk_194 * 230.0f, 0.0f, MTXMODE_APPLY);
    xzScale = (((f32)this->unk_1AE * spE8) / 100.0f) + 1.0f;
    Matrix_Scale(xzScale, 1.0f, xzScale, MTXMODE_APPLY);
    gSPSegment(POLY_XLU_DISP++, 0x09, MATRIX_FINALIZE(play->state.gfxCtx, "../z_door_warp1.c", 2267));
    gSPDisplayList(POLY_XLU_DISP++, gWarpPortalDL);
    Matrix_Pop();

    if (this->lightRayAlpha > 0.0f) {
        switch (this->actor.params) {
            case WARP_YELLOW:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 255);
                break;
            case WARP_ORANGE:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 150, 0, 255);
                break;
            case WARP_GREEN:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 0, 200, 0, 255);
                break;
            case WARP_RED:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, (u8)this->warpAlpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 0, 255);
                break;
            default:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255 * temp_f0, 255, 255, (u8)this->lightRayAlpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 0, 255 * temp_f0, 255, 255);
                break;
        }
        spEC *= 2;

        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, spEC & 0xFF, -((s16)this->unk_19C & 511),
                                    0x100, 0x100, 1, spEC & 0xFF, -((s16)this->unk_19C & 511), 0x100, 0x100));

        Matrix_Translate(0.0f, this->unk_198 * 60.0f, 0.0f, MTXMODE_APPLY);

        xzScale = (((f32)this->unk_1B0 * spE4) / 100.0f) + 1.0f;
        Matrix_Scale(xzScale, 1.0f, xzScale, MTXMODE_APPLY);

        gSPSegment(POLY_XLU_DISP++, 0x09, MATRIX_FINALIZE(play->state.gfxCtx, "../z_door_warp1.c", 2336));
        gSPDisplayList(POLY_XLU_DISP++, gWarpPortalDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_door_warp1.c", 2340);
}

void DoorWarp1_Draw(Actor* thisx, PlayState* play) {
    DoorWarp1* this = (DoorWarp1*)thisx;

    switch (this->actor.params) {
        case WARP_DUNGEON_ADULT:
            DoorWarp1_DrawBlueCrystal(this, play);
            DoorWarp1_DrawWarp(this, play);
            break;
        case WARP_DUNGEON_CHILD:
        case WARP_CLEAR_FLAG:
        case WARP_SAGES:
        case WARP_YELLOW:
        case WARP_BLUE_RUTO:
        case WARP_DESTINATION:
        case WARP_UNK_7:
        case WARP_ORANGE:
        case WARP_GREEN:
        case WARP_RED:
            DoorWarp1_DrawWarp(this, play);
            break;
        case WARP_BLUE_CRYSTAL:
            DoorWarp1_DrawBlueCrystal(this, play);
            break;
        case WARP_PURPLE_CRYSTAL:
            DoorWarp1_DrawPurpleCrystal(this, play);
            break;
    }
}
