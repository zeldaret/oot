/*
 * File: z_en_oe2.c
 * Overlay: ovl_En_Oe2
 * Description: Blue Navi Target Spot
 */

#include "z_en_oe2.h"

void EnOE2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnOE2_DoNothing(EnOE2* this, GlobalContext* globalCtx);

// clang-format off
const ActorInit En_OE2_InitVars = {
    ACTOR_EN_OE2,
    ACTORCAT_NPC,
    ACTOR_FLAG_0 | ACTOR_FLAG_3,
    OBJECT_OE2,
    sizeof(EnOE2),
    (ActorFunc)EnOE2_Init,
    (ActorFunc)EnOE2_Destroy,
    (ActorFunc)EnOE2_Update,
    (ActorFunc)EnOE2_Draw,
};
// clang-format on

void EnOE2_SetupAction(EnOE2* this, EnOE2ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnOE2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOE2* this = (EnOE2*)thisx;

    EnOE2_SetupAction(this, EnOE2_DoNothing);
}

void EnOE2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnOE2_DoNothing(EnOE2* this, GlobalContext* globalCtx) {
}

void EnOE2_Update(Actor* thisx, GlobalContext* globalCtx) {
}

void EnOE2_Draw(Actor* thisx, GlobalContext* globalCtx) {
}
