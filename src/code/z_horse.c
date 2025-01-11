#include "terminal.h"
#include "z_lib.h"
#include "regs.h"
#include "z64horse.h"
#include "z64play.h"
#include "z64player.h"
#include "src/overlays/actors/ovl_En_Horse/z_en_horse.h"

/**
 * Tests if the player horse can be spawned
 *
 * @param sceneId the checked scene
 * @return true if the player horse can appear in the scene, else false
 */
s32 Horse_CanSpawn(s32 sceneId) {
    s32 validSceneIds[] = { SCENE_HYRULE_FIELD, SCENE_LAKE_HYLIA, SCENE_GERUDO_VALLEY, SCENE_GERUDOS_FORTRESS,
                            SCENE_LON_LON_RANCH };
    s32 i;

    for (i = 0; i < ARRAY_COUNT(validSceneIds); i++) {
        if (sceneId == validSceneIds[i]) {
            return true;
        }
    }

    return false;
}

/**
 * Sets horseData to a neutral spawn in Hyrule Field
 */
void Horse_ResetHorseData(PlayState* play) {
    gSaveContext.save.info.horseData.sceneId = SCENE_HYRULE_FIELD;
    gSaveContext.save.info.horseData.pos.x = -1840;
    gSaveContext.save.info.horseData.pos.y = 72;
    gSaveContext.save.info.horseData.pos.z = 5497;
    gSaveContext.save.info.horseData.angle = -0x6AD9;
}

/**
 * Forces the player horse to spawn in a safe spot if the current spawn is in Lake Hylia
 * This prevents the horse from spawning underwater after obtaining the Water Medallion
 */
void Horse_FixLakeHyliaPosition(PlayState* play) {
    if (gSaveContext.save.info.horseData.sceneId == SCENE_LAKE_HYLIA) {
        gSaveContext.save.info.horseData.sceneId = SCENE_LAKE_HYLIA;
        gSaveContext.save.info.horseData.pos.x = -2065;
        gSaveContext.save.info.horseData.pos.y = -863;
        gSaveContext.save.info.horseData.pos.z = 1839;
        gSaveContext.save.info.horseData.angle = 0;
    }
}

typedef struct HorseSpawn {
    /* 0x00 */ s16 sceneId;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16 angle;
    /* 0x0A */ s16 type;
} HorseSpawn;

void Horse_SetupInGameplay(PlayState* play, Player* player) {
    s32 i;
    HorseSpawn horseSpawns[] = {
        { SCENE_HYRULE_FIELD, -460, 100, 6640, 0, HORSE_PTYPE_INACTIVE },
        { SCENE_LAKE_HYLIA, -1929, -1025, 768, 0, HORSE_PTYPE_INACTIVE },
        { SCENE_GERUDO_VALLEY, 2566, -259, 767, 0, HORSE_PTYPE_INACTIVE },
        { SCENE_GERUDOS_FORTRESS, -328, 10, 953, 0, HORSE_PTYPE_INACTIVE },
        { SCENE_LON_LON_RANCH, 928, 0, -2280, 0, HORSE_PTYPE_INACTIVE },
    };

    if (R_EXITED_SCENE_RIDING_HORSE &&
        (Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED)) {
        // Player entering scene on top of horse
        player->rideActor =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, player->actor.world.pos.x, player->actor.world.pos.y,
                        player->actor.world.pos.z, player->actor.shape.rot.x, player->actor.shape.rot.y,
                        player->actor.shape.rot.z, HORSE_PTYPE_PLAYER_SPAWNED_RIDING);

        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 343);

        Actor_MountHorse(play, player, player->rideActor);
        Actor_RequestHorseCameraSetting(play, player);
        gSaveContext.save.info.horseData.sceneId = play->sceneId;
        if (play->sceneId == SCENE_GERUDOS_FORTRESS) {
            player->rideActor->room = -1;
        }
    } else if ((play->sceneId == SCENE_GERUDOS_FORTRESS) && (gSaveContext.minigameState == 3)) {
        // Completed Horseback Archery Minigame
        Actor* horseActor;
        gSaveContext.minigameState = 0;
        horseActor =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, 3586.0f, 1413.0f, -402.0f, 0, 0x4000, 0, HORSE_PTYPE_1);
        horseActor->room = -1;
    } else if ((gSaveContext.save.entranceIndex == ENTR_LON_LON_RANCH_7) &&
               GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        // Completed Horse Race
        Actor* horseActor =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, -25.0f, 0.0f, -1600.0f, 0, -0x4000, 0, HORSE_PTYPE_1);
        ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 389);
    } else if ((play->sceneId == gSaveContext.save.info.horseData.sceneId) &&
               (Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED)) {
        // Player enters a scene where the horse was left previously
        PRINTF(T("馬存在によるセット %d %d %d\n", "Set by existence of horse %d %d %d\n"),
               gSaveContext.save.info.horseData.sceneId, Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED),
               R_DEBUG_FORCE_EPONA_OBTAINED);

        if (Horse_CanSpawn(gSaveContext.save.info.horseData.sceneId)) {
            Actor* horseActor =
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, gSaveContext.save.info.horseData.pos.x,
                            gSaveContext.save.info.horseData.pos.y, gSaveContext.save.info.horseData.pos.z, 0,
                            gSaveContext.save.info.horseData.angle, 0, HORSE_PTYPE_1);
            ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 414);

            if (play->sceneId == SCENE_GERUDOS_FORTRESS) {
                horseActor->room = -1;
            }
        } else {
            PRINTF_COLOR_ERROR();
            PRINTF(
                T("Horse_SetNormal():%d セットスポットまずいです。\n", "Horse_SetNormal():%d set spot is no good.\n"),
                gSaveContext.save.info.horseData.sceneId);
            PRINTF_RST();
            Horse_ResetHorseData(play);
        }
    } else if ((play->sceneId == SCENE_LON_LON_RANCH) &&
               !(Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED)) {
        // Player spawns in Lon-Lon Ranch without owning Epona
        Actor* horseActor =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, 0.0f, 0.0f, -500.0f, 0, 0, 0, HORSE_PTYPE_1);
        ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 443);
    } else if (Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED) {
        // Player owns Epona, but isn't riding her and the current scene is not the same as the horse's last location.
        for (i = 0; i < ARRAY_COUNT(horseSpawns); i++) {
            HorseSpawn* horseSpawn = &horseSpawns[i];
            if (horseSpawn->sceneId == play->sceneId) {
                Actor* horseActor =
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, horseSpawn->pos.x, horseSpawn->pos.y,
                                horseSpawn->pos.z, 0, horseSpawn->angle, 0, horseSpawn->type);
                ASSERT(horseActor != NULL, "horse_actor != NULL", "../z_horse.c", 466);

                if (play->sceneId == SCENE_GERUDOS_FORTRESS) {
                    horseActor->room = -1;
                }
                break;
            }
        }
    } else if (!(Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED) &&
               (play->sceneId == SCENE_LON_LON_BUILDINGS) && !IS_DAY) {
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, 0.0f, 0.0f, -60.0f, 0, 0x7360, 0, HORSE_PTYPE_1);
    }
}

typedef struct HorseCutsceneSpawn {
    /* 0x00 */ s16 sceneId;
    /* 0x04 */ s32 cutsceneIndex;
    /* 0x08 */ Vec3s pos;
    /* 0x0E */ s16 angle;
    /* 0x10 */ s16 type;
} HorseCutsceneSpawn;

void Horse_SetupInCutscene(PlayState* play, Player* player) {
    static HorseCutsceneSpawn horseSpawns[] = {
        { SCENE_GERUDOS_FORTRESS, 0xFFF0, { 3600, 1413, 360 }, 0x8001, HORSE_PTYPE_HORSEBACK_ARCHERY },
        { SCENE_LON_LON_RANCH, 0xFFF0, { -250, 1, -1580 }, 0x4000, HORSE_PTYPE_6 },  // Horse Race
        { SCENE_LON_LON_RANCH, 0xFFF1, { 0, 0, 0 }, 0x0000, HORSE_PTYPE_5 },         // Learned Epona's Song
        { SCENE_LON_LON_RANCH, 0xFFF5, { 0, 0, 0 }, 0x0000, HORSE_PTYPE_7 },         // Credits
        { SCENE_HYRULE_FIELD, 0xFFF3, { -2961, 313, 7700 }, 0x0000, HORSE_PTYPE_7 }, // Title Screen
        { SCENE_HYRULE_FIELD, 0xFFF4, { -1900, 313, 7015 }, 0x0000, HORSE_PTYPE_7 },
        { SCENE_HYRULE_FIELD, 0xFFF5, { -4043, 313, 6933 }, 0x0000, HORSE_PTYPE_7 }, // Credits
        { SCENE_HYRULE_FIELD, 0xFFF6, { -4043, 313, 6933 }, 0x0000, HORSE_PTYPE_7 }, // Unused. Hopping Lon Lon
                                                                                     // Ranch North Gate
    };
    s32 pad;
    s32 i;

    if ((gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_11 ||
         gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_12 ||
         gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_13 ||
         gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_15) &&
        (gSaveContext.respawnFlag == 0)) {
        // Epona hopping over one of the Lon Lon Ranch fences
        Vec3s spawnPos;
        Vec3s spawnPositions[] = {
            // Note: The east and west positions are paired with the wrong entranceIndex. However, the subsequent
            // cutscene repositions the horse will override these coordinates while the horse is still obstructed, so no
            // visual glitch occurs.
            { -2961, 313, 7700 }, // South
            { -1900, 313, 7015 }, // East
            { -4043, 313, 6933 }, // West
            { -2313, 313, 5990 }, // North-East
        };

        // South of Lon Lon player spawn
        if (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_11) {
            spawnPos = spawnPositions[0];
            // West of Lon Lon player spawn
        } else if (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_12) {
            spawnPos = spawnPositions[1];
            // East of Lon Lon player spawn
        } else if (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_13) {
            spawnPos = spawnPositions[2];
            // Lon Lon exit player spawn
        } else {
            spawnPos = spawnPositions[3];
        }

        player->rideActor = Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, spawnPos.x, spawnPos.y, spawnPos.z, 0,
                                        player->actor.world.rot.y, 0, HORSE_PTYPE_7);
        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 561);

        Actor_MountHorse(play, player, player->rideActor);
        Actor_RequestHorseCameraSetting(play, player);
        gSaveContext.save.info.horseData.sceneId = play->sceneId;
    } else if ((play->sceneId == SCENE_LON_LON_RANCH) &&
               (GET_EVENTINF_INGO_RACE_STATE() == INGO_RACE_STATE_TRAPPED_WIN_EPONA) &&
               !(Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED)) {
        player->rideActor =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, 894.0f, 0.0f, -2084.0f, 0, -0x7FFF, 0, HORSE_PTYPE_5);
        ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 582);

        Actor_MountHorse(play, player, player->rideActor);
        Actor_RequestHorseCameraSetting(play, player);
        gSaveContext.save.info.horseData.sceneId = play->sceneId;

        if (play->sceneId == SCENE_GERUDOS_FORTRESS) {
            player->rideActor->room = -1;
        }
    } else {
        for (i = 0; i < ARRAY_COUNT(horseSpawns); i++) {
            if ((play->sceneId == horseSpawns[i].sceneId) &&
                (((void)0, gSaveContext.save.cutsceneIndex) == horseSpawns[i].cutsceneIndex)) {
                if (horseSpawns[i].type == HORSE_PTYPE_7) {
                    if ((play->sceneId == SCENE_LON_LON_RANCH) &&
                        (((void)0, gSaveContext.save.cutsceneIndex) == 0xFFF1)) {
                        horseSpawns[i].pos.x = player->actor.world.pos.x;
                        horseSpawns[i].pos.y = player->actor.world.pos.y;
                        horseSpawns[i].pos.z = player->actor.world.pos.z;
                    }

                    player->rideActor =
                        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, horseSpawns[i].pos.x, horseSpawns[i].pos.y,
                                    horseSpawns[i].pos.z, 0, player->actor.world.rot.y, 0, horseSpawns[i].type);
                    ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 628);

                    Actor_MountHorse(play, player, player->rideActor);
                    Actor_RequestHorseCameraSetting(play, player);
                } else if ((horseSpawns[i].type == HORSE_PTYPE_5) || (horseSpawns[i].type == HORSE_PTYPE_6) ||
                           (horseSpawns[i].type == HORSE_PTYPE_HORSEBACK_ARCHERY)) {
                    Vec3f eye;
                    s32 paramFlag = 0;

                    if (GET_EVENTINF_INGO_RACE_HORSETYPE() != HORSE_EPONA && horseSpawns[i].type == HORSE_PTYPE_6) {
                        // HORSE_HNI
                        paramFlag = 0x8000;
                    }

                    player->rideActor =
                        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, horseSpawns[i].pos.x, horseSpawns[i].pos.y,
                                    horseSpawns[i].pos.z, 0, horseSpawns[i].angle, 0, horseSpawns[i].type | paramFlag);
                    ASSERT(player->rideActor != NULL, "player->ride.actor != NULL", "../z_horse.c", 667);

                    player->actor.world.pos.x = horseSpawns[i].pos.x;
                    player->actor.world.pos.y = horseSpawns[i].pos.y;
                    player->actor.world.pos.z = horseSpawns[i].pos.z;
                    player->actor.shape.rot.x = player->actor.shape.rot.z = 0;
                    player->actor.shape.rot.y = horseSpawns[i].angle;

                    Actor_MountHorse(play, player, player->rideActor);
                    Actor_RequestHorseCameraSetting(play, player);

                    eye.x = player->actor.world.pos.x - 200.0f;
                    eye.y = player->actor.world.pos.y + 100.0f;
                    eye.z = player->actor.world.pos.z;

                    Play_SetCameraAtEye(play, play->activeCamId, &player->actor.world.pos, &eye);
                } else {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, horseSpawns[i].pos.x, horseSpawns[i].pos.y,
                                horseSpawns[i].pos.z, 0, horseSpawns[i].angle, 0, horseSpawns[i].type);
                }
                break;
            }
        }
    }
}

/**
 * Initializes the player's horse, but only if required.
 *
 * This function should be called during `Play_Init`.
 */
void Horse_InitPlayerHorse(PlayState* play, Player* player) {
    if (LINK_IS_ADULT) {
        if (!Horse_CanSpawn(gSaveContext.save.info.horseData.sceneId)) {
            PRINTF_COLOR_ERROR();
            PRINTF(
                T("Horse_Set_Check():%d セットスポットまずいです。\n", "Horse_Set_Check():%d set spot is no good.\n"),
                gSaveContext.save.info.horseData.sceneId);
            PRINTF_RST();
            Horse_ResetHorseData(play);
        }

        if (Horse_CanSpawn(play->sceneId)) {
            if (IS_CUTSCENE_LAYER ||
                // has hopped over one of the Lon-Lon Ranch fences
                ((gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_11 ||
                  gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_12 ||
                  gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_13 ||
                  gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_15) &&
                 (gSaveContext.respawnFlag == 0)) ||
                // trapped in Lon Lon Ranch
                ((play->sceneId == SCENE_LON_LON_RANCH) &&
                 (GET_EVENTINF_INGO_RACE_STATE() == INGO_RACE_STATE_TRAPPED_WIN_EPONA) &&
                 !(Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED))) {
                Horse_SetupInCutscene(play, player);
            } else {
                Horse_SetupInGameplay(play, player);
            }
        }
    }
}

void Horse_RotateToPoint(Actor* actor, Vec3f* pos, s16 turnAmount) {
    s16 x = Math_Vec3f_Yaw(&actor->world.pos, pos) - actor->world.rot.y;

    if (x > turnAmount) {
        actor->world.rot.y += turnAmount;
    } else if (x < -turnAmount) {
        actor->world.rot.y -= turnAmount;
    } else {
        actor->world.rot.y += x;
    }

    actor->shape.rot.y = actor->world.rot.y;
}
