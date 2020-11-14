#ifndef _Z_EN_SSH_H_
#define _Z_EN_SSH_H_

#include "ultra64.h"
#include "global.h"

struct EnSsh;

typedef void (*EnSshActionFunc)(struct EnSsh*, GlobalContext*);

typedef struct EnSsh {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[30];
    /* 0x0244 */ Vec3s transDrawTable[30];
    /* 0x02F8 */ EnSshActionFunc actionFunc;
    /* 0x02FC */ ColliderCylinder collider1[6];
    /* 0x04C4 */ ColliderJntSph collider2;
    /* 0x04E4 */ ColliderJntSphItem elements[1];
    /* 0x0524 */ s16 unk_524;
    /* 0x0526 */ s16 unk_526;
    /* 0x0528 */ s16 unk_528;
    /* 0x052A */ s16 unk_52A;
    /* 0x052C */ s16 unk_52C;
    /* 0x052E */ s16 unk_52E;
    /* 0x0530 */ s16 unk_530;
    /* 0x0532 */ s16 unk_532;
    /* 0x0534 */ s16 unk_534;
    /* 0x0536 */ s16 unk_536;
    /* 0x0538 */ s32 unk_538;
    /* 0x053C */ f32 unk_53C;
    /* 0x0540 */ f32 unk_540;
    /* 0x0544 */ Vec3f unk_544;
    /* 0x0558 */ char unk_558[0x78];
    /* 0x05C8 */ s16 unk_5C8;
    /* 0x05CA */ u16 unk_5CA;
    /* 0x05CC */ u8 unk_5CC;
    /* 0x05CE */ s16 unk_5CE;
    /* 0x05D0 */ s16 unk_5D0;
    /* 0x05CD */ char unk_5D2[2];
} EnSsh; // size = 0x05D4

extern const ActorInit En_Ssh_InitVars;

#endif
