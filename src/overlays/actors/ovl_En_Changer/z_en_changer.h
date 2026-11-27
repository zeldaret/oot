#ifndef Z_EN_CHANGER_H
#define Z_EN_CHANGER_H

#include "ultra64.h"
#include "actor.h"

struct EnChanger;

typedef void (*EnChangerActionFunc)(struct EnChanger*, struct PlayState*);

typedef struct EnChanger {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnChangerActionFunc unk14C;
    /* 0x150 */ struct EnBox* unk150;
    /* 0x154 */ struct EnBox* unk154;
    /* 0x158 */ struct EnBox* unk158;
    /* 0x15C */ s16 unk15C_l;
    /* 0x15E */ s16 unk15E_r;
    /* 0x160 */ s16 unk160;
    /* 0x162 */ s16 unk162;
    /* 0x164 */ s16 unk164;
    /* 0x166 */ s16 unk166;
    /* 0x168 */ s16 unk168;
    /* 0x16A */ char pad16A[2];
} EnChanger; // size = 0x016C

#endif
