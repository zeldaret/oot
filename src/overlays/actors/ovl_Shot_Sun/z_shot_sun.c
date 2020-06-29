/*
 * File: z_shot_sun.c
 * Overlay: ovl_Shot_Sun
 * Description: Song of Storms Fairy and Sun at Lake Hylia
 */

#include "z_shot_sun.h"

#define FLAGS 0x00000009

#define THIS ((ShotSun*)thisx)

void ShotSun_Init(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80BADDCC(ShotSun* this, GlobalContext* globalCtx);
void func_80BADE74(ShotSun* this, GlobalContext* globalCtx);
void func_80BADF0C(ShotSun* this, GlobalContext* globalCtx);
void func_80BAE05C(ShotSun* this, GlobalContext* globalCtx);

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
    if (func_8005B198() == this->actor.type || this->spawnTimer != 0) {
        this->actionFunc = &func_80BADDCC;
        this->spawnTimer = 50;

        Actor_Spawn(
            &globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO,
            this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
            0, 0, 0,
            0x11
        );

        func_80078914(&this->actor.projectedPos, 0x287B);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADF0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BAE05C.s")

void ShotSun_Update(Actor* thisx, GlobalContext* globalCtx) {
    ShotSun* this = THIS;
    this->actionFunc(this, globalCtx);
}
