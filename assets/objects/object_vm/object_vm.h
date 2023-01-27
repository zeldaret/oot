#ifndef OBJECT_VM_H
#define OBJECT_VM_H 1

extern s16 sBeamosAnimFrameData[];
extern JointIndex sBeamosAnimJointIndices[];
extern AnimationHeader gBeamosAnim;
extern Vtx object_vmVtx_000080[];
extern Gfx gBeamosBodyDL[];
extern Gfx gBeamosTopEyelidDL[];
extern Gfx gBeamosBottomEyelidDL[];
extern Gfx gBeamosEyeDL[];
extern Gfx gBeamosLaserDL[];
extern u64 gBeamosBodyGradientTex[];
extern u64 gBeamosGrayMetalTex[];
extern u64 gBeamosBoltAndMetalTex[];
extern u64 gBeamosTex_2D40[];
extern u64 gBeamosEyeOutlineTex[];
extern u64 gBeamosEyeTex[];
extern u64 gBeamosBodyTex[];
extern u64 gBeamosLaserTex[];
extern u64 gBeamosTeethTex[];
extern StandardLimb gBeamosRootLimb;
extern StandardLimb gBeamosLimb_3ECC;
extern StandardLimb gBeamosLimb_3ED8;
extern StandardLimb gBeamosLimb_3EE4;
extern StandardLimb gBeamosTopEyelidLimb;
extern StandardLimb gBeamosLimb_3EFC;
extern StandardLimb gBeamosLimb_3F08;
extern StandardLimb gBeamosBottomEyelidLimb;
extern StandardLimb gBeamosEyeLimb;
extern StandardLimb gBeamosBodyLimb;
extern void* gBeamosSkelLimbs[];
extern SkeletonHeader gBeamosSkel;

#endif
