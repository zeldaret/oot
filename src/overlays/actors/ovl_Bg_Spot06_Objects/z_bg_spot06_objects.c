/*
 * File: z_bg_spot06_objects.c
 * Overlay: ovl_Bg_Spot06_Objects
 * Description: Lake Hylia Objects
 */

#include "z_bg_spot06_objects.h"
#include "assets/objects/object_spot06_objects/object_spot06_objects.h"

#define FLAGS ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR

typedef enum LakeHyliaObjectsType {
    /* 0x0 */ LHO_WATER_TEMPLE_ENTRACE_GATE,
    /* 0x1 */ LHO_WATER_TEMPLE_ENTRANCE_LOCK,
    /* 0x2 */ LHO_WATER_PLANE,
    /* 0x3 */ LHO_ICE_BLOCK
} LakeHyliaObjectsType;

typedef enum LakeHyliaWaterBoxIndices {
    /* 0x0 */ LHWB_GERUDO_VALLEY_RIVER_UPPER, // entrance from Gerudo Valley
    /* 0x1 */ LHWB_GERUDO_VALLEY_RIVER_LOWER, // river flowing from Gerudo Valley
    /* 0x2 */ LHWB_MAIN_1,                    // main water box
    /* 0x3 */ LHWB_MAIN_2                     // extension of main water box
} LakeHyliaWaterBoxIndices;

// Lake Hylia water plane levels
#define WATER_LEVEL_RAISED (-1313)
#define WATER_LEVEL_RIVER_RAISED (WATER_LEVEL_RAISED + 200)
#define WATER_LEVEL_LOWERED (WATER_LEVEL_RAISED - 680)
#define WATER_LEVEL_RIVER_LOWERED (WATER_LEVEL_RIVER_RAISED - 80)

void BgSpot06Objects_Init(Actor* thisx, PlayState* play);
void BgSpot06Objects_Destroy(Actor* thisx, PlayState* play);
void BgSpot06Objects_Update(Actor* thisx, PlayState* play);
void BgSpot06Objects_Draw(Actor* thisx, PlayState* play);
void BgSpot06Objects_GateWaitForSwitch(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_GateWaitToOpen(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_GateOpen(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_DoNothing(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_LockWait(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_LockPullOutward(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_LockSwimToSurface(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_LockFloat(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_WaterPlaneCutsceneWait(BgSpot06Objects* this, PlayState* play);
void BgSpot06Objects_WaterPlaneCutsceneRise(BgSpot06Objects* this, PlayState* play);

ActorProfile Bg_Spot06_Objects_Profile = {
    /**/ ACTOR_BG_SPOT06_OBJECTS,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SPOT06_OBJECTS,
    /**/ sizeof(BgSpot06Objects),
    /**/ BgSpot06Objects_Init,
    /**/ BgSpot06Objects_Destroy,
    /**/ BgSpot06Objects_Update,
    /**/ BgSpot06Objects_Draw,
};

static ColliderJntSphElementInit sJntSphItemsInit[1] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000080, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { 1, { { 0, 0, -160 }, 18 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static InitChainEntry sInitChainWaterPlane[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgSpot06Objects_Init(Actor* thisx, PlayState* play) {
    BgSpot06Objects* this = (BgSpot06Objects*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    this->switchFlag = PARAMS_GET_U(thisx->params, 0, 8);
    thisx->params = PARAMS_GET_U(thisx->params, 8, 8);

    PRINTF("spot06 obj nthisx->arg_data=[%d]", thisx->params);

    switch (thisx->params) {
        case LHO_WATER_TEMPLE_ENTRACE_GATE:
            Actor_ProcessInitChain(thisx, sInitChain);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gLakeHyliaWaterTempleGateCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

            if (LINK_IS_ADULT && Flags_GetSwitch(play, this->switchFlag)) {
                thisx->world.pos.y = thisx->home.pos.y + 120.0f;
                this->actionFunc = BgSpot06Objects_DoNothing;
            } else {
                this->actionFunc = BgSpot06Objects_GateWaitForSwitch;
            }

            if (1) {}

            break;
        case LHO_WATER_TEMPLE_ENTRANCE_LOCK:
            Actor_ProcessInitChain(thisx, sInitChain);
            Collider_InitJntSph(play, &this->collider);
            Collider_SetJntSph(play, &this->collider, thisx, &sJntSphInit, this->colliderItem);

            if (LINK_IS_ADULT && Flags_GetSwitch(play, this->switchFlag)) {
                if (!GET_EVENTCHKINF(EVENTCHKINF_RESTORED_LAKE_HYLIA)) {
                    thisx->home.pos.y = thisx->world.pos.y = WATER_LEVEL_LOWERED;
                } else {
                    thisx->home.pos.y = thisx->world.pos.y = WATER_LEVEL_RAISED;
                }

                this->actionFunc = BgSpot06Objects_LockFloat;
                thisx->world.pos.z -= 100.0f;
                thisx->home.pos.z = thisx->world.pos.z + 16.0f;
                this->collider.elements[0].dim.worldSphere.radius =
                    this->collider.elements[0].dim.modelSphere.radius * 2;
                this->collider.elements[0].dim.worldSphere.center.z = thisx->world.pos.z + 16.0f;
            } else {
                this->actionFunc = BgSpot06Objects_LockWait;
                this->collider.elements[0].dim.worldSphere.radius = this->collider.elements[0].dim.modelSphere.radius;
                this->collider.elements[0].dim.worldSphere.center.z = thisx->world.pos.z;
            }

            this->collider.elements[0].dim.worldSphere.center.x = thisx->world.pos.x;
            this->collider.elements[0].dim.worldSphere.center.y = thisx->world.pos.y;
            thisx->colChkInfo.mass = MASS_IMMOVABLE;
            break;
        case LHO_WATER_PLANE:
            Actor_ProcessInitChain(thisx, sInitChainWaterPlane);
            thisx->flags = ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED;

            if (LINK_IS_ADULT && !GET_EVENTCHKINF(EVENTCHKINF_RESTORED_LAKE_HYLIA)) {
                if (!IS_CUTSCENE_LAYER) {
                    this->lakeHyliaWaterLevel = -681.0f;
                    play->colCtx.colHeader->waterBoxes[LHWB_GERUDO_VALLEY_RIVER_LOWER].ySurface =
                        WATER_LEVEL_RIVER_LOWERED;
                    play->colCtx.colHeader->waterBoxes[LHWB_GERUDO_VALLEY_RIVER_LOWER].zMin -= 50;
                    play->colCtx.colHeader->waterBoxes[LHWB_MAIN_1].ySurface = WATER_LEVEL_LOWERED;
                    play->colCtx.colHeader->waterBoxes[LHWB_MAIN_2].ySurface = WATER_LEVEL_LOWERED;
                    this->actionFunc = BgSpot06Objects_DoNothing;
                } else {
                    thisx->world.pos.y = this->lakeHyliaWaterLevel = -681.0f;
                    thisx->world.pos.y += WATER_LEVEL_RAISED;
                    this->actionFunc = BgSpot06Objects_WaterPlaneCutsceneWait;
                }
            } else {
                this->lakeHyliaWaterLevel = 0.0f;
                this->actionFunc = BgSpot06Objects_DoNothing;
            }
            break;
        case LHO_ICE_BLOCK:
            Actor_ProcessInitChain(thisx, sInitChain);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gLakeHyliaZoraShortcutIceblockCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
            this->actionFunc = BgSpot06Objects_DoNothing;

            if (!LINK_IS_ADULT) {
                Actor_Kill(thisx);
            }
            break;
    }
}

void BgSpot06Objects_Destroy(Actor* thisx, PlayState* play) {
    BgSpot06Objects* this = (BgSpot06Objects*)thisx;

    switch (this->dyna.actor.params) {
        case LHO_WATER_TEMPLE_ENTRACE_GATE:
        case LHO_ICE_BLOCK:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            break;
        case LHO_WATER_TEMPLE_ENTRANCE_LOCK:
            Collider_DestroyJntSph(play, &this->collider);
            break;
        case LHO_WATER_PLANE:
            break;
    }
}

/**
 * Water Temple entrance gate effect functions
 */
void BgSpot06Objects_GateSpawnBubbles(BgSpot06Objects* this, PlayState* play) {
    Vec3f sp34;
    f32 tmp;

    if ((play->gameplayFrames % 3) == 0) {
        tmp = Rand_CenteredFloat(160.0f);
        sp34.x = (Math_SinS(this->dyna.actor.shape.rot.y + 0x4000) * tmp) + this->dyna.actor.world.pos.x;
        sp34.y = this->dyna.actor.world.pos.y;
        sp34.z = (Math_CosS(this->dyna.actor.shape.rot.y + 0x4000) * tmp) + this->dyna.actor.world.pos.z;
        EffectSsBubble_Spawn(play, &sp34, 50.0f, 70.0f, 10.0f, (Rand_ZeroOne() * 0.05f) + 0.175f);
    }
}

/**
 * This is where the gate waits for the switch to be set by the fish shaped lock.
 */
void BgSpot06Objects_GateWaitForSwitch(BgSpot06Objects* this, PlayState* play) {
    s32 i;

    if (Flags_GetSwitch(play, this->switchFlag)) {
        this->timer = 100;
        this->dyna.actor.world.pos.y += 3.0f;
        this->actionFunc = BgSpot06Objects_GateWaitToOpen;

        for (i = 0; i < 15; i++) {
            BgSpot06Objects_GateSpawnBubbles(this, play);
        }
    }
}

/**
 * This is where the gate waits a few frames before rising after the switch is set.
 */
void BgSpot06Objects_GateWaitToOpen(BgSpot06Objects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        this->actionFunc = BgSpot06Objects_GateOpen;
    }
}

/**
 * This is where the gate finally rises upward.
 */
void BgSpot06Objects_GateOpen(BgSpot06Objects* this, PlayState* play) {
    BgSpot06Objects_GateSpawnBubbles(this, play);

    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 120.0f, 0.6f)) {
        this->actionFunc = BgSpot06Objects_DoNothing;
        this->timer = 0;
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgSpot06Objects_DoNothing(BgSpot06Objects* this, PlayState* play) {
}

/**
 * Fish shaped lock effect functions
 */
void BgSpot06Objects_LockSpawnWaterRipples(BgSpot06Objects* this, PlayState* play, s32 flag) {
    if (flag || !(play->gameplayFrames % 7)) {
        EffectSsGRipple_Spawn(play, &this->dyna.actor.home.pos, 300, 700, 0);
    }
}

void BgSpot06Objects_LockSpawnBubbles(BgSpot06Objects* this, PlayState* play, s32 flag) {
    if (!(play->gameplayFrames % 7) || flag) {
        EffectSsBubble_Spawn(play, &this->dyna.actor.world.pos, 0.0f, 40.0f, 30.0f, (Rand_ZeroOne() * 0.05f) + 0.175f);
    }
}

/**
 * This is where the fish shaped lock waits to be pulled out by the hookshot. Once it does it will spawn bubbles.
 */
void BgSpot06Objects_LockWait(BgSpot06Objects* this, PlayState* play) {
    s32 pad;
    s32 i;
    s32 pad2;
    Vec3f effectPos;
    f32 sin;
    f32 cos;

    if (this->collider.base.acFlags & AC_HIT) {
        this->timer = 130;
        this->dyna.actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        sin = Math_SinS(this->dyna.actor.world.rot.y);
        cos = Math_CosS(this->dyna.actor.world.rot.y);
        this->dyna.actor.world.pos.x += (3.0f * sin);
        this->dyna.actor.world.pos.z += (3.0f * cos);

        for (i = 0; i < 20; i++) {
            BgSpot06Objects_LockSpawnBubbles(this, play, 1);
        }

        effectPos.x = this->dyna.actor.world.pos.x + (5.0f * sin);
        effectPos.y = this->dyna.actor.world.pos.y;
        effectPos.z = this->dyna.actor.world.pos.z + (5.0f * cos);

        for (i = 0; i < 3; i++) {
            EffectSsBubble_Spawn(play, &effectPos, 0.0f, 20.0f, 20.0f, (Rand_ZeroOne() * 0.1f) + 0.7f);
        }

        EffectSsGSplash_Spawn(play, &this->dyna.actor.world.pos, NULL, NULL, 1, 700);
        this->collider.elements[0].dim.worldSphere.radius = 45;
        this->actionFunc = BgSpot06Objects_LockPullOutward;
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        Flags_SetSwitch(play, this->switchFlag);
        OnePointCutscene_Init(play, 4120, 170, &this->dyna.actor, CAM_ID_MAIN);
    } else {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

/**
 * Once the fish shaped lock is pulled out from the Hookshot it will move outward.
 */
void BgSpot06Objects_LockPullOutward(BgSpot06Objects* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }

    this->dyna.actor.world.pos.x += (0.3f * Math_SinS(this->dyna.actor.world.rot.y));
    this->dyna.actor.world.pos.z += (0.3f * Math_CosS(this->dyna.actor.world.rot.y));
    BgSpot06Objects_LockSpawnBubbles(this, play, 0);

    if (this->timer == 0) {
        this->dyna.actor.velocity.y = 0.5f;
        this->dyna.actor.flags &= ~ACTOR_FLAG_HOOKSHOT_ATTACHED;

        this->actionFunc = BgSpot06Objects_LockSwimToSurface;
    }
}

/**
 * After being pulled all the way out the fish shaped lock will rise to the surface, creating bubbles in the water as it
 * does so.
 */
void BgSpot06Objects_LockSwimToSurface(BgSpot06Objects* this, PlayState* play) {
    f32 cos;
    f32 pad;

    this->dyna.actor.world.pos.y += this->dyna.actor.velocity.y;

    if (this->dyna.actor.velocity.y <= 0.0f) {
        cos = Math_CosS(this->dyna.actor.shape.rot.x) * 4.3f;
        this->dyna.actor.world.pos.x += (cos * Math_SinS(this->dyna.actor.shape.rot.y));
        this->dyna.actor.world.pos.z += (cos * Math_CosS(this->dyna.actor.shape.rot.y));
        this->dyna.actor.world.pos.y -= 1.3f;
        BgSpot06Objects_LockSpawnWaterRipples(this, play, 0);

        if (Math_ScaledStepToS(&this->dyna.actor.shape.rot.x, 0, 0x260) != 0) {
            this->dyna.actor.home.pos.x =
                this->dyna.actor.world.pos.x - (Math_SinS(this->dyna.actor.shape.rot.y) * 16.0f);
            this->dyna.actor.home.pos.z =
                this->dyna.actor.world.pos.z - (Math_CosS(this->dyna.actor.shape.rot.y) * 16.0f);
            this->dyna.actor.world.pos.y = -1993.0f;
            this->timer = 32;
            this->dyna.actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
            this->collider.elements[0].dim.worldSphere.radius = this->collider.elements[0].dim.modelSphere.radius * 2;
            this->actionFunc = BgSpot06Objects_LockFloat;
        }
    } else {
        if (this->dyna.actor.world.pos.y >= -1973.0f) {
            this->dyna.actor.velocity.y = 0.0f;
            BgSpot06Objects_LockSpawnWaterRipples(this, play, 1);
            EffectSsGSplash_Spawn(play, &this->dyna.actor.home.pos, NULL, NULL, 1, 700);
        } else if (this->dyna.actor.shape.rot.x == -0x4000) {
            this->dyna.actor.velocity.y += 0.02f;
            this->dyna.actor.world.pos.x = Rand_CenteredFloat(1.0f) + this->dyna.actor.home.pos.x;
            this->dyna.actor.world.pos.z = Rand_CenteredFloat(1.0f) + this->dyna.actor.home.pos.z;
            this->dyna.actor.velocity.y =
                (this->dyna.actor.velocity.y > 10.0f) ? (10.0f) : (this->dyna.actor.velocity.y);
            BgSpot06Objects_LockSpawnBubbles(this, play, 0);
        } else {
            BgSpot06Objects_LockSpawnBubbles(this, play, 0);

            if (Math_ScaledStepToS(&this->dyna.actor.shape.rot.x, -0x4000, 0x30)) {
                this->dyna.actor.home.pos.x = this->dyna.actor.world.pos.x;
                this->dyna.actor.home.pos.y = -1993.0f;
                this->dyna.actor.home.pos.z = this->dyna.actor.world.pos.z;
            }
        }
    }
}

/**
 * Once the fish shaped lock finishes rising to the surface it will float and create ripples in the water every few
 * frames.
 */
void BgSpot06Objects_LockFloat(BgSpot06Objects* this, PlayState* play) {
    BgSpot06Objects_LockSpawnWaterRipples(this, play, 0);

    if (this->timer != 0) {
        this->timer--;
    }

    this->dyna.actor.world.pos.y = (2.0f * sinf(this->timer * (M_PI / 16.0f))) + this->dyna.actor.home.pos.y;

    if (this->timer == 0) {
        this->timer = 32;
    }
}

void BgSpot06Objects_Update(Actor* thisx, PlayState* play) {
    BgSpot06Objects* this = (BgSpot06Objects*)thisx;

    this->actionFunc(this, play);

    if (thisx->params == LHO_WATER_TEMPLE_ENTRANCE_LOCK) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

/**
 * Draw the Lake Hylia water plane, and scroll its texture
 */
void BgSpot06Objects_DrawLakeHyliaWater(BgSpot06Objects* this, PlayState* play) {
    s32 pad;
    s32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot06_objects.c", 844);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_spot06_objects.c", 850);

    gameplayFrames = play->state.frames;

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -gameplayFrames, gameplayFrames, 32, 32, 1,
                                gameplayFrames, gameplayFrames, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -gameplayFrames, gameplayFrames * 6, 32, 32, 1,
                                gameplayFrames, gameplayFrames * 6, 32, 32));

    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);

    if ((this->lakeHyliaWaterLevel < -680.0f) && !IS_CUTSCENE_LAYER) {
        gSPDisplayList(POLY_XLU_DISP++, gLakeHyliaLowWaterDL);
    } else {
        gSPDisplayList(POLY_XLU_DISP++, gLakeHyliaHighWaterDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot06_objects.c", 879);
}

void BgSpot06Objects_Draw(Actor* thisx, PlayState* play) {
    BgSpot06Objects* this = (BgSpot06Objects*)thisx;

    switch (this->dyna.actor.params) {
        case LHO_WATER_TEMPLE_ENTRACE_GATE:
            Gfx_DrawDListOpa(play, gLakeHyliaWaterTempleGateDL);
            break;
        case LHO_WATER_TEMPLE_ENTRANCE_LOCK:
            Gfx_DrawDListOpa(play, gLakeHyliaWaterTempleKeyDL);

            if (this->actionFunc == BgSpot06Objects_LockSwimToSurface) {
                Collider_UpdateSpheres(1, &this->collider);
            }
            break;
        case LHO_WATER_PLANE:
            BgSpot06Objects_DrawLakeHyliaWater(this, play);
            break;
        case LHO_ICE_BLOCK:
            Gfx_DrawDListOpa(play, gLakeHyliaZoraShortcutIceblockDL);
            break;
    }
}

/**
 * This is where the Lake Hylia water plane waits for the cutscene to set the water risen flag after the Water Temple is
 * cleared.
 */
void BgSpot06Objects_WaterPlaneCutsceneWait(BgSpot06Objects* this, PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_RESTORED_LAKE_HYLIA)) {
        this->actionFunc = BgSpot06Objects_WaterPlaneCutsceneRise;
    }
}

/**
 * This is where the Lake Hylia water plane rises in the cutscene after the Water Temple is cleared.
 */
void BgSpot06Objects_WaterPlaneCutsceneRise(BgSpot06Objects* this, PlayState* play) {
    s32 pad;

    this->dyna.actor.world.pos.y = this->lakeHyliaWaterLevel + WATER_LEVEL_RAISED;

    if (this->lakeHyliaWaterLevel >= 0.0001f) {
        this->dyna.actor.world.pos.y = WATER_LEVEL_RAISED;
        this->actionFunc = BgSpot06Objects_DoNothing;
    } else {
        Math_SmoothStepToF(&this->lakeHyliaWaterLevel, 1.0f, 0.1f, 1.0f, 0.001f);
        play->colCtx.colHeader->waterBoxes[LHWB_GERUDO_VALLEY_RIVER_LOWER].ySurface = WATER_LEVEL_RIVER_LOWERED;
        play->colCtx.colHeader->waterBoxes[LHWB_MAIN_1].ySurface = this->dyna.actor.world.pos.y;
        play->colCtx.colHeader->waterBoxes[LHWB_MAIN_2].ySurface = this->dyna.actor.world.pos.y;
    }

    Actor_PlaySfx_FlaggedCentered2(&this->dyna.actor, NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG);
}
