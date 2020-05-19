#ifndef _Z_EN_GUEST_H_
#define _Z_EN_GUEST_H_

#include <ultra64.h>
#include <global.h>

struct EnGuest;

typedef struct EnGuest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime unk_14C;
    /* 0x0190 */ Vec3s unk_190;
    /* 0x0196 */ char unk_196[0x5A];
    /* 0x01F0 */ Vec3s unk_1F0;
    /* 0x01F6 */ char unk_1F6[0x5A];
    /* 0x0250 */ void (*unk_250)(struct EnGuest* this, GlobalContext* globalCtx);
    /* 0x0254 */ ColliderCylinder unk_254;
    /* 0x02A0 */ struct_80034A14_arg1 unk_2A0;
    /* 0x02C8 */ s16 unk_2C8;
    /* 0x02CA */ s16 unk_2CA;
    /* 0x02CC */ s16 unk_2CC[0x10];
    /* 0x02EC */ s16 unk_2EC[0x10];
    /* 0x030C */ s8 unk_30C;
    /* 0x030D */ u8 unk_30D;
    /* 0x030E */ u8 unk_30E;
} EnGuest; // size = 0x0310

extern const ActorInit En_Guest_InitVars;

#endif
