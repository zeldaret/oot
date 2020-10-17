#include "z_en_encount1.h"
#include "overlays/actors/ovl_En_Reeba/z_en_reeba.h"
#include "vt.h"

#define FLAGS 0x08000010

#define THIS ((EnEncount1*)thisx)

void EnEncount1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEncount1_Update(Actor* thisx, GlobalContext* globalCtx);

void EnEncount1_SpawnLeevers(EnEncount1* this, GlobalContext* globalCtx);
void EnEncount1_SpawnTektites(EnEncount1* this, GlobalContext* globalCtx);
void EnEncount1_SpawnStalchildOrWolfos(EnEncount1* this, GlobalContext* globalCtx);

s16 sLeeverAngle[] = { 0x0000, 0x2710, 0x7148, 0x8EB8, 0xD8F0 };
f32 sLeeverDist[] = { 200.0f, 170.0f, 120.0f, 120.0f, 170.0f };

const ActorInit En_Encount1_InitVars = {
    ACTOR_EN_ENCOUNT1,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnEncount1),
    (ActorFunc)EnEncount1_Init,
    NULL,
    (ActorFunc)EnEncount1_Update,
    NULL,
};

void EnEncount1_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnEncount1* this = THIS;
    f32 temp;

    if (this->actor.params <= 0) {
        osSyncPrintf("\n\n");
        // Input error death!
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n" VT_RST);
        osSyncPrintf("\n\n");
        Actor_Kill(&this->actor);
        return;
    }

    this->spawnType = (this->actor.params >> 0xB) & 0x1F;
    this->maxCurSpawns = (this->actor.params >> 6) & 0x1F;
    this->maxTotalSpawns = this->actor.params & 0x3F;
    this->curNumSpawn = this->totalNumSpawn = 0;
    temp = 120.0f + (40.0f * this->actor.posRot.rot.z);
    this->spawnRange = temp;

    osSyncPrintf("\n\n");
    // It's an enemy spawner!
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 敵発生ゾーンでた！ ☆☆☆☆☆ %x\n" VT_RST, this->actor.params);
    // Type
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 種類\t\t   ☆☆☆☆☆ %d\n" VT_RST, this->spawnType);
    // Maximum number of simultaneous spawns
    osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 最大同時発生数     ☆☆☆☆☆ %d\n" VT_RST, this->maxCurSpawns);
    // Maximum number of spawns
    osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 最大発生数  \t   ☆☆☆☆☆ %d\n" VT_RST, this->maxTotalSpawns);
    // Spawn check range
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生チェック範囲   ☆☆☆☆☆ %f\n" VT_RST, this->spawnRange);
    osSyncPrintf("\n\n");

    this->actor.flags &= ~1;
    switch (this->spawnType) {
        case SPAWNER_LEEVER:
            this->timer = 30;
            this->maxCurSpawns = 5;
            if (globalCtx->sceneNum == SCENE_SPOT13) { // Haunted Wasteland
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
            if (globalCtx->sceneNum == SCENE_SPOT00) { // Hyrule Field
                this->maxTotalSpawns = 10000;
            }
            this->updateFunc = EnEncount1_SpawnStalchildOrWolfos;
            break;
    }
}

void EnEncount1_SpawnLeevers(EnEncount1* this, GlobalContext* globalCtx) {
    s32 floorType;
    f32 floorY;
    f32 spawnDist;
    s32 spawnParam;
    s16 spawnLimit;
    s16 spawnAngle;
    Vec3f spawnPos;
    CollisionPoly* floorPoly;
    s32* bgId;
    EnReeba* leever;
    Player* player = PLAYER;

    this->outOfRangeTimer = 0;
    spawnPos = this->actor.posRot.pos;

    if ((this->timer == 0) && (globalCtx->csCtx.state == 0) && (this->curNumSpawn <= this->maxCurSpawns) &&
        (this->curNumSpawn < 5)) {
        floorType = func_80041D4C(&globalCtx->colCtx, player->actor.floorPoly, player->actor.floorPolySource);
        if ((floorType != 4) && (floorType != 7) && (floorType != 12)) {
            this->numLeeverSpawns = 0;
        } else if (!(this->reduceLeevers && (this->actor.xzDistFromLink > 1300.0f))) {
            spawnLimit = 5;
            if (this->reduceLeevers) {
                spawnLimit = 3;
            }
            while ((this->curNumSpawn < this->maxCurSpawns) && (this->curNumSpawn < spawnLimit) && (this->timer == 0)) {
                spawnDist = sLeeverDist[this->leeverIndex];
                spawnAngle = sLeeverAngle[this->leeverIndex] + player->actor.shape.rot.y;
                spawnParam = LEEVER_SMALL;

                if ((this->killCount >= 10) && (this->bigLeever == NULL)) {
                    this->killCount = this->numLeeverSpawns = 0;
                    spawnAngle = sLeeverAngle[0];
                    spawnDist = sLeeverDist[2];
                    spawnParam = LEEVER_BIG;
                }

                spawnPos.x = player->actor.posRot.pos.x + Math_Sins(spawnAngle) * spawnDist;
                spawnPos.y = player->actor.groundY + 120.0f;
                spawnPos.z = player->actor.posRot.pos.z + Math_Coss(spawnAngle) * spawnDist;

                floorY = func_8003C9A4(&globalCtx->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= -32000.0f) {
                    return;
                }
                spawnPos.y = floorY;

                leever = (EnReeba*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_REEBA,
                                                      spawnPos.x, spawnPos.y, spawnPos.z, 0, 0, 0, spawnParam);
                if (1) {}
                if (1) {}
                if (leever != NULL) {
                    this->curNumSpawn++;
                    leever->unk_280 = this->leeverIndex++;
                    if (this->leeverIndex >= 5) {
                        this->leeverIndex = 0;
                    }
                    this->numLeeverSpawns++;
                    if (this->numLeeverSpawns >= 12) {
                        this->timer = 150;
                        this->numLeeverSpawns = 0;
                    }
                    if (spawnParam != LEEVER_SMALL) {
                        this->timer = 300;
                        this->bigLeever = leever;
                    }
                    if (!this->reduceLeevers) {
                        this->maxCurSpawns = (s16)Math_Rand_ZeroFloat(3.99f) + 2;
                    } else {
                        this->maxCurSpawns = (s16)Math_Rand_ZeroFloat(2.99f) + 1;
                    }
                } else {
                    // Cannot spawn!
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                    return;
                }
            }
        }
    }
}

void EnEncount1_SpawnTektites(EnEncount1* this, GlobalContext* globalCtx) {
    f32 floorY;
    s32* bgId;
    CollisionPoly* floorPoly;
    Vec3f spawnPos;
    Player* player = PLAYER;

    if (this->timer == 0) {
        this->timer = 10;
        if ((fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) > 100.0f) ||
            (this->actor.xzDistFromLink > this->spawnRange)) {
            this->outOfRangeTimer++;
        } else {
            this->outOfRangeTimer = 0;
            if ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
                spawnPos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(50.0f);
                spawnPos.y = this->actor.posRot.pos.y + 120.0f;
                spawnPos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(50.0f);
                floorY = func_8003C9A4(&globalCtx->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= -32000.0f) {
                    return;
                }
                spawnPos.y = floorY;
                if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_TITE, spawnPos.x,
                                       spawnPos.y, spawnPos.z, 0, 0, 0, -1) != NULL) { // Red tektite
                    this->curNumSpawn++;
                    this->totalNumSpawn++;
                } else {
                    // Cannot spawn!
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                }
            }
        }
    }
}

void EnEncount1_SpawnStalchildOrWolfos(EnEncount1* this, GlobalContext* globalCtx) {
    s16 spawnAngle;
    f32 spawnDist;
    f32 floorY;
    s16 spawnId;
    s16 kcOver10;
    s16 spawnParam;
    s16 tempmod;
    Vec3f spawnPos;
    CollisionPoly* floorPoly;
    s32* bgId;
    Player* player = PLAYER;

    if (globalCtx->sceneNum != SCENE_SPOT00) {
        if ((fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) > 100.0f) ||
            (this->actor.xzDistFromLink > this->spawnRange)) {
            this->outOfRangeTimer++;
            return;
        }
    } else if (!gSaveContext.nightFlag || (Player_GetMask(globalCtx) == 4)) {
        this->killCount = 0;
        return;
    }

    this->outOfRangeTimer = 0;
    spawnPos = this->actor.posRot.pos;
    if ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
        while ((this->curNumSpawn < this->maxCurSpawns) && (this->totalNumSpawn < this->maxTotalSpawns)) {
            if (globalCtx->sceneNum == SCENE_SPOT00) {
                if ((player->unk_89E == 0) || (player->actor.floorPolySource != 0x32) ||
                    !(player->actor.bgCheckFlags & 1) || (player->stateFlags1 & 0x08000000)) {

                    this->fieldSpawnTimer = 60;
                    return;
                }
                if (this->fieldSpawnTimer == 60) {
                    this->maxCurSpawns = 2;
                }
                if (this->fieldSpawnTimer != 0) {
                    this->fieldSpawnTimer--;
                    return;
                }

                spawnDist = Math_Rand_CenteredFloat(40.0f) + 200.0f;
                spawnAngle = player->actor.shape.rot.y;
                if (this->curNumSpawn != 0) {
                    spawnAngle = -spawnAngle;
                    spawnDist = Math_Rand_CenteredFloat(40.0f) + 100.0f;
                }
                spawnPos.x =
                    player->actor.posRot.pos.x + (Math_Sins(spawnAngle) * spawnDist) + Math_Rand_CenteredFloat(40.0f);
                spawnPos.y = player->actor.groundY + 120.0f;
                spawnPos.z =
                    player->actor.posRot.pos.z + (Math_Coss(spawnAngle) * spawnDist) + Math_Rand_CenteredFloat(40.0f);
                floorY = func_8003C9A4(&globalCtx->colCtx, &floorPoly, &bgId, &this->actor, &spawnPos);
                if (floorY <= -32000.0f) {
                    return;
                }
                if ((player->actor.waterY != -32000.0f) &&
                    (floorY < (player->actor.posRot.pos.y - player->actor.waterY))) {
                    return;
                }
                spawnPos.y = floorY;
            }
            if (this->spawnType == SPAWNER_WOLFOS) {
                spawnId = ACTOR_EN_WF;
                spawnParam = (0xFF << 8) | 0x00;
            } else {
                spawnId = ACTOR_EN_SKB;
                kcOver10 = this->killCount / 10;
                spawnParam = 0;
                if (kcOver10 > 0) {
                    tempmod = (this->killCount % 10);
                    if (tempmod == 0) {
                        spawnParam = kcOver10 * 5;
                    }
                }
                this->killCount++;
            }
            if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, spawnId, spawnPos.x, spawnPos.y,
                                   spawnPos.z, 0, 0, 0, spawnParam) != NULL) {
                this->curNumSpawn++;
                if (this->curNumSpawn >= this->maxCurSpawns) {
                    this->fieldSpawnTimer = 100;
                }
                if (globalCtx->sceneNum != SCENE_SPOT00) {
                    this->totalNumSpawn++;
                }
            } else {
                // Cannot spawn!
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n" VT_RST);
                return;
            }
        }
    }
}

void EnEncount1_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnEncount1* this = THIS;

    DECR(this->timer);

    this->updateFunc(this, globalCtx);

    if (BREG(0) != 0) {
        if (this->outOfRangeTimer != 0) {
            if ((this->outOfRangeTimer & 1) == 0) {
                DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                       this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                       1.0f, 1.0f, 1.0f, 120, 120, 120, 255, 4, globalCtx->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                   this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f,
                                   1.0f, 1.0f, 255, 0, 255, 255, 4, globalCtx->state.gfxCtx);
        }
    }
}
