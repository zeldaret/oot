#include "global.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_link_child/object_link_child.h"

typedef struct {
    /* 0x00 */ u8 flag;
    /* 0x02 */ u16 textId;
} TextTriggerEntry; // size = 0x04

typedef struct {
    /* 0x00 */ void* dList;
    /* 0x04 */ Vec3f pos;
} BowStringData; // size = 0x10

FlexSkeletonHeader* gPlayerSkelHeaders[] = { 0x060377F4, &gLinkChildSkel };

s16 sBootData[PLAYER_BOOTS_MAX][17] = {
    { 200, 1000, 300, 700, 550, 270, 600, 350, 800, 600, -100, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 1000, 0, 800, 300, -160, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 600, 600, 800, 550, -100, 600, 540, 270, 25, 0, 130 },
    { 200, 1000, 300, 700, 380, 400, 0, 300, 800, 500, -100, 600, 590, 750, 125, 200, 130 },
    { 80, 800, 150, 700, 480, 270, 600, 50, 800, 550, -40, 400, 540, 270, 25, 0, 80 },
    { 200, 1000, 300, 800, 500, 400, 800, 400, 800, 550, -100, 600, 540, 750, 125, 400, 200 },
};

// Used to map action params to model groups
u8 sActionModelGroups[] = {
    3,  15, 10, 2,  2,  5,  10, 11, 6,  6, 6, 6, 6, 6, 6, 6, 9, 9, 7, 7, 8, 3, 3, 6, 3, 3, 3, 3, 12, 13, 14, 14, 14, 14,
    14, 14, 14, 14, 14, 14, 14, 14, 14, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,  3,  3,  3,  3,
};

TextTriggerEntry sTextTriggers[] = {
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

Gfx* D_80125CE8[] = {
    0x060226E0, gLinkChildRightHandClosedNearDL,        0x06027690, gLinkChildRightHandClosedFarDL,
    0x060226E0, gLinkChildRightFistAndDekuShieldNearDL, 0x06027690, gLinkChildRightFistAndDekuShieldFarDL,
    0x06022970, gLinkChildRightHandClosedNearDL,        0x06027918, gLinkChildRightHandClosedFarDL,
    0x060241C0, gLinkChildRightHandClosedNearDL,        0x06028B40, gLinkChildRightHandClosedFarDL,
};

Gfx* D_80125D28[] = {
    0x06023160, gLinkChildSwordAndSheathNearDL,
    0x06027F00, gLinkChildSwordAndSheathFarDL,
    0x06023160, gLinkChildDekuShieldSwordAndSheathNearDL,
    0x06027F00, gLinkChildDekuShieldSwordAndSheathFarDL,
    0x06020A78, gLinkChildHylianShieldSwordAndSheathNearDL,
    0x06025FB8, gLinkChildHylianShieldSwordAndSheathFarDL,
    0x060211B8, gLinkChildSwordAndSheathNearDL,
    0x060264F0, gLinkChildSwordAndSheathFarDL,
};

Gfx* D_80125D68[] = {
    NULL, NULL, NULL, NULL, NULL, gLinkChildDekuShieldWithMatrixDL, NULL, gLinkChildDekuShieldWithMatrixDL,
};

Gfx* D_80125D88[] = {
    0x060249D8, gLinkChildSheathNearDL,
    0x06028150, gLinkChildSheathFarDL,
    0x060249D8, gLinkChildDekuShieldAndSheathNearDL,
    0x06028150, gLinkChildDekuShieldAndSheathFarDL,
    0x06020E70, gLinkChildHylianShieldAndSheathNearDL,
    0x060262B8, gLinkChildHylianShieldAndSheathFarDL,
    0x060216B0, gLinkChildSheathNearDL,
    0x06026910, gLinkChildSheathFarDL,
    NULL,       NULL,
    NULL,       NULL,
    0x060249D8, gLinkChildDekuShieldWithMatrixDL,
    0x060249D8, gLinkChildDekuShieldWithMatrixDL,
};

Gfx* D_80125DE8[] = {
    0x060238C8, gLinkChildLeftHandHoldingMasterSwordDL, 0x060286B8, gLinkChildLeftHandHoldingMasterSwordDL,
    0x06023D50, gLinkChildLeftHandHoldingMasterSwordDL, 0x060291E8, gLinkChildLeftHandHoldingMasterSwordDL,
};

Gfx* D_80125E08[] = {
    0x06021AA8,
    gLinkChildLeftHandNearDL,
    0x06026C58,
    gLinkChildLeftHandFarDL,
};

Gfx* D_80125E18[] = {
    0x06021CE8,
    gLinkChildLeftFistNearDL,
    0x06026DF0,
    gLinkChildLeftFistFarDL,
};

Gfx* D_80125E28[] = {
    0x06021F78,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    0x06027078,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

Gfx* D_80125E38[] = {
    0x06021F78,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    0x06027078,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

Gfx* D_80125E48[] = {
    0x06022498,
    gLinkChildRightHandNearDL,
    0x060274F8,
    gLinkChildRightHandFarDL,
};

Gfx* D_80125E58[] = {
    0x060226E0,
    gLinkChildRightHandClosedNearDL,
    0x06027690,
    gLinkChildRightHandClosedFarDL,
};

Gfx* D_80125E68[] = {
    0x06022DA8,
    gLinkChildRightHandHoldingFairySlingshotNearDL,
    0x06027B88,
    gLinkChildRightHandHoldingFairySlingshotFarDL,
};

Gfx* D_80125E78[] = {
    0x06023160,
    gLinkChildSwordAndSheathNearDL,
    0x06027F00,
    gLinkChildSwordAndSheathFarDL,
};

Gfx* D_80125E88[] = {
    0x060249D8,
    gLinkChildSheathNearDL,
    0x06028150,
    gLinkChildSheathFarDL,
};

Gfx* D_80125E98[] = {
    0x06035330,
    gLinkChildWaistNearDL,
    0x0602F530,
    gLinkChildWaistFarDL,
};

Gfx* D_80125EA8[] = {
    0x06022DA8,
    gLinkChildRightHandHoldingFairySlingshotNearDL,
    0x06027B88,
    gLinkChildRightHandHoldingFairySlingshotFarDL,
};

Gfx* D_80125EB8[] = {
    0x06024698,
    gLinkChildRightHandHoldingFairyOcarinaNearDL,
    0x06028F58,
    gLinkChildRightHandHoldingFairyOcarinaFarDL,
};

Gfx* D_80125EC8[] = {
    0x06024698,
    gLinkChildRightHandAndOOTNearDL,
    0x06028F58,
    gLinkChildRightHandHoldingOOTFarDL,
};

Gfx* D_80125ED8[] = {
    0x06024D70,
    gLinkChildRightHandNearDL,
    0x06024D70,
    gLinkChildRightHandFarDL,
};

Gfx* D_80125EE8[] = {
    0x060233E0,
    gLinkChildLeftHandNearDL,
    0x06028288,
    gLinkChildLeftHandFarDL,
};

Gfx* D_80125EF8[] = {
    0x06021AA8,
    gLinkChildLeftFistAndBoomerangNearDL,
    0x06026C58,
    gLinkChildLeftFistAndBoomerangFarDL,
};

Gfx* D_80125F08[] = {
    0x06024B58,
    gLinkChildLeftHandUpNearDL,
    0x06024B58,
    gLinkChildLeftHandUpNearDL,
};

Gfx* D_80125F18[] = {
    0x06029918,
    NULL,
};

Gfx* D_80125F20[] = {
    0x06029C20,
    NULL,
};

Gfx* D_80125F28[] = {
    0x06036E58,
    gLinkChildLeftShoulderNearDL,
};

Gfx* D_80125F30[] = {
    0x06029FA0,
    NULL,
};

Gfx* D_80125F38[] = {
    0x0602A248,
    gLinkChildRightArmStretchedSlingshotDL,
};

// Indexed by model types (left hand, right hand, sheath or waist)
Gfx** sPlayerDListGroups[] = {
    D_80125E08, D_80125E18, D_80125E38, D_80125E28, D_80125DE8, D_80125EE8, D_80125EF8,
    D_80125F08, D_80125E48, D_80125E58, D_80125CE8, D_80125E68, D_80125EA8, D_80125EB8,
    D_80125EC8, D_80125ED8, D_80125E78, D_80125E88, D_80125D28, D_80125D88, D_80125E98,
};

Gfx gCullBackDList[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gCullFrontDList[] = {
    gsSPSetGeometryMode(G_CULL_FRONT),
    gsSPEndDisplayList(),
};

Vec3f* D_80160000;
s32 sDListsLodOffset;
Vec3f sGetItemRefPos;
s32 D_80160014;
s32 D_80160018;

void Player_SetBootData(GlobalContext* globalCtx, Player* this) {
    s32 currentBoots;
    s16* bootRegs;

    REG(27) = 2000;
    REG(48) = 370;

    currentBoots = this->currentBoots;
    if (currentBoots == PLAYER_BOOTS_NORMAL) {
        if (!LINK_IS_ADULT) {
            currentBoots = PLAYER_BOOTS_NORMAL_CHILD;
        }
    } else if (currentBoots == PLAYER_BOOTS_IRON) {
        if (this->stateFlags1 & 0x8000000) {
            currentBoots = PLAYER_BOOTS_IRON_UNDERWATER;
        }
        REG(27) = 500;
        REG(48) = 100;
    }

    bootRegs = sBootData[currentBoots];
    REG(19) = bootRegs[0];
    REG(30) = bootRegs[1];
    REG(32) = bootRegs[2];
    REG(34) = bootRegs[3];
    REG(35) = bootRegs[4];
    REG(36) = bootRegs[5];
    REG(37) = bootRegs[6];
    REG(38) = bootRegs[7];
    REG(43) = bootRegs[8];
    REG(45) = bootRegs[9];
    REG(68) = bootRegs[10];
    REG(69) = bootRegs[11];
    IREG(66) = bootRegs[12];
    IREG(67) = bootRegs[13];
    IREG(68) = bootRegs[14];
    IREG(69) = bootRegs[15];
    MREG(95) = bootRegs[16];

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
    Player* this = GET_PLAYER(globalCtx);

    return Player_InBlockingCsMode(globalCtx, this) || (this->unk_6AD == 4);
}

s32 func_8008E9C4(Player* this) {
    return (this->stateFlags1 & 0x10);
}

s32 Player_IsChildWithHylianShield(Player* this) {
    return gSaveContext.linkAge != 0 && (this->currentShield == PLAYER_SHIELD_HYLIAN);
}

s32 Player_ActionToModelGroup(Player* this, s32 actionParam) {
    s32 modelGroup = sActionModelGroups[actionParam];

    if ((modelGroup == 2) && Player_IsChildWithHylianShield(this)) {
        return 1;
    } else {
        return modelGroup;
    }
}

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

void func_8008EC70(Player* this) {
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
        Player_SetBootData(globalCtx, this);
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

void func_8008EDF0(Player* this) {
    this->unk_664 = NULL;
    this->stateFlags2 &= ~0x2000;
}

void func_8008EE08(Player* this) {
    if ((this->actor.bgCheckFlags & 1) || (this->stateFlags1 & 0x8A00000) ||
        (!(this->stateFlags1 & 0xC0000) && ((this->actor.world.pos.y - this->actor.floorHeight) < 100.0f))) {
        this->stateFlags1 &= ~0x400F8000;
    } else if (!(this->stateFlags1 & 0x2C0000)) {
        this->stateFlags1 |= 0x80000;
    }

    func_8008EDF0(this);
}

void func_8008EEAC(GlobalContext* globalCtx, Actor* actor) {
    Player* this = GET_PLAYER(globalCtx);

    func_8008EE08(this);
    this->unk_664 = actor;
    this->unk_684 = actor;
    this->stateFlags1 |= 0x10000;
    Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, actor);
    Camera_ChangeMode(Gameplay_GetCamera(globalCtx, 0), 2);
}

s32 func_8008EF30(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

    return (this->stateFlags1 & 0x800000);
}

s32 func_8008EF44(GlobalContext* globalCtx, s32 ammo) {
    globalCtx->shootingGalleryStatus = ammo + 1;
    return 1;
}

s32 Player_IsBurningStickInRange(GlobalContext* globalCtx, Vec3f* pos, f32 xzRange, f32 yRange) {
    Player* this = GET_PLAYER(globalCtx);
    Vec3f diff;
    s32 pad;

    if ((this->heldItemActionParam == PLAYER_AP_STICK) && (this->unk_860 != 0)) {
        Math_Vec3f_Diff(&this->swordInfo[0].tip, pos, &diff);
        return ((SQ(diff.x) + SQ(diff.z)) <= SQ(xzRange)) && (0.0f <= diff.y) && (diff.y <= yRange);
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
    Player* this = GET_PLAYER(globalCtx);

    return this->currentMask;
}

Player* Player_UnsetMask(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

    this->currentMask = PLAYER_MASK_NONE;

    return this;
}

s32 Player_HasMirrorShieldEquipped(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

    return (this->currentShield == PLAYER_SHIELD_MIRROR);
}

s32 Player_HasMirrorShieldSetToDraw(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

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

s32 Player_HoldsHookshot(Player* this) {
    return (this->heldItemActionParam == PLAYER_AP_HOOKSHOT) || (this->heldItemActionParam == PLAYER_AP_LONGSHOT);
}

s32 func_8008F128(Player* this) {
    return Player_HoldsHookshot(this) && (this->heldActor == NULL);
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
    Player* this = GET_PLAYER(globalCtx);
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
            Message_StartTextbox(globalCtx, triggerEntry->textId, NULL);
            gSaveContext.textTriggerFlags |= triggerEntry->flag;
        }
    }

    return var + 1;
}

u8 sEyeMouthIndexes[][2] = {
    { 0, 0 }, { 1, 0 }, { 2, 0 }, { 0, 0 }, { 1, 0 }, { 2, 0 }, { 4, 0 }, { 5, 1 },
    { 7, 2 }, { 0, 2 }, { 3, 0 }, { 4, 0 }, { 2, 2 }, { 1, 1 }, { 0, 2 }, { 0, 0 },
};

/**
 * Link's eye and mouth textures are placed at the exact same place in adult and child Link's respective object files.
 * This allows the array to only contain the symbols for one file and have it apply to both. This is a problem for
 * shiftability, and changes will need to be made in the code to account for this in a modding scenario. The symbols
 * from adult Link's object are used here.
 */
void* sEyeTextures[] = {
    0x06000000, 0x06000800, 0x06001000, 0x06001800, 0x06002000, 0x06002800, 0x06003000, 0x06003800,
};

void* sMouthTextures[] = {
    0x06004000,
    0x06004400,
    0x06004800,
    0x06004C00,
};

Color_RGB8 sTunicColors[] = {
    { 30, 105, 27 },
    { 100, 20, 0 },
    { 0, 60, 100 },
};

Color_RGB8 sGauntletColors[] = {
    { 255, 255, 255 },
    { 254, 207, 15 },
};

Gfx* sBootDListGroups[][2] = {
    { 0x06025918, 0x06025A60 },
    { 0x06025BA8, 0x06025DB0 },
};

void func_8008F470(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTable, s32 dListCount, s32 lod, s32 tunic,
                   s32 boots, s32 face, OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw,
                   void* data) {
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

    color = &sTunicColors[tunic];
    gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

    sDListsLodOffset = lod * 2;

    SkelAnime_DrawFlexLod(globalCtx, skeleton, jointTable, dListCount, overrideLimbDraw, postLimbDraw, data, lod);

    if ((overrideLimbDraw != func_800902F0) && (overrideLimbDraw != func_80090440) && (gSaveContext.gameMode != 3)) {
        if (LINK_IS_ADULT) {
            s32 strengthUpgrade = CUR_UPG_VALUE(UPG_STRENGTH);

            if (strengthUpgrade >= 2) { // silver or gold gauntlets
                gDPPipeSync(POLY_OPA_DISP++);

                color = &sGauntletColors[strengthUpgrade - 2];
                gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

                gSPDisplayList(POLY_OPA_DISP++, D_06025218);
                gSPDisplayList(POLY_OPA_DISP++, D_06025598);
                gSPDisplayList(POLY_OPA_DISP++, (D_80160014 == 0) ? D_060252D8 : D_06025438);
                gSPDisplayList(POLY_OPA_DISP++, (D_80160018 == 8) ? D_06025658 : D_060257B8);
            }

            if (boots != 0) {
                Gfx** bootDLists = sBootDListGroups[boots - 1];

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

Vec3f D_8012602C = { 0.0f, 0.0f, 0.0f };

Vec3f D_80126038[] = {
    { 1304.0f, 0.0f, 0.0f },
    { 695.0f, 0.0f, 0.0f },
};

f32 D_80126050[] = { 1265.0f, 826.0f };
f32 D_80126058[] = { SQ(13.04f), SQ(6.95f) };
f32 D_80126060[] = { 10.019104f, -19.925102f };
f32 D_80126068[] = { 5.0f, 3.0f };

Vec3f D_80126070 = { 0.0f, -300.0f, 0.0f };

void func_8008F87C(GlobalContext* globalCtx, Player* this, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot,
                   s32 thighLimbIndex, s32 shinLimbIndex, s32 footLimbIndex) {
    Vec3f spA4;
    Vec3f sp98;
    Vec3f footprintPos;
    CollisionPoly* sp88;
    s32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
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
        sp74 = D_80126068[(void)0, gSaveContext.linkAge] - this->unk_6C4;

        Matrix_Push();
        Matrix_TranslateRotateZYX(pos, rot);
        Matrix_MultVec3f(&D_8012602C, &spA4);
        Matrix_TranslateRotateZYX(&D_80126038[(void)0, gSaveContext.linkAge], &skelAnime->jointTable[shinLimbIndex]);
        Matrix_Translate(D_80126050[(void)0, gSaveContext.linkAge], 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_MultVec3f(&D_8012602C, &sp98);
        Matrix_MultVec3f(&D_80126070, &footprintPos);
        Matrix_Pop();

        footprintPos.y += 15.0f;

        sp80 = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &sp88, &sp84, &this->actor, &footprintPos) + sp74;

        if (sp98.y < sp80) {
            sp70 = sp98.x - spA4.x;
            sp6C = sp98.y - spA4.y;
            sp68 = sp98.z - spA4.z;

            sp64 = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(sp68));
            sp60 = (SQ(sp64) + sp78) / (2.0f * sp64);

            sp58 = sp7C - SQ(sp60);
            sp58 = (sp7C < SQ(sp60)) ? 0.0f : sqrtf(sp58);

            sp54 = Math_FAtan2F(sp58, sp60);

            sp6C = sp80 - spA4.y;

            sp64 = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(sp68));
            sp60 = (SQ(sp64) + sp78) / (2.0f * sp64);
            sp5C = sp64 - sp60;

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
                footprintPos.y = sp80;
                EffectSsGFire_Spawn(globalCtx, &footprintPos);
            }
        }
    }
}

s32 func_8008FCC8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (limbIndex == PLAYER_LIMB_ROOT) {
        D_80160014 = this->leftHandType;
        D_80160018 = this->rightHandType;
        D_80160000 = &this->swordInfo[2].base;

        if (!LINK_IS_ADULT) {
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
            Matrix_RotateZYX(rot->x, rot->y, rot->z, MTXMODE_APPLY);
            pos->x = pos->y = pos->z = 0.0f;
            rot->x = rot->y = rot->z = 0;
        }
    } else {
        if (*dList != NULL) {
            D_80160000++;
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
            func_8008F87C(globalCtx, this, &this->skelAnime, pos, rot, PLAYER_LIMB_L_THIGH, PLAYER_LIMB_L_SHIN,
                          PLAYER_LIMB_L_FOOT);
        } else if (limbIndex == PLAYER_LIMB_R_THIGH) {
            func_8008F87C(globalCtx, this, &this->skelAnime, pos, rot, PLAYER_LIMB_R_THIGH, PLAYER_LIMB_R_SHIN,
                          PLAYER_LIMB_R_FOOT);
            return false;
        } else {
            return false;
        }
    }

    return false;
}

s32 func_80090014(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (!func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (limbIndex == PLAYER_LIMB_L_HAND) {
            Gfx** dLists = this->leftHandDLists;

            if ((D_80160014 == 4) && (gSaveContext.swordHealth <= 0.0f)) {
                dLists += 4;
            } else if ((D_80160014 == 6) && (this->stateFlags1 & 0x2000000)) {
                dLists = &D_80125E08[gSaveContext.linkAge];
                D_80160014 = 0;
            } else if ((this->leftHandType == 0) && (this->actor.speedXZ > 2.0f) && !(this->stateFlags1 & 0x8000000)) {
                dLists = &D_80125E18[gSaveContext.linkAge];
                D_80160014 = 1;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            Gfx** dLists = this->rightHandDLists;

            if (D_80160018 == 10) {
                dLists += this->currentShield * 4;
            } else if ((this->rightHandType == 8) && (this->actor.speedXZ > 2.0f) && !(this->stateFlags1 & 0x8000000)) {
                dLists = &D_80125E58[gSaveContext.linkAge];
                D_80160018 = 9;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_SHEATH) {
            Gfx** dLists = this->sheathDLists;

            if ((this->sheathType == 18) || (this->sheathType == 19)) {
                dLists += this->currentShield * 4;
                if (!LINK_IS_ADULT && (this->currentShield < PLAYER_SHIELD_HYLIAN) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                    dLists += 16;
                }
            } else if (!LINK_IS_ADULT && ((this->sheathType == 16) || (this->sheathType == 17)) &&
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

s32 func_800902F0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (!func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (this->unk_6AD != 2) {
            *dList = NULL;
        } else if (limbIndex == PLAYER_LIMB_L_FOREARM) {
            *dList = D_80125F18[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_L_HAND) {
            *dList = D_80125F20[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_SHOULDER) {
            *dList = D_80125F28[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_FOREARM) {
            *dList = D_80125F30[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            *dList = Player_HoldsHookshot(this) ? D_0602A738 : D_80125F38[(void)0, gSaveContext.linkAge];
        } else {
            *dList = NULL;
        }
    }

    return false;
}

s32 func_80090440(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if (!func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        *dList = NULL;
    }

    return false;
}

u8 func_80090480(GlobalContext* globalCtx, ColliderQuad* collider, WeaponInfo* weaponInfo, Vec3f* newTip,
                 Vec3f* newBase) {
    if (weaponInfo->active == 0) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->tip, newTip);
        Math_Vec3f_Copy(&weaponInfo->base, newBase);
        weaponInfo->active = 1;
        return 1;
    } else if ((weaponInfo->tip.x == newTip->x) && (weaponInfo->tip.y == newTip->y) &&
               (weaponInfo->tip.z == newTip->z) && (weaponInfo->base.x == newBase->x) &&
               (weaponInfo->base.y == newBase->y) && (weaponInfo->base.z == newBase->z)) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }
        return 0;
    } else {
        if (collider != NULL) {
            Collider_SetQuadVertices(collider, newBase, newTip, &weaponInfo->base, &weaponInfo->tip);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->base, newBase);
        Math_Vec3f_Copy(&weaponInfo->tip, newTip);
        weaponInfo->active = 1;
        return 1;
    }
}

void func_80090604(GlobalContext* globalCtx, Player* this, ColliderQuad* collider, Vec3f* quadSrc) {
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

Vec3f D_80126080 = { 5000.0f, 400.0f, 0.0f };
Vec3f D_8012608C = { 5000.0f, -400.0f, 1000.0f };
Vec3f D_80126098 = { 5000.0f, 1400.0f, -1000.0f };

Vec3f D_801260A4[3] = {
    { 0.0f, 400.0f, 0.0f },
    { 0.0f, 1400.0f, -1000.0f },
    { 0.0f, -400.0f, 1000.0f },
};

void func_800906D4(GlobalContext* globalCtx, Player* this, Vec3f* newTipPos) {
    Vec3f newBasePos[3];

    Matrix_MultVec3f(&D_801260A4[0], &newBasePos[0]);
    Matrix_MultVec3f(&D_801260A4[1], &newBasePos[1]);
    Matrix_MultVec3f(&D_801260A4[2], &newBasePos[2]);

    if (func_80090480(globalCtx, NULL, &this->swordInfo[0], &newTipPos[0], &newBasePos[0]) &&
        !(this->stateFlags1 & 0x400000)) {
        EffectBlure_AddVertex(Effect_GetByIndex(this->swordEffectIndex), &this->swordInfo[0].tip,
                              &this->swordInfo[0].base);
    }

    if ((this->swordState > 0) && ((this->swordAnimation < 0x18) || (this->stateFlags2 & 0x20000))) {
        func_80090480(globalCtx, &this->swordQuads[0], &this->swordInfo[1], &newTipPos[1], &newBasePos[1]);
        func_80090480(globalCtx, &this->swordQuads[1], &this->swordInfo[2], &newTipPos[2], &newBasePos[2]);
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
    Matrix_RotateZYX(0, globalCtx->gameplayFrames * 1000, 0, MTXMODE_APPLY);
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

void func_80090A28(Player* this, Vec3f* vecs) {
    D_8012608C.x = D_80126080.x;

    if (this->unk_845 >= 3) {
        this->unk_845 += 1;
        D_8012608C.x *= 1.0f + ((9 - this->unk_845) * 0.1f);
    }

    D_8012608C.x += 1200.0f;
    D_80126098.x = D_8012608C.x;

    Matrix_MultVec3f(&D_80126080, &vecs[0]);
    Matrix_MultVec3f(&D_8012608C, &vecs[1]);
    Matrix_MultVec3f(&D_80126098, &vecs[2]);
}

void func_80090AFC(GlobalContext* globalCtx, Player* this, f32 arg2) {
    static Vec3f D_801260C8 = { -500.0f, -100.0f, 0.0f };
    CollisionPoly* sp9C;
    s32 bgId;
    Vec3f sp8C;
    Vec3f sp80;
    Vec3f sp74;
    Vec3f sp68;
    f32 sp64;
    f32 sp60;

    D_801260C8.z = 0.0f;
    Matrix_MultVec3f(&D_801260C8, &sp8C);
    D_801260C8.z = arg2;
    Matrix_MultVec3f(&D_801260C8, &sp80);

    if (1) {}

    if (BgCheck_AnyLineTest3(&globalCtx->colCtx, &sp8C, &sp80, &sp74, &sp9C, 1, 1, 1, 1, &bgId)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2572);

        OVERLAY_DISP = Gfx_CallSetupDL(OVERLAY_DISP, 0x07);

        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->viewProjectionMtxF, &sp74, &sp68, &sp64);

        sp60 = (sp64 < 200.0f) ? 0.08f : (sp64 / 200.0f) * 0.08f;

        Matrix_Translate(sp74.x, sp74.y, sp74.z, MTXMODE_NEW);
        Matrix_Scale(sp60, sp60, sp60, MTXMODE_APPLY);

        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2587),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(OVERLAY_DISP++, 0x06, globalCtx->objectCtx.status[this->actor.objBankIndex].segment);
        gSPDisplayList(OVERLAY_DISP++, D_0602CB48);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2592);
    }
}

Vec3f D_801260D4 = { 1100.0f, -700.0f, 0.0f };

f32 sSwordLengths[] = {
    0.0f, 4000.0f, 3000.0f, 5500.0f, 0.0f, 2500.0f,
};

Gfx* sBottleDLists[] = { 0x0602AD58, gLinkChildBottleDL };

Color_RGB8 sBottleColors[] = {
    { 255, 255, 255 }, { 80, 80, 255 },   { 255, 100, 255 }, { 0, 0, 255 }, { 255, 0, 255 },
    { 255, 0, 255 },   { 200, 200, 100 }, { 255, 0, 0 },     { 0, 0, 255 }, { 0, 255, 0 },
    { 255, 255, 255 }, { 255, 255, 255 }, { 80, 80, 255 },
};

Vec3f D_80126128 = { 398.0f, 1419.0f, 244.0f };

BowStringData sBowStringData[] = {
    { 0x0602B108, { 0.0f, -360.4f, 0.0f } },  // bow
    { 0x060221A8, { 606.0f, 236.0f, 0.0f } }, // slingshot
};

Vec3f D_80126154[] = {
    { -4500.0f, -3000.0f, -600.0f },
    { 1500.0f, -3000.0f, -600.0f },
    { -4500.0f, 3000.0f, -600.0f },
    { 1500.0f, 3000.0f, -600.0f },
};

Vec3f D_80126184 = { 100.0f, 1500.0f, 0.0f };
Vec3f D_80126190 = { 100.0f, 1640.0f, 0.0f };

Vec3f D_8012619C[] = {
    { -3000.0f, -3000.0f, -900.0f },
    { 3000.0f, -3000.0f, -900.0f },
    { -3000.0f, 3000.0f, -900.0f },
    { 3000.0f, 3000.0f, -900.0f },
};

Vec3f D_801261CC = { 630.0f, 100.0f, -30.0f };
Vec3s D_801261D8 = { 0, 0, 0x7FFF };

Vec3f D_801261E0[] = {
    { 200.0f, 300.0f, 0.0f },
    { 200.0f, 200.0f, 0.0f },
};

void func_80090D20(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (*dList != NULL) {
        Matrix_MultVec3f(&D_8012602C, D_80160000);
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        MtxF sp14C;
        Actor* hookedActor;

        Math_Vec3f_Copy(&this->leftHandPos, D_80160000);

        if (this->itemActionParam == PLAYER_AP_STICK) {
            Vec3f sp124[3];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2633);

            if (this->actor.scale.y >= 0.0f) {
                D_80126080.x = this->unk_85C * 5000.0f;
                func_80090A28(this, sp124);
                if (this->swordState != 0) {
                    func_800906D4(globalCtx, this, sp124);
                } else {
                    Math_Vec3f_Copy(&this->swordInfo[0].tip, &sp124[0]);
                }
            }

            Matrix_Translate(-428.26f, 267.2f, -33.82f, MTXMODE_APPLY);
            Matrix_RotateZYX(-0x8000, 0, 0x4000, MTXMODE_APPLY);
            Matrix_Scale(1.0f, this->unk_85C, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2653),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gLinkChildLinkDekuStickDL);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2656);
        } else if ((this->actor.scale.y >= 0.0f) && (this->swordState != 0)) {
            Vec3f spE4[3];

            if (Player_HoldsBrokenKnife(this)) {
                D_80126080.x = 1500.0f;
            } else {
                D_80126080.x = sSwordLengths[Player_GetSwordHeld(this)];
            }

            func_80090A28(this, spE4);
            func_800906D4(globalCtx, this, spE4);
        } else if ((*dList != NULL) && (this->leftHandType == 7)) {
            Color_RGB8* bottleColor = &sBottleColors[Player_ActionToBottle(this, this->itemActionParam)];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2710);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2712),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetEnvColor(POLY_XLU_DISP++, bottleColor->r, bottleColor->g, bottleColor->b, 0);
            gSPDisplayList(POLY_XLU_DISP++, sBottleDLists[((void)0, gSaveContext.linkAge)]);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2717);
        }

        if (this->actor.scale.y >= 0.0f) {
            if (!Player_HoldsHookshot(this) && ((hookedActor = this->heldActor) != NULL)) {
                if (this->stateFlags1 & 0x200) {
                    Matrix_MultVec3f(&D_80126128, &hookedActor->world.pos);
                    Matrix_RotateZYX(0x69E8, -0x5708, 0x458E, MTXMODE_APPLY);
                    Matrix_Get(&sp14C);
                    Matrix_MtxFToYXZRotS(&sp14C, &hookedActor->world.rot, 0);
                    hookedActor->shape.rot = hookedActor->world.rot;
                } else if (this->stateFlags1 & 0x800) {
                    Vec3s spB8;

                    Matrix_Get(&sp14C);
                    Matrix_MtxFToYXZRotS(&sp14C, &spB8, 0);

                    if (hookedActor->flags & ACTOR_FLAG_17) {
                        hookedActor->world.rot.x = hookedActor->shape.rot.x = spB8.x - this->unk_3BC.x;
                    } else {
                        hookedActor->world.rot.y = hookedActor->shape.rot.y = this->actor.shape.rot.y + this->unk_3BC.y;
                    }
                }
            } else {
                Matrix_Get(&this->mf_9E0);
                Matrix_MtxFToYXZRotS(&this->mf_9E0, &this->unk_3BC, 0);
            }
        }
    } else if (limbIndex == PLAYER_LIMB_R_HAND) {
        Actor* heldActor = this->heldActor;

        if (this->rightHandType == 0xFF) {
            Matrix_Get(&this->shieldMf);
        } else if ((this->rightHandType == 11) || (this->rightHandType == 12)) {
            BowStringData* stringData = &sBowStringData[gSaveContext.linkAge];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2783);

            Matrix_Push();
            Matrix_Translate(stringData->pos.x, stringData->pos.y, stringData->pos.z, MTXMODE_APPLY);

            if ((this->stateFlags1 & 0x200) && (this->unk_860 >= 0) && (this->unk_834 <= 10)) {
                Vec3f sp90;
                f32 distXYZ;

                Matrix_MultVec3f(&D_8012602C, &sp90);
                distXYZ = Math_Vec3f_DistXYZ(D_80160000, &sp90);

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

            if (!LINK_IS_ADULT) {
                Matrix_RotateZ(this->unk_858 * -0.2f, MTXMODE_APPLY);
            }

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2804),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, stringData->dList);

            Matrix_Pop();

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2809);
        } else if ((this->actor.scale.y >= 0.0f) && (this->rightHandType == 10)) {
            Matrix_Get(&this->shieldMf);
            func_80090604(globalCtx, this, &this->shieldQuad, D_80126154);
        }

        if (this->actor.scale.y >= 0.0f) {
            if ((this->heldItemActionParam == PLAYER_AP_HOOKSHOT) ||
                (this->heldItemActionParam == PLAYER_AP_LONGSHOT)) {
                Matrix_MultVec3f(&D_80126184, &this->unk_3C8);

                if (heldActor != NULL) {
                    MtxF sp44;
                    s32 pad;

                    Matrix_MultVec3f(&D_80126190, &heldActor->world.pos);
                    Matrix_RotateZYX(0, -0x4000, -0x4000, MTXMODE_APPLY);
                    Matrix_Get(&sp44);
                    Matrix_MtxFToYXZRotS(&sp44, &heldActor->world.rot, 0);
                    heldActor->shape.rot = heldActor->world.rot;

                    if (func_8002DD78(this) != 0) {
                        Matrix_Translate(500.0f, 300.0f, 0.0f, MTXMODE_APPLY);
                        func_80090AFC(globalCtx, this,
                                      (this->heldItemActionParam == PLAYER_AP_HOOKSHOT) ? 38600.0f : 77600.0f);
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
                if (Player_IsChildWithHylianShield(this)) {
                    func_80090604(globalCtx, this, &this->shieldQuad, D_8012619C);
                }

                Matrix_TranslateRotateZYX(&D_801261CC, &D_801261D8);
                Matrix_Get(&this->shieldMf);
            }
        } else if (limbIndex == PLAYER_LIMB_HEAD) {
            Matrix_MultVec3f(&D_801260D4, &this->actor.focus.pos);
        } else {
            Vec3f* vec = &D_801261E0[((void)0, gSaveContext.linkAge)];

            Actor_SetFeetPos(&this->actor, limbIndex, PLAYER_LIMB_L_FOOT, vec, PLAYER_LIMB_R_FOOT, vec);
        }
    }
}

u32 func_80091738(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime) {
    s16 linkObjectId = gLinkObjectIds[(void)0, gSaveContext.linkAge];
    u32 size;
    void* ptr;

    size = gObjectTable[OBJECT_GAMEPLAY_KEEP].vromEnd - gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart;
    ptr = segment + 0x3800;
    DmaMgr_SendRequest1(ptr, gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart, size, "../z_player_lib.c", 2982);

    size = gObjectTable[linkObjectId].vromEnd - gObjectTable[linkObjectId].vromStart;
    ptr = segment + 0x8800;
    DmaMgr_SendRequest1(ptr, gObjectTable[linkObjectId].vromStart, size, "../z_player_lib.c", 2988);

    ptr = (void*)ALIGN16((intptr_t)ptr + size);

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + 0x3800);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(segment + 0x8800);

    SkelAnime_InitLink(globalCtx, skelAnime, gPlayerSkelHeaders[(void)0, gSaveContext.linkAge], &gPlayerAnim_003238, 9,
                       ptr, ptr, PLAYER_LIMB_MAX);

    return size + 0x8800 + 0x90;
}

u8 D_801261F8[] = { 2, 2, 5 };

s32 func_80091880(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* arg) {
    u8* ptr = arg;
    u8 modelGroup = D_801261F8[ptr[0] - 1];
    s32 type;
    s32 dListOffset = 0;
    Gfx** dLists;

    if ((modelGroup == 2) && !LINK_IS_ADULT && (ptr[1] == 2)) {
        modelGroup = 1;
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        type = gPlayerModelTypes[modelGroup][1];
        D_80160014 = type;
        if ((type == 4) && (gSaveContext.swordHealth <= 0.0f)) {
            dListOffset = 4;
        }
    } else if (limbIndex == PLAYER_LIMB_R_HAND) {
        type = gPlayerModelTypes[modelGroup][2];
        D_80160018 = type;
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

void func_80091A24(GlobalContext* globalCtx, void* seg04, void* seg06, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot,
                   f32 scale, s32 sword, s32 tunic, s32 shield, s32 boots, s32 width, s32 height, Vec3f* eye, Vec3f* at,
                   f32 fovy, void* img1, void* img2) {
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

    func_8008F470(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, 0, tunic, boots, 0,
                  func_80091880, NULL, &sp12C);

    gSPEndDisplayList(POLY_OPA_DISP++);
    gSPEndDisplayList(POLY_XLU_DISP++);

    gSPBranchList(opaRef, POLY_OPA_DISP);
    gSPBranchList(xluRef, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3288);
}

void func_8009214C(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot, f32 scale,
                   s32 sword, s32 tunic, s32 shield, s32 boots) {
    static Vec3f eye = { 0.0f, 0.0f, -400.0f };
    static Vec3f at = { 0.0f, 0.0f, 0.0f };
    Vec3s* destTable;
    Vec3s* srcTable;
    s32 i;

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + 0x3800);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(segment + 0x8800);

    if (!LINK_IS_ADULT) {
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

    func_80091A24(globalCtx, segment + 0x3800, segment + 0x8800, skelAnime, pos, rot, scale, sword, tunic, shield,
                  boots, 64, 112, &eye, &at, 60.0f, globalCtx->state.gfxCtx->curFrameBuffer,
                  globalCtx->state.gfxCtx->curFrameBuffer + 0x1C00);
}
