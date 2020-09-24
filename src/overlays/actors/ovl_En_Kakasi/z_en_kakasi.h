#ifndef _Z_EN_KAKASI_H_
#define _Z_EN_KAKASI_H_

#include <ultra64.h>
#include <global.h>

struct EnKakasi;

typedef struct EnKakasi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x01BD */ char unk_1BD[0x4];
    // 4 bytes remaining
} EnKakasi; // size = 0x020C

extern const ActorInit En_Kakasi_InitVars;

#endif
