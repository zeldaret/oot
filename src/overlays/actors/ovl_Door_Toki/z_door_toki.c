/*
 * File: z_door_toki.c
 * Overlay: ovl_Door_Toki
 * Description: Manages collision for the Door of Time.
 */

#include "z_door_toki.h"

#define FLAGS 0x00000000

void DoorToki_Init(DoorToki* this, GlobalContext* globalCtx);
void DoorToki_Destroy(DoorToki* this, GlobalContext* globalCtx);
void DoorToki_Update(DoorToki* this, GlobalContext* globalCtx);

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

// This has to be defined in the linker to produce a proper lui addiu pair
extern u32 DOOR_TOKI_COLLISION_DATA;

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void DoorToki_Init(DoorToki* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 sp1C = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 0);
    DynaPolyInfo_Alloc(&DOOR_TOKI_COLLISION_DATA, &sp1C);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp1C);
}

void DoorToki_Destroy(DoorToki* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

void DoorToki_Update(DoorToki* this, GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[4] & 0x800) {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
    } else {
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
    }
}
