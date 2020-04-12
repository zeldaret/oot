/*
 * File: z_en_oe2.c
 * Overlay: ovl_En_Oe2
 * Description: Blue Navi Target. Probably unused since NPC's are blue and they do not use this actor.
 */

#include "z_en_oe2.h"

#define FLAGS 0x00000009

void func_80ABE6A0(EnOE2* this, ActorFunc func);
void EnOE2_Init(EnOE2* this, GlobalContext* globalCtx);
void EnOE2_Destroy(EnOE2* this, GlobalContext* globalCtx);
void func_80ABE6DC(EnOE2* this, GlobalContext* globalCtx);
void EnOE2_Update(EnOE2* this, GlobalContext* globalCtx);
void EnOE2_Draw(EnOE2* this, GlobalContext* globalCtx);

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

void EnOE2_SetupAction(EnOE2* this, ActorFunc actionFunc) {
    this->updateFunc = actionFunc;
}

void EnOE2_Init(EnOE2* this, GlobalContext* globalCtx) {
    EnOE2_SetupAction(this, func_80ABE6DC);
}

void EnOE2_Destroy(EnOE2* this, GlobalContext* globalCtx) {
}

void func_80ABE6DC(EnOE2* this, GlobalContext* globalCtx) {
}

void EnOE2_Update(EnOE2* this, GlobalContext* globalCtx) {
}

void EnOE2_Draw(EnOE2* this, GlobalContext* globalCtx) {
}
