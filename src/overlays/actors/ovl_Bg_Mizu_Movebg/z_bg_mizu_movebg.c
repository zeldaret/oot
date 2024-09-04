/*
 * File: z_bg_mizu_movebg.c
 * Overlay: ovl_Bg_Mizu_Movebg
 * Description: Water Temple Moving Objects
 */

#include "z_bg_mizu_movebg.h"
#include "overlays/actors/ovl_Bg_Mizu_Water/z_bg_mizu_water.h"
#include "assets/objects/object_mizu_objects/object_mizu_objects.h"

#define FLAGS ACTOR_FLAG_4

#define MOVEBG_TYPE(params) PARAMS_GET_U((u16)(params), 12, 4)
#define MOVEBG_FLAGS(params) PARAMS_GET_U((u16)(params), 0, 6)
#define MOVEBG_PATH_ID(params) PARAMS_GET_U((u16)(params), 8, 4)
#define MOVEBG_POINT_ID(params) PARAMS_GET_U((u16)(params), 0, 4)
#define MOVEBG_SPEED(params) PARAMS_GET_U((u16)(params), 4, 4)

void BgMizuMovebg_Init(Actor* thisx, PlayState* play);
void BgMizuMovebg_Destroy(Actor* thisx, PlayState* play);
void BgMizuMovebg_Update(Actor* thisx, PlayState* play);
void BgMizuMovebg_Draw(Actor* thisx, PlayState* play2);

void BgMizuMovebg_UpdateMain(BgMizuMovebg* this, PlayState* play);
void BgMizuMovebg_UpdateHookshotPlatform(BgMizuMovebg* this, PlayState* play);
s32 BgMizuMovebg_SetPosFromPath(Path* pathList, Vec3f* pos, s32 pathId, s32 pointId);

ActorProfile Bg_Mizu_Movebg_Profile = {
    /**/ ACTOR_BG_MIZU_MOVEBG,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MIZU_OBJECTS,
    /**/ sizeof(BgMizuMovebg),
    /**/ BgMizuMovebg_Init,
    /**/ BgMizuMovebg_Destroy,
    /**/ BgMizuMovebg_Update,
    /**/ BgMizuMovebg_Draw,
};

static f32 sDragonStatueBossRoomOffsetPosY[] = { -115.200005f, -115.200005f, -115.200005f, 0.0f };

static Gfx* sDLists[] = {
    gWaterTempleFloatingPlatformOutsideCentralPillarDL, // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_OUTSIDE_CENTER_PILLAR
    gWaterTempleFloatingPlatformWestDL,                 // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_WEST
    gWaterTempleFloatingPlatformInsideCentralPillarDL,  // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_INSIDE_CENTER_PILLAR
    gWaterTempleDragonStatueDL,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM
    gWaterTempleDragonStatueDL,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_2
    gWaterTempleDragonStatueDL,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_3
    gWaterTempleDragonStatueDL,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_4
    gWaterTempleHookshotPlatformDL,                     // MIZUMOVEBG_TYPE_HOOKSHOT_PLATFORM
};

static CollisionHeader* sColHeaders[] = {
    &gWaterTempleFloatingPlatformOutsideCentralPillarCol, // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_OUTSIDE_CENTER_PILLAR
    &gWaterTempleFloatingPlatformWestCol,                 // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_WEST
    &gWaterTempleFloatingPlatformInsideCentralPillarCol,  // MIZUMOVEBG_TYPE_FLOATING_PLATFORM_INSIDE_CENTER_PILLAR
    &gWaterTempleDragonStatueCol,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM
    &gWaterTempleDragonStatueCol,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_2
    &gWaterTempleDragonStatueCol,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_3
    &gWaterTempleDragonStatueCol,                         // MIZUMOVEBG_TYPE_DRAGON_STATUE_4
    &gWaterTempleHookshotPlatformCol,                     // MIZUMOVEBG_TYPE_HOOKSHOT_PLATFORM
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Vec3f sOffsetPosition1 = { 0.0f, 80.0f, 23.0f };
static Vec3f sOffsetPosition2 = { 0.0f, 80.0f, 23.0f };

static u8 D_8089EE40; // unknown flags

s32 BgMizuMovebg_GetDragonStatueBossRoomOffsetIndex(PlayState* play) {
    s32 result;

    if (Flags_GetSwitch(play, WATER_TEMPLE_WATER_F1_FLAG)) {
        result = 1;
    } else if (Flags_GetSwitch(play, WATER_TEMPLE_WATER_F2_FLAG)) {
        result = 2;
    } else if (Flags_GetSwitch(play, WATER_TEMPLE_WATER_F3_FLAG)) {
        result = 3;
    } else {
        result = 1;
    }
    return result;
}

void BgMizuMovebg_Init(Actor* thisx, PlayState* play) {
    s32 type;
    s32 waypointId;
    WaterBox* waterBoxes = play->colCtx.colHeader->waterBoxes;
    f32 targetPosY;
    CollisionHeader* colHeader = NULL;
    Vec3f offsetPos;

    Actor_ProcessInitChain(thisx, sInitChain);
    ((BgMizuMovebg*)thisx)->homeY = thisx->world.pos.y;
    ((BgMizuMovebg*)thisx)->dList = sDLists[MOVEBG_TYPE(thisx->params)];
    DynaPolyActor_Init(&((BgMizuMovebg*)thisx)->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(sColHeaders[MOVEBG_TYPE(thisx->params)], &colHeader);
    ((BgMizuMovebg*)thisx)->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

    type = MOVEBG_TYPE(thisx->params);
    switch (type) {
        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_OUTSIDE_CENTER_PILLAR:
            targetPosY = waterBoxes[2].ySurface + 15.0f;
            if (targetPosY < ((BgMizuMovebg*)thisx)->homeY - 700.0f) {
                thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY - 700.0f;
            } else {
                thisx->world.pos.y = targetPosY;
            }
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateMain;
            break;

        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_WEST:
            targetPosY = waterBoxes[2].ySurface + 15.0f;
            if (targetPosY < ((BgMizuMovebg*)thisx)->homeY - 710.0f) {
                thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY - 710.0f;
            } else {
                thisx->world.pos.y = targetPosY;
            }
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateMain;
            break;

        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_INSIDE_CENTER_PILLAR:
            targetPosY = waterBoxes[2].ySurface + 15.0f;
            if (targetPosY < ((BgMizuMovebg*)thisx)->homeY - 700.0f) {
                thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY - 700.0f;
            } else {
                thisx->world.pos.y = targetPosY;
            }
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateMain;
            break;

        case MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM:
            thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY +
                                 sDragonStatueBossRoomOffsetPosY[BgMizuMovebg_GetDragonStatueBossRoomOffsetIndex(play)];
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateMain;
            break;

        case MIZUMOVEBG_TYPE_DRAGON_STATUE_2:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_3:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_4:
            if (Flags_GetSwitch(play, MOVEBG_FLAGS(thisx->params))) {
                thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY + 115.19999999999999;
            } else {
                thisx->world.pos.y = ((BgMizuMovebg*)thisx)->homeY;
            }
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateMain;
            break;

        case MIZUMOVEBG_TYPE_HOOKSHOT_PLATFORM:
            ((BgMizuMovebg*)thisx)->scrollAlpha1 = 160;
            ((BgMizuMovebg*)thisx)->scrollAlpha2 = 160;
            ((BgMizuMovebg*)thisx)->scrollAlpha3 = 160;
            ((BgMizuMovebg*)thisx)->scrollAlpha4 = 160;
            waypointId = MOVEBG_POINT_ID(thisx->params);
            ((BgMizuMovebg*)thisx)->waypointId = waypointId;
            BgMizuMovebg_SetPosFromPath(play->pathList, &thisx->world.pos, MOVEBG_PATH_ID(thisx->params), waypointId);
            ((BgMizuMovebg*)thisx)->actionFunc = BgMizuMovebg_UpdateHookshotPlatform;
            break;
    }

    type = MOVEBG_TYPE(thisx->params);
    switch (type) {
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_2:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_3:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_4:
            Matrix_RotateY(BINANG_TO_RAD(thisx->world.rot.y), MTXMODE_NEW);
            Matrix_MultVec3f(&sOffsetPosition1, &offsetPos);

            if (Actor_SpawnAsChild(&play->actorCtx, thisx, play, ACTOR_OBJ_HSBLOCK, thisx->world.pos.x + offsetPos.x,
                                   thisx->world.pos.y + offsetPos.y, thisx->world.pos.z + offsetPos.z,
                                   thisx->world.rot.x, thisx->world.rot.y, thisx->world.rot.z, 2) == NULL) {
                Actor_Kill(thisx);
            }
            break;
    }
}

void BgMizuMovebg_Destroy(Actor* thisx, PlayState* play) {
    BgMizuMovebg* this = (BgMizuMovebg*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    switch (MOVEBG_TYPE(thisx->params)) {
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_2:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_3:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_4:
            if (this->sfxFlags & 2) {
                D_8089EE40 &= ~2;
            }
            break;

        case MIZUMOVEBG_TYPE_HOOKSHOT_PLATFORM:
            if (this->sfxFlags & 1) {
                D_8089EE40 &= ~1;
            }
            break;
    }
}

s32 BgMizuMovebg_SetPosFromPath(Path* pathList, Vec3f* pos, s32 pathId, s32 pointId) {
    Path* path = pathList;
    Vec3s* point;

    path += pathId;
    point = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[pointId];

    pos->x = point->x;
    pos->y = point->y;
    pos->z = point->z;

    return 0;
}

void BgMizuMovebg_SetScrollAlphas(BgMizuMovebg* this, PlayState* play) {
    f32 waterLevel = play->colCtx.colHeader->waterBoxes[2].ySurface;

    if (waterLevel < WATER_TEMPLE_WATER_F1_Y) {
        this->scrollAlpha1 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F2_Y) {
        this->scrollAlpha1 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_F1_Y) /
                                         (WATER_TEMPLE_WATER_F2_Y - WATER_TEMPLE_WATER_F1_Y) * (255 - 160));
    } else {
        this->scrollAlpha1 = 160;
    }

    if (waterLevel < WATER_TEMPLE_WATER_F2_Y) {
        this->scrollAlpha2 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F3_Y) {
        this->scrollAlpha2 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_F2_Y) /
                                         (WATER_TEMPLE_WATER_F3_Y - WATER_TEMPLE_WATER_F2_Y) * (255 - 160));
    } else {
        this->scrollAlpha2 = 160;
    }

    if (waterLevel < WATER_TEMPLE_WATER_B1_Y) {
        this->scrollAlpha3 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F1_Y) {
        this->scrollAlpha3 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_B1_Y) /
                                         (WATER_TEMPLE_WATER_F1_Y - WATER_TEMPLE_WATER_B1_Y) * (255 - 160));
    } else {
        this->scrollAlpha3 = 160;
    }

    this->scrollAlpha4 = this->scrollAlpha3;
}

void BgMizuMovebg_UpdateMain(BgMizuMovebg* this, PlayState* play) {
    WaterBox* waterBoxes = play->colCtx.colHeader->waterBoxes;
    f32 targetPosY;
    s32 type;
    Vec3f offsetPos;

    BgMizuMovebg_SetScrollAlphas(this, play);

    type = MOVEBG_TYPE(this->dyna.actor.params);
    switch (type) {
        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_OUTSIDE_CENTER_PILLAR:
        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_INSIDE_CENTER_PILLAR:
            targetPosY = waterBoxes[2].ySurface + 15.0f;
            if (targetPosY < this->homeY - 700.0f) {
                this->dyna.actor.world.pos.y = this->homeY - 700.0f;
            } else {
                this->dyna.actor.world.pos.y = targetPosY;
            }
            break;

        case MIZUMOVEBG_TYPE_FLOATING_PLATFORM_WEST:
            targetPosY = waterBoxes[2].ySurface + 15.0f;
            if (targetPosY < this->homeY - 710.0f) {
                this->dyna.actor.world.pos.y = this->homeY - 710.0f;
            } else {
                this->dyna.actor.world.pos.y = targetPosY;
            }
            break;

        case MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM:
            targetPosY =
                this->homeY + sDragonStatueBossRoomOffsetPosY[BgMizuMovebg_GetDragonStatueBossRoomOffsetIndex(play)];
            if (!Math_StepToF(&this->dyna.actor.world.pos.y, targetPosY, 1.0f)) {
                if (!(D_8089EE40 & 2) && MOVEBG_SPEED(this->dyna.actor.params) != 0) {
                    D_8089EE40 |= 2;
                    this->sfxFlags |= 2;
                }
                if (this->sfxFlags & 2) {
                    if (this->dyna.actor.room == 0) {
                        func_8002F974(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
                    } else {
                        func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
                    }
                }
            }
            break;

        case MIZUMOVEBG_TYPE_DRAGON_STATUE_2:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_3:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_4:
            if (Flags_GetSwitch(play, MOVEBG_FLAGS(this->dyna.actor.params))) {
                targetPosY = this->homeY + 115.200005f;
            } else {
                targetPosY = this->homeY;
            }
            if (!Math_StepToF(&this->dyna.actor.world.pos.y, targetPosY, 1.0f)) {
                if (!(D_8089EE40 & 2) && MOVEBG_SPEED(this->dyna.actor.params) != 0) {
                    D_8089EE40 |= 2;
                    this->sfxFlags |= 2;
                }
                if (this->sfxFlags & 2) {
                    func_8002F948(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
                }
            }
            break;
    }

    type = MOVEBG_TYPE(this->dyna.actor.params);
    switch (type) {
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_2:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_3:
        case MIZUMOVEBG_TYPE_DRAGON_STATUE_4:
            if (play->roomCtx.curRoom.num == this->dyna.actor.room) {
                Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.world.rot.y), MTXMODE_NEW);
                Matrix_MultVec3f(&sOffsetPosition2, &offsetPos);
                this->dyna.actor.child->world.pos.x = this->dyna.actor.world.pos.x + offsetPos.x;
                this->dyna.actor.child->world.pos.y = this->dyna.actor.world.pos.y + offsetPos.y;
                this->dyna.actor.child->world.pos.z = this->dyna.actor.world.pos.z + offsetPos.z;
                this->dyna.actor.child->flags &= ~ACTOR_FLAG_0;
            }
            break;
    }
}

void BgMizuMovebg_UpdateHookshotPlatform(BgMizuMovebg* this, PlayState* play) {
    Vec3f waypoint;
    f32 dist;
    f32 dx;
    f32 dy;
    f32 dz;

    this->dyna.actor.speed = MOVEBG_SPEED(this->dyna.actor.params) * 0.1f;
    BgMizuMovebg_SetPosFromPath(play->pathList, &waypoint, MOVEBG_PATH_ID(this->dyna.actor.params), this->waypointId);
    dist = Actor_WorldDistXYZToPoint(&this->dyna.actor, &waypoint);
    if (dist < this->dyna.actor.speed) {
        this->dyna.actor.speed = dist;
    }
    func_80035844(&this->dyna.actor.world.pos, &waypoint, &this->dyna.actor.world.rot, 1);
    Actor_MoveXYZ(&this->dyna.actor);
    dx = waypoint.x - this->dyna.actor.world.pos.x;
    dy = waypoint.y - this->dyna.actor.world.pos.y;
    dz = waypoint.z - this->dyna.actor.world.pos.z;
    if (fabsf(dx) < 2.0f && fabsf(dy) < 2.0f && fabsf(dz) < 2.0f) {
        this->waypointId++;
        if (this->waypointId >= play->pathList[MOVEBG_PATH_ID(this->dyna.actor.params)].count) {
            this->waypointId = 0;
            BgMizuMovebg_SetPosFromPath(play->pathList, &this->dyna.actor.world.pos,
                                        MOVEBG_PATH_ID(this->dyna.actor.params), 0);
        }
    }
    if (!(D_8089EE40 & 1) && MOVEBG_SPEED(this->dyna.actor.params) != 0) {
        D_8089EE40 |= 1;
        this->sfxFlags |= 1;
    }
    if (this->sfxFlags & 1) {
        func_8002F948(&this->dyna.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
    }
}

void BgMizuMovebg_Update(Actor* thisx, PlayState* play) {
    BgMizuMovebg* this = (BgMizuMovebg*)thisx;

    this->actionFunc(this, play);
}

void BgMizuMovebg_Draw(Actor* thisx, PlayState* play2) {
    BgMizuMovebg* this = (BgMizuMovebg*)thisx;
    PlayState* play = play2;
    u32 frames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mizu_movebg.c", 754);

    frames = play->gameplayFrames;
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, frames * 1, 0, 32, 32, 1, 0, 0, 32, 32, 0,
                                        0, 0, this->scrollAlpha1));

    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, frames * 1, 0, 32, 32, 1, 0, 0, 32, 32, 0,
                                        0, 0, this->scrollAlpha2));

    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, frames * 1, 0, 32, 32, 1, 0, 0, 32, 32, 0,
                                        0, 0, this->scrollAlpha3));

    gSPSegment(POLY_OPA_DISP++, 0x0B,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, frames * 3, 0, 32, 32, 1, 0, 0, 32, 32, 0,
                                        0, 0, this->scrollAlpha4));

    gSPMatrix(POLY_OPA_DISP++, MATRIX_NEW(play->state.gfxCtx, "../z_bg_mizu_movebg.c", 788),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->dList != NULL) {
        gSPDisplayList(POLY_OPA_DISP++, this->dList);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mizu_movebg.c", 795);
}
