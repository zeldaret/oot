#ifndef Z_EN_BIRD_H
#define Z_EN_BIRD_H

#include "ultra64.h"
#include "global.h"

struct EnBird;

typedef void (*EnBirdActionFunc)(struct EnBird*, PlayState*);

typedef struct EnBird {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnBirdActionFunc actionFunc;
    /* 0x0194 */ u32 unk_194; // set to 0 but otherwise unused
    /* 0x0198 */ s32 timer;
    /* 0x019C */ s16 scaleAnimSpeed; // when true, anim speed scales with XZ speed while slowing down. otherwise anim plays full speed
    /* 0x01A0 */ f32 posYMag; 
    /* 0x01A4 */ f32 rotYMag; 
    /* 0x01A8 */ f32 speedXZTarget;
    /* 0x01AC */ f32 speedXZStep;
    /* 0x01B0 */ f32 flightDistance; // radius of "home" area
    /* 0x01B4 */ f32 posYPhase;
    /* 0x01B8 */ f32 posYPhaseStep;
    /* 0x01BC */ f32 unk_1BC; // set but otherwise unused.
    /* 0x01C0 */ s16 rotYStep;
    /* 0x01C2 */ char unk_1C2[0x1A];
} EnBird; // size = 0x01DC

#endif
