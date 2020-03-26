#ifndef _Z_DEMO_SHD_H_
#define _Z_DEMO_SHD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} DemoShd; // size = 0x0154

extern const ActorInit Demo_Shd_InitVars;

#endif
