#ifndef _Z_EN_LIGHTBOX_H_
#define _Z_EN_LIGHTBOX_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
} EnLightbox; // size = 0x0164

extern const ActorInit En_Lightbox_InitVars;

#endif
