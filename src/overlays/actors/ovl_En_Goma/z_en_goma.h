#ifndef _Z_EN_GOMA_H_
#define _Z_EN_GOMA_H_

#include <ultra64.h>
#include <global.h>

struct EnGoma;

typedef void (*EnGomaActionFunc)(struct EnGoma*, GlobalContext*);

typedef struct EnGoma {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[24];
    /* 0x0220 */ Vec3s transitionDrawTable[24];
    /* 0x02B0 */ EnGomaActionFunc actionFunc;
    /* 0x02B4 */ s16 unk_2B4;
    /* 0x02B6 */ s16 unk_2B6;
    /* 0x02B8 */ s16 unk_2B8;
    /* 0x02BA */ s16 unk_2BA;
    /* 0x02BC */ s16 unk_2BC;
    /* 0x02BE */ s16 unk_2BE;
    /* 0x02C0 */ s16 unk_2C0;
    /* 0x02C2 */ s16 unk_2C2;
    /* 0x02C4 */ s16 unk_2C4;
    /* 0x02C6 */ s16 unk_2C6;
    /* 0x02C8 */ s16 unk_2C8;
    /* 0x02CA */ s16 unk_2CA;
    /* 0x02CC */ s16 unk_2CC;
    /* 0x02CE */ u16 unk_2CE;
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
    /* 0x02D8 */ f32 unk_2D8;
    /* 0x02DC */ f32 unk_2DC;
    /* 0x02E0 */ f32 unk_2E0[3];
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ char unk_2F4[0x4];
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02F8 */ s16 unk_2FA;
    /* 0x02FC */ Vec3f unk_2FC;
    /* 0x0308 */ Gfx* unk_308;
    /* 0x030C */ ColliderCylinder collider1;
    /* 0x0358 */ ColliderCylinder collider2;
} EnGoma; // size = 0x03A4

extern const ActorInit En_Goma_InitVars;

#endif
