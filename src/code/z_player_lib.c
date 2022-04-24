#include "global.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_link_boy/object_link_boy.h"
#include "objects/object_link_child/object_link_child.h"

typedef struct {
    /* 0x00 */ u8 flag;
    /* 0x02 */ u16 textId;
} TextTriggerEntry; // size = 0x04

typedef struct {
    /* 0x00 */ void* dList;
    /* 0x04 */ Vec3f pos;
} BowStringData; // size = 0x10

FlexSkeletonHeader* gPlayerSkelHeaders[] = { &gLinkAdultSkel, &gLinkChildSkel };

s16 sBootData[PLAYER_BOOTS_MAX][17] = {
    { 200, 1000, 300, 700, 550, 270, 600, 350, 800, 600, -100, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 1000, 0, 800, 300, -160, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 600, 600, 800, 550, -100, 600, 540, 270, 25, 0, 130 },
    { 200, 1000, 300, 700, 380, 400, 0, 300, 800, 500, -100, 600, 590, 750, 125, 200, 130 },
    { 80, 800, 150, 700, 480, 270, 600, 50, 800, 550, -40, 400, 540, 270, 25, 0, 80 },
    { 200, 1000, 300, 800, 500, 400, 800, 400, 800, 550, -100, 600, 540, 750, 125, 400, 200 },
};

// Used to map action params to model groups
u8 sActionModelGroups[PLAYER_AP_MAX] = {
    /* PLAYER_AP_NONE */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_LAST_USED */ PLAYER_MODELGROUP_15,
    /* PLAYER_AP_FISHING_POLE */ PLAYER_MODELGROUP_10,
    /* PLAYER_AP_SWORD_MASTER */ PLAYER_MODELGROUP_SWORD,
    /* PLAYER_AP_SWORD_KOKIRI */ PLAYER_MODELGROUP_SWORD,
    /* PLAYER_AP_SWORD_BGS */ PLAYER_MODELGROUP_BGS,
    /* PLAYER_AP_STICK */ PLAYER_MODELGROUP_10,
    /* PLAYER_AP_HAMMER */ PLAYER_MODELGROUP_HAMMER,
    /* PLAYER_AP_BOW */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_FIRE */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_ICE */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_LIGHT */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_0C */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_0D */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_BOW_0E */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_SLINGSHOT */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_HOOKSHOT */ PLAYER_MODELGROUP_HOOKSHOT,
    /* PLAYER_AP_LONGSHOT */ PLAYER_MODELGROUP_HOOKSHOT,
    /* PLAYER_AP_BOMB */ PLAYER_MODELGROUP_EXPLOSIVES,
    /* PLAYER_AP_BOMBCHU */ PLAYER_MODELGROUP_EXPLOSIVES,
    /* PLAYER_AP_BOOMERANG */ PLAYER_MODELGROUP_BOOMERANG,
    /* PLAYER_AP_MAGIC_SPELL_15 */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MAGIC_SPELL_16 */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MAGIC_SPELL_17 */ PLAYER_MODELGROUP_BOW_SLINGSHOT,
    /* PLAYER_AP_FARORES_WIND */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_NAYRUS_LOVE */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_DINS_FIRE */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_NUT */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_OCARINA_FAIRY */ PLAYER_MODELGROUP_OCARINA,
    /* PLAYER_AP_OCARINA_TIME */ PLAYER_MODELGROUP_OOT,
    /* PLAYER_AP_BOTTLE */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_FISH */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_FIRE */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_BUG */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_POE */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_BIG_POE */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_LETTER */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_POTION_RED */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_POTION_BLUE */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_POTION_GREEN */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_MILK */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_MILK_HALF */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_BOTTLE_FAIRY */ PLAYER_MODELGROUP_BOTTLE,
    /* PLAYER_AP_LETTER_ZELDA */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_WEIRD_EGG */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_CHICKEN */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_BEAN */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_POCKET_EGG */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_POCKET_CUCCO */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_COJIRO */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_ODD_MUSHROOM */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_ODD_POTION */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_SAW */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_SWORD_BROKEN */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_PRESCRIPTION */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_FROG */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_EYEDROPS */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_CLAIM_CHECK */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_KEATON */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_SKULL */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_SPOOKY */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_BUNNY */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_GORON */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_ZORA */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_GERUDO */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_MASK_TRUTH */ PLAYER_MODELGROUP_DEFAULT,
    /* PLAYER_AP_LENS */ PLAYER_MODELGROUP_DEFAULT,
};

TextTriggerEntry sTextTriggers[] = {
    { 1, 0x3040 },
    { 2, 0x401D },
    { 0, 0x0000 },
    { 2, 0x401D },
};

// Used to map model groups to model types for [animation, left hand, right hand, sheath, waist]
u8 gPlayerModelTypes[PLAYER_MODELGROUP_MAX][PLAYER_MODELGROUPENTRY_MAX] = {
    /* PLAYER_MODELGROUP_0 */
    { PLAYER_ANIMTYPE_2, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_SHIELD, PLAYER_MODELTYPE_SHEATH_16,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_CHILD_HYLIAN_SHIELD */
    { PLAYER_ANIMTYPE_1, PLAYER_MODELTYPE_LH_SWORD, PLAYER_MODELTYPE_RH_CLOSED, PLAYER_MODELTYPE_SHEATH_19,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_SWORD */
    { PLAYER_ANIMTYPE_1, PLAYER_MODELTYPE_LH_SWORD, PLAYER_MODELTYPE_RH_SHIELD, PLAYER_MODELTYPE_SHEATH_17,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_DEFAULT */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_4 */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_BGS */
    { PLAYER_ANIMTYPE_3, PLAYER_MODELTYPE_LH_BGS, PLAYER_MODELTYPE_RH_CLOSED, PLAYER_MODELTYPE_SHEATH_19,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_BOW_SLINGSHOT */
    { PLAYER_ANIMTYPE_4, PLAYER_MODELTYPE_LH_CLOSED, PLAYER_MODELTYPE_RH_BOW_SLINGSHOT, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_EXPLOSIVES */
    { PLAYER_ANIMTYPE_5, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_BOOMERANG */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_BOOMERANG, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_HOOKSHOT */
    { PLAYER_ANIMTYPE_4, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_HOOKSHOT, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_10 */
    { PLAYER_ANIMTYPE_3, PLAYER_MODELTYPE_LH_CLOSED, PLAYER_MODELTYPE_RH_CLOSED, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_HAMMER */
    { PLAYER_ANIMTYPE_3, PLAYER_MODELTYPE_LH_HAMMER, PLAYER_MODELTYPE_RH_CLOSED, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_OCARINA */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_OCARINA, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_OOT */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_OPEN, PLAYER_MODELTYPE_RH_OOT, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_BOTTLE */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_BOTTLE, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_18,
      PLAYER_MODELTYPE_WAIST },
    /* PLAYER_MODELGROUP_15 */
    { PLAYER_ANIMTYPE_0, PLAYER_MODELTYPE_LH_SWORD, PLAYER_MODELTYPE_RH_OPEN, PLAYER_MODELTYPE_SHEATH_19,
      PLAYER_MODELTYPE_WAIST },
};

Gfx* D_80125CE8[PLAYER_SHIELD_MAX * 4] = {
    // PLAYER_SHIELD_NONE
    gLinkAdultRightHandClosedNearDL,
    gLinkChildRightHandClosedNearDL,
    gLinkAdultRightHandClosedFarDL,
    gLinkChildRightHandClosedFarDL,
    // PLAYER_SHIELD_DEKU
    gLinkAdultRightHandClosedNearDL,
    gLinkChildRightFistAndDekuShieldNearDL,
    gLinkAdultRightHandClosedFarDL,
    gLinkChildRightFistAndDekuShieldFarDL,
    // PLAYER_SHIELD_HYLIAN
    gLinkAdultRightHandHoldingHylianShieldNearDL,
    gLinkChildRightHandClosedNearDL,
    gLinkAdultRightHandHoldingHylianShieldFarDL,
    gLinkChildRightHandClosedFarDL,
    // PLAYER_SHIELD_MIRROR
    gLinkAdultRightHandHoldingMirrorShieldNearDL,
    gLinkChildRightHandClosedNearDL,
    gLinkAdultRightHandHoldingMirrorShieldFarDL,
    gLinkChildRightHandClosedFarDL,
};

Gfx* D_80125D28[PLAYER_SHIELD_MAX * 4] = {
    // PLAYER_SHIELD_NONE
    gLinkAdultMasterSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultMasterSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
    // PLAYER_SHIELD_DEKU
    gLinkAdultMasterSwordAndSheathNearDL,
    gLinkChildDekuShieldSwordAndSheathNearDL,
    gLinkAdultMasterSwordAndSheathFarDL,
    gLinkChildDekuShieldSwordAndSheathFarDL,
    // PLAYER_SHIELD_HYLIAN
    gLinkAdultHylianShieldSwordAndSheathNearDL,
    gLinkChildHylianShieldSwordAndSheathNearDL,
    gLinkAdultHylianShieldSwordAndSheathFarDL,
    gLinkChildHylianShieldSwordAndSheathFarDL,
    // PLAYER_SHIELD_MIRROR
    gLinkAdultMirrorShieldSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultMirrorShieldSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
};

Gfx* D_80125D68[] = {
    NULL, NULL, NULL, NULL, NULL, gLinkChildDekuShieldWithMatrixDL, NULL, gLinkChildDekuShieldWithMatrixDL,
};

Gfx* D_80125D88[(PLAYER_SHIELD_MAX + 2) * 4] = {
    // PLAYER_SHIELD_NONE
    gLinkAdultSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildSheathFarDL,
    // PLAYER_SHIELD_DEKU
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldAndSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildDekuShieldAndSheathFarDL,
    // PLAYER_SHIELD_HYLIAN
    gLinkAdultHylianShieldAndSheathNearDL,
    gLinkChildHylianShieldAndSheathNearDL,
    gLinkAdultHylianShieldAndSheathFarDL,
    gLinkChildHylianShieldAndSheathFarDL,
    // PLAYER_SHIELD_MIRROR
    gLinkAdultMirrorShieldAndSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultMirrorShieldAndSheathFarDL,
    gLinkChildSheathFarDL,
    // PLAYER_SHIELD_NONE (child, no sword)
    NULL,
    NULL,
    NULL,
    NULL,
    // PLAYER_SHIELD_DEKU (child, no sword)
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldWithMatrixDL,
    gLinkAdultSheathNearDL,
    gLinkChildDekuShieldWithMatrixDL,
};

Gfx* D_80125DE8[] = {
    // biggoron sword
    gLinkAdultLeftHandHoldingBgsNearDL,
    gLinkChildLeftHandHoldingMasterSwordDL,
    gLinkAdultLeftHandHoldingBgsFarDL,
    gLinkChildLeftHandHoldingMasterSwordDL,
    // broken giant knife
    gLinkAdultHandHoldingBrokenGiantsKnifeDL,
    gLinkChildLeftHandHoldingMasterSwordDL,
    gLinkAdultHandHoldingBrokenGiantsKnifeFarDL,
    gLinkChildLeftHandHoldingMasterSwordDL,
};

Gfx* D_80125E08[] = {
    gLinkAdultLeftHandNearDL,
    gLinkChildLeftHandNearDL,
    gLinkAdultLeftHandFarDL,
    gLinkChildLeftHandFarDL,
};

Gfx* D_80125E18[] = {
    gLinkAdultLeftHandClosedNearDL,
    gLinkChildLeftFistNearDL,
    gLinkAdultLeftHandClosedFarDL,
    gLinkChildLeftFistFarDL,
};

Gfx* D_80125E28[] = {
    gLinkAdultLeftHandHoldingMasterSwordNearDL,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    gLinkAdultLeftHandHoldingMasterSwordFarDL,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

Gfx* D_80125E38[] = {
    gLinkAdultLeftHandHoldingMasterSwordNearDL,
    gLinkChildLeftFistAndKokiriSwordNearDL,
    gLinkAdultLeftHandHoldingMasterSwordFarDL,
    gLinkChildLeftFistAndKokiriSwordFarDL,
};

Gfx* D_80125E48[] = {
    gLinkAdultRightHandNearDL,
    gLinkChildRightHandNearDL,
    gLinkAdultRightHandFarDL,
    gLinkChildRightHandFarDL,
};

Gfx* D_80125E58[] = {
    gLinkAdultRightHandClosedNearDL,
    gLinkChildRightHandClosedNearDL,
    gLinkAdultRightHandClosedFarDL,
    gLinkChildRightHandClosedFarDL,
};

Gfx* D_80125E68[] = {
    gLinkAdultRightHandHoldingBowNearDL,
    gLinkChildRightHandHoldingSlingshotNearDL,
    gLinkAdultRightHandHoldingBowFarDL,
    gLinkChildRightHandHoldingSlingshotFarDL,
};

Gfx* D_80125E78[] = {
    gLinkAdultMasterSwordAndSheathNearDL,
    gLinkChildSwordAndSheathNearDL,
    gLinkAdultMasterSwordAndSheathFarDL,
    gLinkChildSwordAndSheathFarDL,
};

Gfx* D_80125E88[] = {
    gLinkAdultSheathNearDL,
    gLinkChildSheathNearDL,
    gLinkAdultSheathFarDL,
    gLinkChildSheathFarDL,
};

Gfx* D_80125E98[] = {
    gLinkAdultWaistNearDL,
    gLinkChildWaistNearDL,
    gLinkAdultWaistFarDL,
    gLinkChildWaistFarDL,
};

Gfx* D_80125EA8[] = {
    gLinkAdultRightHandHoldingBowNearDL,
    gLinkChildRightHandHoldingSlingshotNearDL,
    gLinkAdultRightHandHoldingBowFarDL,
    gLinkChildRightHandHoldingSlingshotFarDL,
};

Gfx* D_80125EB8[] = {
    gLinkAdultRightHandHoldingOotNearDL,
    gLinkChildRightHandHoldingFairyOcarinaNearDL,
    gLinkAdultRightHandHoldingOotFarDL,
    gLinkChildRightHandHoldingFairyOcarinaFarDL,
};

Gfx* D_80125EC8[] = {
    gLinkAdultRightHandHoldingOotNearDL,
    gLinkChildRightHandAndOotNearDL,
    gLinkAdultRightHandHoldingOotFarDL,
    gLinkChildRightHandHoldingOOTFarDL,
};

Gfx* D_80125ED8[] = {
    gLinkAdultRightHandHoldingHookshotNearDL,
    gLinkChildRightHandNearDL,
    gLinkAdultRightHandHoldingHookshotNearDL, // The 'far' display list exists but is not used
    gLinkChildRightHandFarDL,
};

Gfx* D_80125EE8[] = {
    gLinkAdultLeftHandHoldingHammerNearDL,
    gLinkChildLeftHandNearDL,
    gLinkAdultLeftHandHoldingHammerFarDL,
    gLinkChildLeftHandFarDL,
};

Gfx* D_80125EF8[] = {
    gLinkAdultLeftHandNearDL,
    gLinkChildLeftFistAndBoomerangNearDL,
    gLinkAdultLeftHandFarDL,
    gLinkChildLeftFistAndBoomerangFarDL,
};

Gfx* D_80125F08[] = {
    gLinkAdultLeftHandOutNearDL,
    gLinkChildLeftHandUpNearDL,
    gLinkAdultLeftHandOutNearDL,
    gLinkChildLeftHandUpNearDL,
};

Gfx* sArmOutDLs[] = {
    gLinkAdultRightArmOutNearDL,
    NULL,
};

Gfx* sHandOutDLs[] = {
    gLinkAdultRightHandOutNearDL,
    NULL,
};

Gfx* sRightShoulderNearDLs[] = {
    gLinkAdultRightShoulderNearDL,
    gLinkChildRightShoulderNearDL,
};

Gfx* D_80125F30[] = {
    gLinkAdultLeftArmOutNearDL,
    NULL,
};

Gfx* sHoldingFirstPersonWeaponDLs[] = {
    gLinkAdultRightHandHoldingBowFirstPersonDL,
    gLinkChildRightArmStretchedSlingshotDL,
};

// Indexed by model types (left hand, right hand, sheath or waist)
Gfx** sPlayerDListGroups[PLAYER_MODELTYPE_MAX] = {
    /* PLAYER_MODELTYPE_LH_OPEN */ D_80125E08,
    /* PLAYER_MODELTYPE_LH_CLOSED */ D_80125E18,
    /* PLAYER_MODELTYPE_LH_SWORD */ D_80125E38,
    /* PLAYER_MODELTYPE_3 */ D_80125E28,
    /* PLAYER_MODELTYPE_LH_BGS */ D_80125DE8,
    /* PLAYER_MODELTYPE_LH_HAMMER */ D_80125EE8,
    /* PLAYER_MODELTYPE_LH_BOOMERANG */ D_80125EF8,
    /* PLAYER_MODELTYPE_LH_BOTTLE */ D_80125F08,
    /* PLAYER_MODELTYPE_RH_OPEN */ D_80125E48,
    /* PLAYER_MODELTYPE_RH_CLOSED */ D_80125E58,
    /* PLAYER_MODELTYPE_RH_SHIELD */ D_80125CE8,
    /* PLAYER_MODELTYPE_RH_BOW_SLINGSHOT */ D_80125E68,
    /* PLAYER_MODELTYPE_12 */ D_80125EA8,
    /* PLAYER_MODELTYPE_RH_OCARINA */ D_80125EB8,
    /* PLAYER_MODELTYPE_RH_OOT */ D_80125EC8,
    /* PLAYER_MODELTYPE_RH_HOOKSHOT */ D_80125ED8,
    /* PLAYER_MODELTYPE_SHEATH_16 */ D_80125E78,
    /* PLAYER_MODELTYPE_SHEATH_17 */ D_80125E88,
    /* PLAYER_MODELTYPE_SHEATH_18 */ D_80125D28,
    /* PLAYER_MODELTYPE_SHEATH_19 */ D_80125D88,
    /* PLAYER_MODELTYPE_WAIST */ D_80125E98,
};

Gfx gCullBackDList[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gCullFrontDList[] = {
    gsSPSetGeometryMode(G_CULL_FRONT),
    gsSPEndDisplayList(),
};

Vec3f* sCurBodyPartPos;
s32 sDListsLodOffset;
Vec3f sGetItemRefPos;
s32 sLeftHandType;
s32 sRightHandType;

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
        if (this->stateFlags1 & PLAYER_STATE1_27) {
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
    return (this->stateFlags1 & (PLAYER_STATE1_7 | PLAYER_STATE1_29)) || (this->csMode != 0) ||
           (globalCtx->sceneLoadFlag == 0x14) || (this->stateFlags1 & PLAYER_STATE1_0) ||
           (this->stateFlags3 & PLAYER_STATE3_7) ||
           ((gSaveContext.unk_13F0 != 0) && (Player_ActionToMagicSpell(this, this->itemActionParam) >= 0));
}

s32 Player_InCsMode(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

    return Player_InBlockingCsMode(globalCtx, this) || (this->unk_6AD == 4);
}

s32 func_8008E9C4(Player* this) {
    return (this->stateFlags1 & PLAYER_STATE1_4);
}

s32 Player_IsChildWithHylianShield(Player* this) {
    return gSaveContext.linkAge != LINK_AGE_ADULT && (this->currentShield == PLAYER_SHIELD_HYLIAN);
}

s32 Player_ActionToModelGroup(Player* this, s32 actionParam) {
    s32 modelGroup = sActionModelGroups[actionParam];

    if ((modelGroup == PLAYER_MODELGROUP_SWORD) && Player_IsChildWithHylianShield(this)) {
        // child, using kokiri sword with hylian shield equipped
        return PLAYER_MODELGROUP_CHILD_HYLIAN_SHIELD;
    } else {
        return modelGroup;
    }
}

void Player_SetModelsForHoldingShield(Player* this) {
    if ((this->stateFlags1 & PLAYER_STATE1_22) &&
        ((this->itemActionParam < 0) || (this->itemActionParam == this->heldItemActionParam))) {
        if (!Player_HoldsTwoHandedWeapon(this) && !Player_IsChildWithHylianShield(this)) {
            this->rightHandType = PLAYER_MODELTYPE_RH_SHIELD;
            this->rightHandDLists = &sPlayerDListGroups[PLAYER_MODELTYPE_RH_SHIELD][(void)0, gSaveContext.linkAge];
            if (this->sheathType == PLAYER_MODELTYPE_SHEATH_18) {
                this->sheathType = PLAYER_MODELTYPE_SHEATH_16;
            } else if (this->sheathType == PLAYER_MODELTYPE_SHEATH_19) {
                this->sheathType = PLAYER_MODELTYPE_SHEATH_17;
            }
            this->sheathDLists = &sPlayerDListGroups[this->sheathType][(void)0, gSaveContext.linkAge];
            this->modelAnimType = PLAYER_ANIMTYPE_2;
            this->itemActionParam = -1;
        }
    }
}

void Player_SetModels(Player* this, s32 modelGroup) {
    this->leftHandType = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_LEFT_HAND];
    this->rightHandType = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_RIGHT_HAND];
    this->sheathType = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_SHEATH];

    this->leftHandDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_LEFT_HAND]]
                                              [(void)0, gSaveContext.linkAge];
    this->rightHandDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_RIGHT_HAND]]
                                               [(void)0, gSaveContext.linkAge];
    this->sheathDLists = &sPlayerDListGroups[gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_SHEATH]]
                                            [(void)0, gSaveContext.linkAge];
    this->waistDLists =
        &sPlayerDListGroups[gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_WAIST]][(void)0, gSaveContext.linkAge];

    Player_SetModelsForHoldingShield(this);
}

void Player_SetModelGroup(Player* this, s32 modelGroup) {
    this->modelGroup = modelGroup;

    if (modelGroup == PLAYER_MODELGROUP_CHILD_HYLIAN_SHIELD) {
        this->modelAnimType = PLAYER_ANIMTYPE_0;
    } else {
        this->modelAnimType = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_ANIM];
    }

    if ((this->modelAnimType < PLAYER_ANIMTYPE_3) && (this->currentShield == PLAYER_SHIELD_NONE)) {
        this->modelAnimType = PLAYER_ANIMTYPE_0;
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
    this->stateFlags2 &= ~PLAYER_STATE2_13;
}

void func_8008EE08(Player* this) {
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) ||
        (this->stateFlags1 & (PLAYER_STATE1_21 | PLAYER_STATE1_23 | PLAYER_STATE1_27)) ||
        (!(this->stateFlags1 & (PLAYER_STATE1_18 | PLAYER_STATE1_19)) &&
         ((this->actor.world.pos.y - this->actor.floorHeight) < 100.0f))) {
        this->stateFlags1 &= ~(PLAYER_STATE1_15 | PLAYER_STATE1_16 | PLAYER_STATE1_17 | PLAYER_STATE1_18 |
                               PLAYER_STATE1_19 | PLAYER_STATE1_30);
    } else if (!(this->stateFlags1 & (PLAYER_STATE1_18 | PLAYER_STATE1_19 | PLAYER_STATE1_21))) {
        this->stateFlags1 |= PLAYER_STATE1_19;
    }

    func_8008EDF0(this);
}

void func_8008EEAC(GlobalContext* globalCtx, Actor* actor) {
    Player* this = GET_PLAYER(globalCtx);

    func_8008EE08(this);
    this->unk_664 = actor;
    this->unk_684 = actor;
    this->stateFlags1 |= PLAYER_STATE1_16;
    Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, actor);
    Camera_ChangeMode(Gameplay_GetCamera(globalCtx, 0), 2);
}

s32 func_8008EF30(GlobalContext* globalCtx) {
    Player* this = GET_PLAYER(globalCtx);

    return (this->stateFlags1 & PLAYER_STATE1_23);
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
        Math_Vec3f_Diff(&this->meleeWeaponInfo[0].tip, pos, &diff);
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

    return (this->rightHandType == PLAYER_MODELTYPE_RH_SHIELD) && (this->currentShield == PLAYER_SHIELD_MIRROR);
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

s32 Player_ActionToMeleeWeapon(s32 actionParam) {
    s32 sword = actionParam - PLAYER_AP_FISHING_POLE;

    if ((sword > 0) && (sword < 6)) {
        return sword;
    } else {
        return 0;
    }
}

s32 Player_GetMeleeWeaponHeld(Player* this) {
    return Player_ActionToMeleeWeapon(this->heldItemActionParam);
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
        var = ((this->currentBoots == PLAYER_BOOTS_IRON) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) ? 1 : 3;
    } else if (this->stateFlags1 & PLAYER_STATE1_27) { // Swimming
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

u8 sEyeMouthIndices[][2] = {
    { 0, 0 }, { 1, 0 }, { 2, 0 }, { 0, 0 }, { 1, 0 }, { 2, 0 }, { 4, 0 }, { 5, 1 },
    { 7, 2 }, { 0, 2 }, { 3, 0 }, { 4, 0 }, { 2, 2 }, { 1, 1 }, { 0, 2 }, { 0, 0 },
};

/**
 * Link's eye and mouth textures are placed at the exact same place in adult and child Link's respective object files.
 * This allows the array to only contain the symbols for one file and have it apply to both. This is a problem for
 * shiftability, and changes will need to be made in the code to account for this in a modding scenario. The symbols
 * from adult Link's object are used here.
 */
#ifndef AVOID_UB
void* sEyeTextures[] = {
    gLinkAdultEyesOpenTex,      gLinkAdultEyesHalfTex,  gLinkAdultEyesClosedfTex, gLinkAdultEyesRollLeftTex,
    gLinkAdultEyesRollRightTex, gLinkAdultEyesShockTex, gLinkAdultEyesUnk1Tex,    gLinkAdultEyesUnk2Tex,
};

void* sMouthTextures[] = {
    gLinkAdultMouth1Tex,
    gLinkAdultMouth2Tex,
    gLinkAdultMouth3Tex,
    gLinkAdultMouth4Tex,
};
#else
// Defining `AVOID_UB` will use a 2D array instead and properly use the child link pointers to allow for shifting.
void* sEyeTextures[][8] = {
    { gLinkAdultEyesOpenTex, gLinkAdultEyesHalfTex, gLinkAdultEyesClosedfTex, gLinkAdultEyesRollLeftTex,
      gLinkAdultEyesRollRightTex, gLinkAdultEyesShockTex, gLinkAdultEyesUnk1Tex, gLinkAdultEyesUnk2Tex },
    { gLinkChildEyesOpenTex, gLinkChildEyesHalfTex, gLinkChildEyesClosedfTex, gLinkChildEyesRollLeftTex,
      gLinkChildEyesRollRightTex, gLinkChildEyesShockTex, gLinkChildEyesUnk1Tex, gLinkChildEyesUnk2Tex },
};

void* sMouthTextures[][4] = {
    { gLinkAdultMouth1Tex, gLinkAdultMouth2Tex, gLinkAdultMouth3Tex, gLinkAdultMouth4Tex },
    { gLinkChildMouth1Tex, gLinkChildMouth2Tex, gLinkChildMouth3Tex, gLinkChildMouth4Tex },
};
#endif

Color_RGB8 sTunicColors[PLAYER_TUNIC_MAX] = {
    { 30, 105, 27 }, // PLAYER_TUNIC_KOKIRI
    { 100, 20, 0 },  // PLAYER_TUNIC_GORON
    { 0, 60, 100 },  // PLAYER_TUNIC_ZORA
};

Color_RGB8 sGauntletColors[] = {
    { 255, 255, 255 },
    { 254, 207, 15 },
};

Gfx* sBootDListGroups[][2] = {
    /* PLAYER_BOOTS_IRON */ { gLinkAdultLeftIronBootDL, gLinkAdultRightIronBootDL },
    /* PLAYER_BOOTS_HOVER */ { gLinkAdultLeftHoverBootDL, gLinkAdultRightHoverBootDL },
};

void Player_DrawImpl(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTable, s32 dListCount, s32 lod, s32 tunic,
                     s32 boots, s32 face, OverrideLimbDrawOpa overrideLimbDraw, PostLimbDrawOpa postLimbDraw,
                     void* data) {
    Color_RGB8* color;
    s32 eyeIndex = (jointTable[22].x & 0xF) - 1;
    s32 mouthIndex = (jointTable[22].x >> 4) - 1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 1721);

    if (eyeIndex < 0) {
        eyeIndex = sEyeMouthIndices[face][0];
    }

#ifndef AVOID_UB
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[eyeIndex]));
#else
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[gSaveContext.linkAge][eyeIndex]));
#endif

    if (mouthIndex < 0) {
        mouthIndex = sEyeMouthIndices[face][1];
    }

#ifndef AVOID_UB
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[mouthIndex]));
#else
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[gSaveContext.linkAge][mouthIndex]));
#endif

    color = &sTunicColors[tunic];
    gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

    sDListsLodOffset = lod * 2;

    SkelAnime_DrawFlexLod(globalCtx, skeleton, jointTable, dListCount, overrideLimbDraw, postLimbDraw, data, lod);

    if ((overrideLimbDraw != Player_OverrideLimbDrawGameplayFirstPerson) &&
        (overrideLimbDraw != Player_OverrideLimbDrawGameplay_80090440) && (gSaveContext.gameMode != 3)) {
        if (LINK_IS_ADULT) {
            s32 strengthUpgrade = CUR_UPG_VALUE(UPG_STRENGTH);

            if (strengthUpgrade >= 2) { // silver or gold gauntlets
                gDPPipeSync(POLY_OPA_DISP++);

                color = &sGauntletColors[strengthUpgrade - 2];
                gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 0);

                gSPDisplayList(POLY_OPA_DISP++, gLinkAdultLeftGauntletPlate1DL);
                gSPDisplayList(POLY_OPA_DISP++, gLinkAdultRightGauntletPlate1DL);
                gSPDisplayList(POLY_OPA_DISP++, (sLeftHandType == PLAYER_MODELTYPE_LH_OPEN)
                                                    ? gLinkAdultLeftGauntletPlate2DL
                                                    : gLinkAdultLeftGauntletPlate3DL);
                gSPDisplayList(POLY_OPA_DISP++, (sRightHandType == PLAYER_MODELTYPE_RH_OPEN)
                                                    ? gLinkAdultRightGauntletPlate2DL
                                                    : gLinkAdultRightGauntletPlate3DL);
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

Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

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

    if ((this->actor.scale.y >= 0.0f) && !(this->stateFlags1 & PLAYER_STATE1_7) &&
        (Player_ActionToMagicSpell(this, this->itemActionParam) < 0)) {
        s32 pad;

        sp7C = D_80126058[(void)0, gSaveContext.linkAge];
        sp78 = D_80126060[(void)0, gSaveContext.linkAge];
        sp74 = D_80126068[(void)0, gSaveContext.linkAge] - this->unk_6C4;

        Matrix_Push();
        Matrix_TranslateRotateZYX(pos, rot);
        Matrix_MultVec3f(&sZeroVec, &spA4);
        Matrix_TranslateRotateZYX(&D_80126038[(void)0, gSaveContext.linkAge], &skelAnime->jointTable[shinLimbIndex]);
        Matrix_Translate(D_80126050[(void)0, gSaveContext.linkAge], 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_MultVec3f(&sZeroVec, &sp98);
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

            temp1 = RAD_TO_BINANG(M_PI - (Math_FAtan2F(sp5C, sp58) + ((M_PI / 2) - sp50)));
            temp1 = temp1 - skelAnime->jointTable[shinLimbIndex].z;

            if ((s16)(ABS(skelAnime->jointTable[shinLimbIndex].x) + ABS(skelAnime->jointTable[shinLimbIndex].y)) < 0) {
                temp1 += 0x8000;
            }

            temp2 = RAD_TO_BINANG(sp50 - sp54);
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

s32 Player_OverrideLimbDrawGameplayCommon(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                          void* thisx) {
    Player* this = (Player*)thisx;

    if (limbIndex == PLAYER_LIMB_ROOT) {
        sLeftHandType = this->leftHandType;
        sRightHandType = this->rightHandType;

        // `sCurBodyPartPos` is incremented before each usage, so it starts at index -1.
        // What determines if a limb corresponds to a body part is whether or not it has a non-NULL `dList`.
        // Note: The increment would not be done for the root limb, even if it had a non-NULL `dList`.
        //       So if the root limb had a non-NULL `dList` (which is not the case in vanilla),
        //       an out-of-bounds write to `bodyPartsPos` would occur.
        sCurBodyPartPos = &this->bodyPartsPos[-1];

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
            Matrix_RotateX(BINANG_TO_RAD(this->unk_6C2), MTXMODE_APPLY);
            Matrix_RotateZYX(rot->x, rot->y, rot->z, MTXMODE_APPLY);
            pos->x = pos->y = pos->z = 0.0f;
            rot->x = rot->y = rot->z = 0;
        }
    } else {
        if (*dList != NULL) {
            sCurBodyPartPos++;
        }

        if (limbIndex == PLAYER_LIMB_HEAD) {
            rot->x += this->unk_6BA;
            rot->y -= this->unk_6B8;
            rot->z += this->unk_6B6;
        } else if (limbIndex == PLAYER_LIMB_UPPER) {
            if (this->unk_6B0 != 0) {
                Matrix_RotateZ(BINANG_TO_RAD(0x44C), MTXMODE_APPLY);
                Matrix_RotateY(BINANG_TO_RAD(this->unk_6B0), MTXMODE_APPLY);
            }
            if (this->unk_6BE != 0) {
                Matrix_RotateY(BINANG_TO_RAD(this->unk_6BE), MTXMODE_APPLY);
            }
            if (this->unk_6BC != 0) {
                Matrix_RotateX(BINANG_TO_RAD(this->unk_6BC), MTXMODE_APPLY);
            }
            if (this->unk_6C0 != 0) {
                Matrix_RotateZ(BINANG_TO_RAD(this->unk_6C0), MTXMODE_APPLY);
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

s32 Player_OverrideLimbDrawGameplayDefault(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                           void* thisx) {
    Player* this = (Player*)thisx;

    if (!Player_OverrideLimbDrawGameplayCommon(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (limbIndex == PLAYER_LIMB_L_HAND) {
            Gfx** dLists = this->leftHandDLists;

            if ((sLeftHandType == PLAYER_MODELTYPE_LH_BGS) && (gSaveContext.swordHealth <= 0.0f)) {
                dLists += 4;
            } else if ((sLeftHandType == PLAYER_MODELTYPE_LH_BOOMERANG) && (this->stateFlags1 & PLAYER_STATE1_25)) {
                dLists = &D_80125E08[gSaveContext.linkAge];
                sLeftHandType = PLAYER_MODELTYPE_LH_OPEN;
            } else if ((this->leftHandType == PLAYER_MODELTYPE_LH_OPEN) && (this->actor.speedXZ > 2.0f) &&
                       !(this->stateFlags1 & PLAYER_STATE1_27)) {
                dLists = &D_80125E18[gSaveContext.linkAge];
                sLeftHandType = PLAYER_MODELTYPE_LH_CLOSED;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            Gfx** dLists = this->rightHandDLists;

            if (sRightHandType == PLAYER_MODELTYPE_RH_SHIELD) {
                dLists += this->currentShield * 4;
            } else if ((this->rightHandType == PLAYER_MODELTYPE_RH_OPEN) && (this->actor.speedXZ > 2.0f) &&
                       !(this->stateFlags1 & PLAYER_STATE1_27)) {
                dLists = &D_80125E58[gSaveContext.linkAge];
                sRightHandType = PLAYER_MODELTYPE_RH_CLOSED;
            }

            *dList = dLists[sDListsLodOffset];
        } else if (limbIndex == PLAYER_LIMB_SHEATH) {
            Gfx** dLists = this->sheathDLists;

            if ((this->sheathType == PLAYER_MODELTYPE_SHEATH_18) || (this->sheathType == PLAYER_MODELTYPE_SHEATH_19)) {
                dLists += this->currentShield * 4;
                if (!LINK_IS_ADULT && (this->currentShield < PLAYER_SHIELD_HYLIAN) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                    dLists += PLAYER_SHIELD_MAX * 4;
                }
            } else if (!LINK_IS_ADULT &&
                       ((this->sheathType == PLAYER_MODELTYPE_SHEATH_16) ||
                        (this->sheathType == PLAYER_MODELTYPE_SHEATH_17)) &&
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

s32 Player_OverrideLimbDrawGameplayFirstPerson(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos,
                                               Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (!Player_OverrideLimbDrawGameplayCommon(globalCtx, limbIndex, dList, pos, rot, thisx)) {
        if (this->unk_6AD != 2) {
            *dList = NULL;
        } else if (limbIndex == PLAYER_LIMB_L_FOREARM) {
            *dList = sArmOutDLs[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_L_HAND) {
            *dList = sHandOutDLs[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_SHOULDER) {
            *dList = sRightShoulderNearDLs[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_FOREARM) {
            *dList = D_80125F30[(void)0, gSaveContext.linkAge];
        } else if (limbIndex == PLAYER_LIMB_R_HAND) {
            *dList = Player_HoldsHookshot(this) ? gLinkAdultRightHandHoldingHookshotFarDL
                                                : sHoldingFirstPersonWeaponDLs[(void)0, gSaveContext.linkAge];
        } else {
            *dList = NULL;
        }
    }

    return false;
}

s32 Player_OverrideLimbDrawGameplay_80090440(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos,
                                             Vec3s* rot, void* thisx) {
    if (!Player_OverrideLimbDrawGameplayCommon(globalCtx, limbIndex, dList, pos, rot, thisx)) {
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

    if (this->stateFlags1 & PLAYER_STATE1_22) {
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

    if (func_80090480(globalCtx, NULL, &this->meleeWeaponInfo[0], &newTipPos[0], &newBasePos[0]) &&
        !(this->stateFlags1 & PLAYER_STATE1_22)) {
        EffectBlure_AddVertex(Effect_GetByIndex(this->meleeWeaponEffectIndex), &this->meleeWeaponInfo[0].tip,
                              &this->meleeWeaponInfo[0].base);
    }

    if ((this->meleeWeaponState > 0) &&
        ((this->meleeWeaponAnimation < PLAYER_MWA_SPIN_ATTACK_1H) || (this->stateFlags2 & PLAYER_STATE2_17))) {
        func_80090480(globalCtx, &this->meleeWeaponQuads[0], &this->meleeWeaponInfo[1], &newTipPos[1], &newBasePos[1]);
        func_80090480(globalCtx, &this->meleeWeaponQuads[1], &this->meleeWeaponInfo[2], &newTipPos[2], &newBasePos[2]);
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
    if (!this->giObjectLoading || osRecvMesg(&this->giObjectLoadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
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

void Player_DrawHookshotReticle(GlobalContext* globalCtx, Player* this, f32 arg2) {
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
        gSPDisplayList(OVERLAY_DISP++, gLinkAdultHookshotReticleDL);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2592);
    }
}

Vec3f D_801260D4 = { 1100.0f, -700.0f, 0.0f };

f32 sMeleeWeaponLengths[] = {
    0.0f, 4000.0f, 3000.0f, 5500.0f, 0.0f, 2500.0f,
};

Gfx* sBottleDLists[] = { gLinkAdultBottleDL, gLinkChildBottleDL };

Color_RGB8 sBottleColors[] = {
    { 255, 255, 255 }, { 80, 80, 255 },   { 255, 100, 255 }, { 0, 0, 255 }, { 255, 0, 255 },
    { 255, 0, 255 },   { 200, 200, 100 }, { 255, 0, 0 },     { 0, 0, 255 }, { 0, 255, 0 },
    { 255, 255, 255 }, { 255, 255, 255 }, { 80, 80, 255 },
};

Vec3f D_80126128 = { 398.0f, 1419.0f, 244.0f };

BowStringData sBowStringData[] = {
    { gLinkAdultBowStringDL, { 0.0f, -360.4f, 0.0f } },       // bow
    { gLinkChildSlinghotStringDL, { 606.0f, 236.0f, 0.0f } }, // slingshot
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

void Player_PostLimbDrawGameplay(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Player* this = (Player*)thisx;

    if (*dList != NULL) {
        Matrix_MultVec3f(&sZeroVec, sCurBodyPartPos);
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        MtxF sp14C;
        Actor* hookedActor;

        Math_Vec3f_Copy(&this->leftHandPos, sCurBodyPartPos);

        if (this->itemActionParam == PLAYER_AP_STICK) {
            Vec3f sp124[3];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2633);

            if (this->actor.scale.y >= 0.0f) {
                D_80126080.x = this->unk_85C * 5000.0f;
                func_80090A28(this, sp124);
                if (this->meleeWeaponState != 0) {
                    func_800906D4(globalCtx, this, sp124);
                } else {
                    Math_Vec3f_Copy(&this->meleeWeaponInfo[0].tip, &sp124[0]);
                }
            }

            Matrix_Translate(-428.26f, 267.2f, -33.82f, MTXMODE_APPLY);
            Matrix_RotateZYX(-0x8000, 0, 0x4000, MTXMODE_APPLY);
            Matrix_Scale(1.0f, this->unk_85C, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2653),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gLinkChildLinkDekuStickDL);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2656);
        } else if ((this->actor.scale.y >= 0.0f) && (this->meleeWeaponState != 0)) {
            Vec3f spE4[3];

            if (Player_HoldsBrokenKnife(this)) {
                D_80126080.x = 1500.0f;
            } else {
                D_80126080.x = sMeleeWeaponLengths[Player_GetMeleeWeaponHeld(this)];
            }

            func_80090A28(this, spE4);
            func_800906D4(globalCtx, this, spE4);
        } else if ((*dList != NULL) && (this->leftHandType == PLAYER_MODELTYPE_LH_BOTTLE)) {
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
                if (this->stateFlags1 & PLAYER_STATE1_9) {
                    Matrix_MultVec3f(&D_80126128, &hookedActor->world.pos);
                    Matrix_RotateZYX(0x69E8, -0x5708, 0x458E, MTXMODE_APPLY);
                    Matrix_Get(&sp14C);
                    Matrix_MtxFToYXZRotS(&sp14C, &hookedActor->world.rot, 0);
                    hookedActor->shape.rot = hookedActor->world.rot;
                } else if (this->stateFlags1 & PLAYER_STATE1_11) {
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

        if (this->rightHandType == PLAYER_MODELTYPE_RH_FF) {
            Matrix_Get(&this->shieldMf);
        } else if ((this->rightHandType == PLAYER_MODELTYPE_RH_BOW_SLINGSHOT) ||
                   (this->rightHandType == PLAYER_MODELTYPE_12)) {
            BowStringData* stringData = &sBowStringData[gSaveContext.linkAge];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2783);

            Matrix_Push();
            Matrix_Translate(stringData->pos.x, stringData->pos.y, stringData->pos.z, MTXMODE_APPLY);

            if ((this->stateFlags1 & PLAYER_STATE1_9) && (this->unk_860 >= 0) && (this->unk_834 <= 10)) {
                Vec3f sp90;
                f32 distXYZ;

                Matrix_MultVec3f(&sZeroVec, &sp90);
                distXYZ = Math_Vec3f_DistXYZ(sCurBodyPartPos, &sp90);

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
        } else if ((this->actor.scale.y >= 0.0f) && (this->rightHandType == PLAYER_MODELTYPE_RH_SHIELD)) {
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
                        Player_DrawHookshotReticle(
                            globalCtx, this, (this->heldItemActionParam == PLAYER_AP_HOOKSHOT) ? 38600.0f : 77600.0f);
                    }
                }
            }

            if ((this->unk_862 != 0) || ((func_8002DD6C(this) == 0) && (heldActor != NULL))) {
                if (!(this->stateFlags1 & PLAYER_STATE1_10) && (this->unk_862 != 0) &&
                    (this->exchangeItemId != EXCH_ITEM_NONE)) {
                    Math_Vec3f_Copy(&sGetItemRefPos, &this->leftHandPos);
                } else {
                    sGetItemRefPos.x = (this->bodyPartsPos[PLAYER_BODYPART_R_HAND].x + this->leftHandPos.x) * 0.5f;
                    sGetItemRefPos.y = (this->bodyPartsPos[PLAYER_BODYPART_R_HAND].y + this->leftHandPos.y) * 0.5f;
                    sGetItemRefPos.z = (this->bodyPartsPos[PLAYER_BODYPART_R_HAND].z + this->leftHandPos.z) * 0.5f;
                }

                if (this->unk_862 == 0) {
                    Math_Vec3f_Copy(&heldActor->world.pos, &sGetItemRefPos);
                }
            }
        }
    } else if (this->actor.scale.y >= 0.0f) {
        if (limbIndex == PLAYER_LIMB_SHEATH) {
            if ((this->rightHandType != PLAYER_MODELTYPE_RH_SHIELD) &&
                (this->rightHandType != PLAYER_MODELTYPE_RH_FF)) {
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
    ptr = segment + PAUSE_EQUIP_BUFFER_SIZE;
    DmaMgr_SendRequest1(ptr, gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart, size, "../z_player_lib.c", 2982);

    size = gObjectTable[linkObjectId].vromEnd - gObjectTable[linkObjectId].vromStart;
    ptr = segment + PAUSE_EQUIP_BUFFER_SIZE + PAUSE_PLAYER_SEGMENT_GAMEPLAY_KEEP_BUFFER_SIZE;
    DmaMgr_SendRequest1(ptr, gObjectTable[linkObjectId].vromStart, size, "../z_player_lib.c", 2988);

    ptr = (void*)ALIGN16((u32)ptr + size);

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + PAUSE_EQUIP_BUFFER_SIZE);
    gSegments[6] =
        VIRTUAL_TO_PHYSICAL(segment + PAUSE_EQUIP_BUFFER_SIZE + PAUSE_PLAYER_SEGMENT_GAMEPLAY_KEEP_BUFFER_SIZE);

    SkelAnime_InitLink(globalCtx, skelAnime, gPlayerSkelHeaders[(void)0, gSaveContext.linkAge], &gPlayerAnim_003238, 9,
                       ptr, ptr, PLAYER_LIMB_MAX);

    return size + PAUSE_EQUIP_BUFFER_SIZE + PAUSE_PLAYER_SEGMENT_GAMEPLAY_KEEP_BUFFER_SIZE +
           sizeof(Vec3s[PLAYER_LIMB_BUF_COUNT]);
}

u8 D_801261F8[] = { PLAYER_MODELGROUP_SWORD, PLAYER_MODELGROUP_SWORD, PLAYER_MODELGROUP_BGS };

s32 Player_OverrideLimbDrawPause(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* arg) {
    u8* playerSwordAndShield = arg;
    //! @bug `playerSwordAndShield[0]` can be 0 (no sword), which indexes `D_801261F8[-1]`. The result
    //! happens to be 0 (`PLAYER_MODELGROUP_0`) in vanilla, but weird values are likely to cause a crash
    u8 modelGroup = D_801261F8[playerSwordAndShield[0] - 1];
    s32 type;
    s32 dListOffset = 0;
    Gfx** dLists;

    if ((modelGroup == PLAYER_MODELGROUP_SWORD) && !LINK_IS_ADULT &&
        (playerSwordAndShield[1] == PLAYER_SHIELD_HYLIAN)) {
        modelGroup = PLAYER_MODELGROUP_CHILD_HYLIAN_SHIELD;
    }

    if (limbIndex == PLAYER_LIMB_L_HAND) {
        type = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_LEFT_HAND];
        sLeftHandType = type;
        if ((type == PLAYER_MODELTYPE_LH_BGS) && (gSaveContext.swordHealth <= 0.0f)) {
            dListOffset = 4;
        }
    } else if (limbIndex == PLAYER_LIMB_R_HAND) {
        type = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_RIGHT_HAND];
        sRightHandType = type;
        if (type == PLAYER_MODELTYPE_RH_SHIELD) {
            dListOffset = playerSwordAndShield[1] * 4;
        }
    } else if (limbIndex == PLAYER_LIMB_SHEATH) {
        type = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_SHEATH];
        if ((type == PLAYER_MODELTYPE_SHEATH_18) || (type == PLAYER_MODELTYPE_SHEATH_19)) {
            dListOffset = playerSwordAndShield[1] * 4;
        }
    } else if (limbIndex == PLAYER_LIMB_WAIST) {
        type = gPlayerModelTypes[modelGroup][PLAYER_MODELGROUPENTRY_WAIST];
    } else {
        return 0;
    }

    dLists = &sPlayerDListGroups[type][(void)0, gSaveContext.linkAge];
    *dList = dLists[dListOffset];

    return 0;
}

void Player_DrawPauseImpl(GlobalContext* globalCtx, void* gameplayKeep, void* linkObject, SkelAnime* skelAnime,
                          Vec3f* pos, Vec3s* rot, f32 scale, s32 sword, s32 tunic, s32 shield, s32 boots, s32 width,
                          s32 height, Vec3f* eye, Vec3f* at, f32 fovy, void* colorFrameBuffer, void* depthFrameBuffer) {
    // Note: the viewport x and y values are overwritten below, before usage
    static Vp viewport = { (PAUSE_EQUIP_PLAYER_WIDTH / 2) << 2, (PAUSE_EQUIP_PLAYER_HEIGHT / 2) << 2, G_MAXZ / 2, 0,
                           (PAUSE_EQUIP_PLAYER_WIDTH / 2) << 2, (PAUSE_EQUIP_PLAYER_HEIGHT / 2) << 2, G_MAXZ / 2, 0 };
    static Lights1 lights1 = gdSPDefLights1(80, 80, 80, 255, 255, 255, 84, 84, 172);
    static Vec3f lightDir = { 89.8f, 0.0f, 89.8f };
    u8 playerSwordAndShield[2];
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

    gDPSetColorImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, depthFrameBuffer);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(POLY_OPA_DISP++, (GPACK_ZDZ(G_MAXFBZ, 0) << 16) | GPACK_ZDZ(G_MAXFBZ, 0));
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, width - 1, height - 1);

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetColorImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, colorFrameBuffer);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_FILL);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(POLY_OPA_DISP++, (GPACK_RGBA5551(0, 0, 0, 1) << 16) | GPACK_RGBA5551(0, 0, 0, 1));
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, width - 1, height - 1);

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetDepthImage(POLY_OPA_DISP++, depthFrameBuffer);

    viewport.vp.vscale[0] = viewport.vp.vtrans[0] = width * ((1 << 2) / 2);
    viewport.vp.vscale[1] = viewport.vp.vtrans[1] = height * ((1 << 2) / 2);
    gSPViewport(POLY_OPA_DISP++, &viewport);

    guPerspective(perspMtx, &perspNorm, fovy, (f32)width / (f32)height, 10.0f, 4000.0f, 1.0f);

    gSPPerspNormalize(POLY_OPA_DISP++, perspNorm);
    gSPMatrix(POLY_OPA_DISP++, perspMtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    guLookAt(lookAtMtx, eye->x, eye->y, eye->z, at->x, at->y, at->z, 0.0f, 1.0f, 0.0f);

    gSPMatrix(POLY_OPA_DISP++, lookAtMtx, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    playerSwordAndShield[0] = sword;
    playerSwordAndShield[1] = shield;

    Matrix_SetTranslateRotateYXZ(pos->x, pos->y, pos->z, rot);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    gSPSegment(POLY_OPA_DISP++, 0x04, gameplayKeep);
    gSPSegment(POLY_OPA_DISP++, 0x06, linkObject);

    gSPSetLights1(POLY_OPA_DISP++, lights1);

    func_80093C80(globalCtx);

    POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP++, 0, 0, 0, 0, 997, 1000);

    func_8002EABC(pos, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x0C, gCullBackDList);

    Player_DrawImpl(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount, 0, tunic, boots, 0,
                    Player_OverrideLimbDrawPause, NULL, &playerSwordAndShield);

    gSPEndDisplayList(POLY_OPA_DISP++);
    gSPEndDisplayList(POLY_XLU_DISP++);

    gSPBranchList(opaRef, POLY_OPA_DISP);
    gSPBranchList(xluRef, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3288);
}

void Player_DrawPause(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot, f32 scale,
                      s32 sword, s32 tunic, s32 shield, s32 boots) {
    static Vec3f eye = { 0.0f, 0.0f, -400.0f };
    static Vec3f at = { 0.0f, 0.0f, 0.0f };
    Vec3s* destTable;
    Vec3s* srcTable;
    s32 i;

    gSegments[4] = VIRTUAL_TO_PHYSICAL(segment + PAUSE_EQUIP_BUFFER_SIZE);
    gSegments[6] =
        VIRTUAL_TO_PHYSICAL(segment + PAUSE_EQUIP_BUFFER_SIZE + PAUSE_PLAYER_SEGMENT_GAMEPLAY_KEEP_BUFFER_SIZE);

    if (!LINK_IS_ADULT) {
        if (shield == PLAYER_SHIELD_DEKU) {
            srcTable = gLinkPauseChildDekuShieldJointTable;
        } else {
            srcTable = gLinkPauseChildJointTable;
        }
    } else {
        if (sword == 3) {
            srcTable = gLinkPauseAdultBgsJointTable;
        } else if (shield != PLAYER_SHIELD_NONE) {
            srcTable = gLinkPauseAdultShieldJointTable;
        } else {
            srcTable = gLinkPauseAdultJointTable;
        }
    }

    srcTable = SEGMENTED_TO_VIRTUAL(srcTable);
    destTable = skelAnime->jointTable;
    for (i = 0; i < skelAnime->limbCount; i++) {
        *destTable++ = *srcTable++;
    }

    Player_DrawPauseImpl(globalCtx, segment + PAUSE_EQUIP_BUFFER_SIZE,
                         segment + PAUSE_EQUIP_BUFFER_SIZE + PAUSE_PLAYER_SEGMENT_GAMEPLAY_KEEP_BUFFER_SIZE, skelAnime,
                         pos, rot, scale, sword, tunic, shield, boots, PAUSE_EQUIP_PLAYER_WIDTH,
                         PAUSE_EQUIP_PLAYER_HEIGHT, &eye, &at, 60.0f, globalCtx->state.gfxCtx->curFrameBuffer,
                         globalCtx->state.gfxCtx->curFrameBuffer +
                             (PAUSE_EQUIP_PLAYER_WIDTH * PAUSE_EQUIP_PLAYER_HEIGHT));
}
