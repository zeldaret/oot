/*
 * File: z_en_vase.c
 * Overlay: ovl_En_Vase
 * Description: An unused, orange pot based on ALTTP. Lacks collision.
 */

#include "z_en_vase.h"
#include "assets/objects/object_vase/object_vase.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnVase_Init(Actor* thisx, PlayState* play);
void EnVase_Destroy(Actor* thisx, PlayState* play);
void EnVase_Draw(Actor* thisx, PlayState* play);

ActorProfile En_Vase_Profile = {
    /**/ ACTOR_EN_VASE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_VASE,
    /**/ sizeof(EnVase),
    /**/ EnVase_Init,
    /**/ EnVase_Destroy,
    /**/ Actor_Noop,
    /**/ EnVase_Draw,
};

void EnVase_Init(Actor* thisx, PlayState* play) {
    EnVase* this = (EnVase*)thisx;

    Actor_SetScale(&this->actor, 0.01f);
    this->actor.focus.pos = this->actor.world.pos;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 6.0f);
}

void EnVase_Destroy(Actor* thisx, PlayState* play) {
}

void EnVase_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gUnusedVaseDL);
}
