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
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195; // unused
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ char unk_198[0x2];
    /* 0x019A */ u16 unk_19A;
    /* 0x019C */ char unk_19C[0x12];
    /* 0x01AE */ Vec3s rot;
    /* 0x01B4 */ char unk_1B4[0x4];
    /* 0x01B8 */ f32 unk_1B8;
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ s16 unk_208;
    // 4 bytes remaining
} EnKakasi; // size = 0x020C

extern const ActorInit En_Kakasi_InitVars;

#endif
