/*
 * File: z_en_dns.c
 * Overlay: En_Dns
 * Description: Deku Salesman - Sale Phase
 */
#include "z_en_dns.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "sfx.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"
#include "stack_pad.h"
#include "translation.h"

#include "assets/objects/object_shopnuts/object_shopnuts.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnDns_Init(Actor* thisx, PlayState* play);
void EnDns_Destroy(Actor* thisx, PlayState* play);
void EnDns_Update(Actor* thisx, PlayState* play);
void EnDns_Draw(Actor* thisx, PlayState* play);

u32 EnDns_CanBuyDekuNuts(EnDns* this);
u32 EnDns_CanBuyDekuSticks(EnDns* this);
u32 EnDns_CanBuyPrice(EnDns* this);
u32 EnDns_CanBuyDekuSeeds(EnDns* this);
u32 EnDns_CanBuyDekuShield(EnDns* this);
u32 EnDns_CanBuyBombs(EnDns* this);
u32 EnDns_CanBuyArrows(EnDns* this);
u32 EnDns_CanBuyBottle(EnDns* this);
void EnDns_PayPrice(EnDns* this);
void EnDns_PayForDekuNuts(EnDns* this);
void EnDns_PayForHeartPiece(EnDns* this);
void EnDns_PayForBombs(EnDns* this);
void EnDns_PayForArrows(EnDns* this);
void EnDns_PayForDekuStickUpgrade(EnDns* this);
void EnDns_PayForDekuNutUpgrade(EnDns* this);
void EnDns_SetupIdle(EnDns*, PlayState*);
void EnDns_Idle(EnDns*, PlayState*);
void EnDns_Talking(EnDns*, PlayState*);
void EnDns_SetupSale(EnDns*, PlayState*);
void EnDns_Sale(EnDns*, PlayState*);
void EnDns_SetupBurrow(EnDns*, PlayState*);
void EnDns_SetupNoSaleBurrow(EnDns*, PlayState*);
void EnDns_Burrow(EnDns*, PlayState*);
void EnDns_PostBurrow(EnDns*, PlayState*);

ActorProfile En_Dns_Profile = {
    /**/ ACTOR_EN_DNS,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SHOPNUTS,
    /**/ sizeof(EnDns),
    /**/ EnDns_Init,
    /**/ EnDns_Destroy,
    /**/ EnDns_Update,
    /**/ EnDns_Draw,
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 18, 32, 0, { 0, 0, 0 } },
};

static u16 sStartingTextIds[] = {
    0x10A0, // DNS_TYPE_DEKU_NUTS_5
    0x10A1, // DNS_TYPE_DEKU_STICKS_1
    0x10A2, // DNS_TYPE_HEART_PIECE
    0x10CA, // DNS_TYPE_DEKU_SEEDS_30
    0x10CB, // DNS_TYPE_DEKU_SHIELD
    0x10CC, // DNS_TYPE_BOMBS_5
    0x10CD, // DNS_TYPE_ARROWS_30
    0x10CE, // DNS_TYPE_RED_POTION
    0x10CF, // DNS_TYPE_GREEN_POTION
    0x10DC, // DNS_TYPE_DEKU_STICK_UPGRADE
    0x10DD, // DNS_TYPE_DEKU_NUT_UPGRADE
};

#if DEBUG_FEATURES
static char* sItemDebugTxt[] = {
    T("デクの実売り            ", "Deku Nut Vendor         "),                          // DNS_TYPE_DEKU_NUTS_5
    T("デクの棒売り            ", "Deku selling sticks     "),                          // DNS_TYPE_DEKU_STICKS_1
    T("ハートの欠片売り        ", "Heart Piece Seller      "),                          // DNS_TYPE_HEART_PIECE
    T("デクの種売り            ", "Deku Seed Seller        "),                          // DNS_TYPE_DEKU_SEEDS_30
    T("デクの盾売り            ", "Deku Shield Salesman    "),                          // DNS_TYPE_DEKU_SHIELD
    T("バクダン売り            ", "Bomb Seller             "),                          // DNS_TYPE_BOMBS_5
    T("矢売り                  ", "Arrow seller            "),                          // DNS_TYPE_ARROWS_30
    T("赤のくすり売り          ", "The Red Medicine Seller "),                          // DNS_TYPE_RED_POTION
    T("緑のくすり売り          ", "The Green Medicine Seller"),                         // DNS_TYPE_GREEN_POTION
    T("デクの棒持てる数を増やす", "Increase the number of Deku Sticks you can carry."), // DNS_TYPE_DEKU_STICK_UPGRADE
    T("デクの実持てる数を増やす", "Increase the number of Deku Nuts you can carry."),   // DNS_TYPE_DEKU_NUT_UPGRADE
};
#endif

static EnDnsPurchaseInfo sItemDekuNuts = {
    20, 5, GI_DEKU_NUTS_5_2, EnDns_CanBuyDekuNuts, EnDns_PayForDekuNuts,
};
static EnDnsPurchaseInfo sItemDekuSticks = {
    15, 1, GI_DEKU_STICKS_1, EnDns_CanBuyDekuSticks, EnDns_PayPrice,
};
static EnDnsPurchaseInfo sItemHeartPiece = {
    10, 1, GI_HEART_PIECE, EnDns_CanBuyPrice, EnDns_PayForHeartPiece,
};
static EnDnsPurchaseInfo sItemDekuSeeds = {
    40, 30, GI_DEKU_SEEDS_30, EnDns_CanBuyDekuSeeds, EnDns_PayPrice,
};
static EnDnsPurchaseInfo sItemDekuShield = {
    50, 1, GI_SHIELD_DEKU, EnDns_CanBuyDekuShield, EnDns_PayPrice,
};
static EnDnsPurchaseInfo sItemBombs = {
    40, 5, GI_BOMBS_5, EnDns_CanBuyBombs, EnDns_PayForBombs,
};
static EnDnsPurchaseInfo sItemArrows = {
    70, 20, GI_ARROWS_30, EnDns_CanBuyArrows, EnDns_PayForArrows,
};
static EnDnsPurchaseInfo sItemRedPotion = {
    40, 1, GI_BOTTLE_POTION_RED, EnDns_CanBuyBottle, EnDns_PayPrice,
};
static EnDnsPurchaseInfo sItemGreenPotion = {
    40, 1, GI_BOTTLE_POTION_GREEN, EnDns_CanBuyBottle, EnDns_PayPrice,
};
static EnDnsPurchaseInfo sItemDekuStickUpgrade = {
    40, 1, GI_DEKU_STICK_UPGRADE_20, EnDns_CanBuyPrice, EnDns_PayForDekuStickUpgrade,
};
static EnDnsPurchaseInfo sItemDekuNutUpgrade = {
    40, 1, GI_DEKU_NUT_UPGRADE_30, EnDns_CanBuyPrice, EnDns_PayForDekuNutUpgrade,
};

static EnDnsPurchaseInfo* sEnDnsPurchaseInfos[] = {
    &sItemDekuNuts,         // DNS_TYPE_DEKU_NUTS_5
    &sItemDekuSticks,       // DNS_TYPE_DEKU_STICKS_1
    &sItemHeartPiece,       // DNS_TYPE_HEART_PIECE
    &sItemDekuSeeds,        // DNS_TYPE_DEKU_SEEDS_30
    &sItemDekuShield,       // DNS_TYPE_DEKU_SHIELD
    &sItemBombs,            // DNS_TYPE_BOMBS_5
    &sItemArrows,           // DNS_TYPE_ARROWS_30
    &sItemRedPotion,        // DNS_TYPE_RED_POTION
    &sItemGreenPotion,      // DNS_TYPE_GREEN_POTION
    &sItemDekuStickUpgrade, // DNS_TYPE_DEKU_STICK_UPGRADE
    &sItemDekuNutUpgrade,   // DNS_TYPE_DEKU_NUT_UPGRADE
};

static InitChainEntry sInitChain[3] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_BUSINESS_SCRUB, ICHAIN_CONTINUE),
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 30, ICHAIN_STOP),
};

static AnimationMinimalInfo sAnimationInfo[] = {
    { &gBusinessScrubNervousIdleAnim, ANIMMODE_LOOP, 0.0f },
    { &gBusinessScrubLeaveBurrowAnim, ANIMMODE_ONCE, 0.0f },
    { &gBusinessScrubNervousTransitionAnim, ANIMMODE_ONCE, 0.0f },
};

void EnDns_Init(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;

    if (DNS_GET_TYPE(&this->actor) < 0) {
        PRINTF(VT_FGCOL(RED) T("引数エラー（売りナッツ）[ arg_data = %d ]",
                               "Argument error (Selling nuts) [ arg_data = %d ]") VT_RST "\n",
               this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }
    if ((DNS_GET_TYPE(&this->actor) == DNS_TYPE_ARROWS_30) && (LINK_AGE_IN_YEARS == YEARS_CHILD)) {
        this->actor.params = DNS_TYPE_DEKU_SEEDS_30;
    }
    PRINTF(VT_FGCOL(GREEN) T("◆◆◆ 売りナッツ『%s』 ◆◆◆", "◆◆◆ Nuts for sale 『%s』 ◆◆◆") VT_RST "\n",
           sItemDebugTxt[DNS_GET_TYPE(&this->actor)]);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_InitFlex(play, &this->skelAnime, &gBusinessScrubSkel, &gBusinessScrubNervousTransitionAnim,
                       this->jointTable, this->morphTable, BUSINESS_SCRUB_LIMB_MAX);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinderType1(play, &this->collider, &this->actor, &sCylinderInit);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 35.0f);
    this->actor.textId = sStartingTextIds[DNS_GET_TYPE(&this->actor)];
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->isColliderEnabled = true;
    this->runUpdBgCheckInfo = true;
    this->spawnHeartsAfterBurrow = false;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;
    this->purchaseInfo = sEnDnsPurchaseInfos[DNS_GET_TYPE(&this->actor)];
    this->actionFunc = EnDns_SetupIdle;
}

void EnDns_Destroy(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnDns_ChangeAnim(EnDns* this, u8 animIndex) {
    s16 animLastFrame;

    animLastFrame = Animation_GetLastFrame(sAnimationInfo[animIndex].animation);
    this->animIndex = animIndex;
    Animation_Change(&this->skelAnime, sAnimationInfo[animIndex].animation, 1.0f, 0.0f, animLastFrame,
                     sAnimationInfo[animIndex].mode, sAnimationInfo[animIndex].morphFrames);
}

u32 EnDns_CanBuyDekuNuts(EnDns* this) {
    if ((CUR_CAPACITY(UPG_DEKU_NUTS) != 0) && (AMMO(ITEM_DEKU_NUT) >= CUR_CAPACITY(UPG_DEKU_NUTS))) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    if (Item_CheckObtainability(ITEM_DEKU_NUT) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyDekuSticks(EnDns* this) {
    if ((CUR_CAPACITY(UPG_DEKU_STICKS) != 0) && (AMMO(ITEM_DEKU_STICK) >= CUR_CAPACITY(UPG_DEKU_STICKS))) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    if (Item_CheckObtainability(ITEM_DEKU_STICK) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyPrice(EnDns* this) {
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyDekuSeeds(EnDns* this) {
    if (INV_CONTENT(ITEM_SLINGSHOT) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_CANT_GET_NOW;
    }

    if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    if (Item_CheckObtainability(ITEM_DEKU_SEEDS) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyDekuShield(EnDns* this) {
    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SHIELD, EQUIP_INV_SHIELD_DEKU)) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyBombs(EnDns* this) {
    if (!CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return DNS_CANBUY_RESULT_CANT_GET_NOW;
    }

    if (AMMO(ITEM_BOMB) >= CUR_CAPACITY(UPG_BOMB_BAG)) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyArrows(EnDns* this) {
    if (Item_CheckObtainability(ITEM_BOW) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_CANT_GET_NOW;
    }

    if (AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyBottle(EnDns* this) {
    if (!Inventory_HasEmptyBottle()) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }
    if (gSaveContext.save.info.playerData.rupees < this->purchaseInfo->price) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }
    return DNS_CANBUY_RESULT_SUCCESS;
}

void EnDns_PayPrice(EnDns* this) {
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForDekuNuts(EnDns* this) {
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForHeartPiece(EnDns* this) {
    SET_ITEMGETINF(ITEMGETINF_DEKU_HEART_PIECE);
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForBombs(EnDns* this) {
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForArrows(EnDns* this) {
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForDekuStickUpgrade(EnDns* this) {
    SET_INFTABLE(INFTABLE_HAS_DEKU_STICK_UPGRADE);
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_PayForDekuNutUpgrade(EnDns* this) {
    SET_INFTABLE(INFTABLE_HAS_DEKU_NUT_UPGRADE);
    Rupees_ChangeBy(-this->purchaseInfo->price);
}

void EnDns_SetupIdle(EnDns* this, PlayState* play) {
    if (this->skelAnime.curFrame == this->skelAnime.endFrame) {
        this->actionFunc = EnDns_Idle;
        EnDns_ChangeAnim(this, DNS_ANIM_IDLE);
    }
}

void EnDns_Idle(EnDns* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x7D0, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnDns_Talking;
    } else {
        if ((this->collider.base.ocFlags1 & OC1_HIT) || (this->actor.isLockedOn != 0)) {
            this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        } else {
            this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        }
        if (this->actor.xzDistToPlayer < 130.0f) {
            Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
        }
    }
}

void EnDns_Talking(EnDns* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                switch (this->purchaseInfo->canBuy(this)) {
                    case DNS_CANBUY_RESULT_NEED_RUPEES:
                        Message_ContinueTextbox(play, 0x10A5);
                        this->actionFunc = EnDns_SetupNoSaleBurrow;
                        break;

                    case DNS_CANBUY_RESULT_CAPACITY_FULL:
                        Message_ContinueTextbox(play, 0x10A6);
                        this->actionFunc = EnDns_SetupNoSaleBurrow;
                        break;

                    case DNS_CANBUY_RESULT_CANT_GET_NOW:
                        Message_ContinueTextbox(play, 0x10DE);
                        this->actionFunc = EnDns_SetupNoSaleBurrow;
                        break;

                    case DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM:
                    case DNS_CANBUY_RESULT_SUCCESS:
                        Message_ContinueTextbox(play, 0x10A7);
                        this->actionFunc = EnDns_SetupSale;
                        break;
                }
                break;

            case 1:
                Message_ContinueTextbox(play, 0x10A4);
                this->actionFunc = EnDns_SetupNoSaleBurrow;
                break;
        }
    }
}

void EnDns_OfferSaleItem(EnDns* this, PlayState* play) {
    if (DNS_GET_TYPE(&this->actor) == DNS_TYPE_DEKU_STICK_UPGRADE) {
        if (CUR_UPG_VALUE(UPG_DEKU_STICKS) < 2) {
            Actor_OfferGetItem(&this->actor, play, GI_DEKU_STICK_UPGRADE_20, 130.0f, 100.0f);
        } else {
            Actor_OfferGetItem(&this->actor, play, GI_DEKU_STICK_UPGRADE_30, 130.0f, 100.0f);
        }
    } else if (DNS_GET_TYPE(&this->actor) == DNS_TYPE_DEKU_NUT_UPGRADE) {
        if (CUR_UPG_VALUE(UPG_DEKU_NUTS) < 2) {
            Actor_OfferGetItem(&this->actor, play, GI_DEKU_NUT_UPGRADE_30, 130.0f, 100.0f);
        } else {
            Actor_OfferGetItem(&this->actor, play, GI_DEKU_NUT_UPGRADE_40, 130.0f, 100.0f);
        }
    } else {
        Actor_OfferGetItem(&this->actor, play, this->purchaseInfo->getItemId, 130.0f, 100.0f);
    }
}

void EnDns_SetupSale(EnDns* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        EnDns_OfferSaleItem(this, play);
        this->actionFunc = EnDns_Sale;
    }
}

void EnDns_Sale(EnDns* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnDns_SetupBurrow;
    } else {
        EnDns_OfferSaleItem(this, play);
    }
}

void EnDns_SetupBurrow(EnDns* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->stateFlags1 & PLAYER_STATE1_10) {
        if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
            this->purchaseInfo->payment(this);
            this->spawnHeartsAfterBurrow = true;
            this->isColliderEnabled = false;
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
            this->actionFunc = EnDns_Burrow;
        }
    } else {
        this->purchaseInfo->payment(this);
        this->spawnHeartsAfterBurrow = true;
        this->isColliderEnabled = false;
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
        this->actionFunc = EnDns_Burrow;
    }
}

void EnDns_SetupNoSaleBurrow(EnDns* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        this->isColliderEnabled = false;
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
        this->actionFunc = EnDns_Burrow;
    }
}

void EnDns_Burrow(EnDns* this, PlayState* play) {
    f32 f = Animation_GetLastFrame(&gBusinessScrubLeaveBurrowAnim);

    if (this->skelAnime.curFrame == f) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
        this->actionFunc = EnDns_PostBurrow;
        this->runUpdBgCheckInfo = false;
        this->floorY = this->actor.world.pos.y;
    }
}

void EnDns_PostBurrow(EnDns* this, PlayState* play) {
    f32 depthInGround;
    Vec3f pos;
    s32 i;

    depthInGround = this->floorY - this->actor.world.pos.y;
    if ((this->timer % 4) == 0) {
        pos.x = this->actor.world.pos.x;
        pos.y = this->floorY;
        pos.z = this->actor.world.pos.z;
        func_80028990(play, 20.0f, &pos);
    }

    this->actor.shape.rot.y += 0x2000;
    if (depthInGround > 400.0f) {
        if (this->spawnHeartsAfterBurrow) {
            pos.x = this->actor.world.pos.x;
            pos.y = this->floorY;
            pos.z = this->actor.world.pos.z;
            for (i = 0; i < 3; i++) {
                Item_DropCollectible(play, &pos, ITEM00_RECOVERY_HEART);
            }
        }
        Actor_Kill(&this->actor);
    }
}

void EnDns_Update(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;
    STACK_PAD(s32);

    this->timer++;
    this->actor.textId = sStartingTextIds[DNS_GET_TYPE(&this->actor)];
    Actor_SetFocus(&this->actor, 60.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Update(&this->skelAnime);
    Actor_MoveXZGravity(&this->actor);
    this->actionFunc(this, play);
    if (this->runUpdBgCheckInfo) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 20.0f, UPDBGCHECKINFO_FLAG_2);
    }
    if (this->isColliderEnabled) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnDns_Draw(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, &this->actor);
}
