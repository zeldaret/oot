/*
 * File: z_en_oe2.c
 * Overlay: ovl_En_Oe2
 * Description: Blue Navi Target. Probably unused since NPC's are blue and they do not use this actor.
 */

#include "z_en_oe2.h"

#define FLAGS 0x00000009

#define THIS ((EnOE2*)thisx)

void EnOE2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOE2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ABE6DC(EnOE2* this, GlobalContext* globalCtx);

const ActorInit En_OE2_InitVars = {
    ACTOR_EN_OE2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OE2,
    sizeof(EnOE2),
    (ActorFunc)EnOE2_Init,
    (ActorFunc)EnOE2_Destroy,
    (ActorFunc)EnOE2_Update,
    (ActorFunc)EnOE2_Draw,
};

void EnOE2_SetupAction(EnOE2* this, EnOE2ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnOE2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOE2* this = THIS;

    EnOE2_SetupAction(this, func_80ABE6DC);
}

void EnOE2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80ABE6DC(EnOE2* this, GlobalContext* globalCtx) {
}

void EnOE2_Update(Actor* thisx, GlobalContext* globalCtx) {
}

void EnOE2_Draw(Actor* thisx, GlobalContext* globalCtx) {
}
