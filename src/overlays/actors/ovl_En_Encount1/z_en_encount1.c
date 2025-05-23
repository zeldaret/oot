#include "z_en_encount1.h"
#include "terminal.h"
#include "overlays/actors/ovl_En_Tite/z_en_tite.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_LOCK_ON_DISABLED)

void EnEncount1_Init(Actor* thisx, PlayState* play);
void EnEncount1_Update(Actor* thisx, PlayState* play);

void EnEncount1_SpawnLeevers(EnEncount1* this, PlayState* play);
void EnEncount1_SpawnTektites(EnEncount1* this, PlayState* play);
void EnEncount1_SpawnStalchildOrWolfos(EnEncount1* this, PlayState* play);

static s16 sLeeverAngles[] = { 0x0000, 0x2710, 0x7148, 0x8EB8, 0xD8F0 };
static f32 sLeeverDists[] = { 200.0f, 170.0f, 120.0f, 120.0f, 170.0f };

ActorProfile En_Encount1_Profile = {
    /**/ ACTOR_EN_ENCOUNT1,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnEncount1),
    /**/ EnEncount1_Init,
    /**/ NULL,
    /**/ EnEncount1_Update,
    /**/ NULL,
};

void EnEncount1_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnEncount1* this = (EnEncount1*)thisx;
    f32 spawnRange;

    if (this->actor.params <= 0) {
        PRINTF("\n\n");
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n", "☆☆☆☆☆ Input error death! ☆☆☆☆☆ \n") VT_RST);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n", "☆☆☆☆☆ Input error death! ☆☆☆☆☆ \n") VT_RST);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n", "☆☆☆☆☆ Input error death! ☆☆☆☆☆ \n") VT_RST);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n", "☆☆☆☆☆ Input error death! ☆☆☆☆☆ \n") VT_RST);
        PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n", "☆☆☆☆☆ Input error death! ☆☆☆☆☆ \n") VT_RST);
        PRINTF("\n\n");
        Actor_Kill(&this->actor);
        return;
    }

    this->spawnType = PARAMS_GET_U(this->actor.params, 11, 5);
    this->maxCurSpawns = PARAMS_GET_U(this->actor.params, 6, 5);
    this->maxTotalSpawns = PARAMS_GET_U(this->actor.params, 0, 6);
    this->curNumSpawn = this->totalNumSpawn = 0;
    spawnRange = 120.0f + (40.0f * this->actor.world.rot.z);
    this->spawnRange = spawnRange;

    if (1) {}

    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 敵発生ゾーンでた！ ☆☆☆☆☆ %x\n", "☆☆☆☆☆ It's an enemy spawner! ☆☆☆☆☆ %x\n") VT_RST,
           this->actor.params);
    PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ 種類\t\t   ☆☆☆☆☆ %d\n", "☆☆☆☆☆ Type\t\t   ☆☆☆☆☆ %d\n") VT_RST, this->spawnType);
    PRINTF(VT_FGCOL(MAGENTA) T("☆☆☆☆☆ 最大同時発生数     ☆☆☆☆☆ %d\n",
                               "☆☆☆☆☆ Maximum number of simultaneous spawns ☆☆☆☆☆ %d\n") VT_RST,
           this->maxCurSpawns);
    PRINTF(VT_FGCOL(CYAN) T("☆☆☆☆☆ 最大発生数  \t   ☆☆☆☆☆ %d\n", "☆☆☆☆☆ Maximum number of spawns  \t   ☆☆☆☆☆ %d\n")
               VT_RST,
           this->maxTotalSpawns);
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生チェック範囲   ☆☆☆☆☆ %f\n", "☆☆☆☆☆ Spawn check range  ☆☆☆☆☆ %f\n") VT_RST,
           this->spawnRange);
    PRINTF("\n\n");

    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    switch (this->spawnType) {
        case SPAWNER_LEEVER:
            this->timer = 30;
            this->maxCurSpawns = 5;
            if (play->sceneId == SCENE_HAUNTED_WASTELAND) {
                this->reduceLeevers = true;
                this->maxCurSpawns = 3;
            }
            this->updateFunc = EnEncount1_SpawnLeevers;
            break;
        case SPAWNER_TEKTITE:
            this->maxCurSpawns = 2;
            this->updateFunc = EnEncount1_SpawnTektites;
            break;
        case SPAWNER_STALCHILDREN:
        case SPAWNER_WOLFOS:
            if (play->sceneId == SCENE_HYRULE_FIELD) {
                this->maxTotalSpawns = 10000;
            }
            this->updateFunc = EnEncount1_SpawnStalchildOrWolfos;
            break;
    }
}

void EnEncount1_SpawnLeevers(EnEncount1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 floorType;
    f32 spawnDist;
    s32 spawnParams;
    s16 spawnLimit;
    s16 spawnAngle;
    Vec3f spawnPos;
    CollisionPoly* floorPoly;
    s32 bgId;
    f32 floorY;
    EnReeba* leever;

    this->outOfRangeTimer = 0;
    spawnPos = this->actor.world.pos;

    if ((this->timer == 0) && (play->csCtx.state == CS_STATE_IDLE) && (this->curNumSpawn <= this->maxCurSpawns) &&
        (this->curNumSpawn < 5)) {
        floorType = SurfaceType_GetFloorType(&play->colCtx, player->actor.floorPoly, player->actor.floorBgId);
        if ((floorType != FLOOR_TYPE_4) && (floorType != FLOOR_TYPE_7) && (floorType != FLOOR_TYPE_12)) {
            this->numLeeverSpawns = 0;
        } else if (!(this->reduceLeevers && (this->actor.xzDistToPlayer > 1300.0f))) {
            spawnLimit = 5;
            if (this->reduceLeevers) {
                spawnLimit = 3;
            }
            while ((this->curNumSpawn < this->maxCurSpawns) && (this->curNumSpawn < spawnLimit) && (this->timer == 0)) {
                spawnDist = sLeeverDists[this->leeverIndex];
                spawnAngle = sLeeverAngles[this->leeverIndex] + player->actor.shape.rot.y;
                spawnParams = LEEVER_TYPE_SMALL;

                if ((this->killCount >= 10) && (this->bigLeever == NULL)) {
                    this->killCount = this->numLeeverSpawns = 0;
                    spawnAngle = sLeeverAngles[0];
                    spawnDist = sLeeverDists[2];
                    spawnParams = LEEVER_TYPE_BIG;
                }

                spawnPos.x = player->actor.world.pos.x + Math_SinS(spawnAngle) * spawnDist;
                spawnPos.y = player->actor.floorHeight + 120.0f;
                spawnPos.z = player->actor.world.pos.z + Math_CosS(spawnAngle) * spawnDist;

                floorY = BgCheck_EntityRaycastDown4(&play->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= BGCHECK_Y_MIN) {
                    break;
                }
                spawnPos.y = floorY;

                leever = (EnReeba*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_REEBA, spawnPos.x,
                                                      spawnPos.y, spawnPos.z, 0, 0, 0, spawnParams);

                if (1) {}
                if (1) {}
                if (leever != NULL) {
                    this->curNumSpawn++;
                    leever->aimType = this->leeverIndex++;
                    if (this->leeverIndex >= 5) {
                        this->leeverIndex = 0;
                    }
                    this->numLeeverSpawns++;
                    if (this->numLeeverSpawns >= 12) {
                        this->timer = 150;
                        this->numLeeverSpawns = 0;
                    }
                    if (spawnParams != LEEVER_TYPE_SMALL) {
                        this->timer = 300;
                        this->bigLeever = leever;
                    }
                    if (!this->reduceLeevers) {
                        this->maxCurSpawns = (s16)Rand_ZeroFloat(3.99f) + 2;
                    } else {
                        this->maxCurSpawns = (s16)Rand_ZeroFloat(2.99f) + 1;
                    }
                } else {
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                    break;
                }
            }
        }
    }
}

void EnEncount1_SpawnTektites(EnEncount1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 bgId;
    CollisionPoly* floorPoly;
    Vec3f spawnPos;
    f32 floorY;

    if (this->timer == 0) {
        this->timer = 10;
        if ((fabsf(player->actor.world.pos.y - this->actor.world.pos.y) > 100.0f) ||
            (this->actor.xzDistToPlayer > this->spawnRange)) {
            this->outOfRangeTimer++;
        } else {
            this->outOfRangeTimer = 0;
            if ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
                spawnPos.x = this->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                spawnPos.y = this->actor.world.pos.y + 120.0f;
                spawnPos.z = this->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                floorY = BgCheck_EntityRaycastDown4(&play->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= BGCHECK_Y_MIN) {
                    return;
                }
                spawnPos.y = floorY;
                if (Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_TITE, spawnPos.x, spawnPos.y,
                                       spawnPos.z, 0, 0, 0, TEKTITE_RED) != NULL) {
                    this->curNumSpawn++;
                    this->totalNumSpawn++;
                } else {
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                }
            }
        }
    }
}

void EnEncount1_SpawnStalchildOrWolfos(EnEncount1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 spawnDist;
    s16 spawnAngle;
    s16 spawnId;
    s16 spawnParams;
    s16 kcOver10;
    s16 tempmod;
    Vec3f spawnPos;
    CollisionPoly* floorPoly;
    s32 bgId;
    f32 floorY;

    if (play->sceneId != SCENE_HYRULE_FIELD) {
        if ((fabsf(player->actor.world.pos.y - this->actor.world.pos.y) > 100.0f) ||
            (this->actor.xzDistToPlayer > this->spawnRange)) {
            this->outOfRangeTimer++;
            return;
        }
    } else if (IS_DAY || (Player_GetMask(play) == PLAYER_MASK_BUNNY)) {
        this->killCount = 0;
        return;
    }

    this->outOfRangeTimer = 0;
    spawnPos = this->actor.world.pos;
    if ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
        while ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
            if (play->sceneId == SCENE_HYRULE_FIELD) {
                if ((player->floorSfxOffset == SURFACE_SFX_OFFSET_DIRT) || (player->actor.floorBgId != BGCHECK_SCENE) ||
                    !(player->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (player->stateFlags1 & PLAYER_STATE1_27)) {

                    this->fieldSpawnTimer = 60;
                    break;
                }
                if (this->fieldSpawnTimer == 60) {
                    this->maxCurSpawns = 2;
                }
                if (this->fieldSpawnTimer != 0) {
                    this->fieldSpawnTimer--;
                    break;
                }

                spawnDist = Rand_CenteredFloat(40.0f) + 200.0f;
                spawnAngle = player->actor.shape.rot.y;
                if (this->curNumSpawn != 0) {
                    spawnAngle = -spawnAngle;
                    spawnDist = Rand_CenteredFloat(40.0f) + 100.0f;
                }
                spawnPos.x =
                    player->actor.world.pos.x + (Math_SinS(spawnAngle) * spawnDist) + Rand_CenteredFloat(40.0f);
                spawnPos.y = player->actor.floorHeight + 120.0f;
                spawnPos.z =
                    player->actor.world.pos.z + (Math_CosS(spawnAngle) * spawnDist) + Rand_CenteredFloat(40.0f);
                floorY = BgCheck_EntityRaycastDown4(&play->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= BGCHECK_Y_MIN) {
                    break;
                }
                if ((player->actor.depthInWater != BGCHECK_Y_MIN) &&
                    (floorY < (player->actor.world.pos.y - player->actor.depthInWater))) {
                    break;
                }
                spawnPos.y = floorY;
            }
            if (this->spawnType == SPAWNER_WOLFOS) {
                spawnId = ACTOR_EN_WF;
                spawnParams = (0xFF << 8) | 0x00;
            } else {
                spawnId = ACTOR_EN_SKB;
                spawnParams = 0;

                kcOver10 = this->killCount / 10;
                if (kcOver10 > 0) {
                    tempmod = this->killCount % 10;
                    if (tempmod == 0) {
                        spawnParams = kcOver10 * 5;
                    }
                }
                this->killCount++;
            }
            if (Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, spawnId, spawnPos.x, spawnPos.y, spawnPos.z, 0,
                                   0, 0, spawnParams) != NULL) {
                this->curNumSpawn++;
                if (this->curNumSpawn >= this->maxCurSpawns) {
                    this->fieldSpawnTimer = 100;
                }
                if (play->sceneId != SCENE_HYRULE_FIELD) {
                    this->totalNumSpawn++;
                }
            } else {
                PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n", "☆☆☆☆☆ Cannot spawn! ☆☆☆☆☆\n") VT_RST);
                break;
            }
        }
    }
}

void EnEncount1_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnEncount1* this = (EnEncount1*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }

    this->updateFunc(this, play);

    if (DEBUG_FEATURES && BREG(0) != 0) {
        if (this->outOfRangeTimer != 0) {
            if ((this->outOfRangeTimer & 1) == 0) {
                DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                       this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                       1.0f, 1.0f, 120, 120, 120, 255, 4, play->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                   this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                   1.0f, 1.0f, 255, 0, 255, 255, 4, play->state.gfxCtx);
        }
    }
}
