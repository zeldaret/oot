#ifndef _Z_EN_VIEWER_H_
#define _Z_EN_VIEWER_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4AC];
} EnViewer; // size = 0x05F8

extern const ActorInit En_Viewer_InitVars;

#endif
