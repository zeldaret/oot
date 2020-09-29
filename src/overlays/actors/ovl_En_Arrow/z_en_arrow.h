#ifndef _Z_EN_ARROW_H_
#define _Z_EN_ARROW_H_

#include <ultra64.h>
#include <global.h>

struct EnArrow;

typedef void (*EnArrowActionFunc)(struct EnArrow*, GlobalContext*);

typedef struct EnArrow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ColliderQuad collider;
    /* 0x0210 */ char unk_210[0x18];
    /* 0x0228 */ u32 effectIndex;
    /* 0x022C */ char unk_22C[0x1C];
    /* 0x0248 */ u8 timer; // used for dissapearing when flying or hitting a wall
    /* 0x0249 */ u8 hitWall;
    /* 0x024A */ char unk_24A[0x1];
    /* 0x024B */ s8 unk_24B;
    /* 0x024C */ char unk_24C[0x10];
    /* 0x025C */ EnArrowActionFunc actionFunc;
} EnArrow; // size = 0x0260

extern const ActorInit En_Arrow_InitVars;

#endif
