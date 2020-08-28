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
    /* 0x0260 */ Vec3s unk_260;
    /* 0x0266 */ Vec3s unk_266;
    /* 0x026C */ Vec3f unk_26C;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ s16 unk_27C;
    /* 0x027E */ s16 unk_27E;
    /* 0x0280 */ s16 unk_280;
    /* 0x0282 */ s16 unk_282;
    /* 0x0284 */ s16 unk_284;
    /* 0x0286 */ char unk_286[0x2];
    /* 0x0288 */ f32 unk_288;
    /* 0x028C */ struct_80034A14_arg1 unk_28C;
    ///* 0x028C */ char unk_28C[0x8];
    ///* 0x0294 */ Vec3s unk_294;
    ///* 0x029A */ Vec3s unk_29A;
    ///* 0x02A0 */ char unk_2A0[4];
    ///* 0x02A4 */ Vec3f unk_2A4;
    ///* 0x02B0 */ char unk_2B0[4];
    /* 0x02B4 */ u8 unk_2B4;
    /* 0x02B6 */ char unk_2B6[7];
    /* 0x02BC */ ColliderCylinder collider;
} EnHeishi4; // size = 0x0308

extern const ActorInit En_Heishi4_InitVars;

#endif
