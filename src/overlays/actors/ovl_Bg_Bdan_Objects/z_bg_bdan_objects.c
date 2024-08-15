/*
 * File: z_bg_bdan_objects.c
 * Overlay: ovl_Bg_Bdan_Objects
 * Description: Lord Jabu-Jabu Objects
 */

#include "z_bg_bdan_objects.h"
#include "quake.h"
#include "assets/objects/object_bdan_objects/object_bdan_objects.h"

#define FLAGS ACTOR_FLAG_4

typedef enum BgBdanObjectsPropertyGetter {
    JABU_OBJECTS_GET_PROP_CAM_SETTING_NORMAL0 = 0,
    JABU_OBJECTS_GET_PROP_CAM_SETTING_DUNGEON1 = 3,
    JABU_OBJECTS_GET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE = 4
} BgBdanObjectsPropertyGetter;
typedef enum BgBdanObjectsPropertySetter {
    JABU_OBJECTS_SET_PROP_CAM_SETTING_NORMAL1 = 1,
    JABU_OBJECTS_SET_PROP_CAM_SETTING_DUNGEON0 = 2,
    JABU_OBJECTS_SET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE = 4
} BgBdanObjectsPropertySetter;

void BgBdanObjects_Init(Actor* thisx, PlayState* play);
void BgBdanObjects_Destroy(Actor* thisx, PlayState* play);
void BgBdanObjects_Update(Actor* thisx, PlayState* play);
void BgBdanObjects_Draw(Actor* thisx, PlayState* play);

void BgBdanObjects_OctoPlatform_WaitForRutoToStartCutscene(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_OctoPlatform_RaiseToUpperPosition(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_OctoPlatform_WaitForRutoToAdvanceCutscene(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_OctoPlatform_PauseBeforeDescending(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_OctoPlatform_WaitForBigOctoToStartBattle(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_OctoPlatform_BattleInProgress(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_SinkToFloorHeight(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_WaitForPlayerInRange(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_RaiseToUpperPosition(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_DoNothing(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_ElevatorOscillate(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_WaitForSwitch(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_ChangeWaterBoxLevel(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_WaitForTimerExpired(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_WaitForPlayerOnTop(BgBdanObjects* this, PlayState* play);
void BgBdanObjects_FallToLowerPos(BgBdanObjects* this, PlayState* play);

ActorProfile Bg_Bdan_Objects_Profile = {
    /**/ ACTOR_BG_BDAN_OBJECTS,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_BDAN_OBJECTS,
    /**/ sizeof(BgBdanObjects),
    /**/ BgBdanObjects_Init,
    /**/ BgBdanObjects_Destroy,
    /**/ BgBdanObjects_Update,
    /**/ BgBdanObjects_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_HARD,
        ACELEM_NONE,
        OCELEM_NONE,
    },
    { 0x00BB, 0x0050, 0x0000, { 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Gfx* sDLists[] = {
    gJabuObjectsLargeRotatingSpikePlatformDL,
    gJabuElevatorPlatformDL,
    gJabuWaterDL,
    gJabuFallingPlatformDL,
};

s32 BgBdanObjects_GetProperty(BgBdanObjects* this, s32 arg1) {
    switch (arg1) {
        case JABU_OBJECTS_GET_PROP_CAM_SETTING_NORMAL0:
            return this->cameraSetting == CAM_SET_NORMAL0;
        case JABU_OBJECTS_GET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE:
            return GET_INFTABLE(INFTABLE_146);
        case JABU_OBJECTS_GET_PROP_CAM_SETTING_DUNGEON1:
            return this->cameraSetting == CAM_SET_DUNGEON1;
        default:
            PRINTF("Bg_Bdan_Objects_Get_Contact_Ru1\nそんな受信モードは無い%d!!!!!!!!\n");
            return -1;
    }
}

void BgBdanObjects_SetProperty(BgBdanObjects* this, s32 arg1) {
    switch (arg1) {
        case JABU_OBJECTS_SET_PROP_CAM_SETTING_NORMAL1:
            this->cameraSetting = CAM_SET_NORMAL1;
            break;
        case JABU_OBJECTS_SET_PROP_CAM_SETTING_DUNGEON0:
            this->cameraSetting = CAM_SET_DUNGEON0;
            break;
        case JABU_OBJECTS_SET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE:
            SET_INFTABLE(INFTABLE_146);
            break;
        default:
            PRINTF("Bg_Bdan_Objects_Set_Contact_Ru1\nそんな送信モードは無い%d!!!!!!!!\n");
    }
}

void BgBdanObjects_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgBdanObjects* this = (BgBdanObjects*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    this->var.switchFlag = PARAMS_GET_U(thisx->params, 8, 6);
    thisx->params &= 0xFF;
    if (thisx->params == JABU_OBJECTS_TYPE_WATERBOX_HEIGHT_CHANGER) {
        thisx->flags |= ACTOR_FLAG_4 | ACTOR_FLAG_5;
        play->colCtx.colHeader->waterBoxes[7].ySurface = thisx->world.pos.y;
        this->actionFunc = BgBdanObjects_WaitForSwitch;
        return;
    }
    if (thisx->params == JABU_OBJECTS_TYPE_BIG_OCTO_PLATFORM) {
        CollisionHeader_GetVirtual(&gJabuBigOctoPlatformCol, &colHeader);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
        thisx->world.pos.y += -79.0f;
        if (Flags_GetClear(play, thisx->room)) {
            Flags_SetSwitch(play, this->var.switchFlag);
            this->actionFunc = BgBdanObjects_SinkToFloorHeight;
        } else {
            if (BgBdanObjects_GetProperty(this, JABU_OBJECTS_GET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE)) {
                if (Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EN_BIGOKUTA, thisx->home.pos.x,
                                       thisx->home.pos.y, thisx->home.pos.z, 0, thisx->shape.rot.y + 0x8000, 0,
                                       3) != NULL) {
                    thisx->child->world.pos.z = thisx->child->home.pos.z + 263.0f;
                }
                thisx->world.rot.y = 0;
                this->actionFunc = BgBdanObjects_OctoPlatform_BattleInProgress;
                thisx->world.pos.y = thisx->home.pos.y + -70.0f;
            } else {
                Flags_SetSwitch(play, this->var.switchFlag);
                this->timer = 0;
                this->actionFunc = BgBdanObjects_OctoPlatform_WaitForRutoToStartCutscene;
            }
        }
    } else {
        if (thisx->params == JABU_OBJECTS_TYPE_SMALL_AUTO_ELEVATOR) {
            CollisionHeader_GetVirtual(&gJabuElevatorCol, &colHeader);
            this->timer = 512;
            this->var.camChangeTimer = 0;
            this->actionFunc = BgBdanObjects_ElevatorOscillate;
        } else { // JABU_OBJECTS_TYPE_FALLING_PLATFORM
            CollisionHeader_GetVirtual(&gJabuLoweringPlatformCol, &colHeader);
            if (Flags_GetSwitch(play, this->var.switchFlag)) {
                this->actionFunc = BgBdanObjects_DoNothing;
                thisx->world.pos.y = thisx->home.pos.y - 400.0f;
            } else {
                this->actionFunc = BgBdanObjects_WaitForPlayerOnTop;
            }
        }
    }
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
}

void BgBdanObjects_Destroy(Actor* thisx, PlayState* play) {
    BgBdanObjects* this = (BgBdanObjects*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    if (thisx->params == JABU_OBJECTS_TYPE_BIG_OCTO_PLATFORM) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

/**
 * This actor will never escape this actionFunc on its own. It relies on
 * En_Ru1 (Ruto) to change its cameraSetting to NORMAL0, which allows the
 * state machine to proceed.
 */
void BgBdanObjects_OctoPlatform_WaitForRutoToStartCutscene(BgBdanObjects* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    if (BgBdanObjects_GetProperty(this, JABU_OBJECTS_GET_PROP_CAM_SETTING_NORMAL0)) {
        if (this->dyna.actor.xzDistToPlayer < 250.0f) {
            BgBdanObjects_SetProperty(this, JABU_OBJECTS_SET_PROP_CAM_SETTING_NORMAL1);
            this->timer = 20;
            OnePointCutscene_Init(play, 3070, -99, &this->dyna.actor, CAM_ID_MAIN);
            player->actor.world.pos.x = -1130.0f;
            player->actor.world.pos.y = -1025.0f;
            player->actor.world.pos.z = -3300.0f;
            Rumble_Request(0.0f, 255, 20, 150);
        }
    } else if (this->timer != 0) {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            this->actionFunc = BgBdanObjects_OctoPlatform_RaiseToUpperPosition;
        }
    }

    if (!Play_InCsMode(play) && !BgBdanObjects_GetProperty(this, JABU_OBJECTS_GET_PROP_CAM_SETTING_NORMAL0)) {
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + -79.0f;
    } else {
        this->dyna.actor.world.pos.y = (this->dyna.actor.home.pos.y + -79.0f) - 5.0f;
    }
}

void BgBdanObjects_OctoPlatform_RaiseToUpperPosition(BgBdanObjects* this, PlayState* play) {
    if (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 500.0f, 0.5f, 7.5f, 1.0f) <
        0.1f) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BUYOSTAND_STOP_A);
        this->actionFunc = BgBdanObjects_OctoPlatform_WaitForRutoToAdvanceCutscene;
        this->timer = 30;
        BgBdanObjects_SetProperty(this, JABU_OBJECTS_SET_PROP_CAM_SETTING_DUNGEON0);
        Rumble_Request(0.0f, 255, 20, 150);
    } else {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            Rumble_Request(0.0f, 120, 20, 10);
            this->timer = 11;
        }
        func_8002F974(&this->dyna.actor, NA_SE_EV_BUYOSTAND_RISING - SFX_FLAG);
    }
}

/**
 * Again, this actionFunc is inescapable until En_Ru1 (Ruto) sets this
 * actor's cameraSetting to DUNGEON1.
 */
void BgBdanObjects_OctoPlatform_WaitForRutoToAdvanceCutscene(BgBdanObjects* this, PlayState* play) {
    s32 quakeIndex;

    if (this->timer != 0) {
        this->timer--;
        if (this->timer == 0) {
            quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_1);
            Quake_SetSpeed(quakeIndex, 0x3A98);
            Quake_SetPerturbations(quakeIndex, 0, 1, 250, 1);
            Quake_SetDuration(quakeIndex, 10);
        }
    }

    if (BgBdanObjects_GetProperty(this, JABU_OBJECTS_GET_PROP_CAM_SETTING_DUNGEON1)) {
        Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EN_BIGOKUTA, this->dyna.actor.world.pos.x,
                           this->dyna.actor.world.pos.y + 140.0f, this->dyna.actor.world.pos.z, 0,
                           this->dyna.actor.shape.rot.y + 0x8000, 0, 0);
        BgBdanObjects_SetProperty(this, JABU_OBJECTS_SET_PROP_WATCHED_BIGOCTO_INTRO_CUTSCENE);
        this->timer = 10;
        this->actionFunc = BgBdanObjects_OctoPlatform_PauseBeforeDescending;
        Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
    }
}

void BgBdanObjects_OctoPlatform_DescendWithBigOcto(BgBdanObjects* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->dyna.actor.velocity.y += 0.5f;
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + -70.0f,
                     this->dyna.actor.velocity.y)) {
        this->dyna.actor.world.rot.y = 0;
        this->timer = 60;
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BUYOSTAND_STOP_U);
        this->dyna.actor.child->world.pos.y = this->dyna.actor.world.pos.y + 140.0f;
        this->actionFunc = BgBdanObjects_OctoPlatform_WaitForBigOctoToStartBattle;
        OnePointCutscene_Init(play, 3080, -99, this->dyna.actor.child, CAM_ID_MAIN);
        player->actor.world.pos.x = -1130.0f;
        player->actor.world.pos.y = -1025.0f;
        player->actor.world.pos.z = -3500.0f;
        player->actor.shape.rot.y = 0x7530;
        player->actor.world.rot.y = player->actor.shape.rot.y;
        Rumble_Request(0.0f, 255, 30, 150);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_BUYOSTAND_FALL - SFX_FLAG);
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            Rumble_Request(0.0f, 120, 20, 10);
            this->timer = 11;
        }
        if (this->dyna.actor.child != NULL) {
            this->dyna.actor.child->world.pos.y = this->dyna.actor.world.pos.y + 140.0f;
        }
    }
}

void BgBdanObjects_OctoPlatform_PauseBeforeDescending(BgBdanObjects* this, PlayState* play) {
    this->timer--;

    if (this->timer == 0) {
        Flags_UnsetSwitch(play, this->var.switchFlag);
    } else if (this->timer == -40) {
        this->timer = 0;
        this->actionFunc = BgBdanObjects_OctoPlatform_DescendWithBigOcto;
    }
}

void BgBdanObjects_OctoPlatform_WaitForBigOctoToStartBattle(BgBdanObjects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if ((this->timer == 0) && (this->dyna.actor.child != NULL)) {
        if (this->dyna.actor.child->params == 2) {
            this->actionFunc = BgBdanObjects_OctoPlatform_BattleInProgress;
        } else if (this->dyna.actor.child->params == 0) {
            this->dyna.actor.child->params = 1;
        }
    }
}

void BgBdanObjects_OctoPlatform_BattleInProgress(BgBdanObjects* this, PlayState* play) {
    Collider_UpdateCylinder(&this->dyna.actor, &this->collider);
    CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    if (Flags_GetClear(play, this->dyna.actor.room)) {
        Flags_SetSwitch(play, this->var.switchFlag);
        this->dyna.actor.home.rot.y = (s16)(this->dyna.actor.shape.rot.y + 0x2000) & 0xC000;
        this->actionFunc = BgBdanObjects_SinkToFloorHeight;
    } else {
        this->dyna.actor.shape.rot.y += this->dyna.actor.world.rot.y;
        func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_ROLL_STAND - SFX_FLAG,
                      ABS(this->dyna.actor.world.rot.y) / 512.0f);
    }
}

void BgBdanObjects_SinkToFloorHeight(BgBdanObjects* this, PlayState* play) {
    s32 cond = Math_ScaledStepToS(&this->dyna.actor.shape.rot.y, this->dyna.actor.home.rot.y, 0x200);

    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + -125.0f, 3.0f)) {
        if (cond) {
            this->actionFunc = BgBdanObjects_WaitForPlayerInRange;
        }
    }
}

void BgBdanObjects_WaitForPlayerInRange(BgBdanObjects* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        if (this->dyna.actor.xzDistToPlayer < 120.0f) {
            this->actionFunc = BgBdanObjects_RaiseToUpperPosition;
            OnePointCutscene_Init(play, 3090, -99, &this->dyna.actor, CAM_ID_MAIN);
        }
    }
}

void BgBdanObjects_RaiseToUpperPosition(BgBdanObjects* this, PlayState* play) {
    if (Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 965.0f, 0.5f, 15.0f, 0.2f) <
        0.01f) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BUYOSTAND_STOP_A);
        this->actionFunc = BgBdanObjects_DoNothing;
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_BUYOSTAND_RISING - SFX_FLAG);
    }
}

void BgBdanObjects_DoNothing(BgBdanObjects* this, PlayState* play) {
}

void BgBdanObjects_ElevatorOscillate(BgBdanObjects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->var.camChangeTimer == 0) {
        if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            this->cameraSetting = play->cameraPtrs[CAM_ID_MAIN]->setting;
            Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_NORMAL2);
            Camera_UnsetStateFlag(play->cameraPtrs[CAM_ID_MAIN], CAM_STATE_CHECK_BG);
            this->var.camChangeTimer = 10;
        }
    } else {
        Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_NORMAL2);
        if (!DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            if (this->var.camChangeTimer != 0) {
                this->var.camChangeTimer--;
            }
        }
        if (this->var.camChangeTimer == 0) {
            if (1) {}
            Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], this->cameraSetting);
            Camera_SetStateFlag(play->cameraPtrs[CAM_ID_MAIN], CAM_STATE_CHECK_BG);
        }
    }
    this->dyna.actor.world.pos.y =
        this->dyna.actor.home.pos.y - (sinf(this->timer * (M_PI / 256.0f)) * 471.24f); // pi * 150
    if (this->timer == 0) {
        this->timer = 512;
    }
}

void BgBdanObjects_WaitForSwitch(BgBdanObjects* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->var.switchFlag)) {
        this->timer = 100;
        this->actionFunc = BgBdanObjects_ChangeWaterBoxLevel;
    }
}

void BgBdanObjects_ChangeWaterBoxLevel(BgBdanObjects* this, PlayState* play) {
    if (this->timer == 0) {
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 0.5f)) {
            Flags_UnsetSwitch(play, this->var.switchFlag);
            this->actionFunc = BgBdanObjects_WaitForSwitch;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    } else {
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 75.0f, 0.5f)) {
            this->actionFunc = BgBdanObjects_WaitForTimerExpired;
        }
        func_8002F948(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
    }
    play->colCtx.colHeader->waterBoxes[7].ySurface = this->dyna.actor.world.pos.y;
}

void BgBdanObjects_WaitForTimerExpired(BgBdanObjects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    func_8002F994(&this->dyna.actor, this->timer); // play ticking sound effect
    if (this->timer == 0) {
        this->actionFunc = BgBdanObjects_ChangeWaterBoxLevel;
    }
}

void BgBdanObjects_WaitForPlayerOnTop(BgBdanObjects* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        Flags_SetSwitch(play, this->var.switchFlag);
        this->timer = 50;
        this->actionFunc = BgBdanObjects_FallToLowerPos;
        this->dyna.actor.home.pos.y -= 200.0f;
        OnePointCutscene_Init(play, 3100, 51, &this->dyna.actor, CAM_ID_MAIN);
    }
}

void BgBdanObjects_FallToLowerPos(BgBdanObjects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y - (cosf(this->timer * (M_PI / 50.0f)) * 200.0f);

    if (this->timer == 0) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BUYOSTAND_STOP_U);
        this->actionFunc = BgBdanObjects_DoNothing;
        // Using `CAM_ID_NONE` here defaults to the active camera
        Play_CopyCamera(play, CAM_ID_MAIN, CAM_ID_NONE);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_BUYOSTAND_FALL - SFX_FLAG);
    }
}

void BgBdanObjects_Update(Actor* thisx, PlayState* play) {
    BgBdanObjects* this = (BgBdanObjects*)thisx;

    Actor_SetFocus(thisx, 50.0f);
    this->actionFunc(this, play);
}

void BgBdanObjects_Draw(Actor* thisx, PlayState* play) {
    BgBdanObjects* this = (BgBdanObjects*)thisx;

    if (thisx->params == JABU_OBJECTS_TYPE_BIG_OCTO_PLATFORM) {
        if (this->actionFunc == BgBdanObjects_OctoPlatform_WaitForRutoToStartCutscene) {
            if (((thisx->home.pos.y + -79.0f) - 5.0f) < thisx->world.pos.y) {
                Matrix_Translate(0.0f, -50.0f, 0.0f, MTXMODE_APPLY);
            }
        }
    }

    if (thisx->params == JABU_OBJECTS_TYPE_WATERBOX_HEIGHT_CHANGER) {
        Gfx_DrawDListXlu(play, gJabuWaterDL);
    } else {
        Gfx_DrawDListOpa(play, sDLists[thisx->params]);
    }
}
