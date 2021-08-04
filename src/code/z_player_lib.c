#include "global.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_link_child/object_link_child.h"
#include "objects/object_link_boy/object_link_boy.h"

static Vec3f* sPartsPosPtr; // pointer to positions parts of the player
static s32 sDListsLodOffset;
static Vec3f sGetItemRefPos;
static s32 sLeftHandType;
static s32 sRightHandType;

FlexSkeletonHeader* gPlayerSkelHeaders[] = { &gLinkAdultSkel, &gLinkChildSkel };

typedef struct {
    /* 0x00 */ s16 walkSpeedMax;
    /* 0x02 */ s16 sideWalkAnimSpeedBase;
    /* 0x04 */ s16 sideWalkAnimSpeed;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s16 walkAnimSpeedBase;
    /* 0x0A */ s16 walkAnimSpeed;
    /* 0x0C */ s16 runAnimSpeedBase;
    /* 0x0E */ s16 runAnimSpeed;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 runSpeedMax;
    /* 0x14 */ s16 gravity;
    /* 0x16 */ s16 unk_16;           // jump related
    /* 0x18 */ s16 highJumpSpeedMin; // minimum speed to trigger a high jump
    /* 0x1A */ s16 highJumpSpeed;
    /* 0x1C */ s16 highJumpSpeedBase;
    /* 0x1E */ s16 smallJumpSpeed;
    /* 0x20 */ s16 unk_20;
} PlayerMovementBehavior; // size = 0x22

// Info about how the player should walk, run, and jump under various conditions
static PlayerMovementBehavior sMovementInfo[PLAYER_BOOTS_MAX] = {
    { 200, 1000, 300, 700, 550, 270, 600, 350, 800, 600, -100, 600, 590, 750, 125, 200, 130 }, // Normal (adult)
    { 200, 1000, 300, 700, 550, 270, 1000, 0, 800, 300, -160, 600, 590, 750, 125, 200, 130 },  // Iron
    { 200, 1000, 300, 700, 550, 270, 600, 600, 800, 550, -100, 600, 540, 270, 25, 0, 130 },    // Hover
    { 200, 1000, 300, 700, 380, 400, 0, 300, 800, 500, -100, 600, 590, 750, 125, 200, 130 },   // Indoor
    { 80, 800, 150, 700, 480, 270, 600, 50, 800, 550, -40, 400, 540, 270, 25, 0, 80 },         // Iron underwater
    { 200, 1000, 300, 800, 500, 400, 800, 400, 800, 550, -100, 600, 540, 750, 125, 400, 200 }, // Normal (child)
};

void Player_SetMovementBehavior(GlobalContext* globalCtx, Player* this) {
    s32 currentBoots;
    PlayerMovementBehavior* entry;

    REG(27) = 2000;
    REG(48) = 370;

    currentBoots = this->currentBoots;
    if (currentBoots == PLAYER_BOOTS_KOKIRI) {
        if (LINK_IS_CHILD) {
            currentBoots = PLAYER_BOOTS_EX_KOKIRI_CHILD;
        }
    } else if (currentBoots == PLAYER_BOOTS_IRON) {
        if (this->stateFlags1 & 0x8000000) {
            currentBoots = PLAYER_BOOTS_EX_IRON_UNDERWATER;
        }
        REG(27) = 500;
        REG(48) = 100;
    }

    entry = &sMovementInfo[currentBoots];
    REG(19) = entry->walkSpeedMax;
    REG(30) = entry->sideWalkAnimSpeedBase;
    REG(32) = entry->sideWalkAnimSpeed;
    REG(34) = entry->unk_06;
    REG(35) = entry->walkAnimSpeedBase;
    REG(36) = entry->walkAnimSpeed;
    REG(37) = entry->runAnimSpeedBase;
    REG(38) = entry->runAnimSpeed;
    REG(43) = entry->unk_10;
    REG(45) = entry->runSpeedMax;
    REG(68) = entry->gravity;
    REG(69) = entry->unk_16;
    IREG(66) = entry->highJumpSpeedMin;
    IREG(67) = entry->highJumpSpeed;
    IREG(68) = entry->highJumpSpeedBase;
    IREG(69) = entry->smallJumpSpeed;
    MREG(95) = entry->unk_20;

    if (globalCtx->roomCtx.curRoom.unk_03 == 2) {
        REG(45) = 500;
    }
}

s32 Player_InBlockingCsMode(GlobalContext* globalCtx, Player* this) {
    return (this->stateFlags1 & 0x20000080) || (this->csMode != 0) || (globalCtx->sceneLoadFlag == 0x14) ||
           (this->stateFlags1 & 1) || (this->stateFlags3 & 0x80) ||
           ((gSaveContext.unk_13F0 != 0) && (Player_ActionToMagicSpell(this, this->itemActionParam) >= 0));
}

s32 Player_InCsMode(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return Player_InBlockingCsMode(globalCtx, this) || (this->unk_6AD == 4);
}

s32 Player_IsTargeting(Player* this) {
    return (this->stateFlags1 & 0x10);
}

s32 Player_IsChildWithHylianShield(Player* this) {
    return LINK_IS_CHILD && (this->currentShield == PLAYER_SHIELD_HYLIAN);
}

// Used to map action params to model groups
static u8 sActionModelGroups[] = {
    3,  15, 10, 2,  2,  5,  10, 11, 6,  6, 6, 6, 6, 6, 6, 6, 9, 9, 7, 7, 8, 3, 3, 6, 3, 3, 3, 3, 12, 13, 14, 14, 14, 14,
    14, 14, 14, 14, 14, 14, 14, 14, 14, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,  3,  3,  3,  3,
};

s32 Player_ActionToModelGroup(Player* this, s32 actionParam) {
    s32 modelGroup = sActionModelGroups[actionParam];

    if ((modelGroup == 2) && Player_IsChildWithHylianShield(this)) {
        return 1;
    } else {
        return modelGroup;
    }
}

typedef struct {
    /* 0x00 */ u8 flag;
    /* 0x02 */ u16 textId;
} TextTriggerEntry; // size = 0x04

static TextTriggerEntry sTextTriggers[] = {
    { 1, 0x3040 },
    { 2, 0x401D },
    { 0, 0x0000 },
    { 2, 0x401D },
};

// Used to map model groups to model types for [animation, left hand, right hand, sheath, waist]
u8 gPlayerModelTypes[][5] = {
    { 2, 0, 10, 16, 20 }, { 1, 2, 9, 19, 20 },  { 1, 2, 10, 17, 20 }, { 0, 0, 8, 18, 20 },
    { 0, 0, 8, 18, 20 },  { 3, 4, 9, 19, 20 },  { 4, 1, 11, 18, 20 }, { 5, 0, 8, 18, 20 },
    { 0, 6, 8, 18, 20 },  { 4, 0, 15, 18, 20 }, { 3, 1, 9, 18, 20 },  { 3, 5, 9, 18, 20 },
    { 0, 0, 13, 18, 20 }, { 0, 0, 14, 18, 20 }, { 0, 7, 8, 18, 20 },  { 0, 2, 8, 19, 20 },
};

static Gfx* sPlayerRightHandAndShieldDLists[] = {
    gLinkAdultRightFistNearDL,
    gLinkChildRightFistNearDL,
    gLinkAdultRightFistFarDL,
    gLinkChildRightFistFarDL,
    gLinkAdultRightFistNearDL,
    gLinkChildRightFistAndDekuShieldNearDL,
    gLinkAdultRightFistFarDL,
    gLinkChildRightFistAndDekuShieldFarDL,
    gLinkAdultRightFistAndHylianShieldNearDL,
    gLinkChildRightFistNearDL,
    gLinkAdultRightFistAndHylianShieldFarDL,
    gLinkChildRightFistFarDL,
    gLinkAdultRightFistAndMirrorShieldNearDL,
    gLinkChildRightFistNearDL,
    gLinkAdultRightFistAndMirrorShieldFarDL,
    gLinkChildRightFistFarDL,
};

static Gfx* sPlayerShieldSwordAndSheathDLists[] = {
    gLinkAdultSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
    gLinkAdultSwordAndSheathNearDL,
    gLinkChildDekuShieldSwordAndSheathNearDL,
    gLinkAdultSwordAndSheathFarDL,
    gLinkChildDekuShieldSwordAndSheathFarDL,
    gLinkAdultHylianShieldSheathAndSwordNearDL,
    gLinkChildHylianShieldSwordAndSheathNearDL,
    gLinkAdultHylianShieldSheathAndSwordFarDL,
    gLinkChildHylianShieldSwordAndSheathFarDL,
    gLinkAdultMirrorShieldSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultMirrorShieldSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
};

static Gfx* D_80125D68[] = {
    NULL, NULL, NULL, NULL, NULL, gLinkChildDekuShieldWithMatrixDL, NULL, gLinkChildDekuShieldWithMatrixDL,
};

static Gfx* sPlayerShieldAndSheathDLists[] = {
    gLinkAdultSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildSheathFarDL,
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldAndSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildDekuShieldAndSheathFarDL,
    gLinkAdultHylianShieldAndSheathNearDL,
    gLinkChildHylianShieldAndSheathNearDL,
    gLinkAdultHylianShieldAndSheathFarDL,
    gLinkChildHylianShieldAndSheathFarDL,
    gLinkAdultMirrorShieldAndSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultMirrorShieldAndSheathFarDL,
    gLinkChildSheathFarDL,
    NULL,
    NULL,
    NULL,
    NULL,
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldWithMatrixDL,
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldWithMatrixDL,
};

Gfx* gPlayerLeftHandAndGiantsKnifeDLists[] = {
    gLinkAdultLeftFistAndGiantsKnifeNearDL,       gLinkChildLeftHandHoldingMasterSwordDL,
    gLinkAdultLeftFistAndGiantsKnifeFarDL,        gLinkChildLeftHandHoldingMasterSwordDL,
    gLinkAdultLeftFistAndBrokenGiantsKnifeNearDL, gLinkChildLeftHandHoldingMasterSwordDL,
    gLinkAdultLeftFistAndBrokenGiantsKnifeFarDL,  gLinkChildLeftHandHoldingMasterSwordDL,
};

Gfx* gPlayerLeftHandDLists[] = {
    gLinkAdultLeftHandNearDL,
    gLinkChildLeftHandNearDL,
    gLinkAdultLeftHandFarDL,
    gLinkChildLeftHandFarDL,
};

Gfx* gPlayerLeftFistDLists[] = {
    gLinkAdultLeftFistNearDL,
    gLinkChildLeftFistNearDL,
    gLinkAdultLeftFistFarDL,
    gLinkChildLeftFistFarDL,
};

static Gfx* sPlayerLeftHandAndSwordDLists[] = {
    gLinkAdultLeftFistAndMasterSwordNearDL,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    gLinkAdultLeftFistAndMasterSwordFarDL,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

static Gfx* sPlayerLeftHandAndSwordDLists2[] = {
    gLinkAdultLeftFistAndMasterSwordNearDL,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    gLinkAdultLeftFistAndMasterSwordFarDL,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

static Gfx* sPlayerRightHandDLists[] = {
    gLinkAdultRightHandNearDL,
    gLinkChildRightHandNearDL,
    gLinkAdultRightHandFarDL,
    gLinkChildRightHandFarDL,
};

static Gfx* sPlayerRightFistDLists[] = {
    gLinkAdultRightFistNearDL,
    gLinkChildRightFistNearDL,
    gLinkAdultRightFistFarDL,
    gLinkChildRightFistFarDL,
};

static Gfx* sPlayerRightHandAndBowDLists[] = {
    gLinkAdultRightFistAndFairyBowNearDL,
    gLinkChildRightHandHoldingFairySlingshotNearDL,
    gLinkAdultRightFistAndFairyBowFarDL,
    gLinkChildRightHandHoldingFairySlingshotFarDL,
};

static Gfx* sPlayerSwordAndSheathDLists[] = {
    gLinkAdultSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
};

static Gfx* sPlayerSheathDLists[] = {
    gLinkAdultSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildSheathFarDL,
};

static Gfx* sPlayerWaistDLists[] = {
    gLinkAdultWaistNearDL,
    gLinkChildWaistNearDL,
    gLinkAdultWaistFarDL,
    gLinkChildWaistFarDL,
};

static Gfx* sPlayerRightHandAndBowDLists2[] = {
    gLinkAdultRightFistAndFairyBowNearDL,
    gLinkChildRightHandHoldingFairySlingshotNearDL,
    gLinkAdultRightFistAndFairyBowFarDL,
    gLinkChildRightHandHoldingFairySlingshotFarDL,
};

static Gfx* sPlayerRightHandAndFairyOcarinaDLists[] = {
    gLinkAdultRightHandAndOOTNearDL,
    gLinkChildRightHandHoldingFairyOcarinaNearDL,
    gLinkAdultRightHandAndOOTFarDL,
    gLinkChildRightHandHoldingFairyOcarinaFarDL,
};

static Gfx* sPlayerRightHandAndOOTDLists[] = {
    gLinkAdultRightHandAndOOTNearDL,
    gLinkChildRightHandAndOOTNearDL,
    gLinkAdultRightHandAndOOTFarDL,
    gLinkChildRightHandAndOOTFarDL,
};

static Gfx* sPlayerRightHandAndHookshotDLists[] = {
    gLinkAdultRightFistAndHookshotNearDL,
    gLinkChildRightHandNearDL,
    gLinkAdultRightFistAndHookshotNearDL,
    gLinkChildRightHandFarDL,
};

static Gfx* sPlayerMegatonHammerDLists[] = {
    gLinkAdultRightFistAndMegatonHammerNearDL,
    gLinkChildLeftHandNearDL,
    gLinkAdultLeftFistAndMegatonHammerFarDL,
    gLinkChildLeftHandFarDL,
};

Gfx* gPlayerLeftHandAndBoomerangDLists[] = {
    gLinkAdultLeftHandNearDL,
    gLinkChildLeftFistAndBoomerangNearDL,
    gLinkAdultLeftHandFarDL,
    gLinkChildLeftFistAndBoomerangFarDL,
};

static Gfx* sPlayerBottleHandDLists[] = {
    gLinkAdultBottleHandNearDL,
    gLinkChildBottleHandNearDL,
    gLinkAdultBottleHandNearDL,
    gLinkChildBottleHandNearDL,
};

static Gfx* sPlayerFPLeftForearmDLists[] = {
    gLinkAdultFPLeftForearmDL,
    NULL,
};

static Gfx* sPlayerFPLeftHandDLists[] = {
    gLinkAdultFPLeftHandDL,
    NULL,
};

static Gfx* sPlayerShoulderDLists[] = {
    gLinkAdultRightShoulderNearDL,
    gLinkChildLeftShoulderNearDL,
};

static Gfx* sPlayerFPRightForearmDLists[] = {
    gLinkAdultFPRightForearmDL,
    NULL,
};

static Gfx* sPlayerFPRightHandAndBowDLists[] = {
    gLinkAdultFPRightHandAndFairyBowDL,
    gLinkChildFPRightHandAndFairySlingshotDL,
};

// Indexed by model types (left hand, right hand, sheath or waist)
static Gfx** sPlayerDListGroups[] = {
    gPlayerLeftHandDLists,
    gPlayerLeftFistDLists,
    sPlayerLeftHandAndSwordDLists2,
    sPlayerLeftHandAndSwordDLists,
    gPlayerLeftHandAndGiantsKnifeDLists,
    sPlayerMegatonHammerDLists,
    gPlayerLeftHandAndBoomerangDLists,
    sPlayerBottleHandDLists,
    sPlayerRightHandDLists,
    sPlayerRightFistDLists,
    sPlayerRightHandAndShieldDLists,
    sPlayerRightHandAndBowDLists,
    sPlayerRightHandAndBowDLists2,
    sPlayerRightHandAndFairyOcarinaDLists,
    sPlayerRightHandAndOOTDLists,
    sPlayerRightHandAndHookshotDLists,
    sPlayerSwordAndSheathDLists,
    sPlayerSheathDLists,
    sPlayerShieldSwordAndSheathDLists,
    sPlayerShieldAndSheathDLists,
    sPlayerWaistDLists,
};

Gfx gCullBackDList[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gCullFrontDList[] = {
    gsSPSetGeometryMode(G_CULL_FRONT),
    gsSPEndDisplayList(),
};

void Player_SetModelsForHoldingShield(Player* this) {
    if ((this->stateFlags1 & 0x400000) &&
        ((this->itemActionParam < 0) || (this->itemActionParam == this->heldItemActionParam))) {
        if (!Player_HoldsTwoHandedWeapon(this) && !Player_IsChildWithHylianShield(this)) {
            this->rightHandType = 10;
            this->rightHandDLists = &sPlayerDListGroups[10][(void)0, gSaveContext.linkAge];
            if (this->sheathType == 18) {
                this->sheathType = 16;
            } else if (this->sheathType == 19) {
                this->sheathType = 17;
            }
            this->sheathDLists = &sPlayerDListGroups[this->sheathType][(void)0, gSaveContext.linkAge];
            this->modelAnimType = 2;
            this->itemActionParam = -1;
        }
    }
}

void Player_SetModels(Player* this, s32 modelGroup) {
    this->leftHandType = gPlayerModelTypes[modelGroup][1];
    this->rightHandType = gPlayerModelTypes[modelGroup][2];
    this->sheathType = gPlayerModelTypes[modelGroup][3];

    this->leftHandDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][1]][(void)0, gSaveContext.linkAge];
    this->rightHandDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][2]][(void)0, gSaveContext.linkAge];
    this->sheathDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][3]][(void)0, gSaveContext.linkAge];
    this->waistDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][4]][(void)0, gSaveContext.linkAge];

    Player_SetModelsForHoldingShield(this);
}

void Player_SetModelGroup(Player* this, s32 modelGroup) {
    this->modelGroup = modelGroup;

    if (modelGroup == 1) {
        this->modelAnimType = 0;
    } else {
        this->modelAnimType = gPlayerModelTypes[modelGroup][0];
    }

    if ((this->modelAnimType < 3) && (this->currentShield == PLAYER_SHIELD_NONE)) {
        this->modelAnimType = 0;
    }

    Player_SetModels(this, modelGroup);
}

void Player_UnsetItemAction(Player* this) {
    this->itemActionParam = this->heldItemActionParam;
    Player_SetModelGroup(this, Player_ActionToModelGroup(this, this->heldItemActionParam));
    this->unk_6AD = 0;
}

void Player_SetEquipmentData(GlobalContext* globalCtx, Player* this) {
    if (this->csMode != 0x56) {
        this->currentShield = CUR_EQUIP_VALUE(EQUIP_SHIELD);
        this->currentTunic = CUR_EQUIP_VALUE(EQUIP_TUNIC) - 1;
        this->currentBoots = CUR_EQUIP_VALUE(EQUIP_BOOTS) - 1;
        this->currentSword = B_BTN_ITEM;
        Player_SetModelGroup(this, Player_ActionToModelGroup(this, this->heldItemActionParam));
        Player_SetMovementBehavior(globalCtx, this);
    }
}

void Player_UpdateBottleHeld(GlobalContext* globalCtx, Player* this, s32 item, s32 actionParam) {
    Inventory_UpdateBottleItem(globalCtx, item, this->heldItemButton);

    if (item != ITEM_BOTTLE) {
        this->heldItemId = item;
        this->heldItemActionParam = actionParam;
    }

    this->itemActionParam = actionParam;
}

void Player_UnsetTargeting(Player* this) {
    this->unk_664 = NULL;
    this->stateFlags2 &= ~0x2000;
}

void Player_InitTargeting(Player* this) {
    if ((this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x8A00000) ||
        (!(this->stateFlags1 & 0xC0000) && ((this->actor.world.pos.y - this->actor.floorHeight) < 100.0f))) {
        this->stateFlags1 &= ~0x400F8000;
    } else if (!(this->stateFlags1 & 0x2C0000)) {
        this->stateFlags1 |= 0x80000;
    }

    Player_UnsetTargeting(this);
}

void Player_SetTargeting(GlobalContext* globalCtx, Actor* actor) {
    Player* this = PLAYER;

    Player_InitTargeting(this);
    this->unk_664 = actor;
    this->unk_684 = actor;
    this->stateFlags1 |= 0x10000;
    Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, actor);
    Camera_ChangeMode(Gameplay_GetCamera(globalCtx, 0), 2);
}

s32 Player_IsRidingHorse(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return (this->stateFlags1 & 0x800000);
}

s32 func_8008EF44(GlobalContext* globalCtx, s32 ammo) {
    globalCtx->shootingGalleryStatus = ammo + 1;
    return 1;
}

s32 Player_IsBurningStickInRange(GlobalContext* globalCtx, Vec3f* pos, f32 radius, f32 height) {
    Player* this = PLAYER;
    Vec3f diff;
    s32 pad;

    if ((this->heldItemActionParam == PLAYER_AP_STICK) && (this->unk_860 != 0)) {
        Math_Vec3f_Diff(&this->swordInfo[0].tip, pos, &diff);
        return ((SQ(diff.x) + SQ(diff.z)) <= SQ(radius)) && (0.0f <= diff.y) && (diff.y <= height);
    } else {
        return false;
    }
}

s32 Player_GetStrength(void) {
    s32 strengthUpgrade = CUR_UPG_VALUE(UPG_STRENGTH);

    if (LINK_IS_ADULT) {
        return strengthUpgrade;
    } else if (strengthUpgrade != 0) {
        return PLAYER_STR_BRACELET;
    } else {
        return PLAYER_STR_NONE;
    }
}

u8 Player_GetMask(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return this->currentMask;
}

Player* Player_UnsetMask(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    this->currentMask = PLAYER_MASK_NONE;

    return this;
}

s32 Player_HasMirrorShieldEquipped(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return (this->currentShield == PLAYER_SHIELD_MIRROR);
}

s32 Player_HasMirrorShieldSetToDraw(GlobalContext* globalCtx) {
    Player* this = PLAYER;

    return (this->rightHandType == 10) && (this->currentShield == PLAYER_SHIELD_MIRROR);
}

s32 Player_ActionToMagicSpell(Player* this, s32 actionParam) {
    s32 magicSpell = actionParam - PLAYER_AP_MAGIC_SPELL_15;

    if ((magicSpell >= 0) && (magicSpell < 6)) {
        return magicSpell;
    } else {
        return -1;
    }
}

s32 Player_IsHoldingHookshot(Player* this) {
    return (this->heldItemActionParam == PLAYER_AP_HOOKSHOT) || (this->heldItemActionParam == PLAYER_AP_LONGSHOT);
}

s32 Player_IsShootingHookshot(Player* this) {
    return Player_IsHoldingHookshot(this) && (this->heldActor == NULL);
}

s32 Player_ActionToSword(s32 actionParam) {
    s32 sword = actionParam - PLAYER_AP_FISHING_POLE;

    if ((sword > 0) && (sword < 6)) {
        return sword;
    } else {
        return 0;
    }
}

s32 Player_GetSwordHeld(Player* this) {
    return Player_ActionToSword(this->heldItemActionParam);
}

s32 Player_HoldsTwoHandedWeapon(Player* this) {
    if ((this->heldItemActionParam >= PLAYER_AP_SWORD_BGS) && (this->heldItemActionParam <= PLAYER_AP_HAMMER)) {
        return 1;
    } else {
        return 0;
    }
}

s32 Player_HoldsBrokenKnife(Player* this) {
    return (this->heldItemActionParam == PLAYER_AP_SWORD_BGS) && (gSaveContext.swordHealth <= 0.0f);
}

s32 Player_ActionToBottle(Player* this, s32 actionParam) {
    s32 bottle = actionParam - PLAYER_AP_BOTTLE;

    if ((bottle >= 0) && (bottle < 13)) {
        return bottle;
    } else {
        return -1;
    }
}

s32 Player_GetBottleHeld(Player* this) {
    return Player_ActionToBottle(this, this->heldItemActionParam);
}

s32 Player_ActionToExplosive(Player* this, s32 actionParam) {
    s32 explosive = actionParam - PLAYER_AP_BOMB;

    if ((explosive >= 0) && (explosive < 2)) {
        return explosive;
    } else {
        return -1;
    }
}

s32 Player_GetExplosiveHeld(Player* this) {
    return Player_ActionToExplosive(this, this->heldItemActionParam);
}

s32 func_8008F2BC(Player* this, s32 actionParam) {
    s32 sword = 0;

    if (actionParam != PLAYER_AP_LAST_USED) {
        sword = actionParam - PLAYER_AP_SWORD_MASTER;
        if ((sword < 0) || (sword >= 3)) {
            goto return_neg;
        }
    }

    return sword;

return_neg:
    return -1;
}

s32 func_8008F2F8(GlobalContext* globalCtx) {
    Player* this = PLAYER;
    TextTriggerEntry* triggerEntry;
    s32 var;

    if (globalCtx->roomCtx.curRoom.unk_02 == 3) { // Room is hot
        var = 0;
    } else if ((this->unk_840 > 80) &&
               ((this->currentBoots == PLAYER_BOOTS_IRON) || (this->unk_840 >= 300))) { // Deep underwater
        var = ((this->currentBoots == PLAYER_BOOTS_IRON) && (this->actor.bgCheckFlags & 1)) ? 1 : 3;
    } else if (this->stateFlags1 & 0x8000000) { // Swimming
        var = 2;
    } else {
        return 0;
    }

    // Trigger general textboxes under certain conditions, like "It's so hot in here!"
    if (!Player_InCsMode(globalCtx)) {
        triggerEntry = &sTextTriggers[var];

        if (0) {}

        if ((triggerEntry->flag != 0) && !(gSaveContext.textTriggerFlags & triggerEntry->flag) &&
            (((var == 0) && (this->currentTunic != PLAYER_TUNIC_GORON)) ||
             (((var == 1) || (var == 3)) && (this->currentBoots == PLAYER_BOOTS_IRON) &&
              (this->currentTunic != PLAYER_TUNIC_ZORA)))) {
            func_8010B680(globalCtx, triggerEntry->textId, NULL);
            gSaveContext.textTriggerFlags |= triggerEntry->flag;
        }
    }

    return var + 1;
}

static u8 sEyeMouthIndexes[][2] = {
    { 0, 0 }, { 1, 0 }, { 2, 0 }, { 0, 0 }, { 1, 0 }, { 2, 0 }, { 4, 0 }, { 5, 1 },
    { 7, 2 }, { 0, 2 }, { 3, 0 }, { 4, 0 }, { 2, 2 }, { 1, 1 }, { 0, 2 }, { 0, 0 },
};

/**
 * Link's eye and mouth textures are placed at the exact same place in adult and child Link's respective object
 * files. This allows the array to only contain the symbols for one file and have it apply to both. This is a
 * problem for shiftability, and changes will need to be made in the code to account for this in a modding scenario.
 * The symbols from adult Link's object are used here.
 */

static void* sEyeTextures[] = {
    gLinkAdultEyesOpenTex,      gLinkAdultEyesHalfTex,  gLinkAdultEyesClosedfTex,  gLinkAdultEyesRollLeftTex,
    gLinkAdultEyesRollRightTex, gLinkAdultEyesShockTex, gLinkAdultEyesLookDownTex, gLinkAdultEyesHurtTex,
};

static void* sMouthTextures[] = {
    gLinkAdultMouthClosedTex,
    gLinkAdultMouthGrittingTeethTex,
    gLinkAdultMouthShoutTex,
    gLinkAdultMouthSmileTex,
};

void Player_DrawImpl(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTable, s32 dListCount, s32 lod, s32 tunic,
                     s32 boots, s32 face, OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw,
                     void* data) {
    static Color_RGB8 tunicColors[] = {
        { 30, 105, 27 }, // Kokiri Tunic
        { 100, 20, 0 },  // Goron Tunic
        { 0, 60, 100 },  // Zora Tunic
    };
    Color_RGB8* color;
    s32 eyeIndex = (jointTable[22].x & 0xF) - 1;
    s32 mouthIndex = (jointTable[22].x >> 4) - 1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 1721);

    if (eyeIndex < 0) {
        eyeIndex = sEyeMouthIndexes[face][0];
    }

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[eyeIndex]));

    if (mouthIndex < 0) {
        mouthIndex = sEyeMouthIndexes[face][1];
    }

    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[mouthIndex]));

    color = &tunicColors[tunic];
    gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

    sDListsLodOffset = lod * 2;

    SkelAnime_DrawFlexLod(globalCtx, skeleton, jointTable, dListCount, overrideLimbDraw, postLimbDraw, data, lod);

    if ((overrideLimbDraw != Player_OverrideLimbDraw2) && (overrideLimbDraw != Player_OverrideLimbDraw3) &&
        (gSaveContext.gameMode != 3)) {
        if (LINK_IS_ADULT) {
            s32 strengthUpgrade = CUR_UPG_VALUE(UPG_STRENGTH);

            if (strengthUpgrade >= PLAYER_STR_SILVER_G) {
                static Color_RGB8 gauntletColors[] = {
                    { 255, 255, 255 },
                    { 254, 207, 15 },
                };

                gDPPipeSync(POLY_OPA_DISP++);

                color = &gauntletColors[strengthUpgrade - PLAYER_STR_SILVER_G];
                gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

                gSPDisplayList(POLY_OPA_DISP++, gLinkAdultLeftSilverAndGoldenGauntletForearmDL);
                gSPDisplayList(POLY_OPA_DISP++, gLinkAdultRightSilverAndGoldenGauntletForearmDL);
                gSPDisplayList(POLY_OPA_DISP++, (sLeftHandType == 0) ? gLinkAdultLeftSilverGauntletHandDL
                                                                     : gLinkAdultLeftGoldenGauntletHandDL);
                gSPDisplayList(POLY_OPA_DISP++, (sRightHandType == 8) ? gLinkAdultRightSilverGauntletHandDL
                                                                      : gLinkAdultRightGoldenGauntletHandDL);
            }

            if (boots != 0) {
                static Gfx* bootDListGroups[][2] = {
                    { gLinkAdultLeftIronBootDL, gLinkAdultRightIronBootDL },
                    { gLinkAdultLeftHoverBootDL, gLinkAdultRightHoverBootDL },
                };
                Gfx** bootDLists = bootDListGroups[boots - 1];

                gSPDisplayList(POLY_OPA_DISP++, bootDLists[0]);
                gSPDisplayList(POLY_OPA_DISP++, bootDLists[1]);
            }
        } else {
            if (Player_GetStrength() > PLAYER_STR_NONE) {
                gSPDisplayList(POLY_OPA_DISP++, gLinkChildGoronBraceletDL);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 1803);
}

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

void Player_FeetIK(GlobalContext* globalCtx, Player* this, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot,
                   s32 thighLimbIndex, s32 shinLimbIndex, s32 footLimbIndex) {
    static Vec3f D_80126038[] = { { 1304.0f, 0.0f, 0.0f }, { 695.0f, 0.0f, 0.0f } };
    static f32 D_80126050[] = { 1265.0f, 826.0f };
    static f32 D_80126058[] = { SQ(13.04f), SQ(6.95f) };
    static f32 D_80126060[] = { 10.019104f, -19.925102f };
    static f32 D_80126068[] = { 5.0f, 3.0f };
    static Vec3f D_80126070 = { 0.0f, -300.0f, 0.0f };
    Vec3f spA4;
    Vec3f sp98;
    Vec3f footprintPos;
    CollisionPoly* sp88;
    s32 sp84;
    f32 posB;
    f32 sp7C;
    f32 sp78;
    f32 aimProjectedPos;
    f32 sp70;
    f32 sp6C;
    f32 screenPos;
    f32 w;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s16 temp1;
    s16 temp2;
    s32 temp3;

    if ((this->actor.scale.y >= 0.0f) && !(this->stateFlags1 & 0x80) &&
        (Player_ActionToMagicSpell(this, this->itemActionParam) < 0)) {
        s32 pad;

        sp7C = D_80126058[(void)0, gSaveContext.linkAge];
        sp78 = D_80126060[(void)0, gSaveContext.linkAge];
        aimProjectedPos = D_80126068[(void)0, gSaveContext.linkAge] - this->unk_6C4;

        Matrix_Push();
        Matrix_JointPosition(pos, rot);
        Matrix_MultVec3f(&sZeroVec, &spA4);
        Matrix_JointPosition(&D_80126038[(void)0, gSaveContext.linkAge], &skelAnime->jointTable[shinLimbIndex]);
        Matrix_Translate(D_80126050[(void)0, gSaveContext.linkAge], 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_MultVec3f(&sZeroVec, &sp98);
        Matrix_MultVec3f(&D_80126070, &footprintPos);
        Matrix_Pop();

        footprintPos.y += 15.0f;

        posB = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &sp88, &sp84, &this->actor, &footprintPos) +
               aimProjectedPos;

        if (sp98.y < posB) {
            sp70 = sp98.x - spA4.x;
            sp6C = sp98.y - spA4.y;
            screenPos = sp98.z - spA4.z;

            w = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(screenPos));
            sp60 = (SQ(w) + sp78) / (2.0f * w);

            sp58 = sp7C - SQ(sp60);
            sp58 = (sp7C < SQ(sp60)) ? 0.0f : sqrtf(sp58);

            sp54 = Math_FAtan2F(sp58, sp60);

            sp6C = posB - spA4.y;

            w = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(screenPos));
            sp60 = (SQ(w) + sp78) / (2.0f * w);
            sp5C = w - sp60;

            sp58 = sp7C - SQ(sp60);
            sp58 = (sp7C < SQ(sp60)) ? 0.0f : sqrtf(sp58);

            sp50 = Math_FAtan2F(sp58, sp60);

            temp1 = (M_PI - (Math_FAtan2F(sp5C, sp58) + ((M_PI / 2) - sp50))) * (0x8000 / M_PI);
            temp1 = temp1 - skelAnime->jointTable[shinLimbIndex].z;

            if ((s16)(ABS(skelAnime->jointTable[shinLimbIndex].x) + ABS(skelAnime->jointTable[shinLimbIndex].y)) < 0) {
                temp1 += 0x8000;
            }

            temp2 = (sp50 - sp54) * (0x8000 / M_PI);
            rot->z -= temp2;

            skelAnime->jointTable[thighLimbIndex].z = skelAnime->jointTable[thighLimbIndex].z - temp2;
            skelAnime->jointTable[shinLimbIndex].z = skelAnime->jointTable[shinLimbIndex].z + temp1;
            skelAnime->jointTable[footLimbIndex].z = skelAnime->jointTable[footLimbIndex].z + temp2 - temp1;

            temp3 = func_80041D4C(&globalCtx->colCtx, sp88, sp84);

            if ((temp3 >= 2) && (temp3 < 4) && !SurfaceType_IsWallDamage(&globalCtx->colCtx, sp88, sp84)) {
                footprintPos.y = posB;
                EffectSsGFire_Spawn(globalCtx, &footprintPos);
            }
        }
    }
}

s32 Player_OverrideLimbDrawImpl(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx) {
    Player* this = (Player*)thisx;

    if (limbIndex == PLAYER_LIMB_ROOT) {
        sLeftHandType = this->leftHandType;
        sRightHandType = this->rightHandType;
        sPartsPosPtr = &this->swordInfo[2].base;

        if (LINK_IS_CHILD) {
            if (!(this->skelAnime.moveFlags & 4) || (this->skelAnime.moveFlags & 1)) {
                pos->x *= 0.64f;
                pos->z *= 0.64f;
            }

            if (!(this->skelAnime.moveFlags & 4) || (this->skelAnime.moveFlags & 2)) {
                pos->y *= 0.64f;
            }
        }

        pos->y -= this->unk_6C4;

        if (this->unk_6C2 != 0) {
            Matrix_Translate(pos->x, ((Math_CosS(this->unk_6C2) - 1.0f) * 200.0f) + pos->y, pos->z, MTXMODE_APPLY);
            Matrix_RotateX(this->unk_6C2 * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
            pos->x = pos->y = pos->z = 0.0f;
            rot->x = rot->y = rot->z = 0;
        }
    } else {
        if (*dList != NULL) {
            sPartsPosPtr++;
        }

        if (limbIndex == PLAYER_LIMB_HEAD) {
            rot->x += this->unk_6BA;
            rot->y -= this->unk_6B8;
            rot->z += this->unk_6B6;
        } else if (limbIndex == PLAYER_LIMB_UPPER) {
            if (this->unk_6B0 != 0) {
                Matrix_RotateZ(0x44C * (M_PI / 0x8000), MTXMODE_APPLY);
                Matrix_RotateY(this->unk_6B0 * (M_PI / 0x8000), MTXMODE_APPLY);
            }
            if (this->unk_6BE != 0) {
                Matrix_RotateY(this->unk_6BE * (M_PI / 0x8000), MTXMODE_APPLY);
            }
            if (this->unk_6BC != 0) {
                Matrix_RotateX(this->unk_6BC * (M_PI / 0x8000), MTXMODE_APPLY);
            }
            if (this->unk_6C0 != 0) {
                Matrix_RotateZ(this->unk_6C0 * (M_PI / 0x8000), MTXMODE_APPLY);
            }
        } else if (limbIndex == PLAYER_LIMB_L_THIGH) {
            Player_FeetIK(globalCtx, this, &this->skelAnime, pos, rot, PLAYER_LIMB_L_THIGH, PLAYER_LIMB_L_SHIN,
                          PLAYER_LIMB_L_FOOT);
        } else if (limbIndex == PLAYER_LIMB_R_THIGH) {
            Player_FeetIK(globalCtx, this, &this->skelAnime, pos, rot, PLAYER_LIMB_R_THIGH, PLAYER_LIMB_R_SHIN,
                          PLAYER_LIMB_R_FOOT);
            return false;
        } else {
            return false;
        }
    }

    return false;
}

s32 Player_OverrideLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    Player* this = (Player*)thisx;

    if (!Player_OverrideLimbDrawImpl(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (limbIndex == PLAYER_LIMB_L_HAND) {
            Gfx** dLists = this->leftHandDLists;

            if ((sLeftHandType == 4) && (gSaveContext.swordHealth <= 0.0f)) {
                dLists += 4;
            } else if ((sLeftHandType == 6) && (this->stateFlags1 & 0x2000000)) {
                dLists = &gPlayerLeftHandDLists[gSaveContext.linkAge];
                sLeftHandType = 0;
            } else if ((this->leftHandType == 0) && (this->actor.speedXZ > 2.0f) && !(this->stateFlags1 & 0x8000000)) {
                dLists = &gPlayerLeftFistDLists[gSaveContext.linkAge];
                sLeftHandType = 1;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            Gfx** dLists = this->rightHandDLists;

            if (sRightHandType == 10) {
                dLists += this->currentShield * 4;
            } else if ((this->rightHandType == 8) && (this->actor.speedXZ > 2.0f) && !(this->stateFlags1 & 0x8000000)) {
                dLists = &sPlayerRightFistDLists[gSaveContext.linkAge];
                sRightHandType = 9;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_SHEATH) {
            Gfx** dLists = this->sheathDLists;

            if ((this->sheathType == 18) || (this->sheathType == 19)) {
                dLists += this->currentShield * 4;
                if ((LINK_IS_CHILD) && (this->currentShield < PLAYER_SHIELD_HYLIAN) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                    dLists += 16;
                }
            } else if ((LINK_IS_CHILD) && ((this->sheathType == 16) || (this->sheathType == 17)) &&
                       (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                dLists = D_80125D68;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_WAIST) {
            *dList = this->waistDLists[sDListsLodOffset];
        }
    }

    return false;
}

s32 Player_OverrideLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    Player* this = (Player*)thisx;

    if (!Player_OverrideLimbDrawImpl(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (this->unk_6AD != 2) {
            *dList = NULL;
        } else if (limbIndex == PLAYER_LIMB_L_FOREARM) {
            *dList = sPlayerFPLeftForearmDLists[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_L_HAND) {
            *dList = sPlayerFPLeftHandDLists[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_SHOULDER) {
            *dList = sPlayerShoulderDLists[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_FOREARM) {
            *dList = sPlayerFPRightForearmDLists[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            *dList = Player_IsHoldingHookshot(this) ? gLinkAdultFPRightHandAndHookshotDL
                                                    : sPlayerFPRightHandAndBowDLists[(void)0, gSaveContext.linkAge];
        } else {
            *dList = NULL;
        }
    }

    return false;
}

s32 Player_OverrideLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    if (!Player_OverrideLimbDrawImpl(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        *dList = NULL;
    }

    return false;
}

u8 Player_SetQuadWeaponCollision(GlobalContext* globalCtx, ColliderQuad* collider, WeaponInfo* weaponInfo,
                                 Vec3f* newTip, Vec3f* newBase) {
    if (!weaponInfo->active) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->tip, newTip);
        Math_Vec3f_Copy(&weaponInfo->base, newBase);
        weaponInfo->active = true;
        return true;
    } else if ((weaponInfo->tip.x == newTip->x) && (weaponInfo->tip.y == newTip->y) &&
               (weaponInfo->tip.z == newTip->z) && (weaponInfo->base.x == newBase->x) &&
               (weaponInfo->base.y == newBase->y) && (weaponInfo->base.z == newBase->z)) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }
        return false;
    } else {
        if (collider != NULL) {
            Collider_SetQuadVertices(collider, newBase, newTip, &weaponInfo->base, &weaponInfo->tip);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->base, newBase);
        Math_Vec3f_Copy(&weaponInfo->tip, newTip);
        weaponInfo->active = true;
        return true;
    }
}

void Player_SetShieldCollision(GlobalContext* globalCtx, Player* this, ColliderQuad* collider, Vec3f* quadSrc) {
    static u8 shieldColTypes[PLAYER_SHIELD_MAX] = {
        COLTYPE_METAL,
        COLTYPE_WOOD,
        COLTYPE_METAL,
        COLTYPE_METAL,
    };

    if (this->stateFlags1 & 0x400000) {
        Vec3f quadDest[4];

        this->shieldQuad.base.colType = shieldColTypes[this->currentShield];

        Matrix_MultVec3f(&quadSrc[0], &quadDest[0]);
        Matrix_MultVec3f(&quadSrc[1], &quadDest[1]);
        Matrix_MultVec3f(&quadSrc[2], &quadDest[2]);
        Matrix_MultVec3f(&quadSrc[3], &quadDest[3]);
        Collider_SetQuadVertices(collider, &quadDest[0], &quadDest[1], &quadDest[2], &quadDest[3]);

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
    }
}

static Vec3f sSwordTipPos1 = { 5000.0f, 400.0f, 0.0f };
static Vec3f sSwordTipPos2 = { 5000.0f, -400.0f, 1000.0f };
static Vec3f sSwordTipPos3 = { 5000.0f, 1400.0f, -1000.0f };
static Vec3f sSwordBasePos1 = { 0.0f, 400.0f, 0.0f };
static Vec3f sSwordBasePos2 = { 0.0f, 1400.0f, -1000.0f };
static Vec3f sSwordBasePos3 = { 0.0f, -400.0f, 1000.0f };

void Player_SetSwordAttack(GlobalContext* globalCtx, Player* this, Vec3f* newTipPos) {
    Vec3f newBasePos[3];

    Matrix_MultVec3f(&sSwordBasePos1, &newBasePos[0]);
    Matrix_MultVec3f(&sSwordBasePos2, &newBasePos[1]);
    Matrix_MultVec3f(&sSwordBasePos3, &newBasePos[2]);

    if (Player_SetQuadWeaponCollision(globalCtx, NULL, &this->swordInfo[0], &newTipPos[0], &newBasePos[0]) &&
        !(this->stateFlags1 & 0x400000)) {
        EffectBlure_AddVertex(Effect_GetByIndex(this->swordEffectIndex), &this->swordInfo[0].tip,
                              &this->swordInfo[0].base);
    }

    if ((this->swordState > 0) && ((this->swordAnimation < 0x18) || (this->stateFlags2 & 0x20000))) {
        Player_SetQuadWeaponCollision(globalCtx, &this->swordQuads[0], &this->swordInfo[1], &newTipPos[1],
                                      &newBasePos[1]);
        Player_SetQuadWeaponCollision(globalCtx, &this->swordQuads[1], &this->swordInfo[2], &newTipPos[2],
                                      &newBasePos[2]);
    }
}

void Player_DrawGetItemImpl(GlobalContext* globalCtx, Player* this, Vec3f* refPos, s32 drawIdPlusOne) {
    f32 height = (this->exchangeItemId != EXCH_ITEM_NONE) ? 6.0f : 14.0f;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2401);

    gSegments[6] = VIRTUAL_TO_PHYSICAL(this->giObjectSegment);

    gSPSegment(POLY_OPA_DISP++, 0x06, this->giObjectSegment);
    gSPSegment(POLY_XLU_DISP++, 0x06, this->giObjectSegment);

    Matrix_Translate(refPos->x + (3.3f * Math_SinS(this->actor.shape.rot.y)), refPos->y + height,
                     refPos->z + ((3.3f + (IREG(90) / 10.0f)) * Math_CosS(this->actor.shape.rot.y)), MTXMODE_NEW);
    Matrix_RotateRPY(0, globalCtx->gameplayFrames * 1000, 0, MTXMODE_APPLY);
    Matrix_Scale(0.2f, 0.2f, 0.2f, MTXMODE_APPLY);

    GetItem_Draw(globalCtx, drawIdPlusOne - 1);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2421);
}

void Player_DrawGetItem(GlobalContext* globalCtx, Player* this) {
    if (!this->giObjectLoading || !osRecvMesg(&this->giObjectLoadQueue, NULL, OS_MESG_NOBLOCK)) {
        this->giObjectLoading = false;
        Player_DrawGetItemImpl(globalCtx, this, &sGetItemRefPos, ABS(this->unk_862));
    }
}

void Player_GetSwordTip(Player* this, Vec3f* swordTip) {
    sSwordTipPos2.x = sSwordTipPos1.x;

    if (this->unk_845 >= 3) {
        this->unk_845 += 1;
        sSwordTipPos2.x *= 1.0f + ((9 - this->unk_845) * 0.1f);
    }

    sSwordTipPos2.x += 1200.0f;
    sSwordTipPos3.x = sSwordTipPos2.x;

    Matrix_MultVec3f(&sSwordTipPos1, &swordTip[0]);
    Matrix_MultVec3f(&sSwordTipPos2, &swordTip[1]);
    Matrix_MultVec3f(&sSwordTipPos3, &swordTip[2]);
}

void Player_DrawHookshotPointer(GlobalContext* globalCtx, Player* this, f32 arg2) {
    static Vec3f posOffset = { -500.0f, -100.0f, 0.0f };
    CollisionPoly* polygon;
    s32 bgId;
    Vec3f posA;
    Vec3f posB;
    Vec3f aimProjectedPos; // position that the hookshot is aimed towards

    posOffset.z = 0.0f;
    Matrix_MultVec3f(&posOffset, &posA);
    posOffset.z = arg2;
    Matrix_MultVec3f(&posOffset, &posB);

    if (1) {}

    if (BgCheck_AnyLineTest3(&globalCtx->colCtx, &posA, &posB, &aimProjectedPos, &polygon, 1, 1, 1, 1, &bgId)) {
        Vec3f screenPos;
        f32 w;
        f32 scale;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2572);

        OVERLAY_DISP = Gfx_CallSetupDL(OVERLAY_DISP, 0x07);

        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &aimProjectedPos, &screenPos, &w);

        scale = (w < 200.0f) ? 0.08f : (w / 200.0f) * 0.08f;

        Matrix_Translate(aimProjectedPos.x, aimProjectedPos.y, aimProjectedPos.z, MTXMODE_NEW);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2587),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(OVERLAY_DISP++, 0x06, globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        gSPDisplayList(OVERLAY_DISP++, gLinkHookshotPointerDL);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2592);
    }
}

typedef struct {
    /* 0x00 */ void* dList;
    /* 0x04 */ Vec3f pos;
} BowStringInfo; // size = 0x10

void Player_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f eye = { 1100.0f, -700.0f, 0.0f };
    Player* this = (Player*)thisx;

    if (*dList != NULL) {
        Matrix_MultVec3f(&sZeroVec, sPartsPosPtr);
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        MtxF matrix;
        Actor* hookedActor;

        Math_Vec3f_Copy(&this->leftHandPos, sPartsPosPtr);

        if (this->itemActionParam == PLAYER_AP_STICK) {
            Vec3f swordTip[3];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2633);

            if (this->actor.scale.y >= 0.0f) {
                sSwordTipPos1.x = this->unk_85C * 5000.0f;
                Player_GetSwordTip(this, swordTip);
                if (this->swordState != 0) {
                    Player_SetSwordAttack(globalCtx, this, swordTip);
                } else {
                    Math_Vec3f_Copy(&this->swordInfo[0].tip, &swordTip[0]);
                }
            }

            Matrix_Translate(-428.26f, 267.2f, -33.82f, MTXMODE_APPLY);
            Matrix_RotateRPY(-0x8000, 0, 0x4000, MTXMODE_APPLY);
            Matrix_Scale(1.0f, this->unk_85C, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2653),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gLinkChildLinkDekuStickDL);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2656);
        } else if ((this->actor.scale.y >= 0.0f) && (this->swordState != 0)) {
            static f32 swordLengths[] = {
                0.0f, 4000.0f, 3000.0f, 5500.0f, 0.0f, 2500.0f,
            };
            Vec3f swordTip[3];

            if (Player_HoldsBrokenKnife(this)) {
                sSwordTipPos1.x = 1500.0f;
            } else {
                sSwordTipPos1.x = swordLengths[Player_GetSwordHeld(this)];
            }

            Player_GetSwordTip(this, swordTip);
            Player_SetSwordAttack(globalCtx, this, swordTip);
        } else if ((*dList != NULL) && (this->leftHandType == 7)) {
            static Gfx* bottleDLists[] = { gLinkAdultBottleDL, gLinkChildBottleDL };
            static Color_RGB8 bottleColors[] = {
                { 255, 255, 255 }, { 80, 80, 255 },   { 255, 100, 255 }, { 0, 0, 255 }, { 255, 0, 255 },
                { 255, 0, 255 },   { 200, 200, 100 }, { 255, 0, 0 },     { 0, 0, 255 }, { 0, 255, 0 },
                { 255, 255, 255 }, { 255, 255, 255 }, { 80, 80, 255 },
            };
            Color_RGB8* bottleColor = &bottleColors[Player_ActionToBottle(this, this->itemActionParam)];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2710);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2712),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetEnvColor(POLY_XLU_DISP++, bottleColor->r, bottleColor->g, bottleColor->b, 0);
            gSPDisplayList(POLY_XLU_DISP++, bottleDLists[((void)0, gSaveContext.linkAge)]);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2717);
        }

        if (this->actor.scale.y >= 0.0f) {
            if (!Player_IsHoldingHookshot(this) && ((hookedActor = this->heldActor) != NULL)) {
                if (this->stateFlags1 & 0x200) {
                    static Vec3f hookActorPos = { 398.0f, 1419.0f, 244.0f };

                    Matrix_MultVec3f(&hookActorPos, &hookedActor->world.pos);
                    Matrix_RotateRPY(0x69E8, -0x5708, 0x458E, MTXMODE_APPLY);
                    Matrix_Get(&matrix);
                    func_800D20CC(&matrix, &hookedActor->world.rot, 0);
                    hookedActor->shape.rot = hookedActor->world.rot;
                } else if (this->stateFlags1 & 0x800) {
                    Vec3s leftHandAngle;

                    Matrix_Get(&matrix);
                    func_800D20CC(&matrix, &leftHandAngle, 0);

                    if (hookedActor->flags & 0x20000) {
                        hookedActor->world.rot.x = hookedActor->shape.rot.x = leftHandAngle.x - this->unk_3BC.x;
                    } else {
                        hookedActor->world.rot.y = hookedActor->shape.rot.y = this->actor.shape.rot.y + this->unk_3BC.y;
                    }
                }
            } else {
                Matrix_Get(&this->mf_9E0);
                func_800D20CC(&this->mf_9E0, &this->unk_3BC, 0);
            }
        }
    } else if (limbIndex == PLAYER_LIMB_R_HAND) {
        Actor* heldActor = this->heldActor;

        if (this->rightHandType == 0xFF) {
            Matrix_Get(&this->shieldMf);
        } else if ((this->rightHandType == 11) || (this->rightHandType == 12)) {
            static BowStringInfo bowStringInfo[] = {
                { gLinkAdultBowStringDL, { 0.0f, -360.4f, 0.0f } },
                { gLinkChildSlinghotStringDL, { 606.0f, 236.0f, 0.0f } },
            };
            BowStringInfo* bowStringInfoPtr = &bowStringInfo[gSaveContext.linkAge];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2783);

            Matrix_Push();
            Matrix_Translate(bowStringInfoPtr->pos.x, bowStringInfoPtr->pos.y, bowStringInfoPtr->pos.z, MTXMODE_APPLY);

            if ((this->stateFlags1 & 0x200) && (this->unk_860 >= 0) && (this->unk_834 <= 10)) {
                Vec3f bowPos;
                f32 distXYZ;

                Matrix_MultVec3f(&sZeroVec, &bowPos);
                distXYZ = Math_Vec3f_DistXYZ(sPartsPosPtr, &bowPos);

                this->unk_858 = distXYZ - 3.0f;
                if (distXYZ < 3.0f) {
                    this->unk_858 = 0.0f;
                } else {
                    this->unk_858 *= 1.6f;
                    if (this->unk_858 > 1.0f) {
                        this->unk_858 = 1.0f;
                    }
                }

                this->unk_85C = -0.5f;
            }

            Matrix_Scale(1.0f, this->unk_858, 1.0f, MTXMODE_APPLY);

            if (LINK_IS_CHILD) {
                Matrix_RotateZ(this->unk_858 * -0.2f, MTXMODE_APPLY);
            }

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2804),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, bowStringInfoPtr->dList);

            Matrix_Pop();

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2809);
        } else if ((this->actor.scale.y >= 0.0f) && (this->rightHandType == 10)) {
            static Vec3f shieldQuadVertices[] = {
                { -4500.0f, -3000.0f, -600.0f },
                { 1500.0f, -3000.0f, -600.0f },
                { -4500.0f, 3000.0f, -600.0f },
                { 1500.0f, 3000.0f, -600.0f },
            };

            Matrix_Get(&this->shieldMf);
            Player_SetShieldCollision(globalCtx, this, &this->shieldQuad, shieldQuadVertices);
        }

        if (this->actor.scale.y >= 0.0f) {
            if ((this->heldItemActionParam == PLAYER_AP_HOOKSHOT) ||
                (this->heldItemActionParam == PLAYER_AP_LONGSHOT)) {
                static Vec3f hookshotHandPos = { 100.0f, 1500.0f, 0.0f };

                Matrix_MultVec3f(&hookshotHandPos, &this->unk_3C8);

                if (heldActor != NULL) {
                    static Vec3f hookshotHookPos = { 100.0f, 1640.0f, 0.0f };
                    MtxF sp44;
                    s32 pad;

                    Matrix_MultVec3f(&hookshotHookPos, &heldActor->world.pos);
                    Matrix_RotateRPY(0, -0x4000, -0x4000, MTXMODE_APPLY);
                    Matrix_Get(&sp44);
                    func_800D20CC(&sp44, &heldActor->world.rot, 0);
                    heldActor->shape.rot = heldActor->world.rot;

                    if (func_8002DD78(this) != 0) {
                        Matrix_Translate(500.0f, 300.0f, 0.0f, MTXMODE_APPLY);
                        Player_DrawHookshotPointer(
                            globalCtx, this, (this->heldItemActionParam == PLAYER_AP_HOOKSHOT) ? 38600.0f : 77600.0f);
                    }
                }
            }

            if ((this->unk_862 != 0) || ((func_8002DD6C(this) == 0) && (heldActor != NULL))) {
                if (!(this->stateFlags1 & 0x400) && (this->unk_862 != 0) && (this->exchangeItemId != EXCH_ITEM_NONE)) {
                    Math_Vec3f_Copy(&sGetItemRefPos, &this->leftHandPos);
                } else {
                    sGetItemRefPos.x = (this->bodyPartsPos[15].x + this->leftHandPos.x) * 0.5f;
                    sGetItemRefPos.y = (this->bodyPartsPos[15].y + this->leftHandPos.y) * 0.5f;
                    sGetItemRefPos.z = (this->bodyPartsPos[15].z + this->leftHandPos.z) * 0.5f;
                }

                if (this->unk_862 == 0) {
                    Math_Vec3f_Copy(&heldActor->world.pos, &sGetItemRefPos);
                }
            }
        }
    } else if (this->actor.scale.y >= 0.0f) {
        if (limbIndex == PLAYER_LIMB_SHEATH) {
            if ((this->rightHandType != 10) && (this->rightHandType != 0xFF)) {
                static Vec3f shieldCarryPos[] = {
                    { -3000.0f, -3000.0f, -900.0f },
                    { 3000.0f, -3000.0f, -900.0f },
                    { -3000.0f, 3000.0f, -900.0f },
                    { 3000.0f, 3000.0f, -900.0f },
                };
                static Vec3f shieldCarryOffset = { 630.0f, 100.0f, -30.0f };
                static Vec3s shieldCarryRot = { 0, 0, 0x7FFF };

                if (Player_IsChildWithHylianShield(this)) {
                    Player_SetShieldCollision(globalCtx, this, &this->shieldQuad, shieldCarryPos);
                }

                Matrix_JointPosition(&shieldCarryOffset, &shieldCarryRot);
                Matrix_Get(&this->shieldMf);
            }
        } else if (limbIndex == PLAYER_LIMB_HEAD) {
            Matrix_MultVec3f(&eye, &this->actor.focus.pos);
        } else {
            static Vec3f footPos[] = {
                { 200.0f, 300.0f, 0.0f },
                { 200.0f, 200.0f, 0.0f },
            };
            Vec3f* footPosPtr = &footPos[((void)0, gSaveContext.linkAge)];

            Actor_SetFeetPos(&this->actor, limbIndex, PLAYER_LIMB_L_FOOT, footPosPtr, PLAYER_LIMB_R_FOOT, footPosPtr);
        }
    }
}

/**
 * Handles loading data into the player segment in the pause menu.
 * Returns the size of the data copied.
 */
size_t Player_LoadPauseSegmentData(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime) {
    s16 linkObjectId = gLinkObjectIds[(void)0, gSaveContext.linkAge];
    size_t size;
    void* ptr;

    size = gObjectTable[OBJECT_GAMEPLAY_KEEP].vromEnd - gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart;
    ptr = segment + 0x3800;
    DmaMgr_SendRequest1(ptr, gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart, size, "../z_player_lib.c", 2982);

    size = gObjectTable[linkObjectId].vromEnd - gObjectTable[linkObjectId].vromStart;
    ptr = segment + 0x8800;
    DmaMgr_SendRequest1(ptr, gObjectTable[linkObjectId].vromStart, size, "../z_player_lib.c", 2988);

    ptr = (void*)ALIGN16((u32)ptr + size);

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + 0x3800);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(segment + 0x8800);

    SkelAnime_InitLink(globalCtx, skelAnime, gPlayerSkelHeaders[(void)0, gSaveContext.linkAge], &gPlayerAnim_003238, 9,
                       ptr, ptr, PLAYER_LIMB_MAX);

    return size + 0x8800 + 0x90;
}

s32 Player_PauseOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* arg) {
    static u8 D_801261F8[] = { 2, 2, 5 };
    u8* ptr = arg;
    u8 modelGroup = D_801261F8[ptr[0] - 1];
    s32 type;
    s32 dListOffset = 0;
    Gfx** dLists;

    if ((modelGroup == 2) && LINK_IS_CHILD && (ptr[1] == 2)) {
        modelGroup = 1;
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        type = gPlayerModelTypes[modelGroup][1];
        sLeftHandType = type;
        if ((type == 4) && (gSaveContext.swordHealth <= 0.0f)) {
            dListOffset = 4;
        }
    } else if (limbIndex == PLAYER_LIMB_R_HAND) {
        type = gPlayerModelTypes[modelGroup][2];
        sRightHandType = type;
        if (type == 10) {
            dListOffset = ptr[1] * 4;
        }
    } else if (limbIndex == PLAYER_LIMB_SHEATH) {
        type = gPlayerModelTypes[modelGroup][3];
        if ((type == 18) || (type == 19)) {
            dListOffset = ptr[1] * 4;
        }
    } else if (limbIndex == PLAYER_LIMB_WAIST) {
        type = gPlayerModelTypes[modelGroup][4];
    } else {
        return 0;
    }

    dLists = &sPlayerDListGroups[type][(void)0, gSaveContext.linkAge];
    *dList = dLists[dListOffset];

    return 0;
}

void Player_PauseDrawImpl(GlobalContext* globalCtx, void* seg04, void* seg06, SkelAnime* skelAnime, Vec3f* pos,
                          Vec3s* rot, f32 scale, s32 sword, s32 tunic, s32 shield, s32 boots, s32 width, s32 height,
                          Vec3f* eye, Vec3f* at, f32 fovy, void* img1, void* img2) {
    static Vp viewport = { 128, 224, 511, 0, 128, 224, 511, 0 };
    static Lights1 lights1 = gdSPDefLights1(80, 80, 80, 255, 255, 255, 84, 84, 172);
    static Vec3f lightDir = { 89.8f, 0.0f, 89.8f };
    u8 sp12C[2];
    Gfx* opaRef;
    Gfx* xluRef;
    u16 perspNorm;
    Mtx* perspMtx = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx));
    Mtx* lookAtMtx = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3129);

    { s32 pad[2]; }

    opaRef = POLY_OPA_DISP;
    POLY_OPA_DISP++;

    xluRef = POLY_XLU_DISP;
    POLY_XLU_DISP++;

    gSPDisplayList(WORK_DISP++, POLY_OPA_DISP);
    gSPDisplayList(WORK_DISP++, POLY_XLU_DISP);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);

    gDPPipeSync(POLY_OPA_DISP++);

    gSPLoadGeometryMode(POLY_OPA_DISP++, 0);
    gSPTexture(POLY_OPA_DISP++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_SHADE, G_CC_SHADE);
    gDPSetOtherMode(POLY_OPA_DISP++,
                    G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_PERSP | G_CYC_FILL | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    gSPLoadGeometryMode(POLY_OPA_DISP++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);
    gDPSetScissor(POLY_OPA_DISP++, G_SC_NON_INTERLACE, 0, 0, width, height);
    gSPClipRatio(POLY_OPA_DISP++, FRUSTRATIO_1);

    gDPSetColorImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, img2);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(POLY_OPA_DISP++, (GPACK_RGBA5551(255, 255, 240, 0) << 16) | GPACK_RGBA5551(255, 255, 240, 0));
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, width - 1, height - 1);

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetColorImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, img1);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(POLY_OPA_DISP++, (GPACK_RGBA5551(0, 0, 0, 1) << 16) | GPACK_RGBA5551(0, 0, 0, 1));
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, width - 1, height - 1);

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetDepthImage(POLY_OPA_DISP++, img2);

    viewport.vp.vscale[0] = viewport.vp.vtrans[0] = width * 2;
    viewport.vp.vscale[1] = viewport.vp.vtrans[1] = height * 2;
    gSPViewport(POLY_OPA_DISP++, &viewport);

    guPerspective(perspMtx, &perspNorm, fovy, (f32)width / (f32)height, 10.0f, 4000.0f, 1.0f);

    gSPPerspNormalize(POLY_OPA_DISP++, perspNorm);
    gSPMatrix(POLY_OPA_DISP++, perspMtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    guLookAt(lookAtMtx, eye->x, eye->y, eye->z, at->x, at->y, at->z, 0.0f, 1.0f, 0.0f);

    gSPMatrix(POLY_OPA_DISP++, lookAtMtx, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    sp12C[0] = sword;
    sp12C[1] = shield;

    func_800D1694(pos->x, pos->y, pos->z, rot);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    gSPSegment(POLY_OPA_DISP++, 0x04, seg04);
    gSPSegment(POLY_OPA_DISP++, 0x06, seg06);

    gSPSetLights1(POLY_OPA_DISP++, lights1);

    func_80093C80(globalCtx);

    POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP++, 0, 0, 0, 0, 997, 1000);

    func_8002EABC(pos, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x0C, gCullBackDList);

    Player_DrawImpl(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, 0, tunic, boots, 0,
                    Player_PauseOverrideLimbDraw, NULL, &sp12C);

    gSPEndDisplayList(POLY_OPA_DISP++);
    gSPEndDisplayList(POLY_XLU_DISP++);

    gSPBranchList(opaRef, POLY_OPA_DISP);
    gSPBranchList(xluRef, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3288);
}

/**
 * Draws the player in the equip screen on the pause menu.
 */
void Player_PauseDraw(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot, f32 scale,
                      s32 sword, s32 tunic, s32 shield, s32 boots) {
    static Vec3f eye = { 0.0f, 0.0f, -400.0f };
    static Vec3f at = { 0.0f, 0.0f, 0.0f };
    Vec3s* destTable;
    Vec3s* srcTable;
    s32 i;

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + 0x3800);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(segment + 0x8800);

    if (LINK_IS_CHILD) {
        if (shield == PLAYER_SHIELD_DEKU) {
            srcTable = D_040020D0;
        } else {
            srcTable = D_04002040;
        }
    } else {
        if (sword == 3) {
            srcTable = D_04002160;
        } else if (shield != PLAYER_SHIELD_NONE) {
            srcTable = D_04002280;
        } else {
            srcTable = D_040021F0;
        }
    }

    srcTable = SEGMENTED_TO_VIRTUAL(srcTable);
    destTable = skelAnime->jointTable;
    for (i = 0; i < skelAnime->limbCount; i++) {
        *destTable++ = *srcTable++;
    }

    Player_PauseDrawImpl(globalCtx, segment + 0x3800, segment + 0x8800, skelAnime, pos, rot, scale, sword, tunic,
                         shield, boots, 64, 112, &eye, &at, 60.0f, globalCtx->state.gfxCtx->curFrameBuffer,
                         globalCtx->state.gfxCtx->curFrameBuffer + 0x1C00);
}
