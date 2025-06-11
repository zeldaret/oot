#include "object_zo.h"
#include "array_count.h"
#include "gfx.h"

u64 gZoraTLUT[] = {
#include "assets/objects/object_zo/gZoraTLUT.tlut.rgba16.inc.c"
};

#define gZoraFinTex_WIDTH 32
#define gZoraFinTex_HEIGHT 32
u64 gZoraFinTex[TEX_LEN(u64, gZoraFinTex_WIDTH, gZoraFinTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraFinTex.ci8.tlut_gZoraTLUT.inc.c"
};

#define gZoraHeadTailTex_WIDTH 32
#define gZoraHeadTailTex_HEIGHT 64
u64 gZoraHeadTailTex[TEX_LEN(u64, gZoraHeadTailTex_WIDTH, gZoraHeadTailTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraHeadTailTex.ci8.tlut_gZoraTLUT.inc.c"
};

#define gZoraHeadTex_WIDTH 8
#define gZoraHeadTex_HEIGHT 8
u64 gZoraHeadTex[TEX_LEN(u64, gZoraHeadTex_WIDTH, gZoraHeadTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraHeadTex.ci8.tlut_gZoraTLUT.inc.c"
};

u64 gZoraEyeOpenTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)] = {
#include "assets/objects/object_zo/gZoraEyeOpenTex.rgba16.inc.c"
};

u64 gZoraEyeHalfTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)] = {
#include "assets/objects/object_zo/gZoraEyeHalfTex.rgba16.inc.c"
};

u64 gZoraEyeClosedTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)] = {
#include "assets/objects/object_zo/gZoraEyeClosedTex.rgba16.inc.c"
};

#define gZoraMouthTex_WIDTH 32
#define gZoraMouthTex_HEIGHT 32
u64 gZoraMouthTex[TEX_LEN(u64, gZoraMouthTex_WIDTH, gZoraMouthTex_HEIGHT, 16)] = {
#include "assets/objects/object_zo/gZoraMouthTex.rgba16.inc.c"
};

#define gZoraHandTex_WIDTH 16
#define gZoraHandTex_HEIGHT 16
u64 gZoraHandTex[TEX_LEN(u64, gZoraHandTex_WIDTH, gZoraHandTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraHandTex.ci8.tlut_gZoraTLUT.inc.c"
};

#define gZoraKneeTex_WIDTH 8
#define gZoraKneeTex_HEIGHT 8
u64 gZoraKneeTex[TEX_LEN(u64, gZoraKneeTex_WIDTH, gZoraKneeTex_HEIGHT, 8)] = {
#include "assets/objects/object_zo/gZoraKneeTex.ci8.tlut_gZoraTLUT.inc.c"
};

Vtx gZoraHeadTailFinVtx[] = {
#include "assets/objects/object_zo/gZoraHeadTailFinVtx.inc.c"
};

Vtx gZoraHeadTail3Vtx[] = {
#include "assets/objects/object_zo/gZoraHeadTail3Vtx.inc.c"
};

Vtx gZoraHeadTail2Vtx[] = {
#include "assets/objects/object_zo/gZoraHeadTail2Vtx.inc.c"
};

Vtx gZoraHeadTail1Vtx[] = {
#include "assets/objects/object_zo/gZoraHeadTail1Vtx.inc.c"
};

Vtx gZoraHeadVtx[] = {
#include "assets/objects/object_zo/gZoraHeadVtx.inc.c"
};

Vtx gZoraLeftHandVtx[] = {
#include "assets/objects/object_zo/gZoraLeftHandVtx.inc.c"
};

Vtx gZoraLeftForearmVtx[] = {
#include "assets/objects/object_zo/gZoraLeftForearmVtx.inc.c"
};

Vtx gZoraLeftArmVtx[] = {
#include "assets/objects/object_zo/gZoraLeftArmVtx.inc.c"
};

Vtx gZoraRightHandVtx[] = {
#include "assets/objects/object_zo/gZoraRightHandVtx.inc.c"
};

Vtx gZoraRightForearmVtx[] = {
#include "assets/objects/object_zo/gZoraRightForearmVtx.inc.c"
};

Vtx gZoraRightArmVtx[] = {
#include "assets/objects/object_zo/gZoraRightArmVtx.inc.c"
};

Vtx gZoraTorsoVtx[] = {
#include "assets/objects/object_zo/gZoraTorsoVtx.inc.c"
};

Vtx gZoraLeftFootVtx[] = {
#include "assets/objects/object_zo/gZoraLeftFootVtx.inc.c"
};

Vtx gZoraLeftShinVtx[] = {
#include "assets/objects/object_zo/gZoraLeftShinVtx.inc.c"
};

Vtx gZoraLeftThighsVtx[] = {
#include "assets/objects/object_zo/gZoraLeftThighsVtx.inc.c"
};

Vtx gZoraRightFootVtx[] = {
#include "assets/objects/object_zo/gZoraRightFootVtx.inc.c"
};

Vtx gZoraRightShinVtx[] = {
#include "assets/objects/object_zo/gZoraRightShinVtx.inc.c"
};

Vtx gZoraRightThighsVtx[] = {
#include "assets/objects/object_zo/gZoraRightThighsVtx.inc.c"
};

Vtx gZoraPelvisVtx[] = {
#include "assets/objects/object_zo/gZoraPelvisVtx.inc.c"
};

Gfx gZoraPelvisDL[53] = {
#include "assets/objects/object_zo/gZoraPelvisDL.inc.c"
};

Gfx gZoraTorsoDL[111] = {
#include "assets/objects/object_zo/gZoraTorsoDL.inc.c"
};

Gfx gZoraHeadDL[79] = {
#include "assets/objects/object_zo/gZoraHeadDL.inc.c"
};

Gfx gZoraHeadTail1DL[52] = {
#include "assets/objects/object_zo/gZoraHeadTail1DL.inc.c"
};

Gfx gZoraHeadTail2DL[51] = {
#include "assets/objects/object_zo/gZoraHeadTail2DL.inc.c"
};

Gfx gZoraHeadTail3DL[51] = {
#include "assets/objects/object_zo/gZoraHeadTail3DL.inc.c"
};

Gfx gZoraHeadTailFinDL[72] = {
#include "assets/objects/object_zo/gZoraHeadTailFinDL.inc.c"
};

Gfx gZoraRightArmDL[76] = {
#include "assets/objects/object_zo/gZoraRightArmDL.inc.c"
};

Gfx gZoraRightForearmDL[92] = {
#include "assets/objects/object_zo/gZoraRightForearmDL.inc.c"
};

Gfx gZoraRightHandDL[65] = {
#include "assets/objects/object_zo/gZoraRightHandDL.inc.c"
};

Gfx gZoraLeftArmDL[76] = {
#include "assets/objects/object_zo/gZoraLeftArmDL.inc.c"
};

Gfx gZoraLeftForearmDL[92] = {
#include "assets/objects/object_zo/gZoraLeftForearmDL.inc.c"
};

Gfx gZoraLeftHandDL[65] = {
#include "assets/objects/object_zo/gZoraLeftHandDL.inc.c"
};

Gfx gZoraRightThighsDL[92] = {
#include "assets/objects/object_zo/gZoraRightThighsDL.inc.c"
};

Gfx gZoraRightShinDL[91] = {
#include "assets/objects/object_zo/gZoraRightShinDL.inc.c"
};

Gfx gZoraRightFootDL[89] = {
#include "assets/objects/object_zo/gZoraRightFootDL.inc.c"
};

Gfx gZoraLeftThighsDL[92] = {
#include "assets/objects/object_zo/gZoraLeftThighsDL.inc.c"
};

Gfx gZoraLeftShinDL[91] = {
#include "assets/objects/object_zo/gZoraLeftShinDL.inc.c"
};

Gfx gZoraLeftFootDL[89] = {
#include "assets/objects/object_zo/gZoraLeftFootDL.inc.c"
};

StandardLimb gZoraPelvisLimb = {
#include "assets/objects/object_zo/gZoraPelvisLimb.inc.c"
};

StandardLimb gZoraLeftThighsLimb = {
#include "assets/objects/object_zo/gZoraLeftThighsLimb.inc.c"
};

StandardLimb gZoraLeftShinLimb = {
#include "assets/objects/object_zo/gZoraLeftShinLimb.inc.c"
};

StandardLimb gZoraLeftFootLimb = {
#include "assets/objects/object_zo/gZoraLeftFootLimb.inc.c"
};

StandardLimb gZoraRightThighsLimb = {
#include "assets/objects/object_zo/gZoraRightThighsLimb.inc.c"
};

StandardLimb gZoraRightShinLimb = {
#include "assets/objects/object_zo/gZoraRightShinLimb.inc.c"
};

StandardLimb gZoraRightFootLimb = {
#include "assets/objects/object_zo/gZoraRightFootLimb.inc.c"
};

StandardLimb gZoraTorsoLimb = {
#include "assets/objects/object_zo/gZoraTorsoLimb.inc.c"
};

StandardLimb gZoraLeftArmLimb = {
#include "assets/objects/object_zo/gZoraLeftArmLimb.inc.c"
};

StandardLimb gZoraLeftForearmLimb = {
#include "assets/objects/object_zo/gZoraLeftForearmLimb.inc.c"
};

StandardLimb gZoraLeftHandLimb = {
#include "assets/objects/object_zo/gZoraLeftHandLimb.inc.c"
};

StandardLimb gZoraRightArmLimb = {
#include "assets/objects/object_zo/gZoraRightArmLimb.inc.c"
};

StandardLimb gZoraRightForearmLimb = {
#include "assets/objects/object_zo/gZoraRightForearmLimb.inc.c"
};

StandardLimb gZoraRightHandLimb = {
#include "assets/objects/object_zo/gZoraRightHandLimb.inc.c"
};

StandardLimb gZoraHeadLimb = {
#include "assets/objects/object_zo/gZoraHeadLimb.inc.c"
};

StandardLimb gZoraHeadTail1Limb = {
#include "assets/objects/object_zo/gZoraHeadTail1Limb.inc.c"
};

StandardLimb gZoraHeadTail2Limb = {
#include "assets/objects/object_zo/gZoraHeadTail2Limb.inc.c"
};

StandardLimb gZoraHeadTail3Limb = {
#include "assets/objects/object_zo/gZoraHeadTail3Limb.inc.c"
};

StandardLimb gZoraHeadTailFinLimb = {
#include "assets/objects/object_zo/gZoraHeadTailFinLimb.inc.c"
};

void* gZoraLimbs[] = {
#include "assets/objects/object_zo/gZoraLimbs.inc.c"
};

FlexSkeletonHeader gZoraSkel = {
#include "assets/objects/object_zo/gZoraSkel.inc.c"
};
