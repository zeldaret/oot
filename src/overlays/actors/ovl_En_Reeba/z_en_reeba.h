#ifndef Z_EN_REEBA_H
#define Z_EN_REEBA_H

#include "ultra64.h"
#include "global.h"

struct EnReeba;

typedef void (*EnReebaActionFunc)(struct EnReeba*, PlayState*);

typedef struct EnReeba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ Vec3s jointTable[18];
    /* 0x01FC */ Vec3s morphTable[18];
    /* 0x0268 */ char unk_268[0x4];
    /* 0x026C */ EnReebaActionFunc actionfunc;
    /* 0x0270 */ s16 bigLeeverTimer; // big Leever uses to close and make distance from Link.
    /* 0x0272 */ s16 surfaceTimer;
    /* 0x0274 */ s16 sfxTimer; // delay between move sounds. 2x if big Leever.
    /* 0x0276 */ s16 painTimer;
    /* 0x0278 */ s16 stunTimer;
    /* 0x027A */ s16 isBig;
    /* 0x027C */ s16 unkDamageField; // set when hit with ice and most other weapons. Never read.
    /* 0x027E */ s16 stunType;
    /* 0x0280 */ s16 aimType; // inc'd by spawner. dictates rotateY modification
    /* 0x0284 */ f32 offsetYTarget;
    /* 0x0288 */ f32 offsetYStep;
    /* 0x028C */ f32 scale;
    /* 0x0290 */ ColliderCylinder collider;
} EnReeba; // size = 0x02DC

typedef enum {
    /* 0 */ LEEVER_SMALL,
    /* 1 */ LEEVER_BIG
} LeeverParam;

#define STUN_NONE 0
#define STUN_ICE 2
#define STUN_OTHER 4

#endif
