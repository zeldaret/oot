/*
 * File: z_en_m_fire1.c
 * Overlay: ovl_En_M_Fire1
 * Description: The attack from a Deku Nut. Spawned by ovl_En_Arrow.
 */

#include "z_en_m_fire1.h"

#define FLAGS 0x00000000

void EnMFire1_Init(EnMFire1* this, GlobalContext* globalCtx);
void EnMFire1_Destroy(EnMFire1* this, GlobalContext* globalCtx);
void EnMFire1_Update(EnMFire1* this, GlobalContext* globalCtx);

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

void EnMFire1_Init(EnMFire1* this, GlobalContext* globalCtx) {
    s32 pad;
    EnMFire1* thisLocal;

    thisLocal = this;

    if (this->actor.params < 0) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &thisLocal->actor, ACTORTYPE_ITEMACTION);
    }

    Collider_InitCylinder(globalCtx, &thisLocal->capsule);
    Collider_SetCylinder(globalCtx, &thisLocal->capsule, &thisLocal->actor, &cylinderInitData);
}

void EnMFire1_Destroy(EnMFire1* this, GlobalContext* globalCtx) {
    ColliderCylinder* capsule = &this->capsule;
    Collider_DestroyCylinder(globalCtx, capsule);
}

void EnMFire1_Update(EnMFire1* this, GlobalContext* globalCtx) {
    s32 pad;
    EnMFire1* thisLocal = this;

    if (Math_ApproxF(&thisLocal->unk_0198, 1.0, 0.2)) {
        Actor_Kill(&this->actor);
    } else {
        Collider_CylinderUpdate(&thisLocal->actor, &thisLocal->capsule);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &thisLocal->capsule);
    }
}
