/*
 * File: z_item_inbox.c
 * Overlay: ovl_Item_Inbox
 * Description: Zelda's magic to open gates.
 */

#include "z_item_inbox.h"

#define FLAGS 0x00000009

void ItemInbox_Init(ItemInbox* this, GlobalContext* globalCtx);
void ItemInbox_Destroy(ItemInbox* this, GlobalContext* globalCtx);
void func_80B86020(ItemInbox* this, GlobalContext* globalCtx);
void ItemInbox_Update(ItemInbox* this, GlobalContext* globalCtx);
void ItemInbox_Draw(ItemInbox* this, GlobalContext* globalCtx);

const ActorInit Item_Inbox_InitVars = {
    ACTOR_ITEM_INBOX,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ItemInbox),
    (ActorFunc)ItemInbox_Init,
    (ActorFunc)ItemInbox_Destroy,
    (ActorFunc)ItemInbox_Update,
    (ActorFunc)ItemInbox_Draw,
};

void ItemInbox_Init(ItemInbox* this, GlobalContext* globalCtx) {
    this->actionFunc = func_80B86020;
    Actor_SetScale(&this->actor, 0.2);
}

void ItemInbox_Destroy(ItemInbox* this, GlobalContext* globalCtx) {
}

void func_80B86020(ItemInbox* this, GlobalContext* globalCtx) {
    if (Flags_GetTreasure(globalCtx, (this->actor.params >> 8) & 0x1F)) {
        Actor_Kill(&this->actor);
    }
}

void ItemInbox_Update(ItemInbox* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void ItemInbox_Draw(ItemInbox* this, GlobalContext* globalCtx) {
    func_8002EBCC(&this->actor, globalCtx, 0);
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, this->actor.params & 0xFF);
}
