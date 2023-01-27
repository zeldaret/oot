#ifndef OBJECT_BIRD_H
#define OBJECT_BIRD_H 1

extern s16 sBirdFlyAnimFrameData[];
extern JointIndex sBirdFlyAnimJointIndices[];
extern AnimationHeader gBirdFlyAnim;
extern Gfx gBirdLeftWingDL[];
extern Gfx gBirdLeftWingWrapper1DL[];
extern Gfx gBirdLeftWingWrapper2DL[];
extern Vtx object_birdVtx_000140[];
extern Gfx gBirdRightWingDL[];
extern Gfx gBirdRightWingWrapper1DL[];
extern Gfx gBirdRightWingWrapper2DL[];
extern Vtx object_birdVtx_000240[];
extern Gfx gBirdBodyDL[];
extern Gfx gBirdBodyWrapper1DL[];
extern Gfx gBirdBodyWrapper2DL[];
extern Vtx object_birdVtx_0003F0[];
extern u64 gBirdFaceTex[];
extern u64 gBirdTailTex[];
extern u64 gBirdWingTex[];
extern StandardLimb gBirdLimb_002100;
extern StandardLimb gBirdLimb_00210C;
extern StandardLimb gBirdLimb_002118;
extern StandardLimb gBirdLimb_002124;
extern StandardLimb gBirdLeftWingLimb;
extern StandardLimb gBirdLimb_00213C;
extern StandardLimb gBirdLimb_002148;
extern StandardLimb gBirdRightWingLimb;
extern StandardLimb gBirdBodyLimb;
extern void* gBirdSkelLimbs[];
extern SkeletonHeader gBirdSkel;

#endif
