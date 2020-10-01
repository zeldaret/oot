#ifndef _Z_EN_KAKASI3_H_
#define _Z_EN_KAKASI3_H_

#include <ultra64.h>
#include <global.h>

struct EnKakasi3;

typedef void (*EnKakasi3ActionFunc)(struct EnKakasi3*, struct GlobalContext*);

typedef struct EnKakasi3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnKakasi3ActionFunc actionFunc;
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ char unk_194[0x4];
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ char unk_19A[0x2];
    /* 0x019C */ s16 unk_19C[0x3];
    /* 0x01A2 */ char unk_1A2[0xE];
    /* 0x01B0 */ Vec3s rot;
    /* 0x01B6 */ char unk_1B6[0x6];
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ char unk_208[0x4];
} EnKakasi3; // size = 0x020C

extern const ActorInit En_Kakasi3_InitVars;

#endif
