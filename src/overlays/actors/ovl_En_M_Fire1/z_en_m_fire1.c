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
    0x0A, 0x09, 0x00,       0x00, 0x08, 0x01, 0x00, 0x00, 0x02,   0x00,   0x00,   0x00,   0x00000001, 0x00,   0x00,
    0x00, 0x00, 0xFFCFFFFF, 0x00, 0x00, 0x00, 0x00, 0x19, 0x0000, 0x0000, 0x0000, 0x00C8, 0x00C8,     0x0000,
};

void EnMFire1_Init(EnMFire1* this, GlobalContext* globalCtx) {
    s32 pad;
    EnMFire1* thisLocal;

    thisLocal = this;

    if (this->actor.params < 0) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &thisLocal->actor, ACTORTYPE_ITEMACTION);
    }

    ActorCollider_AllocCylinder(globalCtx, &thisLocal->capsule);
    ActorCollider_InitCylinder(globalCtx, &thisLocal->capsule, &thisLocal->actor, &cylinderInitData);
}

void EnMFire1_Destroy(EnMFire1* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* capsule = &this->capsule;
    ActorCollider_FreeCylinder(globalCtx, capsule);
}

void EnMFire1_Update(EnMFire1* this, GlobalContext* globalCtx) {
    s32 pad;
    EnMFire1* thisLocal = this;

    if (Math_ApproxF(&thisLocal->unk_0198, 1.0, 0.2)) {
        Actor_Kill(&this->actor);
    } else {
        ActorCollider_Cylinder_Update(&thisLocal->actor, &thisLocal->capsule);
        Actor_CollisionCheck_SetAT(globalCtx, &globalCtx->sub_11E60, &thisLocal->capsule);
    }
}
