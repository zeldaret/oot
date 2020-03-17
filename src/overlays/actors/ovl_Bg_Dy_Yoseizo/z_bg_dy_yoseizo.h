#ifndef _Z_BG_DY_YOSEIZO_H_
#define _Z_BG_DY_YOSEIZO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3768];
} BgDyYoseizo; // size = 0x38B4

extern const ActorInit Bg_Dy_Yoseizo_InitVars;

#endif
