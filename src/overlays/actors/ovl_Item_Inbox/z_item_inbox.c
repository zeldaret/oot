/*
 * File: z_item_inbox.c
 * Overlay: ovl_Item_Inbox
 * Description: Zelda's magic effect when opening gates in castle collapse
 */

#include "z_item_inbox.h"
#include "z64draw.h"
#include "z64play.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void ItemInbox_Init(Actor* thisx, PlayState* play);
void ItemInbox_Destroy(Actor* thisx, PlayState* play);
void ItemInbox_Update(Actor* thisx, PlayState* play);
void ItemInbox_Draw(Actor* thisx, PlayState* play);

void ItemInbox_Wait(ItemInbox* this, PlayState* play);

ActorProfile Item_Inbox_Profile = {
    /**/ ACTOR_ITEM_INBOX,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(ItemInbox),
    /**/ ItemInbox_Init,
    /**/ ItemInbox_Destroy,
    /**/ ItemInbox_Update,
    /**/ ItemInbox_Draw,
};

void ItemInbox_Init(Actor* thisx, PlayState* play) {
    ItemInbox* this = (ItemInbox*)thisx;

    this->actionFunc = ItemInbox_Wait;
    Actor_SetScale(&this->actor, 0.2);
}

void ItemInbox_Destroy(Actor* thisx, PlayState* play) {
}

void ItemInbox_Wait(ItemInbox* this, PlayState* play) {
    if (Flags_GetTreasure(play, PARAMS_GET_U(this->actor.params, 8, 5))) {
        Actor_Kill(&this->actor);
    }
}

void ItemInbox_Update(Actor* thisx, PlayState* play) {
    ItemInbox* this = (ItemInbox*)thisx;

    this->actionFunc(this, play);
}

void ItemInbox_Draw(Actor* thisx, PlayState* play) {
    ItemInbox* this = (ItemInbox*)thisx;

    func_8002EBCC(&this->actor, play, 0);
    func_8002ED80(&this->actor, play, 0);
    GetItem_Draw(play, PARAMS_GET_U(this->actor.params, 0, 8));
}
