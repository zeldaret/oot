/*
 * File: z_en_oe2.c
 * Overlay: ovl_En_Oe2
 * Description: Blue Navi Target. Probably unused since NPC's are blue and they do not use this actor.
*/

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct
{
    /* 0x0000 */ Actor       actor;
    /* 0x014C */ char        unk_14C[0x44];
    /* 0x0190 */ ActorFunc   updateFunc;
} ActorEnOE2; // size = 0x0194

#define ROOM  0x00
#define FLAGS 0x00000009

static void func_80ABE6A0(ActorEnOE2* this, ActorFunc func);
static void Init(ActorEnOE2* this, GlobalContext* globalCtx);
static void Destroy(ActorEnOE2* this, GlobalContext* globalCtx);
static void func_80ABE6DC(ActorEnOE2* this, GlobalContext* globalCtx);
static void Update(ActorEnOE2* this, GlobalContext* globalCtx);
static void Draw(ActorEnOE2* this, GlobalContext* globalCtx);

const ActorInit En_OE2_InitVars =
{
    ACTOR_EN_OE2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_OE2,
    sizeof(ActorEnOE2),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw
};

static void func_80ABE6A0(ActorEnOE2* this, ActorFunc func)
{
    this->updateFunc = func;
}

static void Init(ActorEnOE2* this, GlobalContext* globalCtx)
{
    func_80ABE6A0(this, (ActorFunc)func_80ABE6DC);
}

static void Destroy(ActorEnOE2* this, GlobalContext* globalCtx)
{

}

static void func_80ABE6DC(ActorEnOE2* this, GlobalContext* globalCtx)
{

}

static void Update(ActorEnOE2* this, GlobalContext* globalCtx)
{

}

static void Draw(ActorEnOE2* this, GlobalContext* globalCtx)
{

}
