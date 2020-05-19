#ifndef _Z_EN_HINTNUTS_H_
#define _Z_EN_HINTNUTS_H_

#include <ultra64.h>
#include <global.h>

struct EnHintnuts;

typedef struct EnHintnuts {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ u16 unk_198; //textId
    /* 0x019A */ Vec3s unk_19A; //actor draw table, presumably beginning of array
    /* 0x01A0 */ char unk_1A0[0x36];
    /* 0x01D6 */ Vec3s unk_1D6;
    /* 0x01DC */ char unk_1DC[0x38];
    /* 0x0214 */ ColliderCylinderMain collider;
} EnHintnuts; // size = 0x0260

extern const ActorInit En_Hintnuts_InitVars;

//data
extern ColliderCylinderInit D_80A58A00;
extern Sub98Init4 D_80A58A2C;
extern s16 D_80A58A34;
extern InitChainEntry D_80A58A38;


//rodata
extern float D_80A58A50;
//  .word 0x3DAA9931
extern float D_80A58A54;
//  .word 0x3DEF0069
extern float D_80A58A58;
//  .word 0x3FD9999A
extern float D_80A58A5C;
//  .word 0x3F333333
extern float D_80A58A60;
// .word 0x3E2AB368, 0x00000000, 0x00000000, 0x00000000

extern AnimationHeader D_06000168;
extern u32 D_060014E0;
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern AnimationHeader D_060026C4;
extern AnimationHeader D_06002B90;
extern AnimationHeader D_06002894;
extern AnimationHeader D_060029BC;
extern AnimationHeader D_06002E84;
extern AnimationHeader D_06002F7C;
extern AnimationHeader D_06003128;

#endif
