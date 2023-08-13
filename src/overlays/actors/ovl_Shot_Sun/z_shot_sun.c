/*
 * File: z_shot_sun.c
 * Overlay: ovl_Shot_Sun
 * Description: Lake Hylia Sun hitbox and Song of Storms Fairy spawner
 */

#include "z_shot_sun.h"
#include "overlays/actors/ovl_Demo_Kankyo/z_demo_kankyo.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"
#include "assets/scenes/overworld/spot06/spot06_scene.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3)

void ShotSun_Init(Actor* thisx, PlayState* play);
void ShotSun_Destroy(Actor* thisx, PlayState* play);
void ShotSun_Update(Actor* thisx, PlayState* play);

void ShotSun_SpawnFairy(ShotSun* this, PlayState* play);
void ShotSun_TriggerFairy(ShotSun* this, PlayState* play);
void ShotSun_UpdateFairySpawner(ShotSun* this, PlayState* play);
void ShotSun_UpdateHyliaSun(ShotSun* this, PlayState* play);

ActorInit Shot_Sun_InitVars = {
    ACTOR_SHOT_SUN,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ShotSun),
    (ActorFunc)ShotSun_Init,
    (ActorFunc)ShotSun_Destroy,
    (ActorFunc)ShotSun_Update,
    NULL,
};

typedef enum {
    /* 0 */ SPAWNER_OUT_OF_RANGE,
    /* 1 */ SPAWNER_OCARINA_START,
    /* 2 */ SPAWNER_OCARINA_PLAYING
} FairySpawnerState;

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000020, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 60, 0, { 0, 0, 0 } },
};

void ShotSun_Init(Actor* thisx, PlayState* play) {
    ShotSun* this = (ShotSun*)thisx;
    s32 params;

    // "Ocarina secret occurrence"
    osSyncPrintf("%d ---- オカリナの秘密発生!!!!!!!!!!!!!\n", this->actor.params);
    params = this->actor.params & 0xFF;
    if (params == 0x40 || params == 0x41) {
        this->fairySpawnerState = SPAWNER_OUT_OF_RANGE;
        this->actor.flags |= ACTOR_FLAG_4;
        this->actor.flags |= ACTOR_FLAG_25;
        this->actionFunc = ShotSun_UpdateFairySpawner;
        this->actor.flags |= ACTOR_FLAG_27;
    } else {
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        this->actionFunc = ShotSun_UpdateHyliaSun;
        this->actor.flags &= ~ACTOR_FLAG_0;
    }
}

void ShotSun_Destroy(Actor* thisx, PlayState* play) {
    ShotSun* this = (ShotSun*)thisx;
    s32 params = this->actor.params & 0xFF;

    if (params != 0x40 && params != 0x41) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

void ShotSun_SpawnFairy(ShotSun* this, PlayState* play) {
    s32 params = this->actor.params & 0xFF;
    s32 fairyType;

    if (this->timer > 0) {
        this->timer--;
    } else {
        switch (params) {
            case 0x40:
                fairyType = FAIRY_HEAL_BIG;
                break;
            case 0x41:
                fairyType = FAIRY_HEAL_BIG;
                break;
        }

        //! @bug fairyType may be uninitialized
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ELF, this->actor.home.pos.x, this->actor.home.pos.y,
                    this->actor.home.pos.z, 0, 0, 0, fairyType);

        Actor_Kill(&this->actor);
    }
}

void ShotSun_TriggerFairy(ShotSun* this, PlayState* play) {
    if ((func_8005B198() == this->actor.category) || (this->timer != 0)) {
        this->actionFunc = ShotSun_SpawnFairy;
        this->timer = 50;

        Actor_Spawn(&play->actorCtx, play, ACTOR_DEMO_KANKYO, this->actor.home.pos.x, this->actor.home.pos.y,
                    this->actor.home.pos.z, 0, 0, 0, DEMOKANKYO_SPARKLES);

        Sfx_PlaySfxAtPos(&this->actor.projectedPos, NA_SE_EV_TRE_BOX_APPEAR);
    }
}

void ShotSun_UpdateFairySpawner(ShotSun* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;
    s32 params = this->actor.params & 0xFF;

    if (Math3D_Vec3fDistSq(&this->actor.world.pos, &player->actor.world.pos) > SQ(150.0f)) {
        this->fairySpawnerState = SPAWNER_OUT_OF_RANGE;
    } else {
        if (this->fairySpawnerState == SPAWNER_OUT_OF_RANGE) {
            if (!(player->stateFlags2 & PLAYER_STATE2_24)) {
                player->stateFlags2 |= PLAYER_STATE2_23;
                return;
            } else {
                this->fairySpawnerState = SPAWNER_OCARINA_START;
            }
        }
        if (this->fairySpawnerState == SPAWNER_OCARINA_START) {
            Message_StartOcarina(play, OCARINA_ACTION_FREE_PLAY);
            this->fairySpawnerState = SPAWNER_OCARINA_PLAYING;
        } else if (this->fairySpawnerState == SPAWNER_OCARINA_PLAYING && play->msgCtx.ocarinaMode == OCARINA_MODE_04) {
            if ((params == 0x40 && play->msgCtx.lastPlayedSong == OCARINA_SONG_SUNS) ||
                (params == 0x41 && play->msgCtx.lastPlayedSong == OCARINA_SONG_STORMS)) {
                this->actionFunc = ShotSun_TriggerFairy;
                OnePointCutscene_Attention(play, &this->actor);
                this->timer = 0;
            } else {
                this->fairySpawnerState = SPAWNER_OUT_OF_RANGE;
            }
            this->fairySpawnerState = SPAWNER_OUT_OF_RANGE;
        }
    }
}

void ShotSun_UpdateHyliaSun(ShotSun* this, PlayState* play) {
    Vec3s cylinderPos;
    Player* player = GET_PLAYER(play);
    EnItem00* collectible;
    s32 pad;
    Vec3f spawnPos;

    if (this->collider.base.acFlags & AC_HIT) {
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        osSyncPrintf(VT_FGCOL(CYAN) "SHOT_SUN HIT!!!!!!!\n" VT_RST);
        if (INV_CONTENT(ITEM_ARROW_FIRE) == ITEM_NONE) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_ETCETERA, 700.0f, -800.0f, 7261.0f, 0, 0, 0, 7);
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gLakeHyliaFireArrowsCS);
            if (1) {}
            gSaveContext.cutsceneTrigger = 1;
        } else {
            spawnPos.x = 700.0f;
            spawnPos.y = -800.0f;
            spawnPos.z = 7261.0f;

            collectible = Item_DropCollectible(play, &spawnPos, ITEM00_MAGIC_LARGE);
            if (collectible != NULL) {
                collectible->despawnTimer = 6000;
                collectible->actor.speed = 0.0f;
            }
        }
        Actor_Kill(&this->actor);
    } else {
        if (!(this->actor.xzDistToPlayer > 120.0f) && gSaveContext.save.dayTime >= CLOCK_TIME(6, 30) &&
            gSaveContext.save.dayTime < CLOCK_TIME(7, 30)) {
            cylinderPos.x = player->bodyPartsPos[PLAYER_BODYPART_HEAD].x + play->envCtx.sunPos.x * (1.0f / 6.0f);
            cylinderPos.y =
                player->bodyPartsPos[PLAYER_BODYPART_HEAD].y - 30.0f + play->envCtx.sunPos.y * (1.0f / 6.0f);
            cylinderPos.z = player->bodyPartsPos[PLAYER_BODYPART_HEAD].z + play->envCtx.sunPos.z * (1.0f / 6.0f);

            this->hitboxPos = cylinderPos;

            Collider_SetCylinderPosition(&this->collider, &cylinderPos);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
    }
}

void ShotSun_Update(Actor* thisx, PlayState* play) {
    ShotSun* this = (ShotSun*)thisx;

    this->actionFunc(this, play);
}
