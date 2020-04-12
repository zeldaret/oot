#ifndef _Z_OBJ_BLOCKSTOP_H_
#define _Z_OBJ_BLOCKSTOP_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
} ObjBlockstop; // size = 0x014C

extern const ActorInit ObjBlockstop_InitVars;

#endif
