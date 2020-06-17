#ifndef _Z_ARMS_HOOK_H_
#define _Z_ARMS_HOOK_H_

#include <ultra64.h>
#include <global.h>

struct ArmsHook;

typedef void (*ArmsHookActionFunc)(struct ArmsHook*, GlobalContext*);

typedef struct ArmsHook {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderQuad collider;
    /* 0x01CC */ s32 unk_1CC;
    /* 0x01D0 */ char unk_1D0[0x18];
    /* 0x01E8 */ Vec3f unk_1E8;
    /* 0x01F4 */ Vec3f unk_1F4;
    /* 0x0200 */ Actor* grabbed;
    /* 0x0204 */ Vec3f grabbedDistDiff;
    /* 0x0210 */ s16 timer;
    /* 0x0214 */ ArmsHookActionFunc actionFunc;
} ArmsHook; // size = 0x0218

extern const ActorInit Arms_Hook_InitVars;

#endif
