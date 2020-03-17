/*
 * File: z_en_arow_trap.c
 * Overlay: ovl_En_Arow_Trap
 * Description: An unused trap that reflects arrows.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32   unk_14C;
    /* 0x0150 */ u32   attackTimer;
} ActorEnArowTrap; // size = 0x0154

#define ROOM  0x00
#define FLAGS 0x00000010

static void Init(ActorEnArowTrap* this, GlobalContext* globalCtx);
static void Destroy(ActorEnArowTrap* this, GlobalContext* globalCtx);
static void Update(ActorEnArowTrap* this, GlobalContext* globalCtx);

const ActorInit En_Arow_Trap_InitVars =
{
    ACTOR_EN_AROW_TRAP,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorEnArowTrap),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    NULL
};

static void Init(ActorEnArowTrap* this, GlobalContext* globalCtx)
{
    Actor_SetScale(&this->actor, 0.01);
    this->unk_14C = 0;
    this->attackTimer = 80;
    this->actor.posRot2.pos = this->actor.posRot.pos;
}

static void Destroy(ActorEnArowTrap* this, GlobalContext* globalCtx)
{
}

static void Update(ActorEnArowTrap* this, GlobalContext* globalCtx)
{
    if (this->actor.xzDistanceFromLink <= 400)
    {
        this->attackTimer--;

        if (this->attackTimer == 0)
        {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ARROW,
                        this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                        this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z,
                        0xFFFFFFFF);
            this->attackTimer = 80;
        }
    }
}
