/*
 * File: z_bg_menkuri_nisekabe.c
 * Overlay: ovl_Bg_Menkuri_Nisekabe
 * Description: False Stone Walls (Gerudo Training Grounds)
*/

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
} BgMenkuriNisekabe; // size = 0x014C

#define ROOM  0x00
#define FLAGS 0x00000000

static void Init(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
static void Destroy(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
static void Update(BgMenkuriNisekabe* this, GlobalContext* globalCtx);
static void Draw(BgMenkuriNisekabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Nisekabe_InitVars =
{
    ACTOR_BG_MENKURI_NISEKABE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriNisekabe),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static u32 segmentAddr[] =
{
    0x06002280,
    0x06002BC0
};

static void Init(BgMenkuriNisekabe* this, GlobalContext* globalCtx)
{
    Actor_SetScale(&this->actor, 0.1f);
}

static void Destroy(BgMenkuriNisekabe* this,GlobalContext* globalCtx)
{
  
}

static void Update(BgMenkuriNisekabe* this, GlobalContext* globalCtx)
{
    if (globalCtx->actorCtx.unk_03 != 0)
    {
        this->actor.flags |= 0x80;
    }
    else
    {
        this->actor.flags &= ~0x80;
    }
}

static void Draw(BgMenkuriNisekabe* this, GlobalContext* globalCtx)
{
    u32 index = this->actor.params & 0xFF;

    if ((this->actor.flags & 0x80) == 0x80)
    {
        Draw_DListXlu(globalCtx, segmentAddr[index]);
    }
    else
    {
        Draw_DListOpa(globalCtx, segmentAddr[index]);
    }
}
