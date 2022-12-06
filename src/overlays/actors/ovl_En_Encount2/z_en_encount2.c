#include "z_en_encount2.h"
#include "overlays/actors/ovl_En_Fire_Rock/z_en_fire_rock.h"
#include "quake.h"
#include "terminal.h"
#include "assets/objects/object_efc_star_field/object_efc_star_field.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

typedef enum {
    /* 0x0 */ ENCOUNT2_INACTIVE,
    /* 0x1 */ ENCOUNT2_ACTIVE_DEATH_MOUNTAIN,
    /* 0x2 */ ENCOUNT2_ACTIVE_GANONS_TOWER
} Encount2State;

void EnEncount2_Init(Actor* thisx, PlayState* play);
void EnEncount2_Update(Actor* thisx, PlayState* play2);
void EnEncount2_Draw(Actor* thisx, PlayState* play);

void EnEncount2_Wait(EnEncount2* this, PlayState* play);
void EnEncount2_SpawnRocks(EnEncount2* this, PlayState* play);

void EnEncount2_SpawnEffect(EnEncount2* this, Vec3f* position, f32 scale);
void EnEncount2_DrawEffects(Actor* thisx, PlayState* play);
void EnEncount2_UpdateEffects(EnEncount2* this, PlayState* play);

ActorInit En_Encount2_InitVars = {
    ACTOR_EN_ENCOUNT2,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnEncount2),
    (ActorFunc)EnEncount2_Init,
    NULL,
    (ActorFunc)EnEncount2_Update,
    (ActorFunc)EnEncount2_Draw,
};

void EnEncount2_Init(Actor* thisx, PlayState* play) {
    EnEncount2* this = (EnEncount2*)thisx;

    if (play->sceneId != SCENE_DEATH_MOUNTAIN_TRAIL) {
        this->isNotDeathMountain = true;
    }

    if (!this->isNotDeathMountain) {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Death Mountain Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デスマウンテンエンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST,
                     this->actor.params);
        if (LINK_IS_ADULT && GET_EVENTCHKINF(EVENTCHKINF_49)) { // flag for having used fire temple blue warp
            Actor_Kill(thisx);
        }
    } else {
        osSyncPrintf("\n\n");
        // "☆☆☆☆☆ Ganon Tower Escape Encount2 set ☆☆☆☆☆"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ガノンタワー脱出エンカウント２セットされました ☆☆☆☆☆ %d\n" VT_RST,
                     this->actor.params);
    }

    this->actionFunc = EnEncount2_Wait;
}

void EnEncount2_Wait(EnEncount2* this, PlayState* play) {
    s32 pad;
    s16 quakeIndex;
    s16 spawnerState;
    Player* player = GET_PLAYER(play);

    spawnerState = ENCOUNT2_INACTIVE;
    if (!this->isNotDeathMountain) {
        if ((player->actor.world.pos.y > 1500.0f) && (player->actor.world.pos.x > -700.0f) &&
            (player->actor.world.pos.x < 100.0f) && (player->actor.world.pos.z < -1290.0f) &&
            (player->actor.world.pos.z > -3600.0f)) {
            spawnerState = ENCOUNT2_ACTIVE_DEATH_MOUNTAIN;
        }
    } else if ((this->actor.xzDistToPlayer < 700.0f) && (Flags_GetSwitch(play, 0x37))) {
        s16 sceneId = play->sceneId;

        if (((sceneId == SCENE_GANON_BOSS) || (sceneId == SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR) ||
             (sceneId == SCENE_GANONS_TOWER_COLLAPSE_INTERIOR) || (sceneId == SCENE_INSIDE_GANONS_CASTLE_COLLAPSE)) &&
            (!this->collapseSpawnerInactive)) {
            spawnerState = ENCOUNT2_ACTIVE_GANONS_TOWER;
        }
    }

    switch (spawnerState) {
        case ENCOUNT2_INACTIVE:
            this->isQuaking = false;
            this->envEffectsTimer--;
            if (this->envEffectsTimer <= 0) {
                this->envEffectsTimer = 0;
            }
            break;
        case ENCOUNT2_ACTIVE_DEATH_MOUNTAIN:
            if ((this->deathMountainSpawnerTimer == 1) || !this->isQuaking) {
                quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_1);
                Quake_SetSpeed(quakeIndex, 0x7FFF);
                Quake_SetPerturbations(quakeIndex, 50, 0, 0, 0);
                Quake_SetDuration(quakeIndex, 300);
                this->isQuaking = true;
            }
            FALLTHROUGH;
        case ENCOUNT2_ACTIVE_GANONS_TOWER:
            this->envEffectsTimer++;
            if (this->envEffectsTimer > 60) {
                this->envEffectsTimer = 60;
            }
            if (this->deathMountainSpawnerTimer == 0) {
                this->deathMountainSpawnerTimer = 200;
                this->numSpawnedRocks = 0;
                this->actionFunc = EnEncount2_SpawnRocks;
            }
            break;
    }
}

void EnEncount2_SpawnRocks(EnEncount2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    EnFireRock* spawnedRock;
    f32 tempVec1X;
    f32 tempVec1Y;
    f32 tempVec1Z;
    f32 magnitude;
    f32 tempVec2X;
    f32 tempVec2Y;
    f32 tempVec2Z;
    f32 effectScale;
    Vec3f effectPos;
    s16 spawnedRockType;
    s16 spawnerState;
    s16 maxRocks;

    this->envEffectsTimer++;

    if (this->envEffectsTimer > 60) {
        this->envEffectsTimer = 60;
    }

    spawnerState = ENCOUNT2_INACTIVE;

    if (!this->isNotDeathMountain) {
        if (this->deathMountainSpawnerTimer == 0) {
            this->deathMountainSpawnerTimer = 100;
            this->actionFunc = EnEncount2_Wait;
            return;
        }

        if ((player->actor.world.pos.y > 1500.0f) && (player->actor.world.pos.x > -700.0f) &&
            (player->actor.world.pos.x < 100.0f) && (player->actor.world.pos.z < -1290.0f) &&
            (player->actor.world.pos.z > -3860.0f)) {
            maxRocks = 2;
            spawnerState = ENCOUNT2_ACTIVE_DEATH_MOUNTAIN;
        }

        Audio_PlayActorSfx2(&this->actor, NA_SE_EV_VOLCANO - SFX_FLAG);
    } else if ((this->actor.xzDistToPlayer < 700.0f) && (Flags_GetSwitch(play, 0x37) != 0)) {
        s16 sceneId = play->sceneId;

        if (((sceneId == SCENE_GANON_BOSS) || (sceneId == SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR) ||
             (sceneId == SCENE_GANONS_TOWER_COLLAPSE_INTERIOR) || (sceneId == SCENE_INSIDE_GANONS_CASTLE_COLLAPSE)) &&
            (!this->collapseSpawnerInactive)) {
            maxRocks = 1;
            spawnerState = ENCOUNT2_ACTIVE_GANONS_TOWER;
        }
    }
    if (spawnerState != ENCOUNT2_INACTIVE) {
        // Direction vector for the direction the camera is facing
        tempVec1X = play->view.at.x - play->view.eye.x;
        tempVec1Y = play->view.at.y - play->view.eye.y;
        tempVec1Z = play->view.at.z - play->view.eye.z;

        // Normalised direction vector for the direction the camera is facing
        magnitude = sqrtf(SQ(tempVec1X) + SQ(tempVec1Y) + SQ(tempVec1Z));
        tempVec2X = tempVec1X / magnitude;
        tempVec2Y = tempVec1Y / magnitude;
        tempVec2Z = tempVec1Z / magnitude;

        // Position between 160 and 300 units ahead of camera depending on camera pitch, plus a 400 unit offset in +y
        tempVec1X = play->view.eye.x + (tempVec2X * 300.0f);
        tempVec1Y = play->view.eye.y + (tempVec2Y * 160.0f) + 400.0f;
        tempVec1Z = play->view.eye.z + (tempVec2Z * 300.0f);

        // Position between 160 and 200 units ahead of camera depending on camera pitch, plus a 400 unit offset in +y
        // (plus some random variation)
        effectPos.x = Rand_CenteredFloat(200.0f) + (play->view.eye.x + (tempVec2X * 200.0f));
        effectPos.y = Rand_CenteredFloat(50.0f) + tempVec1Y;
        effectPos.z = Rand_CenteredFloat(200.0f) + (play->view.eye.z + (tempVec2Z * 200.0f));
        effectScale = Rand_CenteredFloat(0.005f) + 0.007f;

        if (spawnerState == ENCOUNT2_ACTIVE_DEATH_MOUNTAIN) {
            EnEncount2_SpawnEffect(this, &effectPos, effectScale);
        } else if (this->effectSpawnTimer == 0) {
            EnEncount2_SpawnEffect(this, &effectPos, effectScale);
            this->effectSpawnTimer = 5;
        }

        if ((this->numSpawnedRocks < maxRocks) && (this->timerBetweenRockSpawns == 0)) {
            if (spawnerState == ENCOUNT2_ACTIVE_DEATH_MOUNTAIN) {
                this->timerBetweenRockSpawns = 4;
                spawnedRockType = FIRE_ROCK_SPAWNED_FALLING1;
                if ((Rand_ZeroFloat(1.99f) < 1.0f) && !LINK_IS_ADULT) {
                    // rock spawn pos X, Z near player
                    tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.world.pos.x;
                    tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.world.pos.z;
                } else {
                    if (player->linearVelocity != 0.0f) {
                        // rock spawn pos is between 300 and 600 units from the camera depending on the camera yaw.
                        // Rocks will generally spawn closer to the camera in the X axis than in the Z axis.
                        tempVec2X = Rand_CenteredFloat(200.0f) + (play->view.eye.x + (tempVec2X * 300.0f));
                        tempVec2Z = Rand_CenteredFloat(50.0f) + (play->view.eye.z + (tempVec2Z * 600.0f));
                    } else {
                        // rock spawn pos X, Z near player
                        tempVec2X = Rand_CenteredFloat(10.0f) + player->actor.world.pos.x;
                        tempVec2Z = Rand_CenteredFloat(10.0f) + player->actor.world.pos.z;
                    }
                    spawnedRockType = FIRE_ROCK_SPAWNED_FALLING2;
                }
            } else {
                this->timerBetweenRockSpawns = 50;
                spawnedRockType = FIRE_ROCK_SPAWNED_FALLING2;
                // rock spawn pos X,Z at a random position roughly 300 units ahead of camera
                tempVec2X = Rand_CenteredFloat(100.0f) + tempVec1X;
                tempVec2Z = Rand_CenteredFloat(100.0f) + tempVec1Z;

                if (Rand_ZeroFloat(3.99f) < 1.0f) {
                    // rock spawn pos X,Z at a random position near player
                    tempVec2X = Rand_CenteredFloat(70.0f) + player->actor.world.pos.x;
                    tempVec2Z = Rand_CenteredFloat(70.0f) + player->actor.world.pos.z;
                }
            }
            spawnedRock = (EnFireRock*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_FIRE_ROCK,
                                                          tempVec2X, tempVec1Y, tempVec2Z, 0, 0, 0, spawnedRockType);
            if (spawnedRock != NULL) {
                spawnedRock->spawner = this;
                this->numSpawnedRocks++;
                return;
            }
            // "☆☆☆☆☆ Can't occur! ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\n" VT_RST);
        }
    }
}

void EnEncount2_Update(Actor* thisx, PlayState* play2) {
    EnEncount2* this = (EnEncount2*)thisx;
    PlayState* play = play2;

    if (this->deathMountainSpawnerTimer != 0) {
        this->deathMountainSpawnerTimer--;
    }

    if (this->timerBetweenRockSpawns != 0) {
        this->timerBetweenRockSpawns--;
    }

    if (this->effectSpawnTimer != 0) {
        this->effectSpawnTimer--;
    }

    this->actionFunc(this, play);

    EnEncount2_UpdateEffects(this, play);

    if (!this->isNotDeathMountain) {
        this->unk_17C = this->envEffectsTimer / 60.0f;
        this->unk_160 = this->unk_17C * -50.0f;
        play->envCtx.adjAmbientColor[0] = (s16)this->unk_160 * -1.5f;
        play->envCtx.adjAmbientColor[1] = play->envCtx.adjAmbientColor[2] = this->unk_160;
        this->unk_168 = this->unk_17C * -20.0f;
        play->envCtx.adjLight1Color[0] = (s16)this->unk_168 * -1.5f;
        play->envCtx.adjLight1Color[1] = play->envCtx.adjLight1Color[2] = this->unk_168;
        this->unk_170 = this->unk_17C * -50.0f;
        play->envCtx.adjFogNear = this->unk_170;
        play->envCtx.adjFogColor[0] = (u8)((160.0f - play->envCtx.lightSettings.fogColor[0]) * this->unk_17C);
        play->envCtx.adjFogColor[1] = (u8)((160.0f - play->envCtx.lightSettings.fogColor[1]) * this->unk_17C);
        play->envCtx.adjFogColor[2] = (u8)((150.0f - play->envCtx.lightSettings.fogColor[2]) * this->unk_17C);
    }
}

void EnEncount2_Draw(Actor* thisx, PlayState* play) {
    EnEncount2* this = (EnEncount2*)thisx;

    EnEncount2_DrawEffects(&this->actor, play);
}

void EnEncount2_SpawnEffect(EnEncount2* this, Vec3f* position, f32 scale) {
    EnEncount2Effect* effect = this->effects;
    s16 i;

    for (i = 0; i < EN_ENCOUNT2_EFFECT_COUNT; i++, effect++) {
        if (!effect->isAlive) {
            effect->pos = *position;
            effect->scale = scale;
            effect->rot.x = 0.0f;
            effect->rot.y = 0.0f;
            effect->rot.z = 0.0f;
            effect->moveDirection.x = Rand_CenteredFloat(20.0f);
            effect->moveDirection.y = -20.0f;
            effect->moveDirection.z = Rand_CenteredFloat(20.0f);
            effect->isAlive = 1;
            break;
        }
    }
}

void EnEncount2_UpdateEffects(EnEncount2* this, PlayState* play) {
    s16 i;
    EnEncount2Effect* effect = this->effects;
    Player* player = GET_PLAYER(play);
    Vec3f targetPos;

    for (i = 0; i < EN_ENCOUNT2_EFFECT_COUNT; effect++, i++) {
        if (effect->isAlive) {
            effect->rot.x += Rand_ZeroOne() * 500.0f;
            effect->rot.y += Rand_ZeroOne() * 500.0f;
            effect->rot.z += Rand_ZeroOne() * 500.0f;
            targetPos.x = effect->pos.x + effect->moveDirection.x;
            targetPos.y = effect->pos.y + effect->moveDirection.y;
            targetPos.z = effect->pos.z + effect->moveDirection.z;
            Math_ApproachF(&effect->pos.x, targetPos.x, 0.3f, 30.0f);
            Math_ApproachF(&effect->pos.y, targetPos.y, 0.8f, 250.0f);
            Math_ApproachF(&effect->pos.z, targetPos.z, 0.3f, 30.0f);
            Math_ApproachF(&effect->moveDirection.y, -20.0f, 0.9f, 1.0f);

            if (play->sceneId != SCENE_DEATH_MOUNTAIN_TRAIL) {
                if (effect->pos.y < (player->actor.floorHeight - 50.0f)) {
                    effect->isAlive = 0;
                }
            } else if (effect->pos.y < 1500.0f) {
                effect->isAlive = 0;
            }
        }
    }
}

void EnEncount2_DrawEffects(Actor* thisx, PlayState* play) {
    EnEncount2* this = (EnEncount2*)thisx;
    EnEncount2Effect* effect = this->effects;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s16 i;
    s32 objBankIndex;

    OPEN_DISPS(gfxCtx, "../z_en_encount2.c", 642);

    objBankIndex = Object_GetIndex(&play->objectCtx, OBJECT_EFC_STAR_FIELD);

    if (objBankIndex >= 0) {
        gDPPipeSync(POLY_XLU_DISP++);
        gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.status[objBankIndex].segment);

        for (i = 0; i < EN_ENCOUNT2_EFFECT_COUNT; effect++, i++) {
            if (effect->isAlive) {
                Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
                Matrix_RotateX(DEG_TO_RAD(effect->rot.x), MTXMODE_APPLY);
                Matrix_RotateY(DEG_TO_RAD(effect->rot.y), MTXMODE_APPLY);
                Matrix_RotateZ(DEG_TO_RAD(effect->rot.z), MTXMODE_APPLY);
                Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 155, 55, 255);
                gDPSetEnvColor(POLY_OPA_DISP++, 155, 255, 55, 255);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_encount2.c", 669),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, object_efc_star_field_DL_000DE0);
            }
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_encount2.c", 678);
}
