/*
 * File: z_en_arow_trap.c
 * Overlay: ovl_En_Arow_Trap
 * Description: An unused trap that reflects arrows.
 */

#include "z_en_arow_trap.h"

#define FLAGS 0x00000010

void EnArowTrap_Init(EnArowTrap* this, GlobalContext* globalCtx);
void EnArowTrap_Destroy(EnArowTrap* this, GlobalContext* globalCtx);
void EnArowTrap_Update(EnArowTrap* this, GlobalContext* globalCtx);

const ActorInit En_Arow_Trap_InitVars = {
    ACTOR_EN_AROW_TRAP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnArowTrap),
    (ActorFunc)EnArowTrap_Init,
    (ActorFunc)EnArowTrap_Destroy,
    (ActorFunc)EnArowTrap_Update,
    NULL,
};

void EnArowTrap_Init(EnArowTrap* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->actor, 0.01);
    this->unk_14C = 0;
    this->attackTimer = 80;
    this->actor.posRot2.pos = this->actor.posRot.pos;
}

void EnArowTrap_Destroy(EnArowTrap* this, GlobalContext* globalCtx) {
}

void EnArowTrap_Update(EnArowTrap* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistanceFromLink <= 400) {
        this->attackTimer--;

        if (this->attackTimer == 0) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ARROW, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.shape.rot.x,
                        this->actor.shape.rot.y, this->actor.shape.rot.z, 0xFFFFFFFF);
            this->attackTimer = 80;
        }
    }
}
