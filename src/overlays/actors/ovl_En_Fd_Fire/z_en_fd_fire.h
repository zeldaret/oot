#ifndef _Z_EN_FD_FIRE_H_
#define _Z_EN_FD_FIRE_H_

#include <ultra64.h>
#include <global.h>

struct EnFdFire;

typedef void (*EnFdFireActionFunc)(struct EnFdFire* this, GlobalContext* globalCtx);

typedef struct EnFdFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnFdFireActionFunc actionFunc;
    /* 0x0150 */ ColliderCylinder collider;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ s16 unk_1A4;
    /* 0x01A6 */ s16 unk_1A6;
    /* 0x01A8 */ s16 unk_1A8;
} EnFdFire; // size = 0x01AC

extern const ActorInit En_Fd_Fire_InitVars;

#endif
