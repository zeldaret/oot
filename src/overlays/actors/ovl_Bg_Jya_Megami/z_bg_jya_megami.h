#ifndef _Z_BG_JYA_MEGAMI_H_
#define _Z_BG_JYA_MEGAMI_H_

#include <ultra64.h>
#include <global.h>

struct BgJyaMegami;

typedef void (*BgJyaMegamiActionFunc)(struct BgJyaMegami*, GlobalContext*);

typedef struct megami_struct_8089B014 {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ s16 unk_14;
} megami_struct_8089B014; // size = 0x18

typedef struct megami_struct_1D0 {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 unk_1A;
} megami_struct_1D0; // size = 0x1C

typedef struct BgJyaMegami {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgJyaMegamiActionFunc actionFunc;
    /* 0x0168 */ ColliderJntSph collider;
    /* 0x0188 */ ColliderJntSphItem colliderItem;
    /* 0x01C8 */ s16 timer;
    /* 0x01CA */ s16 unk_1CA;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ char unk_1CE[0x2];
    /* 0x01D0 */ megami_struct_1D0 unk_1D0[13];
} BgJyaMegami; // size = 0x033C

extern const ActorInit Bg_Jya_Megami_InitVars;

#endif
