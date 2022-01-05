#include "global.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Horse/z_en_horse.h"


s32 Horse_ShouldSpawnInScene(s32 scene) {
    /*
     * SCENE_SPOT00 => Hyrule Field
     * SCENE_SPOT06 => Lake Hylia
     * SCENE_SPOT09 => Gerudo Valley
     * SCENE_SPOT12 => Gerudo's Fortress
     * SCENE_SPOT20 => Lon Lon Ranch
     */
    s32 validScenes[] = { SCENE_SPOT00, SCENE_SPOT06, SCENE_SPOT09, SCENE_SPOT12, SCENE_SPOT20 };
    s32 i;

    for (i = 0; i < ARRAY_COUNT(validScenes); i++) {
        if (scene == validScenes[i]) {
            return 1;
        }
    }

    return 0;
}

void Horse_SetSpawnInHyruleField(GlobalContext* globalCtx) {
    gSaveContext.horseData.scene = SCENE_SPOT00;
    gSaveContext.horseData.pos.x = -1840;
    gSaveContext.horseData.pos.y = 72;
    gSaveContext.horseData.pos.z = 5497;
    gSaveContext.horseData.angle = -27353;
}

/**
 * @brief Sets the horses spawn point in Lake Hylia.
 *
 * Only works if the horse is located in Lake Hylia.
 * This is called only when Link obtains the water medallion...
 *
 * @param globalCtx
 */
void Horse_TrySetSpawnInLakeHylia(GlobalContext* globalCtx) {
    if (gSaveContext.horseData.scene == SCENE_SPOT06) {
        gSaveContext.horseData.scene = SCENE_SPOT06;
        gSaveContext.horseData.pos.x = -2065;
        gSaveContext.horseData.pos.y = -863;
        gSaveContext.horseData.pos.z = 1839;
        gSaveContext.horseData.angle = 0;
    }
}

typedef struct {
    /* 0x00 */ s16 scene;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16 angle;
    /* 0x0A */ s16 type;
} HorseSpawn;

void func_8006D0EC(GlobalContext* globalCtx, Player* player) {
    s32 i;
    HorseSpawn horseSpawns[] = {
        { SCENE_SPOT00, -460, 100, 6640, 0, HORSE_TYPE_2 }, { SCENE_SPOT06, -1929, -1025, 768, 0, HORSE_TYPE_2 },
        { SCENE_SPOT09, 2566, -259, 767, 0, HORSE_TYPE_2 }, { SCENE_SPOT12, -328, 10, 953, 0, HORSE_TYPE_2 },
        { SCENE_SPOT20, 928, 0, -2280, 0, HORSE_TYPE_2 },
    };

    if ((AREG(6) != 0) && (Flags_GetEventChkInf(0x18) || (DREG(1) != 0))) {
        player->rideActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, player->actor.world.pos.x,
                                        player->actor.world.pos.y, player->actor.world.pos.z, player->actor.shape.rot.x,
                                        player->actor.shape.rot.y, player->actor.shape.rot.z, HORSE_TYPE_9);

        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 343);

        Actor_MountHorse(globalCtx, player, player->rideActor);
        func_8002DE74(globalCtx, player);
        gSaveContext.horseData.scene = globalCtx->sceneNum;

        if (globalCtx->sceneNum == SCENE_SPOT12) {
            player->rideActor->room = -1;
        }
    } else if ((globalCtx->sceneNum == SCENE_SPOT12) && (gSaveContext.minigameState == 3)) {
        Actor* horseActor;
        gSaveContext.minigameState = 0;
        horseActor =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, 3586.0f, 1413.0f, -402.0f, 0, 0x4000, 0, HORSE_TYPE_1);
        horseActor->room = -1;
    } else if ((gSaveContext.entranceIndex == 1230) && (gSaveContext.eventChkInf[1] & 0x100)) {
        Actor* horseActor =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, -25.0f, 0.0f, -1600.0f, 0, -0x4000, 0, HORSE_TYPE_1);
        ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 389);
    } else if ((globalCtx->sceneNum == gSaveContext.horseData.scene) &&
               (Flags_GetEventChkInf(0x18) != 0 || DREG(1) != 0)) {
        // "Set by existence of horse %d %d %d"
        osSyncPrintf("馬存在によるセット %d %d %d\n", gSaveContext.horseData.scene, Flags_GetEventChkInf(0x18),
                     DREG(1));

        if (Horse_ShouldSpawnInScene(gSaveContext.horseData.scene)) {
            Actor* horseActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE,
                                            gSaveContext.horseData.pos.x, gSaveContext.horseData.pos.y,
                                            gSaveContext.horseData.pos.z, 0, gSaveContext.horseData.angle, 0, HORSE_TYPE_1);
            ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 414);
            if (globalCtx->sceneNum == SCENE_SPOT12) {
                horseActor->room = -1;
            }
        } else {
            osSyncPrintf(VT_COL(RED, WHITE));
            // "Horse_SetNormal():%d set spot is no good."
            osSyncPrintf("Horse_SetNormal():%d セットスポットまずいです。\n", gSaveContext.horseData.scene);
            osSyncPrintf(VT_RST);
            Horse_SetSpawnInHyruleField(globalCtx);
        }
    } else if ((globalCtx->sceneNum == SCENE_SPOT20) && !Flags_GetEventChkInf(0x18) && (DREG(1) == 0)) {
        Actor* horseActor =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, 0.0f, 0.0f, -500.0f, 0, 0, 0, HORSE_TYPE_1);
        ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 443);
    } else if (Flags_GetEventChkInf(0x18) || (DREG(1) != 0)) {
        for (i = 0; i < ARRAY_COUNT(horseSpawns); i++) {
            HorseSpawn* horseSpawn = &horseSpawns[i];
            if (horseSpawn->scene == globalCtx->sceneNum) {
                Actor* horseActor =
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, horseSpawn->pos.x, horseSpawn->pos.y,
                                horseSpawn->pos.z, 0, horseSpawn->angle, 0, horseSpawn->type);
                ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 466);
                if (globalCtx->sceneNum == SCENE_SPOT12) {
                    horseActor->room = -1;
                }

                break;
            }
        }
    } else if (!Flags_GetEventChkInf(0x18)) {
        if ((DREG(1) == 0) && (globalCtx->sceneNum == SCENE_SOUKO) && !IS_DAY) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, 0.0f, 0.0f, -60.0f, 0, 0x7360, 0, HORSE_TYPE_1);
        }
    }
}

typedef struct {
    /* 0x00 */ s16 scene;
    /* 0x04 */ s32 cutsceneIndex;
    /* 0x08 */ Vec3s pos;
    /* 0x0E */ s16 angle;
    /* 0x10 */ s16 type;
} struct_8011F9B8;

void func_8006D684(GlobalContext* globalCtx, Player* player) {
    s32 pad;
    s32 i;
    Vec3s spawnPos;

    if ((gSaveContext.entranceIndex == 0x028A || gSaveContext.entranceIndex == 0x028E ||
         gSaveContext.entranceIndex == 0x0292 || gSaveContext.entranceIndex == 0x0476) &&
        (gSaveContext.respawnFlag == 0)) {
        Vec3s spawnPositions[] = {
            { 0xF46F, 0x0139, 0x1E14 },
            { 0xF894, 0x0139, 0x1B67 },
            { 0xF035, 0x0139, 0x1B15 },
            { 0xF6F7, 0x0139, 0x1766 },
        };

        if (gSaveContext.entranceIndex == 0x028A) {
            spawnPos = spawnPositions[0];
        } else if (gSaveContext.entranceIndex == 0x028E) {
            spawnPos = spawnPositions[1];
        } else if (gSaveContext.entranceIndex == 0x0292) {
            spawnPos = spawnPositions[2];
        } else {
            spawnPos = spawnPositions[3];
        }

        player->rideActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, spawnPos.x, spawnPos.y,
                                        spawnPos.z, 0, player->actor.world.rot.y, 0, HORSE_TYPE_7);
        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 561);

        Actor_MountHorse(globalCtx, player, player->rideActor);
        func_8002DE74(globalCtx, player);
        gSaveContext.horseData.scene = globalCtx->sceneNum;
    } else if ((globalCtx->sceneNum == SCENE_SPOT20) && ((gSaveContext.eventInf[0] & 0xF) == 6) &&
               (Flags_GetEventChkInf(0x18) == 0) && (DREG(1) == 0)) {
        player->rideActor =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, 894.0f, 0.0f, -2084.0f, 0, -0x7FFF, 0, HORSE_TYPE_5);
        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 582);

        Actor_MountHorse(globalCtx, player, player->rideActor);
        func_8002DE74(globalCtx, player);
        gSaveContext.horseData.scene = globalCtx->sceneNum;

        if (globalCtx->sceneNum == SCENE_SPOT12) {
            player->rideActor->room = -1;
        }
    } else {
        static struct_8011F9B8 spawnData[] = {
            { SCENE_SPOT12, 0xFFF0, 0x0E10, 0x0585, 0x0168, 0x8001, HORSE_TYPE_8 }, { SCENE_SPOT20, 0xFFF0, 0xFF06, 0x0001, 0xF9D4, 0x4000, HORSE_TYPE_6 },
            { SCENE_SPOT20, 0xFFF1, 0x0000, 0x0000, 0x0000, 0x0000, HORSE_TYPE_5 }, { SCENE_SPOT20, 0xFFF5, 0x0000, 0x0000, 0x0000, 0x0000, HORSE_TYPE_7 },
            { SCENE_SPOT00, 0xFFF3, 0xF46F, 0x0139, 0x1E14, 0x0000, HORSE_TYPE_7 }, { SCENE_SPOT00, 0xFFF4, 0xF894, 0x0139, 0x1B67, 0x0000, HORSE_TYPE_7 },
            { SCENE_SPOT00, 0xFFF5, 0xF035, 0x0139, 0x1B15, 0x0000, HORSE_TYPE_7 }, { SCENE_SPOT00, 0xFFF6, 0xF035, 0x0139, 0x1B15, 0x0000, HORSE_TYPE_7 },
        };

        for (i = 0; i < ARRAY_COUNT(spawnData); i++) {
            if ((globalCtx->sceneNum == spawnData[i].scene) &&
                (((void)0, gSaveContext.cutsceneIndex) == spawnData[i].cutsceneIndex)) {
                if (spawnData[i].type == HORSE_TYPE_7) {
                    if ((globalCtx->sceneNum == 99) && (((void)0, gSaveContext.cutsceneIndex) == 0xFFF1)) {
                        spawnData[i].pos.x = player->actor.world.pos.x;
                        spawnData[i].pos.y = player->actor.world.pos.y;
                        spawnData[i].pos.z = player->actor.world.pos.z;
                    }

                    player->rideActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, spawnData[i].pos.x,
                                                    spawnData[i].pos.y, spawnData[i].pos.z, 0,
                                                    player->actor.world.rot.y, 0, spawnData[i].type);
                    ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 628);

                    Actor_MountHorse(globalCtx, player, player->rideActor);
                    func_8002DE74(globalCtx, player);
                } else if ((spawnData[i].type == HORSE_TYPE_5) || (spawnData[i].type == HORSE_TYPE_6) || (spawnData[i].type == HORSE_TYPE_8)) {
                    Vec3f sp54;
                    s32 temp = 0;

                    if (((gSaveContext.eventInf[0] & 0x10) >> 4) && spawnData[i].type == HORSE_TYPE_6) {
                        temp = 0x8000;
                    }

                    player->rideActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, spawnData[i].pos.x,
                                                    spawnData[i].pos.y, spawnData[i].pos.z, 0, spawnData[i].angle, 0,
                                                    spawnData[i].type | temp);
                    ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 667);

                    player->actor.world.pos.x = spawnData[i].pos.x;
                    player->actor.world.pos.y = spawnData[i].pos.y;
                    player->actor.world.pos.z = spawnData[i].pos.z;
                    player->actor.shape.rot.x = player->actor.shape.rot.z = 0;
                    player->actor.shape.rot.y = spawnData[i].angle;

                    Actor_MountHorse(globalCtx, player, player->rideActor);
                    func_8002DE74(globalCtx, player);

                    sp54.x = player->actor.world.pos.x - 200.0f;
                    sp54.y = player->actor.world.pos.y + 100.0f;
                    sp54.z = player->actor.world.pos.z;

                    Gameplay_CameraSetAtEye(globalCtx, globalCtx->activeCamera, &player->actor.world.pos, &sp54);
                } else {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_HORSE, spawnData[i].pos.x, spawnData[i].pos.y,
                                spawnData[i].pos.z, 0, spawnData[i].angle, 0, spawnData[i].type);
                }
                break;
            }
        }
    }
}

void func_8006DC68(GlobalContext* globalCtx, Player* player) {
    if (LINK_IS_ADULT) {
        if (!Horse_ShouldSpawnInScene(gSaveContext.horseData.scene)) {
            osSyncPrintf(VT_COL(RED, WHITE));
            // "Horse_Set_Check():%d set spot is no good."
            osSyncPrintf("Horse_Set_Check():%d セットスポットまずいです。\n", gSaveContext.horseData.scene);
            osSyncPrintf(VT_RST);
            Horse_SetSpawnInHyruleField(globalCtx);
        }

        if (Horse_ShouldSpawnInScene(globalCtx->sceneNum)) {
            if ((gSaveContext.sceneSetupIndex > 3) ||
                ((gSaveContext.entranceIndex == 0x028A || gSaveContext.entranceIndex == 0x028E ||
                  gSaveContext.entranceIndex == 0x0292 || gSaveContext.entranceIndex == 0x0476) &&
                 (gSaveContext.respawnFlag == 0)) ||
                ((globalCtx->sceneNum == SCENE_SPOT20) && ((gSaveContext.eventInf[0] & 0xF) == 6) &&
                 !Flags_GetEventChkInf(0x18) && (DREG(1) == 0))) {
                func_8006D684(globalCtx, player);
            } else {
                func_8006D0EC(globalCtx, player);
            }
        }
    }
}

/**
 * Turn the given actor to a given point by a given turnAmount
 * @param actor the actor to rotate
 * @param target the point that the actor should rotate to
 * @param turnAmount the maximal amount of rotation that should be applied
 */
void Horse_RotateToPoint(Actor* actor, Vec3f* target, s16 turnAmount) {
    s16 rotationDeltaToTarget = Math_Vec3f_Yaw(&actor->world.pos, target) - actor->world.rot.y;

    if (rotationDeltaToTarget > turnAmount) {
        actor->world.rot.y += turnAmount;
    } else if (rotationDeltaToTarget < -turnAmount) {
        actor->world.rot.y -= turnAmount;
    } else {
        actor->world.rot.y += rotationDeltaToTarget;
    }

    actor->shape.rot.y = actor->world.rot.y;
}