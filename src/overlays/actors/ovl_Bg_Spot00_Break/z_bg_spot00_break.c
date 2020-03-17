/*
 * File: z_bg_spot00_break.c
 * Overlay: ovl_Bg_Spot00_Break
 * Description: Broken drawbridge in Hyrule Field.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32   dynaPolyId;
    /* 0x0150 */ char  unk_150[0x14];
} ActorSpot00Break; // size = 0x0164

#define ROOM  0x00
#define FLAGS 0x00000000

static void Init(ActorSpot00Break* this, GlobalContext* globalCtx);
static void Destroy(ActorSpot00Break* this, GlobalContext* globalCtx);
static void Update(ActorSpot00Break* this, GlobalContext* globalCtx);
static void Draw(ActorSpot00Break* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot00_Break_InitVars =
{
    ACTOR_BG_SPOT00_BREAK,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SPOT00_BREAK,
    sizeof(ActorSpot00Break),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static InitChainEntry initChain[] =
{
    ICHAIN_F32(unk_F8, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP)
};

extern D_06000AF0; //segmented address: 0x06000AF0
extern D_06000908; //segmented address: 0x06000908
extern D_06000980; //segmented address: 0x06000980
extern D_06000440; //segmented address: 0x06000440

static void Init(ActorSpot00Break* this, GlobalContext* globalCtx)
{
    s32 pad[2];
    u32 local_c = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 0);

    if (this->actor.params == 1)
    {
        DynaPolyInfo_Alloc(&D_06000AF0, &local_c);
    }
    else
    {
        DynaPolyInfo_Alloc(&D_06000908, &local_c);
    }

    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);

    if (LINK_IS_CHILD)
    {
        Actor_Kill(&this->actor);
    }
}

static void Destroy(ActorSpot00Break* this, GlobalContext* globalCtx)
{
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void Update(ActorSpot00Break* this, GlobalContext* globalCtx)
{

}

static void Draw(ActorSpot00Break* this, GlobalContext* globalCtx)
{
    if (this->actor.params == 1)
    {
        Draw_DListOpa(globalCtx, &D_06000980);
    }
    else
    {
        Draw_DListOpa(globalCtx, &D_06000440);
    }
}
