#ifndef _Z_EN_GOROIWA_H_
#define _Z_EN_GOROIWA_H_

#include <ultra64.h>
#include <global.h>

struct EnGoroiwa;

typedef void (*EnGoroiwaActionFunc)(struct EnGoroiwa*, GlobalContext*);

typedef struct EnGoroiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnGoroiwaActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem colliderItem;
    /* 0x01B0 */ char unk_1B0[0x18];
    /* 0x01C8 */ s16 timer;
    /* 0x01CA */ char unk_1CA[0x09];
    /* 0x01D3 */ u8 unk_1D3;
} EnGoroiwa; // size = 0x01D4

extern const ActorInit En_Goroiwa_InitVars;

#endif
