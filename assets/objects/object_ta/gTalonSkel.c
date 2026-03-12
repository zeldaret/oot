#include "object_ta.h"
#include "array_count.h"
#include "gfx.h"

u64 gTalonSkinAndClothesTLUT[];

#define gTalonSkinTex_WIDTH 8
#define gTalonSkinTex_HEIGHT 8
u64 gTalonSkinTex[TEX_LEN(u64, gTalonSkinTex_WIDTH, gTalonSkinTex_HEIGHT, 8)];

#define gTalonFingersTex_WIDTH 16
#define gTalonFingersTex_HEIGHT 16
u64 gTalonFingersTex[TEX_LEN(u64, gTalonFingersTex_WIDTH, gTalonFingersTex_HEIGHT, 8)];

#define gTalonArmHairTex_WIDTH 16
#define gTalonArmHairTex_HEIGHT 32
u64 gTalonArmHairTex[TEX_LEN(u64, gTalonArmHairTex_WIDTH, gTalonArmHairTex_HEIGHT, 8)];

#define gTalonSleeveTex_WIDTH 8
#define gTalonSleeveTex_HEIGHT 8
u64 gTalonSleeveTex[TEX_LEN(u64, gTalonSleeveTex_WIDTH, gTalonSleeveTex_HEIGHT, 8)];

#define gTalonBlueTex_WIDTH 8
#define gTalonBlueTex_HEIGHT 8
u64 gTalonBlueTex[TEX_LEN(u64, gTalonBlueTex_WIDTH, gTalonBlueTex_HEIGHT, 8)];

#define gTalonBluePatternTex_WIDTH 8
#define gTalonBluePatternTex_HEIGHT 8
u64 gTalonBluePatternTex[TEX_LEN(u64, gTalonBluePatternTex_WIDTH, gTalonBluePatternTex_HEIGHT, 8)];

#define gTalonBrownBlueOutlineTex_WIDTH 16
#define gTalonBrownBlueOutlineTex_HEIGHT 16
u64 gTalonBrownBlueOutlineTex[TEX_LEN(u64, gTalonBrownBlueOutlineTex_WIDTH, gTalonBrownBlueOutlineTex_HEIGHT, 8)];

#define gTalonNecklaceStringUpperTex_WIDTH 16
#define gTalonNecklaceStringUpperTex_HEIGHT 32
u64 gTalonNecklaceStringUpperTex[TEX_LEN(u64, gTalonNecklaceStringUpperTex_WIDTH, gTalonNecklaceStringUpperTex_HEIGHT,
                                         8)];

#define gTalonBowserTex_WIDTH 16
#define gTalonBowserTex_HEIGHT 32
u64 gTalonBowserTex[TEX_LEN(u64, gTalonBowserTex_WIDTH, gTalonBowserTex_HEIGHT, 16)];

#define gTalonNecklaceLowerStringsTex_WIDTH 8
#define gTalonNecklaceLowerStringsTex_HEIGHT 16
u64 gTalonNecklaceLowerStringsTex[TEX_LEN(u64, gTalonNecklaceLowerStringsTex_WIDTH,
                                          gTalonNecklaceLowerStringsTex_HEIGHT, 16)];

Vtx gTalonLeftHandVtx[] = {
#include "assets/objects/object_ta/gTalonLeftHandVtx.inc.c"
};

Vtx gTalonLeftArmVtx[] = {
#include "assets/objects/object_ta/gTalonLeftArmVtx.inc.c"
};

Vtx gTalonLeftShoulderVtx[] = {
#include "assets/objects/object_ta/gTalonLeftShoulderVtx.inc.c"
};

Vtx gTalonRightHandVtx[] = {
#include "assets/objects/object_ta/gTalonRightHandVtx.inc.c"
};

Vtx gTalonRightArmVtx[] = {
#include "assets/objects/object_ta/gTalonRightArmVtx.inc.c"
};

Vtx gTalonRightShoulderVtx[] = {
#include "assets/objects/object_ta/gTalonRightShoulderVtx.inc.c"
};

Vtx gTalonChestVtx[] = {
#include "assets/objects/object_ta/gTalonChestVtx.inc.c"
};

Vtx gTalonLeftLegVtx[] = {
#include "assets/objects/object_ta/gTalonLeftLegVtx.inc.c"
};

Vtx gTalonLeftThighVtx[] = {
#include "assets/objects/object_ta/gTalonLeftThighVtx.inc.c"
};

Vtx gTalonRightLegVtx[] = {
#include "assets/objects/object_ta/gTalonRightLegVtx.inc.c"
};

Vtx gTalonRightThighVtx[] = {
#include "assets/objects/object_ta/gTalonRightThighVtx.inc.c"
};

Vtx gTalonTorsoVtx[] = {
#include "assets/objects/object_ta/gTalonTorsoVtx.inc.c"
};

Gfx gTalonTorsoDL[99] = {
#include "assets/objects/object_ta/gTalonTorsoDL.inc.c"
};

Gfx gTalonChestDL[210] = {
#include "assets/objects/object_ta/gTalonChestDL.inc.c"
};

Gfx gTalonRightShoulderDL[69] = {
#include "assets/objects/object_ta/gTalonRightShoulderDL.inc.c"
};

Gfx gTalonRightArmDL[86] = {
#include "assets/objects/object_ta/gTalonRightArmDL.inc.c"
};

Gfx gTalonRightHandDL[149] = {
#include "assets/objects/object_ta/gTalonRightHandDL.inc.c"
};

Gfx gTalonLeftShoulderDL[69] = {
#include "assets/objects/object_ta/gTalonLeftShoulderDL.inc.c"
};

Gfx gTalonLeftArmDL[86] = {
#include "assets/objects/object_ta/gTalonLeftArmDL.inc.c"
};

Gfx gTalonLeftHandDL[133] = {
#include "assets/objects/object_ta/gTalonLeftHandDL.inc.c"
};

Gfx gTalonRightThighDL[136] = {
#include "assets/objects/object_ta/gTalonRightThighDL.inc.c"
};

Gfx gTalonRightLegDL[107] = {
#include "assets/objects/object_ta/gTalonRightLegDL.inc.c"
};

Gfx gTalonLeftThighDL[136] = {
#include "assets/objects/object_ta/gTalonLeftThighDL.inc.c"
};

Gfx gTalonLeftLegDL[106] = {
#include "assets/objects/object_ta/gTalonLeftLegDL.inc.c"
};

u64 gTalon2TLUT[] = {
#include "assets/objects/object_ta/gTalon2TLUT.tlut.rgba16.inc.c"
};

u64 gTalonEyeTLUT[] = {
#include "assets/objects/object_ta/gTalonEyeTLUT.tlut.rgba16.inc.c"
};

u64 gTalonHeadSkinTex[TEX_LEN(u64, gTalonHeadSkinTex_WIDTH, gTalonHeadSkinTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonHeadSkinTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonEarTex_WIDTH 8
#define gTalonEarTex_HEIGHT 8
u64 gTalonEarTex[TEX_LEN(u64, gTalonEarTex_WIDTH, gTalonEarTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonEarTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonFaceHairTex_WIDTH 8
#define gTalonFaceHairTex_HEIGHT 16
u64 gTalonFaceHairTex[TEX_LEN(u64, gTalonFaceHairTex_WIDTH, gTalonFaceHairTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonFaceHairTex.ci8.tlut_gTalon2TLUT.inc.c"
};

u64 gTalonEyeHalfTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonEyeHalfTex.ci8.tlut_gTalonEyeTLUT.inc.c"
};

u64 gTalonEyeClosedTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonEyeClosedTex.ci8.tlut_gTalonEyeTLUT.inc.c"
};

u64 gTalonEyeClosed2Tex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonEyeClosed2Tex.ci8.tlut_gTalonEyeTLUT.inc.c"
};

u64 gTalonRedTex[TEX_LEN(u64, gTalonRedTex_WIDTH, gTalonRedTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonRedTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonHeadHairTex_WIDTH 16
#define gTalonHeadHairTex_HEIGHT 32
u64 gTalonHeadHairTex[TEX_LEN(u64, gTalonHeadHairTex_WIDTH, gTalonHeadHairTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonHeadHairTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonBootSideTex_WIDTH 16
#define gTalonBootSideTex_HEIGHT 16
u64 gTalonBootSideTex[TEX_LEN(u64, gTalonBootSideTex_WIDTH, gTalonBootSideTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonBootSideTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonBootTopTex_WIDTH 16
#define gTalonBootTopTex_HEIGHT 16
u64 gTalonBootTopTex[TEX_LEN(u64, gTalonBootTopTex_WIDTH, gTalonBootTopTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonBootTopTex.ci8.tlut_gTalon2TLUT.inc.c"
};

#define gTalonHeadHairTopTex_WIDTH 8
#define gTalonHeadHairTopTex_HEIGHT 16
u64 gTalonHeadHairTopTex[TEX_LEN(u64, gTalonHeadHairTopTex_WIDTH, gTalonHeadHairTopTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonHeadHairTopTex.ci8.tlut_gTalon2TLUT.inc.c"
};

u64 gTalonEyeOpenTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonEyeOpenTex.ci8.tlut_gTalonEyeTLUT.inc.c"
};

Vtx gTalonHeadVtx[] = {
#include "assets/objects/object_ta/gTalonHeadVtx.inc.c"
};

Vtx gTalonRightFootVtx[] = {
#include "assets/objects/object_ta/gTalonRightFootVtx.inc.c"
};

Vtx gTalonLeftFootVtx[] = {
#include "assets/objects/object_ta/gTalonLeftFootVtx.inc.c"
};

Gfx gTalonHeadDL[389] = {
#include "assets/objects/object_ta/gTalonHeadDL.inc.c"
};

Gfx gTalonRightFootDL[52] = {
#include "assets/objects/object_ta/gTalonRightFootDL.inc.c"
};

Gfx gTalonLeftFootDL[52] = {
#include "assets/objects/object_ta/gTalonLeftFootDL.inc.c"
};

u64 gTalonSkinAndClothesTLUT[] = {
#include "assets/objects/object_ta/gTalonSkinAndClothesTLUT.tlut.rgba16.inc.c"
};

#define gTalonGradient2Tex_WIDTH 8
#define gTalonGradient2Tex_HEIGHT 8
u64 gTalonGradient2Tex[TEX_LEN(u64, gTalonGradient2Tex_WIDTH, gTalonGradient2Tex_HEIGHT, 16)] = {
#include "assets/objects/object_ta/gTalonGradient2Tex.rgba16.inc.c"
};

u64 gTalonSkinTex[TEX_LEN(u64, gTalonSkinTex_WIDTH, gTalonSkinTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonSkinTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonFingersTex[TEX_LEN(u64, gTalonFingersTex_WIDTH, gTalonFingersTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonFingersTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonArmHairTex[TEX_LEN(u64, gTalonArmHairTex_WIDTH, gTalonArmHairTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonArmHairTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonSleeveTex[TEX_LEN(u64, gTalonSleeveTex_WIDTH, gTalonSleeveTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonSleeveTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonBlueTex[TEX_LEN(u64, gTalonBlueTex_WIDTH, gTalonBlueTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonBlueTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonBluePatternTex[TEX_LEN(u64, gTalonBluePatternTex_WIDTH, gTalonBluePatternTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonBluePatternTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonBrownBlueOutlineTex[TEX_LEN(u64, gTalonBrownBlueOutlineTex_WIDTH, gTalonBrownBlueOutlineTex_HEIGHT, 8)] = {
#include "assets/objects/object_ta/gTalonBrownBlueOutlineTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonNecklaceStringUpperTex[TEX_LEN(u64, gTalonNecklaceStringUpperTex_WIDTH, gTalonNecklaceStringUpperTex_HEIGHT,
                                         8)] = {
#include "assets/objects/object_ta/gTalonNecklaceStringUpperTex.ci8.tlut_gTalonSkinAndClothesTLUT.inc.c"
};

u64 gTalonBowserTex[TEX_LEN(u64, gTalonBowserTex_WIDTH, gTalonBowserTex_HEIGHT, 16)] = {
#include "assets/objects/object_ta/gTalonBowserTex.rgba16.inc.c"
};

u64 gTalonNecklaceLowerStringsTex[TEX_LEN(u64, gTalonNecklaceLowerStringsTex_WIDTH,
                                          gTalonNecklaceLowerStringsTex_HEIGHT, 16)] = {
#include "assets/objects/object_ta/gTalonNecklaceLowerStringsTex.rgba16.inc.c"
};

#define gTalonUnusedTex_WIDTH 16
#define gTalonUnusedTex_HEIGHT 16
u64 gTalonUnusedTex[TEX_LEN(u64, gTalonUnusedTex_WIDTH, gTalonUnusedTex_HEIGHT, 16)] = {
#include "assets/objects/object_ta/gTalonUnusedTex.rgba16.inc.c"
};

StandardLimb gTalonRootLimb = {
#include "assets/objects/object_ta/gTalonRootLimb.inc.c"
};

StandardLimb gTalonLeftThighLimb = {
#include "assets/objects/object_ta/gTalonLeftThighLimb.inc.c"
};

StandardLimb gTalonLeftLegLimb = {
#include "assets/objects/object_ta/gTalonLeftLegLimb.inc.c"
};

StandardLimb gTalonLeftFootLimb = {
#include "assets/objects/object_ta/gTalonLeftFootLimb.inc.c"
};

StandardLimb gTalonRightThighLimb = {
#include "assets/objects/object_ta/gTalonRightThighLimb.inc.c"
};

StandardLimb gTalonRightLegLimb = {
#include "assets/objects/object_ta/gTalonRightLegLimb.inc.c"
};

StandardLimb gTalonRightFootLimb = {
#include "assets/objects/object_ta/gTalonRightFootLimb.inc.c"
};

StandardLimb gTalonChestLimb = {
#include "assets/objects/object_ta/gTalonChestLimb.inc.c"
};

StandardLimb gTalonLeftShoulderLimb = {
#include "assets/objects/object_ta/gTalonLeftShoulderLimb.inc.c"
};

StandardLimb gTalonLeftArmLimb = {
#include "assets/objects/object_ta/gTalonLeftArmLimb.inc.c"
};

StandardLimb gTalonLeftHandLimb = {
#include "assets/objects/object_ta/gTalonLeftHandLimb.inc.c"
};

StandardLimb gTalonRightShoulderLimb = {
#include "assets/objects/object_ta/gTalonRightShoulderLimb.inc.c"
};

StandardLimb gTalonRightArmLimb = {
#include "assets/objects/object_ta/gTalonRightArmLimb.inc.c"
};

StandardLimb gTalonRightHandLimb = {
#include "assets/objects/object_ta/gTalonRightHandLimb.inc.c"
};

StandardLimb gTalonHeadLimb = {
#include "assets/objects/object_ta/gTalonHeadLimb.inc.c"
};

StandardLimb gTalonTorsoLimb = {
#include "assets/objects/object_ta/gTalonTorsoLimb.inc.c"
};

void* gTalonLimbs[] = {
#include "assets/objects/object_ta/gTalonLimbs.inc.c"
};

FlexSkeletonHeader gTalonSkel = {
#include "assets/objects/object_ta/gTalonSkel.inc.c"
};
