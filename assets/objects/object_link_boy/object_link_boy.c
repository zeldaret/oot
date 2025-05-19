#include "object_link_boy.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#include "array_count.h"
#include "gfx.h"
#include "z64player.h"

// Eyes textures

u64 gLinkAdultEyesOpenTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesOpenTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesHalfTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesHalfTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesClosedfTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesClosedfTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesLeftTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesLeftTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesRightTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesRightTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesWideTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesWideTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesDownTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesDownTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultEyesWincingTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEyesWincingTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

// Mouth textures

u64 gLinkAdultMouthClosedTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMouthClosedTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultMouthHalfTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMouthHalfTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultMouthOpenTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMouthOpenTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultMouthSmileTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMouthSmileTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

// Textures

#define gLinkAdultEarTex_WIDTH 16
#define gLinkAdultEarTex_HEIGHT 16
u64 gLinkAdultEarTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEarTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

#define gLinkAdultNoseTex_WIDTH 16
#define gLinkAdultNoseTex_HEIGHT 16
u64 gLinkAdultNoseTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultNoseTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

#define gLinkAdultNose2Tex_WIDTH 16
#define gLinkAdultNose2Tex_HEIGHT 16
u64 gLinkAdultNose2Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultNose2Tex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultUnusedHandTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedHandTex.ci8.tlut_gLinkAdultHeadTLUT.inc.c"
};

u64 gLinkAdultTLUT1[] = {
#include "assets/objects/object_link_boy/gLinkAdultBootFarTex.tlut.rgba16.inc.c"
};

#define gLinkAdultBootFarTex_WIDTH 16
#define gLinkAdultBootFarTex_HEIGHT 32
u64 gLinkAdultBootFarTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBootFarTex.ci8.inc.c"
};

u64 gLinkAdultTLUT2[] = {
#include "assets/objects/object_link_boy/gLinkAdultTLUT2.tlut.rgba16.inc.c"
};

u64 gLinkAdultTLUT3[] = {
#include "assets/objects/object_link_boy/gLinkAdultTLUT3.tlut.rgba16.inc.c"
};

u8 gLinkAdult_5AB0_Blob[] = {
#include "assets/objects/object_link_boy/gLinkAdult_5AB0_Blob.bin.inc.c"
};

u64 gLinkAdultHeadTLUT[] = {
#include "assets/objects/object_link_boy/gLinkAdultHeadTLUT.tlut.rgba16.inc.c"
};

u64 gLinkAdultTlut_005E00[] = {
#include "assets/objects/object_link_boy/gLinkAdultTlut_005E00.tlut.rgba16.inc.c"
};

#define gLinkAdultBootTex_WIDTH 16
#define gLinkAdultBootTex_HEIGHT 16
u64 gLinkAdultBootTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBootTex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultLegTex_WIDTH 16
#define gLinkAdultLegTex_HEIGHT 32
u64 gLinkAdultLegTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultLegTex.ci8.tlut_gLinkAdultTLUT3.inc.c"
};

#define gLinkAdultBoot2Tex_WIDTH 16
#define gLinkAdultBoot2Tex_HEIGHT 32
u64 gLinkAdultBoot2Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBoot2Tex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultBootBuckleTex_WIDTH 32
#define gLinkAdultBootBuckleTex_HEIGHT 16
u64 gLinkAdultBootBuckleTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBootBuckleTex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultSkirtAndHatTex_WIDTH 32
#define gLinkAdultSkirtAndHatTex_HEIGHT 32
u64 gLinkAdultSkirtAndHatTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSkirtAndHatTex.rgba16.inc.c"
};

#define gLinkAdultBeltTex_WIDTH 8
#define gLinkAdultBeltTex_HEIGHT 16
u64 gLinkAdultBeltTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBeltTex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultBeltClaspTex_WIDTH 32
#define gLinkAdultBeltClaspTex_HEIGHT 16
u64 gLinkAdultBeltClaspTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBeltClaspTex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultEarringTex_WIDTH 32
#define gLinkAdultEarringTex_HEIGHT 32
u64 gLinkAdultEarringTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultEarringTex.ia16.inc.c"
};

#define gLinkAdultNeckTex_WIDTH 16
#define gLinkAdultNeckTex_HEIGHT 32
u64 gLinkAdultNeckTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultNeckTex.ci8.tlut_gLinkAdultTLUT3.inc.c"
};

u64 gLinkAdultUnusedGauntlet1Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedGauntlet1Tex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

u64 gLinkAdultUnusedGauntlet2Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedGauntlet2Tex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

#define gLinkAdultArmGauntletTex_WIDTH 32
#define gLinkAdultArmGauntletTex_HEIGHT 32
u64 gLinkAdultArmGauntletTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultArmGauntletTex.ci8.tlut_gLinkAdultTLUT2.inc.c"
};

u64 gLinkAdultUnusedSheathTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedSheathTex.ci8.tlut_gLinkAdultTlut_005E00.inc.c"
};

u64 gLinkAdultUnusedSheathBandTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedSheathBandTex.ci8.tlut_gLinkAdultTlut_005E00.inc.c"
};

u64 gLinkAdultUnusedSwordPommelTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedSwordPommelTex.ci8.tlut_gLinkAdultTlut_005E00.inc.c"
};

u64 gLinkAdultUnusedSwordGuardTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedSwordGuardTex.ci8.tlut_gLinkAdultTlut_005E00.inc.c"
};

u64 gLinkAdultUnusedSwordEmblemTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultUnusedSwordEmblemTex.ci8.tlut_gLinkAdultTlut_005E00.inc.c"
};

#define gLinkAdultTunicTex_WIDTH 16
#define gLinkAdultTunicTex_HEIGHT 32
u64 gLinkAdultTunicTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultTunicTex.ci8.tlut_gLinkAdultTLUT3.inc.c"
};

#define gLinkAdultCollarTex_WIDTH 16
#define gLinkAdultCollarTex_HEIGHT 32
u64 gLinkAdultCollarTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultCollarTex.rgba16.inc.c"
};

#define gLinkAdultGauntletPlate1Tex_WIDTH 16
#define gLinkAdultGauntletPlate1Tex_HEIGHT 32
u64 gLinkAdultGauntletPlate1Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultGauntletPlate1Tex.rgba16.inc.c"
};

#define gLinkAdultGauntletPlate2Tex_WIDTH 32
#define gLinkAdultGauntletPlate2Tex_HEIGHT 32
u64 gLinkAdultGauntletPlate2Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultGauntletPlate2Tex.rgba16.inc.c"
};

#define gLinkAdultHoverBootsHeelTex_WIDTH 16
#define gLinkAdultHoverBootsHeelTex_HEIGHT 8
u64 gLinkAdultHoverBootsHeelTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHoverBootsHeelTex.rgba16.inc.c"
};

#define gLinkAdultHoverBootsJetTex_WIDTH 32
#define gLinkAdultHoverBootsJetTex_HEIGHT 32
u64 gLinkAdultHoverBootsJetTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHoverBootsJetTex.rgba16.inc.c"
};

#define gLinkAdultHoverBootsFeatherTex_WIDTH 32
#define gLinkAdultHoverBootsFeatherTex_HEIGHT 16
u64 gLinkAdultHoverBootsFeatherTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHoverBootsFeatherTex.rgba16.inc.c"
};

#define gLinkAdultMirrorShieldLowerDesignTex_WIDTH 32
#define gLinkAdultMirrorShieldLowerDesignTex_HEIGHT 64
u64 gLinkAdultMirrorShieldLowerDesignTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldLowerDesignTex.ia16.inc.c"
};

#define gLinkAdultMirrorShieldUpperDesignTex_WIDTH 64
#define gLinkAdultMirrorShieldUpperDesignTex_HEIGHT 32
u64 gLinkAdultMirrorShieldUpperDesignTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldUpperDesignTex.ia8.inc.c"
};

#define gLinkAdultHookshotMetalTex_WIDTH 8
#define gLinkAdultHookshotMetalTex_HEIGHT 8
u64 gLinkAdultHookshotMetalTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotMetalTex.rgba16.inc.c"
};

#define gLinkAdultBowBodyTex_WIDTH 8
#define gLinkAdultBowBodyTex_HEIGHT 8
u64 gLinkAdultBowBodyTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultBowBodyTex.i8.inc.c"
};

u64 gLinkAdultTLUT4[] = {
#include "assets/objects/object_link_boy/gLinkAdultTLUT4.tlut.rgba16.inc.c"
};

u8 gLinkAdult_CD40_Blob[] = {
#include "assets/objects/object_link_boy/gLinkAdult_CD40_Blob.bin.inc.c"
};

u64 gLinkAdultTLUT5[] = {
#include "assets/objects/object_link_boy/gLinkAdultTLUT5.tlut.rgba16.inc.c"
};

u8 gLinkAdult_CF48_Blob[] = {
#include "assets/objects/object_link_boy/gLinkAdult_CF48_Blob.bin.inc.c"
};

u64 gLinkAdultTLUT6[] = {
#include "assets/objects/object_link_boy/gLinkAdultTLUT6.tlut.rgba16.inc.c"
};

u8 gLinkAdult_D070_Blob[] = {
#include "assets/objects/object_link_boy/gLinkAdult_D070_Blob.bin.inc.c"
};

u64 gLinkAdultTLUT7[] = {
#include "assets/objects/object_link_boy/gLinkAdultArmOutSleeveTex.tlut.rgba16.inc.c"
};

#define gLinkAdultSwordPommelTex_WIDTH 16
#define gLinkAdultSwordPommelTex_HEIGHT 16
u64 gLinkAdultSwordPommelTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSwordPommelTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultIronBootTex_WIDTH 16
#define gLinkAdultIronBootTex_HEIGHT 16
u64 gLinkAdultIronBootTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultIronBootTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultDefaultGauntlet1Tex_WIDTH 16
#define gLinkAdultDefaultGauntlet1Tex_HEIGHT 32
u64 gLinkAdultDefaultGauntlet1Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultDefaultGauntlet1Tex.ci8.tlut_gLinkAdultTLUT5.inc.c"
};

#define gLinkAdultShieldHandleTex_WIDTH 8
#define gLinkAdultShieldHandleTex_HEIGHT 16
u64 gLinkAdultShieldHandleTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultShieldHandleTex.ci8.tlut_gLinkAdultTLUT5.inc.c"
};

#define gLinkAdultDefaultGauntlet2Tex_WIDTH 16
#define gLinkAdultDefaultGauntlet2Tex_HEIGHT 32
u64 gLinkAdultDefaultGauntlet2Tex[] = {
#include "assets/objects/object_link_boy/gLinkAdultDefaultGauntlet2Tex.ci8.tlut_gLinkAdultTLUT5.inc.c"
};

#define gLinkAdultHandTex_WIDTH 16
#define gLinkAdultHandTex_HEIGHT 16
u64 gLinkAdultHandTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandTex.ci8.tlut_gLinkAdultTLUT6.inc.c"
};

#define gLinkAdultClosedHandThumbTex_WIDTH 16
#define gLinkAdultClosedHandThumbTex_HEIGHT 16
u64 gLinkAdultClosedHandThumbTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultClosedHandThumbTex.ci8.tlut_gLinkAdultTLUT6.inc.c"
};

#define gLinkAdultHylianShieldBackTex_WIDTH 16
#define gLinkAdultHylianShieldBackTex_HEIGHT 32
u64 gLinkAdultHylianShieldBackTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldBackTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultClosedHandSideTex_WIDTH 16
#define gLinkAdultClosedHandSideTex_HEIGHT 16
u64 gLinkAdultClosedHandSideTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultClosedHandSideTex.ci8.tlut_gLinkAdultTLUT6.inc.c"
};

#define gLinkAdultSheathTex_WIDTH 32
#define gLinkAdultSheathTex_HEIGHT 32
u64 gLinkAdultSheathTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultArmOutUpperGauntletTex_WIDTH 32
#define gLinkAdultArmOutUpperGauntletTex_HEIGHT 32
u64 gLinkAdultArmOutUpperGauntletTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultArmOutUpperGauntletTex.ci8.tlut_gLinkAdultTLUT5.inc.c"
};

#define gLinkAdultSwordGuardTex_WIDTH 32
#define gLinkAdultSwordGuardTex_HEIGHT 32
u64 gLinkAdultSwordGuardTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSwordGuardTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultSheathBandTex_WIDTH 32
#define gLinkAdultSheathBandTex_HEIGHT 16
u64 gLinkAdultSheathBandTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathBandTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultSwordEmblemTex_WIDTH 16
#define gLinkAdultSwordEmblemTex_HEIGHT 16
u64 gLinkAdultSwordEmblemTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultSwordEmblemTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultHookshotHandleTex_WIDTH 16
#define gLinkAdultHookshotHandleTex_HEIGHT 8
u64 gLinkAdultHookshotHandleTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotHandleTex.ci8.tlut_gLinkAdultTLUT5.inc.c"
};

#define gLinkAdultHookshotDesignTex_WIDTH 16
#define gLinkAdultHookshotDesignTex_HEIGHT 32
u64 gLinkAdultHookshotDesignTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotDesignTex.ci8.tlut_gLinkAdultTLUT4.inc.c"
};

#define gLinkAdultArmOutSleeveTex_WIDTH 16
#define gLinkAdultArmOutSleeveTex_HEIGHT 32
u64 gLinkAdultArmOutSleeveTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultArmOutSleeveTex.ci8.inc.c"
};

// Various vertices and DLs

Vtx gLinkAdultHylianShieldSwordAndSheathNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldSwordAndSheathNearVtx.inc.c"
};

Vtx gLinkAdultHylianShieldAndSheathNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldAndSheathNearVtx.inc.c"
};

Vtx gLinkAdultMirrorShieldSwordAndSheathNearVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathNearVtx1.inc.c"
};

Vtx gLinkAdultMirrorShieldAndSheathNearVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathNearVtx1.inc.c"
};

Vtx gLinkAdultLeftHandNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandNearVtx.inc.c"
};

Vtx gLinkAdultLeftHandClosedNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandClosedNearVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingMasterSwordNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingMasterSwordNearVtx.inc.c"
};

Vtx gLinkAdultRightHandNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandNearVtx.inc.c"
};

Vtx gLinkAdultRightHandClosedNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandClosedNearVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingHylianShieldNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHylianShieldNearVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingBowNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowNearVtx.inc.c"
};

Vtx gLinkAdultMasterSwordAndSheathNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultMasterSwordAndSheathNearVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingHammerNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingHammerNearVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingBgsNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingBgsNearVtx.inc.c"
};

Vtx gLinkAdultHandHoldingBrokenGiantsKnifeVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBrokenGiantsKnifeVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingMirrorShieldNearVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldNearVtx1.inc.c"
};

Vtx gLinkAdultRightHandHoldingOotNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingOotNearVtx.inc.c"
};

Vtx gLinkAdultSheathNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathNearVtx.inc.c"
};

Vtx gLinkAdultLeftHandOutNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandOutNearVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingHookshotNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHookshotNearVtx.inc.c"
};

Vtx gLinkAdultLeftGauntletPlate1Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate1Vtx.inc.c"
};

Vtx gLinkAdultLeftGauntletPlate2Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate2Vtx.inc.c"
};

Vtx gLinkAdultLeftGauntletPlate3Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate3Vtx.inc.c"
};

Vtx gLinkAdultRightGauntletPlate1Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate1Vtx.inc.c"
};

Vtx gLinkAdultRightGauntletPlate2Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate2Vtx.inc.c"
};

Vtx gLinkAdultRightGauntletPlate3Vtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate3Vtx.inc.c"
};

Vtx gLinkAdultLeftIronBootVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftIronBootVtx.inc.c"
};

Vtx gLinkAdultRightIronBootVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightIronBootVtx.inc.c"
};

Vtx gLinkAdultLeftHoverBootVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHoverBootVtx.inc.c"
};

Vtx gLinkAdultRightHoverBootVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHoverBootVtx.inc.c"
};

Vtx gLinkAdultHylianShieldSwordAndSheathFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldSwordAndSheathFarVtx.inc.c"
};

Vtx gLinkAdultHylianShieldAndSheathFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldAndSheathFarVtx.inc.c"
};

Vtx gLinkAdultMirrorShieldSwordAndSheathFarVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathFarVtx1.inc.c"
};

Vtx gLinkAdultMirrorShieldAndSheathFarVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathFarVtx1.inc.c"
};

Vtx gLinkAdultLeftHandFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandFarVtx.inc.c"
};

Vtx gLinkAdultLeftHandClosedFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandClosedFarVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingMasterSwordFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingMasterSwordFarVtx.inc.c"
};

Vtx gLinkAdultRightHandFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandFarVtx.inc.c"
};

Vtx gLinkAdultRightHandClosedFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandClosedFarVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingHylianShieldFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHylianShieldFarVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingBowFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowFarVtx.inc.c"
};

Vtx gLinkAdultMasterSwordAndSheathFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultMasterSwordAndSheathFarVtx.inc.c"
};

Vtx gLinkAdultSheathFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathFarVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingHammerFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingHammerFarVtx.inc.c"
};

Vtx gLinkAdultLeftHandHoldingBgsFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingBgsFarVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingMirrorShieldFarVtx1[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldFarVtx1.inc.c"
};

Vtx gLinkAdultRightHandHoldingOotFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingOotFarVtx.inc.c"
};

Vtx gLinkAdultHandHoldingBrokenGiantsKnifeFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBrokenGiantsKnifeFarVtx.inc.c"
};

Vtx gLinkAdultHandHoldingBottleVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBottleVtx.inc.c"
};

Vtx gLinkAdultRightArmOutNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmOutNearVtx.inc.c"
};

Vtx gLinkAdultRightHandOutNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandOutNearVtx.inc.c"
};

Vtx gLinkAdultLeftArmOutNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmOutNearVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingBowFirstPersonVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowFirstPersonVtx.inc.c"
};

Vtx gLinkAdultRightHandHoldingHookshotFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHookshotFarVtx.inc.c"
};

Vtx gLinkAdultMirrorShieldSwordAndSheathNearVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathNearVtx2.inc.c"
};

Vtx gLinkAdultMirrorShieldAndSheathNearVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathNearVtx2.inc.c"
};

Vtx gLinkAdultRightHandHoldingMirrorShieldNearVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldNearVtx2.inc.c"
};

Vtx gLinkAdultBottleVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultBottleVtx.inc.c"
};

Vtx gLinkAdultMirrorShieldSwordAndSheathFarVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathFarVtx2.inc.c"
};

Vtx gLinkAdultMirrorShieldAndSheathFarVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathFarVtx2.inc.c"
};

Vtx gLinkAdultRightHandHoldingMirrorShieldFarVtx2[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldFarVtx2.inc.c"
};

Gfx gLinkAdultHylianShieldSwordAndSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldSwordAndSheathNearDL.inc.c"
};

Gfx gLinkAdultHylianShieldAndSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldAndSheathNearDL.inc.c"
};

Gfx gLinkAdultMirrorShieldSwordAndSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathNearDL.inc.c"
};

Gfx gLinkAdultMirrorShieldAndSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathNearDL.inc.c"
};

Gfx gLinkAdultLeftHandNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandNearDL.inc.c"
};

Gfx gLinkAdultLeftHandClosedNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandClosedNearDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingMasterSwordNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingMasterSwordNearDL.inc.c"
};

Gfx gLinkAdultRightHandNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandNearDL.inc.c"
};

Gfx gLinkAdultRightHandClosedNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandClosedNearDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingHylianShieldNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHylianShieldNearDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingBowNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowNearDL.inc.c"
};

Gfx gLinkAdultMasterSwordAndSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMasterSwordAndSheathNearDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingHammerNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingHammerNearDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingBgsNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingBgsNearDL.inc.c"
};

Gfx gLinkAdultHandHoldingBrokenGiantsKnifeDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBrokenGiantsKnifeDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingMirrorShieldNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldNearDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingOotNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingOotNearDL.inc.c"
};

Gfx gLinkAdultSheathNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathNearDL.inc.c"
};

Gfx gLinkAdultLeftHandOutNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandOutNearDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingHookshotNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHookshotNearDL.inc.c"
};

Gfx gLinkAdultLeftGauntletPlate1DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate1DL.inc.c"
};

Gfx gLinkAdultLeftGauntletPlate2DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate2DL.inc.c"
};

Gfx gLinkAdultLeftGauntletPlate3DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftGauntletPlate3DL.inc.c"
};

Gfx gLinkAdultRightGauntletPlate1DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate1DL.inc.c"
};

Gfx gLinkAdultRightGauntletPlate2DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate2DL.inc.c"
};

Gfx gLinkAdultRightGauntletPlate3DL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightGauntletPlate3DL.inc.c"
};

Gfx gLinkAdultLeftIronBootDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftIronBootDL.inc.c"
};

Gfx gLinkAdultRightIronBootDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightIronBootDL.inc.c"
};

Gfx gLinkAdultLeftHoverBootDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHoverBootDL.inc.c"
};

Gfx gLinkAdultRightHoverBootDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHoverBootDL.inc.c"
};

Gfx gLinkAdultHylianShieldSwordAndSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldSwordAndSheathFarDL.inc.c"
};

Gfx gLinkAdultHylianShieldAndSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHylianShieldAndSheathFarDL.inc.c"
};

Gfx gLinkAdultMirrorShieldSwordAndSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldSwordAndSheathFarDL.inc.c"
};

Gfx gLinkAdultMirrorShieldAndSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMirrorShieldAndSheathFarDL.inc.c"
};

Gfx gLinkAdultLeftHandFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandFarDL.inc.c"
};

Gfx gLinkAdultLeftHandClosedFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandClosedFarDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingMasterSwordFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingMasterSwordFarDL.inc.c"
};

Gfx gLinkAdultRightHandFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandFarDL.inc.c"
};

Gfx gLinkAdultRightHandClosedFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandClosedFarDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingHylianShieldFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHylianShieldFarDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingBowFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowFarDL.inc.c"
};

Gfx gLinkAdultMasterSwordAndSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultMasterSwordAndSheathFarDL.inc.c"
};

Gfx gLinkAdultSheathFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultSheathFarDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingHammerFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingHammerFarDL.inc.c"
};

Gfx gLinkAdultLeftHandHoldingBgsFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandHoldingBgsFarDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingMirrorShieldFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingMirrorShieldFarDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingOotFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingOotFarDL.inc.c"
};

Gfx gLinkAdultHandHoldingBrokenGiantsKnifeFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBrokenGiantsKnifeFarDL.inc.c"
};

Gfx gLinkAdultHandHoldingBottleDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHandHoldingBottleDL.inc.c"
};

Gfx gLinkAdultRightArmOutNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmOutNearDL.inc.c"
};

Gfx gLinkAdultRightHandOutNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandOutNearDL.inc.c"
};

Gfx gLinkAdultLeftArmOutNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmOutNearDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingBowFirstPersonDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingBowFirstPersonDL.inc.c"
};

Gfx gLinkAdultRightHandHoldingHookshotFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandHoldingHookshotFarDL.inc.c"
};

Gfx gLinkAdultBottleDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultBottleDL.inc.c"
};

// Hookshot, bow, broken giant's knife

Vtx gLinkAdultHookshotChainVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotChainVtx.inc.c"
};

#define gLinkAdultHookshotChainTex_WIDTH 16
#define gLinkAdultHookshotChainTex_HEIGHT 32
u64 gLinkAdultHookshotChainTex[];

Gfx gLinkAdultHookshotChainDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotChainDL.inc.c"
};

Vtx gLinkAdultBowStringVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultBowStringVtx.inc.c"
};

Gfx gLinkAdultBowStringDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultBowStringDL.inc.c"
};

Vtx gLinkAdultHookshotTipVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotTipVtx.inc.c"
};

Gfx gLinkAdultHookshotTipDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotTipDL.inc.c"
};

u64 gLinkAdultHookshotChainTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotChainTex.rgba16.inc.c"
};

Vtx gLinkAdultBrokenGiantsKnifeBladeVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultBrokenGiantsKnifeBladeVtx.inc.c"
};

Gfx gLinkAdultBrokenGiantsKnifeBladeDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultBrokenGiantsKnifeBladeDL.inc.c"
};

// Hookshot reticle

#define gLinkAdultHookshotReticleTex_WIDTH 64
#define gLinkAdultHookshotReticleTex_HEIGHT 64
u64 gLinkAdultHookshotReticleTex[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotReticleTex.i8.inc.c"
};

Vtx gLinkAdultHookshotReticleVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotReticleVtx.inc.c"
};

Gfx gLinkAdultHookshotReticleDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHookshotReticleDL.inc.c"
};

// Far skeleton vertices

Vtx gLinkAdultRightFootFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightFootFarVtx.inc.c"
};

Vtx gLinkAdultRightLegFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightLegFarVtx.inc.c"
};

Vtx gLinkAdultRightThighFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightThighFarVtx.inc.c"
};

Vtx gLinkAdultLeftFootFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftFootFarVtx.inc.c"
};

Vtx gLinkAdultLeftLegFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftLegFarVtx.inc.c"
};

Vtx gLinkAdultLeftThighFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftThighFarVtx.inc.c"
};

Vtx gLinkAdultWaistFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultWaistFarVtx.inc.c"
};

Vtx gLinkAdultHatFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHatFarVtx.inc.c"
};

Vtx gLinkAdultHeadFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHeadFarVtx.inc.c"
};

Vtx gLinkAdultVtx_02E120[] = {
#include "assets/objects/object_link_boy/gLinkAdultVtx_02E120.inc.c"
};

Vtx gLinkAdultLeftArmFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmFarVtx.inc.c"
};

Vtx gLinkAdultLeftShoulderFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftShoulderFarVtx.inc.c"
};

Vtx gLinkAdultVtx_02E7E0[] = {
#include "assets/objects/object_link_boy/gLinkAdultVtx_02E7E0.inc.c"
};

Vtx gLinkAdultRightArmFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmFarVtx.inc.c"
};

Vtx gLinkAdultRightShoulderFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightShoulderFarVtx.inc.c"
};

Vtx gLinkAdultTorsoFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultTorsoFarVtx.inc.c"
};

Vtx gLinkAdultCollarFarVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultCollarFarVtx.inc.c"
};

// Far skeleton DLs

Gfx gLinkAdultWaistFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultWaistFarDL.inc.c"
};

Gfx gLinkAdultRightThighFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightThighFarDL.inc.c"
};

Gfx gLinkAdultRightLegFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightLegFarDL.inc.c"
};

Gfx gLinkAdultRightFootFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightFootFarDL.inc.c"
};

Gfx gLinkAdultLeftThighFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftThighFarDL.inc.c"
};

Gfx gLinkAdultLeftLegFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftLegFarDL.inc.c"
};

Gfx gLinkAdultLeftFootFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftFootFarDL.inc.c"
};

Gfx gLinkAdultCollarFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultCollarFarDL.inc.c"
};

Gfx gLinkAdultTorsoFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultTorsoFarDL.inc.c"
};

Gfx gLinkAdultHeadFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHeadFarDL.inc.c"
};

Gfx gLinkAdultHatFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHatFarDL.inc.c"
};

Gfx gLinkAdultRightShoulderFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightShoulderFarDL.inc.c"
};

Gfx gLinkAdultRightArmFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmFarDL.inc.c"
};

Gfx gLinkAdultLeftShoulderFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftShoulderFarDL.inc.c"
};

Gfx gLinkAdultLeftArmFarDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmFarDL.inc.c"
};

// Near skeleton vertices

Vtx gLinkAdultRightFootNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightFootNearVtx.inc.c"
};

Vtx gLinkAdultRightLegNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightLegNearVtx.inc.c"
};

Vtx gLinkAdultRightThighNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightThighNearVtx.inc.c"
};

Vtx gLinkAdultLeftFootNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftFootNearVtx.inc.c"
};

Vtx gLinkAdultLeftLegNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftLegNearVtx.inc.c"
};

Vtx gLinkAdultLeftThighNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftThighNearVtx.inc.c"
};

Vtx gLinkAdultWaistNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultWaistNearVtx.inc.c"
};

Vtx gLinkAdultHatNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHatNearVtx.inc.c"
};

Vtx gLinkAdultHeadNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultHeadNearVtx.inc.c"
};

Vtx gLinkAdultVtx_033760[] = {
#include "assets/objects/object_link_boy/gLinkAdultVtx_033760.inc.c"
};

Vtx gLinkAdultLeftArmNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmNearVtx.inc.c"
};

Vtx gLinkAdultLeftShoulderNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftShoulderNearVtx.inc.c"
};

Vtx gLinkAdultVtx_0340A0[] = {
#include "assets/objects/object_link_boy/gLinkAdultVtx_0340A0.inc.c"
};

Vtx gLinkAdultRightArmNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmNearVtx.inc.c"
};

Vtx gLinkAdultRightShoulderNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightShoulderNearVtx.inc.c"
};

Vtx gLinkAdultTorsoNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultTorsoNearVtx.inc.c"
};

Vtx gLinkAdultCollarNearVtx[] = {
#include "assets/objects/object_link_boy/gLinkAdultCollarNearVtx.inc.c"
};

// Near skeleton DLs

Gfx gLinkAdultWaistNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultWaistNearDL.inc.c"
};

Gfx gLinkAdultRightThighNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightThighNearDL.inc.c"
};

Gfx gLinkAdultRightLegNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightLegNearDL.inc.c"
};

Gfx gLinkAdultRightFootNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightFootNearDL.inc.c"
};

Gfx gLinkAdultLeftThighNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftThighNearDL.inc.c"
};

Gfx gLinkAdultLeftLegNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftLegNearDL.inc.c"
};

Gfx gLinkAdultLeftFootNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftFootNearDL.inc.c"
};

Gfx gLinkAdultCollarNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultCollarNearDL.inc.c"
};

Gfx gLinkAdultTorsoNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultTorsoNearDL.inc.c"
};

Gfx gLinkAdultHeadNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHeadNearDL.inc.c"
};

Gfx gLinkAdultHatNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultHatNearDL.inc.c"
};

Gfx gLinkAdultRightShoulderNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightShoulderNearDL.inc.c"
};

Gfx gLinkAdultRightArmNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmNearDL.inc.c"
};

Gfx gLinkAdultLeftShoulderNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftShoulderNearDL.inc.c"
};

Gfx gLinkAdultLeftArmNearDL[] = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmNearDL.inc.c"
};

// Skeleton

LodLimb gLinkAdultRootLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRootLimb.inc.c"
};

LodLimb gLinkAdultWaistLimb = {
#include "assets/objects/object_link_boy/gLinkAdultWaistLimb.inc.c"
};

LodLimb gLinkAdultLowerControlLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLowerControlLimb.inc.c"
};

LodLimb gLinkAdultRightThighLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightThighLimb.inc.c"
};

LodLimb gLinkAdultRightLegLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightLegLimb.inc.c"
};

LodLimb gLinkAdultRightFootLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightFootLimb.inc.c"
};

LodLimb gLinkAdultLeftThighLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftThighLimb.inc.c"
};

LodLimb gLinkAdultLeftLegLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftLegLimb.inc.c"
};

LodLimb gLinkAdultLeftFootLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftFootLimb.inc.c"
};

LodLimb gLinkAdultUpperControlLimb = {
#include "assets/objects/object_link_boy/gLinkAdultUpperControlLimb.inc.c"
};

LodLimb gLinkAdultHeadLimb = {
#include "assets/objects/object_link_boy/gLinkAdultHeadLimb.inc.c"
};

LodLimb gLinkAdultHatLimb = {
#include "assets/objects/object_link_boy/gLinkAdultHatLimb.inc.c"
};

LodLimb gLinkAdultCollarLimb = {
#include "assets/objects/object_link_boy/gLinkAdultCollarLimb.inc.c"
};

LodLimb gLinkAdultLeftShoulderLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftShoulderLimb.inc.c"
};

LodLimb gLinkAdultLeftArmLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftArmLimb.inc.c"
};

LodLimb gLinkAdultLeftHandLimb = {
#include "assets/objects/object_link_boy/gLinkAdultLeftHandLimb.inc.c"
};

LodLimb gLinkAdultRightShoulderLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightShoulderLimb.inc.c"
};

LodLimb gLinkAdultRightArmLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightArmLimb.inc.c"
};

LodLimb gLinkAdultRightHandLimb = {
#include "assets/objects/object_link_boy/gLinkAdultRightHandLimb.inc.c"
};

LodLimb gLinkAdultSwordAndSheathLimb = {
#include "assets/objects/object_link_boy/gLinkAdultSwordAndSheathLimb.inc.c"
};

LodLimb gLinkTorsoLimb = {
#include "assets/objects/object_link_boy/gLinkTorsoLimb.inc.c"
};

void* gLinkAdultLimbs[] = {
#include "assets/objects/object_link_boy/gLinkAdultLimbs.inc.c"
};

FlexSkeletonHeader gLinkAdultSkel = {
#include "assets/objects/object_link_boy/gLinkAdultSkel.inc.c"
};

