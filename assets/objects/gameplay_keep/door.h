#ifndef GAMEPLAY_KEEP_DOOR_H
#define GAMEPLAY_KEEP_DOOR_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

extern Vtx gDoorLeftVtx[];
extern Vtx gDoorRightVtx[];
extern Vtx gDoorFrameVtx[];
extern Gfx gDoorFrameDL[17];
extern Gfx gDoorLeftDL[41];
extern Gfx gDoorRightDL[39];
#define gWoodenDoorTex_WIDTH 32
#define gWoodenDoorTex_HEIGHT 64
extern u64 gWoodenDoorTex[TEX_LEN(u64, gWoodenDoorTex_WIDTH, gWoodenDoorTex_HEIGHT, 16)];
extern StandardLimb gDoorSkelLimb0;
extern StandardLimb gDoorSkelLimb1;
extern StandardLimb gDoorSkelLimb2;
extern StandardLimb gDoorSkelLimb3;
extern void* gDoorLimbs[];
typedef enum gDoorSkelLimb {
    /*  0 */ DOOR_LIMB_NONE,
    /*  1 */ DOOR_LIMB_0,
    /*  2 */ DOOR_LIMB_1,
    /*  3 */ DOOR_LIMB_2,
    /*  4 */ DOOR_LIMB_3,
    /*  5 */ DOOR_LIMB_MAX
} gDoorSkelLimb;
extern SkeletonHeader gDoorSkel;

#endif
