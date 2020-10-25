#ifndef _Z_EN_MS_H_
#define _Z_EN_MS_H_

#include "ultra64.h"
#include "global.h"

struct EnMs;

typedef void (*EnMsActionFunc)(struct EnMs*, GlobalContext*);

typedef struct EnMs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ UNK_PTR unkSkelAnimeStruct;
    /* 0x0194 */ char unk_194[0x32];
    /* 0x01C6 */ s16 unk_1C6;
    /* 0x01C8 */ char unk_1C8[0x34];
    /* 0x01FC */ EnMsActionFunc actionFunc;
    /* 0x0200 */ ColliderCylinder collider;
    /* 0x024C */ s16 activeTimer;
} EnMs; // size = 0x0250


extern const ActorInit En_Ms_InitVars;

#endif
