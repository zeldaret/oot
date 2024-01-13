/*
 * File: z_en_river_sound.c
 * Overlay: ovl_En_River_Sound
 * Description: Controls various sounds. Includes sound effects and bgms
 */

#include "z_en_river_sound.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EnRiverSound_Init(Actor* thisx, PlayState* play);
void EnRiverSound_Destroy(Actor* thisx, PlayState* play);
void EnRiverSound_Update(Actor* thisx, PlayState* play);
void EnRiverSound_Draw(Actor* thisx, PlayState* play);

ActorInit En_River_Sound_InitVars = {
    /**/ ACTOR_EN_RIVER_SOUND,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnRiverSound),
    /**/ EnRiverSound_Init,
    /**/ EnRiverSound_Destroy,
    /**/ EnRiverSound_Update,
    /**/ EnRiverSound_Draw,
};

void EnRiverSound_Init(Actor* thisx, PlayState* play) {
    EnRiverSound* this = (EnRiverSound*)thisx;

    this->playSfx = false;
    this->pathIndex = (this->actor.params >> 8) & 0xFF;
    this->actor.params &= 0xFF;

    if (this->actor.params >= RS_GANON_TOWER_0) {
        // Incrementally increase volume of NA_BGM_GANON_TOWER for each new room during the climb of Ganon's Tower
        Audio_SetGanonsTowerBgmVolumeLevel(this->actor.params - RS_GANON_TOWER_0);
        Actor_Kill(&this->actor);
    } else if (this->actor.params == RS_NATURE_AMBIENCE) {
        Audio_PlayNatureAmbienceSequence(NATURE_ID_KOKIRI_REGION);
        Actor_Kill(&this->actor);
    } else if (this->actor.params == RS_LOST_WOODS_SARIAS_SONG) {
        if (!CHECK_QUEST_ITEM(QUEST_SONG_LULLABY) || CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnRiverSound_Destroy(Actor* thisx, PlayState* play) {
    EnRiverSound* this = (EnRiverSound*)thisx;

    if (this->actor.params == RS_LOST_WOODS_SARIAS_SONG) {
        Audio_ClearSariaBgmAtPos(&this->actor.projectedPos);
    } else if (this->actor.params == RS_GORON_CITY_SARIAS_SONG) {
        Audio_ClearSariaBgm2();
    }
}

/**
 * Determines the closest point to hearPos that is contained on the line connecting points A & B
 * If the closest point on the line will not be on the line segment connecting points A or B, return false.
 * Otherwise, calculate the point between A & B, assign it to `newSoundPos`, and return true
 */
s32 EnRiverSound_FindClosestPointOnLineSegment(Vec3f* pointA, Vec3f* pointB, Vec3f* hearPos, Vec3f* newSoundPos) {
    Vec3f lineSeg[3];
    f32 temp;

    // Line Segment from the hearPos to the first point in the path
    lineSeg[0].x = pointA->x - hearPos->x;
    lineSeg[0].y = pointA->y - hearPos->y;
    lineSeg[0].z = pointA->z - hearPos->z;

    // Line Segment from the hearPos to the second point in the path
    lineSeg[1].x = pointB->x - hearPos->x;
    lineSeg[1].y = pointB->y - hearPos->y;
    lineSeg[1].z = pointB->z - hearPos->z;

    // Line Segment from the first point to the second point in the path
    lineSeg[2].x = lineSeg[1].x - lineSeg[0].x;
    lineSeg[2].y = lineSeg[1].y - lineSeg[0].y;
    lineSeg[2].z = lineSeg[1].z - lineSeg[0].z;

    temp = DOTXYZ(lineSeg[2], lineSeg[0]);

    /**
     *  |                   |
     *  |                   |
     *  |                   |
     *  A ----------------- B
     *  |                   |
     *  |                   |
     *  |                   |
     * This condition uses dot products to check to see that `hearPos` is contained within the above region
     * i.e. The closest point on line AB must be between A & B
     */
    if ((DOTXYZ(lineSeg[2], lineSeg[1]) * temp) < 0.0f) {
        temp = -temp / SQXYZ(lineSeg[2]);

        // Closest point to hearPos contained on line segment A-B
        newSoundPos->x = (lineSeg[2].x * temp) + pointA->x;
        newSoundPos->y = (lineSeg[2].y * temp) + pointA->y;
        newSoundPos->z = (lineSeg[2].z * temp) + pointA->z;

        return true;
    }

    return false;
}

/**
 * Writes the position along the river path to `sfxPos` based on the `hearPos`, which is usually the position of the
 * player.
 * Returns true if the distance between the `hearPos` and `sfxPos` is less than 10000, false if not.
 */
s32 EnRiverSound_GetSfxPos(Vec3s* points, s32 numPoints, Vec3f* hearPos, Vec3f* sfxPos) {
    s32 i;
    s32 closestPointIdx;
    s32 useAdjacentPoints[2] = {
        false, // use previous point
        false, // use next point
    };
    Vec3f closestPointPos;
    Vec3f nextLineSegClosestPos;
    Vec3f prevLineSegClosestPos;
    Vec3f point;
    f32 closestPointDist = 10000.0f;
    Vec3s* closestPoint;

    for (i = 0; i < numPoints; i++) {
        f32 dist;

        point.x = points[i].x;
        point.y = points[i].y;
        point.z = points[i].z;
        dist = Math_Vec3f_DistXYZ(hearPos, &point);

        if (dist < closestPointDist) {
            closestPointDist = dist;
            closestPointIdx = i;
        }
    }

    if (closestPointDist >= 10000.0f) {
        return false;
    }

    closestPoint = &points[closestPointIdx];
    closestPointPos.x = closestPoint->x;
    closestPointPos.y = closestPoint->y;
    closestPointPos.z = closestPoint->z;

    // point on path before closest point
    if (closestPointIdx != 0) {
        point.x = closestPoint[-1].x;
        point.y = closestPoint[-1].y;
        point.z = closestPoint[-1].z;
        useAdjacentPoints[0] =
            EnRiverSound_FindClosestPointOnLineSegment(&point, &closestPointPos, hearPos, &prevLineSegClosestPos);
    }

    // point on path after closest point
    if (closestPointIdx + 1 != numPoints) {
        point.x = closestPoint[1].x;
        point.y = closestPoint[1].y;
        point.z = closestPoint[1].z;
        useAdjacentPoints[1] =
            EnRiverSound_FindClosestPointOnLineSegment(&closestPointPos, &point, hearPos, &nextLineSegClosestPos);
    }

    if (useAdjacentPoints[0] && useAdjacentPoints[1]) {
        if (!EnRiverSound_FindClosestPointOnLineSegment(&prevLineSegClosestPos, &nextLineSegClosestPos, hearPos,
                                                        sfxPos)) {
            sfxPos->x = (prevLineSegClosestPos.x + nextLineSegClosestPos.x) * 0.5f;
            sfxPos->y = (prevLineSegClosestPos.y + nextLineSegClosestPos.y) * 0.5f;
            sfxPos->z = (prevLineSegClosestPos.z + nextLineSegClosestPos.z) * 0.5f;
        }
    } else if (useAdjacentPoints[0]) {
        sfxPos->x = prevLineSegClosestPos.x;
        sfxPos->y = prevLineSegClosestPos.y;
        sfxPos->z = prevLineSegClosestPos.z;
    } else if (useAdjacentPoints[1]) {
        sfxPos->x = nextLineSegClosestPos.x;
        sfxPos->y = nextLineSegClosestPos.y;
        sfxPos->z = nextLineSegClosestPos.z;
    } else {
        sfxPos->x = closestPointPos.x;
        sfxPos->y = closestPointPos.y;
        sfxPos->z = closestPointPos.z;
    }

    return true;
}

void EnRiverSound_Update(Actor* thisx, PlayState* play) {
    Path* path;
    Vec3f* pos;
    Player* player = GET_PLAYER(play);
    EnRiverSound* this = (EnRiverSound*)thisx;
    s32 bgId;

    if ((thisx->params == RS_RIVER_DEFAULT_LOW_FREQ) || (thisx->params == RS_RIVER_DEFAULT_MEDIUM_FREQ) ||
        (thisx->params == RS_RIVER_DEFAULT_HIGH_FREQ)) {
        path = &play->pathList[this->pathIndex];
        pos = &thisx->world.pos;

        if (EnRiverSound_GetSfxPos(SEGMENTED_TO_VIRTUAL(path->points), path->count, &player->actor.world.pos, pos)) {
            if (BgCheck_EntityRaycastDown4(&play->colCtx, &thisx->floorPoly, &bgId, thisx, pos) != BGCHECK_Y_MIN) {
                // Get the river sfx frequency based on the speed of the river current under the actor
                this->sfxFreqIndex = SurfaceType_GetConveyorSpeed(&play->colCtx, thisx->floorPoly, bgId);
            } else {
                this->sfxFreqIndex = CONVEYOR_SPEED_DISABLED;
            }

            if (this->sfxFreqIndex == CONVEYOR_SPEED_DISABLED) {
                if (thisx->params == RS_RIVER_DEFAULT_MEDIUM_FREQ) {
                    this->sfxFreqIndex = 0;
                } else if (thisx->params == RS_RIVER_DEFAULT_LOW_FREQ) {
                    this->sfxFreqIndex = 1;
                } else {
                    // RS_RIVER_DEFAULT_HIGH_FREQ
                    this->sfxFreqIndex = 2;
                }
            } else {
                this->sfxFreqIndex--;
                this->sfxFreqIndex = CLAMP_MAX(this->sfxFreqIndex, CONVEYOR_SPEED_MAX - 2);
            }
        }
    } else if ((thisx->params == RS_GORON_CITY_SARIAS_SONG) || (thisx->params == RS_GREAT_FAIRY)) {
        func_8002DBD0(&player->actor, &thisx->home.pos, &thisx->world.pos);
    } else if (play->sceneId == SCENE_DODONGOS_CAVERN_BOSS && Flags_GetClear(play, thisx->room)) {
        Actor_Kill(thisx);
    }
}

void EnRiverSound_Draw(Actor* thisx, PlayState* play) {
    static s16 soundEffects[] = {
        0,
        NA_SE_EV_WATER_WALL - SFX_FLAG,
        NA_SE_EV_MAGMA_LEVEL - SFX_FLAG,
        NA_SE_EV_WATER_WALL_BIG - SFX_FLAG,
        0,
        0,
        NA_SE_EV_MAGMA_LEVEL_M - SFX_FLAG,
        NA_SE_EV_MAGMA_LEVEL_L - SFX_FLAG,
        NA_SE_EV_WATERDROP - SFX_FLAG,
        NA_SE_EV_FOUNTAIN - SFX_FLAG,
        NA_SE_EV_CROWD - SFX_FLAG,
        0,
        NA_SE_EV_SARIA_MELODY - SFX_FLAG,
        0,
        NA_SE_EV_SAND_STORM - SFX_FLAG,
        NA_SE_EV_WATER_BUBBLE - SFX_FLAG,
        NA_SE_EV_KENJA_ENVIROMENT_0 - SFX_FLAG,
        NA_SE_EV_KENJA_ENVIROMENT_1 - SFX_FLAG,
        NA_SE_EV_EARTHQUAKE - SFX_FLAG,
        0,
        NA_SE_EV_TORCH - SFX_FLAG,
        NA_SE_EV_COW_CRY_LV - SFX_FLAG,
    };
    static f32 sfxFreqs[CONVEYOR_SPEED_MAX - 1] = {
        0.7f, // CONVEYOR_SPEED_SLOW
        1.0f, // CONVEYOR_SPEED_MEDIUM
        1.4f, // CONVEYOR_SPEED_FAST
    };
    EnRiverSound* this = (EnRiverSound*)thisx;

    if (!this->playSfx) {
        this->playSfx = true;
    } else if ((this->actor.params == RS_RIVER_DEFAULT_LOW_FREQ) ||
               (this->actor.params == RS_RIVER_DEFAULT_MEDIUM_FREQ) ||
               (this->actor.params == RS_RIVER_DEFAULT_HIGH_FREQ)) {
        Audio_PlaySfxRiver(&this->actor.projectedPos, sfxFreqs[this->sfxFreqIndex]);
    } else if (this->actor.params == RS_LOWER_MAIN_BGM_VOLUME) {
        // Responsible for lowering market bgm in Child Market Entrance and Child Market Back Alley
        // Lower volume from default 127 to a volume of 90
        Audio_LowerMainBgmVolume(90);
    } else if (this->actor.params == RS_LOST_WOODS_SARIAS_SONG) {
        // Play Sarias Song at the next correct Lost Woods path to Sacred Forest Meadow
        // Volume depends on distance to source
        func_800F4E30(&this->actor.projectedPos, this->actor.xzDistToPlayer);
    } else if (this->actor.params == RS_GORON_CITY_SARIAS_SONG) {
        // Play Sarias Song in Goron City at the entrance to lost woods
        // Volume depends on distance to source
        Audio_PlaySariaBgm(&this->actor.home.pos, NA_BGM_SARIA_THEME, 1000);
    } else if (this->actor.params == RS_GREAT_FAIRY) {
        // Play the Great Fairy Song inside the fairy fountain
        // Volume depends on distance to source
        Audio_PlaySariaBgm(&this->actor.home.pos, NA_BGM_GREAT_FAIRY, 800);
    } else if ((this->actor.params == RS_SANDSTORM) || (this->actor.params == RS_CHAMBER_OF_SAGES_1) ||
               (this->actor.params == RS_CHAMBER_OF_SAGES_2) || (this->actor.params == RS_RUMBLING)) {
        // Play sfx in the fixed center of the screen
        Sfx_PlaySfxCentered2(soundEffects[this->actor.params]);
    } else {
        // Play sfx at the location of riverSounds projected position
        Actor_PlaySfx(&this->actor, soundEffects[this->actor.params]);
    }
}
