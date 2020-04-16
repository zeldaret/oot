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
    { 0x0A, 0x00, 0x00, 0x05, 0x10, 0x01, },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00, }, 0x00, 0x00, 0x01 },
    { 0x0028, 0x000A, 0x0000, {0} },
};

static SubActor98Init_2 subActor98Init = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
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
    CollisionCheck_AllocCylinder(globalCtx, &it->cylinderCollider);
    ActorCollider_InitCylinder(globalCtx, &it->cylinderCollider, &it->actor, &cylinderInitData);
    func_80061EFC(&it->actor.sub_98, 0, &subActor98Init); // Init Damage Chart
}

void EnIt_Destroy(EnIt* this, GlobalContext* globalCtx) {
    EnIt* it = this;

    ActorCollider_FreeCylinder(globalCtx, &it->cylinderCollider);
}

void EnIt_Update(EnIt* this, GlobalContext* globalCtx) {
    s32 pad;
    EnIt* it = this;

    ActorCollider_Cylinder_Update(&it->actor, &it->cylinderCollider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->collisionCheckCtx, &it->cylinderCollider);
}
