/*
 * File: z_shot_sun.c
 * Overlay: ovl_Shot_Sun
 * Description: Lake Hylia Sun hitbox and Song of Storms Fairy spawner
 */

#include "z_shot_sun.h"
#include <vt.h>

#define FLAGS 0x00000009

#define THIS ((ShotSun*)thisx)

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx);

void ShotSun_SpawnFairy(ShotSun* this, GlobalContext* globalCtx);
void ShotSun_TriggerFairy(ShotSun* this, GlobalContext* globalCtx);
void func_80BADF0C(ShotSun* this, GlobalContext* globalCtx);
void ShotSun_UpdateHyliaSun(ShotSun* this, GlobalContext* globalCtx);

extern CutsceneData D_02007020[];

const ActorInit Shot_Sun_InitVars = {
    ACTOR_SHOT_SUN,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ShotSun),
    (ActorFunc)ShotSun_Init,
    (ActorFunc)ShotSun_Destroy,
    (ActorFunc)ShotSun_Update,
    NULL,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000020, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 60, 0, { 0, 0, 0 } },
};

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    s32 params;

    // Translation: Ocarina secret occurrence
    osSyncPrintf("%d ---- オカリナの秘密発生!!!!!!!!!!!!!\n", this->actor.params);
    params = this->actor.params & 0xFF;
    if (params == 0x40 || params == 0x41) {
        this->unk_1A4 = 0;
        this->actor.flags |= 0x10;
        this->actor.flags |= 0x2000000;
        this->actionFunc = func_80BADF0C;
        this->actor.flags |= 0x8000000;
    } else {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        this->actionFunc = ShotSun_UpdateHyliaSun;
        this->actor.flags &= ~1;
    }
}

void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    s32 params = this->actor.params & 0xFF;

    if (params != 0x40 && params != 0x41) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void ShotSun_SpawnFairy(ShotSun* this, GlobalContext* globalCtx) {
    s32 params = this->actor.params & 0xFF;
    s32 fairyParams;

    if (this->timer > 0) {
        this->timer--;
        return;
    }

    switch (params) {
        case 0x40:
            fairyParams = 7;
            break;
        case 0x41:
            fairyParams = 7;
            break;
    }

    // UB: fairyParams may be uninitialized
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, this->actor.initPosRot.pos.x,
                this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0, 0, 0, fairyParams);

    Actor_Kill(&this->actor);
}

void ShotSun_TriggerFairy(ShotSun* this, GlobalContext* globalCtx) {
    if ((func_8005B198() == this->actor.type) || (this->timer != 0)) {
        this->actionFunc = ShotSun_SpawnFairy;
        this->timer = 50;

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO, this->actor.initPosRot.pos.x,
                    this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0, 0, 0, 0x11);

        func_80078914(&this->actor.projectedPos, NA_SE_EV_TRE_BOX_APPEAR);
    }
}

void func_80BADF0C(ShotSun* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s32 params = this->actor.params & 0xFF;

    if (Math3D_Vec3fDistSq(&this->actor.posRot.pos, &player->actor.posRot.pos) > 22500.0f) {
        this->unk_1A4 = 0;
    } else {
        if (this->unk_1A4 == 0) {
            if (!(player->stateFlags2 & 0x1000000)) {
                player->stateFlags2 |= 0x800000;
                return;
            } else {
                this->unk_1A4 = 1;
            }
        }
        if (this->unk_1A4 == 1) {
            func_8010BD58(globalCtx, 1);
            this->unk_1A4 = 2;
            return;
        }

        if (this->unk_1A4 == 2 && globalCtx->msgCtx.unk_E3EE == 4) {
            if ((params == 0x40 && globalCtx->msgCtx.unk_E3EC == 9) ||
                (params == 0x41 && globalCtx->msgCtx.unk_E3EC == 0xB)) {
                this->actionFunc = ShotSun_TriggerFairy;
                func_80080480(globalCtx, this);
                this->timer = 0;
            } else {
                this->unk_1A4 = 0;
            }
            this->unk_1A4 = 0;
        }
    }
}

void ShotSun_UpdateHyliaSun(ShotSun* this, GlobalContext* globalCtx) {
    Vec3s cylinderPos;
    Player* player = PLAYER;
    EnItem00* collectible;
    s32 pad;
    Vec3f spawnPos;

    if (this->collider.base.acFlags & 2) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        osSyncPrintf(VT_FGCOL(CYAN) "SHOT_SUN HIT!!!!!!!\n" VT_RST);
        if (INV_CONTENT(SLOT_ARROW_FIRE) == ITEM_NONE) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, 700.0f, -800.0f, 7261.0f, 0, 0, 0, 7);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02007020);
            if (1) {}
            gSaveContext.cutsceneTrigger = 1;
        } else {
            spawnPos.x = 700.0f;
            spawnPos.y = -800.0f;
            spawnPos.z = 7261.0f;

            collectible = Item_DropCollectible(globalCtx, &spawnPos, ITEM00_MAGIC_LARGE);
            if (collectible != NULL) {
                collectible->unk_15A = 6000;
                collectible->actor.speedXZ = 0.0f;
            }
        }
        Actor_Kill(&this->actor);
    } else {
        if (!(120.0f < this->actor.xzDistFromLink) && gSaveContext.dayTime >= 0x4555 && gSaveContext.dayTime < 0x5000) {
            cylinderPos.x = player->bodyPartsPos[7].x + globalCtx->envCtx.unk_04.x * 0.16666667f;
            cylinderPos.y = player->bodyPartsPos[7].y - 30.0f + globalCtx->envCtx.unk_04.y * 0.16666667f;
            cylinderPos.z = player->bodyPartsPos[7].z + globalCtx->envCtx.unk_04.z * 0.16666667f;

            this->hitboxPos = cylinderPos;

            func_80062718(&this->collider, &cylinderPos);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    this->actionFunc(this, globalCtx);
}
