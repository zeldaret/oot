#ifndef _Z_EN_MU_H_
#define _Z_EN_MU_H_

#include "ultra64.h"
#include "global.h"

struct EnMu;

typedef void (*EnMuActionFunc)(struct EnMu*, struct GlobalContext*);

typedef struct EnMu {
    /* 0x0000 */ Actor actor; // size = 0x14C
    /* 0x014C */ SkelAnime skelAnime; // size 44
    /* 0x0190 */ EnMuActionFunc actionfunc; // ?
    /* 0x0194 */ ColliderCylinder collider; // size 4C
    /* 0x01E0 */ char unk_1E0[0x28];
    /* 0x0208 */ u16 defFaceReaction;
    /* 0x020A */ s16 unk_20A[0x10];
    /* 0x022A */ s16 unk_22A[0x11];
} EnMu; // size = 0x024C

extern const ActorInit En_Mu_InitVars;

#endif
