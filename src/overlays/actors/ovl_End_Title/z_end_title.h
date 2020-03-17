#ifndef _Z_END_TITLE_H_
#define _Z_END_TITLE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
} EndTitle; // size = 0x0150

extern const ActorInit End_Title_InitVars;

#endif
