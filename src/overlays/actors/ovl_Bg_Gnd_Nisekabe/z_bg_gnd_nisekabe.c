/*
 * File: z_bg_gnd_nisekabe.c
 * Overlay: ovl_Bg_Gnd_Nisekabe
 * Description: 2D Stone Wall
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
} ActorGndNisekabe; // size = 0x014C

#define ROOM  0x00
#define FLAGS 0x00000010

static void Init(ActorGndNisekabe* this, GlobalContext* globalCtx);
static void Destroy(ActorGndNisekabe* this, GlobalContext* globalCtx);
static void Update(ActorGndNisekabe* this, GlobalContext* globalCtx);
static void Draw(ActorGndNisekabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Gnd_Nisekabe_InitVars =
{
    ACTOR_BG_GND_NISEKABE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(ActorGndNisekabe),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static u32 segmentAddr[] =
{
    0x06009230,
    0x0600A390,
    0x0600B4A0
};

static void Init(ActorGndNisekabe* this, GlobalContext* globalCtx)
{
    Actor_SetScale(&this->actor, 0.1);
    this->actor.unk_F4 = 3000.0;
}

static void Destroy(ActorGndNisekabe* this, GlobalContext* globalCtx)
{
}

static void Update(ActorGndNisekabe* this, GlobalContext* globalCtx)
{
    if (globalCtx->actorCtx.unk_03 != 0)
    {
        this->actor.flags |= 0x80;
    }
    else
    {
        this->actor.flags &= 0xFFFFFF7F;
    }
}

static void Draw(ActorGndNisekabe* this, GlobalContext* globalCtx)
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
