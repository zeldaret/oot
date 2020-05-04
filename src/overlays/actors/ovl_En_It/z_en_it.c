/*
 * File: z_en_it.c
 * Overlay: ovl_En_It
 * Description: Dampe's Minigame digging spot hitboxes
 */

#include "z_en_it.h"

#define FLAGS 0x00000000

#define THIS ((EnIt*)thisx)

void EnIt_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIt_Update(Actor* thisx, GlobalContext* globalCtx);

static ColliderCylinderInit cylinderInitData = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x05, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 10, 0, { 0 } },
};

static CollisionCheckInfoInit2 colChkInfoInit = {
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

void EnIt_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIt* this = THIS;

    this->actor.params = 0x0D05;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInitData);
    func_80061EFC(&this->actor.colChkInfo, 0, &colChkInfoInit); // Init Damage Chart
}

void EnIt_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIt* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnIt_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIt* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}
