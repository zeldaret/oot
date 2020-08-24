#ifndef _Z_EN_HEISHI4_H_
#define _Z_EN_HEISHI4_H_

#include <ultra64.h>
#include <global.h>

struct EnHeishi4;

typedef void (*EnHeishi4ActionFunc)(struct EnHeishi4*, GlobalContext*);

typedef struct EnHeishi4 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnHeishi4ActionFunc actionFunc;
    /* 0x0260 */ char unk_260[0xC];
    ///* 0x026C */ s32 unk_26C;
    ///* 0x0270 */ s32 unk_270;
    ///* 0x0274 */ s32 unk_274;
    /* 0x026C */ Vec3f unk_26C;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ s16 unk_27C;
    /* 0x027E */ char unk_27E[2];
    /* 0x0280 */ s16 unk_280;
    /* 0x0282 */ char unk_282[0x3A];
    /* 0x02BC */ ColliderCylinder collider;
} EnHeishi4; // size = 0x0308

extern const ActorInit En_Heishi4_InitVars;

#endif
