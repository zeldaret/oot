/*
 * File: z_door_toki.c
 * Overlay: ovl_Door_Toki
 * Description: Door of Time Collision
 */

#include "z_door_toki.h"

#define FLAGS 0x00000000

#define THIS ((DoorToki*)thisx)

void DoorToki_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorToki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorToki_Update(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Door_Toki_InitVars = {
    ACTOR_DOOR_TOKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(DoorToki),
    (ActorFunc)DoorToki_Init,
    (ActorFunc)DoorToki_Destroy,
    (ActorFunc)DoorToki_Update,
    NULL,
};

extern UNK_TYPE D_06007888;

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void DoorToki_Init(Actor* thisx, GlobalContext* globalCtx) {
    DoorToki* this = THIS;
    s32 pad;
    u32 sp1C = 0;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->actor, 0);
    DynaPolyInfo_Alloc(&D_06007888, &sp1C);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp1C);
}

void DoorToki_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DoorToki* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void DoorToki_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorToki* this = THIS;

    if (gSaveContext.eventChkInf[4] & 0x800) {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
    } else {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
    }
}
