/*
 * File: z_en_m_fire1.c
 * Overlay: ovl_En_M_Fire1
 * Description: The attack from a Deku Nut. Spawned by ovl_En_Arrow.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor                actor;
    /* 0x014C */ ColliderCylinderMain capsule;
    /* 0x0198 */ f32                  unk_0198;
} ActorMFire; // size = 0x019C

#define ROOM  0x00
#define FLAGS 0x00000000

static void Init(ActorMFire* this, GlobalContext* globalCtx);
static void Destroy(ActorMFire* this, GlobalContext* globalCtx);
static void Update(ActorMFire* this, GlobalContext* globalCtx);

const ActorInit En_M_Fire1_InitVars =
{
    ACTOR_EN_M_FIRE1,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorMFire),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    NULL
};

static ColliderCylinderInit cylinderInitData =
{
    0x0A, 0x09, 0x00, 0x00,
    0x08, 0x01, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00,
    0x00000001,
    0x00, 0x00, 0x00, 0x00,
    0xFFCFFFFF,
    0x00, 0x00, 0x00, 0x00,
    0x19, 0x00, 0x00, 0x00,
    0x00C8,
    0x00C8,
    0x00000000000000000000,
};

static void Init(ActorMFire* this, GlobalContext* globalCtx)
{
    s32 pad;
    ActorMFire* thisLocal;

    thisLocal = this;

    if (this->actor.params < 0)
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &thisLocal->actor, ACTORTYPE_ITEMACTION);

    ActorCollider_AllocCylinder(globalCtx, &thisLocal->capsule);
    ActorCollider_InitCylinder(globalCtx, &thisLocal->capsule, &thisLocal->actor, &cylinderInitData);
}

static void Destroy(ActorMFire* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain* capsule = &this->capsule;
    ActorCollider_FreeCylinder(globalCtx, capsule);
}

static void Update(ActorMFire* this, GlobalContext* globalCtx)
{
    s32 pad;
    ActorMFire* thisLocal = this;

    if (Math_ApproxF(&thisLocal->unk_0198, 1.0, 0.2))
    {
        Actor_Kill(&this->actor);
    }
    else
    {
        ActorCollider_Cylinder_Update(&thisLocal->actor, &thisLocal->capsule);
        Actor_CollisionCheck_SetAT(globalCtx, &globalCtx->sub_11E60, &thisLocal->capsule);
    }
}
