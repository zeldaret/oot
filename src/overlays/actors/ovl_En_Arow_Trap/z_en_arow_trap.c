/*
 * File: z_en_arow_trap.c
 * Overlay: ovl_En_Arow_Trap
 * Description: An unused trap that reflects arrows.
 */

#include "z_en_arow_trap.h"
#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"
#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnArowTrap_Init(Actor* thisx, PlayState* play);
void EnArowTrap_Destroy(Actor* thisx, PlayState* play);
void EnArowTrap_Update(Actor* thisx, PlayState* play);

ActorProfile En_Arow_Trap_Profile = {
    /**/ ACTOR_EN_AROW_TRAP,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnArowTrap),
    /**/ EnArowTrap_Init,
    /**/ EnArowTrap_Destroy,
    /**/ EnArowTrap_Update,
    /**/ NULL,
};

void EnArowTrap_Init(Actor* thisx, PlayState* play) {
    EnArowTrap* this = (EnArowTrap*)thisx;

    Actor_SetScale(&this->actor, 0.01);
    this->unk_14C = 0;
    this->attackTimer = 80;
    this->actor.focus.pos = this->actor.world.pos;
}

void EnArowTrap_Destroy(Actor* thisx, PlayState* play) {
}

void EnArowTrap_Update(Actor* thisx, PlayState* play) {
    EnArowTrap* this = (EnArowTrap*)thisx;

    if (this->actor.xzDistToPlayer <= 400) {
        this->attackTimer--;

        if (this->attackTimer == 0) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ARROW, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y,
                        this->actor.shape.rot.z, ARROW_NORMAL_SILENT);
            this->attackTimer = 80;
        }
    }
}
