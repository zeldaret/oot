#ifndef _Z_MAGIC_WIND_H_
#define _Z_MAGIC_WIND_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} MagicWind; // size = 0x0174

extern const ActorInit Magic_Wind_InitVars;

#endif
