#ifndef _Z_OCEFF_STORM_H_
#define _Z_OCEFF_STORM_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC];
} OceffStorm; // size = 0x0158

extern const ActorInit Oceff_Storm_InitVars;

#endif
