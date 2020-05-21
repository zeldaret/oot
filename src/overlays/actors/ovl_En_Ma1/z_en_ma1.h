#ifndef _Z_EN_MA1_H_
#define _Z_EN_MA1_H_

#include <ultra64.h>
#include <global.h>

struct EnMa1;

typedef void (*EnMa1ActionFunc)(struct EnMa1*, GlobalContext*);

typedef struct EnMa1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMa1ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ s16 unk_1E0;
    /* 0x01E2 */ s16 unk_1E2;
    /* 0x01E4 */ s16 unk_1E4;
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ struct_80034A14_arg1 unk_1E8;
} EnMa1; // size = 0x0210

extern const ActorInit En_Ma1_InitVars;

#endif
