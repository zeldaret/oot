/*
 * File: z_en_it.c
 * Overlay: ovl_En_It
 * Description: Dampe's Minigame digging spot hitboxes
 */

#include "z_en_it.h"

#define FLAGS 0x00000000

void EnIt_Init(EnIt* this, GlobalContext* globalCtx);
void EnIt_Destroy(EnIt* this, GlobalContext* globalCtx);
void EnIt_Update(EnIt* this, GlobalContext* globalCtx);

static ColliderCylinderInit cylinderInitData = {
    0x0A, 0x00, 0x00,       0x05, 0x10, 0x01, 0x00, 0x00, 0x00,   0x00,   0x00,   0x00,   0x00000000, 0x00,   0x00,
    0x00, 0x00, 0x00000000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0000, 0x0001, 0x0000, 0x0028, 0x000A,     0x0000,
};

static u8 damageTblInitData[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,
};

const ActorInit En_It_InitVars = {
    ACTOR_EN_IT,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnIt),
    (ActorFunc)EnIt_Init,
    (ActorFunc)EnIt_Destroy,
    (ActorFunc)EnIt_Update,
    (ActorFunc)NULL,
};

void EnIt_Init(EnIt* this, GlobalContext* globalCtx) {
    EnIt* it = this;

    it->actor.params = 0x0D05;
    ActorCollider_AllocCylinder(globalCtx, &it->cylinderCollider);
    ActorCollider_InitCylinder(globalCtx, &it->cylinderCollider, &it->actor, &cylinderInitData);
    func_80061EFC(&it->actor.sub_98.damageChart, 0, &damageTblInitData); // Init Damage Chart
}

void EnIt_Destroy(EnIt* this, GlobalContext* globalCtx) {
    EnIt* it = this;

    ActorCollider_FreeCylinder(globalCtx, &it->cylinderCollider);
}

void EnIt_Update(EnIt* this, GlobalContext* globalCtx) {
    s32 pad;
    EnIt* it = this;

    ActorCollider_Cylinder_Update(&it->actor, &it->cylinderCollider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &it->cylinderCollider);
}
