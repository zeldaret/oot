#ifndef _Z_EN_KAKASI2_H_
#define _Z_EN_KAKASI2_H_

#include "ultra64.h"
#include "global.h"

struct EnKakasi2;

typedef void (*EnKakasi2ActionFunc)(struct EnKakasi2*, struct GlobalContext*);


typedef struct EnKakasi2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnKakasi2ActionFunc actionFunc;
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ char unk_0194[0x2];
    /* 0x0196 */ s16 saveFlag;
    /* 0x0198 */ u16 unk_198; 
    /* 0x019A */ char unk_19A[0x2];
    /* 0x019C */ Vec3f position;
    /* 0x01A8 */ f32 unk_1A8; // Maybe is Sphere?
    /* 0x01AC */ ColliderCylinder collider;
} EnKakasi2; // size = 0x01F8

extern const ActorInit En_Kakasi2_InitVars;

#endif
