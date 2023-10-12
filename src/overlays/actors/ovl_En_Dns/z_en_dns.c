/*
 * File: z_en_dns.c
 * Overlay: En_Dns
 * Description: Deku Salesman - Sale Phase
 */

#include "z_en_dns.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3)

void EnDns_Init(Actor* thisx, PlayState* play);
void EnDns_Destroy(Actor* thisx, PlayState* play);
void EnDns_Update(Actor* thisx, PlayState* play);
void EnDns_Draw(Actor* thisx, PlayState* play);

u32 EnDns_CanBuyPrice(EnDns* this);
u32 EnDns_CanBuyDekuNuts(EnDns* this);
u32 EnDns_CanBuyDekuSticks(EnDns* this);
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

void EnDns_SetupIdle(EnDns* this, PlayState* play);
void EnDns_Idle(EnDns* this, PlayState* play);
void EnDns_Talk(EnDns* this, PlayState* play);
void EnDns_OfferSaleItem(EnDns* this, PlayState* play);
void EnDns_SetupSale(EnDns* this, PlayState* play);
void EnDns_Sale(EnDns* this, PlayState* play);
void EnDns_SetupBurrow(EnDns* this, PlayState* play);
void EnDns_SetupNoSaleBurrow(EnDns* this, PlayState* play);
void EnDns_Burrow(EnDns* this, PlayState* play);
void EnDns_PostBurrow(EnDns* this, PlayState* play);

ActorInit En_Dns_InitVars = {
    ACTOR_EN_DNS,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SHOPNUTS,
    sizeof(EnDns),
    (ActorFunc)EnDns_Init,
    (ActorFunc)EnDns_Destroy,
    (ActorFunc)EnDns_Update,
    (ActorFunc)EnDns_Draw,
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 18, 32, 0, { 0, 0, 0 } },
};

static u16 sStartingTextIds[] = {
    0x10A0, 0x10A1, 0x10A2, 0x10CA, 0x10CB, 0x10CC, 0x10CD, 0x10CE, 0x10CF, 0x10DC, 0x10DD,
};

static char* sItemDebugTxt[] = {
    "デクの実売り            ", // "Deku Nuts"
    "デクの棒売り            ", // "Deku Sticks"
    "ハートの欠片売り        ", // "Piece of Heart"
    "デクの種売り            ", // "Deku Seeds"
    "デクの盾売り            ", // "Deku Shield"
    "バクダン売り            ", // "Bombs"
    "矢売り                  ", // "Arrows"
    "赤のくすり売り          ", // "Red Potion"
    "緑のくすり売り          ", // "Green Potion"
    "デクの棒持てる数を増やす", // "Deku Stick Upgrade"
    "デクの実持てる数を増やす", // "Deku Nut Upgrade"
};

static DnsItemEntry sItemDekuNuts = { 20, 5, GI_DEKU_NUTS_5_2, EnDns_CanBuyDekuNuts, EnDns_PayForDekuNuts };
static DnsItemEntry sItemDekuSticks = { 15, 1, GI_DEKU_STICKS_1, EnDns_CanBuyDekuSticks, EnDns_PayPrice };
static DnsItemEntry sItemHeartPiece = { 10, 1, GI_HEART_PIECE, EnDns_CanBuyPrice, EnDns_PayForHeartPiece };
static DnsItemEntry sItemDekuSeeds = { 40, 30, GI_DEKU_SEEDS_30, EnDns_CanBuyDekuSeeds, EnDns_PayPrice };
static DnsItemEntry sItemDekuShield = { 50, 1, GI_SHIELD_DEKU, EnDns_CanBuyDekuShield, EnDns_PayPrice };
static DnsItemEntry sItemBombs = { 40, 5, GI_BOMBS_5, EnDns_CanBuyBombs, EnDns_PayForBombs };
static DnsItemEntry sItemArrows = { 70, 20, GI_ARROWS_30, EnDns_CanBuyArrows, EnDns_PayForArrows };
static DnsItemEntry sItemRedPotion = { 40, 1, GI_BOTTLE_POTION_RED, EnDns_CanBuyBottle, EnDns_PayPrice };
static DnsItemEntry sItemGreenPotion = { 40, 1, GI_BOTTLE_POTION_GREEN, EnDns_CanBuyBottle, EnDns_PayPrice };

static DnsItemEntry sItemDekuStickUpgrade = { 40, 1, GI_DEKU_STICK_UPGRADE_20, EnDns_CanBuyPrice,
                                              EnDns_PayForDekuStickUpgrade };
static DnsItemEntry sItemDekuNutUpgrade = { 40, 1, GI_DEKU_NUT_UPGRADE_30, EnDns_CanBuyPrice,
                                            EnDns_PayForDekuNutUpgrade };

static DnsItemEntry* sItemEntries[] = {
    &sItemDekuNuts, &sItemDekuSticks, &sItemHeartPiece,  &sItemDekuSeeds,        &sItemDekuShield,     &sItemBombs,
    &sItemArrows,   &sItemRedPotion,  &sItemGreenPotion, &sItemDekuStickUpgrade, &sItemDekuNutUpgrade,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_BUSINESS_SCRUB, ICHAIN_CONTINUE),
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 30, ICHAIN_STOP),
};

static AnimationMinimalInfo sAnimationInfo[] = {
    { &gBusinessScrubNervousIdleAnim, ANIMMODE_LOOP, 0.0f },
    { &gBusinessScrubLeaveBurrowAnim, ANIMMODE_ONCE, 0.0f },
    { &gBusinessScrubNervousTransitionAnim, ANIMMODE_ONCE, 0.0f },
};

void EnDns_Init(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;

    if (DNS_GET_TYPE(&this->actor) < 0) {
        // "Function Error (Deku Salesman)"
        osSyncPrintf(VT_FGCOL(RED) "引数エラー（売りナッツ）[ arg_data = %d ]" VT_RST "\n", this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }

    // Sell Seeds instead of Arrows if Link is child
    if ((DNS_GET_TYPE(&this->actor) == DNS_TYPE_ARROWS_30) && (LINK_AGE_IN_YEARS == YEARS_CHILD)) {
        DNS_GET_TYPE(&this->actor) = DNS_TYPE_DEKU_SEEDS_30;
    }

    // "Deku Salesman"
    osSyncPrintf(VT_FGCOL(GREEN) "◆◆◆ 売りナッツ『%s』 ◆◆◆" VT_RST "\n", sItemDebugTxt[DNS_GET_TYPE(&this->actor)]);

    Actor_ProcessInitChain(&this->actor, sInitChain);

    SkelAnime_InitFlex(play, &this->skelAnime, &gBusinessScrubSkel, &gBusinessScrubNervousTransitionAnim,
                       this->jointTable, this->morphTable, BUSINESS_SCRUB_LIMB_MAX);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinderType1(play, &this->collider, &this->actor, &sCylinderInit);

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 35.0f);
    this->actor.textId = sStartingTextIds[DNS_GET_TYPE(&this->actor)];
    Actor_SetScale(&this->actor, 0.01f);

    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->bumpOn = true;
    this->standOnGround = true;
    this->dropCollectible = false;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;
    this->dnsItemEntry = sItemEntries[DNS_GET_TYPE(&this->actor)];

    this->actionFunc = EnDns_SetupIdle;
}

void EnDns_Destroy(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnDns_ChangeAnim(EnDns* this, u8 index) {
    s16 frameCount = Animation_GetLastFrame(sAnimationInfo[index].animation);

    this->animIndex = index;
    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f, frameCount,
                     sAnimationInfo[index].mode, sAnimationInfo[index].morphFrames);
}

/* Item give checking functions */

u32 EnDns_CanBuyDekuNuts(EnDns* this) {
    if ((CUR_CAPACITY(UPG_DEKU_NUTS) != 0) && (AMMO(ITEM_DEKU_NUT) >= CUR_CAPACITY(UPG_DEKU_NUTS))) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
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

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    if (Item_CheckObtainability(ITEM_DEKU_STICK) == ITEM_NONE) {
        return DNS_CANBUY_RESULT_SUCCESS_NEW_ITEM;
    }

    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyPrice(EnDns* this) {
    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
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

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
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

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
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

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
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

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    return DNS_CANBUY_RESULT_SUCCESS;
}

u32 EnDns_CanBuyBottle(EnDns* this) {
    if (!Inventory_HasEmptyBottle()) {
        return DNS_CANBUY_RESULT_CAPACITY_FULL;
    }

    if (gSaveContext.save.info.playerData.rupees < this->dnsItemEntry->itemPrice) {
        return DNS_CANBUY_RESULT_NEED_RUPEES;
    }

    return DNS_CANBUY_RESULT_SUCCESS;
}

/* Paying and flagging functions */

void EnDns_PayPrice(EnDns* this) {
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForDekuNuts(EnDns* this) {
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForHeartPiece(EnDns* this) {
    SET_ITEMGETINF(ITEMGETINF_DEKU_HEART_PIECE);
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForBombs(EnDns* this) {
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForArrows(EnDns* this) {
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForDekuStickUpgrade(EnDns* this) {
    SET_INFTABLE(INFTABLE_HAS_DEKU_STICK_UPGRADE);
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_PayForDekuNutUpgrade(EnDns* this) {
    SET_INFTABLE(INFTABLE_HAS_DEKU_NUT_UPGRADE);
    Rupees_ChangeBy(-this->dnsItemEntry->itemPrice);
}

void EnDns_SetupIdle(EnDns* this, PlayState* play) {
    if (this->skelAnime.curFrame == this->skelAnime.endFrame) {
        this->actionFunc = EnDns_Idle;
        EnDns_ChangeAnim(this, DNS_ANIM_IDLE);
    }
}

void EnDns_Idle(EnDns* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 2000, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;

    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        this->actionFunc = EnDns_Talk;
    } else {
        if ((this->collider.base.ocFlags1 & OC1_HIT) || this->actor.isTargeted) {
            this->actor.flags |= ACTOR_FLAG_16;
        } else {
            this->actor.flags &= ~ACTOR_FLAG_16;
        }
        if (this->actor.xzDistToPlayer < 130.0f) {
            func_8002F2F4(&this->actor, play);
        }
    }
}

void EnDns_Talk(EnDns* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // OK
                switch (this->dnsItemEntry->canBuy(this)) {
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

            case 1: // "No"
                Message_ContinueTextbox(play, 0x10A4);
                this->actionFunc = EnDns_SetupNoSaleBurrow;
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
        Actor_OfferGetItem(&this->actor, play, this->dnsItemEntry->getItemId, 130.0f, 100.0f);
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
            this->dnsItemEntry->payment(this);
            this->dropCollectible = true;
            this->bumpOn = false;
            this->actor.flags &= ~ACTOR_FLAG_0;
            EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
            this->actionFunc = EnDns_Burrow;
        }
    } else {
        this->dnsItemEntry->payment(this);
        this->dropCollectible = true;
        this->bumpOn = false;
        this->actor.flags &= ~ACTOR_FLAG_0;
        EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
        this->actionFunc = EnDns_Burrow;
    }
}

void EnDns_SetupNoSaleBurrow(EnDns* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) && Message_ShouldAdvance(play)) {
        this->bumpOn = false;
        this->actor.flags &= ~ACTOR_FLAG_0;
        EnDns_ChangeAnim(this, DNS_ANIM_BURROW);
        this->actionFunc = EnDns_Burrow;
    }
}

void EnDns_Burrow(EnDns* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gBusinessScrubLeaveBurrowAnim);

    if (this->skelAnime.curFrame == frameCount) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
        this->actionFunc = EnDns_PostBurrow;
        this->standOnGround = false;
        this->yInitPos = this->actor.world.pos.y;
    }
}

void EnDns_PostBurrow(EnDns* this, PlayState* play) {
    f32 depthInGround = this->yInitPos - this->actor.world.pos.y;
    Vec3f initPos;
    s32 i;

    if ((this->dustTimer & 3) == 0) {
        initPos.x = this->actor.world.pos.x;
        initPos.y = this->yInitPos;
        initPos.z = this->actor.world.pos.z;
        func_80028990(play, 20.0f, &initPos);
    }

    this->actor.shape.rot.y += 0x2000;

    if (depthInGround > 400.0f) {
        if (this->dropCollectible) {
            initPos.x = this->actor.world.pos.x;
            initPos.y = this->yInitPos;
            initPos.z = this->actor.world.pos.z;

            for (i = 0; i < 3; i++) {
                Item_DropCollectible(play, &initPos, ITEM00_RECOVERY_HEART);
            }
        }
        Actor_Kill(&this->actor);
    }
}

void EnDns_Update(Actor* thisx, PlayState* play) {
    EnDns* this = (EnDns*)thisx;
    s16 pad;

    this->dustTimer++;
    this->actor.textId = sStartingTextIds[DNS_GET_TYPE(&this->actor)];

    Actor_SetFocus(&this->actor, 60.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Update(&this->skelAnime);
    Actor_MoveXZGravity(&this->actor);

    this->actionFunc(this, play);

    if (this->standOnGround) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 20.0f, UPDBGCHECKINFO_FLAG_2);
    }

    if (this->bumpOn) {
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
