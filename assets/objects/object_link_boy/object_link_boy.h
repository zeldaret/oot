#ifndef OBJECT_LINK_BOY_H
#define OBJECT_LINK_BOY_H

#include "ultra64.h"
#include "tex_len.h"
#include "z64animation.h"

#define LINK_ADULT_EYES_TEX_WIDTH 64
#define LINK_ADULT_EYES_TEX_HEIGHT 32
extern u64 gLinkAdultEyesOpenTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesHalfTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesClosedfTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesRightTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesLeftTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesWideTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesDownTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkAdultEyesWincingTex[TEX_LEN(u64, LINK_ADULT_EYES_TEX_WIDTH, LINK_ADULT_EYES_TEX_HEIGHT, 8)];

#define LINK_ADULT_MOUTH_TEX_WIDTH 32
#define LINK_ADULT_MOUTH_TEX_HEIGHT 32
extern u64 gLinkAdultMouthClosedTex[TEX_LEN(u64, LINK_ADULT_MOUTH_TEX_WIDTH, LINK_ADULT_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkAdultMouthHalfTex[TEX_LEN(u64, LINK_ADULT_MOUTH_TEX_WIDTH, LINK_ADULT_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkAdultMouthOpenTex[TEX_LEN(u64, LINK_ADULT_MOUTH_TEX_WIDTH, LINK_ADULT_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkAdultMouthSmileTex[TEX_LEN(u64, LINK_ADULT_MOUTH_TEX_WIDTH, LINK_ADULT_MOUTH_TEX_HEIGHT, 8)];

extern Gfx gLinkAdultHylianShieldSwordAndSheathNearDL[127];
extern Gfx gLinkAdultHylianShieldAndSheathNearDL[105];
extern Gfx gLinkAdultMirrorShieldSwordAndSheathNearDL[159];
extern Gfx gLinkAdultMirrorShieldAndSheathNearDL[127];
extern Gfx gLinkAdultLeftHandNearDL[72];
extern Gfx gLinkAdultLeftHandClosedNearDL[82];
extern Gfx gLinkAdultLeftHandHoldingMasterSwordNearDL[164];
extern Gfx gLinkAdultRightHandNearDL[73];
extern Gfx gLinkAdultRightHandClosedNearDL[82];
extern Gfx gLinkAdultRightHandHoldingHylianShieldNearDL[135];
extern Gfx gLinkAdultRightHandHoldingBowNearDL[119];
extern Gfx gLinkAdultMasterSwordAndSheathNearDL[80];
extern Gfx gLinkAdultLeftHandHoldingHammerNearDL[157];
extern Gfx gLinkAdultLeftHandHoldingBgsNearDL[145];
extern Gfx gLinkAdultHandHoldingBrokenGiantsKnifeDL[142];
extern Gfx gLinkAdultRightHandHoldingMirrorShieldNearDL[155];
extern Gfx gLinkAdultRightHandHoldingOotNearDL[104];
extern Gfx gLinkAdultSheathNearDL[48];
extern Gfx gLinkAdultLeftHandOutNearDL[67];
extern Gfx gLinkAdultRightHandHoldingHookshotNearDL[149];
extern Gfx gLinkAdultLeftGauntletPlate1DL[24];
extern Gfx gLinkAdultLeftGauntletPlate2DL[44];
extern Gfx gLinkAdultLeftGauntletPlate3DL[44];
extern Gfx gLinkAdultRightGauntletPlate1DL[24];
extern Gfx gLinkAdultRightGauntletPlate2DL[44];
extern Gfx gLinkAdultRightGauntletPlate3DL[44];
extern Gfx gLinkAdultLeftIronBootDL[41];
extern Gfx gLinkAdultRightIronBootDL[41];
extern Gfx gLinkAdultLeftHoverBootDL[65];
extern Gfx gLinkAdultRightHoverBootDL[65];
extern Gfx gLinkAdultHylianShieldSwordAndSheathFarDL[96];
extern Gfx gLinkAdultHylianShieldAndSheathFarDL[71];
extern Gfx gLinkAdultMirrorShieldSwordAndSheathFarDL[132];
extern Gfx gLinkAdultMirrorShieldAndSheathFarDL[105];
extern Gfx gLinkAdultLeftHandFarDL[51];
extern Gfx gLinkAdultLeftHandClosedFarDL[81];
extern Gfx gLinkAdultLeftHandHoldingMasterSwordFarDL[144];
extern Gfx gLinkAdultRightHandFarDL[51];
extern Gfx gLinkAdultRightHandClosedFarDL[81];
extern Gfx gLinkAdultRightHandHoldingHylianShieldFarDL[78];
extern Gfx gLinkAdultRightHandHoldingBowFarDL[111];
extern Gfx gLinkAdultMasterSwordAndSheathFarDL[74];
extern Gfx gLinkAdultSheathFarDL[39];
extern Gfx gLinkAdultLeftHandHoldingHammerFarDL[134];
extern Gfx gLinkAdultLeftHandHoldingBgsFarDL[145];
extern Gfx gLinkAdultRightHandHoldingMirrorShieldFarDL[131];
extern Gfx gLinkAdultRightHandHoldingOotFarDL[82];
extern Gfx gLinkAdultHandHoldingBrokenGiantsKnifeFarDL[131];
extern Gfx gLinkAdultHandHoldingBottleDL[99];
extern Gfx gLinkAdultRightArmOutNearDL[97];
extern Gfx gLinkAdultRightHandOutNearDL[112];
extern Gfx gLinkAdultLeftArmOutNearDL[85];
extern Gfx gLinkAdultRightHandHoldingBowFirstPersonDL[158];
extern Gfx gLinkAdultRightHandHoldingHookshotFarDL[196];
extern Gfx gLinkAdultBottleDL[35];
extern Gfx gLinkAdultHookshotChainDL[23];
extern Gfx gLinkAdultBowStringDL[12];
extern Gfx gLinkAdultHookshotTipDL[22];
extern Gfx gLinkAdultBrokenGiantsKnifeBladeDL[28];
extern Gfx gLinkAdultHookshotReticleDL[13];

extern Gfx gLinkAdultWaistFarDL[78];

extern Gfx gLinkAdultWaistNearDL[105];
extern Gfx gLinkAdultRightShoulderNearDL[56];

extern FlexSkeletonHeader gLinkAdultSkel;

#endif
