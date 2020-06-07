#ifndef _Z_ARMS_HOOK_H_
#define _Z_ARMS_HOOK_H_

#include <ultra64.h>
#include <global.h>

struct ArmsHook;

typedef void (*ArmsHookActionFunc)(struct ArmsHook*, GlobalContext*);

typedef struct ArmsHook {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC8];
    /* 0x0214 */ ArmsHookActionFunc actionFunc;
} ArmsHook; // size = 0x0218

extern const ActorInit Arms_Hook_InitVars;

#endif
