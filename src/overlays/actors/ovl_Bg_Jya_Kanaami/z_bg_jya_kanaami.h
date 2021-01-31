#ifndef _Z_BG_JYA_KANAAMI_H_
#define _Z_BG_JYA_KANAAMI_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaKanaami;

typedef void (*BgJyaKanaamiActionFunc)(struct BgJyaKanaami*, GlobalContext*);

typedef struct BgJyaKanaami {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 bgId;
    /* 0x014C */ char unk_150[0x14];
    /* 0x0164 */ BgJyaKanaamiActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A;
} BgJyaKanaami; // size = 0x016C

#endif
