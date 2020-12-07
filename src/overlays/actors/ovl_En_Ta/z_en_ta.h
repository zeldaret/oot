#ifndef _Z_EN_TA_H_
#define _Z_EN_TA_H_

#include "ultra64.h"
#include "global.h"

struct EnTa;


typedef void (*EnTaActionFunc)(struct EnTa*, GlobalContext*);
typedef void (*EnTaDrawFunc)(struct EnTa*, GlobalContext*);
typedef void (*EnTaUnkFunc)(struct EnTa*);

typedef struct EnTa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnTaActionFunc unk_25C; // ???
    /* 0x0260 */ EnTaUnkFunc unk_260; // ???
    /* 0x0264 */ ColliderCylinder collider;
    /* 0x02B0 */ EnTaUnkFunc unk_2B0; // ???
    /* 0x02B4 */ s16 unk_2B4;
    /* 0x02B6 */ s16 unk_2B6;
    /* 0x02B8 */ Actor* unk_2B8;
    /* 0x02BC */ Actor* unk_2BC;
    /* 0x02C0 */ Actor* unk_2C0;
    /* 0x02C4 */ s16 unk_2C4;
    /* 0x02C6 */ s16 unk_2C6;
    /* 0x02C8 */ s16 unk_2C8;
    /* 0x02CA */ char unk_2CA[0x2];
    /* 0x02CC */ s16 unk_2CC;
    /* 0x02CE */ s16 unk_2CE;
    /* 0x02D0 */ char unk_2D0[0x4];
    /* 0x02D4 */ Vec3s unk_2D4;
    /* 0x02DA */ Vec3s unk_2DA;
    /* 0x02E0 */ u16 unk_2E0;
    /* 0x02E2 */ s16 unk_2E2;
    /* 0x02E4 */ AnimationHeader* unk_2E4;
} EnTa; // size = 0x02E8

extern const ActorInit En_Ta_InitVars;

#endif
