#ifndef _Z_EN_RL_H_
#define _Z_EN_RL_H_

#include <ultra64.h>
#include <global.h>

struct EnRl;

typedef void (*EnRlActionFunc)(struct EnRl*, GlobalContext*);
typedef void (*EnRlDrawFunc)(struct EnRl*, GlobalContext*);

typedef struct EnRl {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
    /* 0x0194 */ s32 action;
    /* 0x0198 */ s32 drawConfig;
    /* 0x019C */ f32 unk_19C;
    /* 0x01A0 */ s32 alpha;
    /* 0x01A4 */ u32 unk_1A4;
    /* 0x01A8 */ s32 unk_1A8;
} EnRl; // size = 0x01AC

extern const ActorInit En_Rl_InitVars;

#endif
