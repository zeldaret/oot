#ifndef _Z_EN_HORSE_H_
#define _Z_EN_HORSE_H_

#include "ultra64.h"
#include "global.h"

struct EnHorse;

typedef struct EnHorse {
    /* 0x000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ char unk_150[0x0A0];
    /* 0x01F0 */ u32 unk_1F0;
    /* 0x01F4 */ char unk_1F4[0x01C];
    /* 0x0210 */ s32 unk_210;
    /* 0x0214 */ f32 unk_214;
    /* 0x0218 */ char unk_218[0x040];
    /* 0x0258 */ Vec3f unk_258;
    /* 0x0264 */ char unk_264[0x198];
} EnHorse; // size = 0x03FC

#define EN_HORSE_CHECK_1(horseActor) \
    (((horseActor)->unk_1F0 & 0x40)  \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_2(horseActor) \
    (((horseActor)->unk_1F0 & 0x100) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_3(horseActor) \
    (((horseActor)->unk_1F0 & 0x200) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_4(horseActor)                                                                    \
    (((((horseActor)->unk_14C == 5) || ((horseActor)->unk_14C == 0) || ((horseActor)->unk_14C == 6)) && \
      !((horseActor)->unk_1F0 & 0x80000) && !((horseActor)->unk_1F0 & 0x2000000))                       \
         ? true                                                                                         \
         : false)

#define EN_HORSE_CHECK_5(horseActor) \
    (((horseActor)->unk_1F0 & 0x4) \
        ? true                       \
        : false)

extern const ActorInit En_Horse_InitVars;

#endif
