#ifndef _Z_BOSS_TW_H_
#define _Z_BOSS_TW_H_

#include <ultra64.h>
#include <global.h>

struct BossTw;

typedef void (*BossTW_ActionFunc)(struct BossTw* this, GlobalContext* globalCtx);

typedef struct BossTw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BossTW_ActionFunc actionFunc;
    /* 0x0150 */ char unk_150[0x2A];
    /* 0x017A */ s16 unk_17A;
    /* 0x017C */ char unk_17C[0x30];
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ char unk_1B0[0x24];
    /* 0x01D4 */ f32 unk_1D4;
    /* 0x01D8 */ f32 unk_1D8;
    /* 0x01DC */ f32 unk_1DC;
    /* 0x01E0 */ f32 unk_1E0;
    /* 0x01E4 */ f32 unk_1E4;
    /* 0x01E0 */ char unk_1E8[0x37C];
    /* 0x0564 */ u8 unk_564;
    /* 0x0565 */ char unk_565[0x3];
    /* 0x0568 */ SkelAnime skelAnime;
    /* 0x05AC */ ColliderCylinder collider;
    /* 0x05F8 */ char unk_5F8[0xBC];
} BossTw; // size = 0x06B4

extern const ActorInit Boss_Tw_InitVars;

#endif
