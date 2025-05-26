#include "object_link_child.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#include "array_count.h"
#include "gfx.h"
#include "z64player.h"

// Eyes textures

u64 gLinkChildEyesOpenTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesOpenTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesHalfTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesHalfTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesClosedfTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesClosedfTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesLeftTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesLeftTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesRightTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesRightTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesWideTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesWideTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesDownTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesDownTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildEyesWincingTex[TEX_LEN(u64, LINK_CHILD_EYES_TEX_WIDTH, LINK_CHILD_EYES_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEyesWincingTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

// Mouth textures

u64 gLinkChildMouthClosedTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMouthClosedTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildMouthHalfTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMouthHalfTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildMouthOpenTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMouthOpenTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildMouthSmileTex[TEX_LEN(u64, LINK_CHILD_MOUTH_TEX_WIDTH, LINK_CHILD_MOUTH_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMouthSmileTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

// Textures

#define gLinkChildNoseTex_WIDTH 16
#define gLinkChildNoseTex_HEIGHT 16
u64 gLinkChildNoseTex[TEX_LEN(u64, gLinkChildNoseTex_WIDTH, gLinkChildNoseTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildNoseTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

#define gLinkChildUnusedHandTex_WIDTH 16
#define gLinkChildUnusedHandTex_HEIGHT 16
u64 gLinkChildUnusedHandTex[TEX_LEN(u64, gLinkChildUnusedHandTex_WIDTH, gLinkChildUnusedHandTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildUnusedHandTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

#define gLinkChildEarTex_WIDTH 16
#define gLinkChildEarTex_HEIGHT 16
u64 gLinkChildEarTex[TEX_LEN(u64, gLinkChildEarTex_WIDTH, gLinkChildEarTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildEarTex.ci8.tlut_gLinkChildSkinTLUT.inc.c"
};

u64 gLinkChildBeltTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildBeltTLUT.tlut.rgba16.inc.c"
};

u64 gLinkChildSkinTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildSkinTLUT.tlut.rgba16.inc.c"
};

u64 gLinkChildUnusedTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildUnused1Tex.tlut.rgba16.inc.c"
};

#define gLinkChildUnused1Tex_WIDTH 16
#define gLinkChildUnused1Tex_HEIGHT 16
u64 gLinkChildUnused1Tex[TEX_LEN(u64, gLinkChildUnused1Tex_WIDTH, gLinkChildUnused1Tex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildUnused1Tex.ci8.inc.c"
};

#define gLinkChildUnused2Tex_WIDTH 32
#define gLinkChildUnused2Tex_HEIGHT 16
u64 gLinkChildUnused2Tex[TEX_LEN(u64, gLinkChildUnused2Tex_WIDTH, gLinkChildUnused2Tex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildUnused2Tex.ci8.tlut_gLinkChildBeltTLUT.inc.c"
};

#define gLinkChildLowerBootTex_WIDTH 32
#define gLinkChildLowerBootTex_HEIGHT 32
u64 gLinkChildLowerBootTex[TEX_LEN(u64, gLinkChildLowerBootTex_WIDTH, gLinkChildLowerBootTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildLowerBootTex.ci8.tlut_gLinkChildBeltTLUT.inc.c"
};

#define gLinkChildBootTex_WIDTH 32
#define gLinkChildBootTex_HEIGHT 32
u64 gLinkChildBootTex[TEX_LEN(u64, gLinkChildBootTex_WIDTH, gLinkChildBootTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildBootTex.ci8.tlut_gLinkChildBeltTLUT.inc.c"
};

#define gLinkChildWaistTex_WIDTH 32
#define gLinkChildWaistTex_HEIGHT 32
u64 gLinkChildWaistTex[TEX_LEN(u64, gLinkChildWaistTex_WIDTH, gLinkChildWaistTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildWaistTex.i8.inc.c"
};

#define gLinkChildBeltTex_WIDTH 8
#define gLinkChildBeltTex_HEIGHT 16
u64 gLinkChildBeltTex[TEX_LEN(u64, gLinkChildBeltTex_WIDTH, gLinkChildBeltTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildBeltTex.ci8.tlut_gLinkChildBeltTLUT.inc.c"
};

#define gLinkChildBeltClaspTex_WIDTH 32
#define gLinkChildBeltClaspTex_HEIGHT 16
u64 gLinkChildBeltClaspTex[TEX_LEN(u64, gLinkChildBeltClaspTex_WIDTH, gLinkChildBeltClaspTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildBeltClaspTex.ci8.tlut_gLinkChildBeltTLUT.inc.c"
};

// Deku stick

Vtx gLinkChildLinkDekuStickVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLinkDekuStickVtx.inc.c"
};

Gfx gLinkChildLinkDekuStickDL[41] = {
#include "assets/objects/object_link_child/gLinkChildLinkDekuStickDL.inc.c"
};

// Textures

#define gLinkChildFairyOcarinaTex_WIDTH 32
#define gLinkChildFairyOcarinaTex_HEIGHT 16
u64 gLinkChildFairyOcarinaTex[TEX_LEN(u64, gLinkChildFairyOcarinaTex_WIDTH, gLinkChildFairyOcarinaTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildFairyOcarinaTex.rgba16.inc.c"
};

#define gLinkChildGoronBraceletTex_WIDTH 8
#define gLinkChildGoronBraceletTex_HEIGHT 8
u64 gLinkChildGoronBraceletTex[TEX_LEN(u64, gLinkChildGoronBraceletTex_WIDTH, gLinkChildGoronBraceletTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronBraceletTex.rgba16.inc.c"
};

#define gLinkChildGoronSymbolTex_WIDTH 16
#define gLinkChildGoronSymbolTex_HEIGHT 32
u64 gLinkChildGoronSymbolTex[TEX_LEN(u64, gLinkChildGoronSymbolTex_WIDTH, gLinkChildGoronSymbolTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronSymbolTex.ia16.inc.c"
};

#define gLinkChildDekuShieldBackTex_WIDTH 32
#define gLinkChildDekuShieldBackTex_HEIGHT 32
u64 gLinkChildDekuShieldBackTex[TEX_LEN(u64, gLinkChildDekuShieldBackTex_WIDTH, gLinkChildDekuShieldBackTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldBackTex.rgba16.inc.c"
};

#define gLinkChildDekuShieldFrontTex_WIDTH 32
#define gLinkChildDekuShieldFrontTex_HEIGHT 64
u64 gLinkChildDekuShieldFrontTex[TEX_LEN(u64, gLinkChildDekuShieldFrontTex_WIDTH, gLinkChildDekuShieldFrontTex_HEIGHT,
                                         16)] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldFrontTex.rgba16.inc.c"
};

#define gLinkChildHylianShieldBackTex_WIDTH 16
#define gLinkChildHylianShieldBackTex_HEIGHT 32
u64 gLinkChildHylianShieldBackTex[TEX_LEN(u64, gLinkChildHylianShieldBackTex_WIDTH,
                                          gLinkChildHylianShieldBackTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldBackTex.rgba16.inc.c"
};

#define gLinkChildSlingshotTex_WIDTH 16
#define gLinkChildSlingshotTex_HEIGHT 32
u64 gLinkChildSlingshotTex[TEX_LEN(u64, gLinkChildSlingshotTex_WIDTH, gLinkChildSlingshotTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildSlingshotTex.rgba16.inc.c"
};

#define gLinkChildSlingshotSeedTex_WIDTH 32
#define gLinkChildSlingshotSeedTex_HEIGHT 32
u64 gLinkChildSlingshotSeedTex[TEX_LEN(u64, gLinkChildSlingshotSeedTex_WIDTH, gLinkChildSlingshotSeedTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildSlingshotSeedTex.rgba16.inc.c"
};

u64 gLinkChildHandTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildHandTex.tlut.rgba16.inc.c"
};

u64 gLinkChildSwordsTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildSwordsTLUT.tlut.rgba16.inc.c"
};

u8 gLinkChild_A110_Blob[] = {
#include "assets/objects/object_link_child/gLinkChild_A110_Blob.bin.inc.c"
};

u64 gLinkChildSwordTLUT[] = {
#include "assets/objects/object_link_child/gLinkChildSwordJewelTex.tlut.rgba16.inc.c"
};

#define gLinkChildHandTex_WIDTH 16
#define gLinkChildHandTex_HEIGHT 16
u64 gLinkChildHandTex[TEX_LEN(u64, gLinkChildHandTex_WIDTH, gLinkChildHandTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildHandTex.ci8.inc.c"
};

#define gLinkChildKokiriSwordSheathTex_WIDTH 16
#define gLinkChildKokiriSwordSheathTex_HEIGHT 16
u64 gLinkChildKokiriSwordSheathTex[TEX_LEN(u64, gLinkChildKokiriSwordSheathTex_WIDTH,
                                           gLinkChildKokiriSwordSheathTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildKokiriSwordSheathTex.ci8.tlut_gLinkChildSwordsTLUT.inc.c"
};

#define gLinkChildSwordJewelTex_WIDTH 32
#define gLinkChildSwordJewelTex_HEIGHT 16
u64 gLinkChildSwordJewelTex[TEX_LEN(u64, gLinkChildSwordJewelTex_WIDTH, gLinkChildSwordJewelTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildSwordJewelTex.ci8.inc.c"
};

#define gLinkChildMasterSwordPommelTex_WIDTH 16
#define gLinkChildMasterSwordPommelTex_HEIGHT 16
u64 gLinkChildMasterSwordPommelTex[TEX_LEN(u64, gLinkChildMasterSwordPommelTex_WIDTH,
                                           gLinkChildMasterSwordPommelTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMasterSwordPommelTex.ci8.tlut_gLinkChildSwordsTLUT.inc.c"
};

#define gLinkChildMasterSwordGuardTex_WIDTH 32
#define gLinkChildMasterSwordGuardTex_HEIGHT 32
u64 gLinkChildMasterSwordGuardTex[TEX_LEN(u64, gLinkChildMasterSwordGuardTex_WIDTH,
                                          gLinkChildMasterSwordGuardTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMasterSwordGuardTex.ci8.tlut_gLinkChildSwordsTLUT.inc.c"
};

#define gLinkChildMasterSwordEmblemTex_WIDTH 16
#define gLinkChildMasterSwordEmblemTex_HEIGHT 16
u64 gLinkChildMasterSwordEmblemTex[TEX_LEN(u64, gLinkChildMasterSwordEmblemTex_WIDTH,
                                           gLinkChildMasterSwordEmblemTex_HEIGHT, 8)] = {
#include "assets/objects/object_link_child/gLinkChildMasterSwordEmblemTex.ci8.tlut_gLinkChildSwordsTLUT.inc.c"
};

// Various vertices and DLs

Vtx gLinkChildLeftHandNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandNearVtx.inc.c"
};

Vtx gLinkChildLeftFistNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistNearVtx.inc.c"
};

Vtx gLinkChildLeftFistAndKokiriSwordNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndKokiriSwordNearVtx.inc.c"
};

Vtx gLinkChildRightHandNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandNearVtx.inc.c"
};

Vtx gLinkChildRightHandClosedNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandClosedNearVtx.inc.c"
};

Vtx gLinkChildRightFistAndDekuShieldNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightFistAndDekuShieldNearVtx.inc.c"
};

Vtx gLinkChildLeftFistAndBoomerangNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndBoomerangNearVtx.inc.c"
};

Vtx gLinkChildHylianShieldSwordAndSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldSwordAndSheathNearVtx.inc.c"
};

Vtx gLinkChildHylianShieldAndSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldAndSheathNearVtx.inc.c"
};

Vtx gLinkChildDekuShieldSwordAndSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldSwordAndSheathNearVtx.inc.c"
};

Vtx gLinkChildDekuShieldAndSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldAndSheathNearVtx.inc.c"
};

Vtx gLinkChildSwordAndSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSwordAndSheathNearVtx.inc.c"
};

Vtx gLinkChildSheathNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSheathNearVtx.inc.c"
};

Vtx gLinkChildLeftHandHoldingMasterSwordVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandHoldingMasterSwordVtx.inc.c"
};

Vtx gLinkChildRightHandAndOotNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandAndOotNearVtx.inc.c"
};

Vtx gLinkChildRightHandHoldingFairyOcarinaNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingFairyOcarinaNearVtx.inc.c"
};

Vtx gLinkChildRightHandHoldingSlingshotNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingSlingshotNearVtx.inc.c"
};

Vtx gLinkChildLeftHandUpNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandUpNearVtx.inc.c"
};

Vtx gLinkChildGoronBraceletVtx1[] = {
#include "assets/objects/object_link_child/gLinkChildGoronBraceletVtx1.inc.c"
};

Vtx gLinkChildLeftHandFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandFarVtx.inc.c"
};

Vtx gLinkChildLeftFistFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistFarVtx.inc.c"
};

Vtx gLinkChildRightHandFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandFarVtx.inc.c"
};

Vtx gLinkChildRightHandClosedFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandClosedFarVtx.inc.c"
};

Vtx gLinkChildRightFistAndDekuShieldFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightFistAndDekuShieldFarVtx.inc.c"
};

Vtx gLinkChildLeftFistAndBoomerangFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndBoomerangFarVtx.inc.c"
};

Vtx gLinkChildHylianShieldSwordAndSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldSwordAndSheathFarVtx.inc.c"
};

Vtx gLinkChildHylianShieldAndSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldAndSheathFarVtx.inc.c"
};

Vtx gLinkChildDekuShieldSwordAndSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldSwordAndSheathFarVtx.inc.c"
};

Vtx gLinkChildDekuShieldAndSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldAndSheathFarVtx.inc.c"
};

Vtx gLinkChildSwordAndSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSwordAndSheathFarVtx.inc.c"
};

Vtx gLinkChildSheathFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSheathFarVtx.inc.c"
};

Vtx gLinkChildLeftFistAndKokiriSwordFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndKokiriSwordFarVtx.inc.c"
};

Vtx gLinkChildRightHandHoldingOOTFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingOOTFarVtx.inc.c"
};

Vtx gLinkChildRightHandHoldingFairyOcarinaFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingFairyOcarinaFarVtx.inc.c"
};

Vtx gLinkChildRightHandHoldingSlingshotFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingSlingshotFarVtx.inc.c"
};

Vtx gLinkChildLeftHandUpFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandUpFarVtx.inc.c"
};

Vtx gLinkChildRightArmStretchedSlingshotVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightArmStretchedSlingshotVtx.inc.c"
};

Vtx gLinkChildBottleVtx[] = {
#include "assets/objects/object_link_child/gLinkChildBottleVtx.inc.c"
};

Vtx gLinkChildGoronBraceletVtx2[] = {
#include "assets/objects/object_link_child/gLinkChildGoronBraceletVtx2.inc.c"
};

Vtx gLinkChildDL_18580_Vtx[] = {
#include "assets/objects/object_link_child/gLinkChildDL_18580_Vtx.inc.c"
};

Vtx gLinkChildBottle2Vtx[] = {
#include "assets/objects/object_link_child/gLinkChildBottle2Vtx.inc.c"
};

Gfx gLinkChildLeftHandNearDL[45] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandNearDL.inc.c"
};

Gfx gLinkChildLeftFistNearDL[36] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistNearDL.inc.c"
};

Gfx gLinkChildLeftFistAndKokiriSwordNearDL[81] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndKokiriSwordNearDL.inc.c"
};

Gfx gLinkChildRightHandNearDL[44] = {
#include "assets/objects/object_link_child/gLinkChildRightHandNearDL.inc.c"
};

Gfx gLinkChildRightHandClosedNearDL[36] = {
#include "assets/objects/object_link_child/gLinkChildRightHandClosedNearDL.inc.c"
};

Gfx gLinkChildRightFistAndDekuShieldNearDL[68] = {
#include "assets/objects/object_link_child/gLinkChildRightFistAndDekuShieldNearDL.inc.c"
};

Gfx gLinkChildLeftFistAndBoomerangNearDL[73] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndBoomerangNearDL.inc.c"
};

Gfx gLinkChildHylianShieldSwordAndSheathNearDL[83] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldSwordAndSheathNearDL.inc.c"
};

Gfx gLinkChildHylianShieldAndSheathNearDL[69] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldAndSheathNearDL.inc.c"
};

Gfx gLinkChildDekuShieldSwordAndSheathNearDL[85] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldSwordAndSheathNearDL.inc.c"
};

Gfx gLinkChildDekuShieldAndSheathNearDL[71] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldAndSheathNearDL.inc.c"
};

Gfx gLinkChildSwordAndSheathNearDL[56] = {
#include "assets/objects/object_link_child/gLinkChildSwordAndSheathNearDL.inc.c"
};

Gfx gLinkChildSheathNearDL[39] = {
#include "assets/objects/object_link_child/gLinkChildSheathNearDL.inc.c"
};

Gfx gLinkChildLeftHandHoldingMasterSwordDL[131] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandHoldingMasterSwordDL.inc.c"
};

Gfx gLinkChildRightHandAndOotNearDL[74] = {
#include "assets/objects/object_link_child/gLinkChildRightHandAndOotNearDL.inc.c"
};

Gfx gLinkChildRightHandHoldingFairyOcarinaNearDL[73] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingFairyOcarinaNearDL.inc.c"
};

Gfx gLinkChildRightHandHoldingSlingshotNearDL[60] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingSlingshotNearDL.inc.c"
};

Gfx gLinkChildLeftHandUpNearDL[41] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandUpNearDL.inc.c"
};

Gfx gLinkChildGoronBraceletDL[45] = {
#include "assets/objects/object_link_child/gLinkChildGoronBraceletDL.inc.c"
};

Gfx gLinkChildLeftHandFarDL[40] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandFarDL.inc.c"
};

Gfx gLinkChildLeftFistFarDL[36] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistFarDL.inc.c"
};

Gfx gLinkChildRightHandFarDL[40] = {
#include "assets/objects/object_link_child/gLinkChildRightHandFarDL.inc.c"
};

Gfx gLinkChildRightHandClosedFarDL[36] = {
#include "assets/objects/object_link_child/gLinkChildRightHandClosedFarDL.inc.c"
};

Gfx gLinkChildRightFistAndDekuShieldFarDL[57] = {
#include "assets/objects/object_link_child/gLinkChildRightFistAndDekuShieldFarDL.inc.c"
};

Gfx gLinkChildLeftFistAndBoomerangFarDL[50] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndBoomerangFarDL.inc.c"
};

Gfx gLinkChildHylianShieldSwordAndSheathFarDL[76] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldSwordAndSheathFarDL.inc.c"
};

Gfx gLinkChildHylianShieldAndSheathFarDL[62] = {
#include "assets/objects/object_link_child/gLinkChildHylianShieldAndSheathFarDL.inc.c"
};

Gfx gLinkChildDekuShieldSwordAndSheathFarDL[77] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldSwordAndSheathFarDL.inc.c"
};

Gfx gLinkChildDekuShieldAndSheathFarDL[66] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldAndSheathFarDL.inc.c"
};

Gfx gLinkChildSwordAndSheathFarDL[52] = {
#include "assets/objects/object_link_child/gLinkChildSwordAndSheathFarDL.inc.c"
};

Gfx gLinkChildSheathFarDL[38] = {
#include "assets/objects/object_link_child/gLinkChildSheathFarDL.inc.c"
};

Gfx gLinkChildLeftFistAndKokiriSwordFarDL[78] = {
#include "assets/objects/object_link_child/gLinkChildLeftFistAndKokiriSwordFarDL.inc.c"
};

Gfx gLinkChildRightHandHoldingOOTFarDL[74] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingOOTFarDL.inc.c"
};

Gfx gLinkChildRightHandHoldingFairyOcarinaFarDL[73] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingFairyOcarinaFarDL.inc.c"
};

Gfx gLinkChildRightHandHoldingSlingshotFarDL[57] = {
#include "assets/objects/object_link_child/gLinkChildRightHandHoldingSlingshotFarDL.inc.c"
};

Gfx gLinkChildLeftHandUpFarDL[41] = {
#include "assets/objects/object_link_child/gLinkChildLeftHandUpFarDL.inc.c"
};

Gfx gLinkChildRightArmStretchedSlingshotDL[134] = {
#include "assets/objects/object_link_child/gLinkChildRightArmStretchedSlingshotDL.inc.c"
};

Gfx gLinkChildBottleDL[33] = {
#include "assets/objects/object_link_child/gLinkChildBottleDL.inc.c"
};

Gfx gLinkChildDL_18580[25] = {
#include "assets/objects/object_link_child/gLinkChildDL_18580.inc.c"
};

Gfx gLinkChildBottle2DL[34] = {
#include "assets/objects/object_link_child/gLinkChildBottle2DL.inc.c"
};

// Far skeleton vertices and DLs

Vtx gLinkChildRightFootFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightFootFarVtx.inc.c"
};

Vtx gLinkChildRightShinFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightShinFarVtx.inc.c"
};

Vtx gLinkChildRightThighFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightThighFarVtx.inc.c"
};

Vtx gLinkChildLeftFootFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFootFarVtx.inc.c"
};

Vtx gLinkChildLeftShinFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftShinFarVtx.inc.c"
};

Vtx gLinkChildLeftThighFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftThighFarVtx.inc.c"
};

Vtx gLinkChildWaistFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildWaistFarVtx.inc.c"
};

Vtx gLinkChildHatFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHatFarVtx.inc.c"
};

Vtx gLinkChildHeadFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHeadFarVtx.inc.c"
};

Vtx gLinkChildCollarFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildCollarFarVtx.inc.c"
};

Vtx gLinkChildVtx_019E08[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_019E08.inc.c"
};

Vtx gLinkChildLeftForearmFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftForearmFarVtx.inc.c"
};

Vtx gLinkChildLeftShoulderFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftShoulderFarVtx.inc.c"
};

Vtx gLinkChildVtx_01A428[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_01A428.inc.c"
};

Vtx gLinkChildRightForearmFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightForearmFarVtx.inc.c"
};

Vtx gLinkChildRightShoulderFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightShoulderFarVtx.inc.c"
};

Vtx gLinkChildVtx_01AA98[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_01AA98.inc.c"
};

Vtx gLinkChildTorsoFarVtx[] = {
#include "assets/objects/object_link_child/gLinkChildTorsoFarVtx.inc.c"
};

Gfx gLinkChildWaistFarDL[70] = {
#include "assets/objects/object_link_child/gLinkChildWaistFarDL.inc.c"
};

Gfx gLinkChildRightThighFarDL[56] = {
#include "assets/objects/object_link_child/gLinkChildRightThighFarDL.inc.c"
};

Gfx gLinkChildRightShinFarDL[75] = {
#include "assets/objects/object_link_child/gLinkChildRightShinFarDL.inc.c"
};

Gfx gLinkChildRightFootFarDL[37] = {
#include "assets/objects/object_link_child/gLinkChildRightFootFarDL.inc.c"
};

Gfx gLinkChildLeftThighFarDL[56] = {
#include "assets/objects/object_link_child/gLinkChildLeftThighFarDL.inc.c"
};

Gfx gLinkChildLeftShinFarDL[75] = {
#include "assets/objects/object_link_child/gLinkChildLeftShinFarDL.inc.c"
};

Gfx gLinkChildLeftFootFarDL[37] = {
#include "assets/objects/object_link_child/gLinkChildLeftFootFarDL.inc.c"
};

Gfx gLinkChildCollarFarDL[12] = {
#include "assets/objects/object_link_child/gLinkChildCollarFarDL.inc.c"
};

Gfx gLinkChildTorsoFarDL[57] = {
#include "assets/objects/object_link_child/gLinkChildTorsoFarDL.inc.c"
};

Gfx gLinkChildHeadFarDL[161] = {
#include "assets/objects/object_link_child/gLinkChildHeadFarDL.inc.c"
};

Gfx gLinkChildHatFarDL[30] = {
#include "assets/objects/object_link_child/gLinkChildHatFarDL.inc.c"
};

Gfx gLinkChildRightShoulderFarDL[56] = {
#include "assets/objects/object_link_child/gLinkChildRightShoulderFarDL.inc.c"
};

Gfx gLinkChildRightForearmFarDL[38] = {
#include "assets/objects/object_link_child/gLinkChildRightForearmFarDL.inc.c"
};

Gfx gLinkChildLeftShoulderFarDL[56] = {
#include "assets/objects/object_link_child/gLinkChildLeftShoulderFarDL.inc.c"
};

Gfx gLinkChildLeftForearmFarDL[38] = {
#include "assets/objects/object_link_child/gLinkChildLeftForearmFarDL.inc.c"
};

// Near skeleton vertices and DLs

Vtx gLinkChildRightFootNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightFootNearVtx.inc.c"
};

Vtx gLinkChildRightShinNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightShinNearVtx.inc.c"
};

Vtx gLinkChildRightThighNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightThighNearVtx.inc.c"
};

Vtx gLinkChildLeftFootNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftFootNearVtx.inc.c"
};

Vtx gLinkChildLeftShinNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftShinNearVtx.inc.c"
};

Vtx gLinkChildLeftThighNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftThighNearVtx.inc.c"
};

Vtx gLinkChildWaistNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildWaistNearVtx.inc.c"
};

Vtx gLinkChildHatNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHatNearVtx.inc.c"
};

Vtx gLinkChildHeadNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildHeadNearVtx.inc.c"
};

Vtx gLinkChildCollarNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildCollarNearVtx.inc.c"
};

Vtx gLinkChildVtx_01EB38[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_01EB38.inc.c"
};

Vtx gLinkChildLeftForearmNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftForearmNearVtx.inc.c"
};

Vtx gLinkChildLeftShoulderNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildLeftShoulderNearVtx.inc.c"
};

Vtx gLinkChildVtx_01F2B8[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_01F2B8.inc.c"
};

Vtx gLinkChildRightForearmNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightForearmNearVtx.inc.c"
};

Vtx gLinkChildRightShoulderNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildRightShoulderNearVtx.inc.c"
};

Vtx gLinkChildVtx_01FA28[] = {
#include "assets/objects/object_link_child/gLinkChildVtx_01FA28.inc.c"
};

Vtx gLinkChildTorsoNearVtx[] = {
#include "assets/objects/object_link_child/gLinkChildTorsoNearVtx.inc.c"
};

Gfx gLinkChildWaistNearDL[73] = {
#include "assets/objects/object_link_child/gLinkChildWaistNearDL.inc.c"
};

Gfx gLinkChildRightThighNearDL[63] = {
#include "assets/objects/object_link_child/gLinkChildRightThighNearDL.inc.c"
};

Gfx gLinkChildRightShinNearDL[82] = {
#include "assets/objects/object_link_child/gLinkChildRightShinNearDL.inc.c"
};

Gfx gLinkChildRightFootNearDL[44] = {
#include "assets/objects/object_link_child/gLinkChildRightFootNearDL.inc.c"
};

Gfx gLinkChildLeftThighNearDL[63] = {
#include "assets/objects/object_link_child/gLinkChildLeftThighNearDL.inc.c"
};

Gfx gLinkChildLeftShinNearDL[82] = {
#include "assets/objects/object_link_child/gLinkChildLeftShinNearDL.inc.c"
};

Gfx gLinkChildLeftFootNearDL[44] = {
#include "assets/objects/object_link_child/gLinkChildLeftFootNearDL.inc.c"
};

Gfx gLinkChildCollarNearDL[14] = {
#include "assets/objects/object_link_child/gLinkChildCollarNearDL.inc.c"
};

Gfx gLinkChildTorsoNearDL[70] = {
#include "assets/objects/object_link_child/gLinkChildTorsoNearDL.inc.c"
};

Gfx gLinkChildHeadNearDL[202] = {
#include "assets/objects/object_link_child/gLinkChildHeadNearDL.inc.c"
};

Gfx gLinkChildHatNearDL[39] = {
#include "assets/objects/object_link_child/gLinkChildHatNearDL.inc.c"
};

Gfx gLinkChildRightShoulderNearDL[58] = {
#include "assets/objects/object_link_child/gLinkChildRightShoulderNearDL.inc.c"
};

Gfx gLinkChildRightForearmNearDL[44] = {
#include "assets/objects/object_link_child/gLinkChildRightForearmNearDL.inc.c"
};

Gfx gLinkChildLeftShoulderNearDL[58] = {
#include "assets/objects/object_link_child/gLinkChildLeftShoulderNearDL.inc.c"
};

Gfx gLinkChildLeftForearmNearDL[44] = {
#include "assets/objects/object_link_child/gLinkChildLeftForearmNearDL.inc.c"
};

// Slingshot string

Vtx gLinkChildSlingshotStringVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSlingshotStringVtx.inc.c"
};

Gfx gLinkChildSlingshotStringDL[12] = {
#include "assets/objects/object_link_child/gLinkChildSlingshotStringDL.inc.c"
};

// Deku shield

Vtx gLinkChildDekuShieldVtx[] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldVtx.inc.c"
};

Gfx gLinkChildDekuShieldDL[42] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldDL.inc.c"
};

Mtx gLinkChildDekuShieldMtx =
#include "assets/objects/object_link_child/gLinkChildDekuShieldMtx.inc.c"
    ;

Gfx gLinkChildDekuShieldWithMatrixDL[3] = {
#include "assets/objects/object_link_child/gLinkChildDekuShieldWithMatrixDL.inc.c"
};

// Masks

#define gLinkChildSpookyMaskTex_WIDTH 32
#define gLinkChildSpookyMaskTex_HEIGHT 64
u64 gLinkChildSpookyMaskTex[TEX_LEN(u64, gLinkChildSpookyMaskTex_WIDTH, gLinkChildSpookyMaskTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildSpookyMaskTex.ia16.inc.c"
};

#define gLinkChildKeatonMaskEyeBrowTex_WIDTH 32
#define gLinkChildKeatonMaskEyeBrowTex_HEIGHT 16
u64 gLinkChildKeatonMaskEyeBrowTex[TEX_LEN(u64, gLinkChildKeatonMaskEyeBrowTex_WIDTH,
                                           gLinkChildKeatonMaskEyeBrowTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildKeatonMaskEyeBrowTex.rgba16.inc.c"
};

#define gLinkChildKeatonMaskEarTex_WIDTH 8
#define gLinkChildKeatonMaskEarTex_HEIGHT 8
u64 gLinkChildKeatonMaskEarTex[TEX_LEN(u64, gLinkChildKeatonMaskEarTex_WIDTH, gLinkChildKeatonMaskEarTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildKeatonMaskEarTex.rgba16.inc.c"
};

#define gLinkChildSkullMaskEyeTex_WIDTH 16
#define gLinkChildSkullMaskEyeTex_HEIGHT 16
u64 gLinkChildSkullMaskEyeTex[TEX_LEN(u64, gLinkChildSkullMaskEyeTex_WIDTH, gLinkChildSkullMaskEyeTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildSkullMaskEyeTex.rgba16.inc.c"
};

#define gLinkChildMaskOfTruthTex_WIDTH 32
#define gLinkChildMaskOfTruthTex_HEIGHT 64
u64 gLinkChildMaskOfTruthTex[TEX_LEN(u64, gLinkChildMaskOfTruthTex_WIDTH, gLinkChildMaskOfTruthTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildMaskOfTruthTex.rgba16.inc.c"
};

#define gLinkChildMaskOfTruthCurveTex_WIDTH 16
#define gLinkChildMaskOfTruthCurveTex_HEIGHT 32
u64 gLinkChildMaskOfTruthCurveTex[TEX_LEN(u64, gLinkChildMaskOfTruthCurveTex_WIDTH,
                                          gLinkChildMaskOfTruthCurveTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildMaskOfTruthCurveTex.rgba16.inc.c"
};

#define gLinkChildGoronMaskMouthTex_WIDTH 64
#define gLinkChildGoronMaskMouthTex_HEIGHT 32
u64 gLinkChildGoronMaskMouthTex[TEX_LEN(u64, gLinkChildGoronMaskMouthTex_WIDTH, gLinkChildGoronMaskMouthTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskMouthTex.rgba16.inc.c"
};

#define gLinkChildGoronMaskEyeTex_WIDTH 32
#define gLinkChildGoronMaskEyeTex_HEIGHT 32
u64 gLinkChildGoronMaskEyeTex[TEX_LEN(u64, gLinkChildGoronMaskEyeTex_WIDTH, gLinkChildGoronMaskEyeTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskEyeTex.rgba16.inc.c"
};

#define gLinkChildGoronMaskNoseTex_WIDTH 8
#define gLinkChildGoronMaskNoseTex_HEIGHT 8
u64 gLinkChildGoronMaskNoseTex[TEX_LEN(u64, gLinkChildGoronMaskNoseTex_WIDTH, gLinkChildGoronMaskNoseTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskNoseTex.rgba16.inc.c"
};

#define gLinkChildGoronMaskHairTex_WIDTH 16
#define gLinkChildGoronMaskHairTex_HEIGHT 16
u64 gLinkChildGoronMaskHairTex[TEX_LEN(u64, gLinkChildGoronMaskHairTex_WIDTH, gLinkChildGoronMaskHairTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskHairTex.rgba16.inc.c"
};

#define gLinkChildSkullMaskTeethTex_WIDTH 8
#define gLinkChildSkullMaskTeethTex_HEIGHT 8
u64 gLinkChildSkullMaskTeethTex[TEX_LEN(u64, gLinkChildSkullMaskTeethTex_WIDTH, gLinkChildSkullMaskTeethTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_link_child/gLinkChildSkullMaskTeethTex.rgba16.inc.c"
};

#define gLinkChildGoronMaskEarTex_WIDTH 8
#define gLinkChildGoronMaskEarTex_HEIGHT 8
u64 gLinkChildGoronMaskEarTex[TEX_LEN(u64, gLinkChildGoronMaskEarTex_WIDTH, gLinkChildGoronMaskEarTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskEarTex.rgba16.inc.c"
};

#define gLinkChildZoraMaskEyeBoarderTex_WIDTH 8
#define gLinkChildZoraMaskEyeBoarderTex_HEIGHT 8
u64 gLinkChildZoraMaskEyeBoarderTex[TEX_LEN(u64, gLinkChildZoraMaskEyeBoarderTex_WIDTH,
                                            gLinkChildZoraMaskEyeBoarderTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskEyeBoarderTex.rgba16.inc.c"
};

#define gLinkChildZoraMaskEarTex_WIDTH 32
#define gLinkChildZoraMaskEarTex_HEIGHT 32
u64 gLinkChildZoraMaskEarTex[TEX_LEN(u64, gLinkChildZoraMaskEarTex_WIDTH, gLinkChildZoraMaskEarTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskEarTex.rgba16.inc.c"
};

#define gLinkChildSkullMaskNoseTex_WIDTH 8
#define gLinkChildSkullMaskNoseTex_HEIGHT 8
u64 gLinkChildSkullMaskNoseTex[TEX_LEN(u64, gLinkChildSkullMaskNoseTex_WIDTH, gLinkChildSkullMaskNoseTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildSkullMaskNoseTex.rgba16.inc.c"
};

#define gLinkChildZoraMaskEyeTex_WIDTH 32
#define gLinkChildZoraMaskEyeTex_HEIGHT 32
u64 gLinkChildZoraMaskEyeTex[TEX_LEN(u64, gLinkChildZoraMaskEyeTex_WIDTH, gLinkChildZoraMaskEyeTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskEyeTex.rgba16.inc.c"
};

#define gLinkChildZoraMaskMouthTex_WIDTH 32
#define gLinkChildZoraMaskMouthTex_HEIGHT 32
u64 gLinkChildZoraMaskMouthTex[TEX_LEN(u64, gLinkChildZoraMaskMouthTex_WIDTH, gLinkChildZoraMaskMouthTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskMouthTex.rgba16.inc.c"
};

#define gLinkChildGerudoMaskEyeTex_WIDTH 32
#define gLinkChildGerudoMaskEyeTex_HEIGHT 32
u64 gLinkChildGerudoMaskEyeTex[TEX_LEN(u64, gLinkChildGerudoMaskEyeTex_WIDTH, gLinkChildGerudoMaskEyeTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskEyeTex.rgba16.inc.c"
};

#define gLinkChildGerudoMaskMouthTex_WIDTH 16
#define gLinkChildGerudoMaskMouthTex_HEIGHT 16
u64 gLinkChildGerudoMaskMouthTex[TEX_LEN(u64, gLinkChildGerudoMaskMouthTex_WIDTH, gLinkChildGerudoMaskMouthTex_HEIGHT,
                                         16)] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskMouthTex.rgba16.inc.c"
};

#define gLinkChildGerudoMaskHairTex_WIDTH 16
#define gLinkChildGerudoMaskHairTex_HEIGHT 16
u64 gLinkChildGerudoMaskHairTex[TEX_LEN(u64, gLinkChildGerudoMaskHairTex_WIDTH, gLinkChildGerudoMaskHairTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskHairTex.rgba16.inc.c"
};

#define gLinkChildGerudoMaskNoseTex_WIDTH 8
#define gLinkChildGerudoMaskNoseTex_HEIGHT 8
u64 gLinkChildGerudoMaskNoseTex[TEX_LEN(u64, gLinkChildGerudoMaskNoseTex_WIDTH, gLinkChildGerudoMaskNoseTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskNoseTex.rgba16.inc.c"
};

Vtx gLinkChildSkullMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSkullMaskVtx.inc.c"
};

Vtx gLinkChildSpookyMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildSpookyMaskVtx.inc.c"
};

Vtx gLinkChildKeatonMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildKeatonMaskVtx.inc.c"
};

Vtx gLinkChildMaskOfTruthVtx[] = {
#include "assets/objects/object_link_child/gLinkChildMaskOfTruthVtx.inc.c"
};

Vtx gLinkChildGoronMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskVtx.inc.c"
};

Vtx gLinkChildZoraMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskVtx.inc.c"
};

Vtx gLinkChildGerudoMaskVtx[] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskVtx.inc.c"
};

Gfx gLinkChildSkullMaskDL[70] = {
#include "assets/objects/object_link_child/gLinkChildSkullMaskDL.inc.c"
};

Gfx gLinkChildSpookyMaskDL[30] = {
#include "assets/objects/object_link_child/gLinkChildSpookyMaskDL.inc.c"
};

Gfx gLinkChildKeatonMaskDL[50] = {
#include "assets/objects/object_link_child/gLinkChildKeatonMaskDL.inc.c"
};

Gfx gLinkChildMaskOfTruthDL[44] = {
#include "assets/objects/object_link_child/gLinkChildMaskOfTruthDL.inc.c"
};

Gfx gLinkChildGoronMaskDL[70] = {
#include "assets/objects/object_link_child/gLinkChildGoronMaskDL.inc.c"
};

Gfx gLinkChildZoraMaskDL[65] = {
#include "assets/objects/object_link_child/gLinkChildZoraMaskDL.inc.c"
};

Gfx gLinkChildGerudoMaskDL[84] = {
#include "assets/objects/object_link_child/gLinkChildGerudoMaskDL.inc.c"
};

// Bunny hood

#define gLinkChildBunnyHoodEyeTex_WIDTH 16
#define gLinkChildBunnyHoodEyeTex_HEIGHT 16
u64 gLinkChildBunnyHoodEyeTex[TEX_LEN(u64, gLinkChildBunnyHoodEyeTex_WIDTH, gLinkChildBunnyHoodEyeTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildBunnyHoodEyeTex.rgba16.inc.c"
};

#define gLinkChildBunnyHoodTex_WIDTH 16
#define gLinkChildBunnyHoodTex_HEIGHT 32
u64 gLinkChildBunnyHoodTex[TEX_LEN(u64, gLinkChildBunnyHoodTex_WIDTH, gLinkChildBunnyHoodTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildBunnyHoodTex.rgba16.inc.c"
};

#define gLinkChildBunnyHoodEarTex_WIDTH 16
#define gLinkChildBunnyHoodEarTex_HEIGHT 32
u64 gLinkChildBunnyHoodEarTex[TEX_LEN(u64, gLinkChildBunnyHoodEarTex_WIDTH, gLinkChildBunnyHoodEarTex_HEIGHT, 16)] = {
#include "assets/objects/object_link_child/gLinkChildBunnyHoodEarTex.rgba16.inc.c"
};

Vtx gLinkChildBunnyHoodVtx[] = {
#include "assets/objects/object_link_child/gLinkChildBunnyHoodVtx.inc.c"
};

Gfx gLinkChildBunnyHoodDL[114] = {
#include "assets/objects/object_link_child/gLinkChildBunnyHoodDL.inc.c"
};

// Skeleton

LodLimb gLinkChildRootLimb = {
#include "assets/objects/object_link_child/gLinkChildRootLimb.inc.c"
};

LodLimb gLinkChildWaistLimb = {
#include "assets/objects/object_link_child/gLinkChildWaistLimb.inc.c"
};

LodLimb gLinkChildLowerControlLimb = {
#include "assets/objects/object_link_child/gLinkChildLowerControlLimb.inc.c"
};

LodLimb gLinkChildRightThighLimb = {
#include "assets/objects/object_link_child/gLinkChildRightThighLimb.inc.c"
};

LodLimb gLinkChildRightShinLimb = {
#include "assets/objects/object_link_child/gLinkChildRightShinLimb.inc.c"
};

LodLimb gLinkChildRightFootLimb = {
#include "assets/objects/object_link_child/gLinkChildRightFootLimb.inc.c"
};

LodLimb gLinkChildLeftThighLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftThighLimb.inc.c"
};

LodLimb gLinkChildLeftShinLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftShinLimb.inc.c"
};

LodLimb gLinkChildLeftFootLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftFootLimb.inc.c"
};

LodLimb gLinkChildUpperControlLimb = {
#include "assets/objects/object_link_child/gLinkChildUpperControlLimb.inc.c"
};

LodLimb gLinkChildHeadLimb = {
#include "assets/objects/object_link_child/gLinkChildHeadLimb.inc.c"
};

LodLimb gLinkChildHatLimb = {
#include "assets/objects/object_link_child/gLinkChildHatLimb.inc.c"
};

LodLimb gLinkChildCollarLimb = {
#include "assets/objects/object_link_child/gLinkChildCollarLimb.inc.c"
};

LodLimb gLinkChildLeftshoulderLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftshoulderLimb.inc.c"
};

LodLimb gLinkChildLeftForearmLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftForearmLimb.inc.c"
};

LodLimb gLinkChildLeftHandLimb = {
#include "assets/objects/object_link_child/gLinkChildLeftHandLimb.inc.c"
};

LodLimb gLinkChildRightshoulderLimb = {
#include "assets/objects/object_link_child/gLinkChildRightshoulderLimb.inc.c"
};

LodLimb gLinkChildRightForearmLimb = {
#include "assets/objects/object_link_child/gLinkChildRightForearmLimb.inc.c"
};

LodLimb gLinkChildRightHandLimb = {
#include "assets/objects/object_link_child/gLinkChildRightHandLimb.inc.c"
};

LodLimb gLinkChildSwordAndSheathLimb = {
#include "assets/objects/object_link_child/gLinkChildSwordAndSheathLimb.inc.c"
};

LodLimb gLinkChildTorsoLimb = {
#include "assets/objects/object_link_child/gLinkChildTorsoLimb.inc.c"
};

void* gLinkChildLimbs[] = {
#include "assets/objects/object_link_child/gLinkChildLimbs.inc.c"
};

FlexSkeletonHeader gLinkChildSkel = {
#include "assets/objects/object_link_child/gLinkChildSkel.inc.c"
};
