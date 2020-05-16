#ifndef _Z_EN_GUEST_H_
#define _Z_EN_GUEST_H_

#include <ultra64.h>
#include <global.h>

struct EnGuest;

typedef struct EnGuest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime unk_14C;
    /* 0x0190 */ Vec3s unk_190;
    /* 0x0196 */ char unk_196[0x05A];
    /* 0x01F0 */ Vec3s unk_1F0;
    /* 0x01F6 */ char unk_1F6[0x05A];
    /* 0x0250 */ void* unk_250;
    /* 0x0254 */ ColliderCylinder unk_254;
    /* 0x02C0 */ char unk_2C0[0x02A];
    /* 0x02CA */ s16 unk_2CA;
    /* 0x02C0 */ char unk_2CC[0x040];
    /* 0x030C */ s8 unk_30C;
    /* 0x030D */ u8 unk_30D;
    /* 0x030E */ u8 unk_30E;
} EnGuest; // size = 0x0310

extern const ActorInit En_Guest_InitVars;

#endif
