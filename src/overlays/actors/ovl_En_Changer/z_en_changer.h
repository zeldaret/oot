#ifndef _Z_EN_CHANGER_H_
#define _Z_EN_CHANGER_H_

#include "ultra64.h"
#include "global.h"
#include "overlays/actors/ovl_En_Box/z_en_box.h"

struct EnChanger;

typedef void (*EnChangerActionFunc)(struct EnChanger*, GlobalContext*);

typedef struct EnChanger {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnChangerActionFunc actionFunc;
    /* 0x0150 */ EnBox* unk_150;
    /* 0x0154 */ EnBox* unk_154;
    /* 0x0158 */ EnBox* unk_158;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0164 */ s16 unk_166;
    /* 0x0168 */ u16 unk_168;
    /* 0x016A */ char unk_16A[0x2];
} EnChanger; // size = 0x016C

extern const ActorInit En_Changer_InitVars;

#endif
