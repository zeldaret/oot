#ifndef _Z_EN_KAKASI_H_
#define _Z_EN_KAKASI_H_

#include <ultra64.h>
#include <global.h>

struct EnKakasi;

typedef void (*EnKakasiFunc)(struct EnKakasi*, GlobalContext*);


typedef struct EnKakasi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnKakasiFunc actionFunc;
    /* 0x0150 */ SkelAnime skelanime;
    /* 0x0194 */ char unk_194[0x1A];
    /* 0x01AE */ Vec3s rot;
    /* 0x01B4 */ char unk_1B4[0x8];
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x01BD */ char unk_1BD[0x4];
    // 4 bytes remaining
} EnKakasi; // size = 0x020C

extern const ActorInit En_Kakasi_InitVars;

#endif
