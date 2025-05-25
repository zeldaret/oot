#ifndef OBJECT_LINK_CHILD_H
#define OBJECT_LINK_CHILD_H

#include "ultra64.h"
#include "tex_len.h"
#include "z64animation.h"

#define LINK_CHILD_EYES_TEX_WIDTH 64
#define LINK_CHILD_EYES_TEX_HEIGHT 32
extern u64 gLinkChildEyesOpenTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesHalfTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesClosedfTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesLeftTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesRightTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesWideTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesDownTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];
extern u64 gLinkChildEyesWincingTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)];

#define LINK_CHILD_MOUTH_TEX_WIDTH 32
#define LINK_CHILD_MOUTH_TEX_HEIGHT 32
extern u64 gLinkChildMouthClosedTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkChildMouthHalfTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkChildMouthOpenTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)];
extern u64 gLinkChildMouthSmileTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)];

extern Gfx gLinkChildLinkDekuStickDL[41];

extern Gfx gLinkChildLeftHandNearDL[45];
extern Gfx gLinkChildLeftFistNearDL[36];
extern Gfx gLinkChildLeftFistAndKokiriSwordNearDL[81];
extern Gfx gLinkChildRightHandNearDL[44];
extern Gfx gLinkChildRightHandClosedNearDL[36];
extern Gfx gLinkChildRightFistAndDekuShieldNearDL[68];
extern Gfx gLinkChildLeftFistAndBoomerangNearDL[73];
extern Gfx gLinkChildHylianShieldSwordAndSheathNearDL[83];
extern Gfx gLinkChildHylianShieldAndSheathNearDL[69];
extern Gfx gLinkChildDekuShieldSwordAndSheathNearDL[85];
extern Gfx gLinkChildDekuShieldAndSheathNearDL[71];
extern Gfx gLinkChildSwordAndSheathNearDL[56];
extern Gfx gLinkChildSheathNearDL[39];
extern Gfx gLinkChildLeftHandHoldingMasterSwordDL[131];
extern Gfx gLinkChildRightHandAndOotNearDL[74];
extern Gfx gLinkChildRightHandHoldingFairyOcarinaNearDL[73];
extern Gfx gLinkChildRightHandHoldingSlingshotNearDL[60];
extern Gfx gLinkChildLeftHandUpNearDL[41];
extern Gfx gLinkChildGoronBraceletDL[45];
extern Gfx gLinkChildLeftHandFarDL[40];
extern Gfx gLinkChildLeftFistFarDL[36];
extern Gfx gLinkChildRightHandFarDL[40];
extern Gfx gLinkChildRightHandClosedFarDL[36];
extern Gfx gLinkChildRightFistAndDekuShieldFarDL[57];
extern Gfx gLinkChildLeftFistAndBoomerangFarDL[50];
extern Gfx gLinkChildHylianShieldSwordAndSheathFarDL[76];
extern Gfx gLinkChildHylianShieldAndSheathFarDL[62];
extern Gfx gLinkChildDekuShieldSwordAndSheathFarDL[77];
extern Gfx gLinkChildDekuShieldAndSheathFarDL[66];
extern Gfx gLinkChildSwordAndSheathFarDL[52];
extern Gfx gLinkChildSheathFarDL[38];
extern Gfx gLinkChildLeftFistAndKokiriSwordFarDL[78];
extern Gfx gLinkChildRightHandHoldingOOTFarDL[74];
extern Gfx gLinkChildRightHandHoldingFairyOcarinaFarDL[73];
extern Gfx gLinkChildRightHandHoldingSlingshotFarDL[57];
extern Gfx gLinkChildLeftHandUpFarDL[41];
extern Gfx gLinkChildRightArmStretchedSlingshotDL[134];
extern Gfx gLinkChildBottleDL[33];
extern Gfx gLinkChildDL_18580[25];
extern Gfx gLinkChildBottle2DL[34];

extern Gfx gLinkChildWaistFarDL[70];
extern Gfx gLinkChildRightThighFarDL[56];
extern Gfx gLinkChildRightShinFarDL[75];
extern Gfx gLinkChildRightFootFarDL[37];
extern Gfx gLinkChildLeftThighFarDL[56];
extern Gfx gLinkChildLeftShinFarDL[75];
extern Gfx gLinkChildLeftFootFarDL[37];
extern Gfx gLinkChildCollarFarDL[12];
extern Gfx gLinkChildTorsoFarDL[57];
extern Gfx gLinkChildHeadFarDL[161];
extern Gfx gLinkChildHatFarDL[30];
extern Gfx gLinkChildRightShoulderFarDL[56];
extern Gfx gLinkChildRightForearmFarDL[38];
extern Gfx gLinkChildLeftShoulderFarDL[56];
extern Gfx gLinkChildLeftForearmFarDL[38];

extern Gfx gLinkChildWaistNearDL[73];
extern Gfx gLinkChildRightThighNearDL[63];
extern Gfx gLinkChildRightShinNearDL[82];
extern Gfx gLinkChildRightFootNearDL[44];
extern Gfx gLinkChildLeftThighNearDL[63];
extern Gfx gLinkChildLeftShinNearDL[82];
extern Gfx gLinkChildLeftFootNearDL[44];
extern Gfx gLinkChildCollarNearDL[14];
extern Gfx gLinkChildTorsoNearDL[70];
extern Gfx gLinkChildHeadNearDL[202];
extern Gfx gLinkChildHatNearDL[39];
extern Gfx gLinkChildRightShoulderNearDL[58];
extern Gfx gLinkChildRightForearmNearDL[44];
extern Gfx gLinkChildLeftShoulderNearDL[58];
extern Gfx gLinkChildLeftForearmNearDL[44];

extern Gfx gLinkChildSlingshotStringDL[12];

extern Gfx gLinkChildDekuShieldDL[42];

extern Gfx gLinkChildDekuShieldWithMatrixDL[3];

extern Gfx gLinkChildSkullMaskDL[70];
extern Gfx gLinkChildSpookyMaskDL[30];
extern Gfx gLinkChildKeatonMaskDL[50];
extern Gfx gLinkChildMaskOfTruthDL[44];
extern Gfx gLinkChildGoronMaskDL[70];
extern Gfx gLinkChildZoraMaskDL[65];
extern Gfx gLinkChildGerudoMaskDL[84];
extern Gfx gLinkChildBunnyHoodDL[114];

extern FlexSkeletonHeader gLinkChildSkel;

#endif
