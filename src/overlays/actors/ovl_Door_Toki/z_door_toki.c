/*
 * File: z_door_toki.c
 * Overlay: ovl_Door_Toki
 * Description: Manages collision for the Door of Time.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32   dynaPolyId;
    /* 0x0150 */ u8    unk_150[0x18];
} ActorDoorToki; // size = 0x0168

#define ROOM  0x00
#define FLAGS 0x00000000

static void Init(ActorDoorToki* this, GlobalContext* globalCtx);
static void Destroy(ActorDoorToki* this, GlobalContext* globalCtx);
static void Update(ActorDoorToki* this, GlobalContext* globalCtx);

const ActorInit Door_Toki_InitVars =
{
    ACTOR_DOOR_TOKI,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(ActorDoorToki),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    NULL
};

// This has to be defined in the linker to produce a proper lui addiu pair
extern u32 DOOR_TOKI_COLLISION_DATA;

static InitChainEntry initChain[] =
{
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP)
};

static void Init(ActorDoorToki* this, GlobalContext* globalCtx)
{
    s32 pad[2];
    u32 sp1C = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 0);
    DynaPolyInfo_Alloc(&DOOR_TOKI_COLLISION_DATA, &sp1C);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp1C);
}

static void Destroy(ActorDoorToki* this, GlobalContext* globalCtx)
{
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void Update(ActorDoorToki* this, GlobalContext* globalCtx)
{
    if (gSaveContext.event_chk_inf[4] & 0x800)
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
    else
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}
