#include "gameplay_keep_0x34020.h"
#include "array_count.h"
#include "gfx.h"

s16 gBugCrawlFrameData[] = {
#include "assets/objects/gameplay_keep/gBugCrawlFrameData.inc.c"
};

JointIndex gBugCrawlJointIndices[] = {
#include "assets/objects/gameplay_keep/gBugCrawlJointIndices.inc.c"
};

AnimationHeader gBugCrawlAnim = {
#include "assets/objects/gameplay_keep/gBugCrawlAnim.inc.c"
};

Gfx gBugLimb1DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb1DL.inc.c"
};

Gfx gBugLimb1WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb1WrapperDL.inc.c"
};

Gfx gBugLimb1WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb1WrapperWrapperDL.inc.c"
};

Vtx gBugLimb1Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb1Vtx.inc.c"
};

Gfx gBugLimb2DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb2DL.inc.c"
};

Gfx gBugLimb2WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb2WrapperDL.inc.c"
};

Gfx gBugLimb2WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb2WrapperWrapperDL.inc.c"
};

Vtx gBugLimb2Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb2Vtx.inc.c"
};

Gfx gBugLimb3DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb3DL.inc.c"
};

Gfx gBugLimb3WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb3WrapperDL.inc.c"
};

Gfx gBugLimb3WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb3WrapperWrapperDL.inc.c"
};

Vtx gBugLimb3Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb3Vtx.inc.c"
};

Gfx gBugLimb4DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb4DL.inc.c"
};

Gfx gBugLimb4WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb4WrapperDL.inc.c"
};

Gfx gBugLimb4WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb4WrapperWrapperDL.inc.c"
};

Vtx gBugLimb4Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb4Vtx.inc.c"
};

Gfx gBugLimb5DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb5DL.inc.c"
};

Gfx gBugLimb5WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb5WrapperDL.inc.c"
};

Gfx gBugLimb5WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb5WrapperWrapperDL.inc.c"
};

Vtx gBugLimb5Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb5Vtx.inc.c"
};

Gfx gBugLimb6DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb6DL.inc.c"
};

Gfx gBugLimb6WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb6WrapperDL.inc.c"
};

Gfx gBugLimb6WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb6WrapperWrapperDL.inc.c"
};

Vtx gBugLimb6Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb6Vtx.inc.c"
};

Gfx gBugLimb7DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb7DL.inc.c"
};

Gfx gBugLimb7WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb7WrapperDL.inc.c"
};

Gfx gBugLimb7WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb7WrapperWrapperDL.inc.c"
};

Vtx gBugLimb7Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb7Vtx.inc.c"
};

Gfx gBugLimb8DL[20] = {
#include "assets/objects/gameplay_keep/gBugLimb8DL.inc.c"
};

Gfx gBugLimb8WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb8WrapperDL.inc.c"
};

Gfx gBugLimb8WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb8WrapperWrapperDL.inc.c"
};

Vtx gBugLimb8Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb8Vtx.inc.c"
};

Gfx gBugLimb9DL[22] = {
#include "assets/objects/gameplay_keep/gBugLimb9DL.inc.c"
};

Gfx gBugLimb9WrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb9WrapperDL.inc.c"
};

Gfx gBugLimb9WrapperWrapperDL[2] = {
#include "assets/objects/gameplay_keep/gBugLimb9WrapperWrapperDL.inc.c"
};

Vtx gBugLimb9Vtx[] = {
#include "assets/objects/gameplay_keep/gBugLimb9Vtx.inc.c"
};

u64 gBugBodyTex[TEX_LEN(u64, gBugBodyTex_WIDTH, gBugBodyTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gBugBodyTex.rgba16.inc.c"
};

u64 gBugLegTex[TEX_LEN(u64, gBugLegTex_WIDTH, gBugLegTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gBugLegTex.rgba16.inc.c"
};

StandardLimb gBugSkelLimb0 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb0.inc.c"
};

StandardLimb gBugSkelLimb1 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb1.inc.c"
};

StandardLimb gBugSkelLimb2 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb2.inc.c"
};

StandardLimb gBugSkelLimb3 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb3.inc.c"
};

StandardLimb gBugSkelLimb4 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb4.inc.c"
};

StandardLimb gBugSkelLimb5 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb5.inc.c"
};

StandardLimb gBugSkelLimb6 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb6.inc.c"
};

StandardLimb gBugSkelLimb7 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb7.inc.c"
};

StandardLimb gBugSkelLimb8 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb8.inc.c"
};

StandardLimb gBugSkelLimb9 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb9.inc.c"
};

StandardLimb gBugSkelLimb10 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb10.inc.c"
};

StandardLimb gBugSkelLimb11 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb11.inc.c"
};

StandardLimb gBugSkelLimb12 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb12.inc.c"
};

StandardLimb gBugSkelLimb13 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb13.inc.c"
};

StandardLimb gBugSkelLimb14 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb14.inc.c"
};

StandardLimb gBugSkelLimb15 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb15.inc.c"
};

StandardLimb gBugSkelLimb16 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb16.inc.c"
};

StandardLimb gBugSkelLimb17 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb17.inc.c"
};

StandardLimb gBugSkelLimb18 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb18.inc.c"
};

StandardLimb gBugSkelLimb19 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb19.inc.c"
};

StandardLimb gBugSkelLimb20 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb20.inc.c"
};

StandardLimb gBugSkelLimb21 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb21.inc.c"
};

StandardLimb gBugSkelLimb22 = {
#include "assets/objects/gameplay_keep/gBugSkelLimb22.inc.c"
};

void* gBugLimbs[] = {
#include "assets/objects/gameplay_keep/gBugLimbs.inc.c"
};

SkeletonHeader gBugSkel = {
#include "assets/objects/gameplay_keep/gBugSkel.inc.c"
};
