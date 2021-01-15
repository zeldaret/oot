#ifndef _Z_EN_ARROW_H_
#define _Z_EN_ARROW_H_

#include "ultra64.h"
#include "global.h"

struct EnArrow;

typedef void (*EnArrowActionFunc)(struct EnArrow*, GlobalContext*);

typedef struct EnArrow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ColliderQuad collider;
    /* 0x0210 */ Vec3f unk_210;
    /* 0x021C */ char unk_21C[0xC];
    /* 0x0228 */ u32 effectIndex;
    /* 0x022C */ char unk_22C[0x1C];
    /* 0x0248 */ u8 timer; // used for dissapearing when flying or hitting a wall
    /* 0x0249 */ u8 hitFlags;
    /* 0x024A */ u8 hitPoly;
    /* 0x024B */ u8 unk_24B;
    /* 0x024C */ Actor* hitActor;
    /* 0x0250 */ Vec3f unk_250;
    /* 0x025C */ EnArrowActionFunc actionFunc;
} EnArrow; // size = 0x0260

typedef enum {
    /* -10 */ //ARROW_NUT_NO_COLLIDER = -10,
    /*  0  */ ARROW_NUT_UNK = 0, // confirm
    /*  1  */ ARROW_EPONA, // confirm
    /*  2  */ ARROW_NORMAL, // confirm
    /*  3  */ ARROW_FIRE,
    /*  4  */ ARROW_ICE,
    /*  5  */ ARROW_LIGHT,
    /*  6  */ ARROW_0C,
    /*  7  */ ARROW_0D,
    /*  8  */ ARROW_0E,
    /*  9  */ ARROW_SEED,
    /*  10 */ ARROW_NUT

} ArrowType;

extern const ActorInit En_Arrow_InitVars;

#endif
