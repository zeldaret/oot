#ifndef Z_EN_HOLL_H
#define Z_EN_HOLL_H

#include "ultra64.h"
#include "global.h"

#define ENHOLL_GET_TYPE(thisx) (((thisx)->params >> 6) & 7)
#define ENHOLL_GET_SWITCH_FLAG(thisx) ((thisx)->params & 0x3F)

typedef enum {
    /* 0 */ ENHOLL_0,
    /* 1 */ ENHOLL_1,
    /* 2 */ ENHOLL_2,
    /* 3 */ ENHOLL_3,
    /* 4 */ ENHOLL_4,
    /* 5 */ ENHOLL_5,
    /* 6 */ ENHOLL_6
} EnHollType;

struct EnHoll;

typedef void (*EnHollActionFunc)(struct EnHoll*, PlayState*);

typedef struct EnHoll {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 planeAlpha;
    /* 0x014E */ u8 side;
    /* 0x014F */ u8 unk_14F;
    /* 0x0150 */ EnHollActionFunc actionFunc;
} EnHoll; // size = 0x0154

#endif
