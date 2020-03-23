/*
 * File: z_en_it.c
 * Overlay: ovl_En_It
 * Description: Dampe's Minigame digging spot hitboxes
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 unk_14C;
    /* 0x0150 */ ColliderCylinderMain cylinderCollider;
} ActorIt; // size = 0x019C

#define ROOM 0x00
#define FLAGS 0x00000000

static void Init(ActorIt* this, GlobalContext* globalCtx);
static void Destroy(ActorIt* this, GlobalContext* globalCtx);
static void Update(ActorIt* this, GlobalContext* globalCtx);

static ColliderCylinderInit cylinderInitData = {
    0x0A, 0x00, 0x00,       0x05, 0x10, 0x01, 0x00, 0x00, 0x00,   0x00,   0x00,   0x00,   0x00000000, 0x00,   0x00,
    0x00, 0x00, 0x00000000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0000, 0x0001, 0x0000, 0x0028, 0x000A,     0x0000,
};

static u8 damageTblInitData[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,
};

const ActorInit En_It_InitVars = {
    ACTOR_EN_IT,     ACTORTYPE_PROP,       ROOM,
    FLAGS,           OBJECT_GAMEPLAY_KEEP, sizeof(ActorIt),
    (ActorFunc)Init, (ActorFunc)Destroy,   (ActorFunc)Update,
    (ActorFunc)NULL,
};

static void Init(ActorIt* this, GlobalContext* globalCtx) {
    ActorIt* it = this;

    it->actor.params = 0x0D05;
    ActorCollider_AllocCylinder(globalCtx, &it->cylinderCollider);
    ActorCollider_InitCylinder(globalCtx, &it->cylinderCollider, &it->actor, &cylinderInitData);
    func_80061EFC(&it->actor.sub_98.damageChart, 0, &damageTblInitData); // Init Damage Chart
}

static void Destroy(ActorIt* this, GlobalContext* globalCtx) {
    ActorIt* it = this;

    ActorCollider_FreeCylinder(globalCtx, &it->cylinderCollider);
}

static void Update(ActorIt* this, GlobalContext* globalCtx) {
    s32 pad;
    ActorIt* it = this;

    ActorCollider_Cylinder_Update(&it->actor, &it->cylinderCollider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &it->cylinderCollider);
}
