/*
 * File: z_shot_sun.c
 * Overlay: ovl_Shot_Sun
 * Description: Song of Storms Fairy spawner and Lake Hylia Sun hitbox
 */

#include "z_shot_sun.h"

#include <vt.h>

// TODO: Remove when `EnItem00` gets moved to a header file
struct EnItem00;

typedef void (*EnItem00ActionFunc)(struct EnItem00*, GlobalContext*);

typedef struct EnItem00 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnItem00ActionFunc actionFunc;
    /* 0x150 */ s16 collectibleFlag;
    /* 0x152 */ s16 unk_152;
    /* 0x154 */ s16 unk_154;
    /* 0x156 */ s16 unk_156;
    /* 0x158 */ s16 unk_158;
    /* 0x15A */ s16 unk_15A;
    /* 0x15C */ f32 unk_15C;
    /* 0x160 */ ColliderCylinder collider;
} EnItem00; // size = 0x1AC

#define FLAGS 0x00000009

#define THIS ((ShotSun*)thisx)

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80BADDCC(ShotSun* this, GlobalContext* globalCtx);
void func_80BADE74(ShotSun* this, GlobalContext* globalCtx);
void func_80BADF0C(ShotSun* this, GlobalContext* globalCtx);
void func_80BAE05C(ShotSun* this, GlobalContext* globalCtx);

extern s32 func_8005B198();
extern void func_80062718(ColliderCylinder* collider, Vec3s* pos);
extern void func_80078884(u16 sfxId);

extern UNK_TYPE D_02007020;

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
    s32 temp_v0;

    // Translation: Ocarina secret occurrence
    osSyncPrintf("%d ---- オカリナの秘密発生!!!!!!!!!!!!!\n", this->actor.params);
    temp_v0 = this->actor.params & 0xFF;
    if (temp_v0 == 0x40 || temp_v0 == 0x41) {
        this->unk_1A4[0] = 0;
        this->actor.flags |= 0x10;
        this->actor.flags |= 0x2000000;
        this->actionFunc = &func_80BADF0C;
        this->actor.flags |= 0x8000000;
    } else {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        this->actionFunc = &func_80BAE05C;
        this->actor.flags &= ~1;
    }
}

void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    s32 temp_v0;

    temp_v0 = this->actor.params & 0xFF;
    if (temp_v0 != 0x40 && temp_v0 != 0x41) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

// Fairy tick, counts down until fairy spawn
void func_80BADDCC(ShotSun* this, GlobalContext* globalCtx) {
    s32 temp_v0 = this->actor.params & 0xFF;
    s32 sp38;

    if (this->spawnTimer > 0) {
        this->spawnTimer -= 1;
        return;
    }

    switch (temp_v0) {
        case 0x40:
            sp38 = 7;
            break;
        case 0x41:
            sp38 = 7;
            break;
    }

    Actor_Spawn(
        &globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF,
        this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
        0, 0, 0,
        sp38
    );

    Actor_Kill(&this->actor);
}

void func_80BADE74(ShotSun* this, GlobalContext* globalCtx) {
    if ((func_8005B198() == this->actor.type) || (this->spawnTimer != 0)) {
        this->actionFunc = &func_80BADDCC;
        this->spawnTimer = 50;

        Actor_Spawn(
            &globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO,
            this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
            0, 0, 0,
            0x11
        );

        func_80078914(&this->actor.projectedPos, NA_SE_EV_TRE_BOX_APPEAR);
    }
}

void func_80BADF0C(ShotSun* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s32 temp_t0 = this->actor.params & 0xFF;

    if (22500.0f < func_800CB650(&this->actor.posRot.pos, &player->actor.posRot.pos)) {
        this->unk_1A4[0] = 0;
    } else {
        if (this->unk_1A4[0] == 0) {
            if (((s32)player->stateFlags2 << 7) >= 0) {
                player->stateFlags2 |= 0x800000;
                return;
            } else {
                this->unk_1A4[0] = 1;
            }
        }
        if (this->unk_1A4[0] == 1) {
            func_8010BD58(globalCtx, 1U);
            this->unk_1A4[0] = 2;
            return;
        }
        
        if (this->unk_1A4[0] == 2 && globalCtx->msgCtx.unk_E3EE == 4) {
            if (((temp_t0 == 0x40) && (*(u16*)(&globalCtx->msgCtx.unk_E3E8[4]) == 9))
                || ((temp_t0 == 0x41) && (*(u16*)(&globalCtx->msgCtx.unk_E3E8[4]) == 0xB))) {
                    this->actionFunc = &func_80BADE74;
                    func_80080480(globalCtx, this);
                    this->spawnTimer = 0;
            } else {
                this->unk_1A4[0] = 0;
            }

            this->unk_1A4[0] = 0;
        }
    }
}

// Runs every frame when Link is near the pedestal in Lake Hylia, sun update
void func_80BAE05C(ShotSun* this, GlobalContext* globalCtx) {
    Vec3s cylinderPos;
    Player* player = PLAYER;
    EnItem00* collectible;
    s32 pad;
    Vec3f spawnPos;

    if ((this->collider.base.acFlags & 2) != 0) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        osSyncPrintf(VT_FGCOL(VT_COLOR_CYAN) "SHOT_SUN HIT!!!!!!!\n" VT_RST);
        if (INV_CONTENT(SLOT_ARROW_FIRE) == ITEM_NONE) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, 700.0f, -800.0f, 7261.0f, 0, 0, 0, 7);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02007020);

            // Maybe something was optimized away?
            if (1) {}

            gSaveContext.cutsceneTrigger = 1;
        } else {
            spawnPos.x = 700.0f;
            spawnPos.y = -800.0f;
            spawnPos.z = 7261.0f;

            collectible = (EnItem00*)Item_DropCollectible(globalCtx, &spawnPos, 0xE);
            if (collectible != NULL) {
                // Maybe length of drop animation?
                collectible->unk_15A = 6000;
                collectible->actor.speedXZ = 0.0f;
            }
        }
        Actor_Kill(&this->actor);
    } else {
        if (!(120.0f < this->actor.xzDistFromLink) && gSaveContext.dayTime >= 0x4555 && gSaveContext.dayTime < 0x5000) {
            cylinderPos.x = *(f32*)(&player->unk_908[0x54]) + globalCtx->envCtx.unk_04.x * 0.16666667f;
            cylinderPos.y = *(f32*)(&player->unk_908[0x58]) - 30.0f + globalCtx->envCtx.unk_04.y * 0.16666667f;
            cylinderPos.z = *(f32*)(&player->unk_908[0x5C]) + globalCtx->envCtx.unk_04.z * 0.16666667f;

            this->unk_19C = cylinderPos;

            func_80062718(&this->collider, &cylinderPos);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    this->actionFunc(this, globalCtx);
}
