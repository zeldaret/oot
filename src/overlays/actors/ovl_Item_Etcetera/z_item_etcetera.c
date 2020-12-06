/*
 * File: z_item_etcetera.c
 * Overlay: ovl_Item_Etcetera
 * Description: Collectible Items
 */

#include "z_item_etcetera.h"

#define FLAGS 0x00000010

#define THIS ((ItemEtcetera*)thisx)

void ItemEtcetera_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_DrawThroughLens(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B857D0(ItemEtcetera* this, GlobalContext* globalCtx);
void func_80B85824(ItemEtcetera* this, GlobalContext* globalCtx);
void func_80B858B4(ItemEtcetera* this, GlobalContext* globalCtx);
void ItemEtcetera_SpawnSparkles(ItemEtcetera* this, GlobalContext* globalCtx);
void ItemEtcetera_MoveFireArrowDown(ItemEtcetera* this, GlobalContext* globalCtx);
void func_80B85B28(ItemEtcetera* this, GlobalContext* globalCtx);
void ItemEtcetera_UpdateFireArrow(ItemEtcetera* this, GlobalContext* globalCtx);

const ActorInit Item_Etcetera_InitVars = {
    ACTOR_ITEM_ETCETERA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ItemEtcetera),
    (ActorFunc)ItemEtcetera_Init,
    (ActorFunc)ItemEtcetera_Destroy,
    (ActorFunc)ItemEtcetera_Update,
    NULL,
};

static s16 sObjectIds[] = {
    OBJECT_GI_BOTTLE, OBJECT_GI_BOTTLE_LETTER, OBJECT_GI_SHIELD_2, OBJECT_GI_ARROWCASE, OBJECT_GI_SCALE,
    OBJECT_GI_SCALE,  OBJECT_GI_KEY,           OBJECT_GI_M_ARROW,  OBJECT_GI_RUPY,      OBJECT_GI_RUPY,
    OBJECT_GI_RUPY,   OBJECT_GI_RUPY,          OBJECT_GI_HEARTS,   OBJECT_GI_KEY,
};

// Indexes passed to the item table in z_draw.c
static s16 sDrawItemIndexes[] = {
    0x0000, 0x0044, 0x002B, 0x0015, 0x0029, 0x002A, 0x0001, 0x005F, 0x006C, 0x006D, 0x006E, 0x0070, 0x0013, 0x0001,
};

static s16 sGetItemIds[] = {
    GI_BOTTLE,     GI_LETTER_RUTO, GI_SHIELD_HYLIAN, GI_QUIVER_40, GI_SCALE_SILVER, GI_SCALE_GOLD, GI_KEY_SMALL,
    GI_ARROW_FIRE, GI_NONE,        GI_NONE,          GI_NONE,      GI_NONE,         GI_NONE,       GI_NONE,
};

void ItemEtcetera_SetupAction(ItemEtcetera* this, ItemEtceteraActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ItemEtcetera_Init(Actor* thisx, GlobalContext* globalCtx) {
    ItemEtcetera* this = THIS;
    s32 pad;
    s32 type;
    s32 objBankIndex;

    type = this->actor.params & 0xFF;
    osSyncPrintf("no = %d\n", type);
    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, sObjectIds[type]);
    osSyncPrintf("bank_ID = %d\n", objBankIndex);
    if (objBankIndex < 0) {
        __assert("0", "../z_item_etcetera.c", 241);
    } else {
        this->objBankIndex = objBankIndex;
    }
    this->drawId = sDrawItemIndexes[type];
    this->getItemId = sGetItemIds[type];
    this->futureActionFunc = func_80B85824;
    this->drawFunc = ItemEtcetera_Draw;
    Actor_SetScale(&this->actor, 0.25f);
    ItemEtcetera_SetupAction(this, func_80B857D0);
    switch (type) {
        case ITEM_ETC_LETTER:
            Actor_SetScale(&this->actor, 0.5f);
            this->futureActionFunc = func_80B858B4;
            if (gSaveContext.eventChkInf[3] & 2) {
                Actor_Kill(&this->actor);
            }
            break;
        case ITEM_ETC_ARROW_FIRE:
            this->futureActionFunc = ItemEtcetera_UpdateFireArrow;
            Actor_SetScale(&this->actor, 0.5f);
            this->actor.draw = NULL;
            this->actor.shape.unk_08 = 50.0f;
            break;
        case ITEM_ETC_RUPEE_GREEN_CHEST_GAME:
        case ITEM_ETC_RUPEE_BLUE_CHEST_GAME:
        case ITEM_ETC_RUPEE_RED_CHEST_GAME:
        case ITEM_ETC_RUPEE_PURPLE_CHEST_GAME:
        case ITEM_ETC_HEART_PIECE_CHEST_GAME:
        case ITEM_ETC_KEY_SMALL_CHEST_GAME:
            Actor_SetScale(&this->actor, 0.5f);
            this->futureActionFunc = func_80B85B28;
            this->drawFunc = ItemEtcetera_DrawThroughLens;
            this->actor.posRot.pos.y += 15.0f;
            break;
    }
}

void ItemEtcetera_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B857D0(ItemEtcetera* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        this->actor.objBankIndex = this->objBankIndex;
        this->actor.draw = this->drawFunc;
        this->actionFunc = this->futureActionFunc;
    }
}

void func_80B85824(ItemEtcetera* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        if ((this->actor.params & 0xFF) == 1) {
            gSaveContext.eventChkInf[3] |= 2;
            Flags_SetSwitch(globalCtx, 0xB);
        }
        Actor_Kill(&this->actor);
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemId, 30.0f, 50.0f);
    }
}

void func_80B858B4(ItemEtcetera* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        if ((this->actor.params & 0xFF) == 1) {
            gSaveContext.eventChkInf[3] |= 2;
            Flags_SetSwitch(globalCtx, 0xB);
        }
        Actor_Kill(&this->actor);
    } else {
        if (0) {} // Necessary to match
        func_8002F434(&this->actor, globalCtx, this->getItemId, 30.0f, 50.0f);
        if ((globalCtx->gameplayFrames & 0xD) == 0) {
            EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, 0.0f, 0.0f, 10.0f, 0.13f);
        }
    }
}

void ItemEtcetera_SpawnSparkles(ItemEtcetera* this, GlobalContext* globalCtx) {
    static Vec3f velocity = { 0.0f, 0.2f, 0.0f };
    static Vec3f accel = { 0.0f, 0.05f, 0.0f };
    static Color_RGB8 primColor = { 255, 255, 255 };
    static Color_RGB8 envColor = { 255, 50, 50 };
    Vec3f pos;

    velocity.x = Math_Rand_CenteredFloat(3.0f);
    velocity.z = Math_Rand_CenteredFloat(3.0f);
    velocity.y = -0.05f;
    accel.y = -0.025f;
    pos.x = Math_Rand_CenteredFloat(12.0f) + this->actor.posRot.pos.x;
    pos.y = (Math_Rand_ZeroOne() * 6.0f) + this->actor.posRot.pos.y;
    pos.z = Math_Rand_CenteredFloat(12.0f) + this->actor.posRot.pos.z;
    EffectSsKiraKira_SpawnDispersed(globalCtx, &pos, &velocity, &accel, &primColor, &envColor, 5000, 16);
}

void ItemEtcetera_MoveFireArrowDown(ItemEtcetera* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 0.0f, 5);
    Actor_MoveForward(&this->actor);
    if (!(this->actor.bgCheckFlags & 1)) {
        ItemEtcetera_SpawnSparkles(this, globalCtx);
    }
    this->actor.shape.rot.y += 0x400;
    func_80B85824(this, globalCtx);
}

void func_80B85B28(ItemEtcetera* this, GlobalContext* globalCtx) {
    if (Flags_GetTreasure(globalCtx, (this->actor.params >> 8) & 0x1F)) {
        Actor_Kill(&this->actor);
    }
}

void ItemEtcetera_UpdateFireArrow(ItemEtcetera* this, GlobalContext* globalCtx) {
    if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[0] != NULL)) {
        LOG_NUM("(game_play->demo_play.npcdemopnt[0]->dousa)", globalCtx->csCtx.npcActions[0]->action,
                "../z_item_etcetera.c", 441);
        if (globalCtx->csCtx.npcActions[0]->action == 2) {
            this->actor.draw = ItemEtcetera_Draw;
            this->actor.gravity = -0.1f;
            this->actor.minVelocityY = -4.0f;
            this->actionFunc = ItemEtcetera_MoveFireArrowDown;
        }
    } else {
        this->actor.gravity = -0.1f;
        this->actor.minVelocityY = -4.0f;
        this->actionFunc = ItemEtcetera_MoveFireArrowDown;
    }
}

void ItemEtcetera_Update(Actor* thisx, GlobalContext* globalCtx) {
    ItemEtcetera* this = THIS;
    this->actionFunc(this, globalCtx);
}

void ItemEtcetera_DrawThroughLens(Actor* thisx, GlobalContext* globalCtx) {
    ItemEtcetera* this = THIS;
    if (globalCtx->actorCtx.unk_03 != 0) {
        func_8002EBCC(&this->actor, globalCtx, 0);
        func_8002ED80(&this->actor, globalCtx, 0);
        func_800694A0(globalCtx, this->drawId);
    }
}

void ItemEtcetera_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ItemEtcetera* this = THIS;

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_8002ED80(&this->actor, globalCtx, 0);
    func_800694A0(globalCtx, this->drawId);
}
