/*
 * File: z_item_inbox.c
 * Overlay: ovl_Item_Inbox
 * Description: Zelda's magic to open gates.
 */

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc updateFunc;
} ActorItemInbox; // size = 0x0154

#define ROOM 0x00
#define FLAGS 0x00000009

static void Init(ActorItemInbox* this, GlobalContext* globalCtx);
static void Destroy(ActorItemInbox* this, GlobalContext* globalCtx);
static void func_80B86020(ActorItemInbox* this, GlobalContext* globalCtx);
static void Update(ActorItemInbox* this, GlobalContext* globalCtx);
static void Draw(ActorItemInbox* this, GlobalContext* globalCtx);

const ActorInit Item_Inbox_InitVars = {
    ACTOR_ITEM_INBOX,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ActorItemInbox),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static void Init(ActorItemInbox* this, GlobalContext* globalCtx) {
    this->updateFunc = (ActorFunc)func_80B86020;
    Actor_SetScale(&this->actor, 0.2);
}

static void Destroy(ActorItemInbox* this, GlobalContext* globalCtx) {
}

static void func_80B86020(ActorItemInbox* this, GlobalContext* globalCtx) {
    if (Flags_GetTreasure(globalCtx, (this->actor.params >> 8) & 0x1F)) {
        Actor_Kill(&this->actor);
    }
}

static void Update(ActorItemInbox* this, GlobalContext* globalCtx) {
    this->updateFunc(this, globalCtx);
}

static void Draw(ActorItemInbox* this, GlobalContext* globalCtx) {
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, this->actor.params & 0xFF);
}
