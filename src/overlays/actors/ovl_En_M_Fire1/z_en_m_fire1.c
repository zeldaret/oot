/*
 * File: z_en_m_fire1.c
 * Overlay: ovl_En_M_Fire1
 * Description: The attack from a Deku Nut. Spawned by ovl_En_Arrow.
 */

#include "z_en_m_fire1.h"

#define FLAGS 0x00000000

#define THIS ((EnMFire1*)thisx)

void EnMFire1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMFire1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMFire1_Update(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_M_Fire1_InitVars = {
    ACTOR_EN_M_FIRE1,
    ACTORTYPE_MISC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnMFire1),
    (ActorFunc)EnMFire1_Init,
    (ActorFunc)EnMFire1_Destroy,
    (ActorFunc)EnMFire1_Update,
    NULL,
};

static ColliderCylinderInit cylinderInitData = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x08, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000001, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
    { 200, 200, 0, { 0 } }
};

void EnMFire1_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMFire1* this = THIS;
    s32 pad;

    if (this->actor.params < 0) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ITEMACTION);
    }

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInitData);
}

void EnMFire1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMFire1* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnMFire1_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMFire1* this = THIS;
    s32 pad;

    if (Math_ApproxF(&this->unk_198, 1.0f, 0.2f)) {
        Actor_Kill(&this->actor);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}
