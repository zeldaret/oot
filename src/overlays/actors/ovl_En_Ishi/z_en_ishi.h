#ifndef Z_EN_ISHI_H
#define Z_EN_ISHI_H

#include "ultra64.h"
#include "global.h"

// The switch flag value for this actor is constructed in a unique way.
// There are two seperate param values which get OR'd together to create one final switch flag index.
// These two values are seperated within the overall actor param value. See below:
//
//  | A B C D | _ _ _ _ | E F | _ _ _ _ _ _ |
// 16        12         8     6             0
// After the OR operation, the final switch flag is constructed to form "0bABCDEF"
//
// Due to the unique form of access to obtain the upper bits of the switch flag, `ISHI_GET_SWITCH_FLAG_UPPER`
// cannot use the generic `PARAMS_GET_U` macros.
#define ISHI_GET_SWITCH_FLAG_UPPER(thisx)  ((((thisx)->params) >> (12 - 2)) & (NBITS_TO_MASK(4) << 2))
#define ISHI_GET_SWITCH_FLAG_LOWER(thisx)  PARAMS_GET_U((thisx)->params, 6, 2)
#define ISHI_GET_SWITCH_FLAG(thisx) (ISHI_GET_SWITCH_FLAG_UPPER(thisx) | ISHI_GET_SWITCH_FLAG_LOWER(thisx))

typedef enum EnIshiType {
    /* 0x00 */ ROCK_SMALL,
    /* 0x01 */ ROCK_LARGE
} EnIshiType;

struct EnIshi;

typedef void (*EnIshiActionFunc)(struct EnIshi*, PlayState*);
typedef void (*EnIshiEffectSpawnFunc)(struct EnIshi*, PlayState*);
typedef void (*EnIshiDrawFunc)(struct EnIshi*, PlayState*);

typedef struct EnIshi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnIshiActionFunc actionFunc;
    /* 0x0150 */ ColliderCylinder collider;
} EnIshi; // size = 0x019C

#endif
